Return-Path: <devicetree+bounces-67397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C728C7FEB
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2024 04:36:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2824F1C213A9
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2024 02:36:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4ED60947A;
	Fri, 17 May 2024 02:35:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wiwynn.com header.i=@wiwynn.com header.b="czZADG+m"
X-Original-To: devicetree@vger.kernel.org
Received: from HK3PR03CU002.outbound.protection.outlook.com (mail-eastasiaazon11011004.outbound.protection.outlook.com [52.101.128.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F36944D;
	Fri, 17 May 2024 02:35:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.128.4
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715913358; cv=fail; b=WZieT6sA6X224VYI+sD8/bQdZDE2se9DtFVOSfbMTXFfh7RigSXx7FOOhwCJVsHOaCNdT+mmMEUwfrWZPdgY/Gt5NhMacBMl4Ttjp5NWlg98G8YLLzeicypNMcnf0z0xREkvt5yGKd5hCl0oRW5xf0do7e7NnPppV4ATw67vX8U=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715913358; c=relaxed/simple;
	bh=y4GMnCajnM5btg92T8F9xc/SzjiejKegSdQWecMNO5c=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=MN1BWdasLyttDxOkpDsjUdKwyr4lDBU254jM5kTR67aI+cUANErxuJe/ARFyxHQLoktGgTAJPevgnuggC+T1pvqrKA76ucieqb5nQZiHFILGKMLT1MjxS5LE4C8H+yMBQfgBuQ6ZtVz4BXtdSwKlKy45GPE3Ukr0ln5lY94dMt0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=wiwynn.com; spf=pass smtp.mailfrom=wiwynn.com; dkim=pass (2048-bit key) header.d=wiwynn.com header.i=@wiwynn.com header.b=czZADG+m; arc=fail smtp.client-ip=52.101.128.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=wiwynn.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=wiwynn.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WYujtTgNRvBRA7CsyIYW8Q4rfT+fCPOV/MJAxPyl2zbniQRmJAFhKBnn5xUnQvN5TYtsPcPIRaX4ojcWH2f6K8TvMERFYUhq1ayU+0iYKyWw9pgwMc768UlktYgdripI2K6zP+b32fcxVFdNuk6VqH83dK4pxJ/Nt7/bDU9k2R6DjZpEHqNQbauHRYD9IazhyrZlFaVmpfqAjLHd9R6QTQvEvitCCbaWHYtJYT9pw3FMpzbZSGWUWwnU5zcxFY+jfwJeArpLqtHiaPUxcvPhoi/iz3+AV32fDd9HfLD5e09/1BH8nDTQuk5cAwWn8V1gf39Gp4l0VPDrFMgB1RX1/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y4GMnCajnM5btg92T8F9xc/SzjiejKegSdQWecMNO5c=;
 b=TM0JMdGnQxcRBX2UgmefTKgple1GINvfZ5w+MMpQ6aaqm8okXAbwWpk1BO3Qfh3z+3cqPokfSZF9joZ1FujA6tZxfAANT6yf8KEUGtfwYbsE63ZIquPtGIpD/CkSqf5LJ9WBOgVntox8wBWWze0LBE5GcgKuMRHJnNDjMdB2Ljv8FDxLGkC0Uh7cnmu1ajtNsvAA3XHXm5FQsSbrT6X+NoL427sslE7aWmJaOkvD2BuY4CdOA4LGFeErsfpOu8TcfpLpm8xvwLV8sn8X3zkKyFZ7MnFu694rusXFQR4yKzDQh8VQl7oD7772P5Dpw2xNdCQ8NCDwzVa1Wc5PfJqiNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wiwynn.com; dmarc=pass action=none header.from=wiwynn.com;
 dkim=pass header.d=wiwynn.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wiwynn.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y4GMnCajnM5btg92T8F9xc/SzjiejKegSdQWecMNO5c=;
 b=czZADG+mQYxeEgcR7tmsNtOo6Foo5kvT+oQvMAfOGINbhGst1zv0l/Ekm/NEDA40h9NpIANDKNwUgjqRlVfa4Ol+3gm+VRYdxQXWDEULv389+Xsl/ATqyoSjyQeP9J5W4cKODSbHlnoqeln4d8DTZCq6Gi6qsWvI8KSgK9botxAyCf7lEq1Lmgawqb6yn5ERufeXucDsn7EEeyHL/xDn4YGeLx8AlKYA+sYaNHTkuOnYU53o+irsHeojlmetdyv/brfOfxq8EkSB08xA6GjsNyjSRebt/TAd5KhP/87N6F3lw8GudaMKMTk5/XgQqMiGjmsTxEdZMzOeQpEJB1QoDQ==
Received: from TYZPR04MB5853.apcprd04.prod.outlook.com (2603:1096:400:1f3::5)
 by SI2PR04MB6097.apcprd04.prod.outlook.com (2603:1096:4:1f8::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.28; Fri, 17 May
 2024 02:35:52 +0000
Received: from TYZPR04MB5853.apcprd04.prod.outlook.com
 ([fe80::9bcd:8112:b072:faca]) by TYZPR04MB5853.apcprd04.prod.outlook.com
 ([fe80::9bcd:8112:b072:faca%5]) with mapi id 15.20.7587.028; Fri, 17 May 2024
 02:35:51 +0000
From: Delphine_CC_Chiu/WYHQ/Wiwynn <Delphine_CC_Chiu@wiwynn.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Delphine_CC_Chiu/WYHQ/Wiwynn
	<Delphine_CC_Chiu@wiwynn.com>, "patrick@stwcx.xyz" <patrick@stwcx.xyz>,
	"joel@jms.id.au" <joel@jms.id.au>, "openbmc@lists.ozlabs.org"
	<openbmc@lists.ozlabs.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Andrew
 Jeffery <andrew@codeconstruct.com.au>
CC: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-aspeed@lists.ozlabs.org"
	<linux-aspeed@lists.ozlabs.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: RE: [PATCH v1] ARM: dts: aspeed: yosemite4: add I3C config in DTS
Thread-Topic: [PATCH v1] ARM: dts: aspeed: yosemite4: add I3C config in DTS
Thread-Index: AQHan6kujHvv2V+fO025/RadaGgcu7GKV3qAgBBuA0A=
Date: Fri, 17 May 2024 02:35:51 +0000
Message-ID:
 <TYZPR04MB58539F598E74106F3C2088E5D6EE2@TYZPR04MB5853.apcprd04.prod.outlook.com>
References: <20240506113306.1283179-1-Delphine_CC_Chiu@wiwynn.com>
 <3903300d-9d5b-44b3-95fa-0579e5421071@kernel.org>
In-Reply-To: <3903300d-9d5b-44b3-95fa-0579e5421071@kernel.org>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wiwynn.com;
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR04MB5853:EE_|SI2PR04MB6097:EE_
x-ms-office365-filtering-correlation-id: 6c0600c6-ba15-44dc-c85e-08dc761a11c7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230031|366007|7416005|1800799015|376005|38070700009;
x-microsoft-antispam-message-info:
 =?utf-8?B?bEMrUjRJNFBMMTYrS0lBTitkMS9HWVRPcEVqVzc4c3N3S2NEUWNlMnU2SDdT?=
 =?utf-8?B?Qjh2ZFY4bU1DL0ZJRG8vYktwdmgrY05nSVVka202ajVhTDE1UTVQS3Bwbytz?=
 =?utf-8?B?b1dXSEdvWnV5dUNwbldNbTUvdWRLUkdSMTk3YkV1S0NrMW1BdHkrUVNkcXFs?=
 =?utf-8?B?cjVzS2JhbWFNbVlibDNpVmRORGNNWDlMUXY2Y1IzWElpRmFuT2Q4WVhZUjQv?=
 =?utf-8?B?cXdSbXFFSTRJalFtQlhYL0o3MTZTOE1ZbU1LYytlRFZzR2tTcWFtYlRDMWox?=
 =?utf-8?B?cGFIb0F5ZXp4UHhUQTNhcFVITWR6SWpocWoxbkNuc3lSeFJPS3RPUWt5Szlm?=
 =?utf-8?B?Q1N0bThFM09PcmxNYk85amlVSmRVV3NjM3lLQlZ6Q1h1Rk5lSnhLVTZwM0RL?=
 =?utf-8?B?ODBjWnRvNENQV1lDbktMbXlPOU9HNHpTSnp4MHlLcFRxVE1BYlVUNGx4bDBq?=
 =?utf-8?B?SjF0a1BGbm15VzNXU09WTXgyZW0vNllRZWgxdHpTVXErSTRxVEZCOHZOM0Z2?=
 =?utf-8?B?cGt0ME51TnlhMm9vMWoxcGVQT0N4RDhrQVRDeHZaRVhjQUtpRVFFWlBveTln?=
 =?utf-8?B?Tm9jZXhNQ2N1cTQxUXROSW53bDBIVDdBTVNydEY2amg1T3A4bTVKb2JnRit5?=
 =?utf-8?B?WVBMV0FKVTFIRm40Zk05Z2F1ZnlWb2FmV3BSaitLc0FFOXVsYWhhbFYzWVBv?=
 =?utf-8?B?MmdTRGQzc1k5QzB1aHpvSDJXTEZCcG85M0xsc1ZxZkJ1cUNKeFRONlM5K3pQ?=
 =?utf-8?B?cFpHcEQwcHdmN2xYWVpsQXRKU1hFSHFTSE9KR2RBbjVPdjVwZm9WdThrYkRY?=
 =?utf-8?B?SlYzSTMyOTU0YmVsYjFzRm9hWWZPSGxYY2VOamJZUmZHOTlLT1hFRUQ4czRk?=
 =?utf-8?B?RkxpYlBzSDVRMm91QUZHRUVaWDdrUkxIc09McmkybE96V1pXSkl0SlBwY2N5?=
 =?utf-8?B?NXFmUHB6RVFQR3QyM05WSVlVMDdDYldlT0dicWZUalltcVZFT3B5K1hFalpL?=
 =?utf-8?B?dXJ5RWZCY2haY1JRUkhVWnQyYm5NSmgyNjgyY1pJaS9DN1FFUmNvcDBtZ0k2?=
 =?utf-8?B?bW1RL21nbjBIa3JSZ0haWEJZZ3JESzA1aDBUbUpEZ3FYeTVCNHM5M2JoVmJn?=
 =?utf-8?B?cmQ5QkI3cXJTdkVZZnhpeGk2VU1MOVE5UmtaSHRGVDBxK1VGSG9lR3hIMENk?=
 =?utf-8?B?dERuVkw3QlVmVGRqYTRDZDFpU3BkalJFSVNrS3VSaVJsNFkwNS9sZGY4QWs1?=
 =?utf-8?B?QlZxY3FacWE0ZmszTlMrM3ZRNWl3WGNXa3VCVkxIMHJlR1B5VG5jWDV4cUs1?=
 =?utf-8?B?U0J4ajRGVTlmbFViZnd4TTNhaHE5cWNwbTUyeWJQRkpPREpCTnJTVysrQW4x?=
 =?utf-8?B?Q2ZHaGNSdFQ1YURSRXNtWk1PKytZODNtaDhYamdEVmpPNlBDenhOYldNNFZ6?=
 =?utf-8?B?SlNNZGVSVnB2UnpEU0JEWk9lS29tcjhTMEttd3h4UDlpOURXTHB5M28xR0ow?=
 =?utf-8?B?Skl4LzZXelZhS2EzeHlnWEE3NFoyejJKZnZuUEdJeTN3OXZBTE5wdmY0VU5s?=
 =?utf-8?B?TE5RT2tmcUtxbmdNZ1VEQjlBbkN1WUh4RTFEMjNEbkZJODRTQklDREtzbFJ4?=
 =?utf-8?B?MXg5UFpTTlMzZUZhSkRlWWpLWWIrc3hGSFdvM3JiMWw1b1NLSGk3VmhSanp4?=
 =?utf-8?B?ZGFIZituYlRldWhPTEpCdWpxZWhXQmFXdkFhaElPWi92czFaMGkzVVpBPT0=?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:zh-tw;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR04MB5853.apcprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(7416005)(1800799015)(376005)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?QWR4SWt2Q25SWUU1V0NlWlU1VjB6YkQrUmhTSzVraDJVMU9yZldreE53TURy?=
 =?utf-8?B?eFJHejAvZU5qNUpkdUMxSHhvZmxXa2JBOTdTTEhwUHN1dmhjVFFYK3JTV0Zy?=
 =?utf-8?B?TmlXb2lXejdrTGd0emFBcFF4MVBnNm4raWpzUVc2UmRxUVh6LzFDdVpVUmha?=
 =?utf-8?B?WmJPR1JBV0QyUDRSRzRXbEVydytuTlRmTlZnUnhRLzRlSjhpV0cvQzJCdEdZ?=
 =?utf-8?B?cnBiWjVIWWhuL0dvb255MUFUR0QwTll1VFM4ci92Ynh6dk9zRXZUWnJBeC9K?=
 =?utf-8?B?T09RalpPeVJiN0tjMy9wYjMyVFVIbkpGblMyeW5PTDVVYkN0b21odk1yQlRJ?=
 =?utf-8?B?eWptUGpIZGJxNEJpZEpTV1J3VUhXT01yU016RmtzaEdPYU5lWm5LMjdyZUlz?=
 =?utf-8?B?TW5RT25FLzlkYW95d2xkVUR0dW5JeDc4NFpLeUZoZjY1TWdEeG5NZk5uNlQ3?=
 =?utf-8?B?SEVQangrNW0vVnhnNjlWK0pYeXVWMzlJTmVVbTdrQ3pGQmFiSHBPamkyVmgy?=
 =?utf-8?B?MU1BOXVUUzR2Qk1sSTdJR055VDFDaksrdHVvUjcrRlBoWm9Wd2ZlMDFxTGtz?=
 =?utf-8?B?QzJTdlBObGZpRnV6ejU3ZHRBQ1VKSytseEhoaWFVTFhHd3F4UXJHRWtEbTMv?=
 =?utf-8?B?VHE3cmw1UVU2TTk4eTVxSDZocDQ3S1UxM25lWG5DVCt5WUhxSFJhUjRLMDA5?=
 =?utf-8?B?U0swMXZIYVVGWkVvZEdOc2E1bFJqaGdNYVVQa0RUN2xLTktTUjIxZVdxaDln?=
 =?utf-8?B?dGg0VS8yYmtwU3ZjMjhmYnBvTVBraXdEQlpwRm1NMGtXOWV1M2RaNHNFMW9Z?=
 =?utf-8?B?RE1qdnBxT1BIclh4QVpkd2JJaXRPbEV1WjY4ODNqWUw5WDhZMUkrN0t2M2Jm?=
 =?utf-8?B?Tmo3NFJ0QXpZMHVRS3B1WTFaNzdFdmlIcG5zb2FlYUVlQUEwU1RqUUFLekdB?=
 =?utf-8?B?NW1QS2tVY2M1OEQ0NFc0VFR5NlVhczlKdHFZcmVxNkJ4Z0tUdGltMWQxalVv?=
 =?utf-8?B?SnhRNmF2WmgyV3M2bWFqV3o2MVVISTN1N1I3UEo5VzZ2S1BWY2NEVnYyYWRn?=
 =?utf-8?B?WE11OXNpUDU5ai9DRlNLYXJnUnlRRWJHZzBzZVFGdzkwN2pxc0t6eEFhSmFU?=
 =?utf-8?B?ZjUxMElRblR1MWpZOXNuSGpKczMxOFR6dmxIU2lUTFhtQjhBUHNZaWFUaHVU?=
 =?utf-8?B?QnVnTnJBMjA5RW5JK2g5enNaR3orYzByYkJhYU42a2UxVGxOalc5N1hiL3Ft?=
 =?utf-8?B?L0FiZ2hXOW50QzlmcnhNeG92Q2xHZEQ5TUxlUzB2RWo4VlY5RlFmeUxvYUVK?=
 =?utf-8?B?empCc1JMMVRjZWQ5TC9pMHZtSC9LL1A4UjBUZG9NNXM2aWd4aHgrVWFzQWZj?=
 =?utf-8?B?eGVpQ2w1Tjh6VXlETit4VDdWcUt6d3hpd3BNdVRWeG90S25pU2pjdjAwUy9v?=
 =?utf-8?B?R0p4T2kxV2l0WnpWQXJ6clR4ZWxLV1N3VU5TL1pHWGhNSWZtbUNTbkFOOVdD?=
 =?utf-8?B?UzZhdkxJWHdjY2xoWDVKaFVVd05XMm8rcWpydGMzVVA2VmE0bnNVQmhwR3Vr?=
 =?utf-8?B?UjB3cHhOUy9IZE9LU242TFRIV1lxVXk3Ny9KbmFtVGhRTERWNzJoVncyc0Nt?=
 =?utf-8?B?QnRmKzRxRURQMGJnd0E5NjVBN0h4YzlsdktacVI4WFFXeWd4cHBpeDRCV1Fs?=
 =?utf-8?B?STBpc0ljYlhJRHY5WVdOTUh0bVdhOGphQ2t3L3ZNTXdWdUVZUG41SjJ6R2V0?=
 =?utf-8?B?TmFBc2pnZXVhcXF5NlhUV0s3MXpDSU1EVlRVaXhmczltcjhUTC9VR2s5T2J1?=
 =?utf-8?B?bDkzcllXSFZsUk9zKzBKU2g5UEVoOFZvcnN1S2dBSkdvQlFmQWhJcGNEZjNI?=
 =?utf-8?B?Z3I1b1RqMk9uS3hLUGx1OXFOendHcmI1WG9vS1BWekIrRVI0ZnBlcC8vK2ts?=
 =?utf-8?B?TGRPTEhGQURQWEhqbzBiZFBEMGJKZ1NvRDZHb2VXbU5xeW9STnFxZER4dkhP?=
 =?utf-8?B?OFdaOW9sclF5aXB2WGFkRDM2MXRqeDdyTHg5aHUyYlY1bG4veVVzQnNtTXo1?=
 =?utf-8?B?V0JnSmtQZE1OM21QWmozdlNQdjFSejNLZTRCbnhjU3R5UmJCanJKSmE5bm9k?=
 =?utf-8?Q?WZOujSv8R7d8Y7w7rphWm+AVP?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: wiwynn.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR04MB5853.apcprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c0600c6-ba15-44dc-c85e-08dc761a11c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2024 02:35:51.9137
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: da6e0628-fc83-4caf-9dd2-73061cbab167
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8jkVemC9qrE2V9s0OZCDfd2Do1qOJRFlD9fq3PJZAj7+MsTRWoHWvy4g5X1FApwlS4lraPnaZEW0M/tqn8m3KA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SI2PR04MB6097

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS3J6eXN6dG9mIEtvemxv
d3NraSA8a3J6a0BrZXJuZWwub3JnPg0KPiBTZW50OiBNb25kYXksIE1heSA2LCAyMDI0IDExOjM4
IFBNDQo+IFRvOiBEZWxwaGluZV9DQ19DaGl1L1dZSFEvV2l3eW5uIDxEZWxwaGluZV9DQ19DaGl1
QHdpd3lubi5jb20+Ow0KPiBwYXRyaWNrQHN0d2N4Lnh5ejsgam9lbEBqbXMuaWQuYXU7IG9wZW5i
bWNAbGlzdHMub3psYWJzLm9yZzsgUm9iIEhlcnJpbmcNCj4gPHJvYmhAa2VybmVsLm9yZz47IEty
enlzenRvZiBLb3psb3dza2kgPGtyemsrZHRAa2VybmVsLm9yZz47IENvbm9yIERvb2xleQ0KPiA8
Y29ub3IrZHRAa2VybmVsLm9yZz47IEFuZHJldyBKZWZmZXJ5IDxhbmRyZXdAY29kZWNvbnN0cnVj
dC5jb20uYXU+DQo+IENjOiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOw0KPiBsaW51eC1hc3BlZWRAbGlzdHMub3psYWJzLm9y
ZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENIIHYx
XSBBUk06IGR0czogYXNwZWVkOiB5b3NlbWl0ZTQ6IGFkZCBJM0MgY29uZmlnIGluIERUUw0KPiAN
Cj4gICBTZWN1cml0eSBSZW1pbmRlcjogUGxlYXNlIGJlIGF3YXJlIHRoYXQgdGhpcyBlbWFpbCBp
cyBzZW50IGJ5IGFuIGV4dGVybmFsDQo+IHNlbmRlci4NCj4gDQo+IE9uIDA2LzA1LzIwMjQgMTM6
MzMsIERlbHBoaW5lIENDIENoaXUgd3JvdGU6DQo+ID4gU2V0IEkzQyBjb25maWcgaW4geW9zZW1p
dGU0IERUUy4NCj4gPg0KPiA+IFRlc3QgcGxhbjoNCj4gPiBUZXN0ZWQgd2l0aCBhc3BlZWQgSTND
IHBhdGNoZXMgYW5kIEkzQyBodWIgZHJpdmVyLg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogRGVs
cGhpbmUgQ0MgQ2hpdSA8RGVscGhpbmVfQ0NfQ2hpdUB3aXd5bm4uY29tPg0KPiA+IC0tLQ0KPiA+
ICAuLi4vYXNwZWVkL2FzcGVlZC1ibWMtZmFjZWJvb2steW9zZW1pdGU0LmR0cyAgfCA4Ng0KPiAr
KysrKysrKysrKysrKysrKysrDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA4NiBpbnNlcnRpb25zKCsp
DQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvYXNwZWVkL2FzcGVlZC1i
bWMtZmFjZWJvb2steW9zZW1pdGU0LmR0cw0KPiBiL2FyY2gvYXJtL2Jvb3QvZHRzL2FzcGVlZC9h
c3BlZWQtYm1jLWZhY2Vib29rLXlvc2VtaXRlNC5kdHMNCj4gPiBpbmRleCA2NDA3NWNjNDFkOTIu
LjZhMzBjNDI0ZDc0NSAxMDA2NDQNCj4gPiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9hc3BlZWQv
YXNwZWVkLWJtYy1mYWNlYm9vay15b3NlbWl0ZTQuZHRzDQo+ID4gKysrIGIvYXJjaC9hcm0vYm9v
dC9kdHMvYXNwZWVkL2FzcGVlZC1ibWMtZmFjZWJvb2steW9zZW1pdGU0LmR0cw0KPiA+IEBAIC01
OTUsNiArNTk1LDkyIEBAIGkyYy1tdXhANzIgew0KPiA+ICAgICAgIH07DQo+ID4gIH07DQo+ID4N
Cj4gPiArJmkzYzAgew0KPiA+ICsgICAgIHN0YXR1cyA9ICJva2F5IjsNCj4gPiArICAgICBwaW5j
dHJsLW5hbWVzID0gImRlZmF1bHQiOw0KPiA+ICsgICAgIHBpbmN0cmwtMCA9IDwmcGluY3RybF9p
M2MxX2RlZmF1bHQ+Ow0KPiA+ICsgICAgIGkzYy1wcC1zY2wtaGktcGVyaW9kLW5zID0gPDQwPjsN
Cj4gPiArICAgICBpM2MtcHAtc2NsLWxvLXBlcmlvZC1ucyA9IDw0MD47DQo+ID4gKyAgICAgaTNj
LW9kLXNjbC1oaS1wZXJpb2QtbnMgPSA8MzgwPjsNCj4gPiArICAgICBpM2Mtb2Qtc2NsLWxvLXBl
cmlvZC1ucyA9IDw2MjA+Ow0KPiA+ICsgICAgIHNkYS10eC1ob2xkLW5zID0gPDEwPjsNCj4gPiAr
DQo+ID4gKyAgICAgbWN0cC1jb250cm9sbGVyOw0KPiA+ICsgICAgIGh1YkAweDcwIHsNCj4gDQo+
IFRoYXQncyBub3QgYSB2YWxpZCB1bml0IGFkZHJlc3MuDQo+IA0KPiANCldpbGwgdXBkYXRlIGlu
IHRoZSBuZXh0IHBhdGNoLiBUaGFua3MuDQoNCj4gPiArICAgICAgICAgICAgIHJlZyA9IDwweDcw
IDB4M2MwIDB4MDA3MDAwMDA+Ow0KPiA+ICsgICAgICAgICAgICAgY3AwLWxkby1lbiA9ICJlbmFi
bGVkIjsNCj4gPiArICAgICAgICAgICAgIGNwMS1sZG8tZW4gPSAiZW5hYmxlZCI7DQo+ID4gKyAg
ICAgICAgICAgICBjcDAtbGRvLXZvbHQgPSAiMS4yViI7DQo+ID4gKyAgICAgICAgICAgICBjcDEt
bGRvLXZvbHQgPSAiMS4yViI7DQo+ID4gKyAgICAgICAgICAgICB0cDAxNDUtbGRvLWVuID0gImVu
YWJsZWQiOw0KPiA+ICsgICAgICAgICAgICAgdHAyMzY3LWxkby1lbiA9ICJlbmFibGVkIjsNCj4g
PiArICAgICAgICAgICAgIHRwMDE0NS1sZG8tdm9sdCA9ICIxLjJWIjsNCj4gPiArICAgICAgICAg
ICAgIHRwMjM2Ny1sZG8tdm9sdCA9ICIxLjJWIjsNCj4gPiArICAgICAgICAgICAgIHRwMDE0NS1w
dWxsdXAgPSAiMmsiOw0KPiA+ICsgICAgICAgICAgICAgdHAyMzY3LXB1bGx1cCA9ICIyayI7DQo+
IA0KPiBXaGVyZSBhcmUgYmluZGluZ3MgZm9yIGFsbCB0aGlzPw0KPiANClRoZSBiaW5kaW5ncyBh
cmUgZnJvbSB0aGUgZm9sbG93aW5nIGJpbmRpbmcgZG9jdW1lbnQuDQpodHRwczovL3BhdGNod29y
ay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtaTNjL3BhdGNoLzIwMjQwMjE3MTMxNDEyLjQxNDU1
MDYtMS1zdGV2ZW4ubml1LnVqQHJlbmVzYXMuY29tLw0K

