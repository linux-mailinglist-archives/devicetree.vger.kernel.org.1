Return-Path: <devicetree+bounces-238511-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB46C5BDA0
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 08:53:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1C19D3B6B1C
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 07:53:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F34872F8BFC;
	Fri, 14 Nov 2025 07:53:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mysnt.onmicrosoft.com header.i=@mysnt.onmicrosoft.com header.b="c1WfuTsX"
X-Original-To: devicetree@vger.kernel.org
Received: from MRWPR03CU001.outbound.protection.outlook.com (mail-francesouthazon11021128.outbound.protection.outlook.com [40.107.130.128])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B50E2F7453
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 07:53:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.130.128
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763106795; cv=fail; b=IBGcJNg83a9fjGiyhVnUJnPWkSdY/OC78tkyLU9y2atggORIlFNAd6W2OuPny8tev7snFy8uq3qaCVN7/PXw/hcZZtneMZsQhbXnHN02QrCkS29NIdCZlNxqujXPC8npFK2s45CcJ0ZXSjvagn1NNHE8jnJPe9oqkvIkmP2VEh4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763106795; c=relaxed/simple;
	bh=KlXUPe7WTEKzTbqoihIVjoaokVfM0h40O5PHNVHOt5I=;
	h=To:Cc:From:Subject:Message-ID:Date:Content-Type:MIME-Version; b=iKJRsNgWurYZ/etGyj5sWV2DgHsRTRJs1/ONvsvuxwFTmHotXLcdm2bOYQHoSJliCKyD/raoFbcv/aX5AlaA0YNkNO7JDyZxTBuk19JD6NMCzo02JRIapzr6cuUc/PYqBlHJoJdlkOfmh5ERB1eiR72Y9yAB86P6uewu01jJ1V8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kontron.com; spf=pass smtp.mailfrom=kontron.com; dkim=pass (1024-bit key) header.d=mysnt.onmicrosoft.com header.i=@mysnt.onmicrosoft.com header.b=c1WfuTsX; arc=fail smtp.client-ip=40.107.130.128
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kontron.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kontron.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BYrQKMx2Rb0B8EV9PYIEt4v0U3wFyw2+jLo8XXk6qKRi51bz0ykelhfH2XDKy/wrXbA80D5PkdQLkpgfogu9lU3aqOZskyJz4NkNbCh2vqex3IEtOkG4SbnWNx+AKnTz3jJuszwBcNFzDTrJBTOkDfrLqMJTVcdpZ92XeOwF3f0iyH/SOSx76wxl94xTr+Buy4bFskdOf9sJex+cSCA9Rc7ejgsCUsHqOw7KClTdizrokWVeVzR2RzW78KdA5g6dP3bXBz7ppW5Kr/A0SSmWBtomxTuR6wn/1MC5KXhtkEiHFqyNB1Kns2ckbPK7fn2S2wx+YFs+X6kto5MKpOKrCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OJNE66p+kDEbBqlSq/zwHYRT1DCeOCMX+5T/qUCKooU=;
 b=rw+9Sa6RV657HZhZVn1hvIpdKwr3PiXuMDq9DAYimL7C6ILrbygjU6C4x7nfxvHvFuxXuhcNn6SVYjJcTBWUy4hlS8VUh3kNSjINbx10ATYxuqRTUXZPJFtFzW1KPLee+kiBHR7cjIhD0KRtJX017+lBDJ7pu4lLi5QiF5KP+Vp44w6Oyp/WApjtPkPLU47PXPoBgMtvcX/36oU0S9MX1da0ogvh+Cp/P1fUwpFNrKiVZwktTI5wemxkyj91MxaUC3Ibud+sJRpyNHjS2dBF2dBsoRPj9IaZbOAZ8NRv5YR5IBEgp3+mOTw9i/XNb4zvItxVVIPSVRsD295HDslWHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.com; dmarc=pass action=none header.from=kontron.com;
 dkim=pass header.d=kontron.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OJNE66p+kDEbBqlSq/zwHYRT1DCeOCMX+5T/qUCKooU=;
 b=c1WfuTsXdxgp4PLxOETRgHk6x1KCXRF1MXkGW4vVweWm/4U6T+52hCv/PEBWQ+YV/iJC2jYQfEPphMFwlsYvKaOxR+KDLNfbfQa3hlIigqzrzqXPjfoZbew0LoFmDmqk8xCEe9XQdh9MGbaIYeYZIWR9owpk/2B2IISfbOjRI50=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kontron.com;
Received: from AMBPR10MB9319.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:6af::10)
 by AS4PR10MB5269.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:4b5::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.18; Fri, 14 Nov
 2025 07:53:09 +0000
Received: from AMBPR10MB9319.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::e931:a4ae:91cc:ea1c]) by AMBPR10MB9319.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::e931:a4ae:91cc:ea1c%7]) with mapi id 15.20.9320.013; Fri, 14 Nov 2025
 07:53:09 +0000
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
From: Gilles BULOZ <gilles.buloz@kontron.com>
Subject: [PATCH] dt-bindings: vendor-prefixes: add kfr prefix
Organization: Kontron Modular Computers SA
Message-ID: <13a2c25b-9633-c06c-0c07-95157a2a9c1e@kontron.com>
Date: Fri, 14 Nov 2025 08:53:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
X-ClientProxiedBy: PA7P264CA0159.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:36c::12) To AMBPR10MB9319.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:6af::10)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMBPR10MB9319:EE_|AS4PR10MB5269:EE_
X-MS-Office365-Filtering-Correlation-Id: a0692c5d-c67f-44da-a83d-08de2352dabe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?UEgzOU5GRnhyT1VDc3VOclpzV0duTXB4VXpHZjM5SHVhRk4yUUFZWTRBbllu?=
 =?utf-8?B?eUk5R1l6YTVjd2x4cG9YZkt4ZnBQZzIraXFjeTFpS0o3eFdkbUVqQXMvWmVk?=
 =?utf-8?B?MlU2NVdiTFBjODZVZWI1YVQvczNzbXloMmtGK2ZDS0lVd011NnE1dzhTU1dZ?=
 =?utf-8?B?TDh5Mk5pa2dmbS9sZGFFOURZc2RrK2RvWVJ1MEJNY2k5SElQR3FnVk5BSUYw?=
 =?utf-8?B?V2pvK05vdFhyZHVCWFpJV012dFBYTTdpSStEdlZWNDJsRzhva3pHWHpSckhh?=
 =?utf-8?B?Q25CaDFuVXpkTk9BNE9VdmViaGlqNlFWVFpDSWc5SW1Bck56dms5YmIyb3JR?=
 =?utf-8?B?ZDU4blVpVXNGS3ArRnR3UmFJdDN3NlpqSEpGazVqL3JpbFBiRzd1OElUUGVp?=
 =?utf-8?B?VXJ0RXg4bjdjMzJxVVZOQ2F4TFk3K3lvK2lOdUJjWHVQMGV2ZHp2NGpya2Iv?=
 =?utf-8?B?M05MeGpFVktWSUVnaCs2bCtUSlhyVCswUWdUOEJQRmUwelJvV1NtMnhLek9q?=
 =?utf-8?B?eUNEelpHcnUvdkdIeEJHeHhNZjdWa29ZUWY4WFZrQXc1SUQ1YTRkSHhuVGFP?=
 =?utf-8?B?bFd0NlhiUWRKQ2Rmc2lsUWdpaUhURXhaTThIdm5aZlA4UFZKWXkxcytYOVRN?=
 =?utf-8?B?eFFuaUxQOWtXWUF6TTBIR3BiT0tpRitwZFpRWm4ybzRRUytLUFlkbHp6QnVx?=
 =?utf-8?B?MHF2dnlvWEhESTVRY1JtOXpvYkRTRVV4SW5VS0h0Vk1WdVpaeFJiOFp3bUJG?=
 =?utf-8?B?enA5ZFVKbmdkYmhJclNaMUkzRS84TkZBS1pBRUMxZkxiVzVweGpMQ2lJMGUy?=
 =?utf-8?B?QmdyZXdUdkNGRlc3WThBaFBvd2ZuM2VtbFZ2MGwyZHFIWE1lVEI2bC9MMHZF?=
 =?utf-8?B?Um9QMFRHZlJid2ZZZEFCWGpKVmpXeTV3Zy9uMW9YSXkyVUhPUTFibHZjZjhu?=
 =?utf-8?B?WURkTU1YcFg0aWZPUElidkdIeWF6RC9pa0VTbFl1T3U4T3loR295cGVYWXBP?=
 =?utf-8?B?TEZQMnFLd0FLYVNGaUpRTWlFZ0ZyT1FHQ1Y1dW1KZUpBR1pNT2NjSkhPYjI3?=
 =?utf-8?B?VDNmT0p3bU9nUitMWitwT1pWK3BVWmMwSGJ5OStQdjJZenU4OWhwT1J2V2gx?=
 =?utf-8?B?bGxpS3pCcUd1M0VhSEM1Y0FTdFE1VHhMdUtpSVh4NlZWWkVkT3h6RHJEd1Nv?=
 =?utf-8?B?SUtVWnBzZmpjYlBYUzk5MFpGWjJseHNlQlo3a3V1VjJrVnJTaTVBQUtkbWdx?=
 =?utf-8?B?aWhteFAvNURDbE9NM3drVVVtejRBZkQ4U3FwWTUrZWZweTNkVThHLzMxck5Q?=
 =?utf-8?B?M3k5S0krMElZNnBDNGM4TDZKWVlPWEIzWDFRVkhMSmgreDBLRWt4b1RmajRt?=
 =?utf-8?B?RmNjbmQ2T2czL2hqYmEvQWp3K2llZ0NGTnhFVXJ0bDJvRUlreUpsbHVyOHBv?=
 =?utf-8?B?cU5hMjdMYWYwR1BPWGxhTjNrQ05EVHVKckdxVmYzVU9wbGRoL1VVNk1NWUI3?=
 =?utf-8?B?TzU0SnlRNmV3ajIvSEZNMjJvWksvSEFjTHkxV1FFdmw5Q1B1MFdTS0EwMmc1?=
 =?utf-8?B?ZzNmVGVmTTlibFJCRWdkWGtOVnFDUDBlVVJJL1pDM0xNZFNWeFdCQW9uR256?=
 =?utf-8?B?T1VFNXJ4bFdyREcvNnYwWnM5R1RDQkJScDFFdGpsbWdQb0Y0OENNNkZRcitP?=
 =?utf-8?B?MmhZOWVVdlZ0c3NtV050M3E5M3pBZHlzWnd3SDgvVFI5UWxqdkgzdVZ2VGVS?=
 =?utf-8?B?R1B4YXZTbXFpdS9CeUFPazUwK2llcFByeVpCTE4yUzJzYkhBSjcyc1lhOU5w?=
 =?utf-8?B?K2xaeG1UZHZzYlpGNms3V3FIbU5TSG54Ty84RWl1VTlwTE1rVGJPZ3JodVRK?=
 =?utf-8?B?V1pFMy9ZdWxkSXhrVWUxNXZ5M3ZoaDR3czVTbFBVMFZBSjRLT093WUNyTWxi?=
 =?utf-8?Q?4xFp0JiuQfao4roZwckTGnhLZk3H8AS3?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AMBPR10MB9319.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?YnJaYzhSVHJnZnQ2dzUwY3duMkM0MDk1dktFVEVQTUtKMXZqenpXWG5XRTNX?=
 =?utf-8?B?dEQ3Ylh2UVNOZEFEOVZrWHVhLzhnYmc0OE9KNk9Cb0NzTG1tc0RGZVlFK2lm?=
 =?utf-8?B?Qk9wVStzdnZwMm40cmRIMU82S0hMVVVKcmZBcm85aVZIWDlyMWwxN0N5dm1y?=
 =?utf-8?B?TFhkZENmMTFGb0h6L2cwRU9xcXVYa1BjWWt6MnVGTE9uMXFwckRlTk16TVV6?=
 =?utf-8?B?c2RCREYyNnpFSjMwbnAwMUFpZW9ZeURnSlVGK0pOZFlFOThLQTRJekZSMmxr?=
 =?utf-8?B?TlBDdTJlNUw0bW9aa3pON1VZK2NBbGNiUmpkUkoxMkxDNjA1cVZqbUd6aVlw?=
 =?utf-8?B?Wmk0UE5rMHhjWVdRSFRIbjBaQjRHYlp4aFJqa3lzUnV3Z2RqZTNpNFZmQXBj?=
 =?utf-8?B?cVRUaDlhemV4WDMwbEUwOUZTNTRVN3VPNmY5azhGclIyeHlJaXgrdW9uam5U?=
 =?utf-8?B?ZXRIcjNpSWZUSDFRUHM5ZmJ4UHRXQWdkZ042ZGNsNDV5RFZXUXg1R2dOclhL?=
 =?utf-8?B?RzRZaXlSdzVtZ29SOGhwWE1vdm9WcmpacmpaVW9pcUwvUXRETlNQTVcvRzV2?=
 =?utf-8?B?elA3NStkRTB1MmtjZUhoMXUvOU43STdROXdUN2cxMkJxV2JFUUZhS3g4Wi9t?=
 =?utf-8?B?T3Z3TVdUemhYdlZQRStmSk9OUWJpcnVubko4UllJRFRKYmx2Z3VLRVVxbW9q?=
 =?utf-8?B?SUZKYjdUQUZzZHJFak9aRkNGbVRIQU5icUZoTGRGamZXTjNxZndBVWdWK0J3?=
 =?utf-8?B?NnFDUXJ0OGZoMVdaOXIrUjVld1hXdGNLT2F6c2Y0azRLVndzQjRHUlZETUk2?=
 =?utf-8?B?OTJzYTg0aWIxQTg0c240Sm5EMzU0d0J6S3dJNEZoVU44dTVHL2dCdHNGMU93?=
 =?utf-8?B?a2hFejIxUll2L01OZy8rVTBuMllFcFNhemVuMFZrT0FpbDNMTHR2a0Z3R2pS?=
 =?utf-8?B?RmhZYUQrUHZjcmFUc0QyZlBKWmhPMG1ITHZLV1llWDduYU9UbXhDNXNWKys5?=
 =?utf-8?B?SnV2bFRpRFpGUWFkUnJ6K3pQTi9kR2ZmK0xkL0hVekg0RG54aHN6bkZ5MDRB?=
 =?utf-8?B?d0dNZFhyS3Zvc1B4MFNQT0ZRdjFLQ2Z1UkJBVC9yRDZPZUt0Q0VqVG85SFVv?=
 =?utf-8?B?bmVsWVRBREJYbEd5RGFnUEg5MG5oTGp5MWVaUWw2MnRha1g5MzVnQVEvT3hD?=
 =?utf-8?B?WHQxeDRtVDdmVkl2WFliUERoamxLZ2twZFFpNVFYa2ZTcitKZ2VCY3dQT0k4?=
 =?utf-8?B?d2FQZTQ1bnczSE9xckM1VWdLMzI0SWUrYk9mL2loWXBRelBNYnJqLzhDYnR1?=
 =?utf-8?B?ZlZTcUFFZUtHaVpCbVErQXVQRUdtZ3d6NUdNQlV4YkdUUDNUN29RazB0Vzgy?=
 =?utf-8?B?RDlpQU92NUEzeTdKcmFaNkdBbUlKVElDbXp5VFFKaUhRR01oMlFTMVVaMDB3?=
 =?utf-8?B?SDV4RUhjSW02eWJSWDBRVnl1c2g0ek8zb3VmbGhDM3J5bnc5VGVNRG05VGJL?=
 =?utf-8?B?WFlqa0ZIc3FYUm5VSDBlRnVzRUdwU1NBZ05SOTBKNGVWK0JCVjg1MU5BaU1N?=
 =?utf-8?B?eCtsUTl2QjVkMm5TMy9QTTMydnBieXpSVm9rZGdROVZMeURCTjM5djFHV09J?=
 =?utf-8?B?cHVHRXByOExmZFpTZVB5MFFydVN3ckREeE5pNUI0VkZQcWowcnV3bjd5bzh3?=
 =?utf-8?B?L0NkOStlSjlzNlF6KzVHcnpQcmt3emh1dytrUG1PamFYMllleVlUVkRZakhO?=
 =?utf-8?B?MWxwMWxOdC9TMzNRNFlhTER3dVZiaHQwR3JHb2w5b3hjZ29zOXN5VkZjRW1m?=
 =?utf-8?B?WHpwR1Y1ajcxZUl5Q1VPNi83RFUrYmM0U1hpeTM2OUJVZFdFbHNUd1JLeTZw?=
 =?utf-8?B?RWVKaXhzeFhTSDlLbm5iMjdnTkpGQmkzUy9zZXZUWDJaRXNhU1p0YThkNFl5?=
 =?utf-8?B?UE9DemFLa1BaaGdzR0ludDdYUUtNWXllZi94cmUzMTlrUkRaZ3grM0F3ZjA4?=
 =?utf-8?B?ckF0bEFxSnJHWThNRW9RUXFITFdNRXcyT2lJMXZpNXM3NkxNZTQrOTRGWmtJ?=
 =?utf-8?B?NnBCM1l4ZVI2Y3ExYWQ4a0psZ2FGa1U3NXlpcnZBQUlTanZzWHZrdnJROEh6?=
 =?utf-8?B?UTBWMThiZE1CV2JYQmZidGlEdDcvOUxvbm8zU01jR1FKeVJQdVUxUGRZYTM1?=
 =?utf-8?B?Z0E9PQ==?=
X-OriginatorOrg: kontron.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a0692c5d-c67f-44da-a83d-08de2352dabe
X-MS-Exchange-CrossTenant-AuthSource: AMBPR10MB9319.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2025 07:53:09.8328
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 93kNJKn0Slb8W0rcDyEKjxvLBnv5UFeoYqbzDo5CnDMPhi5QX6rcScMzGF8rIV9LfWGpDSq09uffUyDUDugOhTwmqIjTeGpUjQokdx8dC5w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR10MB5269

Add kfr vendor prefix for Kontron France, which is a single-board
computer (SBC) manufacturer.

Signed-off-by: Gilles Buloz <gilles.buloz@kontron.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff -u a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -843,6 +843,8 @@
     description: Keith & Koep GmbH
   "^keymile,.*":
     description: Keymile GmbH
+  "^kfr,.*":
+    description: Kontron France
   "^khadas,.*":
     description: Khadas
   "^kiebackpeter,.*":


