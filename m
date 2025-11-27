Return-Path: <devicetree+bounces-242756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A56C8E758
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 14:29:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0884C3AFEE1
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 13:29:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91B6826ED4F;
	Thu, 27 Nov 2025 13:29:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b="aFRjgvEn"
X-Original-To: devicetree@vger.kernel.org
Received: from DUZPR83CU001.outbound.protection.outlook.com (mail-northeuropeazon11022130.outbound.protection.outlook.com [52.101.66.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E43FB26D4EB;
	Thu, 27 Nov 2025 13:29:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.66.130
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764250144; cv=fail; b=nLgHLoLfK4o1z4VcJgtQBInOZJq378cGgleCLlJLQFydLtziack0C+bzTmZIhvEn3bIqJOVBd5RqxWDvNGAmKWomLKKBhwhtxod+GEGks2PgVJodz8pAfD/jxSSJZy+kPipTWno+RpyOBK41BdDkjArpm2xSOyC2ktwhinq45+8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764250144; c=relaxed/simple;
	bh=4b58d54TgdO2jYSre4Fe7C4FFGzZqLEQ827e+G0gABI=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=NY28yjkyneZLF2u+6xdaWswO+1L2DEQ54cFggPPnKcOftjdsMbhPrcwT5PCmwUzFB7lVcBtYXE4aq8P8EzRBBtRRApTgjQWJ192y6Mosq4yGJntPZhfFUr+DokBILVuXKARvGyU2zEgrXnCrsxeE3IhqMNkaKJIIOth84Gh2xnc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b=aFRjgvEn; arc=fail smtp.client-ip=52.101.66.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q6yJRInTXTC2rqGehDBIO/QpAcgyxwhJjR8ikd1BD3370RK+eXqmX0ci8zPu5PueHQ52LwxrAzzbMuoMCSEf4IcvD2oDH8UoY5GsFdp8u4mjmXtxlvYviZkZbi5l4VfXLmj318hFvZ8eTMEw4rgYEzIWXI9lRsR+mQP6g9stQJsTqTMsQVajM8ry6kddGLKZ+okvZ7f7obnWEzI40O2E5bAYPecAsgBEajiob+zTJuXtNv8yOwI4UK44gFQzGXlUYjBVx0R1Ec+6+NmHLFUbaZKaFlHx8Ahc+Sdjp+pKqAW0niEYNRUrqO/CyWYmjbNZl73gMuQPCzNc6VINSFdicw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n1a0LYVfikQQ4T6QUPwjj/bk+dAbZcrmri2Hk2+sFuE=;
 b=oVs3G13Om98kk/lTgtpyliP/AQOo7m4nOZ462ROXY2ZrMxMsTYBvrMG0wr1XetW/O0ca5WlhNPgQ//qCxxzxEKtCZ207CdFnimzKgU9bujQPUEsG99jNon4cFU49vDbzbN2BAxcnaX/Zpl002h1B7mNVKOOGsxXwodnBPyoNYNM1QmdzfA9r9NMT2R95r94Y5AUMUn8qRxclIarcd5blPWa7F2/67PQOF442djI5E00wEfPmtgaUOR2S779YIKYb5SzQjrH2bCOxrszUwRXdNcBnqvdsFdnHN1sGj1hzQ0QBqlz/eT2Zevk3nQTFaOfA2bwilOnzO3d8KSgdib9Pow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=phytec.de; dmarc=pass action=none header.from=phytec.de;
 dkim=pass header.d=phytec.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=phytec.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n1a0LYVfikQQ4T6QUPwjj/bk+dAbZcrmri2Hk2+sFuE=;
 b=aFRjgvEn+/J7VYVA15sN/kGWxWn16Qthf79p7X1lJ9CgaCtfn29greMA+tUISHQ08+TifvSVrF7ZGEsyqskKzE/s6xEeneWi9iGeXo2XaaqDYcnp8OwKVma8Y9/Te49B/IFtdRQm6OJvdTKbzYqBDCJ6bj5uWaUJqtWCaiBLPTim02BJdCj1NetEDKienmHd1vVASvrWoGvxsBT0ux/yxY3sbFgrLg1Zljxb4qwqEtJSCn68D29Ra3SRquo3WSgU9IcUzAGjL0R10LYduJZNT0+u4L6RnG9tkyO3WgIl/wQ/lYjEz45xhljdXYkQpkQsm3vqh68QEO5jjwjh1zA1vw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=phytec.de;
Received: from AS4P195MB1456.EURP195.PROD.OUTLOOK.COM (2603:10a6:20b:4b3::21)
 by BESP195MB2776.EURP195.PROD.OUTLOOK.COM (2603:10a6:b10:f3::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.14; Thu, 27 Nov
 2025 13:28:57 +0000
Received: from AS4P195MB1456.EURP195.PROD.OUTLOOK.COM
 ([fe80::369c:a760:5bf9:8d4a]) by AS4P195MB1456.EURP195.PROD.OUTLOOK.COM
 ([fe80::369c:a760:5bf9:8d4a%2]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 13:28:57 +0000
Message-ID: <045dcd67-ecfc-4abd-b3cc-738b3f32aaef@phytec.de>
Date: Thu, 27 Nov 2025 15:28:52 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [Upstream] [PATCH v2 1/2] arm64: dts: ti: k3-am62-phycore-som:
 Enable cpsw_mac_syscon in U-Boot
To: Daniel Schultz <d.schultz@phytec.de>, nm@ti.com, vigneshr@ti.com,
 kristo@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: upstream@lists.phytec.de
References: <20251124090842.3377294-1-d.schultz@phytec.de>
Content-Language: en-US
From: Wadim Egorov <w.egorov@phytec.de>
In-Reply-To: <20251124090842.3377294-1-d.schultz@phytec.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR07CA0153.eurprd07.prod.outlook.com
 (2603:10a6:802:16::40) To AS4P195MB1456.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:20b:4b3::21)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS4P195MB1456:EE_|BESP195MB2776:EE_
X-MS-Office365-Filtering-Correlation-Id: e4f4f0a2-777e-400e-8cbe-08de2db8eac6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|921020;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?djZRV0lyRzM4cVptTzJubkZsMEV1NHY1UmY0dkZPSDVsRXh1OU8vTGxOMEgv?=
 =?utf-8?B?Y21sNmxTaGdNb3NIRHdkK0QwdkY4RWZRQmZOQnRxNmRTM3hIek1sNTdRUWhW?=
 =?utf-8?B?NldQUSttVFhkZWNRU2IyaktnS0hTeGhZTytEUFMvdFNTbWlwT3VjMmJXcUVL?=
 =?utf-8?B?Y01WUkZYQThuVFN4QnBSdS9wVmF4VlRpb2dldU1vaWhRaVkzRjdyYjk4cHFC?=
 =?utf-8?B?cC9Dbk8vZllUSkpnMG9PVFJEdFFkWlpZcHYxTXRlZktUaFE1NzRzL3FadkRu?=
 =?utf-8?B?OExBRzdCNDF6WlJvUmJLVGl5MmVqTEppZDhUb3JqVjVxRUdkUUhZbG5SQlAz?=
 =?utf-8?B?TjhkZmlJUHJObjFOaGppbTMvNnN2SVNPbGZZenMreFNST0gvdXdmMEd0ZjQ4?=
 =?utf-8?B?ZFlGWTVSWmU4WEF1ZWcrR3g4dzVVM1ptZExVQWM2WWx2dHBPSlVhOVZONmVk?=
 =?utf-8?B?OEJWOFhWT0pKalNjWXdBSGxMK3FSTDBUWVF1SlRGNkFEVWM2RnMxZjBvNVp4?=
 =?utf-8?B?aG84SWJZVTRVbmdSN2lrL1pHT25ZNisreG43dVBuc0cyYlU1b1ZXVzRlejdh?=
 =?utf-8?B?djZUNUtLcjZCQk50QzZtTmtNdVNjK0NMY01US2JaeUNERmJBb1pIbm1wSHZ3?=
 =?utf-8?B?bEVNcEd2UVk4Vkc1MWxtVHlySzluc3U4elR0Y0RuWWZ3aHVBTy90UmdQbC9q?=
 =?utf-8?B?bk5oYlluSGltK0piNUlsOWhRU3ljK0NpeENkazE1YTZETTZUQ1U4S2hmNjNS?=
 =?utf-8?B?c0lQNDZVWk9xc0hmWm1ieTJpY0lmaXkwOFJLcnlaNFJ6bmkxMXRnWWdUdFB6?=
 =?utf-8?B?NjRZQmJMTFpnd1pxOEFWenkzbHhRcnd4SFIyMzJtUkh3dlRqaTFQUWJ2c2Fs?=
 =?utf-8?B?RlBZV1R4U1RWd2UvcUV0L1drbmo2cWVPSWlhMWF1emdPZzR6L0lpaS9DMzB1?=
 =?utf-8?B?a2pMN25xR3VvOStQN0xNdklONjM3WGxnS21tWVlqKzZVS0FHWDloTjNxYmVj?=
 =?utf-8?B?M3Z4ZWs2eUdzNlBWRnJzNjV6ZUxmMVY2bVY0UkNsQnNKbDJYVll3bnczYWF3?=
 =?utf-8?B?bUxqMFlxQ1JkWlpPRHFSaW5RWCt6bW80emZ0SzJmbUdkcGFIeFhuZ2dUai8y?=
 =?utf-8?B?SERIb1hnMm5zZEVoMlYwNnY3SU1Xb2JnZElQVk8vTWw2a0h1Mjg2STByVDNq?=
 =?utf-8?B?T3R3T1pvYW5qL3V2dEthRnpQbjluWldzNHRVWnZhM280NkpLTlo0VGxESVdu?=
 =?utf-8?B?eVY2VitWTWlGL3pyRW5vVVAvU0VMWHp4SWhDeGh3RHRDcWtObVh4MlNhSnVR?=
 =?utf-8?B?a25HMS9DT0xLNkFhWDdJY2ZTVXN2Vy9jaWt1a2IvOEpxWkhyMW9BTWV2ckxX?=
 =?utf-8?B?NWZHR3FmNzl6K2ZiUktRdlNqbFhma01reEZiN05GWW95Qzg0bXhzeEV4eEF2?=
 =?utf-8?B?LyttYmRvZ1UrUHd5c1RoQXNidVRQNjVoVjVqaFdDVnBHZHdZMUgwa1JlNXp6?=
 =?utf-8?B?a2FGRHhjNnZoU2l4dGJJY1ArR1dJdlhxQzV5Yk10dTQwbWFoSXpyRUJ3dTBU?=
 =?utf-8?B?dUh3ME5jWDdieDJHcDVpWTJzMTJ2aHFTOSt5ZGZJclg1TEdCemhoK29NUHJ2?=
 =?utf-8?B?c0cyTVhqVEp4dkZtQ0RncUU4Q2gwTENZZXFJWW5CS3ZWQ3ZKRndFODNjcHZ2?=
 =?utf-8?B?TFMyak1EMjczOFVub1hDN3NnQktUNk5TK3I2MitOSHlKMnRmRDBRWWdxYjhu?=
 =?utf-8?B?YUVjZzRjNTk2cmp2bGx5Z1gwRkFaY2h1MFVGVFMyb0hGS2pkVGh3ZCtweWh0?=
 =?utf-8?B?SWkxcGoxOHJRRTV4Z3pXTWhzdWFoanNieTJ1UUFuSUJDa0d2aCtuNzRLdGN3?=
 =?utf-8?B?VlFWSVp3ZmlwTy82cE8vUDZJU3BJM05saHhHbVUvL0p6QXNpR0IrWE1wYVRI?=
 =?utf-8?B?RmhLcHNqTEdzYm1UZFVSWGpKWUJSdTJZNnc4RFRtMW1qZzhrSmpvSWtlUGtV?=
 =?utf-8?B?c2JPdGRJaFhEWk81Y0Jqb0ozenlPQWp5VlRyMDZYMEJGc1JUMTZEcXpTM2V4?=
 =?utf-8?Q?M7gb7r?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS4P195MB1456.EURP195.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(921020);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?ZFlxSGMzb09yTVM0UU1jMG5kT1J1U2VXbk9Lc3pCZ3hoWU9wMk1NY0NSRWJp?=
 =?utf-8?B?alRGVXlzdDg5K2R0REhESWJENEk2WEtrVjZ3cmxCaUVGTkFxVEkvczIrbG9o?=
 =?utf-8?B?ZFZxTzYzWFJkWEFuZFlGWHpESldocW52TFZKRzE3QWhERVNDaWFhYjZWYTVD?=
 =?utf-8?B?LzNuVGRIVDR6eGllRmZCTHE0YnRRTXBQOFB2UjRWTXFQUUI5eE9nSk1CaXBr?=
 =?utf-8?B?aS8vbUdUcFBmcEJLSFJQclJ1ZTVNNWdUVVU5V3A4MzgzRkhSVHVkKzVkWGRS?=
 =?utf-8?B?MGd4Z3RqeGUwT0UvSmw3REZlS2dJMXg2NG5KZTdyeTR3dEwrRnlYamRoekJq?=
 =?utf-8?B?R2V6Zkt6dDRmcWR6M1VtdTFRbjRLUmo5R3ZJOUErUUtZRUlXS21jQ2xnQmJC?=
 =?utf-8?B?c01Ga2FGTlRSeFgzNWkxaFNVTG51djl5aGY5Q0tkdk4wQmpwQWtyTlZnWWVJ?=
 =?utf-8?B?UWJnN2pLWXRaNHVxQUR5WlI4VWIzODRxYzJiNjJYWXh4amoxSGhmcG4xNSs3?=
 =?utf-8?B?dEM3ZVI1RElyb3FvOWJPMHI2a0p6UytJTTNlNW02cElkN2xJUUxaK0tJZGVj?=
 =?utf-8?B?eERnTDBKaDZuUExHQkJGNDcrNVdhMzlRWHprMU9zd1JSeEMzbjlwdDFyZVVy?=
 =?utf-8?B?YTZ2cTVpcmdhTW1ENzQvRDhCa2p2QW5EMWMwZXhqbFVGbmxoTVoyNHZWMnpK?=
 =?utf-8?B?aG5maFdDWThMcjRzTTFCWmRsRTZFZ1gyYWkrOEwxSmxYdlpmdXpQT1ZySm9P?=
 =?utf-8?B?d0d6K0RmUDNxU3BWeE1SbEd4NFV6QWxweUpsUGZsbU9DbzRxWDByU0hiYzFy?=
 =?utf-8?B?cUZoOVZORy9MZnV5WC9tYUJCWjJWcXBXRGM0NWEvcHNYeTQyd1lYTlJwNUNN?=
 =?utf-8?B?dUE2cU55K3luMzNLam1zc0I0cyt3b1g4Yy9KaTNrRjQ0U1p0WVd4TEZkSW91?=
 =?utf-8?B?YURReVNrMU8xSWVOQ1diTUo1Vk5SdmU3SUNyVVVHRjFzMVFwTUlpRDZmZFVO?=
 =?utf-8?B?NUVOUG5OUUFBVjg0NDhNR2ErbHovaWllODhPb2dFaGtYT1J2RVBDMjB4WnJa?=
 =?utf-8?B?bE5qK1B1S1ovM2tHeUwrSkVGd3NKQVBScXBJWjRNaHNLajMwVm5xRUZ1VDFW?=
 =?utf-8?B?d3dkNFd2TlJjRnlnd21Udnl0VENSSktVbFd2K2hvZ3EyVlhSWm9wSm0zQ0ZW?=
 =?utf-8?B?Wm9Bc2dWaEMwSk5oS2o5Zmp2VDlqVTFtY3lueGRwWXJNa3JQQ1NhYlJFeUNh?=
 =?utf-8?B?UThwQ0RnUjNGeUFtNGFWVTRmbUczaSt2T25EdmQ2c2lpZWoxZEZ1MkZOZkYv?=
 =?utf-8?B?RmxqUURnRG9JaWZEbnRXd3hrN1ZhRjVOeG1uMEhSQ0FvNnlCeGxmcmxBQWxG?=
 =?utf-8?B?WkRqK1JRclMzK1dVWEVFekdKcFk0Z010eG4vZDgzWGhzU1d4YUxqVjdCQVdl?=
 =?utf-8?B?dWF3Z2xlSHUwdGtiekttazN0cmNYRE5Rd2RPalB0MWZwMEIzK0tYVlFIQmVR?=
 =?utf-8?B?L2s1UUdIZ3dmTWdUdHlmcUFjOE44QTR5UVBFVXovWnlMaGxrcUFBNVg2dWlK?=
 =?utf-8?B?cERHS1VOdzlKNjNBVjM0SmZ5aWltQ2RtbHFlcGhJK1Z6WkFmVjF1cUtKbit3?=
 =?utf-8?B?bW9MemRSUXNPZjVOSkkrQlczd0xyVTd0R0pQKzlDb0NxMHg3clF0TjNhSE9Z?=
 =?utf-8?B?b1JQbWZlQ3Y1c25TOWxMRWxQUVBHT2J0dlpPNWtyVDU0L2hPKzR2amcveUdN?=
 =?utf-8?B?NDQ3cmx5OHJJdnlZczU1MHYzd1d3Z1FPbEpNMk1sQjEvL21ZalZndm8xSDBP?=
 =?utf-8?B?bEpUaG1zM0ZhTmVjTjhYOEdIWHZzNnpIZ3ZXaGFXOXJHYXJzZ2FkR29JRFVQ?=
 =?utf-8?B?Q3dCMUtMNzg1aFpsSTdMMHgzM1dHME0vSVNZcXVMdmM2eWN4VnQxczlPemhO?=
 =?utf-8?B?VW1PbHM0RGI2R01DdnUyNlZtNERoSmZDTCs1L1BKSWQxZEc1UVFsdllKY3NJ?=
 =?utf-8?B?aGRMN1p5ZWM4NXU2aWJvSS9BbGlLNTRscFlCVHhNbHQ5UEVZazMwbXNpKzVI?=
 =?utf-8?B?UWNFSHNrMWh2cFNINC9ESzlXRnRYeGNKS3E3eDRKTTl6R2FZMkZHZ3hjVjQ3?=
 =?utf-8?Q?N7tXIfUz5o2/RAfKhe/y64m2D?=
X-OriginatorOrg: phytec.de
X-MS-Exchange-CrossTenant-Network-Message-Id: e4f4f0a2-777e-400e-8cbe-08de2db8eac6
X-MS-Exchange-CrossTenant-AuthSource: AS4P195MB1456.EURP195.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 13:28:57.0787
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e609157c-80e2-446d-9be3-9c99c2399d29
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eXJ7jpw8D+Pu0y11n8O+czalKLAPz6MGp1w6hN3WFFt4sZExQ0PGSrFrB9i3iIqfcUeSQN4PP+qbWLQ5edFAYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BESP195MB2776



On 11/24/25 11:08 AM, Daniel Schultz wrote:
> Add the "bootph-all" property to cpsw_mac_syscon.
> 
> This fuse region contains the internal MAC address. Without this
> syscon node enabled, this interface will get a random MAC during
> network boot. This is problematic because the AM62x network
> boot is using BOOTP protocol for some binaries and this protocol
> does not support dynamic lease expiration. Therefore, the DHCP
> server can run out of free IP addresses.
> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>

Reviewed-by: Wadim Egorov <w.egorov@phytec.de>

> ---
> Changes in v2:
>    Moved changes from k2-am62-main.dsti to k3-am62-phycore-som.dtsi
> 
>   arch/arm64/boot/dts/ti/k3-am62-phycore-som.dtsi | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am62-phycore-som.dtsi b/arch/arm64/boot/dts/ti/k3-am62-phycore-som.dtsi
> index eeca643fedbe..beeac481e683 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62-phycore-som.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62-phycore-som.dtsi
> @@ -219,6 +219,10 @@ &cpsw_port1 {
>   	bootph-all;
>   };
>   
> +&cpsw_mac_syscon {
> +	bootph-all;
> +};


> +
>   &cpsw3g_mdio {
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&main_mdio1_pins_default>;


