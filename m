Return-Path: <devicetree+bounces-257798-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WMhEHSGOcGkaYgAAu9opvQ
	(envelope-from <devicetree+bounces-257798-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 09:28:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E7853908
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 09:28:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id AA4E446AFBC
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:23:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91AB33AA196;
	Wed, 21 Jan 2026 08:23:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="HYELy4k7"
X-Original-To: devicetree@vger.kernel.org
Received: from DUZPR83CU001.outbound.protection.outlook.com (mail-northeuropeazon11012043.outbound.protection.outlook.com [52.101.66.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B74D0299A82
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 08:23:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.66.43
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768983823; cv=fail; b=mxsEptw+rjRxccDFEZBqp8VN+BTELtJH65V3ZMI3D1EuKIrySiyhax/bI6vOKhtKdLAXVYGipa8mOLsE+Viu0GQRZGOwSJv1nzeJFfX3OFVya76pnWQB9V6BuqBkgh2uLgMckkUySRmV5OGvHKMwsmDQrJoNVAnxHJkhlzweHhA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768983823; c=relaxed/simple;
	bh=GzAWU0d0L/GudUX4baliNY40TmiSAizIZYaykidLZhQ=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=Wxv7M4mgpt3ilHbuT03Qp26Z+OkzZ+sA9XaDcR03e//r/h5LGXoxVvp2lMBjd4JZ8CVGVC4ixZ0VOsd1kFKLZE/If5Id27nhaG4vyMhvaWLvphk40pYgJb8qqINrirLjYSsHnGLNM4tpBilwC1uBC/ABDAyzjwMBmOLVghvloaI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=HYELy4k7; arc=fail smtp.client-ip=52.101.66.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZtxgmPBPqX45JV6LsfVzbtNO48OLEYdZI1S7O/d4QEqJr3QcT/B+W2BCQha4MVhhw4cgcJO9co+jqlomS12xvQ6vmKe8gEYDR/hmqoQestUaK7eaiB1VqiBRn3hb2V04pUk2tvzIIbBONM4a1cL2O9QeyYIH2fATiFB0nFMhsdiWSO69gtifM/9Vo8G/sxuBNvgbZML/CCUQcSTzSYSXwWn2EZzvugjn14IAn1J8t205geM2c+x+nN0ezjy1+PJGvTs3OLWajBMhOzm29o9Ltg2O+vPnLHAtoXyYokGk2THxt2EM6jj1wJjZL3H/C7ffEZDJxF0OKBVcGfZMNr7XLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=81IJiiV6OhElLI3zagMvfx2BPus+qwNtLipLS3/QXkw=;
 b=bbhomWcQCnt6pr/9m84+hukcll5swOZ2iv5sWRk96Tqb/mQt8l0PLAyVwiHhPqdhVXkiRCkzI+KiCNHxvh256b3iwDKCJtHMPQZcLUiEv6sre6yiSxOutzMq2udvndr7xc/+Rl3g5i6rNFJjAB8DmwrutIhmaupCdy1iN6/dWEvkE4wwlU+oMr1NJ3AJeVen5Fr9nge6Jv+gWyuMJ9285XM7T15+i1uf7hVAV3gzqpAr/8Bsc/WJJHMXmUsD/R4nid66eyTlCY7u2pXh+pe6R/Euo3zep4UNkNiPmPLLgFLjBeQwtR4KvrqJR6Mt6kGfgQV8AfRt9v+tnZnFtUV8lQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=81IJiiV6OhElLI3zagMvfx2BPus+qwNtLipLS3/QXkw=;
 b=HYELy4k7q+RaRaplYG2LpWnZeExv1mSC6067vGI7CWmkVTe0wqdbWoxYqNYvr3tGKznkNiLOAANizDoH9cySf+vt6cZH9aUti6/aqjsAmxjkENbJzml7NPFBPLPDMAiZZFYvGyCKot3t6SxZ1tDbeRAQQw+W3JXJqKaVSgzlL4WIQT3wHc8Cy9vtHmtE6Ce2+9DqqzJSlTnnhLQt5CNErTVzB+r8R79wA2G0TvhY7EQqcSgKwuk2dZGirAgBJmUrSfcepYr1OlFPFP/ZCGK1z4PRcBDGsWDwCIBy2VJomOkqQrUgGk9VbcpWN4V1q4Yyi8OagkIw2xKmVuxjQDERuQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by AM7PR04MB7096.eurprd04.prod.outlook.com (2603:10a6:20b:113::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Wed, 21 Jan
 2026 08:23:34 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::4609:64af:8a4b:fd64]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::4609:64af:8a4b:fd64%4]) with mapi id 15.20.9542.008; Wed, 21 Jan 2026
 08:23:34 +0000
Message-ID: <e6ea0b8b-5f6a-4b37-83d5-3f3aa3e37e19@nxp.com>
Date: Wed, 21 Jan 2026 16:24:24 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] drm/bridge: fsl-ldb: Allow the termination
 resistor to be enabled
To: Fabio Estevam <festevam@gmail.com>
Cc: marek.vasut@mailbox.org, neil.armstrong@linaro.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, frank.li@nxp.com,
 Fabio Estevam <festevam@nabladev.com>
References: <20260120231930.2782444-1-festevam@gmail.com>
 <20260120231930.2782444-2-festevam@gmail.com>
From: Liu Ying <victor.liu@nxp.com>
Content-Language: en-US
In-Reply-To: <20260120231930.2782444-2-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SI2PR04CA0010.apcprd04.prod.outlook.com
 (2603:1096:4:197::11) To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM7PR04MB7046:EE_|AM7PR04MB7096:EE_
X-MS-Office365-Filtering-Correlation-Id: 80d48581-86af-42c2-9480-08de58c65e47
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|19092799006|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?TGRQdmlvbnlLbGFPc3pveVNKMEpSYjBGQzhQQUVRZHNiNUJscGVINFZTZ3BT?=
 =?utf-8?B?KzY4YzFzUEk3MkJHREhwZ05LbFh3Q1p0cjlBSG5XV1h1NVNLc1RLNE9idnlW?=
 =?utf-8?B?OEJJUThIU1NPdUM1bjBJaEdPL2ExcGVyeTMwWEs2aU1sVWhHd2VlUGxYeEhZ?=
 =?utf-8?B?REVwNGcxbEpaUnlMSFU3aGg1eE1sZE84ZVNlSGhwV1pQTXpvMkxleVV1MmtX?=
 =?utf-8?B?YTJtZzdCeDJ0ODFMWXk4Z09uWExsYkE0VmRuYm43WlhqTzlscXlCenl3MUEy?=
 =?utf-8?B?cXc2S012OHRlS2lUY2xpMjVFY1BldnU5OGJ4WTVWRFk4MFF4Wms4YTZxanA2?=
 =?utf-8?B?b3BiZGZGQzhKZXhvV2RZb2l0UWtwcy9BVDl2Y2UwUStmUHkrd0Mwb0JieXR1?=
 =?utf-8?B?R3pBRThSMldoWkR6dGdJM1JKMnh3RE9wOUtiU2VLbFFlK3NFMHlWVVgxdnlI?=
 =?utf-8?B?T2VSc0p0RGhidDRzWk1yT3ZkKy9VcVU3MHYvNWdFeXZleElYOWVjQnF4NHhm?=
 =?utf-8?B?ZEZzUmIzZFRzS3VZSmYwYVlQK1lSY1h0WDFNS0xSRGpHNXlCT0h4ZkNvdmsv?=
 =?utf-8?B?cXQ1Nkx4dVFzd3dYQW5NWGZOSHJnV2xESzlPUnVmWWE5R0o1TE8zMStFbHla?=
 =?utf-8?B?QURVb2FrNDBWSXR2U014RlZQTVdkQ1hFc1lKbUM2Q0o3THhmNU93dkF2aWh2?=
 =?utf-8?B?d1hMcHJtcnFIMHVTYmoxZjdraDQ5MXBzZWNBWjBqVm9xTUwxUGVZbTdSL016?=
 =?utf-8?B?bThGTUloWkl1WFBQYU9Ba3FSSVJNMEVrZWtFd002WitJTEVPR2IrS2JJRTFX?=
 =?utf-8?B?OE14WVpHOW0ybW1aYmpMajJGVVlqZTN4WkltYTVwZU1meGRkdDhpdTRLM2hG?=
 =?utf-8?B?K2pEZkRYeGUyelY5QmxGTnpTQW04TmZRYWdaak5PNkRRRlZrai9Eb3JCemRW?=
 =?utf-8?B?MzFHWmpYeEFUS043eWF4NE94STZPWXVVM3UrME9XNkxFWUJVSmxhend0Mys4?=
 =?utf-8?B?V3JWdllrZWlObXBCVnQ4Z09RMGVhRWoyN25XTTEvZzlKZnhTM3daZDFndXlH?=
 =?utf-8?B?VVJvMEx2RlhHaFlkZmpkM29WVUthUE5ZYjI4cXF1WVN3eEVWa2tWVU9YMldN?=
 =?utf-8?B?OXRabE1BQTRiTUUvTm5BUlBHdHJ0ejBITnRLK2c5RzhDdmJadW5aYjY3VkM3?=
 =?utf-8?B?bk1EclNMeWVpcVVXSml2Zlo0RXJKY3IwWVhtcFZndXJvalM5OTFscnNLRHBs?=
 =?utf-8?B?T2FSSWl0KzdtYVZTNUlKRHFSWlI1ZTJpY3l3bzhTb0Q4UFowNEY3YStTNGNi?=
 =?utf-8?B?eTRFZndHOGZyd3oxbXcrU2tjL2JYcUpCa3IvWjRxRmFVcUlVSnVwUy92WHd2?=
 =?utf-8?B?bW1reTZ5d1hTNWdtcFNkeGtES2ZGcnRWTUpqcndXUVZ3YkswbFhiWDl3MXh5?=
 =?utf-8?B?NEpZd0F1UjFHVEpuVlZGWDkyZnRWQVVaSm9xemtqRloxYVk1RGFUV0h1OVJR?=
 =?utf-8?B?WDJsSHA2ZEoyaE9aYkFrR2tmQjJMMGM2eXBDa2E2TllVOFFkUkNpTzNSSmh2?=
 =?utf-8?B?RU02VmdjZFh0K0xFTnlZM2QxOXVHMEdFWlFTMUZxajlxbytjWHpoOFAxT2Vp?=
 =?utf-8?B?REV3ak5oUXY3N2o3VnFaSzJNUm1XS2lZWDR5ZXpjaFlWVStMcEZKeS9IeVJR?=
 =?utf-8?B?bWJEdEVsRS8wdkE1S3ErMGN3YklKUXFuVFVYNTBtWTR3SERSY21oWlZXUVZG?=
 =?utf-8?B?amVGcXZMZHNOMkxta3l6VHQ4RUMzbEc0cmF6VEV5dG9CSHA4eE4zOTByUDVa?=
 =?utf-8?B?RW5vYTc5QXRnbE9GS2wycVVpTTNIN1duVzRmc0YzVys1NU9RaEpJbEZEQlEw?=
 =?utf-8?B?Sy80OFBkZE81VEp5OGtzbk8xU2htSGgvajZQbmJ6Q01qSmNlWW5SWEJIVm1Y?=
 =?utf-8?B?WksvcUhGVEtEUnZPWVVMaG9MM2hGc2hIRGtzd1BEN2xIWndqTnZCSklCeWd1?=
 =?utf-8?B?TDdnSVgwM1VvcDdIREhKdVpBYVJEWitlR0xVNmF4ZmRrZHNvN0pBeGRoL3Vm?=
 =?utf-8?B?QWxtUi82Z2xGeldYWFIzdXlGemYwZEJGblZlR2YzandhUndUWkxYZStaTHp1?=
 =?utf-8?Q?uCEs=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB7046.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(19092799006)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?Nm5GTTRyeXdFVWRYdldXaFJkckdkZkI0WktCb2R3bmhyc0xITlVwVVJBeTZN?=
 =?utf-8?B?b0JkZlFyR1JaNTlWTTh5VnZBV0RIWG9HbmkvSFZicEVhOWUyS3lHTkZoRDY4?=
 =?utf-8?B?OHN6ZUVld2lBWWQwRTdhVWE4eVc5aTlzTzkzSTYxREZUQlpWOGhTYXg4ZmMw?=
 =?utf-8?B?YmQwN2lGbmcrV0R6TFo2ZGFYRVh0aGRpV3A1azFoSFdyczBGMThNdnV5VWR4?=
 =?utf-8?B?KzNYT25YZDc1L2JZdHBXVGF2R2hCTTZ3NHI5WVlIT2ptUmtqV0tnK21tbWNr?=
 =?utf-8?B?UlQzcjNLSGVzTTUwcEwxdU92NWpaUDd1OGxIQ1p4VEhiRGIrYzhrTTNyVWdD?=
 =?utf-8?B?TVUrRjlsTmN2dWQyOFI2YklKMEJ5K29ra2U0VnhDSmdvY3psZ3FDYTk4dXpH?=
 =?utf-8?B?Sm9wM3NRYnBBbGlJb1JYd2lYbmYzRlorRllzU2dCazRFL2FXWDRGWERnbTh4?=
 =?utf-8?B?NG5SUmFhYlFyb2NvV3NCam1mU2g1T0tneHA4cDY5M0h5RXpqWWhJdFp2Zndo?=
 =?utf-8?B?VmVsamd2aGJ1L24wY0NnWUordjB0Tit6T3Q0MmFWVXRzNDlUMzA5ZWQ5bUJJ?=
 =?utf-8?B?YW5yd0ZpTS9GRFVFQ1hoYmJGalpaT2tmVldVOTZhTmtPd0NvK0tMT1dob0VJ?=
 =?utf-8?B?STBnNEErc2U4TWZrZW1PYlFUdUdPd3dmb2hUTm9PQjJxMjF1NkZwNmxESzZS?=
 =?utf-8?B?OUlWazB6ZG0zU0NEWllaU1hJcURaQ3pGSFF1eGEvdUoxRGcvU3B3eHJ6Vk0x?=
 =?utf-8?B?ZG9XUzBZOWczTG5xU01ITkVJR09xZEpxVnJ4ZUpWV2RiSGJkRmRmcjB4VWJp?=
 =?utf-8?B?SmJJRVN5dUVWLytqMWNVVk4wOTlYREFueTBkTnY1M2QyOUVqSFErTzRqa0Fl?=
 =?utf-8?B?eVViMFp1NGhxTTVPYnlTUGUzb2c1anZCOGJKa096TGx5WkluMys2YWVxVDUx?=
 =?utf-8?B?blAyb3M5MHNWcU8yellWMTN2cEdJNjdPeElNWFp4dkY0YXNnNHZXK0FqK3J5?=
 =?utf-8?B?S1RhWjdmTUQrZjJ2TUFZK0ZHTlF1TXd1RUNEeVhmMk1ORHE5a0JTVUtlaXNv?=
 =?utf-8?B?ayt3ZDRUWWVRb2pTRHBnVERSc3R4ZGZ0TVlLd1d5OVBZdzBMRzFIT3A1UTZu?=
 =?utf-8?B?ODFVRTZRaGFBenNFeFlmOG5udktibXh1eUN2VWNDVFlYUWl0c1BYa0NmZjBT?=
 =?utf-8?B?Y3hhRmdLbno4RlhLN0ZnaFA3eXlSTDBzQ2RpNC9IZzhGZ0FZNlM3eVJ3UzFi?=
 =?utf-8?B?OFl1SWlMdWx4VXU0cVRRWkZ2V3h6QXprcGFxOUFJZWRTaTRMVmMrcWtwUE5s?=
 =?utf-8?B?RUV3aURZYmNadDZjZnNHSnpweEgybG5vdUE4V1ZsZFJBQ2s0RzRhUVpOenA1?=
 =?utf-8?B?U1VHTHIzUGhyT2hub2ZkeGFLMVRtaXpYMmdKeU1ycEtKZER4N25sN2xld2tM?=
 =?utf-8?B?bXJLR3ZlNzl5cGFtdjhkZ0ZtWGNYUExETDBqeS84cjRVb1NVVm9KcFlXVzFo?=
 =?utf-8?B?QVM2U3o1WDU2N2t0Rm9hZ3YwTC9wQnpYd3Jma2tib2gzaWlvZklhNWo2U2Ex?=
 =?utf-8?B?Ri9pRXdUMDQwZ0xUUGppVjRaNE1PTVQxZHdEdGZZdG5tQXFvb2txWEZtanNJ?=
 =?utf-8?B?MDh5S2s0Q3RkK3lJTXJRYlVJbTZvR0pBcFR4RXI2WUk1VzdTdThGTWR4aGQ1?=
 =?utf-8?B?RlJaQURFMVN5NnlCRGxXbjBJMUF2SXQrdDFPOUs4aENyb25NQ0lGUWFYTGxn?=
 =?utf-8?B?VDB0MVdQbkRnV0cvMXhneFNwMzZYVWo0T0VhTGYwQ05jaHBUNHdkNmE0cTBh?=
 =?utf-8?B?ZFl1U3pZOG10UXpLd0RDK2J2amFVcWFTNTVKTmtadGRaR1o0aHVXWFRTL1NK?=
 =?utf-8?B?cWdXRDc2dm10WmJ0c25rQjBXYml4K2t0SG5GQmUwVjY0SVNSZTRqcms2cE14?=
 =?utf-8?B?STZsMk9jMzRzeXFtRDZWM1dPS1AyZnEwaGxIaUVlbXBkUCtXcGdxR2Z4RTBH?=
 =?utf-8?B?TW1NTG4zaFF2NWhqSHB5cm44TDdGNVNwTkRLSVIyNC9ia09pQWZsZkFBSExT?=
 =?utf-8?B?MktGc2Zkb21Mb3UvVmgvTjBCSmdGK2ljeFJLemhva1dZeDdqVmFvTTFSS05z?=
 =?utf-8?B?S3ZSdWRBcUtQR2pLcFF6dmhZNmlCMEkwMjdwWVVIL281SDBVRzhTVGMrcXVt?=
 =?utf-8?B?QVFWQnZGWWRNSVRra0V1K2xPQlhLTjNVMTIrbVUyS2RCRndzN1VRYkZKU2JM?=
 =?utf-8?B?R3hrMEllbllHdDd4ekVDQVpJWU5BZEtlOE1NL29DVnZENnZlcW5IZGNFOU5y?=
 =?utf-8?B?NlJhQmk0SFJDVi9GeXByeGJNUzM4VVR2bmVpbm5OMGxwR013RjROQT09?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80d48581-86af-42c2-9480-08de58c65e47
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2026 08:23:34.4746
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xVg3K1IZthdEKSVIYChYQoAIKS6tgLIMj2vL2goEA1YvYoEdi4omE3FeK6yOJPB1K9JUDpuVYRLpVTrtwebQ7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB7096
X-Spamd-Result: default: False [1.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[nxp.com,none];
	TAGGED_FROM(0.00)[bounces-257798-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[nxp.com:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[victor.liu@nxp.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,nxp.com:dkim,nxp.com:mid,nabladev.com:email,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 23E7853908
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On Tue, Jan 20, 2026 at 08:19:30PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@nabladev.com>
> 
> The LVDS Control Register (LVDS_CTRL) register has an HS_EN bit that allows
> the 100 Ohm termination resistor in the chip to be enabled.
> 
> Add support to setting the HS_EN bit when the optional property
> "nxp,enable-termination-resistor" is present.
> 
> The motivation for introducing this property was a custom i.MX8MP board
> that was showing visual artifacts. After enabling the 100 Ohm termination
> resistor the LVDS signal quality improved causing the artifacts to
> disappear.
> 
> Signed-off-by: Fabio Estevam <festevam@nabladev.com>
> ---
> Changes since v2:
> - Rename variable to 'use_termination_resistor'. (Liu Ying)
> - Remove clearing the LVDS_CTRL_HS_EN bit. (Liu Ying)
> - Use dev->of_node. (Liu Ying)
> 
>  drivers/gpu/drm/bridge/fsl-ldb.c | 7 +++++++
>  1 file changed, 7 insertions(+)

Reviewed-by: Liu Ying <victor.liu@nxp.com>

Thanks!

-- 
Regards,
Liu Ying

