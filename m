Return-Path: <devicetree+bounces-36099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E0683FEF6
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 08:21:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 68FB11C21904
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 07:20:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D5294D595;
	Mon, 29 Jan 2024 07:20:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b="SdZAXgJc"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2051.outbound.protection.outlook.com [40.107.244.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2A314D5AC
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 07:20:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.244.51
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706512856; cv=fail; b=ER/urPYz+vypx0lcW0cZsAjxagon1DH+lnCIlo/8lSXT/dkq/Gc4k6FtH2k6BLl8XUWJMyfIxEUsId3x1U1CTjE9GCyGXSzCgEXz88C1THT3ggpSBI1yBBMVLLKAi5ztnSVMWMBanKggkkqOoHdQpwTfmLWR+OqVPVLCM/fKv7o=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706512856; c=relaxed/simple;
	bh=llR8A3HSHba1S7jiJ+Jm+rH5W2xc72adebnS9ihqX4Y=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=uXgIvEP3TWXWCgBnHDpwls20t4lF9SvXG+TTZaVps7pNMPte7iuqSj7kCdQCBEdOiDwFATTT7lZiaW6UlNqARTHKvcuU5owOqw/64QTMiO444U6qq1GSvyaQV9s6KjvoBgsD9HOJ4kA7ugWBV9kH6rz0i5jI7GFarwU2I8Dxf6U=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amd.com; spf=fail smtp.mailfrom=amd.com; dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b=SdZAXgJc; arc=fail smtp.client-ip=40.107.244.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amd.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PACqH0W7UKi8TYXgngPQS+Q2qLUNDBgBkAwDCW73viU07hZymSYM64Zjegajuq+P07FGLFA48OIQDR62cbbcdeMHM/ODEed5iyKtLeDVjfOpRtkTOTTiqY84AGDyH8seIi1TmnHZPaOFVEG/3AsHhB1Px/l8IpxrTdTOXeEjQGOXbkO6ocDuXlvzVLzMwgv1Gv0jRDTkJVOfX5QEdiMpX95DITWeA1kyGNDBxqXscZrmkuIIfAM8XQUaaQJ6ExVTIWbnIagBNYF+v1CmAKQ/HW01T2brCi6N624fvfB0t6z8LE3UIIwqSRSVcOUWb/9BbYCZPMr4SeNWU40WfFk0uQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=McJGU+3R9vQv20ERK0p5TCXZQjip+0xFv0EluMn5cN4=;
 b=YCWbyVEjRCjVPOAlXyVj/2O/sCq/G26XhNEKMrxCkTaasY0cLSsNTQTl+sP1+hGmu/gyfpFW4CzTJDEVmjDiSKv3mO2d2RA7IGT6G9Bsq/btr2rIJ0Jt4NJdzi2DQiHk/9TYm2b4/I7NXDBpD2qFoR/4ZkP1GfIHQMLeAY/98Q7EjCUIJnwjLGKfwwDDdo2CSAkproG6P83RLHVvdvS+/64Gl0drq82fRINhDtaBjKaDokKKSxrvBqEUcK+Qw7dgFJyEy8HNsAR2fxTFuieE7cxqid2BOvTeLrGd9k7cgHMO3jEhLMzIU2C4PeqkihtL6UoM89CZlDzn3YXNtkTLdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=McJGU+3R9vQv20ERK0p5TCXZQjip+0xFv0EluMn5cN4=;
 b=SdZAXgJcgJiXGGGXTZW6jNHBBC85BEzGvRI9FhPzzw0cXOBBTEwhdTfFrfrXhQ1k/SIdfkeZdcz4L87c2oamxxCF3G64QJlM9chh7TKHN4p0dQ9yW7Jh45gShdpxq/q0+WlyNz8Mevft0ZQG9k7GERq/cgDy9d49kgnvrSDarnk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from CYXPR12MB9337.namprd12.prod.outlook.com (2603:10b6:930:d8::20)
 by PH0PR12MB8005.namprd12.prod.outlook.com (2603:10b6:510:26c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.31; Mon, 29 Jan
 2024 07:20:52 +0000
Received: from CYXPR12MB9337.namprd12.prod.outlook.com
 ([fe80::772d:da3d:154b:fa45]) by CYXPR12MB9337.namprd12.prod.outlook.com
 ([fe80::772d:da3d:154b:fa45%7]) with mapi id 15.20.7228.029; Mon, 29 Jan 2024
 07:20:52 +0000
Message-ID: <033451b7-04c9-47c1-bde7-2b3e1f11090c@amd.com>
Date: Mon, 29 Jan 2024 08:20:46 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 1/3] firmware: xilinx: Add ZynqMP efuse access API
Content-Language: en-US
To: Praveen Teja Kundanala <praveen.teja.kundanala@amd.com>,
 srinivas.kandagatla@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org-, praveent@amd.com
References: <20240108052617.32510-1-praveen.teja.kundanala@amd.com>
 <20240108052617.32510-2-praveen.teja.kundanala@amd.com>
From: Michal Simek <michal.simek@amd.com>
Autocrypt: addr=michal.simek@amd.com; keydata=
 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
 3i3l5DA=
In-Reply-To: <20240108052617.32510-2-praveen.teja.kundanala@amd.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR07CA0261.eurprd07.prod.outlook.com
 (2603:10a6:803:b4::28) To CYXPR12MB9337.namprd12.prod.outlook.com
 (2603:10b6:930:d8::20)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYXPR12MB9337:EE_|PH0PR12MB8005:EE_
X-MS-Office365-Filtering-Correlation-Id: bd2e897e-fc86-49a5-4499-08dc209ad384
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	nOs4jSJ87nCmpkwIVuBO6+xVF8lM6ov1ChV/Oz/cK9ZBk4mNigXmiAyYXGgHO2c7ueJ9m0m43xcHFD4mhT/IvQt1NKn2WBdK2/HvSekvH5A4gMO2cMuhNO3fYWfkYuN/rm6RoaYnEwx8YhkhCHj1z3/CSwQPemn7jDVtuXTDowbGn3gSwYp656UAOnWQehePx1oe04/Y/2cM6CJyRYKm97ZyWbsodp/wXGvb7DDNeUKMQ+kosSPA+Mos0zM6SsN2OsaFrSIaJ9tfPO4RKiRImmsbpZsvoB6dPKRrxPzY3h353v1eDjJ3iaiiyrtANc4EMTPSXKw7vD/i25Ni+p/nkUR3xXkVwc9CRciw/yP3wWj/f8ALzhvWCxtnfLk0JMhxymJBaKqgXMK85t5yhxAcDBoLDI0Dt5jgJHYKHzcv19Iw1zkLDbp9dz89IAevaPByo4P5v4AuvmEzPJM1LefID7auRIVlc/qrU06CxSy58FK3PJ1L76plxjW/HyCVswRdLRRgmeQL4oXJbJ6/MTFixRY0w1TYG7p9TOc0IYBmb/B1oT/ICve9XHxIPtfyX3YrRLFCM+dtO9Py9bFXvc7NTOp4/UaNwyf20EeRmhcfxPHJ2LbY4vEAqWlFBT3VGH1rdk9Xm9zEJ39ofCceYrHbTg==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CYXPR12MB9337.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(136003)(39860400002)(376002)(366004)(396003)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(83380400001)(2906002)(5660300002)(38100700002)(478600001)(6486002)(66556008)(66476007)(66946007)(316002)(41300700001)(26005)(2616005)(4326008)(8936002)(8676002)(6506007)(44832011)(6512007)(6666004)(53546011)(36756003)(31696002)(86362001)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?eHN3WXlZY1U3SUdlMVd3MG9MWnBtSmtQRlZBcHl3aVAwQkZkTERoUDd5d2k1?=
 =?utf-8?B?RENUejZHV3o2RHp6bmJrT0wxVTY1MWlweC9nWGZNc2hkeGdubTZkbzdFVXhv?=
 =?utf-8?B?eGNCUkNYUTYra0QxaTlraGkwTHJNUmdMOU1iVC9yUDJlWkRSb1FjbS9ETHRn?=
 =?utf-8?B?c1hVeldYeHpBU0YrdmR0aFFXM2tXc2luT0xNZ0hUK2JjZU9UaTdhNGFOTElL?=
 =?utf-8?B?aGlqWGJNK0NmK2ZvZkNVZUpNRHRjclliRlZ3TVhEeEtKbFFTOER0Z3U5Lytj?=
 =?utf-8?B?Nnh1RzRMUUZYVWNtZzVmUmJFT2ltRm1EZjFhQTNJYS91dDVwWm13OE9rTHRt?=
 =?utf-8?B?T2dzc1NEbTRRK0pJR1ZnU3N2eHBteCtnallFSHNYYlBlMWJMZVQ1NVg5WEw1?=
 =?utf-8?B?ZkMyVEhoR2FWQTlMdmtzK2FyUkx1UU05ekYzcExaM1k3SE5IdUNNUjVvZVU0?=
 =?utf-8?B?aE9nb2dxSHhxdmtlcTJWVVd4dnF4S1BlVHlFemQ0YVllbHE1U0Rpc0dSaGlK?=
 =?utf-8?B?eEJhbVREM1RGWUdUQ3FycFlEQ3ZVYkVpMHVjbisyQmYxNHBUdDlQdktJVjdn?=
 =?utf-8?B?b0xPby9IVFZ4dVBXY3orZ2JBeE9ncmlTS1VjNHQ2NW1ucmZNckw5SDhoUm9B?=
 =?utf-8?B?Zm9sWmhyWnY5RUsvSnRFODZaSmRUTTFoRlpjV3VtYkZhZkFKa3l1SzlXTVcv?=
 =?utf-8?B?bUJlZDBGR2M0NXdrNE9JdkM5OVMram1LNkhaakJvdUNESUJBSCtMWGVrQ1Bi?=
 =?utf-8?B?Nk5kTXVWNWg1WmhOV0l3eGd0cUhrYW5CenJ4VlMrb2pnNzRXSStITXJKNGZs?=
 =?utf-8?B?YjhRZ3JxaENtRnNWN2JGMXdYNzlnR0VYeGZyTU16VU9tQ2JDZHU4VmdiZXNh?=
 =?utf-8?B?V3RkU3VVeklBaWFCZnMxeFJwdDRoa1JPcU1zSk9YWkUrbmtmUGN4eS8rT2ly?=
 =?utf-8?B?NzYrc2ZDS00xdlhxdnRhdEtNWU9HL0gyYlpNZU1MT2VudXRYVWRiTk1jVXpQ?=
 =?utf-8?B?UDJhdWhhNFJRdHZQMEJ4Wi9iWFF2cWR6YkpRMTZGOTBJV3VQektCWm5RZTJq?=
 =?utf-8?B?VXVkK0tLY0JPTFJ3NG5NbVI1Z3hOOWcyNzNMT3RwYzB1VlM4bG9mRll5V3RO?=
 =?utf-8?B?Z1VST1JqV0FkcUNybUdGZEZXeDZ6bHFlMW9IWSt1U0ZacXI4ODlNc04xcUxl?=
 =?utf-8?B?eTY3WWkvclVBNVZpUEhlcjJuaVh4NllzTDVXVE9sTmFISHdCRFNtcU9LdGsr?=
 =?utf-8?B?SVBvMmM2RkgxR3QreVlNNEdxcktUU1lzdWQvM1JxQVFWZHZQYXRTbzdlbjB2?=
 =?utf-8?B?Ynk1SXIvbHRHQk5tZmYyUm4vL0JsZmZtTDJlTnk5MnplSG4xdnJSNE51bFp2?=
 =?utf-8?B?dEtjek5PaWNNa2pWSXNpakRRVk9uNW9oSE1BampMQitDdVZxVVJjNkV0dDgx?=
 =?utf-8?B?NnFFODdiZldWZjM5Z0NPSXhHbXJVQjYwQnBUZjBydFYxZjdmR1kvdHhzMGwx?=
 =?utf-8?B?blh5UENCbEtTV1NFUnpQN2JVeXhEZG9oVEh4U1lVOU04aEFOQVd5QlNIUlZm?=
 =?utf-8?B?b1d5NXFPM3Q1ZmhYQVlwUnNXVlQ5UWwyblVORzhMQ2FXZlNxMjM2NmM2cS9K?=
 =?utf-8?B?RlI2ZElyb1drOTlFdVVrR3VEKzNxS1QwWkI3OWd1UHR2VW5FNnJEeTV3T1FC?=
 =?utf-8?B?OHJYMUl2Zk9kcGlaSXhvUUdLVzN3R3dSclVLb1oxc1Z1dDdsYTMvd3pkR1BL?=
 =?utf-8?B?RmtDVFNlcDBwRkxiYTRiVHo0ODVHMEpBbVlWNWN6UFNVaEhEbXlsTklCSnlw?=
 =?utf-8?B?aUJFR1ZMNWFoTUdRRzRkRWJzSzBGYTFTWUgvVFY3dU82TE85QkxQdXIyS3pB?=
 =?utf-8?B?TCtHVzBhL1hzeThQbzlSWmhTZVpQbFRFU1VQTnhwclhndCt1ZXpTOVFJY3Rw?=
 =?utf-8?B?WkRUWmpBV0tQNW5hQU42RFR0bHl2MDhweDRubzhhdk9MVEdITzVVZ2ZvMmY4?=
 =?utf-8?B?Vlh0OFE0YmczY3BSbVRFMUQ0Zm5JU2oxb0R2MDZuVGxKRVlxQjJjSVZ3d1Fs?=
 =?utf-8?B?Um9IdGdYSG5yM3M4bFVjdVJORFArTmR1SGpwTjRoVXdqY2ZKZHdxSHIrSnZ4?=
 =?utf-8?Q?PkfUwXwInVoq1wdfd7AO0/9WI?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd2e897e-fc86-49a5-4499-08dc209ad384
X-MS-Exchange-CrossTenant-AuthSource: CYXPR12MB9337.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2024 07:20:52.7484
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: htjKWywWNpqTLg6tLXNTOC3QB1CGo40FfyLbtBTbsQdG+h7bYiC4mS6Y+x+8RXSK
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR12MB8005



On 1/8/24 06:26, Praveen Teja Kundanala wrote:
> Add zynqmp_pm_efuse_access API in the ZynqMP
> firmware for read/write access of efuse memory.
> 
> Signed-off-by: Praveen Teja Kundanala <praveen.teja.kundanala@amd.com>
> ---
>   drivers/firmware/xilinx/zynqmp.c     | 25 +++++++++++++++++++++++++
>   include/linux/firmware/xlnx-zynqmp.h |  8 ++++++++
>   2 files changed, 33 insertions(+)
> 
> diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
> index b0d22d4455d9..5abf882a43f5 100644
> --- a/drivers/firmware/xilinx/zynqmp.c
> +++ b/drivers/firmware/xilinx/zynqmp.c
> @@ -3,6 +3,7 @@
>    * Xilinx Zynq MPSoC Firmware layer
>    *
>    *  Copyright (C) 2014-2022 Xilinx, Inc.
> + *  Copyright (C) 2022 - 2023, Advanced Micro Devices, Inc.
>    *
>    *  Michal Simek <michal.simek@amd.com>
>    *  Davorin Mista <davorin.mista@aggios.com>
> @@ -1435,6 +1436,30 @@ int zynqmp_pm_aes_engine(const u64 address, u32 *out)
>   }
>   EXPORT_SYMBOL_GPL(zynqmp_pm_aes_engine);
>   
> +/**
> + * zynqmp_pm_efuse_access - Provides access to efuse memory.
> + * @address:	Address of the efuse params structure
> + * @out:		Returned output value
> + *
> + * Return:	Returns status, either success or error code.
> + */
> +int zynqmp_pm_efuse_access(const u64 address, u32 *out)
> +{
> +	u32 ret_payload[PAYLOAD_ARG_CNT];
> +	int ret;
> +
> +	if (!out)
> +		return -EINVAL;
> +
> +	ret = zynqmp_pm_invoke_fn(PM_EFUSE_ACCESS, ret_payload, 2,
> +				  upper_32_bits(address),
> +				  lower_32_bits(address));
> +	*out = ret_payload[1];
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(zynqmp_pm_efuse_access);
> +
>   /**
>    * zynqmp_pm_sha_hash - Access the SHA engine to calculate the hash
>    * @address:	Address of the data/ Address of output buffer where
> diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
> index d1ea3898564c..ec3e19065f8d 100644
> --- a/include/linux/firmware/xlnx-zynqmp.h
> +++ b/include/linux/firmware/xlnx-zynqmp.h
> @@ -3,6 +3,7 @@
>    * Xilinx Zynq MPSoC Firmware layer
>    *
>    *  Copyright (C) 2014-2021 Xilinx
> + *  Copyright (C) 2022 - 2023, Advanced Micro Devices, Inc.
>    *
>    *  Michal Simek <michal.simek@amd.com>
>    *  Davorin Mista <davorin.mista@aggios.com>
> @@ -155,6 +156,7 @@ enum pm_api_id {
>   	PM_CLOCK_GETPARENT = 44,
>   	PM_FPGA_READ = 46,
>   	PM_SECURE_AES = 47,
> +	PM_EFUSE_ACCESS = 53,
>   	PM_FEATURE_CHECK = 63,
>   };
>   
> @@ -546,6 +548,7 @@ int zynqmp_pm_set_requirement(const u32 node, const u32 capabilities,
>   			      const u32 qos,
>   			      const enum zynqmp_pm_request_ack ack);
>   int zynqmp_pm_aes_engine(const u64 address, u32 *out);
> +int zynqmp_pm_efuse_access(const u64 address, u32 *out);
>   int zynqmp_pm_sha_hash(const u64 address, const u32 size, const u32 flags);
>   int zynqmp_pm_fpga_load(const u64 address, const u32 size, const u32 flags);
>   int zynqmp_pm_fpga_get_status(u32 *value);
> @@ -739,6 +742,11 @@ static inline int zynqmp_pm_aes_engine(const u64 address, u32 *out)
>   	return -ENODEV;
>   }
>   
> +static inline int zynqmp_pm_efuse_access(const u64 address, u32 *out)
> +{
> +	return -ENODEV;
> +}
> +
>   static inline int zynqmp_pm_sha_hash(const u64 address, const u32 size,
>   				     const u32 flags)
>   {


Acked-by: Michal Simek <michal.simek@amd.com>

Thanks,
Michal

