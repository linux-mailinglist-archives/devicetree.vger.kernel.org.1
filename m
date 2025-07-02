Return-Path: <devicetree+bounces-192167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B458AAF59C8
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 15:44:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8481A7AF615
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 13:37:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43182265293;
	Wed,  2 Jul 2025 13:37:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="MoFBiWjG"
X-Original-To: devicetree@vger.kernel.org
Received: from AM0PR83CU005.outbound.protection.outlook.com (mail-westeuropeazon11010057.outbound.protection.outlook.com [52.101.69.57])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4FD027603A
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 13:37:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.69.57
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751463478; cv=fail; b=jIW0MGomNygFk6R/7C/ZHxYAxNBOifSumWHbWy2oHNjFCtmVWhxdtXutzPeztP/tbdvVoNzwNYi45KStkrjPsjkojJlDp15BQQsmsHHIbaUwaay9efitf6pD4B4is7mqZHV3ugxyr/WyNTX28gyzV/DbxMTNgwErnStVmG4Ml0k=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751463478; c=relaxed/simple;
	bh=0/D1zppe73ofI8OmVco+LPUPQAGZYOYBIXJMKWxhmBo=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=T8/KzfnJrccTg3toLP/4E6H9QBiaDbUOOJCQGaVgbRdnCZyN6D0f5f3vYVgToONVYOnUIWiOQYN73gCXArLlLFf9vbp0RcwOrKVsBRFqRbuJ0SvIzcdtNP9S7RWRb8A2p2HU+Pr3x0pLEuwffyS6VReCdZtpERsu6Swa7TFEVSo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=MoFBiWjG; arc=fail smtp.client-ip=52.101.69.57
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Mm0XpeS1+Rf7r0Ay8kPBoW2xwq1xeUwC418to9JPiCoK1nWktNHND6lMNY4L3CdYR5eJ9sLXqulDybehWIgJsuFaTeFUFyG2uiTMMvPZ7GvHUC9ML726kMMVV5JC1Rqmp4dL3athZEHDCAL3wSK1AV77DzgozdZxtqkZAgN3yPNyJ8LozgPLAErJAyxd0F8iZ0MtcpPVa5MTOiJu4rAA6EGQ4WcLKSbpwgw6kKKqSYu9gUSezNdiby5aH0JUcr4wFUZWN5VXZYGFgaIwvc9BTdeh4c5+/PiY/pRxc902fo7ICn3hjYqnxVgK79YXD/KRZxcBvGTFlGBQatSvdWecNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0/D1zppe73ofI8OmVco+LPUPQAGZYOYBIXJMKWxhmBo=;
 b=SouFFb/v3Sy780enJwTSUlDTFr7Sa8iwrDrBuE4DRwaLGZUzM+zVwMEeNHlBXmyjJTZLKPx7MvaNlVHo3prMvgcL9MK2ktbGnSQDHgtV+ElDpq7d+JZee96hhf5n1GhDbu4D48jxMVO8dd4+ZKmKWNhUYWqDYDXFVu/pRfDsNbNyrWqEX50aNsotsrDv4FcuLxHwWjCd1Yrk6ZFIjEHLHQWCk3IBYAXIgqi0vVNXsQIeXCn3I+fdybhpRZhihN03Re/SOIIHbBuhu3Z6Pzf7RsrtI4+i4P4tvlCiYgxuJ550lzw5rnMEHnmCQuit8rdizNR1UM4aIYhX+4PmdDN1qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0/D1zppe73ofI8OmVco+LPUPQAGZYOYBIXJMKWxhmBo=;
 b=MoFBiWjGVzGtxTQhgsH9ugeaZQPoWfYvZFeKLA0e73IhxlZ32eV1lGREVrEbGUoEisQfzBfEuVkcXEO8TlGQK08vXJ9tBYx/ioVBArP1qjLEnyIdAyCWWeYHxl/U+H/Fzau6aDy/xncu68VLKxsi5Wu0LMXUCO/xcT+7rK3orJodtK4Thxm/G9z2Vl1LJR4X0fhx6vXcSue97cZbMlUN8Q0jgYwIc/H5Ow57vSvITfxP1fWxNN6l8iWYQiaQ5JQB/dl+CuSFsKPgGjLxDn6Bi5052Wdk2nHnplzfdmXzchmLGpHNyUgIyo2VEne1BxWvadBU6aHROmVvgxxhbiwg8A==
Received: from PAXPR04MB8459.eurprd04.prod.outlook.com (2603:10a6:102:1da::15)
 by DUZPR04MB9747.eurprd04.prod.outlook.com (2603:10a6:10:4b0::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.38; Wed, 2 Jul
 2025 13:37:51 +0000
Received: from PAXPR04MB8459.eurprd04.prod.outlook.com
 ([fe80::165a:30a2:5835:9630]) by PAXPR04MB8459.eurprd04.prod.outlook.com
 ([fe80::165a:30a2:5835:9630%6]) with mapi id 15.20.8901.018; Wed, 2 Jul 2025
 13:37:51 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>
CC: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
	<devicetree@vger.kernel.org>, Frank Li <frank.li@nxp.com>
Subject: RE: Question: use nodename clock-<freq> for fixed-clock nodes
Thread-Topic: Question: use nodename clock-<freq> for fixed-clock nodes
Thread-Index: AdvrRyPGb5lVPTwZQoy5auVesZIKnwAAgzwAAANQFxA=
Date: Wed, 2 Jul 2025 13:37:51 +0000
Message-ID:
 <PAXPR04MB8459B85FBD2C272440EDD2D28840A@PAXPR04MB8459.eurprd04.prod.outlook.com>
References:
 <PAXPR04MB84593D0C225D85065C5F60078840A@PAXPR04MB8459.eurprd04.prod.outlook.com>
 <9ecb8e5f-e78b-4bff-b3c6-d968d1944911@kernel.org>
In-Reply-To: <9ecb8e5f-e78b-4bff-b3c6-d968d1944911@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAXPR04MB8459:EE_|DUZPR04MB9747:EE_
x-ms-office365-filtering-correlation-id: b2af5ace-d57a-4569-ae00-08ddb96da46c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|376014|19092799006|1800799024|366016|38070700018;
x-microsoft-antispam-message-info:
 =?utf-8?B?ZmU4NFlDZXMrczd1NmQyYUE2QmFPczJsb3RMTmVLTWpVOGZaMTNCVTE2d1Bp?=
 =?utf-8?B?OHJOaHVwVGNxd2gzemVCZUhUdmh0cUdPTVh2cXphbTFhN1R4SDZ0L0dEMHk3?=
 =?utf-8?B?YWg4Y1g3U1RBRjJodUFoVmg5aGhTNzV4eHM0MndsSnN6Q1NCRVAydEJwM28y?=
 =?utf-8?B?dDFnM0FOV3dRT2kzTkp0Wkh2NjhqaDFOVVVSVVQyeVNtZW9FZnF2dnVTYUc2?=
 =?utf-8?B?WFhLaFdySnR5NzNsd3VYQjkvakJLQkZmVHBKTjRSdHRjK3JFN1FRaGlFbmNo?=
 =?utf-8?B?cGNVYVRic2k3QW5BQW1YeGd3UXBOdWVDQXpVQ0hRWFRHQTc4Tjh1MFVNV0Zr?=
 =?utf-8?B?eVVFUVZEOWMyYjY0bEJTTEVFdTBsT1hldSs1QjVDempOUXNobVJiT0QvQUpT?=
 =?utf-8?B?Sy9Yd1VVS21ML1BqUEkzL3EyVDlJTTlKdEplNGswMDk5eERSU2F1enZQS1NL?=
 =?utf-8?B?WlJCMUhRbUVxTmlkQW1jVlRjaVZFVUhKQ3VHeG1sOXFmN3ZqVE03dzUveFlS?=
 =?utf-8?B?ZmVyM2pCbmRHK0U5WnJPVzNFd1orYVMxN0dLcDVtWktCRG94V0MyVGN2OHF4?=
 =?utf-8?B?bEFnTkMrWnh1Qy9RRzM0ay9CZ1ArRkIyY2I2anBINE5TSk54QVBEek8reXhH?=
 =?utf-8?B?ZWltSEpvYXZCT0U0N2dYZXF6eW5Xd3Y0YTU5LzRlRHJtRnpxV0dIT01jWDFm?=
 =?utf-8?B?SUROSWJkVDJKU2hGYnp5SDhZWVh4YjFiMnFGU3ZjSVpQQy8rNE51eUJHMWEw?=
 =?utf-8?B?a3daL3dQOWNUYVhHcTZwWG8yWWl5eUFtS3VqTUNKY0VkOUpzQWNnRG5VN0xI?=
 =?utf-8?B?Zmkra2F4TDh2NjI0ZjZHRkN5czgxcGlQQkN1bkNNM3dZcm5RNXo2NkRYZXFG?=
 =?utf-8?B?dWhRd2hJTjlsUEFTV1FiSU9XZVZuMWZkZ0tkVmUyR1Y5alVxNk56cXNlMGNs?=
 =?utf-8?B?K2ZPZ1ZPeC9JWnlwNVNwTCtGSmw3T0NlaW5Ia1lUVUpjam1LV1FFOEQ5VUVO?=
 =?utf-8?B?VzUvK3pqZTBoY1FPZXlPYkNVRitmd0NiTmJUbHY3M2cwUVJPS1FjV01ROTht?=
 =?utf-8?B?Qm5FZ0hzOUlPVXhKM20yQWlaR01PVGVCMEptVFE5V25PNk1ZVERKbEpDTkdV?=
 =?utf-8?B?ckd4RFlNK0dhRVlPOUNrSDJ3eGhtMFJGck8xVTdtdDJ0TmE5Wi91S2ZuV3h2?=
 =?utf-8?B?amN1L3JIZUFaMW5WdWxqa1JOM3VXZkN1eVNFQUIyN2taZTJDandkaGxhczF2?=
 =?utf-8?B?Z3pwTkorMUdnOXFkb1Y1YU5Da3dQZEp1cFVSVGVvVGVsZ3dTeDJMZktyODVL?=
 =?utf-8?B?a3YxZTRjbnhBclB1ZjBmZElBMlQxTXY4M09DSGdXVmV2aW5pcUdKV0VxWm9Y?=
 =?utf-8?B?cHF4cDdmVFVFZUd2VXpncysvTEQzWHovVDN3SnlrNWtjVDNRa3ZmaXdiZnlq?=
 =?utf-8?B?NS9HeW9RcGYyb0lDSWlxTEl2ck81anhrc2xrZGVjN01VTnZVekI2M3VHYm9u?=
 =?utf-8?B?VjVaUlozWVlrUUU5cU4rZTVma3ZtbVFGNkpWamVya2tnRGdlMERkeFozdzZC?=
 =?utf-8?B?MVliNTRzQytNdW1Za2xycEQxV25LMEVCT2dlMEVnWTFaYklMVFBFdnpyZTVx?=
 =?utf-8?B?ZHJYMTVGajlpalEvMEUzNUE5UGUrbW0yRy9LTVc0ZitpQkRSeXBTRjgvMnhv?=
 =?utf-8?B?N0NXOUJ2dVZyREJpU3EyTk9lSTZSY25rUG01S0hpMS9xY0JxK2V5RzEvdzlC?=
 =?utf-8?B?N294SlFXbEVCYmswWXlvM3cvclR0cDFhN3J2MlEvYnF0c1ZVSktNa0FOdE1C?=
 =?utf-8?B?TlQzUGZFVzkrSk13SkxzNkt5MTRRVjhPNGRrMnNUcE1BcUlJcWF2aU92L21O?=
 =?utf-8?B?VWVBZXdlR2hwY1BneWlXUjB6YUoxV2hjYzlQWHpFYi94RlBxUnU3Q21OQW1W?=
 =?utf-8?B?Z201cHpQQy9DUnM5bXRiajBhOGg1VzlveG1vL25MOXBnYmtITHBwRmxRR0xR?=
 =?utf-8?Q?UConVeScavGLfA5vg6Q3AHcHL9ESP4=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8459.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(19092799006)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?ZTYySFFLRnZuaitQd2UzWHVNb2U4a1VDWGMxR0dTNFYrRkFxb1N4czRLWDZI?=
 =?utf-8?B?K2lJM2krb0lBMFlBeFgvNDVnOXE3MEdXWVNubGNoYkpPeXVzZmhWd0JwczBY?=
 =?utf-8?B?YUFzdytIeGpHdGRCSy91Q0RxeCt1aEFBbDNkbGhDZDU3UmQzN0o5Zk5Wc1BQ?=
 =?utf-8?B?V3VHaWxHZ3ZOekEzeUM2TFNaMjl4QlNVZGdTcGdyREhMR0tJWUhybUNFdmtV?=
 =?utf-8?B?STRMZXAxKzRRM0dlZjg0Z1hsTm5YVGE1bE56dXI4Z1JXQTZ2dmhBVDk3clNW?=
 =?utf-8?B?UEFnbjNEbDNpZHE5dGpGMGNCeHVQbjdVNXpRQTc0ditueWJPVCsxZXhOKzZ4?=
 =?utf-8?B?dEpvWGdPalVMSmtNMVdoN1NmVXhsYmpJWTZzRy93N3RhUklZUytTOThlZGhO?=
 =?utf-8?B?eFczVmpUKyt6dXBBUE9EczVLOC9DcE9PT2lzYk9tMHNMRFZ5NU9BcmIyaWQ2?=
 =?utf-8?B?WUt3N3JkdUFBMHBDdHFwaWF5TFp1NTBWK1pqY3NwTjlKb1ZXR1U4OTltMDVl?=
 =?utf-8?B?VGt2a3VEUmtnL3VoWlBtRlF6SXBtc1lHeHYxT3N4Zy9nMlA0UUk4ZGREZWRv?=
 =?utf-8?B?cUZPRlcwSUlVeTIzb2lETjFvVnpaM09tN2I3SVJ5MlhOUS9zeGdORmJOSTFU?=
 =?utf-8?B?MS93cHQ0L0NRcmJ0ZDdJZVNReENENXBtVDlzUC9ZZ3kwUStOdjU1VTVRdE0w?=
 =?utf-8?B?cjB3bkgrUXdRcSt0WXVsbkpwN3M1UnVtLzhML2pvdW1ZUFRpd2I4ZUFCdlZz?=
 =?utf-8?B?Q1ZPUWVMbXRxd2NSYnJLQ0VsVDhPWVVLSnQ3VWpHQ01XWmY1Q2N4ZHRWbVZu?=
 =?utf-8?B?LzdNWTNKTzJvZDZBQUJGQ2JnNm16TzhTbFp4amdZRDRhQVYxRnJXTXdwZit0?=
 =?utf-8?B?Y1loL0FyT0lQUS8wNVQ5RW03RUZ6QmhPVnBlNEdXYUVFUG9DdzJabml1cytG?=
 =?utf-8?B?L3Y2dWJqUGJwaTI2SU5tRWVMR3ZqOVM0VURyZVR5aTlabzVZWkhHYjZOcHVP?=
 =?utf-8?B?MFRvNUVmTEdrbGk0ZU5zbFluOG9LS1RrUWJoNjV5T1hEZWZ6dEIwL21ibWVQ?=
 =?utf-8?B?RVdjVy9nazdmYnkxclZyNFlXd2luOGt6bzNlRDhyL1pEbyt4ejN3aWVqaU1q?=
 =?utf-8?B?UVY1SmNrNW9STThqaTB2dEV0ekVvNkV6a3UvVVBhSG1KL3pzYko2eHZoNGpm?=
 =?utf-8?B?UmRWaWs5ejVNTzc5RDZqL0F2ZmR0QjVmc0hqQjhuQ1Izd1c1T1A2L0tZaTdF?=
 =?utf-8?B?ZXEwRWVkMjF3Umg1VjA3TzdhYnZzb0JXdXBhWFRiM3RBRzN0MFdWcHpOWHB6?=
 =?utf-8?B?NEFMNmJiWlMwY2RFZDVFTEI0UXFlaWRlZVVqVG91eVp3RFM5T3h1NXFCcFBG?=
 =?utf-8?B?KzM5Ym5hc0kwRnBhbWpQYVZoVVQ2M1RiTGU1ZlBsY0FSWTBuWDF6TGN6MjhI?=
 =?utf-8?B?WmhTUlpyZkhBQzdGdHNsNHpvZGFlUC9HYmFuSVNOSTFielhUOTFQTWtJOElX?=
 =?utf-8?B?VE9JNEo0Ym5UUXJwN3BvSGYyalk3dDdZY3l4RHU5bzJORzNXQlhIR0I3VlBa?=
 =?utf-8?B?V1dZaFYxbFRhMFFLeUVlWXVaZlFFK2dvak5zelVrYmZZa0FGMCtOWXovQUJw?=
 =?utf-8?B?WGpTRXN1N2F4ZXVRQVRWbWFxN0NqTDlHUVFlRERPMXZvTHZId2tWMG5yd2VY?=
 =?utf-8?B?ZGdQeUVoeGtPN0NOOExxdXZISGJIZTRZQTR3TUc4aHFkWTQ4NVZVQ3lpekk0?=
 =?utf-8?B?bEpEeW5qNnRYclJFRkFmckZ0eFpMUklESXBERWpuZ0lXZWEvSWZYU2NKSW82?=
 =?utf-8?B?eFd1R2ZtOENVdGI4UStlRXZRVzBMK0t5SE4zQSs5R3pwMWhxN2RDU1gyWEdR?=
 =?utf-8?B?RjZxTzA0cWIzU0RtalVGNlRrM2RNTW5rV09UM2Rxa2ZyVHV2OCtRcDBMbnpv?=
 =?utf-8?B?T2pkMHV2Mkp3R2VXNVovdERKem1yeENVc2J2R3NqQ3RjOE1zSUw5QUZrWVF3?=
 =?utf-8?B?Qm1TcUI3cnE1Y3c3a2o3NnZIUXdNRngvM1pZQVlVQzE1L0FaUHYxeHVPNmN2?=
 =?utf-8?B?QlE2RlNZNlhicWlpZDY3SG8yZ0g1OXA1aGF3b2V2S092REJXaEVrbURtcnhF?=
 =?utf-8?Q?ebGE=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB8459.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b2af5ace-d57a-4569-ae00-08ddb96da46c
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2025 13:37:51.7374
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C4YZj0US7jPRxGbYwqrLrKuSYcs5hFHtyclYkFpZcNApjXFvi9tk6IABxmM6BUoq10XEu/7Kc67cfs2BiAP2jw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DUZPR04MB9747

PiBTdWJqZWN0OiBSZTogUXVlc3Rpb246IHVzZSBub2RlbmFtZSBjbG9jay08ZnJlcT4gZm9yIGZp
eGVkLWNsb2NrIG5vZGVzDQo+IA0KPiBPbiAwMi8wNy8yMDI1IDEzOjQ3LCBQZW5nIEZhbiB3cm90
ZToNCj4gPiBIaSBBbGwsDQo+ID4NCj4gPiBJIGFtIHRoaW5raW5nIHRvIHdyaXRlIGEgc2NyaXB0
IHRvIGNvbnZlcnQgYWxsIHRoZSAiZml4ZWQtY2xvY2siDQo+ID4gbm9kZXMgdGhhdCBoYXZlIGNs
b2NrLWZyZXF1ZW5jeSBwcm9wZXJ0eSB0byB1c2UgbmV3IG5vZGUgbmFtZQ0KPiA+ICJjbG9jay08
ZnJlcT4iLg0KPiA+DQo+ID4gVGhlbiB3ZSBjb3VsZCBkcm9wIHRoaXMgZnJvbSBmaXhlZC1jbG9j
ay55YW1sICINCj4gPiAgICAgICAtIGRlc2NyaXB0aW9uOiBBbnkgbmFtZSBhbGxvd2VkDQo+ID4g
ICAgICAgICBkZXByZWNhdGVkOiB0cnVlDQo+ID4gIg0KPiA+DQo+ID4gSSBhbSBub3Qgc3VyZSB3
aGV0aGVyIHRoaXMgd29yayBpcyBwcmVmZXJyZWQgb3IgdGhpcyBpcyBhbiBBQkkgYnJlYWsNCj4g
PiBiZWNhdXNlIG9mIG5vZGVuYW1lIGNoYW5nZS4NCj4gPg0KPiBQcmV0dHkgaHVnZSBjaHVybiBm
b3IgbGl0dGxlIGltcGFjdCwgSU1PLiBDb25zaWRlcmluZyB0aGUgbm9kZSBuYW1lIGlzDQo+IHJl
bGV2YW50IChpdCB3aWxsIG5vdCBiZSBBQkkgYnJlYWsuLi4gaXQgd2lsbCBiZSBqdXN0IHJ1bnRp
bWUgYnJlYWspLCBpZiB0aGVyZQ0KPiBpcyBubyBvdXRwdXQgbmFtZXMsIHlvdSB3b3VsZCBuZWVk
IHRvIGdldCBleHRlbnNpdmUgdGVzdGluZywgd2hpY2ggSQ0KPiB0aGluayB3ZSBib3RoIGtub3cg
eW91IGRpZCBub3QgcGxhbiB0by4NCj4gDQo+IFNvIG5vLi4uDQoNClN1cmUsIG5vIHByb2JsZW0u
IFRoYW5rcyBmb3IgZXhwbGFpbmluZy4NCg0KVGhhbmtzLA0KUGVuZy4NCg0KPiANCj4gQmVzdCBy
ZWdhcmRzLA0KPiBLcnp5c3p0b2YNCg==

