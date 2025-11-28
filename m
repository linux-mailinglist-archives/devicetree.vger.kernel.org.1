Return-Path: <devicetree+bounces-242985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0ACC91FFF
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 13:35:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 66F8B3492D0
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 12:35:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACE91329E69;
	Fri, 28 Nov 2025 12:34:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=cherry.de header.i=@cherry.de header.b="Yo7ZNFoo"
X-Original-To: devicetree@vger.kernel.org
Received: from PA4PR04CU001.outbound.protection.outlook.com (mail-francecentralazon11013007.outbound.protection.outlook.com [40.107.162.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C050430C354
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 12:34:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.162.7
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764333284; cv=fail; b=cmUuEy+ixXnqL4fmap5zE8LqEQDu8+XHONW5q0xv9b8/1JVCbMWHxtoDL9yprbb5SKChA+enJvhjE9cm/XtpWIHQUzmJCpmlCrwuIJUaV53LPV8fS2+lSo+Q/TI9buBG4OjrIJh+BWPUUzo+q/0tJiMz1eEpCaovwlx4zj1KkWg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764333284; c=relaxed/simple;
	bh=dafHvuJClpdxv0ZGAqCWxFJjXo8EhJRPm4Oj6wnES2c=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=SczN7sdQTVwmSK2N4oLaK0/eTLSYdnud3qy8ZGKmohOV/KqLKug2caLEoYmmzIbPHO+VBWt2cc72gaNPVrh0zmSwWg6nIlY6bR85UIEyVsgvZNnQrtKXQZEQ4oyy49KUavih5qT+Dm31pjLcttao0Ltv2c6ww4R5B6hFZxpltEI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cherry.de; spf=pass smtp.mailfrom=cherry.de; dkim=pass (1024-bit key) header.d=cherry.de header.i=@cherry.de header.b=Yo7ZNFoo; arc=fail smtp.client-ip=40.107.162.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cherry.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cherry.de
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Aoxlxig2NlRMxlKsudtVI6AKUlgK8UzDHtQsZv6ou57CtZ2NEpZkod2rwFGxRQ1sMP0o3k0IODyRc+1qEcvGsApXvRCwWTNhdHI//gzMPzlDLeQ8ji/oVZcYMWPPfGcerr5qCTI0iPDihehaPKMIFJI9hu7JFA/z0UFFAZ8FA5Vi4aIEiFlBGkJi079nnYef3pY01rxNeSjy2lGRzjqSHLXRjj5JK4dZzdBeHvULp2m231E1klt9frnVOo2eMv3gftZweqMe7RDBSXmgcRQFUIxlmN7ewSeiSw3fk0BLFPBhU/RcaDaDSHETHuzq9Gs2YuGK1hgVui2cRBU3bBDJsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cXMP9Yi2It1jezvWlLJfF7viDbAFxjuqIQePiOvdTD0=;
 b=vE0pcesIQFKZgvgxQqMBSt/oOehL704S1LSS91NguBY4QgZsgKzQ/UXEdzYyMCbw7mTKabitHl1iRLzxMVSFgu/YSRAAN4AKZh5Boi0m5rwzW/92QeE7LZe6d2N3CSxutageD26z934JYhjnvvSp+/dh94yW7txGuOwNjw219DrUyEEb1tbl6x+WvUsTJMvmlpjLX++pPq0+mjGuX56iLUcqoc3xSxjHWuAytlGmcrG/MqfwmtvM2u8ITmd3RocpdEBtZ1VwATb6mrp/mRaOW3kqoxhRc8TZnMDSatq3zjSWiVqeEndH/f6FbbyCHgdRvQkaW6DHNNrb+NSS8P50oQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cXMP9Yi2It1jezvWlLJfF7viDbAFxjuqIQePiOvdTD0=;
 b=Yo7ZNFooWvI8lRSK0vHeQKnV2+ZgGAiFwTXWL9/6gLAh217AxMIsSQQk/nsgtGM+imrmvfEUOFkYVLNjtJ6modxLy4ZsIdBQ9yZoHnKlwy5rYSnvGLcj1PHuK70+EouEVMmrrCHKVCn0SliOc/zvG9JiBf1US3cgsUxGniVxPh0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from GVXPR04MB12038.eurprd04.prod.outlook.com (2603:10a6:150:2be::5)
 by GVXPR04MB10706.eurprd04.prod.outlook.com (2603:10a6:150:219::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.15; Fri, 28 Nov
 2025 12:34:37 +0000
Received: from GVXPR04MB12038.eurprd04.prod.outlook.com
 ([fe80::1033:5a9a:dc18:dad]) by GVXPR04MB12038.eurprd04.prod.outlook.com
 ([fe80::1033:5a9a:dc18:dad%4]) with mapi id 15.20.9366.012; Fri, 28 Nov 2025
 12:34:36 +0000
Message-ID: <ffe5e4d1-49d8-4075-a5c4-6f27dda7f35a@cherry.de>
Date: Fri, 28 Nov 2025 13:33:55 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Fix audio-supply for ROCK Pi 4
To: FUKAUMI Naoki <naoki@radxa.com>, heiko@sntech.de,
 Alex Bee <knaerzche@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 knaerzche@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Heinrich Schuchardt <xypron.glpk@gmx.de>
References: <20251027005220.22298-1-naoki@radxa.com>
 <acfc2185-0cb9-4620-abdb-ee25028e8374@cherry.de>
 <a93ace02-a952-4727-957b-0ed790b47676@cherry.de>
 <20486653DCCA80ED+7f87a03c-519e-4d6a-a47c-7670e5ae502c@radxa.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <20486653DCCA80ED+7f87a03c-519e-4d6a-a47c-7670e5ae502c@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: WA2P291CA0016.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::12) To GVXPR04MB12038.eurprd04.prod.outlook.com
 (2603:10a6:150:2be::5)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXPR04MB12038:EE_|GVXPR04MB10706:EE_
X-MS-Office365-Filtering-Correlation-Id: 5347e42d-caa0-47c9-34c2-08de2e7a7de2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|10070799003|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?NkNJU2lmRlJpTHBGeHplYklUSElqc2lIWm1QUHlxRTNVSzB5OG0xT3p0VmhE?=
 =?utf-8?B?MmtsTThvL0J0N1J6NVBDd2tsQUNjWmJpYXdoZm54MzFlVHU3djdPZHltTnJI?=
 =?utf-8?B?MXFzZmRzNEhCUTdqRjhvbHpQeUVPcU5PZHUySW05dElweDBPQXJMWDVhZU1t?=
 =?utf-8?B?QzZGWVlvUWRvMWF3c0I5aWR1QlYrbkF6cUZFZEhHMnZNWXdCQUFrbCt5aWFr?=
 =?utf-8?B?dlJyMHQ1V1AyMTJNbGNzL0YrQW5IL1RsZFB4ZjRjVWcyTkNBSUZVNnlEWjhy?=
 =?utf-8?B?eXdNTHBlK3pMcThQQkRGWmgxc2ZnMno4VHVWaE8yMms1R1JKWDBVd0I0cW9i?=
 =?utf-8?B?ZlBMNi9KNUh4clRXSlBGZ204eUlLQVQzZXIwTmc4YzgyalNWM3lSY0o2WU94?=
 =?utf-8?B?U1hGSzdLbTdWdlBpSlJYR0tTODRnUm1zVjJSaHlQYkdvaXdzSVIvSGV5N2kv?=
 =?utf-8?B?V1pHdWllZGFYZCtmZTBQeGQxNEVjeGhxY2plSGJwWWZIVzJ3STdWbG0zcHNs?=
 =?utf-8?B?azE1d3dDVDRKNVJIMEZOQmYweEN4cVlhTEdnbU5OdTVSNEFmcXp5ekFzZTlt?=
 =?utf-8?B?c2VrUkxlRmw1RDFOdjhUMWNEdjNVM2tuUmRjZnRmOXFaV1FXWXhPUXlRaFc0?=
 =?utf-8?B?YlZ4MGxGTGF5bkZ0eXhwdy9nKzJnMStxRkdGc01FcU5wV0VUMTdCbEdiQmF2?=
 =?utf-8?B?c2VTL1ViTWsyUmkyeWdOWjV6OGJjbzhqUHdpSW9PaVBCL051SkFXUGdaWU1w?=
 =?utf-8?B?c1p2eFpaM2Ftb25TVjMvZXFHTktZRzhkY1FWUGRGV29MVnBLWFhDbXRPbUNr?=
 =?utf-8?B?YzROMEtHUUJZL3ZCWnJPVFNQK1BUK0h4NVZ3TlVDU0ZnSXBEbWhoMVBVY2hQ?=
 =?utf-8?B?aFEwN3RwbXd4Q0kvSzRXUFdneEs3aUljd3U2eDJhcmgzOHN0UHUzQzlvWklV?=
 =?utf-8?B?UTFFM3I5RmkxaTFscDh5S05YZitnRGZQSG9uUWxvWXJkNXhWa05sMnV4V1FD?=
 =?utf-8?B?bWQwODY5dUtlN1pLbHBWTlpXL3BSTWFKalZRU3d3dU9uUzZneTN6YzJNaUJV?=
 =?utf-8?B?RlFtc05ob2xHS0c1d1hjTTNmbkJpbHYzUk5OTW5iOFIyY0J6dmZXcXZub0Ey?=
 =?utf-8?B?WHVYNHc5eE5DUXZuVHNjcjFKZGVVQllZcDBHaG9ESGJLYUptUU9CYlBiWGY2?=
 =?utf-8?B?TGVnaklMYWFnbmRiTjJGbC9XVEpLNkZPS1o1M1lKYkQzcDZjOU5rTU9Ga3RU?=
 =?utf-8?B?V2lNd3IrM0VOeG5xVzNWSlBPT3VLUTVnL2tYcDZWNGEzZzlRRW45REhVdS9o?=
 =?utf-8?B?Y25NNkJOeGIrWUIvbTYyKzJJNlBNS2ZLT1NQR2NrODc1VEFoeldLTERaWnJo?=
 =?utf-8?B?VXNuNzFaVi9hVEtqU3g2ZnZwanJmY2pBL3lPTU41aGpOTEJqYURJRW1aQ0R0?=
 =?utf-8?B?Y3lTYTlweXErY0xzYm1EYTR0NXZ3QWZyNk5XdXBBbzZVRXJwNktuaElXWUpm?=
 =?utf-8?B?cFhlKzJ3MXA2TmdvZi9YVk0xNDhvVVpxSlRqZFhoS3c1OFBUQThhYWpDWlFF?=
 =?utf-8?B?UkxLbDllVVJoVWJYUW5KOTZ6UU9UZUt3N2lwT0RkV0lDdmk3M0NsaUhtRmtR?=
 =?utf-8?B?MFNrVXlpYTdzQ25SL2o4bDZHSFpGUDBWLzNKTk9OUi9KTnJkM2xGNy9nbWRk?=
 =?utf-8?B?UEZqY3lrZUxaSzR2MTNjYmxxeTVMYVhEVEM1RnNiS21KRHdzK201Rmc4eTZT?=
 =?utf-8?B?V0ZMb3hObDlFTHhaKytQRnA0TlJiR2NSUmsybk9QWjF5bnlaakhDZ0NnUUh1?=
 =?utf-8?B?dW5JMnZTNUJFTlJHTEVDZFNFUDl1VHRHZkt2Mk9Yb05OWUhBL2FJTG1FZy9H?=
 =?utf-8?B?azU2RGRJWG9rZ2J3eTVjZEVkbzhsUm9lYjlXS250YVFaSHhrVldFY0tlYnlI?=
 =?utf-8?Q?PkRf/jI5q+uHO+TDJBcEalzCpnURcN1z?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR04MB12038.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?VHRDdldwd083cnROUmJNSGxLME1EU1VKNjJFWS8weWh2eUJ5a00wODNJSzVY?=
 =?utf-8?B?Zis0RUtmTnhPaW5ob1RTelZZWTFXYTVhRDNMZEc1ejFQaU5rYjNDOEFBZlNX?=
 =?utf-8?B?a0dyVGl1ZTk4aDdMb2dTTXpCaWl4UnlKOUxlZGtwdDQ1eTVjTkdIejFobFZE?=
 =?utf-8?B?QVBnNUZMQTJpRnNnL2h1Y3hQOEhXSFFkRlJ5WkdVbzJNQTJvbUpKSE9HSEdV?=
 =?utf-8?B?V2FBUUc3NGFtbVF5akErZ1luQnREM2VQSklHRWRCdi84ZFdibENNMmRtVnJm?=
 =?utf-8?B?ZWdzNUNqVlg2RFl2VHBFQnh0MmROZlhuZ0RHMHpkTlBmVGlWaHFIK0lQYlN5?=
 =?utf-8?B?a2NsYVZPZ3ZoYVBrRDMxMEZOS2RkdWRWeUdGK3JCeEh1bFBKems3MXk5L0tS?=
 =?utf-8?B?R3JiSU1Mb3lHMG52YlM3TkpVSDlFZHcyd0JPY1JXRG9FOEtzbEhDTU5MRDVo?=
 =?utf-8?B?M2VhVXMzNllvR0V0VWV5SnVkbGN3VWt6SmFoelhJMWM5VTcrK2c3UFIwS0JR?=
 =?utf-8?B?SFJBYndLcGxDRGdYQk1EaTRBTmFpTnNkNXoyMzNnbUljVlRaYmwzd2hkZEV3?=
 =?utf-8?B?cTFTWDlQTmZic1VxZUVlYVpjaEt0MlVqamdzRDNGQ1B2ZlFQcHpEOWFGNkp0?=
 =?utf-8?B?T0djZFpoaFg1QzRGc2Roa3k0Q0xnb1ljMmZFOU1BejJzcTQxWXYxczFZMnRM?=
 =?utf-8?B?VmlXUmt3b1NUaGlPQXJoYi9Xdm1HbGl0YkVEQWFoWUp0QU9NaUR5K1ZwWVJu?=
 =?utf-8?B?cTlzLzBpd1pvOXNpMnppdG0zQTIxZ2gyK21ldHJkSnZ2U3hyMnEraGhnT0JL?=
 =?utf-8?B?Nll6NHg5ZkYyMTdudDhLdXVEaUZlTU1YdXJqUDJPMzI2KzFEYVFYNFMyOGhw?=
 =?utf-8?B?YnJHNW13UlNFd2xKMysreFRKRE5jTXVrd0ZFNCtXLzdacU1lZkVhK25Id1dW?=
 =?utf-8?B?UWQ2MHFOdURudTVkZVdNTDl4L1RLbExKaUZPOEx5ZjVtWGNIZ3IwZnhqTms2?=
 =?utf-8?B?bEN5UXdCcWJVUzJaQjVwbW55REFqN1pCVXJ6T3B2VzU1c0Eyamhhc0pBdXpF?=
 =?utf-8?B?bDd5SUZob0lELzNtU1d2YlRUTUVpKzhHT3hKOW56YW9acW1Vd1VobHJremkv?=
 =?utf-8?B?NHJ4OGsreWZHZE5RYnRYRjFzVmhhY2FwRzZOaTM0M3Z2bEVyQTJLZ1UvUW9w?=
 =?utf-8?B?alZ3SmZVcUhRYzhQRmI3K0tVTlVTV0xGVjlBdHJib1o0WXNJTzNESVdueUJW?=
 =?utf-8?B?UzF5REozazhFcE83VnpKS25OZ0txcEsydFdxWUpsb1pROXJJbDZMTWhwSXlR?=
 =?utf-8?B?bjdUczBRekZKUkY3MDYxeElkWXpFVmN2Nm1wV3Q3Q0xNSkJ0TVZETzgxOUpq?=
 =?utf-8?B?bHp2Q05lUUJMeDJucGltS1lFZldxSU8wT2k5S0ZJeTNiODZhTlVKQ1VNYWVr?=
 =?utf-8?B?UGtrNlVuQlpZZEMrRjQ4QVJXRytxSzBnRkNzRnZGb043dFJlRmNCS0lTbHkr?=
 =?utf-8?B?OEptTGlqL1pmZXBadXNCNEI3QmlvdmR6UVN2NU83M05kcC9IVTJpUXNzL3VK?=
 =?utf-8?B?Wk0rZ1JYVlZZaWljbjBPZnRWNG9JbHJzZzRKRUIvekU2cXlSM0xlYTV3dVc2?=
 =?utf-8?B?M1dhbFh0dkNoNkphYng0Rm9YV2drcHlPNy9uNWE0TTRyODdQcXA0aUFGTXpx?=
 =?utf-8?B?LzlXdHJPZUNYM0JRMjcvZzZ5Z2RoMXVLdFBKY3k0bmx5STRVSkppZG9pVzFl?=
 =?utf-8?B?Nmo3TGtQRytEQnZVY0tQUmRuS3Y1UkxmUmRMRythZTZoayt4ZnlSMUVENFRW?=
 =?utf-8?B?VGh1MHA3a2g0QnExVXloU3pCcWlWdHZ4U3Z1WW1pbVV1OGRwV09Mb3lVOHBT?=
 =?utf-8?B?MU1IN0xwR280aDFFNTVCMEtNdHdOYWd6Rk9BbGlzeFdGcGVzckdVSXRWZXZk?=
 =?utf-8?B?ZE5uR0lDeEN3ZlVWc1ZpMWNpOEY4U01reFluem5ZVHhTNHZVKzZvMjFPNjAr?=
 =?utf-8?B?NklORGM3aHlKaDR0TG9jV21QRC81VmRFOHdVUWVKYTRhTTE4K3kxZjg3REdo?=
 =?utf-8?B?Nkt1dVFsajNhMjZBc2xtRHFjQ1NJajZmVWlraTJXaGFxSE1MVjVtNzdualVM?=
 =?utf-8?B?cWNvWXBQWVNaTjdTYXhhUHpSTy91czAweE9nTTcrcG1uZUptZkJRWkNLRlVJ?=
 =?utf-8?Q?ldx3nxepNhLap6GgnSP7TkQ=3D?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 5347e42d-caa0-47c9-34c2-08de2e7a7de2
X-MS-Exchange-CrossTenant-AuthSource: GVXPR04MB12038.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2025 12:34:36.7508
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D6FbrRlezjInQFWdBzzzHlreQ+Mfl7DV43JDOgPCoq8MzBZHRucIqpXNCWDWAN1vOl1yv9ZgUzmJs0Pc6ZFjAHBUUbBFnuJpHP69lskVoPU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR04MB10706

Hi Naoki,

On 11/28/25 1:09 PM, FUKAUMI Naoki wrote:
> Hi Quentin,
> 
> On 11/28/25 19:24, Quentin Schulz wrote:
>> Hi Naoki,
>>
>> On 11/27/25 4:20 PM, Quentin Schulz wrote:
>>> Hi Naoki,
>>>
>>> On 10/27/25 1:52 AM, FUKAUMI Naoki wrote:
>>>> This reverts commit 8240e87f16d17 ("arm64: dts: rockchip: fix
>>>> audio-supply for Rock Pi 4").
>>>>
>>>> Fix the APIO5_VDD power supply to vcc_3v0 as per the schematics[1][2]
>>>> [3][4][5].
>>>>
>>>> This fixes the SPI-NOR flash probe failure when the blue LED is on[6],
>>>> and the garbled serial console output on Linux.
>>>>
>>>> The ES8316 headphone and microphone are confirmed to work correctly
>>>> after this fix.
>>>>
>>
>> Please test the ES8316 works when booting Linux from a U-Boot where 
>> ROCKCHIP_IODOMAIN and SPL_ROCKCHIP_IODOMAIN is *disabled*.
> 
> I tried below, and confirmed that ES8316 is still working.
> 
> diff --git a/configs/rock-pi-4-rk3399_defconfig b/configs/rock-pi-4- 
> rk3399_defconfig
> index 219f42bc7d4..276ca961c10 100644
> --- a/configs/rock-pi-4-rk3399_defconfig
> +++ b/configs/rock-pi-4-rk3399_defconfig
> @@ -53,6 +53,7 @@ CONFIG_ROCKCHIP_GPIO=y
>   CONFIG_SYS_I2C_ROCKCHIP=y
>   CONFIG_LED=y
>   CONFIG_LED_GPIO=y
> +# CONFIG_ROCKCHIP_IODOMAIN is not set
>   CONFIG_MMC_DW=y
>   CONFIG_MMC_DW_ROCKCHIP=y
>   CONFIG_MMC_SDHCI=y
> diff --git a/dts/upstream/src/arm64/rockchip/rk3399-rock-pi-4.dtsi b/ 
> dts/upstream/src/arm64/rockchip/rk3399-rock-pi-4.dtsi
> index 046dbe32901..c734f7824c0 100644
> --- a/dts/upstream/src/arm64/rockchip/rk3399-rock-pi-4.dtsi
> +++ b/dts/upstream/src/arm64/rockchip/rk3399-rock-pi-4.dtsi
> @@ -51,7 +51,7 @@
> 
>          sound: sound {
>                  compatible = "audio-graph-card";
> -               label = "Analog";
> +               label = "rk3588-es8316";
>                  dais = <&i2s0_p0>;
>          };
> 
> @@ -516,7 +516,7 @@
>   };
> 
>   &io_domains {
> -       audio-supply = <&vcca1v8_codec>;
> +       audio-supply = <&vcc_3v0>;
>          bt656-supply = <&vcc_3v0>;
>          gpio1830-supply = <&vcc_3v0>;
>          sdmmc-supply = <&vcc_sdio>;
> 
> Notes:
> - SPL_ROCKCHIP_IODOMAIN is not set by default
> - I don't understand alsa ucm2 ;) so I modified /sound/label
> 

Thanks for testing. Let's hope the original issue doesn't appear for 
*some* boots (depending on probe order or some timing for example). For 
now I guess this will do. Adding Alex in Cc maybe they are able to 
reproduce the issue they had 4 years ago with their board?

Cheers,
Quentin

