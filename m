Return-Path: <devicetree+bounces-193036-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5650DAF8F75
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 12:08:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D70593AF0FE
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 10:07:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFFA32DCF52;
	Fri,  4 Jul 2025 10:08:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=epam.com header.i=@epam.com header.b="RmTImIES"
X-Original-To: devicetree@vger.kernel.org
Received: from AS8PR04CU009.outbound.protection.outlook.com (mail-westeuropeazon11011064.outbound.protection.outlook.com [52.101.70.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD8425228C
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 10:08:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.70.64
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751623683; cv=fail; b=uJlauWawRIrxDykYEdV/uxfGpaMHIuAdS2OXu3MyLyc+VBcNAajSU9BzJFoF/xvzkGwXss+g+dBHrIJqCNy4WktJBek0EolO5qplKpkmFlhHKIi5+2/Sw4KcPERqP+yiKndLBTN1Y2feePoRkPzacJ/pBOH6mK1ehOF0u2vTnG0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751623683; c=relaxed/simple;
	bh=+8aRnAVmEXgcoWflvim2KNVYGfZlOETx+oOPIwqcKIw=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=OV3pn2/7nEvWVzeN1gHV28EYF4p7zn2GWTPzK4P3cGYfpB0iRJgRibxxbFYuzz6RhvLwxJyqizxtI1gbHjhCJYWVjKiDDbCc556YhUgP7jUBlqzkPUH8NldO5T7xiQK23TZsyPeOK63kzjhE48p4Q5yAZ+8fmTgn5U33JDVrjNk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=epam.com; spf=pass smtp.mailfrom=epam.com; dkim=pass (2048-bit key) header.d=epam.com header.i=@epam.com header.b=RmTImIES; arc=fail smtp.client-ip=52.101.70.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=epam.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=epam.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CSzGIMIbDvAPWKZtuMPA/rBVB5Ya2EzLb21nHyLz3dP2n5uOo4Bfd3+QEYM6AyOcce2LMMn4JQXg+LoAgCZ3GE9Qr4Gb232J1Dw/D9xll427AjJqNqm/WqHtQu2i2iLzh5EVqwLji0KzDxTs65WDC9lbk63Whqq85LCkNsNX12lmQg7ZikpsLYa9ciViXKx7o40yoZJIEcCvG+sketNRlLHtbJV8Y4Ul1WceR9sdPzU81Asnnvn5RY4B5bf805uuaui/KDlilNg7hjDHRBg1pBt7D1vfZ/yRfAN6ygIaa9Y6xlAzbzo2l80MQs7lvhQODMA0XRumemyJo9a2M14g1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+8aRnAVmEXgcoWflvim2KNVYGfZlOETx+oOPIwqcKIw=;
 b=qAasuzM7HGyZ+YV8+Wklio03ov1t8LGYDWcGF6cEuBOsoaNN2F6WE1JwjcGG5G/tFbPR+dL/vLbusyla3EPM+VaDsOm406D4ezmN5pItpjHQpMrims64jjZc7TuvSTFZ60/5hW4Xu4BeYqF64c2hzdONvGlekYtbxxlxQIUEZWsj3FtO5qfa1uqxVYB+7vLI/EC9vJSAhIvLPDGDocJqxV1W6hjBr6oe3BcKacn43RwY9zFcUQ5hmJP3FOg22GAu63p4tBprNSwllMtBX/RgawHr+W3V0/RZAwWT78IdAMMXoJYMjhFwSJogIFVCBd63NaBod9MeYsrN/lFqPoYXnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=epam.com; dmarc=pass action=none header.from=epam.com;
 dkim=pass header.d=epam.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=epam.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+8aRnAVmEXgcoWflvim2KNVYGfZlOETx+oOPIwqcKIw=;
 b=RmTImIESWWC4w+6KAQ+fGz1ug2Qyj+eEff1c2EOgPj4kR/8zxfinTKmhtJY9Cw9V1AR+PRzy1tTnFHJdbhVbCyIRidAPGndvSk3IoLC6NrmxC57PMnp4C8NfyAAUaN/QEN0rCJYYN6JvWV6Pv6UwFk5/DKgqw2d+yKb7pa1VaGkitUcAjOuEr/gUkcEcOBRbsZQ9c7JsHuXLINiaO0vVpl2chXQBSoVt7gvYZYBMRfA50nBWiRlhDlow5uqoC+RwXZR6aYh54/eDE/TUZqzt2LNYTkw4iLgEHnhdi/hgAe3GOmvOSJh9M0yjNhArEfhTGhBZLMwQE+YnLeSZsYTFZw==
Received: from PAVPR03MB8946.eurprd03.prod.outlook.com (2603:10a6:102:32e::21)
 by AS2PR03MB9169.eurprd03.prod.outlook.com (2603:10a6:20b:5fd::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.20; Fri, 4 Jul
 2025 10:07:59 +0000
Received: from PAVPR03MB8946.eurprd03.prod.outlook.com
 ([fe80::f12d:7394:bbe3:dfc]) by PAVPR03MB8946.eurprd03.prod.outlook.com
 ([fe80::f12d:7394:bbe3:dfc%4]) with mapi id 15.20.8901.021; Fri, 4 Jul 2025
 10:07:58 +0000
From: Oleksii Moisieiev <Oleksii_Moisieiev@epam.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>
CC: Gatien Chevallier <gatien.chevallier@foss.st.com>, Rob Herring
	<robh@kernel.org>, "kernel@pengutronix.de" <kernel@pengutronix.de>, Laurentiu
 Mihalcea <laurentiumihalcea111@gmail.com>, Krzysztof Kozlowski
	<krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Subject: Re: Access controllers: differentiate between access checks and
 grants?
Thread-Topic: Access controllers: differentiate between access checks and
 grants?
Thread-Index: AQHb7MNJRUKqA7yArkmGhrVnmX4ynrQhvX8A
Date: Fri, 4 Jul 2025 10:07:58 +0000
Message-ID: <08bbbcaa-4a23-471b-bffb-39f71dc5160e@epam.com>
References: <a89f387d-bf81-459e-979e-d97afe25dea3@pengutronix.de>
In-Reply-To: <a89f387d-bf81-459e-979e-d97afe25dea3@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=epam.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAVPR03MB8946:EE_|AS2PR03MB9169:EE_
x-ms-office365-filtering-correlation-id: 185bd4ca-e91c-49c6-1ee8-08ddbae2a6f7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|376014|1800799024|366016|7053199007|38070700018;
x-microsoft-antispam-message-info:
 =?utf-8?B?Z0xaeEM3YzZUb2tFbmVvR0ppNWQ1RnZxRncyUEdtb1VUNitzK0o3OVY4U3RO?=
 =?utf-8?B?REdKZUxnSFVDREF4QUlrcHVuVU1PNDFuVGdDMk9JWHJqaWJTQVpESzhZQUpC?=
 =?utf-8?B?UW8vajFwZXNaT1VKZXV1WWdlbjFrdWZuNExBNU5tdDZScmYvcTQvMlIrdEpj?=
 =?utf-8?B?SlBPQ0JvSlFBSGY1SEtKSXU4RnpNTmgzN05jSlh3R1hwRXJkVVBCN21WL05k?=
 =?utf-8?B?a2w0V1dudVVrUVhXZmEwOXhvWDFMMGF3elhoZlFLcnJYNWxKREhHdXR0U0xv?=
 =?utf-8?B?ZDRkaUorcjgrVUJXOEVvdWZTeVZjVElWT2pzckJVaDFDcXU5T0laOEl6S1Nh?=
 =?utf-8?B?VG1uL3gvMk14a0ErYWs5QWQ0aWE4R3VzWFMvKy9hTytvalZYSWNKUitlRk1B?=
 =?utf-8?B?aTF1REpQbGgzNnc2d3YwcHkrNEZ1Q2V0TTd2UmpzcHpnVmVnTThaazI0eHhG?=
 =?utf-8?B?Q0RNSm1YZVNKNW1wN0x5R2V1T3oyU2MyZUFIbXkwb0d2VUdUWlltZkVFZTZG?=
 =?utf-8?B?ZG1jd1UyN2x5VjNkdkluQy9vd1JLNDhVN0pOZFBlTnloQnd0Wml5V3lLb3lP?=
 =?utf-8?B?SzJadUJ2Ull6N2tlN1owL0Z5L21saFRDYWFrN3Y0dkNaRDhrSkg1anZKTDY3?=
 =?utf-8?B?c29uTmFOeVM3ODVqWWhtanNmSkN6b2tlSnEyYXBSN3hNdGFCL2xrSWJKMHlL?=
 =?utf-8?B?a1A1dEVCS1JxUmRkZmVtcVFUeWVyMS9RdW5hcjkzaTcrRTA1OU80ZlRDRlV1?=
 =?utf-8?B?TUZXYnBCNmlwZGl4Z05PSmM2Q2xlSDBFQnVrQy93S2NlRzdpVDV1OG5GbGRQ?=
 =?utf-8?B?azgxN0FhalNRMlBOUTNMOS8wdG9HYWVUMlNYSmZIVGE2N2FSckFyaFp5S3o2?=
 =?utf-8?B?UERwbm85M1VlOUh5ckxxd2l6TFVTRU10cFdzT0U3QXNVdS81TGx1aGFtb2RL?=
 =?utf-8?B?S1BVMEsvQzZIRzN4M2FZRmE1ZFR4cjM3SFc4QzZrNkd5WUg2SEhYMk1ZVWJa?=
 =?utf-8?B?SkRXdDcxeXpIWFJjbmRqR0VlcVJpck9NVGhNd3lHNFhkeTBEdVJOZzFTeXpj?=
 =?utf-8?B?NThKODlsQVE5SnRDZUR2UjMzZ0ZwaGFQbTZ5UTZXYVpCTFE2STlTcVR6aDJi?=
 =?utf-8?B?amsxM3VhQllBdVhZZG9xbVhoczJaRTVjSDYwWTAycE5sOVFINnpwd0dqT1VO?=
 =?utf-8?B?aXd4aTlvcnd1bkJiRnJETitDL2hsOWJLMEdiRiswSGRHNzBGSmZJbWJUbFRV?=
 =?utf-8?B?UytvRFdGaFRiOWlIeTBhSkdoZXk4MVIrOTVsaThIMUNQL01TVFdLNFZVb1hl?=
 =?utf-8?B?VUwxd2NSTFNTd2M5UjdFcFlTcEZ5NGcxRVVZcmRiQnpiU2t5cHd4d1VoUU1u?=
 =?utf-8?B?RUZjTWxKaHk1VDVZNGpkanMvY3dSZWhyM0xNcHJTRTVYRHZDeU9yR2VvN2dP?=
 =?utf-8?B?SUVrUDBndndBMHZvdlBUaDQ1cjFkL3lpTFkyOHprdjdMbXg2U2JtWklWa1Fw?=
 =?utf-8?B?dVVlcUlZZUxWL3ExMC9EdjRyNTI2ZUw0VWlRemNWNmpidldkUTFLbzFtNlY2?=
 =?utf-8?B?QXpCaW10MUJGb2J6SW43SUx5TlFaUmc4S1g1QnNVbkZqNU5rQmhmNkU1TTVL?=
 =?utf-8?B?bVRaVmxqUmU0TGhGK2VZcTNJL0QxeU1nY0FPcTZKTUVlZHhNUnA0UW42TlM5?=
 =?utf-8?B?bGpRTW9hczRRQXZXWkVjQ2l5M28zTVhHV2tmWFNvcHJKNWxxU0VtM3Y3UTY5?=
 =?utf-8?B?YUZyL1UzSHRtTzJ1Z2lxOTYzdkpaa0F0aWdtdFVoOVVQM0xtM3kwblJuZ2xn?=
 =?utf-8?B?Tlc3WEtlMjZoYnY1a3pXSTIzdjB5TXlSelJoNm81UjEzb25oQ29mLzQzemJi?=
 =?utf-8?B?bzE1ZitDNnlkbGYrdCszbFprQVRocEd2eFoveWVPcXdVTk8wWXRRUlN2OG04?=
 =?utf-8?Q?RVSP9hx2n8M=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAVPR03MB8946.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?b3NVb21VM0NESlV6M3BmWi9EWkxYVnRoUVJMQnhrMkZYRHJIMit2MWNXOFFq?=
 =?utf-8?B?MFBUWXorYVhiZ2M0MHk1dzAxLzBmTXB3TE1CcHYrSDhzVC9na2lLallCcnAz?=
 =?utf-8?B?dWxLSnVRaWxURjBwVTFTNDQySXBRNFNmU2VrdWQwSnAzeUtsUEdhL0lDaUhz?=
 =?utf-8?B?dVlzckR5MVBPWlBNd0RWZUdQRjhGTld3OG5LajlLQUdjTU9KdGJNcUJaL2hS?=
 =?utf-8?B?cFMxcFR5SmVoZWpUalptRTRUTzVUeHVtR1E0WGRlNjBheEpyNnZaY1pGdGRM?=
 =?utf-8?B?SWxsWktIRHBONm0vV2srZytVeDdHajJ5TzJNMWV4cmIwOXFDWkt5RzZudW9H?=
 =?utf-8?B?OHJZSW14SXZRQko5MGUzaVlBYW1iMEEzZHJZUlVhdmFXT0xNbkVQcGY3Zmtl?=
 =?utf-8?B?eE5kbDI4NlVYNExkVjV4VTJ2ZjhoaWE3WEpKODFzY0Y2WlBVUG4zSzY3OXRl?=
 =?utf-8?B?UUpWMDhNbTdYcEx0RlpacWNyN05jQ0xhTEZhZEpXa2NodGNpVFJ2M3FsZTZk?=
 =?utf-8?B?bTNjTVdoN2IvSEpLSmpsd1dUcjI0YTlja091UWQyVEhJS3pTcGdjMERVcWNx?=
 =?utf-8?B?S2ZBc0NmWjhDQkp6aE56cDNBVGkxMXFNbkgzaEtxTE1SdkVOS3JtNzhyQ3RG?=
 =?utf-8?B?Q3pobk55OHJoWWNkY0phd1RRdnJWb1VUK2FibHo3aGZLa0hENzQzeS9rYjh5?=
 =?utf-8?B?anYzcE94RnBpbk1OK0Job2MvNWVPdlJMTmJFN1VxcVpNQk1yUDkyUHBwRDNo?=
 =?utf-8?B?NTA0VmxyMWtwaWVscFVodjVwOHg1VUhxcHk4bmI1R1ZXYXArMEtmVWplR2Rl?=
 =?utf-8?B?eXdJYXBzMTVLeWs3Q3pVMHYyQTZkKzZpME5QaG53cFFobHJNTmU5MWtxNHd3?=
 =?utf-8?B?eUZGRHp0Q25maldnN3R4emVvYXVkOS81QXl6T3VqNWhPVVhKRjVqU1QrZkYr?=
 =?utf-8?B?QndDQ2VLQjZjRm55M0pEcEZNbklBSldnenpqdUk1cnErV1Ztanh0cnJkbmxL?=
 =?utf-8?B?dWRLVXFXZXRmRVlQTG9zL2VBME1WNi9kOFJ2a2ZZMDFMaFE1ZTc3NGpnME1G?=
 =?utf-8?B?UmRna0lLVFA4TzVsaWp6TFEyVStBYlcyL2NTLzZQNnJINmpJUWRMUnpFcm1L?=
 =?utf-8?B?eFhoN0JCRTdzcDZ2QkJpSFhzeUM2V2xkNTJWU0xHZXQxZG1nOERDOXRTM2hE?=
 =?utf-8?B?dWpzK1hLd2R2ckFVTVAzS3hoRGJvbkZObEtlMllGWWxoYzhWUzVQZGxEdUxH?=
 =?utf-8?B?bFVvN2lvMDIweW03dlJpcllOZnlvWEVNVFNBMVBlVUtZZFdYYnd3d2xEb3hq?=
 =?utf-8?B?OTFmQU5QanBpY29hdWY5eENnUnY5UEkvdkdPaWFYSEI0aVZ3cmlFZVR2MHJ0?=
 =?utf-8?B?MzMveFdEL3NwRW16M2Zldy82RHpnWkxzVXBJTGpaOTRKdEoxelZ1bERsbmxs?=
 =?utf-8?B?UmVZZThnMEVTOUdRV0wxc3hhQnhnV2VVNXdqcnBUZXdjRGg5a3JBVkhSOUZC?=
 =?utf-8?B?eFB3VHFtMWhaY0N4VHZzWDNzQjVsVmJua2hEalRlblp1QTgvWnM1dFhEaVB5?=
 =?utf-8?B?SGpkdlRiNS9KMm5MWkwzenFMVWFSRURmWHkrUXg2UXN3Y1M3TGJmNktBMDR6?=
 =?utf-8?B?QlJEQ242eXNzOENiTnVOREozYWdLbmJsV3d5SHZzVmwvWW5GQU5BWTBybGdQ?=
 =?utf-8?B?TkNWQUkzWFkyL3FGYmR1dWtaZ3dQK003T05CNFhzOTBraGhFaTdodE1tbUFJ?=
 =?utf-8?B?ZXUzdndtK2hyamRnQ1ZjbjdEZDR2WkpjZkoyaEtQZldGNXZCd0hlQ0RFUG5Y?=
 =?utf-8?B?WVVLNldjTnVlc0RYRWNpU3NCUDBnd1VpTmp1WnkvaG5Rd0xCRGhVTk9pR0JY?=
 =?utf-8?B?dXMzOXFlN282b1ZSREU0NU5wdWN4a05MWHEvWWJIOCs4NmdHVGhqSkxwWnBN?=
 =?utf-8?B?aFNRemVyZm5uODFqdVBDNWpodFcyb2RDUUhlSWVoNFVxUFZEakdRd0ZMQnYx?=
 =?utf-8?B?bHkwV1hRYklLN2E2UUVyTi9abnZQYmdTQUVMNXZhMjZmZG1wRlpVZWhSWDZB?=
 =?utf-8?B?MkJRRzVqbjRrRWxUcW14NDNWSGE0d3oyZFh3Sy9NZEJEbkJwZG1EK3VJUEhP?=
 =?utf-8?B?WVBScDZVd0FsMlVOcXdoQk1scFFHa1J2RUFjTm55ci9nbGx3YU1PN2RWT1hR?=
 =?utf-8?B?QVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0656114FC3EB3B46AA23B13DBEDEB7D4@eurprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: epam.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAVPR03MB8946.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 185bd4ca-e91c-49c6-1ee8-08ddbae2a6f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2025 10:07:58.2991
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b41b72d0-4e9f-4c26-8a69-f949f367c91d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rgATTNkW6+bolBgu4waNKtnl+WWEuj5txVBD3sywe9fcrWZfEgrP88p1khm6RQhjoy/M6AvjhFCecn8w8f9kIeHjieQDSPCrxBP4+EZlkSg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR03MB9169

SGkgQWhtYWQsDQoNCk9uIDA0LzA3LzIwMjUgMTI6MDgsIEFobWFkIEZhdG91bSB3cm90ZToNCj4g
W1lvdSBkb24ndCBvZnRlbiBnZXQgZW1haWwgZnJvbSBhLmZhdG91bUBwZW5ndXRyb25peC5kZS4g
TGVhcm4gd2h5IHRoaXMgaXMgaW1wb3J0YW50IGF0IGh0dHBzOi8vYWthLm1zL0xlYXJuQWJvdXRT
ZW5kZXJJZGVudGlmaWNhdGlvbiBdDQo+DQo+IEhpLA0KPg0KPiBRdW90aW5nIGFjY2Vzcy1jb250
cm9sbGVycy55YW1sOg0KPg0KPiAgICBBY2Nlc3MgY29udHJvbGxlcnMgYXJlIHR5cGljYWxseSB1
c2VkIHRvIHNldC9yZWFkIHRoZSBwZXJtaXNzaW9ucyBvZiBhDQo+ICAgIGhhcmR3YXJlIGJsb2Nr
IGFuZCBncmFudCBhY2Nlc3MgdG8gaXQuDQo+DQo+IEkgYW0gYWZyYWlkIHRoYXQgaGF2aW5nIHRo
ZSBleGFjdCBzYW1lIGJpbmRpbmcgZm9yIGJvdGggZ3JhbnRpbmcgYW5kDQo+IGNoZWNraW5nIGFj
Y2Vzc2VzIGNvbXBsaWNhdGVzIG1hdHRlcnM6DQo+DQo+ICAgIDEpIEhhcmRlciB0byByZWFzb24g
YWJvdXQgZGV2aWNlIHRyZWVzOiBEb2VzIHRoaXMgcHJvcGVydHkgYWN0dWFsbHkNCj4gICAgICAg
bW9kaWZ5IGhhcmR3YXJlIHN0YXRlIG9yIG5vdD8NCiBGcm9tIG15IHN0YW5kcG9pbnQgZHJpdmVy
IHNob3VsZCBkZWNpZGUgdGhpcy4gVGhlIG1haW4gcHVycG9zZSBvZiB0aGUNCmRldmljZS10cmVl
IGlzIHRvIHByb3ZpZGUgaW5mb3JtYXRpb24sIG5vdCBydW50aW1lIGRhdGEuDQo+ICAgIDIpIE1v
cmUgZGlmZmljdWx0IG1pZ3JhdGlvbjogSWYgYWNjZXNzIGdyYW50aW5nIGlzIGFkZGVkIGluaXRp
YWxseSB0bw0KPiAgICAgICBMaW51eCwgYnV0IGxhdGVyIG1vdmVkIGludG8gdGhlIHNlY3VyZSB3
b3JsZC4gSG93IHRvIHJlZmxlY3QgaW4NCj4gICAgICAgdGhlIERUIHRoYXQgdGhlIGFjY2VzcyBj
b250cm9sbGVyIGhhcyBiZWNvbWUgcmVhZC1vbmx5IGFuZCB0aGF0IHRoZQ0KPiAgICAgICBkcml2
ZXIgc2hvdWxkIG5vdCBhdHRlbXB0IHdyaXRlcz8NClRoaXMgc291bmRzIHRvIG1lIG1vcmUgYXMg
cnVudGltZSBjb25maWd1cmF0aW9uLiBJIG1lYW4gdGhhdCBpbiB0aGlzDQpjYXNlIHdlIHNob3Vs
ZCBoYW5kbGUgMiBkZXZpY2UtdHJlZXM6DQotIGNvbmZpZ3VyYXRpb24gd2hlcmUgSFcgZGlkbid0
IG1pZ3JhdGUgdG8gdGhlIFNlY3VyZSBXb3JsZA0KLSBjb25maWd1cmF0aW9uIHdoZXJlIHJlYWQt
b25seSBhY2Nlc3MgaXMgbmVlZGVkLg0KPiBNeSBzdWdnZXN0aW9uIHdvdWxkIGJlIGFkZGluZyBh
biBgYWNjZXNzLWNoZWNrcy1vbmx5O2Agb3Igc2ltaWxhcg0KPiBwcm9wZXJ0eSBmb3IgYWNjZXNz
IGNvbnRyb2xsZXJzIHRoYXQgYXJlIHJlYWQtb25seS4NCj4NCj4gQnkgc2V0dGluZyB0aGlzIHBy
b3BlcnR5IGZvciBzaW1wbGUgZGV2aWNlcyBsaWtlIGVmdXNlcyB3aXRoIGZlYXR1cmUNCj4gZ2F0
ZXMsIHdlIGFkZHJlc3MgMSkgYWJvdmUuDQo+DQo+IDIpIGlzIGFkZHJlc3NlZCBieSBhZGRpbmcg
dGhpcyBwcm9wZXJ0eSB0byBMaW51eCBkZXZpY2UgdHJlZSAoZS5nLiB2aWENCj4gYm9vdGxvYWRl
ciBmaXh1cCkgd2hlbiBzZWN1cmUgZmlybXdhcmUgc3RhcnRzIHRvIGhhbmRsZSBhIGJ1cyBjb250
cm9sbGVyDQo+IGl0c2VsZi4NCj4NCj4gQW4gZXhhbXBsZSB3aGVyZSAyKSB3b3VsZCBiZSByZWxl
dmFudCBpcyB0aGUgcmVjZW50IGFkZGl0aW9uIHRvDQo+IGxpbnV4LW5leHQgb2YgdGhlIEFJUFNU
WlsxXSBicmlkZ2UgZm9yIGkuTVg4TVAuIFRoZSBwb3dlci1vbiByZXNldA0KPiBkZWZhdWx0cyBm
b3IgdGhlIGJyaWRnZSBwcmVjbHVkZSB0aGUgRFNQIGZyb20gYWNjZXNzaW5nIHBlcmlwaGVyYWxz
IGluDQo+IHRoZSBicmlkZ2UgYW5kIHRoZXkgYXJlIGxvc3Qgd2hlbiBzaHV0dGluZyBkb3duIHRo
ZSByZWxldmFudCBwb3dlcg0KPiBkb21haW4sIHNvIHRoZSBkcml2ZXIgdGFrZXMgY2FyZSB0byBh
cHBseSBhIHBlcm1pc3NpdmUgYWNjZXNzIGxpc3Qgb24NCj4gcHJvYmUgYW5kIHJlc3VtZS4NCj4N
Cj4gSWYgd2Ugd2VyZSB0byBtb3ZlIHRoaXMgc2VjdXJpdHkgc2V0dGluZyBpbnRvIHRoZSBzZWN1
cmUgd29ybGQgZm9yDQo+IGFjdHVhbCBzZWN1cml0eSBiZW5lZml0IGFuZCBtYWRlIHRoZSBjb250
cm9sbGVyIHJlYWQtb25seSBmb3Igbm9ybWFsDQo+IHdvcmxkLCB3ZSB3aWxsIG5lZWQgYSB3YXkg
dG8gdGVsbCB0aGUgTGludXggZHJpdmVyIHRvIGF2b2lkIHdyaXRpbmcgdG8NCj4gdGhlIHBlcmlw
aGVyYWwuDQo+DQo+IGFjY2Vzcy1jaGVja3Mtb25seSBjb3VsZCBiZSB0aGF0IHdheS4NCj4NCkkn
dmUgdGFrZW4gdGhpcyBleGFtcGxlIGZyb20gWzFdOg0KICAgICAgICAgICBhY2Nlc3MtY29udHJv
bGxlcnMgPSA8JmFpcHM1DQogICAgICAgICAgICAgICAgIElNWDhNUF9BSVBTVFpfSElGSTQNCiAg
ICAgICAgICAgICAgICAgSU1YOE1QX0FJUFNUWl9NQVNURVINCiAgICAgICAgICAgICAgICAgKElN
WDhNUF9BSVBTVFpfTVBMIHwgSU1YOE1QX0FJUFNUWl9NVFcgfCBJTVg4TVBfQUlQU1RaX01UUikN
CiAgICAgICAgICAgICA+Ow0KV2hhdCBpZiBqdXN0IGRlZmluZSBzb21lICpfUk8gZmxhZyBhbmQg
YWRkIGl0IGZvciBleGFtcGxlIHdpdGggdS1ib290Pw0KPiBUaG91Z2h0cz8NCj4NCj4gWzFdOg0K
PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNTA2MTAxNjAxNTIuMTExMzkzMC0xLWxh
dXJlbnRpdW1paGFsY2VhMTExQGdtYWlsLmNvbS8NCj4NCj4gVGhhbmtzLA0KPiBBaG1hZA0KPg0K
Pg0KPg0KPiAtLQ0KPiBQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICB8ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB8DQo+IFN0ZXVlcndhbGRlciBTdHIuIDIxICAgICAg
ICAgICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwNCj4gMzExMzcgSGls
ZGVzaGVpbSwgR2VybWFueSAgICAgICAgICAgICAgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAg
ICAgfA0KPiBBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICB8IEZheDogICAr
NDktNTEyMS0yMDY5MTctNTU1NSB8DQo+DQo=

