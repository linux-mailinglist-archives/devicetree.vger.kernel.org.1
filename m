Return-Path: <devicetree+bounces-136260-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 37004A04683
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 17:37:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9F6A41887929
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 16:37:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3B0D1E7668;
	Tue,  7 Jan 2025 16:37:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b="CF7fpbm6"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2040.outbound.protection.outlook.com [40.107.93.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC4612D758;
	Tue,  7 Jan 2025 16:36:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.93.40
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736267820; cv=fail; b=hxORQxRNsKbf/LJ01eIWfk37P16gyXJSQZbhqdzOj/Bs65DWvluJW3BIiFI0sW+VxJQ8BRIe/9NwtlOxWgxPaOnNQpFipZCFxC43lV4hA2dO73RgqZyhD+kYqqK+258KJGjfKoJufUES3y4137mC4sTEiWsFw1oHzc4TwiOJwYo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736267820; c=relaxed/simple;
	bh=BzS1yBl8GPr+se5BIqpEa/cWUEiegxUWe0LBtTbcYWw=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=CvCFKUxrzbBiIG5zd61HE93goDMAm9ZqVskUAHyNy/iFIvFBGzi3ROOQzW7H0+FcKkK645NBXVEUxlLElHX20nDp7+qAFI8DF6BgXqmNqTRUpWkDcqhOWzzZ9/IBsVN/GX2HGwD6fRJMMCd4Bztw557rXYio6YmvcIgyXDLqchg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amd.com; spf=fail smtp.mailfrom=amd.com; dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b=CF7fpbm6; arc=fail smtp.client-ip=40.107.93.40
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amd.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gJrQTIpCM8UhNTCMWU9BIHCMiaTy8Sol68zSKXRFdQHLkCq/h53JAX9/Hrqn51SH1MCYTMmFZ3EvQIgFm72WcpmRHLZKiHgN2iyT6MTylx+qv879N5mkaOgZayZAWqINZZcY88A6Hlxn6rB5CQ94ILGlk4GjepOIzyRKCI6Td+g4faYP+QyLzNkkDZjjcviA3CrdzUwVCeKIMVEyUbutiXdzoIkVfBea1BtmPRtF+bmZHR83SEzbEKK7JSjnBS1RuqsgFIaVOySvSZdc+14RGBNaz2X9NEEvAHcGp+btP1R/kSBkZzf2JJfErF9uVG/HRlnO65HaW6453t4KuvVjjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H1m3p6eFRt+ELKF2V+gO8omkzkm/cKk6uO2gruIMZw0=;
 b=oegnjCpZ4rKRMd8Kex5ZTDEN4jL6noL3um09GuECTEopaESUUf8N5kMgoV6vt577l80jguc5yo91VeAlJ7Ra6nmjwVviKX1LnBh16oPMFEXeVvmtg0KPk27+D+AN8nOiGJJCL/ztEwBsTyeHSazhGoIwSeVe0WuhXIIMRlxQV5UT6cQ0ZkAy27IIMFDmrK2urfePb2kxJKnP9ZyruaIi9/gnAV4JNJCJJX0BBZT4xUTtI83znUErzTuO7HOfqjndxY2pa8DbUlagvewUp9H+1aNwczqFngQ5r+ljxh+6ShYC89iuakJxZWPWVp1sWU7boE8DxybS09WvqBFcKGuYTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H1m3p6eFRt+ELKF2V+gO8omkzkm/cKk6uO2gruIMZw0=;
 b=CF7fpbm6cqUED//WoQfAWmML7jLlo2T4d7w5HpXiEOHbsZo5Zzgca0sft3EWyeDFreS+P8CAVGTfy/2uyydkFW5y5es6aOPSt7lpFLuL+yDn7KqygEm3m4eIUzXfjfDYRX9R/MbfF286S2+e/MdEvEhzl5938xao/bRz7t5wGi0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from SJ2PR12MB8109.namprd12.prod.outlook.com (2603:10b6:a03:4f5::8)
 by MN0PR12MB5739.namprd12.prod.outlook.com (2603:10b6:208:372::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.17; Tue, 7 Jan
 2025 16:36:51 +0000
Received: from SJ2PR12MB8109.namprd12.prod.outlook.com
 ([fe80::7f35:efe7:5e82:5e30]) by SJ2PR12MB8109.namprd12.prod.outlook.com
 ([fe80::7f35:efe7:5e82:5e30%3]) with mapi id 15.20.8335.010; Tue, 7 Jan 2025
 16:36:51 +0000
Message-ID: <05f5eebf-8253-48dd-b3bb-b5bf07b04598@amd.com>
Date: Tue, 7 Jan 2025 17:36:40 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] microblaze: migrate to the generic rule for built-in DTB
To: Masahiro Yamada <masahiroy@kernel.org>, linux-kernel@vger.kernel.org
Cc: Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org
References: <20241222094701.207592-1-masahiroy@kernel.org>
Content-Language: en-US
From: Michal Simek <michal.simek@amd.com>
Autocrypt: addr=michal.simek@amd.com; keydata=
 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
 3i3l5DA=
In-Reply-To: <20241222094701.207592-1-masahiroy@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR04CA0087.eurprd04.prod.outlook.com
 (2603:10a6:803:64::22) To SJ2PR12MB8109.namprd12.prod.outlook.com
 (2603:10b6:a03:4f5::8)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ2PR12MB8109:EE_|MN0PR12MB5739:EE_
X-MS-Office365-Filtering-Correlation-Id: a4c16510-df10-4280-d72a-08dd2f397cce
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?N2xxSlpOTXpwZmQvMHlLVjlBaWtXSE5LZXFCUS9XSHFBb3lJTGswMjlkWmh2?=
 =?utf-8?B?Q1VEWnIzeGs5WGxIanNRaDlHcFdMOHhmaEErRmUybmRvUUNld2xyZisrNVdL?=
 =?utf-8?B?VFJ2ZXZ3UU5oemN4bVdQbUgzVWVqb3doL2Q5MFhEZUVOa0lsQTRUTXdRcC9p?=
 =?utf-8?B?NHFYYVdldG4rMmpvRkQ1QU1BcXB3TkRWaWlCZ1VtcndtTG1oOXR6SDdra1Bi?=
 =?utf-8?B?VFg2M2duOXBGNXo5Z2tscyt1YU1CUDAxOGNTZHJVdXBJSjdycCtwL0xQNWh3?=
 =?utf-8?B?ZVFwa1hWak9lZTFKblRqdWRUOTVnNkJGMFZnOFZUUDZHZUR3Q0V3dURhaStD?=
 =?utf-8?B?Y3YvaW9EL3daZXlSK1VSVWViN25XRFJiYjFXZEh1NGgzdTNQQ1RCV0RnWDly?=
 =?utf-8?B?OURaVURQa3pPMFZHSG5PNVpsclFVcHFTNm51QlZpZ1ViQ2RNOW9NelF6RVFF?=
 =?utf-8?B?V2hYanNYaTVZb1doYng0aTg5RDYxeW95dzY3b09OVWVBTlVIZDNkcjVJcFNJ?=
 =?utf-8?B?emZJSHNGZFRLTmhSZFU1VVFvOGdKcVdIMk82aWdOSmNxZVhkWVZQQk1TMW8r?=
 =?utf-8?B?bXdpa3oxMUVpMjY5dDhhcWVUWnRNWXY5LzVIOUNKcXVSaTY4QWVoTE4rVFpJ?=
 =?utf-8?B?MlhFTytVYW12SVphL2xRVmw3T2xKOThhRlB3U3YxM0NGSXZJem1hdzJCVW9L?=
 =?utf-8?B?Tnl4aGVBSEhIVDF5a3pmcndpUm0vTklUV3pUeERNRDVLRlJma08wZEI5RWg4?=
 =?utf-8?B?SmRWRU9KUlAwRGdJdmxrU0w1Yys5Qk1Hbzl0TXNJaFZEWUdmME5YaVN5VGJx?=
 =?utf-8?B?VHFES0w1TnVKQUEzZm50Kys5Z25sRVVLTllwVVk3eUQvSDQ1QUo0NkJhdUxE?=
 =?utf-8?B?TGU4Yk5ZTWRpUnZJVWtBd3ZqamY1VWFsQVNreVBlTmZMK3N4WkpJSmw3Ukxz?=
 =?utf-8?B?bS8vT2hDay9xd21MemQyY0hsaEdma0VNOXVqS2dhM1NZK1owcnJIR0xMWVF0?=
 =?utf-8?B?SmdtamoxenBMc0Q2WC9tOFF4UVF4WEFqWFV2SWZQRC9ubGdTOTNMMkFjVDZP?=
 =?utf-8?B?N2xVbVFpeGtXdDhFZnhZa0lPWCs2WFc3cTV1VTVSYzZmMFYxV3lhYmhybzRo?=
 =?utf-8?B?bUxBS25OdStxNjk4Q3hkUDdXTmdvTk11engzWEgwd0Q1RE9TWDV2VVYrWWYr?=
 =?utf-8?B?UWk5dy9reGRWT2dBUWdCckZUMFlKVjJOKzFxOFdzYzQ0KzdNRUF4NGJ0cndZ?=
 =?utf-8?B?RitrL2VRTDlhSXEvc20yZTNKWWpEaERaNDNjcDF6U3BjekVReWh0YWFOTVNE?=
 =?utf-8?B?QWJLU1dleWljKzBuTXRod2Q0VnJMa2dGdVNGaTNtRkwxNThBaExsNXIydFJa?=
 =?utf-8?B?OFRkL1k5TEcxT1Bmb0ZXcnhrUmJ1cVg5SE1FTmNpSmZWN3UzcUdSalBTejN2?=
 =?utf-8?B?NlFmQVhYZW54WUM1SEFYZVZrSWptd2JvOUZlNU9qeGt6MndrS1U0b3g1cGZm?=
 =?utf-8?B?QzkxY3VscmM4dDNkVDg1cWpENmQzRElKR25mVDhwbW9LY3cwTEVrejMvamVK?=
 =?utf-8?B?UzVnRWJsZ055ajFBZmR5aDA0UVlFcisrazBGOER6MnBhSUhMcUNlT1hqaUVT?=
 =?utf-8?B?Rlh3UFlHWUFUd2c1Z09RQkQ3Sks5NlhnMnVOdWRnMEZMakhhdjQyckRoZmR6?=
 =?utf-8?B?ZDFuRzR5NDFIaytreUtZRXdaR1A5Qjh1L1FqNzE0dTJOanFMV2dtdEtBV1Zt?=
 =?utf-8?B?TEIrUkg5cXNMTHZlUEt4TzRvSFU1dWh4SWM3RzFBbGh2OGttL1R6cXdlcElu?=
 =?utf-8?B?MitXNWloSEd5WFl5MU1jY1NhemJoRlordzRMamdycWRxU1VHOEpJYTJSekt0?=
 =?utf-8?Q?ontXvTh5yoVdR?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ2PR12MB8109.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?VkhLMzlCZkE5NUQwSUk3ZFZNbVV6SjlGdW9RdjdhNlBKSXg1K3hxUFJZdWFi?=
 =?utf-8?B?N3BzRmh3WWtUQ0xyMExoKy9ocldwd3VsTVMzalJpOGVQdUJYWExuSmhuc3hT?=
 =?utf-8?B?VkY5RmdhZFAzWVNmMEluMU5UaDhPOTBEOW1Ub3VZYjF4bWhlc21oaDBhdlJB?=
 =?utf-8?B?K0dFdm5HZXhUTTluclRzOGdJcUdqbnVIWUE4cnlTTFBEa0cxYU8wdmVoSVVE?=
 =?utf-8?B?NkF2UWZFeUduSm1hTjRvYXRpR2k1NFRkdGJPUWptUHU0T2NaR1l2bjJOZ0pL?=
 =?utf-8?B?ZWxHTmY4MFJXcWNWN0hWdytBZ2xEaW5ZWG9PTnB2ZWh1YXdEd1pZb2lHUXVm?=
 =?utf-8?B?U1ZBRVlFZ2Q1SXhPWmJXemplS2FJMURZNEc4OHZMTzJJZmF2L1F3eFdJNDVz?=
 =?utf-8?B?Wno5czM4d3NPS1NUSXFmc0tKdUdkZVArZVhJcDhwYUtrVDRQN2xybXZSQkFV?=
 =?utf-8?B?MjRmOFpldzJXaUxIZjlCaDh3K3RtUkY0NlZmUHE4blpmUzYyeUhTWnlOOHVo?=
 =?utf-8?B?RUV0c0xVM0tHMndFa2FiRUNTbzNsbEgwOTBHYUZkNUt4Y1U5aHVxOTBoTi9k?=
 =?utf-8?B?R0cvZzJYb1I5NTh0R0dkVnZWNFFScStQbVFYV3hmYzZJSmJSYUpwUVlOY2lm?=
 =?utf-8?B?clZlZytYSVZHSUxPYjZnWXFlZlZMMTVHbFRlOUc3YzkyVFd5dDNZRXFEYm1l?=
 =?utf-8?B?QWdlcUxwQlp0Z2t6aHVoc1FIMkY3RlFURU5ncXpzMEVPdWtxb2FMeFFSQTNV?=
 =?utf-8?B?S3JFWFFpYzYzYTZocnpzenpBNzZuMlJZTnRIMk1taWtIRDNieGYyU2tkR1JR?=
 =?utf-8?B?VjlTaU9YSFZmUVBvNlRyNEoyNnpWbDRaWUs1cEFRWGVkUjJXZ2UvR1VFcXM4?=
 =?utf-8?B?MzJLWnl6c1JFR3dvaWpFblNxUDhVNS81ZWxNVzZyKy9yWUdnZHVaWGowcXRX?=
 =?utf-8?B?SkFib1pyOUxnYVZFNmUybTBQaGJGM1MwNlh3c29BeGJnNTdtWWMyUFlReWV5?=
 =?utf-8?B?TG10V1dQaXg5eGljbEZ3YlBCYVhadFFHK21RenNpbU5SVjNkU28yK2d1bDl0?=
 =?utf-8?B?L3U4dXBFNEIzeUZybnYwdFlEMkkwV0NPWHF2NDlyWlhUUEx4eVhxMDdIVkJ6?=
 =?utf-8?B?QWVFMEplQUZRRXJRZjJTUFdwNzNlRURUMCtVN0Jvc01DdCtpVm02aU9jV216?=
 =?utf-8?B?UFR0amV3TXZlVEtDNHhwaWowUFF2TGNFTmE4ZTN5QjliRjdWb0JuWFJVcjJh?=
 =?utf-8?B?NXdoclhVY1B0RkxLaC9PdWVtL2VHcktZblJmODlSekxPWTkwS2hYYkY4Ulo2?=
 =?utf-8?B?T05SdDE4Um55MXR5TTZ4eDU3S3ZaelVHQXlZTzZHaTFYb2hSZjBueG1OL3Ry?=
 =?utf-8?B?bFNnRFJkOTFpd2dJYlVyWWRtVjZGQlRNQXdjMGxuN2dCK2xEc2hmREIxSDVi?=
 =?utf-8?B?cmovVFQ0MmhXR1MwTysyRzN3cU9pUEdkMGMzN3MwQUEyaVREZzMrL3BMZitS?=
 =?utf-8?B?aXZTUFZmTldxelV3dE84ZkU4RkpzODYxcjV3TFNTY1JNTFA3YXRsMHNxYkhM?=
 =?utf-8?B?VjdROFE3Nk0zQ0tOVGtZZjR0amhxaUdDZkUrSDFPV2V5NkpMWm1kSEJmS3ps?=
 =?utf-8?B?aEFKTWVkZ2FGWlREalB3VWVqNzBLck9RVHJBanAzNWgzOXl3N050LzZMWVV1?=
 =?utf-8?B?YzhScXZJZ2phVGJNYXJKajVzd3h5c0Rmb2xlQUlFTVNvb2hGbDJCYUppdEVY?=
 =?utf-8?B?MmJEOE90VWNzYnFhcXVaZzJlQjJkUDhhWHZrVEQzTG44OG9GSFdoR0NucVFk?=
 =?utf-8?B?MEpROEVtYWtLOWNUd1ovNWd6bDZidlFGaWMyMDdUTWxlVzJ5WTdXNFdlZXRT?=
 =?utf-8?B?S0JvQk53N2ZpRW1hekdQT3cvVjVVZDJJZWhmaUxuQTFtWFBPYklsNTdvYi8z?=
 =?utf-8?B?U2VHVWtTYm5QbmpFdkcrdk1vNkZRMlVxVnkxbVJtUTVXOWQwUXV0KzBnUFRn?=
 =?utf-8?B?bGhmOWFhTmJhemU3dTV4bjh2VVZBNy9CWEFscXdjN2o1cjZxWjlhYk9xT1pR?=
 =?utf-8?B?cFNqcC9vOXZrcXJtS3BjQ0xsN0ZpL1E4WnAyRHdCRXQ3RzdTRmp2bVBrdTc5?=
 =?utf-8?Q?goxp2MjX2TMhW/9pVvwqe7vH8?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4c16510-df10-4280-d72a-08dd2f397cce
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR12MB8109.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2025 16:36:51.0858
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5dFWoyuS26yTfg+Y/r6Luy5pva1zOAlMEGOTWmaILaZU79tuZIOHxDCIceOSB6pO
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR12MB5739

Hi Masahiro,

On 12/22/24 10:46, Masahiro Yamada wrote:
> Commit 654102df2ac2 ("kbuild: add generic support for built-in boot
> DTBs") introduced generic support for built-in DTBs.
> 
> Select GENERIC_BUILTIN_DTB to use the generic rule.
> 
> MicroBlaze is the only architecture that places the built-in DTB to its
> own section, __fdt_blob, rather than the standard location defined by
> the KERNEL_DTB() macro.
> 
> For backward compatibility, arch/microblaze/boot/dts/system.dtb is still
> placed in the __fdt_blob section, and possibly overwritten by an externel
> DTB passed via the r7 register.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
>   arch/microblaze/Kbuild                | 1 -
>   arch/microblaze/Kconfig               | 5 +++++
>   arch/microblaze/boot/dts/Makefile     | 5 -----
>   arch/microblaze/boot/dts/linked_dtb.S | 2 --
>   arch/microblaze/kernel/vmlinux.lds.S  | 2 +-
>   5 files changed, 6 insertions(+), 9 deletions(-)
>   delete mode 100644 arch/microblaze/boot/dts/linked_dtb.S
> 
> diff --git a/arch/microblaze/Kbuild b/arch/microblaze/Kbuild
> index 077a0b8e9615..70510389eb92 100644
> --- a/arch/microblaze/Kbuild
> +++ b/arch/microblaze/Kbuild
> @@ -2,7 +2,6 @@
>   obj-y			+= kernel/
>   obj-y			+= mm/
>   obj-$(CONFIG_PCI)	+= pci/
> -obj-y			+= boot/dts/
>   
>   # for cleaning
>   subdir- += boot
> diff --git a/arch/microblaze/Kconfig b/arch/microblaze/Kconfig
> index f18ec02ddeb2..4ed8ca89f0c9 100644
> --- a/arch/microblaze/Kconfig
> +++ b/arch/microblaze/Kconfig
> @@ -10,6 +10,7 @@ config MICROBLAZE
>   	select ARCH_MIGHT_HAVE_PC_PARPORT
>   	select ARCH_WANT_IPC_PARSE_VERSION
>   	select BUILDTIME_TABLE_SORT
> +	select GENERIC_BUILTIN_DTB
>   	select TIMER_OF
>   	select CLONE_BACKWARDS3
>   	select COMMON_CLK
> @@ -47,6 +48,10 @@ config MICROBLAZE
>   	select TRACE_IRQFLAGS_SUPPORT
>   	select GENERIC_IRQ_MULTI_HANDLER
>   
> +config BUILTIN_DTB_NAME
> +	string
> +	default "system"
> +
>   # Endianness selection
>   choice
>   	prompt "Endianness selection"
> diff --git a/arch/microblaze/boot/dts/Makefile b/arch/microblaze/boot/dts/Makefile
> index b84e2cbb20ee..87c1d25ff096 100644
> --- a/arch/microblaze/boot/dts/Makefile
> +++ b/arch/microblaze/boot/dts/Makefile
> @@ -4,11 +4,6 @@
>   dtb-y := system.dtb
>   
>   ifneq ($(DTB),)
> -obj-y += linked_dtb.o
> -
> -# Ensure system.dtb exists
> -$(obj)/linked_dtb.o: $(obj)/system.dtb
> -
>   # Generate system.dtb from $(DTB).dtb
>   ifneq ($(DTB),system)
>   $(obj)/system.dtb: $(obj)/$(DTB).dtb
> diff --git a/arch/microblaze/boot/dts/linked_dtb.S b/arch/microblaze/boot/dts/linked_dtb.S
> deleted file mode 100644
> index 23345af3721f..000000000000
> --- a/arch/microblaze/boot/dts/linked_dtb.S
> +++ /dev/null
> @@ -1,2 +0,0 @@
> -.section __fdt_blob,"a"
> -.incbin "arch/microblaze/boot/dts/system.dtb"
> diff --git a/arch/microblaze/kernel/vmlinux.lds.S b/arch/microblaze/kernel/vmlinux.lds.S
> index ae50d3d04a7d..e86f9ca8e979 100644
> --- a/arch/microblaze/kernel/vmlinux.lds.S
> +++ b/arch/microblaze/kernel/vmlinux.lds.S
> @@ -47,7 +47,7 @@ SECTIONS {
>   	. = ALIGN (8) ;
>   	__fdt_blob : AT(ADDR(__fdt_blob) - LOAD_OFFSET) {
>   		_fdt_start = . ;		/* place for fdt blob */
> -		*(__fdt_blob) ;			/* Any link-placed DTB */
> +		*(.dtb.init.rodata) ;		/* Any link-placed DTB */
>   	        . = _fdt_start + 0x10000;	/* Pad up to 64kbyte */
>   		_fdt_end = . ;
>   	}

This patch is better then previous one but still it is changing behavior of 
build. When this patch is applied linux.bin contains dtb which is not the same 
behavior as before (which was empty).
DTB should be filled when simpleImage.<dt> is built.

Thanks,
Michal

