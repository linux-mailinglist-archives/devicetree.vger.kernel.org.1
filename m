Return-Path: <devicetree+bounces-68345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EBE58CBF6D
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 12:46:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 72F181C21626
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 10:46:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36730811FB;
	Wed, 22 May 2024 10:46:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nxp.com header.i=@nxp.com header.b="UGlE+iGI"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (mail-ve1eur01on2088.outbound.protection.outlook.com [40.107.14.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0F7C79B9D;
	Wed, 22 May 2024 10:46:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.14.88
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716374776; cv=fail; b=UFuhQ84OhIAG/FDPPPxd6HLoDrYOCiJZR2Zy3fi4CWxGb+h/h0jpB00H5MK0ZJX3CH0Ai+z5hZ3hKxgxFGXHH6a/prlFml2bUZcsGJK8rTFxvFJ2PENW+Ngc9Xwhx0Tiz9Y9S02kKJPTARhI0XUr7cqgSDAUY+s3Ermi+cDARy4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716374776; c=relaxed/simple;
	bh=m00byQLAA2YFDmO681AR8TDN/Pyul8nhyJOBuT8IhSs=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=rp2qz2HX0ojEtoTgArEM3SeaEDztaN+FzHUNmTsaLlC9BWscvRHxmYK4zTQGh+iqUeKpSsc4CLBoR6oThWIy2fd9mevx/x7f4mJ3P0k8mYFmhDvbFCV4LIrAVtDCoZF3S6Vnu1Z3flkla3s6EtzHX06ZqNcaWfSlGb44f52SKw0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (1024-bit key) header.d=nxp.com header.i=@nxp.com header.b=UGlE+iGI; arc=fail smtp.client-ip=40.107.14.88
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DJRP7UPi0JtnP2vs7zRdM2v362ZgVwU3pTOJsI2EpzFNr6+RnQ1krESLuO/FkzpfN72Hf6CQqQMycWZH9TFMxDOtHNBaVbJ/F/gmPzHidYQoVsrh9o7JIJWQCtv0ibQWTm9Wb6Ffd8VflPbNt0rK2SUikzDYC9VcXEuZtiYLb1eriQtxATpVURoYxVBCy0aMQB2+avsRXlEjraaIi8v8InpdqD9x8D0NcmKBeBHG8NTo6T0xb/KUPpS2pAn3rR9mG5yc7hfknYQ5obIrG+J/g6506fDTvRBYYbK9SmxVbaJTewOj1OkRiH5APHZFIEo6R52cfTLYkcVjnZQjzxnS4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m00byQLAA2YFDmO681AR8TDN/Pyul8nhyJOBuT8IhSs=;
 b=lpdHUx6NU8rw0MEeV362m01DIXZvKN2/H7qjn5mxVnypJJa72PmS2n8hudRqh7YKjHVuaR/Qnpt8tkTEPflmawqj6gUH3e/lcAmRy18qS89mxn/Zq4hMhqgpUydNIlRGCoKen3bGcFBmo9bFyl2Bh6j8lp0xV0ZZ8sbCXsG2LNfb0pfHkE7PKeiXdkdO0id6Zw8XlHbhOfitIPQ4Ikp/NmIxtIjArLC/dWGbbHMa83aN0WFfMuK/cKunm4/fgbESfJ7tnq11l/TrasSz3E97puSbKW+282LQkLMFvYAf5KnHPfcVt6I5QAaNDKK8iULHyakKqJrJQ5VabHUb/znM8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m00byQLAA2YFDmO681AR8TDN/Pyul8nhyJOBuT8IhSs=;
 b=UGlE+iGIh4RfqObimAAXEkFVcHW1KkAi3/d9S6wKxLqUCnxj6Ubgpmv/tzOe2+aGFW1Dh9vDgQkWSPU/iHYblDD68WruQCIxzBYMioXPGNDvyzMBgwIZ3Ld6wm6zMmIW/WUnQqmzzX+7D1rODkoem7yRuUJo8g3u511YL15YcVA=
Received: from AM9PR04MB8604.eurprd04.prod.outlook.com (2603:10a6:20b:43b::21)
 by GV1PR04MB10305.eurprd04.prod.outlook.com (2603:10a6:150:1d2::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.36; Wed, 22 May
 2024 10:46:10 +0000
Received: from AM9PR04MB8604.eurprd04.prod.outlook.com
 ([fe80::e751:223e:aa3d:5827]) by AM9PR04MB8604.eurprd04.prod.outlook.com
 ([fe80::e751:223e:aa3d:5827%4]) with mapi id 15.20.7587.035; Wed, 22 May 2024
 10:46:10 +0000
From: Pankaj Gupta <pankaj.gupta@nxp.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>
CC: Jonathan Corbet <corbet@lwn.net>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
	<conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
	<s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, "linux-doc@vger.kernel.org"
	<linux-doc@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "imx@lists.linux.dev" <imx@lists.linux.dev>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: RE: RE: [EXT] Re: [PATCH 4/4] firmware: imx: add driver for NXP
 EdgeLock Enclave
Thread-Topic: RE: RE: [EXT] Re: [PATCH 4/4] firmware: imx: add driver for NXP
 EdgeLock Enclave
Thread-Index:
 AQHaot4x2Q7iXJQ+y0OtihGrgo/RRLGVAgoAgAAB0RCACwC9AIAABZhggAGkegCAAVbvQA==
Date: Wed, 22 May 2024 10:46:10 +0000
Message-ID:
 <AM9PR04MB8604836B3211B6D74878D04795EB2@AM9PR04MB8604.eurprd04.prod.outlook.com>
References: <20240510-imx-se-if-v1-0-27c5a674916d@nxp.com>
 <20240510-imx-se-if-v1-4-27c5a674916d@nxp.com>
 <20240513-pretty-quartz-lemming-14d9ea-mkl@pengutronix.de>
 <AM9PR04MB86044FBF697375EB2C8D285B95EE2@AM9PR04MB8604.eurprd04.prod.outlook.com>
 <20240520-accurate-intrepid-kestrel-8eb361-mkl@pengutronix.de>
 <AM9PR04MB86045BD682A0362A7D463C5A95EA2@AM9PR04MB8604.eurprd04.prod.outlook.com>
 <20240521-handsome-hairy-bullfrog-d2faba-mkl@pengutronix.de>
In-Reply-To: <20240521-handsome-hairy-bullfrog-d2faba-mkl@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM9PR04MB8604:EE_|GV1PR04MB10305:EE_
x-ms-office365-filtering-correlation-id: 57c7d14f-212e-4d96-8906-08dc7a4c6495
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230031|376005|1800799015|7416005|366007|38070700009;
x-microsoft-antispam-message-info:
 =?utf-8?B?Vlcrd2ZDYWdBTzdRWXV2Rml4MlJRT1QzL1JRM1phNjFtTWhnL3gvUjJIN25j?=
 =?utf-8?B?czRNZUJzVUluQ3FNa24waTFRRWpTTTZTNzVwOG9mbElFTkorRWl0ZENQK3g2?=
 =?utf-8?B?RkhnN0FRNjREVDhhQ25uWWYvZldsYUsxQ3pRRVRiV1grMTJiS2pQSmZNeit6?=
 =?utf-8?B?bUJIZVpwbloxMW5BMTRkWElSbE5tRDBQdGFoazV3NE16dFhDQytVc0N6bmlF?=
 =?utf-8?B?ODZTb3ByUWdNVjZvbkpybzZpNmUvbnJ4QUxxNDJMRVUvUllrQTA0Ri9zR3Bz?=
 =?utf-8?B?TmRWaXZDNlUya2srQlJzbm0xV0hGeVNZSUxRZElJbkx0UW5zeDhxbkZLVU1u?=
 =?utf-8?B?VFVBd0pPVy9IMDRYNDk4aXpUdE9uOGVTVUdBbE9ZR1Iwc1JXem5zR285TWJq?=
 =?utf-8?B?Z0RaUnNobHhTZGtGR2pxOUxHbS9DMFBvNHdGOW5naThkWG1jaXBBUm9xemVB?=
 =?utf-8?B?Z25pSFphVjNtYVYxODZYM05zTFA1K3ZzQnU4VkpwOStPcFdyaHBndDhHQ0or?=
 =?utf-8?B?Rk1PUmZaeXZQcDRScHA2RkIyK0RRUVNXYUFSMUMwZjg1Mi82VkZaSEppMmd6?=
 =?utf-8?B?K1NMcmsxZFNWbE1la2RIUStkYXh1WG8xOXR2S1R4MEFkWnRBYmV6SDdJZXFi?=
 =?utf-8?B?c0l5RFJPYWZMK2tDblBqUytuL2ZNYWdkTXB1V2x0QTJBY2VwRmJzcFJzUnRY?=
 =?utf-8?B?VlZKdUZRdVBSbnVvS1kySjJGbmJ3ZUxyK25nTDRwSHVxM25mZlJtd29Zb3My?=
 =?utf-8?B?bzFXeHVyYXJuMGxCTkVmQ1RlMC9hN2RyL2RyMzBObUdlei9yZ1ljNUg5MDZQ?=
 =?utf-8?B?NTlxakw3YW5aUWNjdVpJYTgzSnhrTHhYdWN6S1hCUGlvSUUyOE85THhqTHhm?=
 =?utf-8?B?bE01RVc3dWZhWS9RQWVWQlhKZk1VZ0VmUUE4bVZEZUN6UGR5TzdreG9za0tO?=
 =?utf-8?B?cjI1SUxsNEo5TFFUZk95ajFCc2lMN1poZU5VdUdFWFFxWHh0NXJ0b1RwQVVN?=
 =?utf-8?B?UUFUSnNwaW9vTm1BUlVDRnFWVGRJK0VUbkY3OTFRRkhKNExVblBHTmNCQTM2?=
 =?utf-8?B?OGtudXVaUVZhSlZDYklsalVHZVlKU2xWNjFCWmtzSCtDT1djSzlLQmZ5YWhs?=
 =?utf-8?B?N1dhcGxwZVNBVkJob1ZQbm9zSEJxd2dFeGNqWUg3aThXMkZHdXYvYnRPMWZM?=
 =?utf-8?B?YzJqNzZpZUwxdGNYc3JEak03eUt4eVBRcll1eUk5dWNFV0pQVG5UTXR3ZjhL?=
 =?utf-8?B?OXAzMVA3K3ZyY2g5Q2E2ZGVMaFFYWFRndjZZMVNET2JMWG5VOEVzSXY5QUo4?=
 =?utf-8?B?d043RzA5S0lHRHBxTkxERWNibERac0pUUnJHc2tmWGJaSWp1UFhKZmw1L3FG?=
 =?utf-8?B?bjRVekVKMGlJM2FXTHA5dTdkVFo4ekgyWnY4YUIyYWNCU3EzUTg1c1YrSzdz?=
 =?utf-8?B?d0VubjFnUVdPUmxDZFowcmlHM0pMcVB0emxoSmZUbS9KdElTdlFyT3Q5TjNR?=
 =?utf-8?B?c0JsREYwc2RqTUN2a1dZd2dCNmRRdC9Ud3B4eXhDWldvMWQwNlhhanBaWnNT?=
 =?utf-8?B?czk4b0R6eFhuTjRBOFd6elpheW1xMmxYNG8wV0lKTmNrSmZYQnZnb2JLdnho?=
 =?utf-8?B?em5FSDl3R2txeVNRYjNab3JEUkRpemdwRVRLNVhkWEtnWXdUQVQybWl0NUsr?=
 =?utf-8?B?S2EzdXExbHQrVHpQWlV5L0ZPMEhEdDF2b1RVUmFtdXZlMVhNVFBnYXZnPT0=?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8604.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(7416005)(366007)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?QXlPSFdZNnVmYjNkQ2FEWGw5Mms5TG1qL3FkWFNudWRDaEVXT3d0SjNjWURz?=
 =?utf-8?B?UkFYWXQ5STlEUzYyOFp4WnYxSEFQOU0ybFdzem9IMWZDeUttSmM4N3FBRkQy?=
 =?utf-8?B?WjNDUUtSTjM4d3BaTWo4cW1ZSThNV1E4UXJDQVpicG1hcG9veHlFd1JJOFVJ?=
 =?utf-8?B?NkpnSFE1MkZnSEtKSi96RXVaSHJEU0pOUjFYcTI4QmxQT1FhMGVCNmwwbFBZ?=
 =?utf-8?B?b0h5MWtMOUxmakJISlgxRWpqa01rOWd5UDNPTThWc1ZQZWdDZkhTdmtxMFIr?=
 =?utf-8?B?bTdDRUpyc1EzUWl1RnM1akFZaHpoNG1XeVVLeHRaS2w4RW5MYnpBSDJuVDJI?=
 =?utf-8?B?U25KL3lTK3ZtTnhxRXBRS0tUUWcvQlFTcjlJVEdxdFZBR01aZ3FPdVNobStL?=
 =?utf-8?B?NER3enVzVS9UaGtTeHVUQ0s0djdnWXBraUZMUmJWR0RkZGJVTnJ0U2lMRWpH?=
 =?utf-8?B?akJySEFpVXB2R0RqRVJkN2ZEcGdTcXpCVm5sU3dqNitTdFNvcDMvNFpDMWxN?=
 =?utf-8?B?ZjFCOWpsZUZqQ1p5UEU2akszV1p5RGx5aVVpa0hhQkJDTzZEUllIZ3F2Nm1i?=
 =?utf-8?B?QnRTM2lOQk5OaDl2MTZpd3JjMERkTGM3QzVyMHhPT3B3U21pYm4wMlYwSjEv?=
 =?utf-8?B?VStqU0hMdWVFQ01GM3piTHYxREVSNmlMcXlFNHRlTFl2WEZtemQ3aUNBdHV3?=
 =?utf-8?B?M3ZHVHQ4M2FXeFRGSGl5LzJKSlFyZkZuc2tEdE9zamk0SDFiRUVLYWI4VFZY?=
 =?utf-8?B?REVpM2w3YlAwREhTN2NDZTkwQTlzUVU1TE4ySExRWERqak5XMVhaRkZubDRB?=
 =?utf-8?B?blNWSldRZ2ZwS3RFOENjSlE5OERBdlpla2pURTFNV1RhbElIamorVE92Y1F5?=
 =?utf-8?B?N29UOWt0YVpsaTRtV2xaMUxiQkpWUzMrcGJ4dGFJSWtjTlcvZmVvd3gwaFNr?=
 =?utf-8?B?Nk1IL0dBem5IWE10RmxLZSsveUtiR3dDb2lkOGMrZng3NkFtZHZRQlkzVExC?=
 =?utf-8?B?UmtEQzl4UmJxNHZIc3ptZ3d4TFZheE5LclhxVmdNNWpaQy9XallkbC8zN29B?=
 =?utf-8?B?T05XRHNYRlIzQVI1bGVST0NjT2hUUTVCMGw0KzR6R3RzcjUyell4d0o2WjFn?=
 =?utf-8?B?eCtCOWdFYW1DUlF4Z2ZPSUhFeGtxZGl6ZGczL1pmUEtKcVZ1ZklqSTFzSWxE?=
 =?utf-8?B?MnFEYVdST0MrckhrL1FUWlNaaFBKZm1YMVFvVzlhYXBscUZLVWlFaGZKWkxp?=
 =?utf-8?B?YnVhVDVoNnM3d3IwMmQxbWpyOXc2cnlhNlZ4QzhqcjZGNXFyUnpLWWNXNjZP?=
 =?utf-8?B?RnJJelpaVUVIaUpneEp4UHk0NldFS0ZBTTVrWVFUcUtiK0pWZ3g2YTl2ekVX?=
 =?utf-8?B?d0hwNU5VbmxiVE9PTHF0RnZZaXdCU21CL2ZFSmhRSEQycjA0SWl3NW52emJN?=
 =?utf-8?B?U2M5YWdkTHJEbmpIaGFSeE1MbCtRcHRWNFVQd3lWVk1TR2tqM202T3FrL1dl?=
 =?utf-8?B?bi96OG9pME5NdndhNXNIQVVBN01OWGFHd3ArYnFOZGVtcjJPd29pV05YaTlX?=
 =?utf-8?B?YkRoSk5oaEc0ajE1QkxiSlRla052UXIybFpxMnRzeXRCajlrWWk0NWdyc0Zt?=
 =?utf-8?B?RFBwUysrUE5oVU5Vcjdpc0Y1SExaR2pITjJ6OEs4Zk4zODF1TzJqNTRVSUQy?=
 =?utf-8?B?UmdKSUh1dTA4dXZDRW9MZ0cyZTR1aDZ0L0NFSjh1TnVIWUhIUzV3Y0ExeVVr?=
 =?utf-8?B?Y090SjBONFVuWERHM042alFlb0V1RFVRNStyNnN3emhyRytyV3NxanlGWkhI?=
 =?utf-8?B?ZUxxN0kwTWZTNjRlY0dXL2VJZlNYVDBPYVhSbWxlOWRQWVFZMDRiSHRwQXRk?=
 =?utf-8?B?VHhXTTUxSnE2cmtGcFdIL1JQb1NKRjNGdWgvRG0vbCtybXpLUkhMbUdSTytF?=
 =?utf-8?B?VUVRNTQ1YVpOOGp5WmE1NUViZHg1UWFaYkZzKzVocHhyM3M4YTBXZTk2V1dQ?=
 =?utf-8?B?SnlHTXhvczhWRlRnWTB6czg1KzdBQXIvRGNNMGhMeFZ6UGs2c3lrT2prK1Yy?=
 =?utf-8?B?WldoZEg0UjJXVG5aKzhRanJaeVVObk1UdkRmdFdiRUVueWgwU3AvZVFHUzY0?=
 =?utf-8?Q?67Hws0JJbIab0UvyO/sr7NcJO?=
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
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8604.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 57c7d14f-212e-4d96-8906-08dc7a4c6495
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2024 10:46:10.2784
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aUXlai/Q6uFQ3VCqmpYmfT/EVDr+b53tbWjNQj6wd/+Z3rSfXR3lL5QMIiUN7luW89J3Ed36AtAImEU0adZbpg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR04MB10305

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTWFyYyBLbGVpbmUtQnVk
ZGUgPG1rbEBwZW5ndXRyb25peC5kZT4NCj4gU2VudDogVHVlc2RheSwgTWF5IDIxLCAyMDI0IDU6
NTcgUE0NCj4gVG86IFBhbmthaiBHdXB0YSA8cGFua2FqLmd1cHRhQG54cC5jb20+DQo+IENjOiBK
b25hdGhhbiBDb3JiZXQgPGNvcmJldEBsd24ubmV0PjsgUm9iIEhlcnJpbmcgPHJvYmgrZHRAa2Vy
bmVsLm9yZz47DQo+IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2krZHRA
bGluYXJvLm9yZz47IENvbm9yIERvb2xleQ0KPiA8Y29ub3IrZHRAa2VybmVsLm9yZz47IFNoYXdu
IEd1byA8c2hhd25ndW9Aa2VybmVsLm9yZz47IFNhc2NoYSBIYXVlcg0KPiA8cy5oYXVlckBwZW5n
dXRyb25peC5kZT47IFBlbmd1dHJvbml4IEtlcm5lbCBUZWFtDQo+IDxrZXJuZWxAcGVuZ3V0cm9u
aXguZGU+OyBGYWJpbyBFc3RldmFtIDxmZXN0ZXZhbUBnbWFpbC5jb20+OyBsaW51eC0NCj4gZG9j
QHZnZXIua2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsNCj4gZGV2aWNl
dHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGlteEBsaXN0cy5saW51eC5kZXY7IGxpbnV4LWFybS0NCj4g
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcNCj4gU3ViamVjdDogUmU6IFJFOiBSRTogW0VYVF0g
UmU6IFtQQVRDSCA0LzRdIGZpcm13YXJlOiBpbXg6IGFkZCBkcml2ZXIgZm9yIE5YUA0KPiBFZGdl
TG9jayBFbmNsYXZlDQo+IA0KPiBPbiAyMS4wNS4yMDI0IDExOjU3OjA0LCBQYW5rYWogR3VwdGEg
d3JvdGU6DQo+ID4gPiA+ID4gPiArDQo+ID4gPiA+ID4gPiArCW1lbXNldChzX2luZm8sIDB4MCwg
c2l6ZW9mKCpzX2luZm8pKTsNCj4gPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiA+ICsJaWYgKHByaXYt
Pm1lbV9wb29sX25hbWUpDQo+ID4gPiA+ID4gPiArCQlnZXRfaW5mb19kYXRhID0gZ2V0X3BoeV9i
dWZfbWVtX3Bvb2woZGV2LA0KPiA+ID4gPiA+ID4gKwkJCQkJCSAgICAgcHJpdi0NCj4gPm1lbV9w
b29sX25hbWUsDQo+ID4gPiA+ID4gPiArCQkJCQkJICAgICAmZ2V0X2luZm9fYWRkciwNCj4gPiA+
ID4gPiA+ICsNCj4gRUxFX0dFVF9JTkZPX0JVRkZfU1opOw0KPiA+ID4gPiA+ID4gKwllbHNlDQo+
ID4gPiA+ID4gPiArCQlnZXRfaW5mb19kYXRhID0gZG1hbV9hbGxvY19jb2hlcmVudChkZXYsDQo+
ID4gPiA+ID4gPiArDQo+IEVMRV9HRVRfSU5GT19CVUZGX1NaLA0KPiA+ID4gPiA+ID4gKwkJCQkJ
CSAgICAmZ2V0X2luZm9fYWRkciwNCj4gPiA+ID4gPiA+ICsJCQkJCQkgICAgR0ZQX0tFUk5FTCk7
DQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBJdCdzIGJldHRlciBzdHlsZSB0byBtb3ZlIHRoZSBpbml0
IG9mIHRoZSBkbWEgbWVtb3J5IGludG8gdGhlDQo+ID4gPiA+ID4gcHJvYmUgZnVuY3Rpb24uDQo+
ID4gPiA+DQo+ID4gPiA+IEl0IGlzIG5vdCBETUEgaW5pdC4gSXQgaXMgRE1BIGFsbG9jYXRpb24u
DQo+ID4gPg0KPiA+ID4gSXQncyBiZXR0ZXIgc3R5bGUgdG8gbW92ZSB0aGUgYWxsb2NhdGlvbiBv
ZiB0aGUgZG1hIG1lbW9yeSBpbnRvIHRoZQ0KPiA+ID4gcHJvYmUgZnVuY3Rpb24uDQo+ID4gPg0K
PiA+IFRoZSBidWZmZXIgJ2dldF9pbmZvX2RhdGEnLCBpcyBhbGxvY2F0ZWQgYW5kIGZyZWVkIHdp
dGhpbiB0aGlzIGZ1bmN0aW9uLg0KPiA+IFRoaXMgQVBJIGlzIGNhbGxlZCBtdWx0aXBsZSB0aW1l
czoNCj4gPiAtIGFzIHBhcnQgb2YgcHJvYmUuDQo+ID4gLSBhcyBwYXJ0IG9mIHN1c3BlbmQvcmVz
dW1lLg0KPiA+DQo+ID4gV2h5IHRvIGtlZXAgdGhlIG1lbW9yeSByZXRhaW5lZD8NCj4gDQo+IEkg
c2VlLiBUaGVuIHdoeSBkbyB5b3UgYWxsb2NhdGUgd2l0aCBkbWFtX2FsbG9jX2NvaGVyZW50KCk/
DQoNCkJlY2F1c2UgdGhpcyBtZW1vcnkgaXMgd3JpdHRlbiBieSBGaXJtd2FyZS4gSXQgc2hvdWxk
IGJlIGVpdGhlciBmcm9tIFNSQU0NCk9yIGZyb20gcmVzZXJ2ZWQgbWVtb3J5IHJlZ2lvbiwgYWNj
ZXNzaWJsZSB0byBGVy4NCg0KPiANCj4gWy4uLl0NCj4gDQo+ID4gPiA+ID4gPiAraW50IGlteF9l
bGVfbXNnX3NlbmQoc3RydWN0IHNlX2lmX3ByaXYgKnByaXYsIHZvaWQgKm1zc2cpIHsNCj4gPiA+
ID4gPiA+ICsJYm9vbCBpc19jbWRfbG9ja190b2JlX3Rha2VuID0gZmFsc2U7DQo+ID4gPiA+ID4g
PiArCWludCBlcnI7DQo+ID4gPiA+ID4gPiArDQo+ID4gPiA+ID4gPiArCWlmICghcHJpdi0+d2Fp
dGluZ19yc3BfZGV2IHx8IHByaXYtPm5vX2Rldl9jdHhfdXNlZCkgew0KPiA+ID4gPiA+ID4gKwkJ
aXNfY21kX2xvY2tfdG9iZV90YWtlbiA9IHRydWU7DQo+ID4gPiA+ID4gPiArCQltdXRleF9sb2Nr
KCZwcml2LT5zZV9pZl9jbWRfbG9jayk7DQo+ID4gPiA+ID4gPiArCX0NCj4gPiA+ID4gPiA+ICsJ
c2NvcGVkX2d1YXJkKG11dGV4LCAmcHJpdi0+c2VfaWZfbG9jayk7DQo+ID4gPiA+ID4gPiArDQo+
ID4gPiA+ID4gPiArCWVyciA9IG1ib3hfc2VuZF9tZXNzYWdlKHByaXYtPnR4X2NoYW4sIG1zc2cp
Ow0KPiA+ID4gPiA+ID4gKwlpZiAoZXJyIDwgMCkgew0KPiA+ID4gPiA+ID4gKwkJZGV2X2Vycihw
cml2LT5kZXYsICJFcnJvcjogbWJveF9zZW5kX21lc3NhZ2UNCj4gZmFpbHVyZS5cbiIpOw0KPiA+
ID4gPiA+ID4gKwkJaWYgKGlzX2NtZF9sb2NrX3RvYmVfdGFrZW4pDQo+ID4gPiA+ID4gPiArCQkJ
bXV0ZXhfdW5sb2NrKCZwcml2LT5zZV9pZl9jbWRfbG9jayk7DQo+ID4gPiA+ID4NCj4gPiA+ID4g
PiBPbmx5IGRyb3BwaW5nIHRoZSBsb2NrIGluIGNhc2Ugb2YgZmFpbHVyZSBkb2Vzbid0IGxvb2sg
cmlnaHQgdG8gbWUuDQo+ID4gPiA+DQo+ID4gPiA+IFRoZSBjYWxsZXJzIG9mIHRoaXMgZnVuY3Rp
b24sIHRha2VzIHRoZSBleGVjdXRpb24gZmxvdyB0byBhYm9ydGluZw0KPiA+ID4gPiB0aGUgb3Bl
cmF0aW9uIG9uIGdldHRpbmcgcmV0dXJuIGNvZGUgPCAwLiBObyBuZXh0IGFjdGlvbiBpcw0KPiA+
ID4gPiBleHBlY3RlZCB1bmRlciB0aGlzIGFib3J0ZWQgb3BlcmF0aW9uLiBVbmxvY2tpbmcgdGhl
IGxvY2sgaGVyZSBpcw0KPiA+ID4gPiBub3QgYW4gaXNzdWUNCj4gPiA+ID4NCj4gPiA+ID4gPiBJ
dCBzZWVtcyB5b3Ugc2hvdWxkIGJldHRlciBtb3ZlIHRoZSBsb2NrIHRvIHRoZSBjYWxsZXJzIG9m
IHRoaXMgZnVuY3Rpb24uDQo+ID4gPiA+DQo+ID4gPiA+IEFjY2VwdGVkLCBhbmQgbW92ZWQgdG8g
dGhlIGNhbGxlciBvZiB0aGUgZnVuY3Rpb24gZm9yOg0KPiA+ID4gPiAgICAtIGxvY2tpbmcNCj4g
PiA+ID4gICAgLSB1bmxvY2tpbmcgaW4gY2FzZSBvZiBlcnJvci4NCj4gPiA+ID4NCj4gPiA+ID4g
VW5sb2NraW5nIGluIHRoZSByZWFkIEFQSSwgb25jZSByZXNwb25zZSBpcyBzdWNjZXNzZnVsbHkg
cmVjZWl2ZWQNCj4gPiA+ID4gYW5kIHJlYWQuDQo+ID4gPg0KPiA+ID4gQSBiZXR0ZXIgZGVzaWdu
IHdvdWxkIGJlOiBpbXhfZWxlX21zZ19yY3YoKSBpbXhfZWxlX21zZ19zZW5kKCkgYXJlDQo+ID4g
PiBleHBlY3RlZCB0byBiZSBjYWxsZWQgbG9ja2VkLiBBZGQgbG9ja2RlcF9hc3NlcnRfaGVsZCgp
IHRvIHRoZXNlDQo+ID4gPiBmdW5jdGlvbiB0byBkb2N1bWVudC9jaGVjayB0aGlzLg0KPiA+ID4N
Cj4gPiA+IFRoZSBjYWxsZXJzIG9mIGlteF9lbGVfbXNnX3JjdigpIGFuZCBpbXhfZWxlX21zZ19z
ZW5kKCkgaGF2ZSB0byB0YWtlDQo+ID4gPiBjYXJlIG9mIHRoZSBsb2NraW5nLg0KPiA+ID4NCj4g
PiA+IFsuLi5dDQo+ID4gPg0KPiA+IFRoZSBsb2NraW5nL3VubG9ja2luZyBvZiBzZV9pZl9jbWRf
bG9jaywgaXMgdGFrZW4gY2FyZSBieSB0aGUgY2FsbGVycyBvbmx5Og0KPiA+IC0gaW14X2VsZV9t
c2dfc2VuZF9yY3YgY2FsbHMgYm90aCB0aGUgZnVuY3Rpb25zOg0KPiA+ICAgLS1pbXhfZWxlX21z
Z19zZW5kLg0KPiA+ICAgLS1pbXhfZWxlX21zZ19yY3YuDQo+ID4NCj4gPiBCdXQgdGhlIGxvY2tk
ZXBfYXNzZXJ0X2hlbGQsIGNhbm5vdCBiZSBhZGRlZCB0byBpbXhfZWxlX21zZ19zZW5kLCBhcw0K
PiA+IGl0cyBhbm90aGVyIGNhbGxlciBmdW5jdGlvbiBpbXhfZWxlX21pc2NkZXZfbXNnX3NlbmQg
Y2FsbHMgaWYgZm9yDQo+ID4gc2VuZGluZzoNCj4gPiAgLS0tIGNvbW1hbmQgKGhlcmUgY29tbWFu
ZCBsb2NrIGlzIHRha2VuKS4NCj4gPiAgLS0tIHJlc3BvbnNlIHRvIGEgY29tbWFuZCAoaGVyZSBj
b21tYW5kIGxvY2sgaXMgbm90IHRha2VuKS4NCj4gDQo+IG1pc2NkZXYgaXMgYW5vdGhlciBwYXRj
aC4NCldpbGwgdHJ5IHRvIHNwbGl0IGl0Lg0KDQo+IA0KPiBCdXQgd2h5IGNhbid0IHlvdSB1c2Ug
dGhlIHNhbWUgbG9jayBpbiBpbXhfZWxlX21pc2NkZXZfbXNnX3NlbmQoKT8NClVzaW5nIHRoZSBz
YW1lIGxvY2sgInNlX2lmX2NtZF9sb2NrIiwgaW4gaW14X2VsZV9taXNjZGV2X21zZ19zZW5kLg0K
VGhpcyBmdW5jdGlvbiBpcyBjYWxsZWQgZnJvbSBmb3BzX3dyaXRlLiBUaGlzIGxvY2sgaXMgdGFr
ZW4gY29uZGl0aW9uYWxseSB0YWtlbiBkZXBlbmRpbmcgb24gdGhlIGtpbmQgb2YgbWVzc2FnZToN
Cg0KICAtLS0gTWVzc2FnZSBjb250YWluaW5nIGNvbW1hbmQgKGhlcmUgY29tbWFuZCBsb2NrIGlz
IHRha2VuKS4NCiAgLS0tIE1lc3NhZ2UgY29udGFpbmluZyByZXNwb25zZSB0byBhIGNvbW1hbmQg
KGhlcmUgY29tbWFuZCBsb2NrIGlzIG5vdCB0YWtlbikuDQoNCj4gDQo+IA0KPiA+ID4gPiA+ID4g
K3N0YXRpYyBjb25zdCBzdHJ1Y3QgaW14X3NlX25vZGVfaW5mb19saXN0IGlteDkzX2luZm8gPSB7
DQo+ID4gPiA+ID4gPiArCS5udW1fbXUgPSAxLA0KPiA+ID4gPiA+ID4gKwkuc29jX2lkID0gU09D
X0lEX09GX0lNWDkzLA0KPiA+ID4gPiA+ID4gKwkuaW5mbyA9IHsNCj4gPiA+ID4gPiA+ICsJCQl7
DQo+ID4gPiA+ID4gPiArCQkJCS5zZV9pZl9pZCA9IDIsDQo+ID4gPiA+ID4gPiArCQkJCS5zZV9p
Zl9kaWQgPSAzLA0KPiA+ID4gPiA+ID4gKwkJCQkubWF4X2Rldl9jdHggPSA0LA0KPiA+ID4gPiA+
ID4gKwkJCQkuY21kX3RhZyA9IDB4MTcsDQo+ID4gPiA+ID4gPiArCQkJCS5yc3BfdGFnID0gMHhl
MSwNCj4gPiA+ID4gPiA+ICsJCQkJLnN1Y2Nlc3NfdGFnID0gMHhkNiwNCj4gPiA+ID4gPiA+ICsJ
CQkJLmJhc2VfYXBpX3ZlciA9DQo+IE1FU1NBR0lOR19WRVJTSU9OXzYsDQo+ID4gPiA+ID4gPiAr
CQkJCS5md19hcGlfdmVyID0NCj4gTUVTU0FHSU5HX1ZFUlNJT05fNywNCj4gPiA+ID4gPiA+ICsJ
CQkJLnNlX25hbWUgPSAiaHNtMSIsDQo+ID4gPiA+ID4gPiArCQkJCS5tYm94X3R4X25hbWUgPSAi
dHgiLA0KPiA+ID4gPiA+ID4gKwkJCQkubWJveF9yeF9uYW1lID0gInJ4IiwNCj4gPiA+ID4gPiA+
ICsJCQkJLnJlc2VydmVkX2RtYV9yYW5nZXMgPSB0cnVlLA0KPiA+ID4gPiA+ID4gKwkJCQkuaW1l
bV9tZ210ID0gdHJ1ZSwNCj4gPiA+ID4gPiA+ICsJCQkJLnNvY19yZWdpc3RlciA9IHRydWUsDQo+
ID4gPiA+ID4gPiArCQkJfSwNCj4gPiA+ID4gPiA+ICsJfSwNCj4gPiA+ID4gPg0KPiA+ID4gPiA+
DQo+ID4gPiA+ID4gU29tZSAobW9zdD8pIG1lbWJlcnMgb2YgdGhlc2Ugc3RydWN0cyBhcmUgdGhl
IHNhbWUuIFdoeSBkbyB5b3UNCj4gPiA+ID4gPiBoYXZlIHRoaXMgYWJzdHJhY3Rpb24gaWYgaXQn
cyBub3QgbmVlZGVkIHJpZ2h0IG5vdz8NCj4gPiA+ID4NCj4gPiA+ID4gSXQgaXMgbmVlZGVkIGFz
IHRoZSB2YWx1ZXMgaXMgZGlmZmVyZW50IGZvciBkaWZmZXJlbnQgTlhQIFNvQw0KPiA+ID4gPiBj
b21wYXRpYmxlLiBJdCB3aWxsIGJlIG5lZWRlZCBmb3IgTlhQIGkuTVg5NSBwbGF0Zm9ybSwgd2hv
c2UgY29kZQ0KPiA+ID4gPiB3aWxsIGJlIG5leHQgaW4gcGlwZWxpbmUuDQo+ID4gPg0KPiA+ID4g
SG93IGRvZXMgdGhlIGlteDk1IC5pbmZvIGxvb2sgbGlrZT8NCj4gPiA+DQo+ID4gQ29waWVkIGZy
b20gdGhlIGludGVybmFsIHJlcG8uDQo+ID4gc3RhdGljIGNvbnN0IHN0cnVjdCBpbXhfaW5mb19s
aXN0IGlteDk1X2luZm8gPSB7DQo+ID4gICAgICAgICAubnVtX211ID0gNCwNCj4gPiAgICAgICAg
IC5zb2NfaWQgPSBTT0NfSURfT0ZfSU1YOTUsDQo+ID4gICAgICAgICAuaW5mbyA9IHsNCj4gPiAg
ICAgICAgICAgICAgICAgICAgICAgICB7DQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAuc29jZGV2ID0gZmFsc2UsDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAubXVfaWQgPSAyLA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLm11X2Rp
ZCA9IDMsDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAubWF4X2Rldl9jdHgg
PSA0LA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLmNtZF90YWcgPSAweDE3
LA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLnJzcF90YWcgPSAweGUxLA0K
PiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLnN1Y2Nlc3NfdGFnID0gMHhkNiwN
Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5iYXNlX2FwaV92ZXIgPSBNRVNT
QUdJTkdfVkVSU0lPTl82LA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLmZ3
X2FwaV92ZXIgPSBNRVNTQUdJTkdfVkVSU0lPTl83LA0KPiA+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgLnNlX25hbWUgPSAiaHNtMSIsDQo+ID4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAubWJveF90eF9uYW1lID0gInR4IiwNCj4gPiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIC5tYm94X3J4X25hbWUgPSAicngiLA0KPiA+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgLnBvb2xfbmFtZSA9IE5VTEwsDQo+ID4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAucmVzZXJ2ZWRfZG1hX3JhbmdlcyA9IGZhbHNlLA0KPiA+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgLmluaXRfZncgPSB0cnVlLA0KPiA+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgLnYyeF9zdGF0ZV9jaGVjayA9IHRydWUsDQo+ID4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAuc3RhcnRfcm5nID0gZWxlX3N0YXJ0X3JuZywNCj4g
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5lbmFibGVfZWxlX3RybmcgPSB0cnVl
LA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLmltZW1fbWdtdCA9IGZhbHNl
LA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLm11X2J1ZmZfc2l6ZSA9IDAs
DQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAuZndfbmFtZV9pbl9yZnMgPSBO
VUxMLA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgIH0sDQo+ID4gICAgICAgICAgICAgICAg
ICAgICAgICAgew0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLnNvY2RldiA9
IGZhbHNlLA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLm11X2lkID0gMCwN
Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5tdV9kaWQgPSAwLA0KPiA+ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLm1heF9kZXZfY3R4ID0gMCwNCj4gPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5jbWRfdGFnID0gMHgxNywNCj4gPiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIC5yc3BfdGFnID0gMHhlMSwNCj4gPiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIC5zdWNjZXNzX3RhZyA9IDB4ZDYsDQo+ID4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAuYmFzZV9hcGlfdmVyID0gMHgyLA0KPiA+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgLmZ3X2FwaV92ZXIgPSAweDIsDQo+ID4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAuc2VfbmFtZSA9ICJ2MnhfZGJnIiwNCj4gPiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIC5wb29sX25hbWUgPSBOVUxMLA0KPiA+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgLm1ib3hfdHhfbmFtZSA9ICJ0eCIsDQo+ID4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAubWJveF9yeF9uYW1lID0gInJ4IiwNCj4gPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5yZXNlcnZlZF9kbWFfcmFuZ2VzID0gZmFsc2Us
DQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAuaW5pdF9mdyA9IGZhbHNlLA0K
PiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLnYyeF9zdGF0ZV9jaGVjayA9IHRy
dWUsDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAuc3RhcnRfcm5nID0gdjJ4
X3N0YXJ0X3JuZywNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5lbmFibGVf
ZWxlX3RybmcgPSBmYWxzZSwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5p
bWVtX21nbXQgPSBmYWxzZSwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5t
dV9idWZmX3NpemUgPSAwLA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLmZ3
X25hbWVfaW5fcmZzID0gTlVMTCwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICB9LA0KPiA+
ICAgICAgICAgICAgICAgICAgICAgICAgIHsNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIC5zb2NkZXYgPSBmYWxzZSwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIC5tdV9pZCA9IDQsDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAubXVf
ZGlkID0gMCwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5tYXhfZGV2X2N0
eCA9IDQsDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAuY21kX3RhZyA9IDB4
MTgsDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAucnNwX3RhZyA9IDB4ZTIs
DQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAuc3VjY2Vzc190YWcgPSAweGQ2
LA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLmJhc2VfYXBpX3ZlciA9IDB4
MiwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5md19hcGlfdmVyID0gMHgy
LA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLnNlX25hbWUgPSAidjJ4X3N2
MCIsDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAucG9vbF9uYW1lID0gTlVM
TCwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5tYm94X3R4X25hbWUgPSAi
dHgiLA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLm1ib3hfcnhfbmFtZSA9
ICJyeCIsDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAucmVzZXJ2ZWRfZG1h
X3JhbmdlcyA9IGZhbHNlLA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLmlu
aXRfZncgPSBmYWxzZSwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC52Mnhf
c3RhdGVfY2hlY2sgPSB0cnVlLA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
LnN0YXJ0X3JuZyA9IE5VTEwsDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAu
ZW5hYmxlX2VsZV90cm5nID0gZmFsc2UsDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAuaW1lbV9tZ210ID0gZmFsc2UsDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAubXVfYnVmZl9zaXplID0gMTYsDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAuZndfbmFtZV9pbl9yZnMgPSBOVUxMLA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAg
IH0sDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgew0KPiA+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgLnNvY2RldiA9IGZhbHNlLA0KPiA+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgLm11X2lkID0gNiwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIC5tdV9kaWQgPSAwLA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLm1h
eF9kZXZfY3R4ID0gNCwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5jbWRf
dGFnID0gMHgxYSwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5yc3BfdGFn
ID0gMHhlNCwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5zdWNjZXNzX3Rh
ZyA9IDB4ZDYsDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAuYmFzZV9hcGlf
dmVyID0gMHgyLA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLmZ3X2FwaV92
ZXIgPSAweDIsDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAuc2VfbmFtZSA9
ICJ2Mnhfc2hlIiwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5wb29sX25h
bWUgPSBOVUxMLA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLm1ib3hfdHhf
bmFtZSA9ICJ0eCIsDQo+ID4gCQkgICAubWJveF9yeF9uYW1lID0gInJ4IiwNCj4gPiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIC5yZXNlcnZlZF9kbWFfcmFuZ2VzID0gZmFsc2UsDQo+
ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAuaW5pdF9mdyA9IGZhbHNlLA0KPiA+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLnYyeF9zdGF0ZV9jaGVjayA9IHRydWUs
DQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAuc3RhcnRfcm5nID0gTlVMTCwN
Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5lbmFibGVfZWxlX3RybmcgPSBm
YWxzZSwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5pbWVtX21nbXQgPSBm
YWxzZSwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5tdV9idWZmX3NpemUg
PSAxNiwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5md19uYW1lX2luX3Jm
cyA9IE5VTEwsDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgfSwNCj4gPiAgICAgICAgICAg
ICAgICAgICAgICAgICB7DQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAuc29j
ZGV2ID0gZmFsc2UsDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAubXVfaWQg
PSA2LA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLm11X2RpZCA9IDAsDQo+
ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAubWF4X2Rldl9jdHggPSA0LA0KPiA+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLmNtZF90YWcgPSAweDFhLA0KPiA+ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLnJzcF90YWcgPSAweGU0LA0KPiA+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgLnN1Y2Nlc3NfdGFnID0gMHhkNiwNCj4gPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5iYXNlX2FwaV92ZXIgPSAweDIsDQo+ID4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAuZndfYXBpX3ZlciA9IDB4MiwNCj4gPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5zZV9uYW1lID0gInYyeF9zaGUiLA0KPiA+ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLnBvb2xfbmFtZSA9IE5VTEwsDQo+ID4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAubWJveF90eF9uYW1lID0gInR4IiwNCj4gPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5tYm94X3J4X25hbWUgPSAicngiLA0KPiA+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLnJlc2VydmVkX2RtYV9yYW5nZXMgPSBm
YWxzZSwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5pbml0X2Z3ID0gZmFs
c2UsDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAudjJ4X3N0YXRlX2NoZWNr
ID0gdHJ1ZSwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5zdGFydF9ybmcg
PSBOVUxMLA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLmVuYWJsZV9lbGVf
dHJuZyA9IGZhbHNlLA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLmltZW1f
bWdtdCA9IGZhbHNlLA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLm11X2J1
ZmZfc2l6ZSA9IDI1NiwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5md19u
YW1lX2luX3JmcyA9IE5VTEwsDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgfSwNCj4gPiAg
ICAgICAgIH0NCj4gPiB9Ow0KPiANCj4gSnVzdCBsb29raW5nIGF0IF9zb21lXywgdGhlIC5jbWRf
dGFnLCAucnNwX3RhZyBhbmQgLnN1Y2Nlc3NfdGFnIGxvb2sgdGhlDQo+IHNhbWUgZm9yIGFsbCBT
b0NzLg0KLmNtZF90YWcgJiAucnNwX3RhZyBpcyB2YXJ5aW5nIGZvciBlYWNoOiAuc2VfbmFtZSA9
ICJ2MnhfZGJnIiwgIC5zZV9uYW1lID0gInYyeF9zaGUiIGFuZCAuc2VfbmFtZSA9ICJ2Mnhfc3Yw
IiwNCg0KLnN1Y2Nlc3NfdGFnIGlzIGdvaW5nIHRvIGJlIGRpZmZlcmVudCBmb3IgaS5NWDhEWEwu
IEl0IHdpbGwgYmUgemVybyBmb3IgaS5NWDhEWEwsIGFzIGNvbXBhcmVkIHRvIGN1cnJlbnQgMHhE
NiwgZm9yIGkuTVg4VUxQLCA5MywgOTUNCg0KDQo+IA0KPiBbLi4uXQ0KPiANCj4gPiBDcmVhdGVk
IGEgc3RhdGljIHZhcmlhYmxlIGdfc29jX3JldiBpbiB0aGUgc2VfY3RybC5jLg0KPiA+IEFjY2Vw
dGVkIGFuZCB3aWxsIGNvcnJlY3QgaXQgaW4gdjIuDQo+ID4NCj4gPiA+DQo+ID4gPiA+ID4gPiAr
CWlmIChpbmZvX2xpc3QtPnNvY19yZXYpDQo+ID4gPiA+ID4gPiArCQlyZXR1cm4gZXJyOw0KPiA+
ID4gPiA+DQo+ID4gV2lsbCBjaGFuZ2UgdGhlIGFib3ZlIGNvbmRpdGlvbiB0byBnX3NvY19yZXYu
DQo+IA0KPiAiZ18iIGFzIGlzIGdsb2JhbD8gRG9uJ3QgZG8gdGhhdC4gVXNlIHlvdXIgcHJpdiEN
Clllcywgc29jX3JldiBjYW4gYmUgcHV0IHVuZGVyIHByaXYuDQpJdCBpcyBwcm9wb3NlZCBsaWtl
IHRoaXMgYXMgaXQgaXMgdXNlZCBvbmx5IG9uY2UsIHRoYXQgdG9vIGluIHRoaXMgZmlsZSBvbmx5
Lg0KDQpXaWxsIGRvIHRoaXMgaW4gVjIuDQo+IA0KPiBbLi4uXQ0KPiANCj4gPiA+ID4gPiA+ICsN
Cj4gPiA+ID4gPiA+ICsJaW5mb19saXN0LT5zb2NfcmV2ID0gc19pbmZvLnNvY19yZXY7DQo+ID4g
PiA+ID4gPiArDQo+ID4gPiA+ID4gPiArCWlmICghaW5mby0+c29jX3JlZ2lzdGVyKQ0KPiA+ID4g
PiA+ID4gKwkJcmV0dXJuIDA7DQo+ID4gPiA+ID4gPiArDQo+ID4gPiA+ID4gPiArCWF0dHIgPSBk
ZXZtX2t6YWxsb2MoZGV2LCBzaXplb2YoKmF0dHIpLCBHRlBfS0VSTkVMKTsNCj4gPiA+ID4gPiA+
ICsJaWYgKCFhdHRyKQ0KPiA+ID4gPiA+ID4gKwkJcmV0dXJuIC1FTk9NRU07DQo+ID4gPiA+ID4g
PiArDQo+ID4gPiA+ID4gPiArCWlmIChzX2luZm8ubWlub3JfdmVyKQ0KPiA+ID4gPiA+ID4gKwkJ
YXR0ci0+cmV2aXNpb24gPSBkZXZtX2thc3ByaW50ZihkZXYsIEdGUF9LRVJORUwsDQo+ICIleC4l
eCIsDQo+ID4gPiA+ID4gPiArCQkJCQkgICBzX2luZm8ubWFqb3JfdmVyLA0KPiA+ID4gPiA+ID4g
KwkJCQkJICAgc19pbmZvLm1pbm9yX3Zlcik7DQo+ID4gPiA+ID4gPiArCWVsc2UNCj4gPiA+ID4g
PiA+ICsJCWF0dHItPnJldmlzaW9uID0gZGV2bV9rYXNwcmludGYoZGV2LCBHRlBfS0VSTkVMLA0K
PiAiJXgiLA0KPiA+ID4gPiA+ID4gKwkJCQkJICAgc19pbmZvLm1ham9yX3Zlcik7DQo+ID4gPiA+
ID4gPiArDQo+ID4gPiA+ID4gPiArCXN3aXRjaCAoc19pbmZvLnNvY19pZCkgew0KPiA+ID4gPiA+
ID4gKwljYXNlIFNPQ19JRF9PRl9JTVg4VUxQOg0KPiA+ID4gPiA+ID4gKwkJYXR0ci0+c29jX2lk
ID0gZGV2bV9rYXNwcmludGYoZGV2LCBHRlBfS0VSTkVMLA0KPiA+ID4gPiA+ID4gKwkJCQkJICAg
ICAgImkuTVg4VUxQIik7DQo+ID4gPiA+ID4gPiArCQlicmVhazsNCj4gPiA+ID4gPiA+ICsJY2Fz
ZSBTT0NfSURfT0ZfSU1YOTM6DQo+ID4gPiA+ID4gPiArCQlhdHRyLT5zb2NfaWQgPSBkZXZtX2th
c3ByaW50ZihkZXYsIEdGUF9LRVJORUwsDQo+ID4gPiA+ID4gPiArCQkJCQkgICAgICAiaS5NWDkz
Iik7DQo+ID4gPiA+ID4gPiArCQlicmVhazsNCj4gPiA+ID4gPiA+ICsJfQ0KPiA+ID4gPiA+ID4g
Kw0KPiA+ID4gPiA+ID4gKwllcnIgPSBvZl9wcm9wZXJ0eV9yZWFkX3N0cmluZyhvZl9yb290LCAi
bW9kZWwiLA0KPiA+ID4gPiA+ID4gKwkJCQkgICAgICAmYXR0ci0+bWFjaGluZSk7DQo+ID4gPiA+
ID4gPiArCWlmIChlcnIpIHsNCj4gPiA+ID4gPiA+ICsJCWRldm1fa2ZyZWUoZGV2LCBhdHRyKTsN
Cj4gPiA+ID4gPg0KPiA+ID4gPiA+IFdoeSBkbyB5b3UgZG8gYSBtYW51YWwgY2xlYW51cCBvZiBk
ZXZtIG1hbmFnZWQgcmVzb3VyY2VzPyBTYW1lDQo+ID4gPiA+ID4gYXBwbGllcyB0byB0aGUgb3Ro
ZXIgZGV2bSBtYW5hZ2VkIHJlc291cmNlcywgdG9vLg0KPiA+ID4gPiA+DQo+ID4gPiA+IFVzZWQg
ZGV2bSBtYW5hZ2VkIG1lbW9yeSwgYXMgdGhpcyBmdW5jdGlvbiBpcyBjYWxsZWQgYXMgcGFydCBw
cm9iZS4NCj4gPiA+ID4gUG9zdCBkZXZpY2UgcmVnaXN0cmF0aW9uLCB0aGlzIGRldm0gbWFuYWdl
ZCBtZW1vcnkgaXMNCj4gPiA+ID4gdW4tbmVjZXNzYXJpbHkgYmxvY2tlZC4gSXQgaXMgYmV0dGVy
IHRvIHJlbGVhc2UgaXQgYXMgcGFydCBvZg0KPiA+ID4gPiBjbGVhbi11cCwgdW5kZXIgdGhpcyBm
dW5jdGlvbiBvbmx5Lg0KPiA+ID4NCj4gPiA+IFdoeSBkbyB5b3UgYWxsb2NhdGUgdGhlIG1lbW9y
eSB3aXRoIGRldm0gaW4gdGhlIGZpcnN0IHBsYWNlLCBpZiBpdCdzDQo+ID4gPiBub3QgbmVlZGVk
IGFmdGVyIHByb2JlPw0KPiA+DQo+ID4gU29ycnkgdG8gY29uZnVzZSB5b3UuIEFjdHVhbGx5IHRo
ZSBkZXZtX21lbW9yeSB3aWxsIGJlIG5lZWRlZCBmb3IgdGhlIGNhc2UNCj4gb2Ygc29jX3JlZ2lz
dHJhdGlvbi4NCj4gPiBNZWFuaW5nLCBtZW1vcnkgd2l0aCBkZXZtLCB3aWxsIGJlIG5lZWRlZCBw
b3N0IHByb2JpbmcgYXMgd2VsbC4NCj4gPg0KPiA+IElmIHRoaXMgZnVuY3Rpb24gZmFpbHMsIHRo
ZSBwcm9iaW5nIHdpbGwgZmFpbCB0b28uIEl0IHdpbGwgYmUgYXV0byBjbGVhbmVkLg0KPiA+DQo+
ID4gQWNjZXB0ZWQsIHdpbGwgcmVtb3ZlIHRoZSBkZXZtX2ZyZWUgaW4gdjIuDQo+IA0KPiBJZiB5
b3UgZG9uJ3QgbmVlZCB0aGUgbWVtb3J5IHBhc3QgcHJvYmUoKSBhbGxvY2F0ZSB3aXRoIGt6YWxs
b2MoKSBhbmQgdXNlDQo+IGtmcmVlKCkuIE9ubHkgdXNlZCBtYW5hZ2VkIHJlc291cmNlcyBmb3Ig
bGlmZXRpbWVzIGJleW9uZCB0aGUgcHJvYmUgZnVuY3Rpb24uDQo+IA0KVW5kZXJzdG9vZC4NCg0K
PiBNYXJjDQo+IA0KPiAtLQ0KPiBQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICB8IE1h
cmMgS2xlaW5lLUJ1ZGRlICAgICAgICAgIHwNCj4gRW1iZWRkZWQgTGludXggICAgICAgICAgICAg
ICAgICAgfCBodHRwczovL3d3dy5wZW5ndXRyb25peC5kZSB8DQo+IFZlcnRyZXR1bmcgTsO8cm5i
ZXJnICAgICAgICAgICAgICB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMTI5IHwNCj4gQW10c2dl
cmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTkgICB8
DQo=

