Return-Path: <devicetree+bounces-158172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9C4A64F97
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 13:46:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A93021661DA
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 12:46:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7528E1E868;
	Mon, 17 Mar 2025 12:46:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="rtrv1svs"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2083.outbound.protection.outlook.com [40.107.94.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F49F4A1C
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 12:46:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.94.83
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742215575; cv=fail; b=Pm+uI5tccCo5E8CnhsHIFvJ4Xs4j9fm2MnnbNrycfLSWOMLfy1E8o+b7NA2YxF/ScE+AgUt3glgZ0xRDt2gOv7aRUKSw/KgHHez9apaL/0TRbdRaQcp2E5Yg5B5gc0ZVip/A67iNG3qbIromcxBMUbuyteQHfPereSAzVEVm4KA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742215575; c=relaxed/simple;
	bh=Ft+aZ5ySIUirvSwhAhioZWV5SYPOFgaw2AiZMBfpVIw=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=YjNPUmXGHBjaL04zx0popNJ9C9ZFQ2WfVBw4xM7mNP/ehKCAv16gZFMHnb9iBdJQ2otJ++e5m1ssQmCr3hrIkPRR0TgnBbInPumlH17xRa+fI35y4KlvZvNsRLzzJXF1VFTJ7pffRcV6QbyVQUxx1/f6O/Wtl4kpiTCkXRkwn4I=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=rtrv1svs; arc=fail smtp.client-ip=40.107.94.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=p1Hyzvf9HHvU8mnKKlSfBsYJXpPieSnxtHkWNVgEs6pYfXeQpc5CoWm9ScUfgqDombaHrsGpbA+N54safO77ZA558qdk0dP17it8XKtIu2yOtW9SzHDoTH0WHpXCpg/oWn3FK1ROgIWB5VGANaR4lw3cT8L0D7pWlnZH4zHMHEzQXYjxaKcvWSKjKwBAhJgTFD0mHDE5lSXF9kPdd38hu+JArJANvFyHpTk0t0CNNd2ZGj+3clYkkry8N+AtC+TYMJ4RCy+iICLzJzkUhpoiTLmG3PQSv5bPIc0Mv3M/9PxuYBT5ZMvKqQgvABHexhvtZ3rECPNdFmRGjj4wVMnf4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ft+aZ5ySIUirvSwhAhioZWV5SYPOFgaw2AiZMBfpVIw=;
 b=XydsTp0DcbK9qBmsTJrgV+8dwWFMbHGj0dyEOiU1R8ImkiKQdBGQa3w5qzx1pvzYPqDfNzHw2G9EIQ/M5hIURZlDXR89tOkT2cx0DLlv4emh2VBkhAxCdJdj4me5Qa1j96JfP2JJZn1Htx0EcsiFw3rUtw6Z2deEhMho8ueEYQm+BgetqPh7VDq+l4Cxpte276XpP9xccx8PeXx2HjcfwyzkwD7+Aau1gu14+S51e2YVKbNqJwSo0+d3xEgvRgh7Ea5Q2DlaRPx/q2F1L/u/W6UE4HRccMR69dzXvfezVTAc+x/6HIz5X3RSwsqSelGrb5G7eqogPBR+kDYjTlYPEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microchip.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ft+aZ5ySIUirvSwhAhioZWV5SYPOFgaw2AiZMBfpVIw=;
 b=rtrv1svs8J1gFsKLx7sz0yMlYwOG2uUP96CIjX5aO4vR8Mrfg9vhU40AuyKJss+vPD8T9LiFAa/mFyR576ytvWt1YiKTrQUfIYv7KniyZHEdixdEelGLbYq89/4AqQq9qPCYCwpT05mcdu391TOfDmHJb7gddQdZztEkDtAIwihWWWISRcnFotZhYL+DDds6rdYeooRJh8L5Q3qbdzaJpQTnMMnw/nfT3AJTtjXG2ruWf3VUEV+mNjqtd0L0rQS6vyf/b+2gGvfsbcooVZpKTfG7nPUum9pNjTwoz2rIhzIrtCHPtAS4Q70Hm52Bpsy9SWFNuBtJkpJLI+end+YEwA==
Received: from DS0PR11MB7264.namprd11.prod.outlook.com (2603:10b6:8:13b::5) by
 SJ0PR11MB8295.namprd11.prod.outlook.com (2603:10b6:a03:479::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.33; Mon, 17 Mar
 2025 12:46:09 +0000
Received: from DS0PR11MB7264.namprd11.prod.outlook.com
 ([fe80::d250:d70b:55aa:5ff7]) by DS0PR11MB7264.namprd11.prod.outlook.com
 ([fe80::d250:d70b:55aa:5ff7%5]) with mapi id 15.20.8534.031; Mon, 17 Mar 2025
 12:46:08 +0000
From: <Nayabbasha.Sayed@microchip.com>
To: <Conor.Dooley@microchip.com>, <miquel.raynal@bootlin.com>,
	<richard@nod.at>, <vigneshr@ti.com>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <Nicolas.Ferre@microchip.com>,
	<alexandre.belloni@bootlin.com>, <claudiu.beznea@tuxon.dev>,
	<devicetree@vger.kernel.org>
CC: <devicetree@vger.kernel.org>
Subject: Re: [PATCH] dt-bindings: mtd: atmel,dataflash: convert txt to yaml
Thread-Topic: [PATCH] dt-bindings: mtd: atmel,dataflash: convert txt to yaml
Thread-Index: AQHbly3GYvsYs+s3gkSJNJZAaifOz7N3L4UAgAAXOgA=
Date: Mon, 17 Mar 2025 12:46:08 +0000
Message-ID: <843a18ab-ef30-4725-b760-3f97f0237073@microchip.com>
References: <20250317-atmel-dataflash-v1-1-b5f13083f67c@microchip.com>
 <df80f224-5363-4639-a675-3a5918ee8be0@microchip.com>
In-Reply-To: <df80f224-5363-4639-a675-3a5918ee8be0@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microchip.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7264:EE_|SJ0PR11MB8295:EE_
x-ms-office365-filtering-correlation-id: a2ce0a65-3532-402e-30b9-08dd6551b0ab
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|1800799024|376014|366016|921020|38070700018;
x-microsoft-antispam-message-info:
 =?utf-8?B?dUFnNG5BZ0lvOUVUTGxNZ2hxZGVUc2NaemwxRU9GbndWR1VtL0k2dWhqRG91?=
 =?utf-8?B?Nko2czNJZ0Nta1ZuNzh4WWl0R25zbHU0bmhGbDJuMTB0c0pIMFlaOGZ5WHNu?=
 =?utf-8?B?a3AvM2xjS3lkdkMvY01BM1NPNG5zMDJDeDYwK3B0VXJVcksxalM4bnZid09E?=
 =?utf-8?B?SmtLQmhBTGdjdmxPeThLVXJ3Vkh5RDBhcHZCc2FUM3hTSWpoR09DR1NFM2Y1?=
 =?utf-8?B?TVp5S3YxU0ZndDVlR3pHUFJ6alJ6Yi9tb215VWN6N2RCcjRiL3FZc2MxSjdE?=
 =?utf-8?B?QmNKZzM1YjF1MEpKU1M4WmphRlRnb0pjM2xwdlRFNElWbmx5ZlpRd1czQWNn?=
 =?utf-8?B?bndkUDVicTcva3ZJVGltc1Y0MzU2Qnk4OTlOdEhCeFp0WlhaS0Yzd0Y5OTNZ?=
 =?utf-8?B?cnNTYlFaaGRySEJUc0lUajltVGZKaWVQbzJmcW1YNWZFd1N4QlFaQk1oWkxF?=
 =?utf-8?B?dWptQmtGOEhFYU5QNVFvMkRjQ3R2S2IyWkxYcUczT0lTTXB1eFNhL0dEa05h?=
 =?utf-8?B?Q3k3YTR4aHc2SHpCUHlmTFU4RXNFeUxydHBzRnI0aVJHVzB6Z0ZSaU9JTkc0?=
 =?utf-8?B?YnJRRUFyL0pENFQvdGQxZm5lNnpWaGRzQWFHbHRIcmlNS1BkYW05a2F1QVdI?=
 =?utf-8?B?cHJkb0ZFNFZXNEx2OTdUQVlzem5VS3dzUkpHYm5LcXdEWjlzN0ZXTXZrbU9U?=
 =?utf-8?B?cDlvKzByYUVPalAwenNrM0hKUTc5UnFVbXhsLzQyRVRFWFhhWjFVZ0NJamFy?=
 =?utf-8?B?bm1zZ1BhOTQyeFlIRisrb09JaEkrQnBUWllvc2diWkxSQ2xvMjN0T1F3UHkr?=
 =?utf-8?B?eUlEN3o1KzYydTZwUThmaE95dUo4Vnl1WmFmOS8vSllDcEROcjlzbXozT2Ix?=
 =?utf-8?B?UVRpVEZ6b3FHWDlrakpxZStqUmJGd3FGMmZXbDdCeWlyZG90SVFFa2JVTkZy?=
 =?utf-8?B?cUNIV29UcmUrN2dhdTJvKzZaZkZkK2RTeEVhUWZIL0hEOE9pNm85eTdVWWd2?=
 =?utf-8?B?TzBoTVJxOElFZ1VLUmpBSURwQlFFeTlTMlJBSmY0bUtzdHR2SnBNTzRzd2d1?=
 =?utf-8?B?clVvMlBkSldzbDQwUktqR1RLY25xT21XUzR5QmlDYXFuTm5EQmVqSHZXSjFF?=
 =?utf-8?B?ZWVTa3pRODJka2FwRTJxbUIwNkJybXFSWmVReHB5OENCK0F2NzZhM0s5SFBZ?=
 =?utf-8?B?OWYzT2tob0hUSmk2eFdOa0Exb3JOT0pJQnUvN05qek15bzZPWVI4ckorOGdC?=
 =?utf-8?B?NTNpRmlpdWlONXJ4MHoyWTI4cW1VUWQxanF1cHZPd3NJWmsxS1dWTGJXNFJC?=
 =?utf-8?B?T2oxNmxYUGthcXpjQkRyVHU4NmsrZEUybWxObURrTEErSU5DWUMvUlpCZ1dt?=
 =?utf-8?B?Sm0xNUZFcmF5eXM3TnBwMXVTcWo1YStFeGw1dXpnMmN2QUJ0bXZRM25hS3dr?=
 =?utf-8?B?VHpCTStTNFJQMTJRb0hEK012anJVWUZrZVhhaTVaRnQxbmxiK2lJYWtxbEFj?=
 =?utf-8?B?VWtibklIYnJVcGVQUnBCVzVaaGZ1S3h5eUhTdnRpTGVianAvSFVxaUhualF6?=
 =?utf-8?B?QjhxOER0TzVMS2laV0lFMVJ4Qkp0TmE3TnZtZzZDRERrVHhHWjAzQUg0VFhV?=
 =?utf-8?B?ODBFb0Fib0hlRXpTSldNMXFIUytRL3krbDJKeGh4TTdmdEpGYkNSZ1VIa0k3?=
 =?utf-8?B?RUJmYURLa3BXWmp2ODRza2U4djRSZ2VkRFJRMkl0bk1XdEFyajJ2OUZlTmpv?=
 =?utf-8?B?ZkpDOEtZeU10eS9YNlJLeGNsVEhpOHV1amxWR3pFM0RJcFozdDIwRmVBL2Ru?=
 =?utf-8?B?SGRXTjloTUxYdmtJL1c5dk5qTVZjbTZZVE9LeXlMU3ZMQ1UzUEQwL012aHgx?=
 =?utf-8?B?MktVZkdQN2FZWWdCckp0dDN0M0o1Q1dNTXJ1eStCN1hLdmR0VTd0cnNvOGcz?=
 =?utf-8?Q?6CK6Dlr6adM=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR11MB7264.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(921020)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?YW0wanBMT1RaSEJGQXJVSDhZUFZOdTE2clRreGJodnJyK0pDandRWkYyRit1?=
 =?utf-8?B?Z0p6a3hNTDJMNUljL2VIYmdHNjh3cDhBbXdzWVNNUkUxTk12cERPUUF0Vllv?=
 =?utf-8?B?VG0wMVVTQTJnYXVUbHE1bUExTjl5TE9NR1hybW9TMXhnQ0lTYU1rSXNpcmN5?=
 =?utf-8?B?ZU5jckRVdjcrZDFEd1JXQnpNczV6SzFLNEdXRnF3dkErNmZqd0dUbFlhQU1x?=
 =?utf-8?B?WXY4elB4TW1JSksyMFVldXVITFgyUXJ3U2tkL21MWEowbFplMHZpbjloeXhm?=
 =?utf-8?B?ZUNnbGwzWk04cjE5bWRtQllUdTloUG83bkV6elJSUkRteXh0MXRnTzBhbXlS?=
 =?utf-8?B?Z2lLWG5FT0Vua29kNHNOb3pFY0k1U2I4ZEN3TGo1VE1KL0JzM3JxdUVaTyto?=
 =?utf-8?B?Sk5XR1JNbmROSjhtUUhRNDRwWEc0S2JURm52SlFTZmFoR2k3UVJ0eWxSaGp1?=
 =?utf-8?B?bmk2YTNqUHRFTmduRE1oUExJRU9FeDlMUVpzWE1BTjIxTy85YmJ0bTh1d2VQ?=
 =?utf-8?B?S0pUdDdPZml3LzQ5M2tjOThQTS9Yak5uZ1VUR3hvS0hrL3lYZXhuK1ZhUlBC?=
 =?utf-8?B?eGlWUUQyK2ZrY3I3MC9XWUVBYXpLQmRmNjltL003eFd6bmRIMmRHVWVTVWp3?=
 =?utf-8?B?WURLNHhzb1I1UlhLMm9teWlPQjkwalNrUHQ4Sjh3bVl0OVE1WlEwcjJUci9u?=
 =?utf-8?B?djhOS3hLR1FYeTV3Yk05YThjVWVFeUR5a0NDTlUrZXljdDZLODZVL0kxR1VS?=
 =?utf-8?B?aFp6SzlsOU9QTTNZNDlvWEFkL1diNzY0STBLQlhzZEF3eFpERlVzN2pYVFNo?=
 =?utf-8?B?Yk1ublBIREh4bGorSnRPQkxtU1ZlT2xzdVpDMDVuYmxoSGgwVk9PSnlUUVhV?=
 =?utf-8?B?LzJyeDhuOXBPcE5ydzQvRUlTUW9FS084UEJUMGgwVVFYcXZPblZDMDNTT0da?=
 =?utf-8?B?RDZmWlBWRWhJWkNsRjF5NGRaMUdrSHB5TUcrTEdmNjU5T3BIQnhlaTVVK1RY?=
 =?utf-8?B?ZnhrZ2lQZmFDR1VWQ3dGNXNmTlVGUko3cklvMkRMK0c2Ny9CUm0rQ3RaejZy?=
 =?utf-8?B?N1N3M3Q5cm9DOFozSEpVUVgzL3FvR3VPSnIzNkhobkVkbnI4NWRwMWNUS2Vs?=
 =?utf-8?B?M092aUtOWFlXTi85Y3RKdERESHpQVTJlMFNORWNEMlBVNGo2SmtQek5Mcmlh?=
 =?utf-8?B?dVhVR21nOUVnYS9FS0VyQnFENHdIQXRRU2lKdzYyRzJjeWhIMmY0TXpCVXB1?=
 =?utf-8?B?aUs2bmkzUERyeFBydEJJbDN4azNPVUJTM0Rjd3k0dGNDQ2phZzRJSFZmUE11?=
 =?utf-8?B?TkxJcElpWHp1U0JwSlBQZG8zaFRYZjd4UkFvczRYUkh4aldWa09kMEpBSU52?=
 =?utf-8?B?ZTg2R2EzMEpVT0xPZkl3ZFNpK2cwZFQ5dGxFbW9aWnpseUsxUVp5TVJuY1dJ?=
 =?utf-8?B?c2wwU2piUGovUVVXSXZJcVBzQkJmU3h4Y1dsNmRVZkJZS0xTRTRpUlRFcnRI?=
 =?utf-8?B?TzZzSUZUbEwxaFoxSlorQU04Y0dKYkhWY3FScDJSaHVGOE9xbStCK3dJRFEv?=
 =?utf-8?B?aFV2YVY0QTh0WmFFMm9iZWo2dlQyMXlFTy8vQUpXSTFrWVNpbTc2d0NoWUhS?=
 =?utf-8?B?M0hLUFZtVEZiMFNhRGpRTkJPaGF4eWJ3R1ZoN2w0eERDYVRTUG40RmlYQXZH?=
 =?utf-8?B?eGk5OExMNFM5cThHWjRjcU45OENJbGlwa3FNK045R05TWlpSYzJQYmR3UVdy?=
 =?utf-8?B?ZytaVUQ3WEVRK2NLaVh1dVJNSmF1TklkQ0tDNE4zcVRwRnZzWVNBbWU5Vldr?=
 =?utf-8?B?bUMxUy94MVcydTRKeDdMZmYrQ2NCeWlrcVlCTW1GNzVTUlJmOVQrZXk0YitE?=
 =?utf-8?B?ZjMraVFMZEFiRkdHS2k1MHdGT09HS3FIRXFYMW9UYTVUbU1XVCt6c3g4RS9N?=
 =?utf-8?B?bzV6QlZkZUdTVVFMZi9iLzB3SjJ5eTV6S2puU2VETCs2TlZJd3BwaUpRNitY?=
 =?utf-8?B?M1MxVzNNeFR0cGJVQkQ4Z0NKLzlqaDF5QW9tSG84cXhSd0ozNGJldXh5eFMw?=
 =?utf-8?B?TEp1bk1LZVFwL0VnYXA2cGpoUXAyREFiVE93VE50YVlvUnoxbUlENmYwSzhx?=
 =?utf-8?B?OWJuSVFhYlptaWRlU2VpYU1GT2VKQmVWaVJnSXgzVzdNckZ5Sk9iaXZ5TlI0?=
 =?utf-8?B?RUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <00FFACD57B48074988381EEB670C7F40@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: microchip.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7264.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a2ce0a65-3532-402e-30b9-08dd6551b0ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2025 12:46:08.6704
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YUwusYSX8zH/rIL/0w44sJ9GQOkAFRNB4OzdWWE8I2VXxAu+pPGBjGBLOifcyRxLJ6Nl907+7DYre2CoIE4EKv+xOq8XJCKUflgawJYUQ5o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB8295

QWRkaW5nIGR0IG1haWxpbmcgbGlzdCBpbiBDYy4NCg0KVGhhbmtzLA0KTmF5YWINCg0KT24gMTcv
MDMvMjUgMTY6NTMsIENvbm9yIERvb2xleSAtIE01MjY5MSB3cm90ZToNCj4gT24gMTcvMDMvMjAy
NSAxMToxNCwgTmF5YWIgU2F5ZWQgdmlhIEI0IFJlbGF5IHdyb3RlOg0KPj4gRVhURVJOQUwgRU1B
SUw6IERvIG5vdCBjbGljayBsaW5rcyBvciBvcGVuIGF0dGFjaG1lbnRzIHVubGVzcyB5b3Uga25v
dyB0aGUgY29udGVudCBpcyBzYWZlDQo+Pg0KPj4gRnJvbTogTmF5YWIgU2F5ZWQgPG5heWFiYmFz
aGEuc2F5ZWRAbWljcm9jaGlwLmNvbT4NCj4+DQo+PiBDb252ZXJ0IGF0bWVsLWRhdGFmbGFzaC50
eHQgaW50byBhdG1lbCxkYXRhZmxhc2gueWFtbA0KPj4NCj4+IFNpZ25lZC1vZmYtYnk6IE5heWFi
IFNheWVkIDxuYXlhYmJhc2hhLnNheWVkQG1pY3JvY2hpcC5jb20+DQo+IFBsZWFzZSBDQyB0aGUg
ZHQgbGlzdCBvbiBiaW5kaW5nIHBhY2hlcy4NCj4gQ2hlZXJzLA0KPiBDb25vci4NCj4NCj4+IC0t
LQ0KPj4gICAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbXRkL2F0bWVsLGRhdGFmbGFzaC55YW1s
ICAgfCA1NSArKysrKysrKysrKysrKysrKysrKysrDQo+PiAgICAuLi4vZGV2aWNldHJlZS9iaW5k
aW5ncy9tdGQvYXRtZWwtZGF0YWZsYXNoLnR4dCAgICB8IDE3IC0tLS0tLS0NCj4+ICAgIDIgZmls
ZXMgY2hhbmdlZCwgNTUgaW5zZXJ0aW9ucygrKSwgMTcgZGVsZXRpb25zKC0pDQo+Pg0KPj4gZGlm
ZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tdGQvYXRtZWwsZGF0
YWZsYXNoLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbXRkL2F0bWVs
LGRhdGFmbGFzaC55YW1sDQo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPj4gaW5kZXggMDAwMDAw
MDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMC4uOGM3MmZhMzQ2ZTM2MzEyODRkMjIy
ODM3YTYyMWZlZDQ3MTAzYzg4OQ0KPj4gLS0tIC9kZXYvbnVsbA0KPj4gKysrIGIvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL210ZC9hdG1lbCxkYXRhZmxhc2gueWFtbA0KPj4gQEAg
LTAsMCArMSw1NSBAQA0KPj4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wLW9u
bHkgT1IgQlNELTItQ2xhdXNlKQ0KPj4gKyVZQU1MIDEuMg0KPj4gKy0tLQ0KPj4gKyRpZDogaHR0
cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvbXRkL2F0bWVsLGRhdGFmbGFzaC55YW1sIw0KPj4g
KyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIw0K
Pj4gKw0KPj4gK3RpdGxlOiBBdG1lbCBEYXRhRmxhc2gNCj4+ICsNCj4+ICttYWludGFpbmVyczoN
Cj4+ICsgIC0gTmF5YWIgU2F5ZWQgPG5heWFiYmFzaGEuc2F5ZWRAbWljcm9jaGlwLmNvbT4NCj4+
ICsNCj4+ICtkZXNjcmlwdGlvbjoNCj4+ICsgIFRoZSBBdG1lbCBEYXRhRmxhc2ggaXMgYSBsb3cg
cGluLWNvdW50IHNlcmlhbCBpbnRlcmZhY2Ugc2VxdWVudGlhbCBhY2Nlc3MNCj4+ICsgIEZsYXNo
IG1lbW9yeSwgY29tcGF0aWJsZSB3aXRoIFNQSSBzdGFuZGFyZC4gVGhlIGRldmljZSB0cmVlIG1h
eSBvcHRpb25hbGx5DQo+PiArICBjb250YWluIHN1Yi1ub2RlcyBkZXNjcmliaW5nIHBhcnRpdGlv
bnMgb2YgdGhlIGFkZHJlc3Mgc3BhY2UuDQo+PiArDQo+PiArcHJvcGVydGllczoNCj4+ICsgIGNv
bXBhdGlibGU6DQo+PiArICAgIG9uZU9mOg0KPj4gKyAgICAgIC0gaXRlbXM6DQo+PiArICAgICAg
ICAgIC0gZW51bToNCj4+ICsgICAgICAgICAgICAgIC0gYXRtZWwsYXQ0NWRiMzIxZA0KPj4gKyAg
ICAgICAgICAgICAgLSBhdG1lbCxhdDQ1ZGIwNDFlDQo+PiArICAgICAgICAgICAgICAtIGF0bWVs
LGF0NDVkYjY0MmQNCj4+ICsgICAgICAgICAgICAgIC0gYXRtZWwsYXQ0NWRiMDIxZA0KPj4gKyAg
ICAgICAgICAtIGNvbnN0OiBhdG1lbCxhdDQ1DQo+PiArICAgICAgICAgIC0gY29uc3Q6IGF0bWVs
LGRhdGFmbGFzaA0KPj4gKyAgICAgIC0gaXRlbXM6DQo+PiArICAgICAgICAgIC0gY29uc3Q6IGF0
bWVsLGF0NDUNCj4+ICsgICAgICAgICAgLSBjb25zdDogYXRtZWwsZGF0YWZsYXNoDQo+PiArDQo+
PiArICByZWc6DQo+PiArICAgIG1heEl0ZW1zOiAxDQo+PiArDQo+PiArcmVxdWlyZWQ6DQo+PiAr
ICAtIGNvbXBhdGlibGUNCj4+ICsgIC0gcmVnDQo+PiArDQo+PiArYWxsT2Y6DQo+PiArICAtICRy
ZWY6IG10ZC55YW1sIw0KPj4gKyAgLSAkcmVmOiAvc2NoZW1hcy9zcGkvc3BpLXBlcmlwaGVyYWwt
cHJvcHMueWFtbCMNCj4+ICsNCj4+ICt1bmV2YWx1YXRlZFByb3BlcnRpZXM6IGZhbHNlDQo+PiAr
DQo+PiArZXhhbXBsZXM6DQo+PiArICAtIHwNCj4+ICsgICAgc3BpIHsNCj4+ICsgICAgICAgICNh
ZGRyZXNzLWNlbGxzID0gPDE+Ow0KPj4gKyAgICAgICAgI3NpemUtY2VsbHMgPSA8MD47DQo+PiAr
DQo+PiArICAgICAgICBmbGFzaEAxIHsNCj4+ICsgICAgICAgICAgICBjb21wYXRpYmxlID0gImF0
bWVsLGF0NDVkYjMyMWQiLCAiYXRtZWwsYXQ0NSIsICJhdG1lbCxkYXRhZmxhc2giOw0KPj4gKyAg
ICAgICAgICAgIHJlZyA9IDwxPjsNCj4+ICsgICAgICAgIH07DQo+PiArICAgIH07DQo+PiBkaWZm
IC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL210ZC9hdG1lbC1kYXRh
Zmxhc2gudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL210ZC9hdG1lbC1k
YXRhZmxhc2gudHh0DQo+PiBkZWxldGVkIGZpbGUgbW9kZSAxMDA2NDQNCj4+IGluZGV4IDE4ODlh
NGRiNWI3YzQ3ZWQxZjQ5MDhkYzc4NWEyYzg3YWJmZjljNTcuLjAwMDAwMDAwMDAwMDAwMDAwMDAw
MDAwMDAwMDAwMDAwMDAwMDAwMDANCj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9tdGQvYXRtZWwtZGF0YWZsYXNoLnR4dA0KPj4gKysrIC9kZXYvbnVsbA0KPj4gQEAg
LTEsMTcgKzAsMCBAQA0KPj4gLSogQXRtZWwgRGF0YSBGbGFzaA0KPj4gLQ0KPj4gLVJlcXVpcmVk
IHByb3BlcnRpZXM6DQo+PiAtLSBjb21wYXRpYmxlIDogImF0bWVsLDxtb2RlbD4iLCAiYXRtZWws
PHNlcmllcz4iLCAiYXRtZWwsZGF0YWZsYXNoIi4NCj4+IC0NCj4+IC1UaGUgZGV2aWNlIHRyZWUg
bWF5IG9wdGlvbmFsbHkgY29udGFpbiBzdWItbm9kZXMgZGVzY3JpYmluZyBwYXJ0aXRpb25zIG9m
IHRoZQ0KPj4gLWFkZHJlc3Mgc3BhY2UuIFNlZSBwYXJ0aXRpb24udHh0IGZvciBtb3JlIGRldGFp
bC4NCj4+IC0NCj4+IC1FeGFtcGxlOg0KPj4gLQ0KPj4gLWZsYXNoQDEgew0KPj4gLSAgICAgICAj
YWRkcmVzcy1jZWxscyA9IDwxPjsNCj4+IC0gICAgICAgI3NpemUtY2VsbHMgPSA8MT47DQo+PiAt
ICAgICAgIGNvbXBhdGlibGUgPSAiYXRtZWwsYXQ0NWRiMzIxZCIsICJhdG1lbCxhdDQ1IiwgImF0
bWVsLGRhdGFmbGFzaCI7DQo+PiAtICAgICAgIHNwaS1tYXgtZnJlcXVlbmN5ID0gPDI1MDAwMDAw
PjsNCj4+IC0gICAgICAgcmVnID0gPDE+Ow0KPj4gLX07DQo+Pg0KPj4gLS0tDQo+PiBiYXNlLWNv
bW1pdDogNDcwMWYzM2ExMDcwMmQ1ZmM1NzdjMzI0MzRlYjYyYWRkZTBhMWFlMQ0KPj4gY2hhbmdl
LWlkOiAyMDI1MDMxNy1hdG1lbC1kYXRhZmxhc2gtNDA1ZTk0ZWQ4ZjZmDQo+Pg0KPj4gQmVzdCBy
ZWdhcmRzLA0KPj4gLS0NCj4+IE5heWFiIFNheWVkIDxuYXlhYmJhc2hhLnNheWVkQG1pY3JvY2hp
cC5jb20+DQo+Pg0KPj4NCg0K

