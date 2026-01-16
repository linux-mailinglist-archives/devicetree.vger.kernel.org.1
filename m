Return-Path: <devicetree+bounces-256186-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CC30DD33704
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 17:18:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BA0A93011EE0
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 16:18:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 269C433A9ED;
	Fri, 16 Jan 2026 16:18:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b="yjiTQLRe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C127215055;
	Fri, 16 Jan 2026 16:18:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=148.163.135.77
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768580290; cv=fail; b=EP0R2ANScKIFQ60kL5dLLeyvJR3MWyP5QG299KxjHS6g0mZCHV6h/EazejvKB8pP6vadywfeFtTuPMmawEXk3b+Je6X1FYrYnIFm0s02iK2gHRa/64yjRn9pgI/KelUl3l179OrgZFSAeS0AYt9Z8JKCcolTnnuFk38N0roiExQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768580290; c=relaxed/simple;
	bh=60zAJYsljQog94Wpe/DOjTkRObSqSEEpmXmiuKowHk0=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=MBdT6ZrYV9IxmntAbJnX11wC3wStyghzrE29vtAcquQ303nPk4UoxIFnsIwYZlr+m4K4Zb6yeQUIn8vLgEXenRcRo2xU6Bdmb7zYueAEYlKfrdPnmgoqJe/jFTEWkpDIO8K6wrWpx27Zu6FH05+x/PRkj7KxTnjI9R6jKdttZzc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=yjiTQLRe; arc=fail smtp.client-ip=148.163.135.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60GE7FpD006773;
	Fri, 16 Jan 2026 11:18:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=DKIM; bh=60zAJ
	YsljQog94Wpe/DOjTkRObSqSEEpmXmiuKowHk0=; b=yjiTQLReCuqgP0TXszP4M
	uktc4gKr7TOZPmnEB3lorLZQlGxKgWQTG4i+VChzkOkr/4Eg8hX7Sy2zQD7VcnyE
	aFsMQ0228KnFuYLZ4M4uC/A+Vm6vaD4ZxtaFyGaDMfpKUK7bSHLqi01jh2u9Jepc
	/NG7sU4fK5ryXp1TSLWAySTQJ/61uYmAldd4yYUdMqDOdfhyt0UFIoy3NitxXZOZ
	qxM0g5rpPz6QFw29SdiurEn0t4EOwXqIi6NfGL7k6Z+4dPpoJX8aP31g3W1uN0h0
	lfpb604JGYtSEiMXpo4UVfIwagFwKs28mqTj2ne721LikYCdiu4dz5GYCYABr1ly
	w==
Received: from sj2pr03cu001.outbound.protection.outlook.com (mail-westusazon11012032.outbound.protection.outlook.com [52.101.43.32])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 4bqkdjset8-2
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Fri, 16 Jan 2026 11:18:02 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D1sMWi34n7qyoX6SlAcbygbp7tKP7Pkt0cNwpIy7MAbnZkQU21u+UPQsKY/WeE8WLUgdDsMtygWNx/NDT/94wW5sk5NXIRN2Rs1w7dPpFlzMGWrFSi/DtZyW8BMPJYcGdI4r+hSTUSuhqWF3GbXUcfAivniVzYO6oucN85iFtmWlYwXskuZj9n++cYl21zEWtXvG7b6OrbxJtVJ0HO2PzKAHbDMqClPFVx7e91Vr9+BiSYgE/oxkOe1i8uBTOITvAH1FO0oUFHh/cf0N7HdGP7rL6VFycCPgZJOcWwNN2x/ndvWtk8j7jc/KiEBU0B2aWS46IG3d4qEBgnsP3BFwLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=60zAJYsljQog94Wpe/DOjTkRObSqSEEpmXmiuKowHk0=;
 b=FMKlBS6elo0Yk1ijCK0LkKUk05pQqVEBZesiLDGwoY6bJfXdivW5Oc/rdbYf4Tmr/FiXhW8I9wxEZ9FxE9j8/HZ2af7kfWvOE7V39QOM0MnyVAj6T7SSVQMm0gvyEqhDorWk1ttl4/5WBwb9cue6dAyy2YMnqcwTBpkwWVwACDxzZaFQBo5rEk34tn7EFbWXtoqm2A4IowP5fr10emvh579+6dz57Y3gCMqjJDNF6exSsP98uC5vLbsrePfJm0PkxxDSQtDqKbmyodey86n2txK1wWWohOEzs0TNjwpQJi2FzxZpYYg0zCBzcRdR1EcnGYGZyqVtUP2gLZUOgwnYhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
Received: from CY4PR03MB3399.namprd03.prod.outlook.com (2603:10b6:910:57::13)
 by MN6PR03MB7695.namprd03.prod.outlook.com (2603:10b6:208:4f4::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.6; Fri, 16 Jan
 2026 16:17:59 +0000
Received: from CY4PR03MB3399.namprd03.prod.outlook.com
 ([fe80::1527:d313:16d4:2376]) by CY4PR03MB3399.namprd03.prod.outlook.com
 ([fe80::1527:d313:16d4:2376%4]) with mapi id 15.20.9520.003; Fri, 16 Jan 2026
 16:17:59 +0000
From: "Miclaus, Antoniu" <Antoniu.Miclaus@analog.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Johan Hovold <johan@kernel.org>
CC: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Srinivas
 Kandagatla <srini@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        David
 Lechner <dlechner@baylibre.com>,
        "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: RE: [PATCH v3 0/4] mux: gpio-mux: add enable GPIO support and ADG2404
Thread-Topic: [PATCH v3 0/4] mux: gpio-mux: add enable GPIO support and
 ADG2404
Thread-Index:
 AQHchhr3dov1UEjYeEaIFVcFak4Lq7VUeoUAgAAGg4CAAAo6QIAADzcAgABMYoCAABD7AIAAAQNg
Date: Fri, 16 Jan 2026 16:17:59 +0000
Message-ID:
 <CY4PR03MB3399B977D58D152144CF2FBC9B8DA@CY4PR03MB3399.namprd03.prod.outlook.com>
References: <20260115121943.23715-1-antoniu.miclaus@analog.com>
 <20260116-jumping-premium-crow-693a1c@quoll>
 <aWn-R7O_wZkpC1NC@hovoldconsulting.com>
 <CY4PR03MB3399D140FF51521F67AEF8599B8DA@CY4PR03MB3399.namprd03.prod.outlook.com>
 <ace6ef5e-d636-4886-8f8b-c318a81522aa@kernel.org>
 <CY4PR03MB3399926330D164F88A7A1F339B8DA@CY4PR03MB3399.namprd03.prod.outlook.com>
 <17a9dd9f-d744-4f87-a732-3f4eaf8cadbf@kernel.org>
In-Reply-To: <17a9dd9f-d744-4f87-a732-3f4eaf8cadbf@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-dg-rorf: true
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR03MB3399:EE_|MN6PR03MB7695:EE_
x-ms-office365-filtering-correlation-id: a7203c51-9ab8-44ad-ced8-08de551ad0e7
x-ld-processed: eaa689b4-8f87-40e0-9c6f-7228de4d754a,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|366016|7416014|376014|1800799024|38070700021;
x-microsoft-antispam-message-info:
 =?utf-8?B?YzVQU2x4dEpLdW01SzRmaUJ4elpGUzdNdGFDV0NpVm5oSE45OGZWS0pwYy9T?=
 =?utf-8?B?aTQ5UEZZdUdXUklzLzVxazdzeW1zbGNWTlhUd2NPOHRVSVdadERKcDBPWkIv?=
 =?utf-8?B?QjlXb29WUWZ1d3ZaS0d5TzU1TlZITmQ2NHU1M1JHenVyaU83S28rWk43b29J?=
 =?utf-8?B?ODgzWDFmV2N6N3Y1M2x5M2RHSlRUY25pZms2aGVFUlN3Qy93aDUyYUo2cDVy?=
 =?utf-8?B?OE90TThsUHIyb1pwVnNqMG5ZZXBXb01FaVk1QlEwZ1dzaVZ2d3N6ellGckRN?=
 =?utf-8?B?MWRETmxNUFZ5WGlZOWdVWnR4K25taUkyWEJRT2NXWm84NmxBMlZ0RmdMR1pp?=
 =?utf-8?B?RWNYMExLZ1FLbXNFNmlKTEp4Yk9veFBMOEx0cFMrUG5ybVB2b2hOK2ljeEN3?=
 =?utf-8?B?ZVRhcExlSWM3Vll0VVRvUVBkSVRROUx1cmJEelV2SExNU3o0aE52YTlFRDBx?=
 =?utf-8?B?VEZ0bzJWbDhYekJGV0ZPLytkbHFJQ3ZuWE5ydUFpTjhKbHRjVUJXNjhsc3BN?=
 =?utf-8?B?THpWUFJxbjF0L20valNkMXE2MDNaa1pNS0pReGZCQzZtcVhDVXNFdG5BcWcz?=
 =?utf-8?B?NkVCcjJwRi9wNm04aTRxclFGZ3hKKy94MUFITW5PNWxQYzhGakZ2NHBrVlhl?=
 =?utf-8?B?Qks4SlVnK21wUVpOTnVrTXIwN1pFbnpIUi9HQWFNMDZBL1JnQUxqNW5mSTJy?=
 =?utf-8?B?MjI2LzRtdE1qV2I4NnVuRUtWTjlVUVFhU2tRNlhTYW5TWkU1VHhRUG13ZmpZ?=
 =?utf-8?B?VkVNS1ZXbzhoS25yNlE3K2l5RjQ3RmZ4R2lWQmJoTnd5TjhUSTU0MlM3YWcv?=
 =?utf-8?B?VkM4V252RmQyTUFrKzZ6c01rbTl0Q2NDK0F5ejFDcUxIZUF1L0pzNVYwVG9o?=
 =?utf-8?B?N0RnMHdHOWUyalRKY205VzJYZm1BUVdwTDNNcU15WFdtNVF0bW85TEp3ck1U?=
 =?utf-8?B?UXFLcmVtcFJuODJENk5ETWRKUkxSY0pFbHRCdUk5aEVVeUtKT1ZLVkpWTDdR?=
 =?utf-8?B?c3MraEsxZUs3UWY0YndLTzhvbFRnVTJkaWtIRzhSaGF5Y0RhZFhOOCtpTlZO?=
 =?utf-8?B?WDVlT0NxRTR6Y201UzJTNmtsU3VYc3QySEVqdWxLQkdwQUlRanBPbVZ1WUgy?=
 =?utf-8?B?dVgxYUVNNlZTMThDdjI5WC9kZGlhY09GZktTNDFHckMvTlZUTnlrd3dGdGpQ?=
 =?utf-8?B?MVRlcDZyWGJLK2VpSEEvT0RXa1RVUWluR3l4K3FhSnNuUWh4ak16dmVtdnZS?=
 =?utf-8?B?YS9TQnNvSytPWVh4Q0orK3F6VjdXcFUyR3kvcUxRNldvTzl1cTRsMWpQZnN6?=
 =?utf-8?B?Q2hKNTlRZWZuTk9MMWZxTkNiV2p0WGtRR0dsSVpWN2RwajdoeHoyQ3B1MDQ0?=
 =?utf-8?B?N1NOb1dDWnpnRzRnQlczbUZDWmV4bFlYK2MvM2ROZStOR3EwOHovYUhDWVZ1?=
 =?utf-8?B?SEVEbkk3b0l6NTRaN0l2M3crSHRJQWFFczhsYm1ic3Y3aEtFdzJwbGJBYzlL?=
 =?utf-8?B?MjRWN0YvWnAzVnI5RGhvbTVOOXZHc2dsZ3EyKzBZL242UHdQeUNyb2NhdVBv?=
 =?utf-8?B?TEduaHRiSlorOXJPSHJEaitPSUg0RkNld2w5WnZTditvYmhoTTlYSllFOEFM?=
 =?utf-8?B?TWkwUEN2MU9UcEJWUEQycEsveExHZ3grZC9CeEVxcDMrZTY3Q3VoYlRZazlV?=
 =?utf-8?B?NGZTaUN4QUVxNCs2c1Ntd1RyaUVLRFJCNklPaHBzQUE2cThzTjVLQnBxSXU2?=
 =?utf-8?B?eExueXY3MkRVQ2FDNTFpNlE2ci8ySVNZVkpMSXhmMFVodkhSTG4xWDR4TmhB?=
 =?utf-8?B?L3VOUVNwR1JQeS8yQW94YU9aZkJvaW10RENQQVpiajJZTHkzd3d2TXZJUE5G?=
 =?utf-8?B?UmtIT2RtckFGTG9ZZXc1RndpZVRaakttZWdkT2F3Y0ZtWVFVUkNYWXUzYmxt?=
 =?utf-8?B?dDY5dzZTQklrKzVidkkwd291OU42RjlTdFVqeFg1YXNaOW1EeWZyZXZLMStC?=
 =?utf-8?B?cGJSY2FQS0R5bnVFWmd5cGdoWGlVcUJYQnc0bWVtUjF5UEtnc2dhM0dMa2kz?=
 =?utf-8?B?WDJnZHlTUVIrVlJaTUZKMEJDelpZUy9SblFXZG0rUnB1SWttVWRHNkl0bTFI?=
 =?utf-8?B?c0Jxb29SM2E3SlNMNEpkYmZzdnBSVUxQU2hXZFZMVVh1VlV0L0Y2QjBOZHVq?=
 =?utf-8?Q?96DwmEfHlg2EuZS7rf6pr2g=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY4PR03MB3399.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(376014)(1800799024)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?cDNkRytnMUJXclc3RnFYaFk1S1NPVFRSQkVET3M3cWpxTUMyWkFVUzY4WStj?=
 =?utf-8?B?eTVPaEx2THZFMFJqVDBCTFVjS2s3QlZZeWZYWDgzNUw2NkVHSCt2Sm1BcmJG?=
 =?utf-8?B?bHZYYjRGQkplQmQ2QmVHK2k2Q2xLTkVjUUVuZXdYWGhrUU1nZUpieVEzZVVK?=
 =?utf-8?B?aFRUTlNVN05aVEx0aE5iano4NUxyWGxZMEo0YjhiZFRZYkFIUVZtTjN0R1di?=
 =?utf-8?B?c2NSUE5nRnZZcUhHUERMb01TYm5DKzFGYmlleWVRbnNCYUl2bzM1cFRUZTMw?=
 =?utf-8?B?LzVuR09YcnpkczNqN0dTNWROUy9aek9QUDBFQ2ljZkczMWdvcGU5d2RGeWRm?=
 =?utf-8?B?dXBMZm5zdkJYOWMxdG1lUzRRV0FVOE9BOWVxMVF4MmNpNW1zS1N5MHo3eWJ5?=
 =?utf-8?B?NlRjWEQ3SWcxNjFNRWRWVHcrOTNkOHBlMjJ6WXFCb3VHOGduQmIzaEw5S0xZ?=
 =?utf-8?B?VzlRRlNTVUlMbEkzQlRwOVhGOG9qNCtKWHF3YmpkSW1CZklrWkUrdWZNTk9Z?=
 =?utf-8?B?UmZiMEs5eUlDTllqS1NzeC82d2JtYlVITTVOc2lYa0QyM0lXRXEzcHRSZ1Ux?=
 =?utf-8?B?bFJEbTMxRVVGdWt6YmZvWldzS1JCNUpCR3dCTWk5NWNJTVFwRDRSbHVTQlY3?=
 =?utf-8?B?UTlJVGtZRkFuNWVqZ012SVg0VmIreHBPelVTZzlUTW02WmpNbnV2T3d6RmhP?=
 =?utf-8?B?dEFPWDFXN2hpTHNmdHRkY2YvUU15NjNWRlE1a2ZheG9TdWNJYVg5UW1rOFIr?=
 =?utf-8?B?QUZyd0VzNkltU0JCcXpLSUplL2Q1bGpkd29iRkN1ZFcvS3VaTXIrVEJaQWRo?=
 =?utf-8?B?KzY3eWx2WGtaMnozUVdhNlY2S0trd3RmUDJCTTlmT2RvRHhiTktSdWlyWXhp?=
 =?utf-8?B?Q1R3SmVRV1hUWEkyNXI1NkZjL1E5S1FYNWpCRUNzMGZpRDlDYWoxNGhXcTdn?=
 =?utf-8?B?allZUUI0Y3RRMVA3SjNEQkkzY3RYZENXY3pVQVc3bGZ5WUd2cTNBWW9Mc0p6?=
 =?utf-8?B?UzRLQmUybmFLb0R5d21oN3Q5Vi9CSUhmb2ViTTZpNTNyUnJIOG5IWnB0S2J1?=
 =?utf-8?B?QlNoR2llQ2lzMzVIVkU4NENUblVTaFF5N0NUVEY3OFltTUlhMStRam9YUnBW?=
 =?utf-8?B?Q3Y5WGFJYXhid3FqakpTNUx5MmRpL0dsZ2dpbEROdm1PTkNGRFlQVG9DVkNX?=
 =?utf-8?B?SnZicVZsZUdscitCdysyNGVSZ1V0anNXcUZmOHJ2aEFoeWdDT2ltWUZLYU5J?=
 =?utf-8?B?TjVrOHdmSHRKd0h1UnRVRzR6eUs5M1lpdVNYcVBOTDQ2TXNxd1FGWE5jaWFK?=
 =?utf-8?B?ZGxnZzE5cDBMTEVyOS9TNzVOWjkwV1FkVEFoM3l4QUxHeVRkQmYyMU1ZS21G?=
 =?utf-8?B?Tk95WE5FYjRmM3hSV05IblhVbitSQ0N5MkpycnQwdEUzUWFqOHRUSndpK0hN?=
 =?utf-8?B?NmdCUUowcWpXT3dqWm1YeFhKMkpNV05KS2xtTk1JMy8rUnhFdmFEKzRONDRC?=
 =?utf-8?B?bDRsYkhnVCs1SXFqKzFsS1hrU3JyQ014WFQveGQ1Z0JWcmtTNUpXZDhiUXJi?=
 =?utf-8?B?YjZaOEpWcHFPaE8xSTQwWmFyVjY4N1ltZXZPVkxOV1FZMDRtaWhkR0x4OU1o?=
 =?utf-8?B?V0RXVzF2ODJUZHE5QkRZUHJJV2ZxV2ZzOEFPNmI2K0lMMmlGOWNBcnhTWlJu?=
 =?utf-8?B?NUJ1dXdxMm5ZN0Y4M1hNVVJZWThTYkFDcXJ0ZVB5cWZ3R243STBzUVZucnRQ?=
 =?utf-8?B?OFkvSStIcERIYW5NRTJUbnNCeEk1NThuN1lxZWl5ZHBXakN0Y0QwM1lWemZK?=
 =?utf-8?B?cnJ5M1RNTFJyazhkaWZ0QU41MHRVQUlkdCtHMERMT1RhQkRGbTB5RWpsSVRR?=
 =?utf-8?B?dE9VRkhoVzdFTU9WV1Z0UytvWnY3VVZqR280d3NxdHBBOGp6VGZodWlTSmN5?=
 =?utf-8?B?UCt3Z1I5ek10SFlhc1pyeXg5ZnZNSWcxSmRwT1RxbGZLWCtPWEIybTFtTnJr?=
 =?utf-8?B?SWNzdWdBS0NkV3dYQmlhbFNmMVBTekI4bDU3M0FFWU1JWjdDSzVuenYrZHcx?=
 =?utf-8?B?RkJDbTRqSjErY2NHbmJGQURBTGhLWjdXRGxOc0xEcVd1UExIUTZIN0hsV1Vh?=
 =?utf-8?B?ck1zOVJkZEpaTHUvU0VLSS9oNCt6ZDNJTnFVRUdCS1dtbTFnNmpPL05XYkJH?=
 =?utf-8?B?YnZNSnc5cHlSVCtDWGRKWkNkTVlaSWJrbXk4RTErcy9nOW1hVzdjd1hHdFFD?=
 =?utf-8?B?VkFMU1l4ZFVxdUV3ZHpsN2g0SDJJNlh3Q09XajVmZm9kQXNLWW9sUVp5cUt5?=
 =?utf-8?B?RkZpUEJQNGNQMmtTS0luc1JJOHNidGRWWE9SNXkxdjlHRW42ME1XQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR03MB3399.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7203c51-9ab8-44ad-ced8-08de551ad0e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2026 16:17:59.5496
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0LaMgs/pJWCMxbRYZRrUGvo9PqjKj1hBpo3Q/2J95/9mcNE+Yde0MigZ2ugS8PaGUlyCmNj8rLfZUHxDTH+O4otlVSq7wuvpbHOHOUd14qI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR03MB7695
X-Authority-Analysis: v=2.4 cv=AbK83nXG c=1 sm=1 tr=0 ts=696a64ba cx=c_pps
 a=KOMCkPMYLpCa0saNKAKAdQ==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=gAnH3GRIAAAA:8
 a=IpJZQVW2AAAA:8 a=KKAkSRfTAAAA:8 a=fRZwH7_jaZ5JcgJO-BcA:9 a=QEXdDO2ut3YA:10
 a=IawgGOuG5U0WyFbmm1f5:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDExNyBTYWx0ZWRfX79srmZguKmVJ
 k8vR95NLsAgC+T84Wk4f1MEUgdKFsZIka8+8Yl8bes7eSSA7RPyQX1bmrOS4FTZufgbFUYcIwF+
 RgZwVKrrdD1dN/VmdAdic088kPiWTyTNjH+/Y8+foHezwb8RtGV2gmjiDuZyss+mKcIkeFenqO1
 P1u3eRpl7Rz9gfvQoNsj29wh6/ULi3bs+uCX/YXtuP9RBLRmtlfPjoZD2anFkqI5uAS7xjPnFz7
 aS5t8NoBm8vVwuP8gqIBTnZEnZ46n91QJO4Zonek/pfOOFsBPRBhUjPk9a6Knw87fS520fFryw1
 ewuLz5IUBP0nPcAoZlth2hlemNn1ciLPfEnyYYVw5b02lKC0nTbo/mYeY+zJSdObPIfmiX/ikLB
 DR7RnQAhEj40XA7KeuA0NKt86lyrQ5YDllMGA2r75nywW2TgiYQIfW+Y/VBTjHS4KxkfSMCQUH9
 3CwODTTDJ82OwPlSZFQ==
X-Proofpoint-ORIG-GUID: 1ctENZvwDzUSb-vo0F_gJ7GG7_DtpPz3
X-Proofpoint-GUID: 1ctENZvwDzUSb-vo0F_gJ7GG7_DtpPz3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_06,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 suspectscore=0 clxscore=1015
 phishscore=0 adultscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160117

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLcnp5c3p0b2YgS296bG93c2tp
IDxrcnprQGtlcm5lbC5vcmc+DQo+IFNlbnQ6IEZyaWRheSwgSmFudWFyeSAxNiwgMjAyNiA2OjA2
IFBNDQo+IFRvOiBNaWNsYXVzLCBBbnRvbml1IDxBbnRvbml1Lk1pY2xhdXNAYW5hbG9nLmNvbT47
IEpvaGFuIEhvdm9sZA0KPiA8am9oYW5Aa2VybmVsLm9yZz4NCj4gQ2M6IFBldGVyIFJvc2luIDxw
ZWRhQGF4ZW50aWEuc2U+OyBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPjsgS3J6eXN6dG9m
DQo+IEtvemxvd3NraSA8a3J6aytkdEBrZXJuZWwub3JnPjsgQ29ub3IgRG9vbGV5IDxjb25vcitk
dEBrZXJuZWwub3JnPjsNCj4gU3Jpbml2YXMgS2FuZGFnYXRsYSA8c3JpbmlAa2VybmVsLm9yZz47
IEpvaGFuIEhvdm9sZA0KPiA8am9oYW4rbGluYXJvQGtlcm5lbC5vcmc+OyBEYXZpZCBMZWNobmVy
IDxkbGVjaG5lckBiYXlsaWJyZS5jb20+Ow0KPiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsg
bGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENIIHYzIDAv
NF0gbXV4OiBncGlvLW11eDogYWRkIGVuYWJsZSBHUElPIHN1cHBvcnQgYW5kDQo+IEFERzI0MDQN
Cj4gDQo+IFtFeHRlcm5hbF0NCj4gDQo+IE9uIDE2LzAxLzIwMjYgMTY6MjYsIE1pY2xhdXMsIEFu
dG9uaXUgd3JvdGU6DQo+ID4NCj4gPg0KPiA+IC0tDQo+ID4gQW50b25pdSBNaWNsxIN1xZ8NCj4g
Pg0KPiA+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+PiBGcm9tOiBLcnp5c3p0b2Yg
S296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+DQo+ID4+IFNlbnQ6IEZyaWRheSwgSmFudWFyeSAx
NiwgMjAyNiAxMjozMiBQTQ0KPiA+PiBUbzogTWljbGF1cywgQW50b25pdSA8QW50b25pdS5NaWNs
YXVzQGFuYWxvZy5jb20+OyBKb2hhbiBIb3ZvbGQNCj4gPj4gPGpvaGFuQGtlcm5lbC5vcmc+DQo+
ID4+IENjOiBQZXRlciBSb3NpbiA8cGVkYUBheGVudGlhLnNlPjsgUm9iIEhlcnJpbmcgPHJvYmhA
a2VybmVsLm9yZz47DQo+IEtyenlzenRvZg0KPiA+PiBLb3psb3dza2kgPGtyemsrZHRAa2VybmVs
Lm9yZz47IENvbm9yIERvb2xleSA8Y29ub3IrZHRAa2VybmVsLm9yZz47DQo+ID4+IFNyaW5pdmFz
IEthbmRhZ2F0bGEgPHNyaW5pQGtlcm5lbC5vcmc+OyBKb2hhbiBIb3ZvbGQNCj4gPj4gPGpvaGFu
K2xpbmFyb0BrZXJuZWwub3JnPjsgRGF2aWQgTGVjaG5lciA8ZGxlY2huZXJAYmF5bGlicmUuY29t
PjsNCj4gPj4gZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtl
cm5lbC5vcmcNCj4gPj4gU3ViamVjdDogUmU6IFtQQVRDSCB2MyAwLzRdIG11eDogZ3Bpby1tdXg6
IGFkZCBlbmFibGUgR1BJTyBzdXBwb3J0IGFuZA0KPiA+PiBBREcyNDA0DQo+ID4+DQo+ID4+IFtF
eHRlcm5hbF0NCj4gPj4NCj4gPj4gT24gMTYvMDEvMjAyNiAxMDozOSwgTWljbGF1cywgQW50b25p
dSB3cm90ZToNCj4gPj4+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+Pj4+IEZyb206
IEpvaGFuIEhvdm9sZCA8am9oYW5Aa2VybmVsLm9yZz4NCj4gPj4+PiBTZW50OiBGcmlkYXksIEph
bnVhcnkgMTYsIDIwMjYgMTE6MDEgQU0NCj4gPj4+PiBUbzogS3J6eXN6dG9mIEtvemxvd3NraSA8
a3J6a0BrZXJuZWwub3JnPg0KPiA+Pj4+IENjOiBNaWNsYXVzLCBBbnRvbml1IDxBbnRvbml1Lk1p
Y2xhdXNAYW5hbG9nLmNvbT47IFBldGVyIFJvc2luDQo+ID4+Pj4gPHBlZGFAYXhlbnRpYS5zZT47
IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+OyBLcnp5c3p0b2YNCj4gS296bG93c2tpDQo+
ID4+Pj4gPGtyemsrZHRAa2VybmVsLm9yZz47IENvbm9yIERvb2xleSA8Y29ub3IrZHRAa2VybmVs
Lm9yZz47IFNyaW5pdmFzDQo+ID4+Pj4gS2FuZGFnYXRsYSA8c3JpbmlAa2VybmVsLm9yZz47IEpv
aGFuIEhvdm9sZA0KPiA8am9oYW4rbGluYXJvQGtlcm5lbC5vcmc+Ow0KPiA+Pj4+IERhdmlkIExl
Y2huZXIgPGRsZWNobmVyQGJheWxpYnJlLmNvbT47IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3Jn
Ow0KPiA+PiBsaW51eC0NCj4gPj4+PiBrZXJuZWxAdmdlci5rZXJuZWwub3JnDQo+ID4+Pj4gU3Vi
amVjdDogUmU6IFtQQVRDSCB2MyAwLzRdIG11eDogZ3Bpby1tdXg6IGFkZCBlbmFibGUgR1BJTyBz
dXBwb3J0DQo+IGFuZA0KPiA+Pj4+IEFERzI0MDQNCj4gPj4+Pg0KPiA+Pj4+IFtFeHRlcm5hbF0N
Cj4gPj4+Pg0KPiA+Pj4+IE9uIEZyaSwgSmFuIDE2LCAyMDI2IGF0IDA5OjM3OjM2QU0gKzAxMDAs
IEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6DQo+ID4+Pj4+IE9uIFRodSwgSmFuIDE1LCAyMDI2
IGF0IDAyOjE4OjE4UE0gKzAyMDAsIEFudG9uaXUgTWljbGF1cyB3cm90ZToNCj4gPj4+Pj4+IFRo
aXMgc2VyaWVzIGV4dGVuZHMgdGhlIGdwaW8tbXV4IGRyaXZlciB3aXRoIG9wdGlvbmFsIGVuYWJs
ZSBHUElPDQo+ID4+IHN1cHBvcnQNCj4gPj4+Pj4+IHRvIHByZXZlbnQgZ2xpdGNoZXMgZHVyaW5n
IGNoYW5uZWwgdHJhbnNpdGlvbnMsIHRoZW4gYWRkcyBzdXBwb3J0IGZvcg0KPiB0aGUNCj4gPj4+
Pj4+IEFuYWxvZyBEZXZpY2VzIEFERzI0MDQgbXVsdGlwbGV4ZXIgYXMgdGhlIGZpcnN0IHVzZXIg
b2YgdGhpcyBmZWF0dXJlLg0KPiA+Pj4+Pj4NCj4gPj4+Pj4+IFRoZSBlbmFibGUgR1BJTyBhbGxv
d3MgdGhlIG11bHRpcGxleGVyIHRvIGJlIGRpc2FibGVkIGJlZm9yZSBjaGFuZ2luZw0KPiA+Pj4+
Pj4gYWRkcmVzcyBsaW5lcyBhbmQgcmUtZW5hYmxlZCBhZnRlciwgcHJldmVudGluZyBicmllZiBh
Y3RpdmF0aW9uIG9mDQo+ID4+Pj4+PiB1bmludGVuZGVkIGNoYW5uZWxzIGR1cmluZyB0cmFuc2l0
aW9ucy4gVGhpcyBpcyBwYXJ0aWN1bGFybHkgaW1wb3J0YW50DQo+ID4+Pj4+PiBmb3IgcHJlY2lz
aW9uIGFuYWxvZyBhcHBsaWNhdGlvbnMuDQo+ID4+Pj4+Pg0KPiA+Pj4+Pj4gVGhlIEFERzI0MDQg
aXMgYSA0OjEgYW5hbG9nIG11bHRpcGxleGVyIHdpdGggbG93IDAuNjLOqSBvbi1yZXNpc3RhbmNl
DQo+ID4+Pj4+PiB0aGF0IHJlcXVpcmVzIHRoaXMgZW5hYmxlIEdQSU8gZnVuY3Rpb25hbGl0eSBm
b3IgZ2xpdGNoLWZyZWUgb3BlcmF0aW9uLg0KPiA+Pj4+Pj4NCj4gPj4+Pj4+IENoYW5nZXMgaW4g
djM6DQo+ID4+Pj4+PiAgKiBFeHRlbmQgZ3Bpby1tdXggZHJpdmVyIGluc3RlYWQgb2YgY3JlYXRp
bmcgc3RhbmRhbG9uZSBhZGcyNDA0DQo+IGRyaXZlcg0KPiA+Pj4+Pj4gICogTWFrZSBlbmFibGUg
R1BJTyBvcHRpb25hbCBmb3IgYmFja3dhcmQgY29tcGF0aWJpbGl0eQ0KPiA+Pj4+Pj4gICogQWRk
IE1VWF9JRExFX0RJU0NPTk5FQ1Qgc3VwcG9ydCB2aWEgZW5hYmxlIEdQSU8NCj4gPj4+Pj4NCj4g
Pj4+Pj4gWW91IGFyZSBkZXZlbG9waW5nIG9uIHNvbWUgb2xkIGtlcm5lbC4gWW91IGdvdCBzdGFs
ZSBDYyBsaXN0IG9mIGF0IGxlYXN0DQo+ID4+Pj4+IHRocmVlIHBlb3BsZSEgSG93IGNvdWxkIHlv
dSBmb3IgZXhhbXBsZSBnZXQNCj4gImpvaGFuK2xpbmFyb0BrZXJuZWwub3JnIiAtDQo+ID4+Pj4+
IGZyb20gd2hpY2ggbWFpbnRhaW5lciBlbnRyeSAtIGJ1dCB0aGF0IGF0IGxlYXN0IGlzIG5vdCBi
b3VuY2luZyBsaWtlIHR3bw0KPiA+Pj4+PiBvdGhlcnMuDQo+ID4+Pj4NCj4gPj4+PiBQcm9iYWJs
eSBmcm9tIHVzaW5nIGdldF9tYWludGFpbmVyLnBsIC0tZ2l0Og0KPiA+Pj4+DQo+ID4+Pj4gCSQg
c2NyaXB0cy9nZXRfbWFpbnRhaW5lci5wbCAtLWdpdCBkcml2ZXJzL211eC9ncGlvLmMNCj4gPj4+
PiAJUGV0ZXIgUm9zaW4gPHBlZGFAYXhlbnRpYS5zZT4gKG1haW50YWluZXI6TVVMVElQTEVYRVIN
Cj4gPj4+PiBTVUJTWVNURU0pDQo+ID4+Pj4gCVNyaW5pdmFzIEthbmRhZ2F0bGEgPHNyaW5pQGtl
cm5lbC5vcmc+DQo+ID4+Pj4gKGNvbW1pdF9zaWduZXI6MS8yPTUwJSxhdXRob3JlZDoxLzI9NTAl
LGFkZGVkX2xpbmVzOjUvNj04MyUpDQo+ID4+Pj4gCUtyenlzenRvZiBLb3psb3dza2kgPGtyemtA
a2VybmVsLm9yZz4gKGNvbW1pdF9zaWduZXI6MS8yPTUwJSkNCj4gPj4+PiAJQmFydG9zeiBHb2xh
c3pld3NraSA8YnJnbEBrZXJuZWwub3JnPiAoY29tbWl0X3NpZ25lcjoxLzI9NTAlKQ0KPiA+Pj4+
IAlEYXZpZCBMZWNobmVyIDxkbGVjaG5lckBiYXlsaWJyZS5jb20+DQo+ID4+Pj4NCj4gPj4NCj4g
KGNvbW1pdF9zaWduZXI6MS8yPTUwJSxhdXRob3JlZDoxLzI9NTAlLGFkZGVkX2xpbmVzOjEvNj0x
NyUscmVtb3ZlZA0KPiA+Pj4+IF9saW5lczozLzM9MTAwJSkNCj4gPj4+PiAJSm9oYW4gSG92b2xk
IDxqb2hhbitsaW5hcm9Aa2VybmVsLm9yZz4gKGNvbW1pdF9zaWduZXI6MS8yPTUwJSkNCj4gPj4+
PiAJbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZyAob3BlbiBsaXN0KQ0KPiA+Pj4+IAlNVUxU
SVBMRVhFUiBTVUJTWVNURU0gc3RhdHVzOiBPZGQgRml4ZXMNCj4gPj4+Pg0KPiA+Pj4+IEEgcmVj
ZW50IG1haWxtYXAgaXMgaW5kZWVkIG5lZWRlZCB0byByZW1hcCBCYXJ0b3N6J3Mgb2xkIGFkZHJl
c3MsDQo+ID4+Pj4gdGhvdWdoLg0KPiA+Pj4+DQo+ID4+Pg0KPiA+Pj4gWWVzLCBJJ3ZlIHVzZWQg
Ii0tdG8tY21kPScuL3NjcmlwdHMvZ2V0X21haW50YWluZXIucGwgLS1ub3JvbGVzdGF0cyIgd2hl
bg0KPiA+PiBzZW5kaW5nIHRoZSBwYXRjaGVzLg0KPiA+Pg0KPiA+PiBUaGVuIGhvdyBkaWQgeW91
IGdldCBub24td29ya2luZyBCYXJ0b3N6IGFuZCBMaW51cycgZW1haWxzPw0KPiA+DQo+ID4gSSBh
bSBvbiB0b3J2YWxkcy9saW51eCBsYXRlc3QgbWFzdGVyIGJyYW5jaCBub3cuIEhlcmUgaXMgdGhl
IG91dHB1dCBvZg0KPiAuL3NjcmlwdHMvZ2V0X21haW50YWluZXIucGwgLS1ub3JvbGVzdGF0czoN
Cj4gPiBQZXRlciBSb3NpbiA8cGVkYUBheGVudGlhLnNlPg0KPiA+IFJvYiBIZXJyaW5nIDxyb2Jo
QGtlcm5lbC5vcmc+DQo+ID4gS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6aytkdEBrZXJuZWwub3Jn
Pg0KPiA+IENvbm9yIERvb2xleSA8Y29ub3IrZHRAa2VybmVsLm9yZz4NCj4gPiBBbnRvbml1IE1p
Y2xhdXMgPGFudG9uaXUubWljbGF1c0BhbmFsb2cuY29tPg0KPiA+IFNyaW5pdmFzIEthbmRhZ2F0
bGEgPHNyaW5pQGtlcm5lbC5vcmc+DQo+ID4gQmFydG9zeiBHb2xhc3pld3NraSA8YnJnbEBrZXJu
ZWwub3JnPg0KPiANCj4gRXhhY3RseS4gU28gd2h5IGRpZCB5b3Ugc2VuZCBpdCB0bzoNCj4gQmFy
dG9zeiBHb2xhc3pld3NraSA8YmFydG9zei5nb2xhc3pld3NraUBsaW5hcm8ub3JnPg0KPiBhbmQN
Cj4gTGludXMgV2FsbGVpaiA8bGludXMud2FsbGVpakBsaW5hcm8ub3JnPg0KPiANCj4gSSBtZWFu
LCB0aGlzIGlzIHRoZSB0aGlyZCB0aW1lIEkgYW0gYXNraW5nIGJ1dCB5b3Uga2VlcCBkZWZsZWN0
aW5nIHRoZQ0KPiBxdWVzdGlvbiB3aXRoIHNvbWUgc29ydCBvZiBvdGhlciBkYXRhLi4uDQoNCkkg
d2FzIG9uIGFuIG9sZGVyIGJyYW5jaC4NClRoaXMgc2hvdWxkIGJlIGZpeGVkIG5vdy4NCg0KUmVn
YXJkcywNCg0KPiBCZXN0IHJlZ2FyZHMsDQo+IEtyenlzenRvZg0K

