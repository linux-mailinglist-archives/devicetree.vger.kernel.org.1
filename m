Return-Path: <devicetree+bounces-104668-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E704983C05
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 06:18:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 20B5128349E
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 04:18:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACA0F208DA;
	Tue, 24 Sep 2024 04:18:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=amperemail.onmicrosoft.com header.i=@amperemail.onmicrosoft.com header.b="ldCiQ4ye"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2102.outbound.protection.outlook.com [40.107.94.102])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAD8E1B85F3;
	Tue, 24 Sep 2024 04:18:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.94.102
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727151490; cv=fail; b=dt5voVPx6DQUgzjeB/H/LbbcYRRbl3oZjV6Vs/jG8h88XfK6iqyKxdueHNSk+L9lA6RbVpjup3y5MVDD8JnvqSvrYczuZ9c5CiGeoH65mSrJhyeybWwnvj4L/Tk5tGNo7WALEUP4obSdssvlJJqAcrnaOIlfbj43rpsdFpfl4qs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727151490; c=relaxed/simple;
	bh=oN785wMBs5ZWkhqmfI1MjM0To7daDcO8bb+fn1LvCvM=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=KJ4IPH2OKWBZQFKE25IA72Xdd72aOcRjaFmViAKEIS/xwiDrF1dri38Nj7IIUrMYff5vozN3yUwajeXJQi1M4qAOhm68NxE5kDpztmN+fHa4osSUhqGIBYdp6mCHX3GjYWuGtYTol6miLTC1n2kB4Cv80S7t/6R80B2oYxsyf+g=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=amperemail.onmicrosoft.com; spf=pass smtp.mailfrom=os.amperecomputing.com; dkim=fail (0-bit key) header.d=amperemail.onmicrosoft.com header.i=@amperemail.onmicrosoft.com header.b=ldCiQ4ye reason="key not found in DNS"; arc=fail smtp.client-ip=40.107.94.102
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=amperemail.onmicrosoft.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=os.amperecomputing.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QhD31QEzre033vZGLx86/c5h8Elwy8jvSMTuXO999oi38kyZv5iqy4iJ3v9qZUV6YFempHpg3PjwHgDYaOCuhKnKn7ed5P5YkXYwXY7v7A9D9IbRj/XdGtegmnY2KeMWp0lbZiiswnwvvn5Pr7GqGyNuMLOBmTVEmP6/+a0fzJWIIPSaQl0nZNYDJUn8SGHg15s4E2Tm0tVy6baXNd0zmfB0DEYljdFJoa7+qt0ELEShWmPOPl21yV9+Wq09YDZHUiqPq7ho4xntlmFtasu2+8TurimM6vnS2jMe6EwQS6f7JtQIrBpcltpnY+D0a3au3tH9do8j+so/BcBthzm0gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UKf8iKcsZR7qj+T7SvM2gvOi0G2zTaqvIe4SVma31fs=;
 b=CtWywvDqmX2HBHldCqKYqTrhHdXN6bF2kbTOdK4zJS3VGV1L9/x6EVy7M2TYab2CaP6Mb1pRZc+8gvIUUwjZki0QJ0fAuYMAVb/A0IDDwonkVNQ2ILQpg7lQBcdE9vQHFnPLSu4Qj2gqfltdr+fTCrtrEPMKxPgSp4SCQuTQSu88mCkUFZfE27ePU9SiMtZWH9U14jkyTrN5tWrN//CCd+KwEVn4aHQS2sDiDgc2sqwEE/xvowWYrLPvxMQZcTnOaHRHnF8TAAMXN4uPsIPtC7xcJ9VD/S1GWqCiX7G/pt37SEUjwLYMscZbZjhZuSMQvvdpxH7rliOvxGZheLdsxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=amperemail.onmicrosoft.com; dkim=pass
 header.d=amperemail.onmicrosoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amperemail.onmicrosoft.com; s=selector1-amperemail-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UKf8iKcsZR7qj+T7SvM2gvOi0G2zTaqvIe4SVma31fs=;
 b=ldCiQ4yec9cQmrs+1v7oWrIDDJr0eiXRtDj9yjsZEnJTju9PM86xthCPxp2SCmsHyR2WJbLC/i38rZbdMPIuUUzAql7kXXagxeNlnR0SKqwdJXntmvgD3HCugh4ry+V/6SNDLV/OROjjO9Cg+yHrehKPJZKl0u+8TBmE+hk4gTs=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amperemail.onmicrosoft.com;
Received: from BL3PR01MB7057.prod.exchangelabs.com (2603:10b6:208:35c::16) by
 SA1PR01MB6592.prod.exchangelabs.com (2603:10b6:806:185::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7982.25; Tue, 24 Sep 2024 04:18:05 +0000
Received: from BL3PR01MB7057.prod.exchangelabs.com
 ([fe80::b69e:5684:ed7c:4d09]) by BL3PR01MB7057.prod.exchangelabs.com
 ([fe80::b69e:5684:ed7c:4d09%4]) with mapi id 15.20.7982.022; Tue, 24 Sep 2024
 04:18:04 +0000
Message-ID: <c536f43a-56f8-4cbf-99a0-fe3b54a42886@amperemail.onmicrosoft.com>
Date: Tue, 24 Sep 2024 11:17:53 +0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt-bindings: trivial-devices: add onnn,adt7462
To: Conor Dooley <conor@kernel.org>,
 Chanh Nguyen <chanh@os.amperecomputing.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Guenter Roeck <linux@roeck-us.net>,
 Peter Yin <peteryin.openbmc@gmail.com>, Noah Wang
 <noahwang.wang@outlook.com>, Marek Vasut <marex@denx.de>,
 Fabio Estevam <festevam@gmail.com>, Lukas Wunner <lukas@wunner.de>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Phong Vo <phong@os.amperecomputing.com>,
 Thang Nguyen <thang@os.amperecomputing.com>,
 Quan Nguyen <quan@os.amperecomputing.com>,
 Khanh Pham <khpham@amperecomputing.com>,
 Open Source Submission <patches@amperecomputing.com>
References: <20240923093800.892949-1-chanh@os.amperecomputing.com>
 <20240923-private-grower-af6a7c1fca09@spud>
Content-Language: en-US
From: Chanh Nguyen <chanh@amperemail.onmicrosoft.com>
In-Reply-To: <20240923-private-grower-af6a7c1fca09@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR05CA0210.namprd05.prod.outlook.com
 (2603:10b6:a03:330::35) To BL3PR01MB7057.prod.exchangelabs.com
 (2603:10b6:208:35c::16)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR01MB7057:EE_|SA1PR01MB6592:EE_
X-MS-Office365-Filtering-Correlation-Id: ce63edac-19bd-4153-6ca8-08dcdc4fe2d8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?MGMwbVEvTGlxSGdWVjZMVmk0T1JXRXVsQzl2bjRjVXFVY0RNQ05Pbzd4Q0h0?=
 =?utf-8?B?SllZeGlmejlacVZVZ0hoUHhMR2plTjJnWVRQUnkwb3UvbC9MbytzS1UzOVRF?=
 =?utf-8?B?aThiR0FnWnJOVDFKSmZMeURkWE9mSnpodjBqRGp0MDNURzEwL2NiS1FYWm0z?=
 =?utf-8?B?TTR1dmpQNFhua0paQWJtbTlPQVU1dmJxT3pCL2dQQ3JtQlZsNitQNFJ4VklI?=
 =?utf-8?B?dHFPYmRtN2dPcm5BWW8xWndiRy9xMU95TXJ5UW5KTmJIV29pVzNiaXdYd2Rv?=
 =?utf-8?B?M3VaMW80aWNZeDZiTkhQVTgxbW10cFRlcWsybmJ6dUl5Q2NkSUhqMVdEVklM?=
 =?utf-8?B?MzZtcFpFY2k4YXB3cWwyenJwKzRsSXhvUStBUHBXWE9mZ2xpT01mWXRqWHRY?=
 =?utf-8?B?Sm9UQ25ieXhWN2xlYlU0RVBNQ2wreTYrUkZ0U3RUL09EZ29Ra1hZRzJSWXBh?=
 =?utf-8?B?ZUJZMVZmRzRkV1pWRUtTNGdpRy9VQ2RNWDRCQ0R0d0crbEc4ZkJUdDNSd1RU?=
 =?utf-8?B?bnBRTkhYUVBybWJNVjlKZHZtUGlpS01qVzhWSEZEa0owQk01UGYrUW1pa1pU?=
 =?utf-8?B?a3kvQVpOYzdTdDlrVHQySmprTXZuTURWVlZiam9IQ3ZlWW9reHBNdGtFc3ZH?=
 =?utf-8?B?ZHQrbHVNQ3JkZ1BZaURQd2JYYXJJM3JZMmYzYW13cHkzVUp2eFdHTXhuNW1O?=
 =?utf-8?B?eFRLOEVFcVc4VUZ1S1NVK29nZVV3ME9rQVkvNlg3L3hNbWZNOFZoOGpoclNr?=
 =?utf-8?B?Q252ajY1TnZOcmZGZUhsNjdpSk1sY0VqRXVZWEp1emY4b3dkUFQycGdJVEh5?=
 =?utf-8?B?ZDd0UFFsRTVSTTNUYU1wcDQ4MTdzZGdBQ2lRVU9weDNoeUh5TUJLcGVXUTRF?=
 =?utf-8?B?dzd4ZVAvdmhYdkpmcmVRd1JUaHJhY2hRSDVNcmNKeFFHOWxXeks5TDlZTGJr?=
 =?utf-8?B?RlJSMmVIc0p3VEN5MVQxRldwK1g2akhUUVhFWTd4anBUY003YXg3TklpaFp3?=
 =?utf-8?B?bjJwMy84bEVGK2hxUzBkemRGbTZ0cTA0NkdOMjJPajlqWlNuVXBsSFE0dXpp?=
 =?utf-8?B?dXNETEZYd0V3M2E4MnVsek9lWVVUN0xOc1RJS0ZqZ1BUVjgyaTYrUUhyMHV5?=
 =?utf-8?B?L09GYWpwTndZTmo0Wm9pc3J1Y3pxN0dHNGwyU2FVUTZGS2x5WnVyMWhaZWZm?=
 =?utf-8?B?QWVHdXJ6R3J1RWRnMzZmRFJPUGFWVXJIN3BGNWEwbDFJaC9PTW82T2h1UmJs?=
 =?utf-8?B?SlZYN2Q2NWxxZzU4em5VRlhxZFNrWVN4OGcxaitPUW1qVjZVVUpPMTR1MStL?=
 =?utf-8?B?N1BvOStwczVmZFBLTkx0cEVkMEtlaGlYVG9BYWh5ZGpaVHJIUmtmQ0VieTlS?=
 =?utf-8?B?czlhMUt2UlZHeW5ITUw2QWIrVlBIeS9CUnRSOFVMZDFHMDg4OE50NlJ4dmEr?=
 =?utf-8?B?YXhQc1pZZkVPMW1FeGF2T3VKRjZCNitSamtCdG4vN1IwYWV0czF0NFJkUWl5?=
 =?utf-8?B?blFkN0R0aDFTYklqbFNFWDB3dSsyQWdqRUZkTllQT2FkcGdnR0Z4V2VGRkcr?=
 =?utf-8?B?RnRvOVpkZisvNUFONlRVd3cvRzZ3QkxWMFVGanA2ejJibkk4TWRvL2hlbmpH?=
 =?utf-8?B?MzVqRXNBSkhpeTlmOW1qM2RGV2J4eVNzaEV5QzFrVS9kK1c0VGpiSks0TDRP?=
 =?utf-8?B?RUNUUkRSb3dhQ1NRb1RpbnlYYTJYNXdWMGFKbExwVEljZjdrVS80eWRRPT0=?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR01MB7057.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?ZkY2ckJFdWIwUVBqalVpUDFHWDhsVWh4RU82ZFpGZjF3bDdNamROZDdDSzI1?=
 =?utf-8?B?K3JGbW5ReDluS1EyNlFGWkNqMElHWjg4Zk1WUlNHeis1cDUxQ1FmTTlIdjF5?=
 =?utf-8?B?eVYwbFlFeS9lN2VPM3Z2NlVhbG1abzBPdmxXNENDSjQwRmt1Z1pWOWdCa2xm?=
 =?utf-8?B?RGpOOG5XUmF3ZWVYUFhubC85MW9SMVVSSXk3d2QwOThLVnN2UExRcnB2bVph?=
 =?utf-8?B?V2NjcnMvTWJhTllsOWVSL3Bxalg3Rk5DSWpzTjR6a3dRWkt2cXNyOEY3T0RP?=
 =?utf-8?B?cFlPWSthSkx1OVBJUTBjeXpJM0xtWGRjTWtyODBDdjRqS015Z0hOTXltaEFq?=
 =?utf-8?B?WlBHVllWQW01VkF5bkMvcGR3K1BManVodWlJV2Jza2EyMEN6ak5NSnZFNGZo?=
 =?utf-8?B?bjhhUjZPMjBqY1c1MFBUeUx5ZHNFcHV1MUNRWWl3cjRneHovMGEzRStXOER2?=
 =?utf-8?B?SU4wNnJaSkZEZEJFUCtMOW93b2Jkenk4b3JZekVMbkgvTHZhT2dvdEYrdzdm?=
 =?utf-8?B?djhyZWIxUWlIZFZzRkNhTzNVd2o2R2IzTnlZWlVrdnEwbWU3Sk5ZNEJSL1o0?=
 =?utf-8?B?OFlVVEhuN1oyUXBPTFQxSmRiWGJ2YStuSTV2VE1BZFN5ejVXendON01tMDZz?=
 =?utf-8?B?NTI5MDAzT0xicEdIMHAwTFR4QjJYNmNneDVTbURhSEZRVi8vZHgweHVBRlN4?=
 =?utf-8?B?bkxnSGIwMURUMWxCQWp1dEdiQU1TQ3hTQlNvbnB3N04yR0xDQlkvOTYyT0hF?=
 =?utf-8?B?elZZQ3FaR2dEVVUrVlpOaVlITG5TT0V2SDdrcW9GZ2NDbUtLOWNta1BVZHp1?=
 =?utf-8?B?bVpVc2MvMTBEbW1QTDhZaGVCZ1dFOXMxY2FUM2ROcE5sUnZ1S0xyaGpyaXY4?=
 =?utf-8?B?bDZzMmlDbVh5Mzd6TmRkTzdQdXhZNFVmTHJYUWVMaUtBTVVhODJvNjFsMG9F?=
 =?utf-8?B?bzFqQ0pqekdQTWgxQXNUUUkrdkQxNEh6Z2l6OE9vcDlUMGNYbk1jWVQ0ZDM3?=
 =?utf-8?B?bkhQajF3OHAyNE02SndrMExaTzlXYlFHS2g3MjFhUG8xTU9nWHV2QjE2czg1?=
 =?utf-8?B?bGx0K1B3NmpEM0hSNE5zdTZabjF4MjRVc2hqek56QXdnMGZ6RFRyeGVHekZO?=
 =?utf-8?B?dGJOT0Zzd1dWMnA0dXpoVUN4c2VIdnpqTlRHSDlmVUFsdUt1eXJZakxyWkNM?=
 =?utf-8?B?V05LZEdFWUdUVWNYdHZ2QkxVdjdHd3FqbVh0NDdwbnZjb0ZjZlY4ZHE0ZUgz?=
 =?utf-8?B?MndGdWhDSFlxZjB3V0tFeUU1UEpNL3Vvc01FWVQrTzAxKzYzM0x3Q1Uzb3J5?=
 =?utf-8?B?ekxmak9EL1orM0FUaGNOUXZUQlhURDJBci95a2o3WTlSbFRhZVB5RStVK1Vy?=
 =?utf-8?B?M3Q5N2VDMm5ZbFV2cDR0L29adjc1SnRiMEdEd0dtclFqN0dmaHNNdjIvOFow?=
 =?utf-8?B?aDkwQm5ISCtKbkV2NEMyeS9acTY5YisrTmlkOUZiakNIc2l5RW1KUjJnRHVq?=
 =?utf-8?B?Yll3UGx2b2ZTaG14a1FDaGtOcjMrV0xhZ3lGcDNzM3BENEUyeUlHeU5oUWhy?=
 =?utf-8?B?bDZBMHcvRW1DNVozelFUYUlSQUYzbFBrV2NTdDlBTzNBWXQrODhTa2ZoSUFU?=
 =?utf-8?B?d3lFNTZIcG81ZTJaRzdVazgxMHlLVllOdHhJQmppcHY3OFh6Kys5ODIxUTdH?=
 =?utf-8?B?cFQrdHdQSjdmclZOOHcyY2orMU1GNVVLak8wT2VDUjl4cC9yZEIzdGUwbmhY?=
 =?utf-8?B?WGVHU2FOUUhPWGxxa2JEYTQvRXU1WVY3RytsZ3AyMHlWRExXbXNmSUlzam41?=
 =?utf-8?B?Sm5IeFJDdFY5SXhhaWJBTTQ2dk1YaWFjRHpTQ0N2cjVIWC9wV0g2UW5IOTQy?=
 =?utf-8?B?eFZOTURqWkpwOUJkYlNHQnZjNi8xU3ovcDk2S3h0eTltWm9ROThRaE5tbEhl?=
 =?utf-8?B?R2hvOVgvVnZrL0w2ZTQ2SzJSYUlEd2VZVzc2S3VVRmdmclBITUdHUUgxdXFu?=
 =?utf-8?B?b014Y2RFNjJUa2tGQXFTZStDTnNZelowdlY3Z3IxN3oyUk90TDhQTVpZVy9C?=
 =?utf-8?B?VmRzNzNVcGVKMS9aS01NQkJiS1VrU3FTT281YW5LTnhWK0NXT2hkajE2NFpx?=
 =?utf-8?B?MmxPK0JjYzgrM3c2WisrUGhoUjY2ZXcxS2lvTG9tMEszUzJ2T3VpVm84MUFZ?=
 =?utf-8?Q?VdnnEIfJpAdCtP0INKOaY6g=3D?=
X-OriginatorOrg: amperemail.onmicrosoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce63edac-19bd-4153-6ca8-08dcdc4fe2d8
X-MS-Exchange-CrossTenant-AuthSource: BL3PR01MB7057.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2024 04:18:04.8551
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P0WOhlrLgaHcbtGk3lu8hjlOZnhPqsSzLbnP/3M6hMaazR9z5EIi9Eem9b/r28LWDNmOPo60Q/Mj63boiVdA5kVHSH5PKBLOaPR+briruMBvV5sPFysRTO/fQVM9nw2N
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR01MB6592

On 24/09/2024 04:23, Conor Dooley wrote:
> On Mon, Sep 23, 2024 at 09:38:00AM +0000, Chanh Nguyen wrote:
>> The adt7462 supports monitoring and controlling up to
>> four PWM Fan drive outputs and eight TACH inputs measures.
>> The adt7462 supports reading a single on chip temperature
>> sensor and three remote temperature sensors. There are up
>> to 13 voltage monitoring inputs.
>>
>> Add device tree bindings for the adt7462 device.
>>
>> Signed-off-by: Chanh Nguyen <chanh@os.amperecomputing.com>
>> ---
>> Change in v2:
>>     - Add onnn,adt7462 to the list of trivial devices       [Guenter]
> 
> Is this really a trivial device? If it monitors and controls fans, how
> come those do not need to be represented in the devicetree? How is it
> possible to tell the difference between monitoring 1 and 4 fans without
> the extra detail?
> 

Hi Conor, Thank you for your comments!

The chip is old. The driver was added back in 2008.

Really, this is such an old chip that it would make more sense to just 
leave its driver alone unless there is a problem with it; this is 
viewpoint from Guenter.

I'm using the driver and the device tree with only the "compatible" and 
"reg" properties; now it's being good for me without any extra detail.

Guenter, Rob, Krzysztof, and I discussed making the decision to add this 
device to the list of trivial devices. You can get more information at 
thread 
https://lore.kernel.org/lkml/20240918220553.GA2216504-robh@kernel.org/T/ 
(Because the commit title changed between v1 and v2, it's so hard for 
everyone to find it. Sorry! I missed mentioning the link to pacth v1).

Guenter, who supported the driver development before, he suggested me 
add this device to the list of trivial devices.

Thanks,
Chanh

> Curious,
> Conor.
> 
>> ---
>>   Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
>> index 0108d7507215..15f89d7ecf73 100644
>> --- a/Documentation/devicetree/bindings/trivial-devices.yaml
>> +++ b/Documentation/devicetree/bindings/trivial-devices.yaml
>> @@ -311,6 +311,8 @@ properties:
>>             - nuvoton,w83773g
>>               # OKI ML86V7667 video decoder
>>             - oki,ml86v7667
>> +            # ON Semiconductor ADT7462 Temperature, Voltage Monitor and Fan Controller
>> +          - onnn,adt7462
>>               # 48-Lane, 12-Port PCI Express Gen 2 (5.0 GT/s) Switch
>>             - plx,pex8648
>>               # Pulsedlight LIDAR range-finding sensor
>> -- 
>> 2.43.0
>>

