Return-Path: <devicetree+bounces-193084-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E26EAF929C
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 14:31:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C3173B0BC9
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 12:30:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF5F12D8DC8;
	Fri,  4 Jul 2025 12:30:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=epam.com header.i=@epam.com header.b="s++h9coJ"
X-Original-To: devicetree@vger.kernel.org
Received: from AS8PR03CU001.outbound.protection.outlook.com (mail-westeuropeazon11012036.outbound.protection.outlook.com [52.101.71.36])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90CDA2D8790
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 12:30:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.71.36
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751632229; cv=fail; b=H/g8kzoUGmTLnV1NN4QmqWUuudkAmY2f67eAq4LJOLNogvxbIfh0AwBrB1QGWfK6rIDBbYewkHzS7ECeHO84Fb3FMpbezzwUGOkkEVoWqhrw6c/LEKY1wfZumqRsV0HmcQc6vUgK8R37ZPZU/fBhYE70bGA4uHtYaQQhWS88CGE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751632229; c=relaxed/simple;
	bh=bnbwoPJGSMpvYZzLiByH1gGBJR0XgBez637/ERuCO+g=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=MPbeB7wusXlUjJ8iyn9w6LvSNPH6b02BEJjY6SRy/sCR1iGH0jr/mFYjtKmPFmVBaZU/4kavFMuUtZPI8VLuyIxGm4JfOGQOSr893aGCCK6sV5nMrE9HmnYqouptTZOza79vYbPW50afEVad8iIviaxm7lnrnCQYROsp2Gd9SfM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=epam.com; spf=pass smtp.mailfrom=epam.com; dkim=pass (2048-bit key) header.d=epam.com header.i=@epam.com header.b=s++h9coJ; arc=fail smtp.client-ip=52.101.71.36
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=epam.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=epam.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZQ446ouTHmnybPwzXWdkPMAcH9UPx9OuJEP8nZMNDilVMUKs4BtwqDHX22n7SIq3+SM7U/c/lcImMXkHqGwltWvmIq2JLYt5tmg7bdNnxYKl7R6JcGusyHmomAKWWZCph8jEZ17DDXmBk55R4BQVVQ4/0+N7voEMx/HsOVu9+9NIGl2ByW+zSok+rOFBihh5d1l55+jYS2Hej665rNGakD20LgjpL0dXy9HeQs6byizZbCj8mgmehK9rv4oH0VK5f97oBc0U230J0zSyP3QVIjZE9v+S1ruCr6FKitEut5pXwe8l73LbUGNDiuSStQAtC36xfuXvkpmyw5Z4KjPJRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bnbwoPJGSMpvYZzLiByH1gGBJR0XgBez637/ERuCO+g=;
 b=g5cHgLJyADmItorbGGpUwYZNamHhtfBGkoJkseI/F2XoIaSJj/aUO8plt0niIWsP82CrvBBwKfKANoA8qoBF3YPnd00RQymKIJcixEx/FAzEXNvO/bKjRa35KwyBYZ1vZkPOm+2cu9p5izGQnQP5xAJ4lELnFXXx0/CW05UcrZsRjFHowtnqDokkRkQ4a5fIMgIqTdAOXpeN63s85sJicAQigdxrpGv1wYEMtxaMmqSHQsYSwoQXAON+7iuqFXr2op1ywqy88miYJtLEm1l3W9EKQmM2Xo6Tx+spotdYaBDHARzC0ZBbSHjOV4LoMFjOEjksHVFN73I+ulMzvdktSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=epam.com; dmarc=pass action=none header.from=epam.com;
 dkim=pass header.d=epam.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=epam.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bnbwoPJGSMpvYZzLiByH1gGBJR0XgBez637/ERuCO+g=;
 b=s++h9coJ5Y3NdENoTMjMKqc4DYJZCM2AO4u+u2MvcwAu35Y6gkk/jxAx4IChCrpmVsjiwL+ETD/+fQKxaJK8Na/QdiaNvQ5o5i8m8cR42mjqT2NOpkwubBSAqaHG8lrEEM9JHWtxpnHV/XsJifESJ7TkCZ0Xzin6Jb9Y6hMiazIBdN0agKP7D3REP8rXuzbQwqwJPbd6XlhBN/vchLIwlOwfwS0JxDGNO3B0OO1OSKBbCO/kX25NQoAaYZANcQ6FIDpisqz/KZIaYNsfhKaMVa6xaDFkP8v4m0XVa2NSzBP6b6OWde5w2fKNutdthWX5aNlO90BtQ3AQ+awnN4lCsA==
Received: from PAVPR03MB8946.eurprd03.prod.outlook.com (2603:10a6:102:32e::21)
 by VI1PR03MB10062.eurprd03.prod.outlook.com (2603:10a6:800:1cd::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.20; Fri, 4 Jul
 2025 12:30:23 +0000
Received: from PAVPR03MB8946.eurprd03.prod.outlook.com
 ([fe80::f12d:7394:bbe3:dfc]) by PAVPR03MB8946.eurprd03.prod.outlook.com
 ([fe80::f12d:7394:bbe3:dfc%4]) with mapi id 15.20.8901.021; Fri, 4 Jul 2025
 12:30:23 +0000
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
Thread-Index: AQHb7MNJRUKqA7yArkmGhrVnmX4ynrQhvX8AgAAJgACAAB5LgA==
Date: Fri, 4 Jul 2025 12:30:23 +0000
Message-ID: <548b162e-d45c-4079-95cb-c1bf3489e5b0@epam.com>
References: <a89f387d-bf81-459e-979e-d97afe25dea3@pengutronix.de>
 <08bbbcaa-4a23-471b-bffb-39f71dc5160e@epam.com>
 <d60d1735-7080-4763-876b-6571b023a247@pengutronix.de>
In-Reply-To: <d60d1735-7080-4763-876b-6571b023a247@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=epam.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAVPR03MB8946:EE_|VI1PR03MB10062:EE_
x-ms-office365-filtering-correlation-id: 78f90476-dd13-40f1-07ae-08ddbaf68c24
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|376014|366016|1800799024|7053199007|13003099007|38070700018;
x-microsoft-antispam-message-info:
 =?utf-8?B?ZUpuOGtPLzJibzk2TXYySFBXdDdmeUtWcmRHOFhYTlJ6UFBudnZ2dWtkSzV5?=
 =?utf-8?B?NGs3ZjZQQ2tyQlh2Rjd3ZGtnRDZVdUsrMDVKRmJpc1ZsNWIxTG1Ia0RJRzNK?=
 =?utf-8?B?TllkS2xhUS9RZVB4T3Z2SWEzdytVWWxwM3JPR005NFBCMEFCWUNBRmZCQ1Nx?=
 =?utf-8?B?SlBRUkNibWtSajdQN1NCbmg2dkpiMElubVF1dGUxYWxPUHVBQU13TDU5N0RT?=
 =?utf-8?B?UkNtU2I2WXNBc3pLNzVpVzd1aTBrbTBFLzYzdmhsYzdJUzlnNXlnT3NMbVA2?=
 =?utf-8?B?R3g1L3lGTFhrRjNUSG02WWtlTlg5aGxCUU5URWFuT0tQTG0zUnRXRzJ3YzVT?=
 =?utf-8?B?N0FWbmdVN01DS3dYeGZYWW4rK00rZ1VSS0U3SVp6bHZjWHZGV1dXck9WYTB6?=
 =?utf-8?B?OWY4RVZBSW5XYUszcTJteWo2VUczSkNtTEl2WXNtT3Zwd0dFc3BDOVljTmRj?=
 =?utf-8?B?d2N0RzlvR3pFSGRoZVRGdy9oekU1cUJNRlRDcjVCcXl6bUd6ZDU1M0lUY2x4?=
 =?utf-8?B?VnNwT29zQWpPQ2J1b3o0TWlibHFUZHc2aGZxRVJYNjIvMDNQZkxWQ1p3bEJl?=
 =?utf-8?B?UVdnMW9Rc2NaZlVjdi9EZFp0YWZOdUNLaU5YUUVCeXF4eHJJUFJXOUt2aytW?=
 =?utf-8?B?aEwvSjVMZElUMmQxK2xvYWd4UUp4WkpKSEozUkdrUWJlOGhOR3grQ1ZwUHdU?=
 =?utf-8?B?a0Z0VmNmRHpQTzlrUFVDZk1Xa3ZPMFhPdkw1N2dVaFN6RWhPNTkvWEgzMHdu?=
 =?utf-8?B?QndicjJQQTJ6MXRCS1BuY3h5eDZVL21xTU9UbUZNZlE1RlJPOU4wc1FETTRN?=
 =?utf-8?B?VzZMODlkK0NrdFdEZ04wU2xFTFMrOUlzOGtuTG80RUpLYWRnLzlVUnBUUHg0?=
 =?utf-8?B?Uk8vRW9NZUl5YkI4b0VPVmpMNGV6ZTJLQUFiS1FxSlZla2pjbDNZY09EcmRT?=
 =?utf-8?B?ZEVMMSt0SW1mOEFFQ2dJWlBLdmUyMGpWd25RVWJGdlFSVFh6Z3VJbWtTRklS?=
 =?utf-8?B?ZHBvT2VtSnY0NWlYcFRBM1d0TUJYdW5iZEQ0MG04SWttOUFUM3pOTVdSUE1w?=
 =?utf-8?B?NDREdW9TTmM0T3c5Sy9VRXVCZFovS1dSY3NHUVpxUjZ3YXFDSUY4MVFTQklx?=
 =?utf-8?B?cmtDUkJFTGVYWlpXT3pRUWFzaitxQkFLeElXZEg5WUQvS3IvUlVFSW5LRVBM?=
 =?utf-8?B?NHdkSXM1MXVmUCtBL1NNbjFMQlRKL3pOL3dMZDRjTXZkaFFGVW4vbHhMYVFR?=
 =?utf-8?B?TFp0UWhSaXNjMUtRQXJIeGVzSFE5YjNGcEFCS292UEFubkJRZDFwelp3WUhT?=
 =?utf-8?B?d1ZYTkNvS2tHbjF2c3JNbHpNajFUYkVxdlJBNVZpUTFlM0pSdllrdm4rbWtJ?=
 =?utf-8?B?RlJnRjkySXVHS2hSV090NDg2TXVoV3BUQmhreHlvSjQ2UmIvL3c3UU9vNDJF?=
 =?utf-8?B?UWdnTVBySG9ZTWc3dFVCZUo4eWdSQ3lCYlBzK200V3l6bTdzNVJ2eVJYNXpD?=
 =?utf-8?B?Z2xKN0dLNnBDMUMrWkEvclNHM0RFdVFtQ1hUTUJiL0I4THBmazNuZURkQjlX?=
 =?utf-8?B?OFNsa2E2U2xCSkNMaUx1L0xrV0hDRTM5WXRtWi9neEk0MGp3QTc0K1hLQ05O?=
 =?utf-8?B?VXFDdlA4SHY0bEtoWlNHa2x0SG5GUDcydVBhWWllblJYYmVkdVRHWmxOaGFS?=
 =?utf-8?B?WlJBWEFhODlZZ1JmNlJQTDFJWGVpL09zaDVqZ0EvNm9ibjZuSTVaZU9kM1Yx?=
 =?utf-8?B?VWdKdHEzK0lLdE5iMnJzR1FXdkcwUmZzTllVVUQ3bEFQY09MOGxPN055emgx?=
 =?utf-8?B?WVdDdVRUbkt0bzJUV0wrUWM0QzhXSzZTb3doRUdhcndkbkxFUFZLK3IzN1RO?=
 =?utf-8?B?RG5VRHNJNFlIM0RwemR4MUNodFFKUkZkWXluckNGUjM3cFE4aFdqUGRtcmpT?=
 =?utf-8?Q?ThnnGKoMuxU=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAVPR03MB8946.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(13003099007)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?RFpBN1M0QWNaWmp2VWRJSVZvOEFIZjdMQXZyMUs5NDB4R2V4eUZCaC9ybmpM?=
 =?utf-8?B?UlBmMjZ0N0lrS25ETWdRZ3QwLzhGN1JJWExBWlpDajViNThzaUZROTNVbXU4?=
 =?utf-8?B?ajNKWW9VM3ZCMXlleURmSmUvY0szcXFNUUVxa2I1SkJmTFhaSFlLTkdTWSs2?=
 =?utf-8?B?ekJpeitCVTFPUHhnV3IvOUdYaUVpZmV0Qk1JVDhXei9WczExUW1PdSsyNk1S?=
 =?utf-8?B?U1RBRWhjM1lGT2ZEK0VqRWdaTExSN2Y0dURXU3pvS2NWSHRpN29OY3cwd1ow?=
 =?utf-8?B?M3ZmeTAyZnRNanJIVGdsWjJYcXByN01tVDJZTi9LMHlKS2R0Q2dXbWFZUllu?=
 =?utf-8?B?ZmF1d2c5WUY4T0N0enBTaDJJajNhSlNQbnI1SzhiVWc4ZlpMRlFRQXo2WDht?=
 =?utf-8?B?bVl1VW9qSUV5KzNWbUlzbWFhVVhqaGVlRUlCeitPckFQeVgxTDdrZE1wQTdw?=
 =?utf-8?B?cksrMlJHc0lNZTRGVy9TRmIweDlvU2p1ZlNYaG5DR3p2RURicE9xQ0l5ak81?=
 =?utf-8?B?djhMdi80M1BwWDJCeDVRN2h3MHZyQlBRYmdibklzV3JZbXdHd2xMeHRIV0Ju?=
 =?utf-8?B?S1FTTDZPdjVsN2Q2MFhWK0MwK2JaUlVNT2dVLzA3L1EzNGR6OEhwVmxPaFNn?=
 =?utf-8?B?c0hCditySWowanlESndPNEZzOVFWUWpRc2pVVGZxUGx0RWhSQi9mdzVZVXd1?=
 =?utf-8?B?Q1ovY1JmK3BrUjFFU2ZGVDArejlkU0c2TXUvUDhReE1iY2pWKzdhUjcvQ1I0?=
 =?utf-8?B?cTdCczVTRm45TFBZSUpnVHl0RHlobTl3VkZ0TEhpZlFEZUpSNCtQdC9idEx5?=
 =?utf-8?B?MHErdW9IR3Fqb0t5TlIwb3B5SVMvTTJONWNmRFE0U2lkZW1Jc2U3MUJtQkky?=
 =?utf-8?B?VXd3bDRGQ1J4WVV4UmF2ODFiY29SaEszQmFKejkyZ0FYT0g5cEZtR1pPdmd0?=
 =?utf-8?B?eFBDaFpPVkY0Zlg2dnJoQm1WMC9LdXY5MjE0Q0RSd0Jpckc4VTJVNGUyamZG?=
 =?utf-8?B?UGJ1VFp2MVM4SnZCVFRleTBELy96U0VDb3BlejJRSmVzNzlqU2hNRVFyQTdw?=
 =?utf-8?B?TkJMUTFnSjFwS0ptZkxzdjlycjdrb3JJMmVXR0c3bVhOb3hueTZLTlBBU2N3?=
 =?utf-8?B?TWovc3Y5RDhwNmJDYzJMalBxcmFRZnA3bW1ZK0VRdmNDUVVIWGFWWUl6RUdH?=
 =?utf-8?B?czdPeDcrd3NTQytEUEJpYzJpTTA2REFlenRUS0F5STdMTE5Id0xDTDNGbFZL?=
 =?utf-8?B?a2tOOVJpMDVUb1VvUmdtWEQrcDMrelVGY212WFZWeitwby8rYm02UStNdkVs?=
 =?utf-8?B?dXNXQ1h4eFYxSEZNcjlJVGQvb0xDTlRtNzVSMzRUMGhBaEloWmtWM2hVTmRU?=
 =?utf-8?B?S0QrU0htWW9mZkVzbmxKUWdTZ3BYK2EyZ0NFTjVoTXh2aXdna3pIemZ4bElI?=
 =?utf-8?B?a2FoOThqUGVpVG9RVGZaQ0g2akJPWVF3d3FlZjY5ZGlDRmpSSmVZeWtNcXo3?=
 =?utf-8?B?NWhac0YwU0lhUHJ4N1l2bjIzOG9ldkpHSG9PV1hPQlVCRERBVGFkUkN3UUVt?=
 =?utf-8?B?OGY4cEhHSHRYTHNHeE83NkdLMTkrUlV5Y01RVWFrYy9qcjFjd25FcjFUKzZP?=
 =?utf-8?B?eGwrNCt2YTdXSGRMcDFWV0J1OFI4Q0pZNGFQUTY5R0FQMWFiNkk3WDVDL0lu?=
 =?utf-8?B?M0tHMTk5RVhUWmc2SWJlNitseFpSVWZ2Q2x4WWMvRXprTW5jN08rVFRQS0hj?=
 =?utf-8?B?Q1hac1lDY3FSb3dnTmRoRnR3SHBrMS9WdUdjRWFwZXpBdlM5K2c4SnNFK0k0?=
 =?utf-8?B?Q1NRcmIwMFNWREtqcEo3UG4zQU5DN2xPbmRKUzNld3lWUndFRWdtSnFlMldh?=
 =?utf-8?B?VHcxaW5xcEt6M3p2cGtoZGg0bEhCUnFIRlF4ZG0yNUM2M25MM3IwYmluUmYr?=
 =?utf-8?B?MlFERnc5bDBVMWM4QkdRcE5melVueHdiTUk3L0hSUEdra3dac09MSWFkR2Za?=
 =?utf-8?B?WkZTVFBVaUdmOFZ6bWNTd09uVHNObUJkejVUMXYrUFNEOHVZWVFCbGRidW1U?=
 =?utf-8?B?NlBpckFHaVBwZk9jcWVBUFNYVnJTOXREbm1vWEVkTC9VQy9EdGxYVmlPeHdm?=
 =?utf-8?B?WkNEWElzV0E1ZTRjTWUwNGZ6N2ZKczFsM2o1OUFCSFFkZXI5M1pxSFZnNlo1?=
 =?utf-8?B?QUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <8077E35D1493844F9972B18043071595@eurprd03.prod.outlook.com>
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
X-MS-Exchange-CrossTenant-Network-Message-Id: 78f90476-dd13-40f1-07ae-08ddbaf68c24
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2025 12:30:23.1944
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b41b72d0-4e9f-4c26-8a69-f949f367c91d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dMZb2K4A3oToXA+lxNpOUFZO+mWOzIX2zcPASVJqhmUW4vUlD7MYgrEeZK3DvCUV5CnPVQmsZPHCLRMMK7pLBaERc6Rm0iIOIZRdGlwnlj4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR03MB10062

DQoNCk9uIDA0LzA3LzIwMjUgMTM6NDEsIEFobWFkIEZhdG91bSB3cm90ZToNCj4gW1lvdSBkb24n
dCBvZnRlbiBnZXQgZW1haWwgZnJvbSBhLmZhdG91bUBwZW5ndXRyb25peC5kZS4gTGVhcm4gd2h5
IHRoaXMgaXMgaW1wb3J0YW50IGF0IGh0dHBzOi8vYWthLm1zL0xlYXJuQWJvdXRTZW5kZXJJZGVu
dGlmaWNhdGlvbiBdDQo+DQo+IEhpIE9sZWtzaWksDQo+DQo+IE9uIDcvNC8yNSAxMjowNywgT2xl
a3NpaSBNb2lzaWVpZXYgd3JvdGU6DQo+Pj4gUXVvdGluZyBhY2Nlc3MtY29udHJvbGxlcnMueWFt
bDoNCj4+Pg0KPj4+ICAgICBBY2Nlc3MgY29udHJvbGxlcnMgYXJlIHR5cGljYWxseSB1c2VkIHRv
IHNldC9yZWFkIHRoZSBwZXJtaXNzaW9ucyBvZiBhDQo+Pj4gICAgIGhhcmR3YXJlIGJsb2NrIGFu
ZCBncmFudCBhY2Nlc3MgdG8gaXQuDQo+Pj4NCj4+PiBJIGFtIGFmcmFpZCB0aGF0IGhhdmluZyB0
aGUgZXhhY3Qgc2FtZSBiaW5kaW5nIGZvciBib3RoIGdyYW50aW5nIGFuZA0KPj4+IGNoZWNraW5n
IGFjY2Vzc2VzIGNvbXBsaWNhdGVzIG1hdHRlcnM6DQo+Pj4NCj4+PiAgICAgMSkgSGFyZGVyIHRv
IHJlYXNvbiBhYm91dCBkZXZpY2UgdHJlZXM6IERvZXMgdGhpcyBwcm9wZXJ0eSBhY3R1YWxseQ0K
Pj4+ICAgICAgICBtb2RpZnkgaGFyZHdhcmUgc3RhdGUgb3Igbm90Pw0KPj4gICBGcm9tIG15IHN0
YW5kcG9pbnQgZHJpdmVyIHNob3VsZCBkZWNpZGUgdGhpcy4gVGhlIG1haW4gcHVycG9zZSBvZiB0
aGUNCj4+IGRldmljZS10cmVlIGlzIHRvIHByb3ZpZGUgaW5mb3JtYXRpb24sIG5vdCBydW50aW1l
IGRhdGEuDQo+IEl0J3MgYW4gYXNwZWN0IG9mIHRoZSBoYXJkd2FyZSBpZiBhIGRldmljZSBpcyBh
Y2Nlc3NpYmxlIG9yIG5vdC4NCj4gV2UgaGF2ZSBzdGF0dXMgYW5kIHNlY3VyZS1zdGF0dXMgZm9y
IGV4YW1wbGUgZm9yIGRldmljZXMgc3RyaWN0bHkNCj4gcGFydGl0aW9uZWQgZm9yIGVpdGhlciBu
b3JtYWwgb3Igc2VjdXJlIHdvcmxkLg0KPiBUaGVyZSBpcyBhbHNvIHByaW9yIGFydCBmb3IgcmVz
dHJpY3RpbmcgdXNhZ2Ugb2Ygbm9kZXMsIGUuZy4NCj4gcHJvdGVjdC1leGVjIGZvciBTUkFNIG9y
IHJlYWQtb25seSBmb3IgTlZNRU0uDQo+DQo+IFNvIHRoaXMgaXMgbm90IG1pc2FsaWduZWQgd2l0
aCBleGlzdGluZyBwcmFjdGljZS4NCj4NCj4+PiAgICAgMikgTW9yZSBkaWZmaWN1bHQgbWlncmF0
aW9uOiBJZiBhY2Nlc3MgZ3JhbnRpbmcgaXMgYWRkZWQgaW5pdGlhbGx5IHRvDQo+Pj4gICAgICAg
IExpbnV4LCBidXQgbGF0ZXIgbW92ZWQgaW50byB0aGUgc2VjdXJlIHdvcmxkLiBIb3cgdG8gcmVm
bGVjdCBpbg0KPj4+ICAgICAgICB0aGUgRFQgdGhhdCB0aGUgYWNjZXNzIGNvbnRyb2xsZXIgaGFz
IGJlY29tZSByZWFkLW9ubHkgYW5kIHRoYXQgdGhlDQo+Pj4gICAgICAgIGRyaXZlciBzaG91bGQg
bm90IGF0dGVtcHQgd3JpdGVzPw0KPj4gVGhpcyBzb3VuZHMgdG8gbWUgbW9yZSBhcyBydW50aW1l
IGNvbmZpZ3VyYXRpb24uIEkgbWVhbiB0aGF0IGluIHRoaXMNCj4+IGNhc2Ugd2Ugc2hvdWxkIGhh
bmRsZSAyIGRldmljZS10cmVlczoNCj4+IC0gY29uZmlndXJhdGlvbiB3aGVyZSBIVyBkaWRuJ3Qg
bWlncmF0ZSB0byB0aGUgU2VjdXJlIFdvcmxkDQo+PiAtIGNvbmZpZ3VyYXRpb24gd2hlcmUgcmVh
ZC1vbmx5IGFjY2VzcyBpcyBuZWVkZWQuDQo+IEEgbWlncmF0ZWQgZGV2aWNlIHRyZWUgbWlnaHQg
c3RpbGwgd2FudCB0byBkZXNjcmliZSB0aGUgYWNjZXNzDQo+IGNvbnRyb2xsZXIsIGUuZy4gc28g
dGhlIHByb2JlIG9mIGRldmljZXMga25vd24gdG8gYmUgb2ZmIGxpbWl0cyBjYW4gYmUNCj4gc2tp
cHBlZC4gVGhlbiB3ZSBhcmUgYmFjayBhdCBzcXVhcmUgb25lIG9mIGRlZmluaW5nIGEgYmluZGlu
ZyBvbiBob3cgdG8NCj4gZGlmZmVyZW50aWF0ZSBiZXR3ZWVuIGFuIGFjY2VzcyBjb250cm9sbGVy
IHRoYXQgZG9lcyBtb2RpZmljYXRpb24gYW5kDQo+IG9uZSB0aGF0IG9ubHkgZG9lcyBhY2Nlc3Mg
Y2hlY2tzLg0KPg0KPj4+IE15IHN1Z2dlc3Rpb24gd291bGQgYmUgYWRkaW5nIGFuIGBhY2Nlc3Mt
Y2hlY2tzLW9ubHk7YCBvciBzaW1pbGFyDQo+Pj4gcHJvcGVydHkgZm9yIGFjY2VzcyBjb250cm9s
bGVycyB0aGF0IGFyZSByZWFkLW9ubHkuDQo+Pj4NCj4+PiBhY2Nlc3MtY2hlY2tzLW9ubHkgY291
bGQgYmUgdGhhdCB3YXkuDQo+Pj4NCj4+IEkndmUgdGFrZW4gdGhpcyBleGFtcGxlIGZyb20gWzFd
Og0KPj4gICAgICAgICAgICAgYWNjZXNzLWNvbnRyb2xsZXJzID0gPCZhaXBzNQ0KPj4gICAgICAg
ICAgICAgICAgICAgSU1YOE1QX0FJUFNUWl9ISUZJNA0KPj4gICAgICAgICAgICAgICAgICAgSU1Y
OE1QX0FJUFNUWl9NQVNURVINCj4+ICAgICAgICAgICAgICAgICAgIChJTVg4TVBfQUlQU1RaX01Q
TCB8IElNWDhNUF9BSVBTVFpfTVRXIHwgSU1YOE1QX0FJUFNUWl9NVFIpDQo+PiAgICAgICAgICAg
ICAgID47DQo+PiBXaGF0IGlmIGp1c3QgZGVmaW5lIHNvbWUgKl9STyBmbGFnIGFuZCBhZGQgaXQg
Zm9yIGV4YW1wbGUgd2l0aCB1LWJvb3Q/DQo+Pj4gVGhvdWdodHM/DQo+IEFzIGV4dHJhIGNlbGwg
b3IgYXMgdmFsdWUgdGhhdCdzIE9SJ2QgaW50byB0aGUgbGFzdCBjZWxsIHdpdGggdGhlIGZsYWdz
Pw0KPiBBbiBleHRyYSBjZWxsIHdvdWxkIGJlIGFuIG9wdGlvbiwgYnV0IEkgcmF0aGVyIHRoaW5r
IGl0J3MgYSBwcm9wZXJ0eQ0KPiBvZiB0aGUgY29udHJvbGxlciBpZiBpdCdzIHJlYWQtb25seSBv
ciBub3QgYW5kIG5vdCBvZiB0aGUgY29uc3VtZXJzPw0KSWYgdGhpcyBzaG91bGQgYmUgYXBwbGll
ZCB0byB0aGUgY29udHJvbGxlciBpdHNlbGYgdGhlbiB5b3VyIGFwcHJvYWNoIGlzDQphbiBvcHRp
b24uIEZvciBvdXIgdXNlLWNhc2Ugd2UgYXJlIHVzaW5nIG9ubHkNCiJzZXQiIG9wdGlvbi4NCj4g
VGhhbmtzLA0KPiBBaG1hZA0KPg0KPj4+IFsxXToNCj4+PiBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9hbGwvMjAyNTA2MTAxNjAxNTIuMTExMzkzMC0xLWxhdXJlbnRpdW1paGFsY2VhMTExQGdtYWls
LmNvbS8NCj4+Pg0KPj4+IFRoYW5rcywNCj4+PiBBaG1hZA0KPj4+DQo+Pj4NCj4+Pg0KPj4+IC0t
DQo+Pj4gUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgfA0KPj4+IFN0ZXVlcndhbGRlciBTdHIuIDIxICAgICAgICAgICAg
ICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwNCj4+PiAzMTEzNyBIaWxkZXNo
ZWltLCBHZXJtYW55ICAgICAgICAgICAgICB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8
DQo+Pj4gQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgfCBGYXg6ICAgKzQ5
LTUxMjEtMjA2OTE3LTU1NTUgfA0KPj4+DQo+IC0tDQo+IFBlbmd1dHJvbml4IGUuSy4gICAgICAg
ICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8DQo+IFN0ZXVlcndhbGRl
ciBTdHIuIDIxICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8DQo+
IDMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgICAgICAgICB8IFBob25lOiArNDktNTEyMS0yMDY5
MTctMCAgICB8DQo+IEFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICB8IEZheDogICAr
NDktNTEyMS0yMDY5MTctNTU1NSB8DQo+DQo=

