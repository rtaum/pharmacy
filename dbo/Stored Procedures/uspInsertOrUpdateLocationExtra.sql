
CREATE PROCEDURE [dbo].[uspInsertOrUpdateLocationExtra]
	@LocationID int,
	@_RoofCover [varchar](50),
	@_RoofGeometry [varchar](50),
	@_RoofPitch [varchar](50),
	@_WallSiding [varchar](50),
	@_GlassType [varchar](50),
	@_BldCond [varchar](50),
	@_RoofAnchorage [varchar](50),
	@_WindowProt [varchar](50),
	@_ExteriorDoors [varchar](50),
	@_BldFndConn [varchar](50),
	@_Basement [varchar](50),
	@_RoofAge [varchar](50),
	@_MechSystem [varchar](50),
	@_AttachStruct [varchar](50),
	@_RoofDeckAttch [varchar](50),
	@_RoofDeck [varchar](50),
	@_AppurtStruct [varchar](50),
	@_BldExteriorOpen [varchar](50),
	@_BldFoundation [varchar](50),
	@_RoofCoverAttch [varchar](50),
	@_KRBaseFloodElevation  [varchar](50),
	--2018-07-09 JorgeSV : Ticket #830
	--2018-11-02 JorgeSV : Ticket #868
	@_StepsToFrontDoor [varchar](50),
	@_KRFirstFloorElev [varchar](50),
	@_BFE [varchar](50) = null,
	@_LFE [varchar](50) = null,
	@_KRBFE [varchar](50) = null

AS
BEGIN
	SET NOCOUNT ON;

		if @_RoofCover is not NULL
		insert into LocationExtra
		(
		LocationID,
		CustomFieldID,
		Value
		) 
		select @LocationID, 1,	@_RoofCover;
						
		--(@LocationID,2,	@_RoofGeometry),
		if @_RoofGeometry is not NULL
		insert into LocationExtra
		(
		LocationID,
		CustomFieldID,
		Value
		) 
		select @LocationID,2,	@_RoofGeometry;
		
		
		--(@NewLocato@nID,3,	@_RoofPitch),
		if  @_RoofPitch is not NULL
		insert into LocationExtra
		(
		LocationID,
		CustomFieldID,
		Value
		) 
		select @LocationID,3,	@_RoofPitch;
		
		--(@LocationID,4,	@_WallSiding),
		if @_WallSiding is not NULL
		insert into LocationExtra
		(
		LocationID,
		CustomFieldID,
		Value
		) 
		select @LocationID,4,	@_WallSiding;
		
		--(@LocationID,5,	@_GlassType),
		if @_GlassType is not NULL
		insert into LocationExtra
		(
		LocationID,
		CustomFieldID,
		Value
		) 
		select @LocationID,5,	@_GlassType;
		
		--(@LocationID,6,	@_BldCond),
		if @_BldCond is not NULL
		insert into LocationExtra
		(
		LocationID,
		CustomFieldID,
		Value
		) 
		select @LocationID,6,	@_BldCond;
		--(@LocationID,7,	@_RoofAnchorage),
		if @_RoofAnchorage is not NULL
		insert into LocationExtra
		(
		LocationID,
		CustomFieldID,
		Value
		) 
		select @LocationID,7,	@_RoofAnchorage;
		
		--(@LocationID,8,	@_WindowProt),
		if @_WindowProt is not NULL
		insert into LocationExtra
		(
		LocationID,
		CustomFieldID,
		Value
		) 
		select @LocationID,8,	@_WindowProt;
		
		--(@LocationID,9,	@_ExteriorDoors),
		
		if @_ExteriorDoors is not NULL
		insert into LocationExtra
		(
		LocationID,
		CustomFieldID,
		Value
		) 
		select @LocationID,9,	@_ExteriorDoors;
		--(@LocationID,10,	@_BldFndConn),
		
		if @_BldFndConn is not NULL
		insert into LocationExtra
		(
		LocationID,
		CustomFieldID,
		Value
		) 
		select @LocationID,10,	@_BldFndConn;
		--(@LocationID,11,	@_Basement),
		
		if @_Basement is not NULL
		insert into LocationExtra
		(
		LocationID,
		CustomFieldID,
		Value
		) 
		select @LocationID,11,	@_Basement;
		--(@LocationID,12,	@_RoofAge),
		
		if @_RoofAge is not NULL
		insert into LocationExtra
		(
		LocationID,
		CustomFieldID,
		Value
		) 
		select @LocationID,12,	@_RoofAge;
		--(@LocationID,13,	@_MechSystem),
		
		if @_MechSystem is not NULL
		insert into LocationExtra
		(
		LocationID,
		CustomFieldID,
		Value
		) 
		select @LocationID,13,	@_MechSystem;
		--(@LocationID,14,	@_AttachStruct),
		if @_AttachStruct is not NULL
		insert into LocationExtra
		(
		LocationID,
		CustomFieldID,
		Value
		) 
		select @LocationID,14,	@_AttachStruct;
		--(@LocationID,15,	@_RoofDeckAttch)
		if @_RoofDeckAttch is not NULL
		insert into LocationExtra
		(
		LocationID,
		CustomFieldID,
		Value
		) 
		select @LocationID,15,	@_RoofDeckAttch;
		
		--(@LocationID,16,	@_RoofDeck)
		if @_RoofDeck is not NULL
		insert into LocationExtra
		(
		LocationID,
		CustomFieldID,
		Value
		) 
		select @LocationID, 16, @_RoofDeck;

		--(@LocationID,17,	@_RoofCoverAttch)
		if @_RoofCoverAttch is not NULL
		insert into LocationExtra
		(
		LocationID,
		CustomFieldID,
		Value
		) 
		select @LocationID, 17, @_RoofCoverAttch;

		if @_AppurtStruct is not NULL
		insert into LocationExtra
		(
		LocationID,
		CustomFieldID,
		Value
		) 
		select @LocationID, 18, @_AppurtStruct;

		if @_BldExteriorOpen is not NULL
		insert into LocationExtra
		(
		LocationID,
		CustomFieldID,
		Value
		) 
		select @LocationID, 19, @_BldExteriorOpen;
			
		if @_BldFoundation is not NULL
		  insert into LocationExtra
		    (LocationID, CustomFieldID, Value) 
		  select @LocationID, 20, @_BldFoundation;

		--2018-07-09 JorgeSV : Ticket #830

		-- clean the old record first
		DELETE FROM LocationExtra
		WHERE LocationID = @LocationID AND CustomFieldID = 21

		if @_BFE  is not NULL
		  insert into LocationExtra
		    (LocationID, CustomFieldID, Value) 
		  select @LocationID, 21, @_BFE;

		-- clean the old record first
		DELETE FROM LocationExtra
		WHERE LocationID = @LocationID AND CustomFieldID = 22

		if @_LFE  is not NULL
		  insert into LocationExtra
		    (LocationID, CustomFieldID, Value) 
		  select @LocationID, 22, @_LFE;

		-- clean the old record first
		DELETE FROM LocationExtra
		WHERE LocationID = @LocationID AND CustomFieldID = 23

		if @_KRBFE  is not NULL
		  insert into LocationExtra
		    (LocationID, CustomFieldID, Value) 
		  select @LocationID, 23, @_KRBFE;

		--2018-07-09 JorgeSV : Ticket #830
		
		--2018-11-02 JorgeSV : Ticket #868
		-- clean the old record first
		DELETE FROM LocationExtra
		WHERE LocationID = @LocationID AND CustomFieldID = 24

		if @_StepsToFrontDoor  is not NULL
		  insert into LocationExtra
		    (LocationID, CustomFieldID, Value) 
		  select @LocationID, 24, @_StepsToFrontDoor;
		
		if @_KRFirstFloorElev  is not NULL
		  insert into LocationExtra
		    (LocationID, CustomFieldID, Value) 
		  select @LocationID, 25, @_KRFirstFloorElev;
		--2018-11-02 JorgeSV : Ticket #868

		--2018-12-26 JorgeSV : Ticket #897
		if @_KRBaseFloodElevation  is not NULL
		  insert into LocationExtra
		    (LocationID, CustomFieldID, Value) 
		  select @LocationID, 26, @_KRBaseFloodElevation;
		--2018-12-26 JorgeSV : Ticket #897
END
