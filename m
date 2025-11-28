Return-Path: <devicetree+bounces-242944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C7548C919A7
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 11:25:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 628CB3A1FE3
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 10:25:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC0DC3054FE;
	Fri, 28 Nov 2025 10:24:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=cherry.de header.i=@cherry.de header.b="Gk0lWmuQ"
X-Original-To: devicetree@vger.kernel.org
Received: from DU2PR03CU002.outbound.protection.outlook.com (mail-northeuropeazon11011059.outbound.protection.outlook.com [52.101.65.59])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCA4F3054DE
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 10:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.65.59
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764325499; cv=fail; b=eYAi8xev7vExo0J6FmDNrhEsUHjC8NpvHFDsdzJp5R/ZTSfxs95cPUE1s2UiJzWunCKB2LnI7yTAbO1WfzigXUKLDsY3w3ONyPr8/SU85ptIxllS0k87pF2rXGTRg9P4hXhHZ6LjWW1Ws2GuFW8K3NFivHrzjqx+TYbxODfnh2U=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764325499; c=relaxed/simple;
	bh=3G9/rHj9vaR6MV4yz11D6Koijx4UKH44inpmqwMQgG4=;
	h=Message-ID:Date:Subject:From:To:Cc:References:In-Reply-To:
	 Content-Type:MIME-Version; b=cDCOmrqypowIMEbFug9OYHYluTEc3WQo/wLd138ggnz2FI4EyYQSJZQk5c5sgY4gLXUo/F/l4q6GgO/x4gAqlNUx1uexZ5Ki7OfEvylZaWqVaaEwxLiSq3awV/Bst54NXnVd6BClCYokioXka2syqw0DYcnRtjVZqWbD7PyWSi0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cherry.de; spf=pass smtp.mailfrom=cherry.de; dkim=pass (1024-bit key) header.d=cherry.de header.i=@cherry.de header.b=Gk0lWmuQ; arc=fail smtp.client-ip=52.101.65.59
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cherry.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cherry.de
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fr1qRvlw1iHqL4j7Vk9QaCLHgNOMl6BVm4W+ZENrCjmqPCA2ak9dPAavQzVCa8PFxLAqr9akU8+IPP4BS6GLBOZf1wwCSjuSMF+OIyyzFdNceNkuq4d292aCDNQQ/up1caMu5oBiTZe8vRFum7QwBDzAALGhN/LNYvCf6PusPCE2EJaIKSDwFfOdh8VqIDsABbYsYgzmCvQ8qqqF4TctHl4MNBqGUWgcCq/CXVGhzPafj8Wpgcs3eZBgihtqNIy67Vyeuq0XNrovhRs/VeHO/bGsI/0fDqWIz0qGK65lHoAOMmGanmdE7dVZay0Of3wR2J+e+b1f53jPmRW2WxvKrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uqiI/DSODNW3edtgmI2C8ROPplmY1haUEGC2COb+vAs=;
 b=Ug5Vg/zY+rmm9jJmgZCAdRHULpEkdcUZJ50lu9OvQwQ9X60lP83FO8k7r2e6nlZk9cVLYY4vAyrw1ceuuRfdwNchdyZsruiyvh+BAmdB/00QkvjL116Ez1WGtcaATRL4hiYXZwzEBpWSqL9/6q0FxBRI14ScSPxjdaAL+7SglS7cpe4PLkqrHbp3zCUjt8q483Yz72aqivyNPsWd+RqPCaY6p8PRhoh7WxjpaccudV87kgLczzQpt3bw17+TnWIhkmFIPw80frB8Hv+ltgph1k1yo1oJmU1gkvt/U4+STxvUYrc6SsgzRlfadDWHxC4TP6v5DEcwvCNIpMjMPCL/Ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uqiI/DSODNW3edtgmI2C8ROPplmY1haUEGC2COb+vAs=;
 b=Gk0lWmuQvqsdToNmWQMiBF6KrAhYQ0ectyhHyyd8WWuxKHMMS8DbfcW2y0OMDacuM0lWP5+y0iOgFxXknhaBGNhYaO3/Z2vq5b20S8iMiJDoQd0kFUF2aq0ZoKOw1QZnEtvULPoq0C2i2ftdVh/Oo5etzV7KNBWvee9npSQZqIU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from GVXPR04MB12038.eurprd04.prod.outlook.com (2603:10a6:150:2be::5)
 by DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.13; Fri, 28 Nov
 2025 10:24:53 +0000
Received: from GVXPR04MB12038.eurprd04.prod.outlook.com
 ([fe80::1033:5a9a:dc18:dad]) by GVXPR04MB12038.eurprd04.prod.outlook.com
 ([fe80::1033:5a9a:dc18:dad%4]) with mapi id 15.20.9366.012; Fri, 28 Nov 2025
 10:24:53 +0000
Message-ID: <a93ace02-a952-4727-957b-0ed790b47676@cherry.de>
Date: Fri, 28 Nov 2025 11:24:49 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Fix audio-supply for ROCK Pi 4
From: Quentin Schulz <quentin.schulz@cherry.de>
To: FUKAUMI Naoki <naoki@radxa.com>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 knaerzche@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Heinrich Schuchardt <xypron.glpk@gmx.de>
References: <20251027005220.22298-1-naoki@radxa.com>
 <acfc2185-0cb9-4620-abdb-ee25028e8374@cherry.de>
Content-Language: en-US
In-Reply-To: <acfc2185-0cb9-4620-abdb-ee25028e8374@cherry.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA0P291CA0020.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::17) To GVXPR04MB12038.eurprd04.prod.outlook.com
 (2603:10a6:150:2be::5)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXPR04MB12038:EE_|DU2PR04MB8536:EE_
X-MS-Office365-Filtering-Correlation-Id: 727862bf-19f1-46b3-db00-08de2e685e89
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|10070799003|7416014|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?dVFzMlR1VlZqc2h6Y2M4TWFPUExmVWFNZCt2ZzE2aWt3UHJmVkVTMXdaMy9s?=
 =?utf-8?B?c0I3SmhSVksxTnhNeDNsNEVEUzdqelZsc1lkakx4N2JaZHRMWmdLellMNlM4?=
 =?utf-8?B?MGNIQ3RHN29KSFVBb2dkNGhaeWpWazhQc3NtaHZtSEJiN1VMNGI2MDRYdEQz?=
 =?utf-8?B?RUN2Vk8xNm80Wi92UnlkVkNsWHNEdVdWcmV1dVF5aGpyaVQxK2h2dHVtOFNt?=
 =?utf-8?B?blJtMVBGaVNoZHN5aTh4NnRaWUdEUmRWemMveWc0NlZTMlB4ZzliZGNmQzVI?=
 =?utf-8?B?L3pkQTY3MldQdTgrWHFaQzZVcU4zNXhTZiszb3JldWVLQldCaEZKR2xENUhy?=
 =?utf-8?B?WVhFbEZlMThFdm9aTE94SnpMSjhlYnNUbWQxQnNKNHVyN3pDNkNSVWZldUtN?=
 =?utf-8?B?VjAwNHEzaFVKMFM2M3l0OGI4YjQ5OVAySXpQQU44Mm5RK3ZTMGJVcGh6eS9h?=
 =?utf-8?B?SzR2cmdGL25RTlRYWWFnTlA5c3MwMkZ5RC9ndTlBc040Yzc1MzIrOFFyblE2?=
 =?utf-8?B?Nmx1Rzk4amVKKzJIRktsVjRtV1djSzUrSW5kYzdWeVFydldvaXEvWWpYOGZx?=
 =?utf-8?B?czVzOEhkeS9RR2JyR0dZQWFZWmxxaUMwem51UkFRQWJRMm1nOXdKNTFEWnBS?=
 =?utf-8?B?UEhvQkROMUtMcTJrNFZ3dmJMZW03OVd5dVFIL3ZLN2pyalliZG93Nk45UllT?=
 =?utf-8?B?TXNhR0F6MkRUZE5Tdlh4T205d0xxdHYzbFBKRTNwREVka244dUtrSHVQRkVs?=
 =?utf-8?B?TWk4SXdUa1QvZjZzd3J4Sk5tUjNjdzQ1cCtnaDlMcmJCanBDM2VKN0hESDZZ?=
 =?utf-8?B?VmVvcmJtWG1LL3Z2N0VHSGtKa2ZPNFBuY3VjTVROWGduRGpGZGZjd0QyU0hJ?=
 =?utf-8?B?RkFPMVRqMWE5VngySE1Wd2ZQK2diWkxsakYwN0xvVTNpQUJJWXRQN1pUQkhv?=
 =?utf-8?B?bHhISE9ueUNFZXkxcGl4SHhxOFpZUHhqUFo5TjRIR01sNGQ5NEhvYndNZ3dP?=
 =?utf-8?B?Zm52T0QrOU1UU082dUFTckhLdWJKKzE0U24ybVR0VmxSTHRhbE1QNVFSRVhD?=
 =?utf-8?B?TjRuWGhEeUt4aC9BNWtOR0ZublBLc0FBYXNHeE4yUDNvR0g4RW5neW1oS2pl?=
 =?utf-8?B?Z3h6UkpxOEFQeUxwQ0w0SUVnanVYbmcvZk1MU1lqeE1OZTUvOTFyTmFrbmdJ?=
 =?utf-8?B?UE1tYmJCbGh5OFJyUXUxdFlJd1RtV244TkJSaG1uUHZmQWt2T3hzQlF2cG1n?=
 =?utf-8?B?eUttSkV5bnZxbDlZbFdnN1U4c3dRY2JnbGI4MS83anZRa0VHM2w4bURocHk0?=
 =?utf-8?B?SzkvaFdMaGF5eUhLNFhOZU9lbG5LYXNKWGtLSnZnRXpXV0JpMjFXaHZCK0dX?=
 =?utf-8?B?YlBGS0J6TmNGZTFvSGNWeWd6ZWN2OVhiZ3Y1UnJCWWVlNU9RamcxMXY0Ynli?=
 =?utf-8?B?andMdGU3OE11UkxZbG1IN1VQL3VsWUFYRVBvSVI2ODM0SGNEa1RLL1VlbFZR?=
 =?utf-8?B?WFl6czNpNERFUkROVjlhZDNoNlhtdEx6UCtaU1V6U0k0bFZ2bjNjZnZSc2l4?=
 =?utf-8?B?U2hkUnZDc1o5Si9UNXVQbGlNU3B2SUh6UDJFWmEvVHNwQTBVTjJ4NE1qbzRO?=
 =?utf-8?B?UjEyTFVTZjEvTmhmTlVtRlJkS1NnRUJQazlLdjc1THg5VmJHc05LL2tDc2tm?=
 =?utf-8?B?RVozMDZ4dnZkZ2FZbk1pVXJGMDRRL0dkdjlNQ3EycEl2M3BHZlJDcm10aWho?=
 =?utf-8?B?c05WZEFsZGpFWlE0K1o3QVM3MEZ0dENFVFFsQUc3US9aMzM4cFlKanJYSENx?=
 =?utf-8?B?cDdvWThNOE1rVVcyZlZQTVlFUUQwemlCWXg3SEpKbHBXNVFyOEFZRTgwMDFy?=
 =?utf-8?B?WVljb3hqN0k2c3Jmall5V3FuNlBabWg2NDUyMFlLUGQyQnl1WVFZMUpXMk91?=
 =?utf-8?Q?ky7JhwSwYLzpjl+RCD0k9NGTkIf6dE1y?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR04MB12038.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(7416014)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?andabWU0c3NmZTE0UVg5djloMTZiR1F0UmxOZ2NpUkVTQ0FleEJhWXJTaS9y?=
 =?utf-8?B?Z3F1SUIyZ09JRCs5ZHNUSC9yK2JNOEhXNTgwbHBXU3dPbXczZVU1Q3JEbk40?=
 =?utf-8?B?c2djbmNkdGo0d0ZmTkFUZXdnV0FjUzgvdTVvNEpzekpsbzcvVThCY3Q5UnhF?=
 =?utf-8?B?Sm1hVERwcUhtaldReERUeFR1dmU0dEJmdmJ1K0pHZEkvR0pSQjBwV1p6ZWwr?=
 =?utf-8?B?YzFoUlhsU0EvYmZWRnUxb1duSWY2WGdVaTNYY2dWTDFQVjI4MHZ3aUdyRnFT?=
 =?utf-8?B?SUl2ZnpYY0QxTWEzYVBtYnh5TjVDc0tVeWlzdlBOMCthT0t6NWF3eWlBZUkr?=
 =?utf-8?B?RUJPYU9JUmlYbVlOWk9oVzhTVER0NHU5dzMxNXM3a1N1UTBwYWxqS3lGVnpF?=
 =?utf-8?B?QmM4SXh6a2JZTDlUNEpsZWt6STRXY3Z4RjJtTUJPK2hDZzhCYWlHMXhVdjEr?=
 =?utf-8?B?NTFNdmZ3WnpHWUFxRkxzYTh6SUVEdmNsUGp3Q0ZUSGsyemlEN21pUThlbmZl?=
 =?utf-8?B?WTR0S0NEa2Nua05vVkU4ZnljNGlYcjAzSlNsK2YwN2xaMGlNZXRIWElUcEs1?=
 =?utf-8?B?Vjk3QjY4ZDc5SDBhODZHdmp2R1VobS9LaGc0U21NajFOajVZMHJiZHQ2R3R6?=
 =?utf-8?B?dG1laFA4RXVJK1l2Q2JlTEZ3Z3JPWTJSdlFFcGM5NmREMHZmdVlVVk14a3Rx?=
 =?utf-8?B?R0RJMWdDZUdZencwL3BkeWJrU2NpaGhTZVNqaGJEN3ZyV040Tk5lUnJ2dTVS?=
 =?utf-8?B?RUNkbGVMOXFNVmFXZy9CdlFHUkJiZXVpQXFaQXFBY1JMYVFPUys4RldldDVl?=
 =?utf-8?B?eVpEOTJiRHB5ZE12U21kUTlyNUc3c3V6OHRVSEhNeHdKSTBjVUtZKzlNM282?=
 =?utf-8?B?bFNZVVNKekExTWFWeVBCTmtaSFpIUjlGRjRyRHR0dGFBbVhTUldqSlZaUXBX?=
 =?utf-8?B?VWthRlJPRUxQSGJxVDB3YVR5M1pWNUlxVkdFbUt5YUIweWlrNHdMSGRYeDlU?=
 =?utf-8?B?aFlQajBpRmdxYklyaStuenpLMGsraGl3VmZqamJhV2U5c0ozK1h5c0dqVTVa?=
 =?utf-8?B?Qm9DQVFTeDNNNUJ0bkFiMTNpaHM5QjZJenM4ZmRYckNFd1czSmNvT3B0Zk1u?=
 =?utf-8?B?MVBNMlRKRkt0TkxJOHh6cENxbEpwMWtyN2o5THcrNklHSnc5Q0lZaEozWnhk?=
 =?utf-8?B?SENVMlUrWTA5Ujg0K21iQU53YkdPT3NvQjFTdW01eGZndXFtQmtBdGRHcThK?=
 =?utf-8?B?NXgrVERVNnp5MXBGaWhaeUMxenZuS3VDRVJIcmtma0JacllRa0VtK3NqT2dh?=
 =?utf-8?B?aDVkaXFaQWZwZnNJMUMyMlZRNnQyZEdLa0tjYUI4cndpME9kbUZ5UFJuVFNB?=
 =?utf-8?B?SlAvMGMwNzZXMmVmSXJWbS9JM0lUckQxcTJuNHVqMllEd1Q5UVM2K0NjWGs0?=
 =?utf-8?B?QmppVE1BUDkvRkQrVlpyTjZQMzFScXdrcTQrYW9ENmRBOFNPQXM3d2YxclMz?=
 =?utf-8?B?R1NDVCtZTjlmL01IVmZBRUd4WnFUZWlCSzlHaFRMbjhlTG15Y21nOWN4WDVK?=
 =?utf-8?B?bkZZdTIyUzV3SXY5cmwzeTlMZWRrSWR4eThYRXdleldDaFFvN2RTa2FMTW9s?=
 =?utf-8?B?YjVPbFA2cHJWYUpQbDJNbnVmVzZ6U2locW10eHRHU1ZZTkdMekh5c0drWTl5?=
 =?utf-8?B?Vkk4cmFPQ1FUczRMMHJnRmFWVjF6ZVRDOTNHSkpNQ3pjUjFrOGJqRHpjVGFR?=
 =?utf-8?B?UDc0b0VpRUoyVzE3ZXpoRXR6elpZQ09nR2RtMWRFWUNVUDF3S1l4eWJ2c2NU?=
 =?utf-8?B?K0RmKzhkdkxNTkkwK1hDY2RGNTNyVlBYVEYxU0dEOWtWMWtrVFFhZVpuQnVm?=
 =?utf-8?B?c0RSbmJsQlFQUjB2eitpc0xadWVUaUZjcGRPVTlRMDZ3MHpHdGRFTm44USti?=
 =?utf-8?B?MVdjN0YxS3hEV2RNY3pjdHhGLzI3RnBwZUhmNTFLb0FJNnZUY05ZcEpmSXpl?=
 =?utf-8?B?b2I1eWc3YTdJL0o3UU91dmY4bTVISUV4dERaTDZydXlGQU1zV3JmUVVBQ2to?=
 =?utf-8?B?L1E4cVY4NzZFU3Nnc1FjdFJpK3VBNlUwR04vYklMSjhOdjNWanhtNk11MnVq?=
 =?utf-8?B?eVRwMVQxUGdJVVg3NmlpRUhya084YWJPTWdrdHE5Z0FMSnM5YXI1c2Evc0M1?=
 =?utf-8?Q?xpJ8SGJTCA46NV48eaFn33A=3D?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 727862bf-19f1-46b3-db00-08de2e685e89
X-MS-Exchange-CrossTenant-AuthSource: GVXPR04MB12038.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2025 10:24:53.1995
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: S3Ge25d1OIwM2qrUUd6px43F9CqH02gQXFY6DwzvfR4s1Xt392CK1TUYfryTq90hV2UN9Qb5VpWEtyoLxd/viFTDhza4GTSNrp3oz6zdQ60=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8536

Hi Naoki,

On 11/27/25 4:20 PM, Quentin Schulz wrote:
> Hi Naoki,
> 
> On 10/27/25 1:52 AM, FUKAUMI Naoki wrote:
>> This reverts commit 8240e87f16d17 ("arm64: dts: rockchip: fix
>> audio-supply for Rock Pi 4").
>>
>> Fix the APIO5_VDD power supply to vcc_3v0 as per the schematics[1][2]
>> [3][4][5].
>>
>> This fixes the SPI-NOR flash probe failure when the blue LED is on[6],
>> and the garbled serial console output on Linux.
>>
>> The ES8316 headphone and microphone are confirmed to work correctly
>> after this fix.
>>

Please test the ES8316 works when booting Linux from a U-Boot where 
ROCKCHIP_IODOMAIN and SPL_ROCKCHIP_IODOMAIN is *disabled*.

Having the IO domain properly configured from U-Boot may make you think 
that the ES8316 always work in the Linux kernel but that may not be the 
case depending on probe order e.g. between the IO domain driver in Linux 
and the ES8316 (if the original issue is indeed related to IO domain).

Cheers,
Quentin

