Return-Path: <devicetree+bounces-158071-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 726CEA6470A
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 10:22:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D595D3A9202
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 09:21:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D1E8221F0E;
	Mon, 17 Mar 2025 09:22:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=aspeedtech.com header.i=@aspeedtech.com header.b="lbrwUDbM"
X-Original-To: devicetree@vger.kernel.org
Received: from APC01-SG2-obe.outbound.protection.outlook.com (mail-sg2apc01on2105.outbound.protection.outlook.com [40.107.215.105])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0C121C173;
	Mon, 17 Mar 2025 09:22:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.215.105
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742203323; cv=fail; b=qWqrBqjpYLGDbKZy3R6hc6HdplefBkGiJhy01wUHoHHQ+f/wq3EDGnXDssh9Win9WJzjS5b66Pq1lGi0xIJncjCjTaXEY72Uaz+4LTEs31LyxbUyx3nwqJhQAiUDkJOOP8hSAnDgFtIUeJ6ZgFo7BQIXtqiq/5+REhYwh2wpLnE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742203323; c=relaxed/simple;
	bh=AVxZgQLz6TxY7dgMZ3Lbu9goq1ie63CxUZy7dVr2AHE=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=pmE4Vw2i6SVqhqbfhqPUSXdhoz5o/eoDXunDMUyiwUjcEptYc9rMjAIW/uty9NdRKkij/gBYrfdQ46PE3Y9pPDQQol/3MmjIbq21cUDv1Cprm4Q4em8xEjCOtHjNB1Hjykk4kgFrWgHV6pjmyG/nO5TTFqmaoR3Z1TbbfZ3ZzYU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com; spf=pass smtp.mailfrom=aspeedtech.com; dkim=pass (2048-bit key) header.d=aspeedtech.com header.i=@aspeedtech.com header.b=lbrwUDbM; arc=fail smtp.client-ip=40.107.215.105
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aspeedtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gp4byQwqcN2qoFmYhCZv4y4ZqdKsHoQu7cC+osYHEbhUgbMLzGTzrU7su6QQ7l9szGJD0ipdJp+OoceHGzn8J95BTJN+c+firrAin8Ne3tytVURNZy7FP9hI1eDQ6uOh3E5b6Q+rVAzYSFsT4//cRULA58zY8kLE5Iw6itgZRj9BX3Ssd8+8m6MFtmW5HAiVxist+HK5nBAf87ZujBWTkVfFMYYB7iZUsJo4yPAikcPDWYlYXcGAaDIm3x+7tnIClAQPFkiq16n2z7fg0aQEgRWIbkih/tTUr3952Aptk2uC3fZ5dJjG+ZHk5P1uUweSFmiMD4RmzdBdHKjpUo1S6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AVxZgQLz6TxY7dgMZ3Lbu9goq1ie63CxUZy7dVr2AHE=;
 b=TKf/ClYalpxyyPe/Y1y1p0dYDt7i/f/Rkkwyu1boZ4Ng8q2IWCzrnWdFZS8P7PANfd7YWkmtlcNIYFbBzChqe8JeacXXxU1DQL1rAD6Sc7bkanUF4T1MEULTko36eSic8AskNYkzIRDsEtAF03pNPEIXzEz5Pc6fACyaghxwP2rXfzTpg2lVsHEsAz9dLQRaqIrSpix025fienFtB5i4hXMAj/YJOsR6daOo4l9j+rNkE4V4nOyv2qNYzv7pxQG8DG8rNK6VRbWufho3F3Z39Og0yYejNuTP2/jvQlqCk49aLoK4kSL2A39mWRBG9jBD8ep80lQ3/3bFLtPURilH6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aspeedtech.com; dmarc=pass action=none
 header.from=aspeedtech.com; dkim=pass header.d=aspeedtech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aspeedtech.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AVxZgQLz6TxY7dgMZ3Lbu9goq1ie63CxUZy7dVr2AHE=;
 b=lbrwUDbM+sADKHXychWPTEXQ1U9HspPGJqN6YU9k2sy4Dsob7UN6oCETCnj2iTHGibzZNDir1scvx/nq707s3jztyEcOHRGjt9yuX/2K2g6Sr1vshLnjKAblYtK2F9/T/g+ZQ0efvthB11ukm2HMRpTcYC/n7z8fYU8n9EzknxQqK0BohgOy4kbi3S4U59aE3EIJjjlafILPOprOtNAttpBfdn/2qvgxZy39GSWrFvKvQCJL+BZoij6HXsmrg6Qu8/+kzuY9YHUitKIsWqb7uH/tAOrx/8Buywmt978OmtdrxL/7xX5OAnqWE7oqaepNs66mvomjNeZNbO48nx6QlA==
Received: from OS8PR06MB7541.apcprd06.prod.outlook.com (2603:1096:604:2b1::11)
 by TYZPR06MB6545.apcprd06.prod.outlook.com (2603:1096:400:465::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.31; Mon, 17 Mar
 2025 09:21:57 +0000
Received: from OS8PR06MB7541.apcprd06.prod.outlook.com
 ([fe80::9f51:f68d:b2db:da11]) by OS8PR06MB7541.apcprd06.prod.outlook.com
 ([fe80::9f51:f68d:b2db:da11%7]) with mapi id 15.20.8534.031; Mon, 17 Mar 2025
 09:21:57 +0000
From: Ryan Chen <ryan_chen@aspeedtech.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: "benh@kernel.crashing.org" <benh@kernel.crashing.org>, "joel@jms.id.au"
	<joel@jms.id.au>, "andi.shyti@kernel.org" <andi.shyti@kernel.org>,
	"robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
	"andrew@codeconstruct.com.au" <andrew@codeconstruct.com.au>,
	"p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
	"andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
	"linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
	"openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-aspeed@lists.ozlabs.org"
	<linux-aspeed@lists.ozlabs.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, Mo Elbadry <elbadrym@google.com>
Subject: RE: [PATCH v16 1/3] dt-bindings: i2c: aspeed: support for
 AST2600-i2cv2
Thread-Topic: [PATCH v16 1/3] dt-bindings: i2c: aspeed: support for
 AST2600-i2cv2
Thread-Index:
 AQHbhoFMYr1F1iCu706pUdZbmBz0BrNWKwmAgAMnDQCAAApCgIABc/fggADIQoCACD7TUIATPNAAgAAVK0A=
Date: Mon, 17 Mar 2025 09:21:57 +0000
Message-ID:
 <OS8PR06MB7541C69AB8E6425313DA8606F2DF2@OS8PR06MB7541.apcprd06.prod.outlook.com>
References: <20250224055936.1804279-1-ryan_chen@aspeedtech.com>
 <20250224055936.1804279-2-ryan_chen@aspeedtech.com>
 <20250224-arrogant-adventurous-mackerel-0dc18a@krzk-bin>
 <OS8PR06MB75415E95342F26F576B5CF8AF2C22@OS8PR06MB7541.apcprd06.prod.outlook.com>
 <50327725-f3b8-4a8b-94a2-85afccd2868a@kernel.org>
 <OS8PR06MB7541B0DBC64B3EF6838DFE74F2CD2@OS8PR06MB7541.apcprd06.prod.outlook.com>
 <d1b184c5-84c1-4d76-a1d0-a9f37f1e363c@kernel.org>
 <OS8PR06MB7541D1D2E16C5E77037F3BB0F2CB2@OS8PR06MB7541.apcprd06.prod.outlook.com>
 <069b9fe4-c54a-4efd-923e-1558c59fe3f4@kernel.org>
In-Reply-To: <069b9fe4-c54a-4efd-923e-1558c59fe3f4@kernel.org>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aspeedtech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: OS8PR06MB7541:EE_|TYZPR06MB6545:EE_
x-ms-office365-filtering-correlation-id: 7947f5ec-fce3-4581-abff-08dd65352a3b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|1800799024|7416014|376014|366016|38070700018;
x-microsoft-antispam-message-info:
 =?utf-8?B?aUpZeWNtZ1IyczVSNW9aRlpJYitUeHZ2bmtzTFVPdS9pemc1UG9mU3IrN0hi?=
 =?utf-8?B?OE42SXVXeGkxTjllUVpMcm04b09ZNkZMY2o0SXVmTFV1TCtZWTZMSkRmN1pS?=
 =?utf-8?B?b201UU9vVkhiT1VxRzh5NmpvLzFtRExhTldJWWlyVEpLbWo3TTlENituVys2?=
 =?utf-8?B?RXplMVhQY2NmOFk5elJDMjFiMEFDTEh4alEyZ2VlcXZNQlFNZ2drMVdObzZI?=
 =?utf-8?B?T3VNNUczMXg1dUl1bWZUcGtCWkcyV0RQY2Y1dHRjaFBhNnhJRitiaXczd2s2?=
 =?utf-8?B?Ly80ZDZ1N0hrdGh4ZkdsVmtMb3FTV3VwQUMxSWl0MnFvQmJjcXNwTFJ2Y3FO?=
 =?utf-8?B?M0habDZ6dlFQWUUvYlhNQkpIcXdKUXN5T3BSeUtTQkp0NWoxOHU1NFZEbWtW?=
 =?utf-8?B?MGkzam5ZeTNjWlVON0w1b2p3YVUyS3F5Zkp5K2hDQkV6cHppUGQyb1o2VGRI?=
 =?utf-8?B?L2FTR0NCZnUvQ2F6VFpXYlNiV29VNVRvMERRdmo1Mi9WMnhYc3I2TWpHcXdy?=
 =?utf-8?B?UlUzVGhDQUtxeEJGdVp6ZWZKYXprWlRKbHFYSlByTVNsM0QyVVFGZ0pTWjBh?=
 =?utf-8?B?b2R0am9ZU2xxVnZzMml6NHgvVmw2SW8wME1zYVJ0UUtZbDNSZGVQTXMxZ1Vu?=
 =?utf-8?B?VjUzSVd0cTdhZU1PVmlRZUF0aGJiVEFoNlpaaTd0UWhSU0NBNExDVmdmdE41?=
 =?utf-8?B?Y244b3RIOUVSK04yT0IrWjJrMXE1ZWVLL2ZSUWQxMWF4YkRWNnlOWGJsaWll?=
 =?utf-8?B?Kzc1TDlZaGdrd3RIbFhtRnViZEhDbVh1cVVacmhYRVByMk1nMDUxNlpUVGdl?=
 =?utf-8?B?S0RwdXVBK3A0b0pzazgxTlUwREVFQ2x2WEMzRzluZlc1WElrM3BXRkhEWjFF?=
 =?utf-8?B?RU9LWmFacXl1aE5zZTZLM21SNmRFdTl5TTZDRFhUaStjYnVLVE1zOTJQMkdC?=
 =?utf-8?B?RWxTN0NhSFpveEIvSHBsSzNNTGRoR2NCZDRIWWZmS1ArK3NuL0kyN2VsNmhq?=
 =?utf-8?B?NlFNQlZnVCtLRm9Mbmg5dkN5djc4c0xhdnp5aEZ0S0w0aVBGa3BZWVRDSy90?=
 =?utf-8?B?c1VSckpUTlBENTV0YW9yRVY0c1ROaHc1YzROTWNGQklmMnd0NVFYUUFKZm9v?=
 =?utf-8?B?QzBremYzTk1EYURrWmNRSm0xYzJjYndpVDJMNkVXbTc4angzekpHYjBHQ3dw?=
 =?utf-8?B?KzFPdXdrUE9MaUMxdEVmUEJhU3NkcUdPNWpJR04xWlRaWUpML1B5N2lqMXVU?=
 =?utf-8?B?dDd1dDV6OFErUzZFeTVkODB2eU9RVnB4UzRnemJFOTI1NUZqM1E3anJzUGFV?=
 =?utf-8?B?SWo5UlJHMFNnOS9weHVGbU9IRWNtRzJhM2FoSkNUTVlhOEpjNFdqbEtWVzVX?=
 =?utf-8?B?Y3ZpTTEwbU40TnBFZUIxODZUUVV5ODcwMkxMczhhb29CMHZuRDJaY0pSQjF0?=
 =?utf-8?B?dDlsd0IvMnhKYThzc1lOeitsZzBQT0dCNHVKUVU1ZksxNEk4U041Rkhxbmlu?=
 =?utf-8?B?QzJueTJ1Uyt5TXdyY3g1VFBXQ0JtSjJyRE0vd2pWRzZuMFB1YkNYQStXTU9H?=
 =?utf-8?B?K2tXSnI1dG9qUUtGMm9MRngvelNkc0dRTjB2eWxpbHp3alRmdkNLVFlWcFdT?=
 =?utf-8?B?LzVIYnN2aXNkVGx0cndVSm1FTDJBWElPMlROcE1yZEJvdzNSNmFmcEY1eUlR?=
 =?utf-8?B?bnU3VGE0S3U3UXAzT0lGcXlOS1BGdXF2MDQzMmhLY2w4L1NjWWp5T0tPcFFk?=
 =?utf-8?B?OS9ybm9yTXFFQ2FZVU84RUsyVDc3YzM5V20rd3hWaG9uRjNYNXZWd245TDJk?=
 =?utf-8?B?amU3MkFwdVZuc1RHUmRpajBjYmZON2ZDblRVazFHWHpCT1dibUxKaHQyZnJF?=
 =?utf-8?B?SjN1MGJ4YVNRMEVXS2M5YkZiNkhGeHBQbEdEOTNWU0p5dmtNS2RJTU9Za1NO?=
 =?utf-8?Q?TM1XNNNKyEgB0BKAI79C+4l8fBILxfQ8?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:zh-tw;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS8PR06MB7541.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?MnVIL1JkRGlaakdraWFQSDhxVDVJK2JMZzhtVTZoZEtvWHp6UVhpTjFjak5L?=
 =?utf-8?B?QS8vSXJ0cWRMUVArbHljUWNSdU1VYVk5N1VQMytKNnkvTVM0ZkswOG1PSWUv?=
 =?utf-8?B?bVROMHRmaWE0MmNPa3ZDUGpheXppUzBhZlRPWWZHMFJGVmpQR0wxaVNISUxj?=
 =?utf-8?B?dVdWdm94UjgzNHJSdklKWHBySktGUVltbFVwbi9EcU5LUlZicXZ0YUFtUHNi?=
 =?utf-8?B?eTlGdzVteXpHak9vWVlIb2JOZmpOMFEzUWliQ01PV1gzQzV3YzZJRHY4b29k?=
 =?utf-8?B?SG1CUWZ0aWRnbVZsd1pnWVorNmZVbXNyQjhkMVo0TmlhTU5iam0zOS9TUUJP?=
 =?utf-8?B?dTZyQXQvSWFRQ2EyM09ZbEs5eTZ3aFZIb093MlFPU3hxaTNjUDlzWXU4cExL?=
 =?utf-8?B?OGQ2L2JncWxqZDVFVDJwd3JKTk5CNHBjRmRDWE9wRGxqcWxueFZuME1tTlBW?=
 =?utf-8?B?NXBLZ1hNam1iZ01tQnNMREZ5SlM2WVRnNnZEVHh1RVJVaHEwTnRDSGhWeEZR?=
 =?utf-8?B?d0hyK3BnZnBDaXEwRzVPd3BCOEU4azYrSG9CS3QvQ2R1OGFFc3EyZEhySDZF?=
 =?utf-8?B?aHhkcmVKeFFGeWVGd2JIQ2Y2ZnpHdCtnbTl6bENGb1RZTWRuTmIvUXVMNkFa?=
 =?utf-8?B?RXRVSG9uT1dmWnlsNFFtRWxuQXZQVlRDN3hHaEZKc0dsU1A5VFptUWttSFFG?=
 =?utf-8?B?Um9ySFNhUUVoU2kxbllaWitYQk1IQUZHYUFhS1RocTBOVHcrZkhxYzVONXY5?=
 =?utf-8?B?a3A4RmJDdjB4a0lXTFliN2xnNW8rQTNWOFpRWElJeWhDVWxCNmVFZ0tDbE4z?=
 =?utf-8?B?dkowSWlUaW02bjVvUEk5ZDhQTEY0RHlLUElOZTFjZ1ByQzFpUWY1a1BxbEt6?=
 =?utf-8?B?ZE9WRzVTaVZ0WXJTV3c1NXl5QVZtb0V1bFMvS0NiYTJKVFkxVmptdldzN0hQ?=
 =?utf-8?B?anl0bktFcGtQaEZodDJGYjZqTUJNcU9mMlI3ZlR4Z1g4S1B6d01IclVuN3Vv?=
 =?utf-8?B?YTRZNjJ6QTlSL25CVHNWOTFMemNieERhL1lSa2ZWQVNQano5WGVQWHdhUFlk?=
 =?utf-8?B?Z25RZDhTM2xRY2FEMkwvbGpJT3dQekN3VEhhTldEVVhBQjFBRitjbEZXL0ZQ?=
 =?utf-8?B?UGJudjNxb01DV2JBMU95Z0I0YjE5dURaYW5zakhsdm9uaDhlUHZtaGxqOFlx?=
 =?utf-8?B?OW1rcUJiWndHQWcrT1JzVm5rNnVNNWpyaGhVUnBCcjVCREUzRWlndml3blhw?=
 =?utf-8?B?bjlqVWtCdDBwQ2NuV3lFYkhDWVZkTXJZbGVkZjhaTk1FUUFoTnVGVGtrdUVD?=
 =?utf-8?B?TXIrS09xbzB3RWUwMzdocGVZVGVYd01XRytYN0F3UzJIM2RnYW9ldXR0Y3RO?=
 =?utf-8?B?NGdjblg3OFdMRC9qaUd6V3VlazZpdWZ5aFY3cEY5eTZOM1hkMG9TWFR5dG9n?=
 =?utf-8?B?Um5lOTdieTJiRktlL2ZyN3oxSi9kWk9RQzcrcHlsVFdmL1FZK0lWS3djQmc5?=
 =?utf-8?B?T2RiY1laU01BQUR3TXFJRGZCM2dhdU9KSXBSUWhFTVQrRnQyZ1lydTloOEpQ?=
 =?utf-8?B?Wis3aDAyVTZXK0p3OXdpcnNaYWdPM1hCOUVjNjQ0czdGeisvendUTllIeW9n?=
 =?utf-8?B?QmhlbTdiaGphWmZEaG9HUHZrWW5Ed2RpZitqVHloTjZaWkNzSmRXa295UmhN?=
 =?utf-8?B?cmliOTMxUGZFR2lUaDJuYlVYekRzSi9lVXZKait5aG5kbW94TEh1WnFkYnJ2?=
 =?utf-8?B?eVBIcnhWUkVVU0V4Y3kyakRRL0NJbjU4SzVqVTdWK0JnTDYzWUwzNm8xSTFC?=
 =?utf-8?B?RHRjbnIvaEJzZS8rdnp5ZE1nb0xsTFVRdkVRRkpFMkRZOE1FVE9BdGI0TWd5?=
 =?utf-8?B?UEZEeGhFMkN1Y1A1Y3NXZ3B2VzF0SUtrclQ5d01QeVlFMWNKQzV4TkJBOVF5?=
 =?utf-8?B?YzNvZ2k2WHVvTTR4ZjJ3MHRVcFVqS1JDZjR0Z1lZZGpHMVNuUDA2K241MW9Q?=
 =?utf-8?B?aFhuS3E3ZFVLcDk1Y0wvS0QvajdXcUp4cmVnWWNrSDgzbDI2OTZhanlMaVBs?=
 =?utf-8?B?akVLSU5TQWxyNVdzZnUwc0lIbW5pYXA3SUJQWWRFNG0yeUpobmhMM2JPK2JT?=
 =?utf-8?Q?PuscahMYmoxE1H74bbFsbRuQM?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: aspeedtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OS8PR06MB7541.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7947f5ec-fce3-4581-abff-08dd65352a3b
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2025 09:21:57.2505
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43d4aa98-e35b-4575-8939-080e90d5a249
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0Y30XN/HPOs8gNKWkW0x72uZpyiiAmIBQhAa1Bcx9PBsQuOw/h9UkDV5IEQQfLCN/Zp7HySxpKXxW36LM8e0wJv6XZxHsVXo+BoDpNGLyOc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR06MB6545

PiBTdWJqZWN0OiBSZTogW1BBVENIIHYxNiAxLzNdIGR0LWJpbmRpbmdzOiBpMmM6IGFzcGVlZDog
c3VwcG9ydCBmb3INCj4gQVNUMjYwMC1pMmN2Mg0KPiANCj4gT24gMDUvMDMvMjAyNSAxMDozNSwg
UnlhbiBDaGVuIHdyb3RlOg0KPiA+PiBTdWJqZWN0OiBSZTogW1BBVENIIHYxNiAxLzNdIGR0LWJp
bmRpbmdzOiBpMmM6IGFzcGVlZDogc3VwcG9ydCBmb3INCj4gPj4gQVNUMjYwMC1pMmN2Mg0KPiA+
Pg0KPiA+PiBPbiAyNy8wMi8yMDI1IDA5OjE5LCBSeWFuIENoZW4gd3JvdGU6DQo+ID4+Pj4NCj4g
Pj4+Pg0KPiA+Pj4+PiBhc3BlZWQsZW5hYmxlLWJ5dGU6DQo+ID4+Pj4+IEZvcmNlIGkyYyBjb250
cm9sbGVyIHVzZSBieXRlIG1vZGUgdHJhbnNmZXIuIHRoZSBieXRlIG1vZGUNCj4gPj4+Pj4gdHJh
bnNmZXIgd2lsbCBzZW5kIGkyYyBkYXRhIGVhY2ggYnl0ZSBieSBieXRlLCBpbmxjdWRlIGFkZHJl
c3MNCj4gcmVhZC93cml0ZS4NCj4gPj4+Pg0KPiA+Pj4+IElzbid0IHRoaXMgc3RhbmRhcmQgRklG
TyBtb2RlPw0KPiA+Pj4gWWVzLCBpdCBpcy4NCj4gPj4+Pg0KPiA+Pj4+IFdoeSBhbnlvbmUgd291
bGQgbmVlZCB0byBlbmFibGUgYnl0ZSBtb2RlIGZvciBnaXZlbiBib2FyZD8NCj4gPj4+IEJ5IGRl
ZmF1bHQsIGl0IGlzIGJ1ZmZlci1tb2RlLCBmb3IgcGVyZm9ybWFuY2UsIEkgZG9uJ3Qgd2FudCB1
c2VyDQo+ID4+PiBlbmFibGUNCj4gPj4gYnl0ZS1tb2RlLCBpdCB3aWxsIGluY3JlYXNlIENQVSB1
dGlsaXplLg0KPiA+Pj4gQnV0IHNvbWVvbmUgd2FudCB0byBiZSBmb3JjZSBlbmFibGUgYnl0ZS1t
b2RlLCBzbyBJIGFkZCBwcm9wZXJ0aWVzLg0KPiA+Pj4gaHR0cHM6Ly9wYXRjaHdvcmsub3psYWJz
Lm9yZy9wcm9qZWN0L2xpbnV4LWFzcGVlZC9wYXRjaC8yMDI0MTAwNzAzNTINCj4gPj4+IDM1IC4y
MjU0MTM4LTMtcnlhbl9jaGVuQGFzcGVlZHRlY2guY29tLw0KPiA+Pg0KPiA+Pg0KPiA+PiBJIGRv
bid0IHNlZSB0aGUgcmVhc29uIHdoeSB0aGlzIHdvdWxkIGJlIGEgYm9hcmQgcHJvcGVydHkuDQo+
ID4+DQo+ID4+IEkgdW5kZXJzdG9vZCBuZWVkIGZvciBETUEgYmVjYXVzZSBpdCBpcyBzaGFyZWQg
YW5kIG9ubHkgc29tZSBvZiB0aGUNCj4gPj4gY29udHJvbGxlcnMgY2FuIHVzZSBpdC4gQnV0IHdo
eSBjaG9pY2UgYmV0d2VlbiBidWZmZXIgYW5kIEZJRk8NCj4gPj4gZGVwZW5kaW5nIG9uIGhhcmR3
YXJlPw0KPiA+DQo+ID4gQnkgZGVmYXVsdCwgdGhlIEkyQyBjb250cm9sbGVyIHJ1bnMgaW4gYnVm
ZmVyIG1vZGUuIEVhY2ggaTJjIGJ1cyBoYXZlIDE2Ynl0ZXMNCj4gYnVmZmVyIHRvIHRyYW5zbWl0
IGRhdGEuDQo+ID4gRW5hYmxpbmcgYnl0ZSBtb2RlIHdpbGwgaW5jcmVhc2VzIENQVSB1dGlsaXph
dGlvbiwgc28gaXQgaXMgbm90IHJlY29tbWVuZGVkLg0KPiA+IEhvd2V2ZXIsIHNvbWUgdXNlciBt
aWdodCByZXF1aXJlIGZvcmNpbmcgYnl0ZSBtb2RlLCBzbyBJIGFkZGVkIHRoaXMNCj4gcHJvcGVy
dHkgdG8gYWxsb3cgdGhhdC4NCj4gDQo+IA0KPiBZb3UgYXJlIG5vdCBhbnN3ZXJpbmcgdGhlIHF1
ZXN0aW9uLiBJIGFza2VkIHdoeSB0aGUgY2hvaWNlIGRlcGVuZHMgb24NCj4gaGFyZHdhcmUgYW5k
IHlvdSBhbnN3ZXIgInVzZXIgbWlnaHQgcmVxdWlyZWQiLg0KPiANCj4gRG8geW91IHVuZGVyc3Rh
bmQgdGhhdCB0aGlzIGlzIGFib3V0IGhhcmR3YXJlLCBub3QgdXNlciBjaG9pY2VzPw0KDQpUaGUg
QVNUMjYwMCBJMkMgY29udHJvbGxlciBzdXBwb3J0IDMgbW9kZXMuIDEuIEJ5dGUgbW9kZSwgMi5i
dWZmZXIgbW9kZS4gMy5kbWEgbW9kZS4NCldoaWNoIEJ1ZmZlciB2cyBieXRlIG1vZGUuIGlzIGJ1
ZmZlciBtb2RlIGhhdmUgMTYgYnl0ZXMgYnVmZmVyIGZvciBlYWNoIGkyYyB0cmFuc2l0aW9uLg0K
Qnl0ZSBtb2RlIGlzIDEgYnkgMSB0cmFuc2Zlci4NClNvLCBteSBvcmlnaW5hbCBzdWJtaXQgcGF0
Y2ggaXMgb25seSBmb3IgYnVmZmVyL2RtYSBtb2RlIHNlbGVjdGlvbiBpbiBwcm9wZXJ0eS4NCkJ1
dCBzb21lb25lIGluIHJldmlldyBmZWVkYmFjayB3YW50IHRvIHVzZSBieXRlIG1vZGUsIHNvIEkg
YWRkIGJ5dGUgbW9kZSBwcm9wZXJ0eSBub3cuDQpJZiBub3QgYWNjZXB0YWJsZSwgSSBjYW4ga2Vl
cCBidWZmZXIvZG1hIHR3byBtb2RlIHNlbGVjdGlvbiBpbiBwcm9wZXJ0eS4NCg0KPiANCj4gDQo+
ID4+DQo+ID4+DQo+ID4+Pj4NCj4gPj4+Pj4NCj4gPj4+Pj4+DQo+ID4+Pj4+Pj4gKyAgICAgIG1h
eSByZXF1aXJlIGEgRFRTIHRvIG1hbnVhbGx5IGFsbG9jYXRlIHdoaWNoIGNvbnRyb2xsZXINCj4g
Pj4+Pj4+PiArIGNhbiB1c2UNCj4gPj4+Pj4+IERNQSBtb2RlLg0KPiA+Pj4+Pj4+ICsgICAgICBU
aGUgImFzcGVlZCxlbmFibGUtZG1hIiBwcm9wZXJ0eSBhbGxvd3MgY29udHJvbCBvZiB0aGlzLg0K
PiA+Pj4+Pj4+ICsNCj4gPj4+Pj4+PiArICAgICAgSW4gY2FzZXMgd2hlcmUgb25lIHRoZSBoYXJk
d2FyZSBkZXNpZ24gcmVzdWx0cyBpbiBhIHNwZWNpZmljDQo+ID4+Pj4+Pj4gKyAgICAgIGNvbnRy
b2xsZXIgaGFuZGxpbmcgYSBsYXJnZXIgYW1vdW50IG9mIGRhdGEsIGEgRFRTIHdvdWxkDQo+IGxp
a2VseQ0KPiA+Pj4+Pj4+ICsgICAgICBlbmFibGUgRE1BIG1vZGUgZm9yIHRoYXQgb25lIGNvbnRy
b2xsZXIuDQo+ID4+Pj4+Pj4gKw0KPiA+Pj4+Pj4+ICsgIGFzcGVlZCxlbmFibGUtYnl0ZToNCj4g
Pj4+Pj4+PiArICAgIHR5cGU6IGJvb2xlYW4NCj4gPj4+Pj4+PiArICAgIGRlc2NyaXB0aW9uOiB8
DQo+ID4+Pj4+Pj4gKyAgICAgIEkyQyBidXMgZW5hYmxlIGJ5dGUgbW9kZSB0cmFuc2Zlci4NCj4g
Pj4+Pj4+DQo+ID4+Pj4+PiBObywgZWl0aGVyIHRoaXMgaXMgZXhwcmVzc2VkIGFzIGxhY2sgb2Yg
ZG1hIG1vZGUgcHJvcGVydHkgb3IgaWYNCj4gPj4+Pj4+IHlvdSBoYXZlIHRocmVlIG1vZGVzLCB0
aGVuIHJhdGhlciBzb21lIGVudW0gKGFzcGVlZCx0cmFuc2Zlci1tb2RlDQo+ID4+Pj4+PiA/KQ0K
PiA+Pj4+Pg0KPiA+Pj4+PiBUaGFua3Mgc3VnZ2VzdGlvbiwgSSB3aWxsIHVzaW5nIGFuIGVudW0g
cHJvcGVydHkgbGlrZQ0KPiA+Pj4+PiBhc3BlZWQsdHJhbnNmZXItbW9kZQ0KPiA+Pj4+IGluc3Rl
YWQuDQo+ID4+Pj4+Pg0KPiA+Pj4+Pj4NCj4gPj4+Pj4+DQo+ID4+Pj4+Pj4gKw0KPiA+Pj4+Pj4+
ICsgIGFzcGVlZCxnbG9iYWwtcmVnczoNCj4gPj4+Pj4+PiArICAgICRyZWY6IC9zY2hlbWFzL3R5
cGVzLnlhbWwjL2RlZmluaXRpb25zL3BoYW5kbGUNCj4gPj4+Pj4+PiArICAgIGRlc2NyaXB0aW9u
OiBUaGUgcGhhbmRsZSBvZiBpMmMgZ2xvYmFsIHJlZ2lzdGVyIG5vZGUuDQo+ID4+Pj4+Pg0KPiA+
Pj4+Pj4gRm9yIHdoYXQ/IFNhbWUgcXVlc3Rpb24gYXMgdXN1YWw6IGRvIG5vdCByZXBlYXQgcHJv
cGVydHkgbmFtZSwNCj4gPj4+Pj4+IGJ1dCBzYXkgd2hhdCBpcyB0aGlzIHVzZWQgZm9yIGFuZCB3
aGF0IGV4YWN0bHkgaXQgcG9pbnRzIHRvLg0KPiA+Pj4+Pj4NCj4gPj4+Pj4+IHMvaTJjL0kyQy8g
YnV0IHRoZW4gd2hhdCBpcyAiSTJDIGdsb2JhbCByZWdpc3RlciBub2RlIj8gVGhpcyBpcw0KPiA+
Pj4+Pj4gaG93IHlvdSBjYWxsIHlvdXIgZGV2aWNlIGluIGRhdGFzaGVldD8NCj4gPj4+Pj4+DQo+
ID4+Pj4+IEkgZG8gZGVzY3JpcHQgaW4gY292ZXIsIHNob3VsZCBhZGQgaW50byB0aGUgeWFtbCBm
aWxlID8NCj4gPj4+Pg0KPiA+Pj4+DQo+ID4+Pj4gQWdhaW4sIGNvdmVyIGxldHRlciBkb2VzIG5v
dCBtYXR0ZXIuIFlvdXIgaGFyZHdhcmUgbXVzdCBiZSBleHBsYWluZWQNCj4gaGVyZS4NCj4gPj4+
IFdpbGwgYWRkIGludG8gY29tbWl0Lg0KPiA+Pj4+DQo+ID4+Pj4+DQo+ID4+Pj4+IGFzcGVlZCxn
bG9iYWwtcmVnczoNCj4gPj4+Pj4gVGhpcyBnbG9iYWwgcmVnaXN0ZXIgaXMgbmVlZGVkLCBnbG9i
YWwgcmVnaXN0ZXIgaXMgc2V0dGluZyBmb3IgbmV3DQo+ID4+Pj4+IGNsb2NrIGRpdmlkZSBjb250
cm9sLCBhbmQgbmV3IHJlZ2lzdGVyIHNldCBjb250cm9sLg0KPiA+Pj4+DQo+ID4+Pj4gU28gdGhp
cyBtZWFucyB5b3UgaW1wbGVtZW50IGNsb2NrIGNvbnRyb2xsZXIgdmlhIHN5c2Nvbj8NCj4gPj4+
IE5vLCBpdCBpcyBqdXN0IG1vZGUgc3dpdGNoLiBJdCBhbHNvIGV4cGxhaW4gaW4gY292ZXIuIEkg
d2lsbCBhZGQgaXQgaW4gY29tbWl0Lg0KPiA+Pj4gVGhlIGxlZ2FjeSByZWdpc3RlciBsYXlvdXQg
aXMgbWl4IGNvbnRyb2xsZXIvdGFyZ2V0IHJlZ2lzdGVyIGNvbnRyb2wgdG9nZXRoZXIuDQo+ID4+
IFRoZSBmb2xsb3dpbmcgaXMgYWRkIG1vcmUgZGV0YWlsIGRlc2NyaXB0aW9uIGFib3V0IG5ldyBy
ZWdpc3Rlcg0KPiA+PiBsYXlvdXQuIEFuZCBuZXcgZmVhdHVyZSBzZXQgYWRkIGZvciByZWdpc3Rl
ci4NCj4gPj4+Pg0KPiA+Pj4+Pg0KPiA+Pj4+Pj4NCj4gPj4+Pj4+PiArDQo+ID4+Pj4+Pj4gIHJl
cXVpcmVkOg0KPiA+Pj4+Pj4+ICAgIC0gcmVnDQo+ID4+Pj4+Pj4gICAgLSBjb21wYXRpYmxlDQo+
ID4+Pj4+Pj4gICAgLSBjbG9ja3MNCj4gPj4+Pj4+PiAgICAtIHJlc2V0cw0KPiA+Pj4+Pj4+DQo+
ID4+Pj4+Pj4gK2FsbE9mOg0KPiA+Pj4+Pj4+ICsgIC0gJHJlZjogL3NjaGVtYXMvaTJjL2kyYy1j
b250cm9sbGVyLnlhbWwjDQo+ID4+Pj4+Pj4gKyAgLSBpZjoNCj4gPj4+Pj4+PiArICAgICAgcHJv
cGVydGllczoNCj4gPj4+Pj4+PiArICAgICAgICBjb21wYXRpYmxlOg0KPiA+Pj4+Pj4+ICsgICAg
ICAgICAgY29udGFpbnM6DQo+ID4+Pj4+Pj4gKyAgICAgICAgICAgIGNvbnN0OiBhc3BlZWQsYXN0
MjYwMC1pMmN2Mg0KPiA+Pj4+Pj4NCj4gPj4+Pj4+IE5BSywgdW5kb2N1bWVudGVkIGNvbXBhdGli
bGUuDQo+ID4+Pj4+DQo+ID4+Pj4+IFNvcnJ5LCBJIHNob3VsZCBhZGQgd2hhdCBraW5kIG9mIGRv
Y3VtZW50IGFib3V0IHRoaXMgY29tcGF0aWJsZT8NCj4gPj4+Pg0KPiA+Pj4+IFlvdSBjYW5ub3Qg
YWRkIG5ldyBjb21wYXRpYmxlcyB3aXRob3V0IGRvY3VtZW50aW5nIHRoZW0uDQo+ID4+Pj4gRG9j
dW1lbnRhdGlvbiBpcyBpbiB0aGUgZm9ybSBvZiBEVCBzY2hlbWEgYW5kIGVhY2ggY29tcGF0aWJs
ZSBtdXN0DQo+ID4+Pj4gYmUgbGlzdGVkIChpbiBzb21lDQo+ID4+Pj4gd2F5KSBpbiBjb21wYXRp
YmxlIHByb3BlcnR5IGRlc2NyaXB0aW9uLg0KPiA+Pj4NCj4gPj4+IFNvcnJ5LCBkbyB5b3UgbWVh
biwgSSBhZGQgZm9sbG93aW5nIGluIHlhbWwgb3IgY29tbWl0IG1lc3NhZ2U/DQo+ID4+DQo+ID4+
IFlvdSBuZWVkIHRvIGxpc3QgdGhpcyBpbiBjb21wYXRpYmxlcyBmaXJzdC4NCj4gPg0KPiA+IEkg
d2lsbCBhZGQgaXQgaW4gY29tcGF0aWJsZSBpbiBuZXh0IHN1Ym1pdC4NCj4gPg0KPiA+IAllbnVt
Og0KPiA+IAkJLWFzcGVlZCxhc3QyNjAwLWkyY3YyDQo+ID4+DQo+ID4+Pg0KPiA+Pj4gVGhpcyBz
ZXJpZXMgYWRkIEFTVDI2MDAgaTJjdjIgbmV3IHJlZ2lzdGVyIHNldCBkcml2ZXIuIFRoZSBpMmN2
Mg0KPiA+Pj4gZHJpdmVyIGlzIG5ldw0KPiA+PiByZWdpc3RlciBzZXQgdGhhdCBoYXZlIG5ldyBj
bG9jayBkaXZpZGVyIG9wdGlvbiBmb3IgbW9yZSBmbGV4aWFibGUNCj4gZ2VuZXJhdGlvbi4NCj4g
Pj4gQW5kIGFsc28gaGF2ZSBzZXBhcmF0ZSBpMmMgY29udHJvbGxlciBhbmQgdGFyZ2V0IHJlZ2lz
dGVyIHNldCBmb3INCj4gPj4gY29udHJvbCwgcGF0Y2gNCj4gPj4gIzIgaXMgaTJjIGNvbnRyb2xs
ZXIgZHJpdmVyIG9ubHksIHBhdGNoICMzIGlzIGFkZCBpMmMgdGFyZ2V0IG1vZGUgZHJpdmVyLg0K
PiA+Pg0KPiA+PiBBbGwgdGhpcyBkZXNjcmliZXMgZHJpdmVyLCBub3QgaGFyZHdhcmUuDQo+ID4N
Cj4gPiBTb3JyeSwgdGhlIGNvdmVyIGxldHRlciBkZXNjcmlwdGlvbiB0aGUgcmVnaXN0ZXIuIEkg
d2lsbCBhZGQgaW50IGluIGNvbW1pdA0KPiBtZXNzYWdlLg0KPiA+DQo+ID4gLUFkZCBuZXcgY2xv
Y2sgZGl2aWRlciBvcHRpb24gZm9yIG1vcmUgZmxleGlibGUgYW5kIGFjY3VyYXRlIGNsb2NrDQo+
ID4gcmF0ZSBnZW5lcmF0aW9uIC1BZGQgdENLSGlnaE1pbiB0aW1pbmcgdG8gZ3VhcmFudGVlIFND
TCBoaWdoIHB1bHNlIHdpZHRoLg0KPiA+IC1BZGQgc3VwcG9ydCBkdWFsIHBvb2wgYnVmZmVyIG1v
ZGUsIHNwbGl0IDMyIGJ5dGVzIHBvb2wgYnVmZmVyIG9mIGVhY2gNCj4gPiBkZXZpY2UgaW50byAy
IHggMTYgYnl0ZXMgZm9yIFR4IGFuZCBSeCBpbmRpdmlkdWFsbHkuDQo+ID4gLUluY3JlYXNlIERN
QSBidWZmZXIgc2l6ZSB0byA0MDk2IGJ5dGVzIGFuZCBzdXBwb3J0IGJ5dGUgYWxpZ25tZW50Lg0K
PiA+IC1SZS1kZWZpbmUgdGhlIGJhc2UgYWRkcmVzcyBvZiBCVVMxIH4gQlVTMTYgYW5kIFBvb2wg
YnVmZmVyLg0KPiA+IC1SZS1kZWZpbmUgcmVnaXN0ZXJzIGZvciBzZXBhcmF0aW5nIGNvbnRyb2xs
ZXIgYW5kIHRhcmdldCBtb2RlIGNvbnRyb2wuDQo+ID4gLVN1cHBvcnQgNCBpbmRpdmlkdWFsIERN
QSBidWZmZXJzIGZvciBjb250cm9sbGVyIFR4IGFuZCBSeCwgdGFyZ2V0IFR4DQo+ID4gYW5kIFJ4
Lg0KPiA+DQo+ID4gQW5kIGZvbGxvd2luZyBpcyBuZXcgcmVnaXN0ZXIgc2V0IGZvciBwYWNrYWdl
IHRyYW5zZmVyIHNlcXVlbmNlLg0KPiA+IC1OZXcgTWFzdGVyIG9wZXJhdGlvbiBtb2RlOg0KPiA+
ICBTIC0+IEF3IC0+IFANCj4gPiAgUyAtPiBBdyAtPiBUeEQgLT4gUA0KPiA+ICBTIC0+IEFyIC0+
IFJ4RCAtPiBQDQo+ID4gIFMgLT4gQXcgLT4gUnhEIC0+IFNyIC0+IEFyIC0+IFR4RCAtPiBQIC1C
dXMgU0RBIGxvY2sgYXV0by1yZWxlYXNlDQo+ID4gY2FwYWJpbGl0eSBmb3IgbmV3IGNvbnRyb2xs
ZXIgRE1BIGNvbW1hbmQgbW9kZS4NCj4gPiAtQnVzIGF1dG8gdGltZW91dCBmb3IgbmV3IGNvbnRy
b2xsZXIvdGFyZ2V0IERNQSBtb2RlLg0KPiA+DQo+ID4gVGhlIGZvbGxvd2luZyBpcyB0d28gdmVy
c3VzIHJlZ2lzdGVyIGxheW91dC4NCj4gPiBPbGQ6DQo+ID4ge0kyQ0QwMH06IEZ1bmN0aW9uIENv
bnRyb2wgUmVnaXN0ZXINCj4gPiB7STJDRDA0fTogQ2xvY2sgYW5kIEFDIFRpbWluZyBDb250cm9s
IFJlZ2lzdGVyDQo+ID4ge0kyQ0QwOH06IENsb2NrIGFuZCBBQyBUaW1pbmcgQ29udHJvbCBSZWdp
c3Rlcg0KPiA+IHtJMkNEMEN9OiBJbnRlcnJ1cHQgQ29udHJvbCBSZWdpc3Rlcg0KPiA+IHtJMkNE
MTB9OiBJbnRlcnJ1cHQgU3RhdHVzIFJlZ2lzdGVyDQo+ID4ge0kyQ0QxNH06IENvbW1hbmQvU3Rh
dHVzIFJlZ2lzdGVyDQo+ID4ge0kyQ0QxOH06IFNsYXZlIERldmljZSBBZGRyZXNzIFJlZ2lzdGVy
DQo+ID4ge0kyQ0QxQ306IFBvb2wgQnVmZmVyIENvbnRyb2wgUmVnaXN0ZXINCj4gPiB7STJDRDIw
fTogVHJhbnNtaXQvUmVjZWl2ZSBCeXRlIEJ1ZmZlciBSZWdpc3Rlcg0KPiA+IHtJMkNEMjR9OiBE
TUEgTW9kZSBCdWZmZXIgQWRkcmVzcyBSZWdpc3Rlcg0KPiA+IHtJMkNEMjh9OiBETUEgVHJhbnNm
ZXIgTGVuZ3RoIFJlZ2lzdGVyDQo+ID4ge0kyQ0QyQ306IE9yaWdpbmFsIERNQSBNb2RlIEJ1ZmZl
ciBBZGRyZXNzIFNldHRpbmcNCj4gPiB7STJDRDMwfTogT3JpZ2luYWwgRE1BIFRyYW5zZmVyIExl
bmd0aCBTZXR0aW5nIGFuZCBGaW5hbCBTdGF0dXMNCj4gPg0KPiA+IE5ldyBSZWdpc3RlciBtb2Rl
DQo+ID4ge0kyQ0MwMH06IE1hc3Rlci9TbGF2ZSBGdW5jdGlvbiBDb250cm9sIFJlZ2lzdGVyDQo+
ID4ge0kyQ0MwNH06IE1hc3Rlci9TbGF2ZSBDbG9jayBhbmQgQUMgVGltaW5nIENvbnRyb2wgUmVn
aXN0ZXINCj4gPiB7STJDQzA4fTogTWFzdGVyL1NsYXZlIFRyYW5zbWl0L1JlY2VpdmUgQnl0ZSBC
dWZmZXIgUmVnaXN0ZXINCj4gPiB7STJDQzBDfTogTWFzdGVyL1NsYXZlIFBvb2wgQnVmZmVyIENv
bnRyb2wgUmVnaXN0ZXINCj4gPiB7STJDTTEwfTogTWFzdGVyIEludGVycnVwdCBDb250cm9sIFJl
Z2lzdGVyDQo+ID4ge0kyQ00xNH06IE1hc3RlciBJbnRlcnJ1cHQgU3RhdHVzIFJlZ2lzdGVyDQo+
ID4ge0kyQ00xOH06IE1hc3RlciBDb21tYW5kL1N0YXR1cyBSZWdpc3Rlcg0KPiA+IHtJMkNNMUN9
OiBNYXN0ZXIgRE1BIEJ1ZmZlciBMZW5ndGggUmVnaXN0ZXINCj4gPiB7STJDUzIwfTogU2xhdmV+
IEludGVycnVwdCBDb250cm9sIFJlZ2lzdGVyDQo+ID4ge0kyQ1MyNH06IFNsYXZlfiBJbnRlcnJ1
cHQgU3RhdHVzIFJlZ2lzdGVyDQo+ID4ge0kyQ1MyOH06IFNsYXZlfiBDb21tYW5kL1N0YXR1cyBS
ZWdpc3Rlcg0KPiA+IHtJMkNTMkN9OiBTbGF2ZX4gRE1BIEJ1ZmZlciBMZW5ndGggUmVnaXN0ZXIN
Cj4gPiB7STJDTTMwfTogTWFzdGVyIERNQSBNb2RlIFR4IEJ1ZmZlciBCYXNlIEFkZHJlc3MNCj4g
PiB7STJDTTM0fTogTWFzdGVyIERNQSBNb2RlIFJ4IEJ1ZmZlciBCYXNlIEFkZHJlc3MNCj4gPiB7
STJDUzM4fTogU2xhdmV+IERNQSBNb2RlIFR4IEJ1ZmZlciBCYXNlIEFkZHJlc3MNCj4gPiB7STJD
UzNDfTogU2xhdmV+IERNQSBNb2RlIFJ4IEJ1ZmZlciBCYXNlIEFkZHJlc3MNCj4gPiB7STJDUzQw
fTogU2xhdmUgRGV2aWNlIEFkZHJlc3MgUmVnaXN0ZXINCj4gPiB7STJDTTQ4fTogTWFzdGVyIERN
QSBMZW5ndGggU3RhdHVzIFJlZ2lzdGVyDQo+ID4ge0kyQ1M0Q306IFNsYXZlICBETUEgTGVuZ3Ro
IFN0YXR1cyBSZWdpc3Rlcg0KPiA+IHtJMkNDNTB9OiBDdXJyZW50IERNQSBPcGVyYXRpbmcgQWRk
cmVzcyBTdGF0dXMNCj4gPiB7STJDQzU0fTogQ3VycmVudCBETUEgT3BlcmF0aW5nIExlbmd0aCAg
U3RhdHVzDQo+IA0KPiBJIGRvbid0IHVuZGVyc3RhbmQgYW55dGhpbmcgZnJvbSB0aGF0IGFuZCBo
b3cgaXMgdGhpcyByZWxldmFudCB0byBvdXINCj4gZGlzY3Vzc2lvbi4NCg0KU29ycnksIEkgZG9u
J3QgY2F0Y2ggeW91ciB3YW50ZWQuIA0KSSBhc3N1bWUgeW91IHdhbnQgdG8ga25vdyBuZXcgbW9k
ZSByZWdpc3RlciBzZXQgY29tcGFyZSBvcmlnaW5hbCByZWdpc3RlciBzZXQuDQo+IA0KPiA+DQo+
ID4+DQo+ID4+Pg0KPiA+Pj4gVGhlIGxlZ2FjeSByZWdpc3RlciBsYXlvdXQgaXMgbWl4IGNvbnRy
b2xsZXIvdGFyZ2V0IHJlZ2lzdGVyIGNvbnRyb2wgdG9nZXRoZXIuDQo+ID4+IFRoZSBmb2xsb3dp
bmcgaXMgYWRkIG1vcmUgZGV0YWlsIGRlc2NyaXB0aW9uIGFib3V0IG5ldyByZWdpc3Rlcg0KPiA+
PiBsYXlvdXQuIEFuZCBuZXcgZmVhdHVyZSBzZXQgYWRkIGZvciByZWdpc3Rlci4NCj4gPj4+DQo+
ID4+PiAtQWRkIG5ldyBjbG9jayBkaXZpZGVyIG9wdGlvbiBmb3IgbW9yZSBmbGV4aWJsZSBhbmQg
YWNjdXJhdGUgY2xvY2sNCj4gPj4+IHJhdGUNCj4gPj4gZ2VuZXJhdGlvbiAtQWRkIHRDS0hpZ2hN
aW4gdGltaW5nIHRvIGd1YXJhbnRlZSBTQ0wgaGlnaCBwdWxzZSB3aWR0aC4NCj4gPj4+IC1BZGQg
c3VwcG9ydCBkdWFsIHBvb2wgYnVmZmVyIG1vZGUsIHNwbGl0IDMyIGJ5dGVzIHBvb2wgYnVmZmVy
IG9mDQo+ID4+PiBlYWNoIGRldmljZQ0KPiA+PiBpbnRvIDIgeCAxNiBieXRlcyBmb3IgVHggYW5k
IFJ4IGluZGl2aWR1YWxseS4NCj4gPj4+IC1JbmNyZWFzZSBETUEgYnVmZmVyIHNpemUgdG8gNDA5
NiBieXRlcyBhbmQgc3VwcG9ydCBieXRlIGFsaWdubWVudC4NCj4gPj4+IC1SZS1kZWZpbmUgdGhl
IGJhc2UgYWRkcmVzcyBvZiBCVVMxIH4gQlVTMTYgYW5kIFBvb2wgYnVmZmVyLg0KPiA+Pj4gLVJl
LWRlZmluZSByZWdpc3RlcnMgZm9yIHNlcGFyYXRpbmcgY29udHJvbGxlciBhbmQgdGFyZ2V0IG1v
ZGUgY29udHJvbC4NCj4gPj4+IC1TdXBwb3J0IDQgaW5kaXZpZHVhbCBETUEgYnVmZmVycyBmb3Ig
Y29udHJvbGxlciBUeCBhbmQgUngsIHRhcmdldCBUeCBhbmQNCj4gUnguDQo+ID4+DQo+ID4+IERv
ZXMgaXQgbWVhbiBoYXJkd2FyZSBjaGFuZ2VkIG9uIEFTVDI2MDA/DQo+ID4gTm8gSHcgY2hhbmdl
LCBpdCBpcyBkaWZmZXJlbnQgbW9kZSBzZXR0aW5nIHdpbGwgaGF2ZSBhbm90aGVyIG1vZGUgcmVn
aXN0ZXINCj4gc2V0dGluZy4NCj4gPiBNb2RlIHNldHRpbmcgaXMgaW4gZ2xvYmFsIHJlZ2lzdGVy
LCBJIHdpbGwgYWRkIGluIG5leHQgY29tbWl0IG1lc3NhZ2UNCj4gDQo+IE5laXRoZXIgdGhpcy4N
Cj4gDQo+IFNvIGl0IHNlZW1zIHlvdSBkZXNjcmliZSBhbHJlYWR5IGV4aXN0aW5nIGFuZCBkb2N1
bWVudGVkIEkyQywgYnV0IGZvciBzb21lDQo+IHJlYXNvbiB5b3Ugd2FudCBzZWNvbmQgY29tcGF0
aWJsZS4gVGhlIHByb2JsZW0gaXMgdGhhdCB5b3UgZG8gbm90IHByb3ZpZGUNCj4gcmVhc29uIGZy
b20gdGhlIHBvaW50IG9mIHZpZXcgb2YgYmluZGluZ3MuDQo+IA0KPiBUbyBzdW1tYXJpemU6IHdo
YXQgeW91ciB1c2VycyB3YW50IC0gZG9uJ3QgY2FyZS4gU3RhcnQgcHJvcGVybHkgZGVzY3JpYmlu
Zw0KPiBoYXJkd2FyZSBhbmQgeW91ciBTb0MuDQoNCk9LLCBmb3IgYXN0MjYwMCBpMmMgY29udHJv
bGxlciBoYXZlIHR3byByZWdpc3RlciBtb2RlIHNldHRpbmcuDQpPbmUsIEkgY2FsbCBpdCBpcyBv
bGQgcmVnaXN0ZXIgc2V0dGluZywgdGhhdCBpcyByaWdodCBub3cgaTJjLWFzcGVlZC5jIC5jb21w
YXRpYmxlID0gImFzcGVlZCxhc3QyNjAwLWkyYy1idXMiLA0KQW5kIHRoZXJlIGhhdmUgYSBnbG9i
YWwgcmVnaXN0ZXIgdGhhdCBjYW4gc2V0IGkyYyBjb250cm9sbGVyIGFzIG5ldyBtb2RlIHJlZ2lz
dGVyIHNldC4gDQpUaGF0IEkgYW0gZ29pbmcgdG8gZHJpdmUuIFRoYXQgSSBwb3N0IGlzIGFsbCBy
ZWdpc3RlciBpbiBuZXcgYW4gb2xkIHJlZ2lzdGVyIGxpc3QuDQoNCkZvciBleGFtcGxlLCANCkds
b2JhbCByZWdpc3RlciBbMl0gPSAwID0+IGkyYyBwcmVzZW50IGFzIG9sZCByZWdpc3RlciBzZXQN
Ckdsb2JhbCByZWdpc3RlciBbMl0gPSAxID0+IGkyYyBwcmVzZW50IGFzIG5ldyByZWdpc3RlciBz
ZXQNCj4gDQo+IA0KPiA+DQo+ID4gSTJDRzAwOiBEZXZpY2UgTWFzdGVyIE1vZGUgSW50ZXJydXB0
IFN0YXR1cyBSZWdpc3RlciAoSTJDRzBDWzNdPTEpDQo+ID4gSTJDRzAwOiBEZXZpY2UgTWFzdGVy
L1NsYXZlIE1vZGUgSW50ZXJydXB0IFN0YXR1cyBSZWdpc3Rlcg0KPiA+IChJMkNHMENbM109MCkN
Cj4gPiBJMkNHMDQ6IERldmljZSBTbGF2ZSBNb2RlIEludGVycnVwdCBTdGF0dXMgUmVnaXN0ZXIN
Cj4gPiBJMkNHMEM6IEdsb2JhbCBDb250cm9sIFJlZ2lzdGVyDQo+ID4gSTJDRzEwOiBOZXcgQ2xv
Y2sgRGl2aWRlciBDb250cm9sIFJlZ2lzdGVyIChJMkNHMENbMV0gPSAxKQ0KPiA+DQo+ID4+IE9y
IHRoZXNlIGFyZSBkaWZmZXJlbnQgZGV2aWNlcw0KPiA+PiB0aGFuIGFzcGVlZCxhc3QyNjAwLWky
Yy1idXM/IElmIHRoaXMgaXMgbm90IGEgZGlmZmVyZW50IGRldmljZSwgaG93DQo+ID4+IG9uZSBT
b0MgY2FuIGhhdmUgdHdvIGRpZmZlcmVudCBmbGF2b3JzIG9mIHNhbWUgZGV2aWNlIGluIHRoZSBz
YW1lIGluc3RhbmNlPw0KPiA+DQo+ID4gV2hlbiBnbG9iYWwgc2V0dGluZyBmb3IgbmV3LCB3aWxs
IG5ldyByZWdpc3RlciBtYXBwaW5nLCBubyBzZXR0aW5nIHdpbGwga2VlcA0KPiBvbGQgcmVnaXN0
ZXIgbWFwcGluZy4NCj4gDQo+IA0KPiBJIGNhbm5vdCBwYXJzZSB0aGlzLg0KPiANCj4gDQo+IEJl
c3QgcmVnYXJkcywNCj4gS3J6eXN6dG9mDQo=

