Return-Path: <devicetree+bounces-119050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB4D9BCC08
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 12:40:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 49B901F21E93
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 11:40:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE10C1D45FD;
	Tue,  5 Nov 2024 11:40:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=amlogic.com header.i=@amlogic.com header.b="Wl2/f3i+"
X-Original-To: devicetree@vger.kernel.org
Received: from HK2PR02CU002.outbound.protection.outlook.com (mail-eastasiaazon11020076.outbound.protection.outlook.com [52.101.128.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A6C21CB9E6;
	Tue,  5 Nov 2024 11:40:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.128.76
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730806831; cv=fail; b=F9+R1TbA7rx3AAum3NqFlWCJkIXnZeFAv+l7AxnSol42briqbefcM+2Q2bVOztfzbz4g9KEjnQS6y+400ySoX0uiX9gyJa69yMgFPGwcsh978hRoucbi5hjUICSpT9Prj4Gn0swC8mW3Y5IR+KI06YOhsao8uF1WB1965fMfBTc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730806831; c=relaxed/simple;
	bh=4k9IwUnA6GiPpKvUGN9JqBWwHR+VRsWhiV5ssGDuYHY=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=RjVptA9uLsVTHsIDbbgjRJUXPTjdF1t5j+9PUedGvGvItp065Rw1JqyLTiiPJdh9sTuNus8t/Gf/DrAav8aEvLIDBrS+jKtLkEYkvda/Pf9JZvyPDcrqxNEJu/Gv2GYVZE2Fn86FvDYi6iHRdtPUCVD63EOC8MKnvS2o3P053sc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amlogic.com; spf=pass smtp.mailfrom=amlogic.com; dkim=pass (2048-bit key) header.d=amlogic.com header.i=@amlogic.com header.b=Wl2/f3i+; arc=fail smtp.client-ip=52.101.128.76
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amlogic.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amlogic.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pS019KaUkRDySgV7maf9VW3C4otMWdLzDPwBsjigGW2uYJnShURQq+hoZwOqOqoNn5kaK3Elo9XrnNKmgK7K010PE/tvx9UBMzO8jHy/zaI8utbFox2l1j5aTaVkMUEynH6qBAaZq3kJ/Nrc/jnQa6RU02WTygDVo1AjWZwVsv6Z+kDT/hjbn6Bko8gbSdsSyXMn45y0m0Z7G85o/UFMaMTMScHnkCdAncB0QcAnWPAnH6LeSpl2jzqF15oekNsbwyNdAgHJKUiY8MvC1UvLKZre7efTHXpbTzCOF0TTqWz7OaQjy5Tbha+lLLXWg68Yjg3I/BEGjKSNlgJGlvAkRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+inMrSKbnp6vEqv+ot15I3zHua3FGROzSs9x5johJIY=;
 b=un1HLIRa4FxGUnb1jt9IdSrRPn38iOAU6aWHmDm3O8acxzuqIsupwcnHd9jwK9Nc8s7tu07sT3TqCiwGX2shRPWaKxgzBOyrtocwbtwojYVHofbr4L++o1hN+aPDptZZLT0ZCIVxv2xlrjhGG+JcK+PzC7AL8DVRc0gCVJmWkHx9RczCefrPnTYj08S/G0boMXoG55ZiLMBzCHNqdHVMqN5R3oe1E73Z/mps+y9sKs9Byhl8+vR6oQCe/KKwE24Fyr5I+mFRzneAa3V5t4etuDRyHVOpEsBKYf2H0Z1xNAM6Aki3Pa/bXdlXz6Q20AG5q/YnSw9Jr6AuHYSqbrJtcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amlogic.com; dmarc=pass action=none header.from=amlogic.com;
 dkim=pass header.d=amlogic.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amlogic.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+inMrSKbnp6vEqv+ot15I3zHua3FGROzSs9x5johJIY=;
 b=Wl2/f3i+e0dqjANOaugPk6rd/kp7mriGARiFBCFC8jw3D38VLK2IVHZpN/tNpbPNq54YjOmIuwvsSw31F8qc3KVYYQt7jDkCEDC9kqH3R5IE9GnnbjFPIgJnzgw+k7R9C423JQgT2gLENuTqQPj/l1zo4UJpHwxZ8vX90QfDWZVGjJxaYCtMeUWlMhZqc5oDTnx8gjR7cnRgvhOB5dmJPEN/qkwcIJ29hEzstU/KfVSOxYiVUZViCqOMgk186lzfryVN8j+9VG6McfdCvrNXQeiL1Q/p5iSJmmwxRKwVWmchUbqIdapo66JdBQ27NZZ327Fbo2Th+sSB2e624/RtNA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amlogic.com;
Received: from TYSPR03MB8627.apcprd03.prod.outlook.com (2603:1096:405:8a::9)
 by SEZPR03MB8680.apcprd03.prod.outlook.com (2603:1096:101:233::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Tue, 5 Nov
 2024 11:40:23 +0000
Received: from TYSPR03MB8627.apcprd03.prod.outlook.com
 ([fe80::cf16:aa54:9bd5:26f]) by TYSPR03MB8627.apcprd03.prod.outlook.com
 ([fe80::cf16:aa54:9bd5:26f%3]) with mapi id 15.20.8114.028; Tue, 5 Nov 2024
 11:40:23 +0000
Message-ID: <761293cf-af74-4639-9811-33cf54169609@amlogic.com>
Date: Tue, 5 Nov 2024 19:40:18 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/9] media: platform: Add c3 mipi csi2 driver
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kieran.bingham@ideasonboard.com, laurent.pinchart@ideasonboard.com,
 dan.scally@ideasonboard.com,
 "tomi.valkeinen@ideasonboard.com" <tomi.valkeinen@ideasonboard.com>
References: <20240918-c3isp-v3-0-f774a39e6774@amlogic.com>
 <20240918-c3isp-v3-2-f774a39e6774@amlogic.com>
 <ejz2o35uenq4bq6ifepgpu2tsfkjrylmtvxx5ysqab5ydodtvx@zb4m24sk6fcb>
 <axda7onp2nm5225zxm2bpt3jrwoe4jdduhvtrckhdkjanjkmpu@uvezafny5ilg>
Content-Language: en-US
From: Keke Li <keke.li@amlogic.com>
In-Reply-To: <axda7onp2nm5225zxm2bpt3jrwoe4jdduhvtrckhdkjanjkmpu@uvezafny5ilg>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SG2P153CA0049.APCP153.PROD.OUTLOOK.COM (2603:1096:4:c6::18)
 To TYSPR03MB8627.apcprd03.prod.outlook.com (2603:1096:405:8a::9)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYSPR03MB8627:EE_|SEZPR03MB8680:EE_
X-MS-Office365-Filtering-Correlation-Id: 9774f7a9-c7fe-4143-3cfa-08dcfd8ea254
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|7416014|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?YTBVVUR6T0hwN0EyNlhCZmQ5L2grTzVzOElkeUd6UW50ekNUT0hmVmRTU3I4?=
 =?utf-8?B?dUVtN1lKYkdpdm8zL3FyQVdjYktmZ1hpQlZkcUpSSUMvYThyVzVPcVlhaFQx?=
 =?utf-8?B?SldLc0U4T3ltNHgxaW1lRngxZ3hsNE0zVDNycGdMbUZLcWlSNFZWcTVjRGZF?=
 =?utf-8?B?L0E4QmdUU2paT2JTM0psOXczRlVWMG9FbFQ4ME0wZlhaTmRkZ3UwUGlhcUZv?=
 =?utf-8?B?dUNrbjdHdC9OYVorL20xLytmdFJYNXNQZDV4U3R0WC9yRjdnVU81ZEU0amVU?=
 =?utf-8?B?QjBjUkJYd2ZjSUxjNmNKblJRSXlpZ3lIWDh1ZkhJWFBjSmlBYUs4MHZkS2NL?=
 =?utf-8?B?ZzZycU1GalJua3cvclpicEV3UllTOThhclVBVk5WM3QxTjU5K1FsdmxEN3dn?=
 =?utf-8?B?b2QvY2tacElRVkpuVEhBaE04Y084N0t2dlk5dHZZREZGcFkvT09FK3EybUlp?=
 =?utf-8?B?ZnBRSTI3WU9nNTh5bitzbTdGTjd2VjluTkVNdGh1U1BVTklCa09rZStiZlpI?=
 =?utf-8?B?SlQwUFI4a2c1dElHem5vZkJVQ0ZKa2JwM2pNa3BzVzBDamhVMmQwSnJzOHVI?=
 =?utf-8?B?WTVBOTJoblp2cGlMSGdCOWZnU0JPRmx5YTNrTlRKdTlpL2dEYVJBWmRBSURI?=
 =?utf-8?B?Qk15RTBBQWhwdG9nMk9EQ0lrQWVPdzd3bVpBRHQwc2ttWmhTR1F1Z0tQM2xM?=
 =?utf-8?B?MkVEUzBBQVZmZVJyYVVZRVlIUDlFbHlXL0JLZi9MNCtYTGZIVFFOdCtkcTBl?=
 =?utf-8?B?RFRjK1VIK2k1cU9zeDFvUmpYT0RMRGRobTk3azBXR2tWcGdVUGFUSzNuT2Rs?=
 =?utf-8?B?SU1wS0R3ODJjTTZtTnlieE1iaTVJSG82UHMwRVlYRjNhcFJjTWlwdVNmTjhM?=
 =?utf-8?B?WTZZRTVWeUJmN1BkUFMyVlVBRnFObEZseUwxdE1ZOHNyNTFiRVJQQU5MMHhj?=
 =?utf-8?B?L3NNOUErWU93WVlKV285VjJ4ZDdvb004V2ZINFh2U1dQd2M3T01UMkhQbEVy?=
 =?utf-8?B?djJJUEJnUGM5SHpBOHBVQVpTdEsvTFdLL2NhaFQ1eGZkUHhEb3Bic3dZZytZ?=
 =?utf-8?B?bllCaHpyWG1GTFpma2VkMk5zekdQTThWU1hNSnFCa2E4K1hVbXo4bDBmSUxx?=
 =?utf-8?B?Mk9yRmZCelFRSTdJV3RaU3VkeHlhTDdjRFBiNSt0eFJSQmdCMUZjYk5GK0Jj?=
 =?utf-8?B?dS9zVjhHMTJnSnNmVUV3K0xnQmtRTUtKeVY4MW91Rmk4Z09VcFFGRVNSQmVr?=
 =?utf-8?B?TDlkVzBJREpoTklObjZ1RzRzN0RGRzRtSUwzaG1SOUV6RHc2bURBK3RZZVQ3?=
 =?utf-8?B?SkFnNlpmYlBJS1FISlB5RHdBUFhacUEvYmd3K0dOYy96QVhJMXBxS0NxMklm?=
 =?utf-8?B?M3dhVktLSzZLdmdIdG1NTGpSeHN5MlRVZGxyekw3VjZydDRwS25VYTAxQyt2?=
 =?utf-8?B?Ylp6TUxhT3pkdDBOODVDdFJwSjV1My9VcEhyQ1cydWRBT0k0N2ZSU1BqdmZw?=
 =?utf-8?B?d3ZjanI3WXNYcnRIQnlUTDlSUk91TjY3c3ZQb29scjhKWUtQS2VBL0RQdm1l?=
 =?utf-8?B?Wlk5Z1VTUVB5a2U0NjZSMCtwV3Q5NW9kSlU4blp6TVhWM2JYM3VRUTRrc2Nt?=
 =?utf-8?B?dXByYW9NWW1rdDhKSDJ5T0hFd0RVNktkMGxUSVVJZXpPRjN0VFhIQVgwYndZ?=
 =?utf-8?B?dEV5WkVRY1kwL2tMUktjeWxpVkhvcU1WTDF2U3JCUWh3cHd0YjVtTHpZc1dE?=
 =?utf-8?Q?tpZA7JrSvQ05/KKm4K0sL8ee2YT9CsNX8dg/vPc?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYSPR03MB8627.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?bVBpWHhIWk54Q0xEZGpzejFaeTF4MURHdHdXeStTakwyVlQvMW0xeDB6TzNp?=
 =?utf-8?B?TWhOc1Y0QkpYWGRsRXFEUGs4d3JEeDRUajkwVHNnZUZqMkh1RXI3NmUzaHh6?=
 =?utf-8?B?TjhITUsyOFpqK0hobEJra3FUTE1YSm45aCtLSFJJWjI4YmsycUpIMlJ5dmIv?=
 =?utf-8?B?UEJ0WStpQW1leVVVaFpVT0xVSk84TmZkSCtsTk5KMGgrdzA4NkVZRTFGQWhV?=
 =?utf-8?B?b3J4a01UbS95ZWxnNWJhVHd2Ym5ianBkQWpWcmRSLzlzcjJzMXpxVWx4aG81?=
 =?utf-8?B?NktJVlJzVzVFTG03WUhjUWhjd3U3aE1KaXlBcnJMcXdXdW5YTDlGelp6RTBh?=
 =?utf-8?B?UUdPZ3dFUlVHQy9hSlU2RzRGOWJVMEo5L2E4eWtQQ0hQMzRXTCtjWmwwdXRD?=
 =?utf-8?B?eFN4Wm8yMEdjK01pT04rcGVyMGh0eGlPckpZZUxFYlF6OW5sQnpCcWtWamZ1?=
 =?utf-8?B?eXdabTJwKzNpc1dacW9tdWpiN3JEdXNkMnFnaFlybFpZYS9OVnJMR21pcHBq?=
 =?utf-8?B?ZlMzWDZJSjE4RnRTcElZTzFKbHdPRWkydVRqQjI3d0gwNWpGcW5CdWw3c1BS?=
 =?utf-8?B?SnFIRU5xODd2dWdYMUhkcHJDakJ2OWtkZkUyMEJ4NlNQNUVJUGd6RU4yQXZi?=
 =?utf-8?B?SG9hZWxIOTB2bzdrTWVLVUl6K1BjY2lvYUVQUXlpeHExdktwTTFtS0tKd0hS?=
 =?utf-8?B?STFDNVpUVWExMUd0N1NDSW8vZzZEZ0VKRmFFOGhWMEYwVlFqQzRJTkNua3JM?=
 =?utf-8?B?dzhMYUNuSGViOGpsYUN0dFJEeFlLcnJiWkQyQmtydkZtdERDdFlpL0JlRVZZ?=
 =?utf-8?B?d3dBTGoyMVdBbHJrWkhReW51MHhtS3RrU3NlZ2FseWgzUDZCblJpbTFQbUFU?=
 =?utf-8?B?MEVjWVBRMFJEMUl6YUJveFZpNmx1SlU5ejZjOU82ZE1oUCszRjN5TS9LaHph?=
 =?utf-8?B?NDJRUEk4SEJabFNybnQ5RnRWUkZsS2pWSzIvVTJWSUhkTFFHcWJnanY3M09p?=
 =?utf-8?B?SDZiQkJENDhDcFVnTkZLeERsUjU1bnBMSE5lbGdLNUFpZmpiZ3YvS0hFdHhQ?=
 =?utf-8?B?Wm9td3RRZ0dKeUUvSktrOXRkTmhKL29DNmdFU1ZmVmZ6N1V3MjRZdDJBakJt?=
 =?utf-8?B?dEVXdnVScW9YbnVMSGxBWFdTUFUrclJ2aWVKWWZnd0hUSWNGVUoyZUN3OTZ5?=
 =?utf-8?B?cnVCdm9xS09PRldFdFg4N0xNNzg2bGtnY2RiaVFaV1VIV2g0UzVuYk1GSzR1?=
 =?utf-8?B?TkRmMlRLaytmdG1mRlJTdEQ3LzlST2dGUm9IR3gyQ3RqaTlOMzhXV3YvWjBk?=
 =?utf-8?B?bndkZVhjVFhiR0Voem43UUZyV1JYYnk4ZStZUHlOclRNbngrenk4WE1JdGty?=
 =?utf-8?B?dkRPZUE3akl2L1FhZjRVVVF6aDdHZnZ6OU9uKzlBcUpoZVBIY25lWWlQTVJ3?=
 =?utf-8?B?emdmcXdicWZDNk1yQWxZdmQ3WmZCUU5jYXpmZ01HY3VvT21uZ0pKY2syQmNZ?=
 =?utf-8?B?ajhFaHhJQmVCeWJ5U0V6S1MrQjJMU3YrMDBiclAzS0JxWFJLREwxZURRRGNC?=
 =?utf-8?B?UlFzbk5SbG5kaWVjVWpvT25PbTJDVHFQZnRPMHhtZGtsc2JjOW1kVTRkVDg2?=
 =?utf-8?B?eHBNWHZwdGdWZnhscmFwNm9NQkVXK2w1SlM4aEkra044N0hUdG1Hc05VbTlY?=
 =?utf-8?B?VGN2ckhhUWFORzRkN2NMM2o3OFRaYitFbURuSys5S0F4eUlKWXZyeEhRYjdK?=
 =?utf-8?B?bDJRdElscDdHWVE0b3FBZFM0YkQ0ZXFMWjdZby9YNUQxdGhkRE9kemtNOHlz?=
 =?utf-8?B?Q2lxQnBZalNBSTBRNzhQQy9ZM2Y3eURFenUvUFhpbVptMFhaNUh3U2drdzlC?=
 =?utf-8?B?VHdqRlVLVHlsVTA3ekpqbUJmR2NiUVJ3azBBYWkrVWdrblRXbHBKam9iYlAx?=
 =?utf-8?B?dlFjS2EzaGcvZHpPajdGOXk0TjhYUCtqT0J4MXlzR3JhSVhIRitNVU9iNVY5?=
 =?utf-8?B?d240M3FDMWk5SjczejVYMmt4T0RpQTJQNGJSWjFEYS9tU2d2dFlRV0haMHFw?=
 =?utf-8?B?dnJEbzNtbktBMGFNT3RQZlF5L0FTR2I3N2J4RGV5TzZFMVozc1pmcmxSSy9H?=
 =?utf-8?Q?PVnm6oimDnor825Br1VnLLIgD?=
X-OriginatorOrg: amlogic.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9774f7a9-c7fe-4143-3cfa-08dcfd8ea254
X-MS-Exchange-CrossTenant-AuthSource: TYSPR03MB8627.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2024 11:40:23.2082
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 0df2add9-25ca-4b3a-acb4-c99ddf0b1114
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Mk6eV9ij927rErXrRQi1E2GWLV4KKNudB0RdAIfVtGUVqjLa2UPDCqlDA/O87JvTmorc50SlbLy4h9FagKhaXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR03MB8680

Hi Jacopo

Thanks very much for your reply.

On 2024/11/5 18:06, Jacopo Mondi wrote:
> [You don't often get email from jacopo.mondi@ideasonboard.com. Learn why this is important at https://aka.ms/LearnAboutSenderIdentification ]
>
> [ EXTERNAL EMAIL ]
>
> Hi again Keke
>
> On Mon, Nov 04, 2024 at 06:50:11PM +0100, Jacopo Mondi wrote:
>> Hi Keke
>>     sorry for the late feedback, hope you're still interested in
>> upstreaming this driver
>>
>> On Wed, Sep 18, 2024 at 02:07:13PM +0800, Keke Li via B4 Relay wrote:
>>> From: Keke Li <keke.li@amlogic.com>
>>>
>>> This driver is used to receive mipi data from image sensor.
>>>
>>> Reviewed-by: Daniel Scally <dan.scally@ideasonboard.com>
>>> Signed-off-by: Keke Li <keke.li@amlogic.com>
>>> ---
>>>   MAINTAINERS                                        |   7 +
>>>   drivers/media/platform/amlogic/Kconfig             |   1 +
>>>   drivers/media/platform/amlogic/Makefile            |   2 +
>>>   .../media/platform/amlogic/c3-mipi-csi2/Kconfig    |  16 +
>>>   .../media/platform/amlogic/c3-mipi-csi2/Makefile   |   3 +
>>>   .../platform/amlogic/c3-mipi-csi2/c3-mipi-csi2.c   | 910 +++++++++++++++++++++
>>>   6 files changed, 939 insertions(+)
>>>
>>> diff --git a/MAINTAINERS b/MAINTAINERS
>>> index 2cdd7cacec86..9e75874a6e69 100644
>>> --- a/MAINTAINERS
>>> +++ b/MAINTAINERS
>>> @@ -1209,6 +1209,13 @@ F:   Documentation/devicetree/bindings/perf/amlogic,g12-ddr-pmu.yaml
>>>   F: drivers/perf/amlogic/
>>>   F: include/soc/amlogic/
>>>
>>> +AMLOGIC MIPI CSI2 DRIVER
>>> +M: Keke Li <keke.li@amlogic.com>
>>> +L: linux-media@vger.kernel.org
>>> +S: Maintained
>>> +F: Documentation/devicetree/bindings/media/amlogic,c3-mipi-csi2.yaml
>>> +F: drivers/media/platform/amlogic/c3-mipi-csi2/
>>> +
>>>   AMPHENOL CHIPCAP 2 HUMIDITY-TEMPERATURE IIO DRIVER
>>>   M: Javier Carrasco <javier.carrasco.cruz@gmail.com>
>>>   L: linux-hwmon@vger.kernel.org
>>> diff --git a/drivers/media/platform/amlogic/Kconfig b/drivers/media/platform/amlogic/Kconfig
>>> index 5014957404e9..b7c2de14848b 100644
>>> --- a/drivers/media/platform/amlogic/Kconfig
>>> +++ b/drivers/media/platform/amlogic/Kconfig
>>> @@ -2,4 +2,5 @@
>>>
>>>   comment "Amlogic media platform drivers"
>>>
>>> +source "drivers/media/platform/amlogic/c3-mipi-csi2/Kconfig"
>>>   source "drivers/media/platform/amlogic/meson-ge2d/Kconfig"
>>> diff --git a/drivers/media/platform/amlogic/Makefile b/drivers/media/platform/amlogic/Makefile
>>> index d3cdb8fa4ddb..4f571ce5d13e 100644
>>> --- a/drivers/media/platform/amlogic/Makefile
>>> +++ b/drivers/media/platform/amlogic/Makefile
>>> @@ -1,2 +1,4 @@
>>>   # SPDX-License-Identifier: GPL-2.0-only
>>> +
>>> +obj-y += c3-mipi-csi2/
>>>   obj-y += meson-ge2d/
>>> diff --git a/drivers/media/platform/amlogic/c3-mipi-csi2/Kconfig b/drivers/media/platform/amlogic/c3-mipi-csi2/Kconfig
>>> new file mode 100644
>>> index 000000000000..0d7b2e203273
>>> --- /dev/null
>>> +++ b/drivers/media/platform/amlogic/c3-mipi-csi2/Kconfig
>>> @@ -0,0 +1,16 @@
>>> +# SPDX-License-Identifier: GPL-2.0-only
>>> +
>>> +config VIDEO_C3_MIPI_CSI2
>>> +   tristate "Amlogic C3 MIPI CSI-2 receiver"
>>> +   depends on ARCH_MESON || COMPILE_TEST
>>> +   depends on VIDEO_DEV
>>> +   depends on OF
>>> +   select MEDIA_CONTROLLER
>>> +   select V4L2_FWNODE
>>> +   select VIDEO_V4L2_SUBDEV_API
>>> +   help
>>> +     Video4Linux2 driver for Amlogic C3 MIPI CSI-2 receiver.
>>> +     C3 MIPI CSI-2 receiver is used to receive MIPI data from
>>> +     image sensor.
>>> +
>>> +     To compile this driver as a module choose m here.
>>> diff --git a/drivers/media/platform/amlogic/c3-mipi-csi2/Makefile b/drivers/media/platform/amlogic/c3-mipi-csi2/Makefile
>>> new file mode 100644
>>> index 000000000000..cc08fc722bfd
>>> --- /dev/null
>>> +++ b/drivers/media/platform/amlogic/c3-mipi-csi2/Makefile
>>> @@ -0,0 +1,3 @@
>>> +# SPDX-License-Identifier: GPL-2.0-only
>>> +
>>> +obj-$(CONFIG_VIDEO_C3_MIPI_CSI2) += c3-mipi-csi2.o
>>> diff --git a/drivers/media/platform/amlogic/c3-mipi-csi2/c3-mipi-csi2.c b/drivers/media/platform/amlogic/c3-mipi-csi2/c3-mipi-csi2.c
>>> new file mode 100644
>>> index 000000000000..6ac60d5b26a8
>>> --- /dev/null
>>> +++ b/drivers/media/platform/amlogic/c3-mipi-csi2/c3-mipi-csi2.c
>>> @@ -0,0 +1,910 @@
>>> +// SPDX-License-Identifier: (GPL-2.0-only OR MIT)
>>> +/*
>>> + * Copyright (C) 2024 Amlogic, Inc. All rights reserved
>>> + */
>>> +
>>> +#include <linux/cleanup.h>
>>> +#include <linux/clk.h>
>>> +#include <linux/device.h>
>>> +#include <linux/module.h>
>>> +#include <linux/mutex.h>
>>> +#include <linux/platform_device.h>
>>> +#include <linux/pm_runtime.h>
>>> +
>>> +#include <media/v4l2-async.h>
>>> +#include <media/v4l2-common.h>
>>> +#include <media/v4l2-device.h>
>>> +#include <media/v4l2-fwnode.h>
>>> +#include <media/v4l2-mc.h>
>>> +#include <media/v4l2-subdev.h>
>>> +
>>> +/* C3 CSI-2 submodule definition */
>>> +enum {
>>> +   SUBMD_APHY,
>>> +   SUBMD_DPHY,
>>> +   SUBMD_HOST,
>>> +};
>>> +
>>> +#define CSI2_SUBMD_MASK             GENMASK(17, 16)
>>> +#define CSI2_SUBMD_SHIFT            16
>>> +#define CSI2_SUBMD(x)               (((x) & (CSI2_SUBMD_MASK)) >> (CSI2_SUBMD_SHIFT))
>>> +#define CSI2_REG_ADDR_MASK          GENMASK(15, 0)
>>> +#define CSI2_REG_ADDR(x)            ((x) & (CSI2_REG_ADDR_MASK))
>>> +#define CSI2_REG_A(x)               ((SUBMD_APHY << CSI2_SUBMD_SHIFT) | (x))
>>> +#define CSI2_REG_D(x)               ((SUBMD_DPHY << CSI2_SUBMD_SHIFT) | (x))
>>> +#define CSI2_REG_H(x)               ((SUBMD_HOST << CSI2_SUBMD_SHIFT) | (x))
>>> +
>>> +#define MIPI_CSI2_CLOCK_NUM_MAX     3
>>> +#define MIPI_CSI2_SUBDEV_NAME       "mipi-csi2"
>> Isn't the name too generic ? Should it report at least "c3-mipi-csi2"
>> ?
>>> +
>>> +/* C3 CSI-2 APHY register */
>>> +#define MIPI_CSI_2M_PHY2_CNTL1      CSI2_REG_A(0x44)
>>> +#define MIPI_APHY_NORMAL_CNTL1      0x3f425C00
>> All other hex addresses use small capitals for letters
>>
>>> +
>>> +#define MIPI_CSI_2M_PHY2_CNTL2      CSI2_REG_A(0x48)
>>> +#define MIPI_APHY_4LANES_CNTL2      0x033a0000
>>> +#define MIPI_APHY_NORMAL_CNTL2      0x333a0000
>>> +
>>> +#define MIPI_CSI_2M_PHY2_CNTL3      CSI2_REG_A(0x4c)
>>> +#define MIPI_APHY_2LANES_CNTL3      0x03800000
>>> +
>>> +/* C3 CSI-2 DPHY register */
>>> +#define MIPI_PHY_CTRL                  CSI2_REG_D(0x00)
>>> +#define MIPI_DPHY_LANES_ENABLE      0x0
>>> +
>>> +#define MIPI_PHY_CLK_LANE_CTRL         CSI2_REG_D(0x04)
>>> +#define MIPI_DPHY_CLK_CONTINUE_MODE 0x3d8
>>> +
>>> +#define MIPI_PHY_DATA_LANE_CTRL     CSI2_REG_D(0x08)
>>> +#define MIPI_DPHY_LANE_CTRL_DISABLE 0x0
>>> +
>>> +#define MIPI_PHY_DATA_LANE_CTRL1    CSI2_REG_D(0x0c)
>>> +#define MIPI_DPHY_INSERT_ERRESC     BIT(0)
>>> +#define MIPI_DPHY_HS_SYNC_CHECK     BIT(1)
>>> +#define MIPI_DPHY_FIVE_HS_PIPE      GENMASK(6, 2)
>>> +#define MIPI_DPHY_FIVE_HS_PIPE_SHIFT           2
>>> +#define MIPI_DPHY_DATA_PIPE_SELECT  GENMASK(9, 7)
>>> +#define MIPI_DPHY_DATA_PIPE_SELECT_SHIFT       7
>>> +
>>> +#define MIPI_PHY_TCLK_MISS     CSI2_REG_D(0x10)
>>> +#define MIPI_DPHY_CLK_MISS          0x9
>>> +
>>> +#define MIPI_PHY_TCLK_SETTLE           CSI2_REG_D(0x14)
>>> +#define MIPI_DPHY_CLK_SETTLE        0x1F
>>> +
>>> +#define MIPI_PHY_THS_EXIT      CSI2_REG_D(0x18)
>>> +#define MIPI_DPHY_HS_EXIT           0x8
>>> +
>>> +#define MIPI_PHY_THS_SKIP      CSI2_REG_D(0x1c)
>>> +#define MIPI_DPHY_HS_SKIP           0xa
>>> +
>>> +#define MIPI_PHY_THS_SETTLE            CSI2_REG_D(0x20)
>>> +#define MIPI_PHY_TINIT                 CSI2_REG_D(0x24)
>>> +#define MIPI_DPHY_INIT_CYCLES       0x4e20
>>> +
>>> +#define MIPI_PHY_TULPS_C       CSI2_REG_D(0x28)
>>> +#define MIPI_DPHY_ULPS_CHECK_CYCLES 0x1000
>>> +
>>> +#define MIPI_PHY_TULPS_S       CSI2_REG_D(0x2c)
>>> +#define MIPI_DPHY_ULPS_START_CYCLES 0x100
>>> +
>>> +#define MIPI_PHY_TMBIAS             CSI2_REG_D(0x30)
>>> +#define MIPI_DPHY_MBIAS_CYCLES      0x100
>>> +
>>> +#define MIPI_PHY_TLP_EN_W           CSI2_REG_D(0x34)
>>> +#define MIPI_DPHY_ULPS_STOP_CYCLES  0xC
>>> +
>>> +#define MIPI_PHY_TLPOK                 CSI2_REG_D(0x38)
>>> +#define MIPI_DPHY_POWER_UP_CYCLES   0x100
>>> +
>>> +#define MIPI_PHY_TWD_INIT      CSI2_REG_D(0x3c)
>>> +#define MIPI_DPHY_INIT_WATCH_DOG    0x400000
>>> +
>>> +#define MIPI_PHY_TWD_HS             CSI2_REG_D(0x40)
>>> +#define MIPI_DPHY_HS_WATCH_DOG      0x400000
>>> +
>>> +#define MIPI_PHY_MUX_CTRL0     CSI2_REG_D(0x284)
>>> +#define MIPI_DPHY_LANE3_SELECT      GENMASK(3, 0)
>>> +#define MIPI_DPHY_LANE2_SELECT      GENMASK(7, 4)
>>> +#define MIPI_DPHY_LANE2_SELECT_SHIFT           4
>>> +#define MIPI_DPHY_LANE1_SELECT      GENMASK(11, 8)
>>> +#define MIPI_DPHY_LANE1_SELECT_SHIFT            8
>>> +#define MIPI_DPHY_LANE0_SELECT      GENMASK(14, 12)
>>> +
>>> +#define MIPI_PHY_MUX_CTRL1     CSI2_REG_D(0x288)
>>> +#define MIPI_DPHY_LANE3_CTRL_SIGNAL GENMASK(3, 0)
>>> +#define MIPI_DPHY_LANE2_CTRL_SIGNAL GENMASK(7, 4)
>>> +#define MIPI_DPHY_LANE2_CTRL_SIGNAL_SHIFT      4
>>> +#define MIPI_DPHY_LANE1_CTRL_SIGNAL GENMASK(11, 8)
>>> +#define MIPI_DPHY_LANE1_CTRL_SIGNAL_SHIFT       8
>>> +#define MIPI_DPHY_LANE0_CTRL_SIGNAL GENMASK(14, 12)
>>> +#define MIPI_DPHY_CLK_SELECT        BIT(17)
>>> +
>>> +/* C3 CSI-2 HOST register */
>>> +#define CSI2_HOST_N_LANES           CSI2_REG_H(0x04)
>>> +#define CSI2_HOST_CSI2_RESETN       CSI2_REG_H(0x10)
>>> +#define CSI2_HOST_RESETN_DEFAULT    0x0
>>> +#define CSI2_HOST_RESETN_RST_VALUE  BIT(0)
>>> +
>>> +#define CSI2_HOST_MASK1             CSI2_REG_H(0x28)
>>> +#define CSI2_HOST_ERROR_MASK1       GENMASK(28, 0)
>>> +
>>> +#define MIPI_CSI2_MAX_WIDTH         2888
>>> +#define MIPI_CSI2_MIN_WIDTH         160
>>> +#define MIPI_CSI2_MAX_HEIGHT        2240
>>> +#define MIPI_CSI2_MIN_HEIGHT        120
>>> +#define MIPI_CSI2_DEFAULT_WIDTH     1920
>>> +#define MIPI_CSI2_DEFAULT_HEIGHT    1080
>>> +#define MIPI_CSI2_DEFAULT_FMT       MEDIA_BUS_FMT_SRGGB10_1X10
>>> +
>>> +/* C3 CSI-2 pad list */
>>> +enum {
>>> +   MIPI_CSI2_PAD_SINK,
>>> +   MIPI_CSI2_PAD_SRC,
>>> +   MIPI_CSI2_PAD_MAX
>>> +};
>>> +
>>> +/**
>> You don't need to kernel-doc in-driver types and functions.
>> Documentation is always good, but this won't be parsed by kernel-doc
>> (afaiu) so you should drop one * from /**
>>
>>> + * struct csi_info - MIPI CSI2 information
>>> + *
>>> + * @clocks: array of MIPI CSI2 clock names
>>> + * @clock_rates: array of MIPI CSI2 clock rate
>>> + * @clock_num: actual clock number
>>> + */
>>> +struct csi_info {
>>> +   char *clocks[MIPI_CSI2_CLOCK_NUM_MAX];
>>> +   u32 clock_rates[MIPI_CSI2_CLOCK_NUM_MAX];
>>> +   u32 clock_num;
>>> +};
>>> +
>>> +/**
>>> + * struct csi_device - MIPI CSI2 platform device
>>> + *
>>> + * @dev: pointer to the struct device
>>> + * @aphy: MIPI CSI2 aphy register address
>>> + * @dphy: MIPI CSI2 dphy register address
>>> + * @host: MIPI CSI2 host register address
>>> + * @clks: array of MIPI CSI2 clocks
>>> + * @sd: MIPI CSI2 sub-device
>>> + * @pads: MIPI CSI2 sub-device pads
>>> + * @notifier: notifier to register on the v4l2-async API
>>> + * @src_sd: source sub-device
>>> + * @bus: MIPI CSI2 bus information
>>> + * @src_sd_pad: source sub-device pad
>>> + * @lock: protect MIPI CSI2 device
>>> + * @info: version-specific MIPI CSI2 information
>>> + */
>>> +struct csi_device {
>>> +   struct device *dev;
>>> +   void __iomem *aphy;
>>> +   void __iomem *dphy;
>>> +   void __iomem *host;
>>> +   struct clk_bulk_data clks[MIPI_CSI2_CLOCK_NUM_MAX];
>>> +
>>> +   struct v4l2_subdev sd;
>>> +   struct media_pad pads[MIPI_CSI2_PAD_MAX];
>>> +   struct v4l2_async_notifier notifier;
>>> +   struct v4l2_subdev *src_sd;
>>> +   struct v4l2_mbus_config_mipi_csi2 bus;
>>> +
>>> +   u16 src_sd_pad;
>>> +   struct mutex lock; /* Protect csi device */
>> All the operations which receive a subdev_state are guaranteed to be locked
>> so you can avoid manually locking in enable/disable streams
>> (and drop #include cleanup.h if you don't use guards in any other
>> place)
>>
>>> +   const struct csi_info *info;
>>> +};
>>> +
>>> +static const u32 c3_mipi_csi_formats[] = {
>>> +   MEDIA_BUS_FMT_SBGGR10_1X10,
>>> +   MEDIA_BUS_FMT_SGBRG10_1X10,
>>> +   MEDIA_BUS_FMT_SGRBG10_1X10,
>>> +   MEDIA_BUS_FMT_SRGGB10_1X10,
>>> +   MEDIA_BUS_FMT_SBGGR12_1X12,
>>> +   MEDIA_BUS_FMT_SGBRG12_1X12,
>>> +   MEDIA_BUS_FMT_SGRBG12_1X12,
>>> +   MEDIA_BUS_FMT_SRGGB12_1X12,
>>> +};
>>> +
>>> +/* Hardware configuration */
>>> +
>>> +static void c3_mipi_csi_write(struct csi_device *csi, u32 reg, u32 val)
>>> +{
>>> +   void __iomem *addr;
>>> +
>>> +   switch (CSI2_SUBMD(reg)) {
>>> +   case SUBMD_APHY:
>>> +           addr = csi->aphy + CSI2_REG_ADDR(reg);
>>> +           break;
>>> +   case SUBMD_DPHY:
>>> +           addr = csi->dphy + CSI2_REG_ADDR(reg);
>>> +           break;
>>> +   case SUBMD_HOST:
>>> +           addr = csi->host + CSI2_REG_ADDR(reg);
>>> +           break;
>>> +   default:
>>> +           dev_err(csi->dev, "Invalid sub-module: %lu\n", CSI2_SUBMD(reg));
>>> +           return;
>>> +   }
>>> +
>>> +   writel(val, addr);
>>> +}
>>> +
>>> +static void c3_mipi_csi_update_bits(struct csi_device *csi, u32 reg,
>>> +                               u32 mask, u32 val)
>>> +{
>>> +   void __iomem *addr;
>>> +   u32 orig, tmp;
>>> +
>>> +   switch (CSI2_SUBMD(reg)) {
>>> +   case SUBMD_APHY:
>>> +           addr = csi->aphy + CSI2_REG_ADDR(reg);
>>> +           break;
>>> +   case SUBMD_DPHY:
>>> +           addr = csi->dphy + CSI2_REG_ADDR(reg);
>>> +           break;
>>> +   case SUBMD_HOST:
>>> +           addr = csi->host + CSI2_REG_ADDR(reg);
>>> +           break;
>>> +   default:
>>> +           dev_err(csi->dev, "Invalid sub-module: %lu\n", CSI2_SUBMD(reg));
>>> +           return;
>>> +   }
>> This is repeated in two functions and could be grouped to a common
>> place. Up to you
>>
>>> +
>>> +   orig = readl(addr);
>>> +   tmp = orig & ~mask;
>>> +   tmp |= val & mask;
>>> +
>>> +   if (tmp != orig)
>>> +           writel(tmp, addr);
>>> +}
>>> +
>>> +static void c3_mipi_csi_cfg_aphy(struct csi_device *csi, u32 lanes)
>>> +{
>>> +   c3_mipi_csi_write(csi, MIPI_CSI_2M_PHY2_CNTL1, MIPI_APHY_NORMAL_CNTL1);
>>> +
>>> +   if (lanes == 4)
>>> +           c3_mipi_csi_write(csi, MIPI_CSI_2M_PHY2_CNTL2, MIPI_APHY_4LANES_CNTL2);
>>> +   else
>>> +           c3_mipi_csi_write(csi, MIPI_CSI_2M_PHY2_CNTL2, MIPI_APHY_NORMAL_CNTL2);
>>> +
>>> +   if (lanes == 2)
>>> +           c3_mipi_csi_write(csi, MIPI_CSI_2M_PHY2_CNTL3, MIPI_APHY_2LANES_CNTL3);
>> The driver seems to only accept 2 or 4 lanes. What is
>> MIPI_APHY_NORMAL_CNTL2 for ?
>>
>>> +}
>>> +
>>> +static void c3_mipi_csi_2lanes_setting(struct csi_device *csi)
>>> +{
>>> +   /* Disable lane 2 and lane 3 */
>>> +   c3_mipi_csi_update_bits(csi, MIPI_PHY_MUX_CTRL0, MIPI_DPHY_LANE3_SELECT, 0xf);
>>> +   c3_mipi_csi_update_bits(csi, MIPI_PHY_MUX_CTRL0, MIPI_DPHY_LANE2_SELECT,
>>> +                           0xf << MIPI_DPHY_LANE2_SELECT_SHIFT);
>>> +   /* Select analog data lane 1 */
>>> +   c3_mipi_csi_update_bits(csi, MIPI_PHY_MUX_CTRL0, MIPI_DPHY_LANE1_SELECT,
>>> +                           0x1 << MIPI_DPHY_LANE1_SELECT_SHIFT);
>>> +   /* Select analog data lane 0 */
>>> +   c3_mipi_csi_update_bits(csi, MIPI_PHY_MUX_CTRL0, MIPI_DPHY_LANE0_SELECT, 0x0);
>>> +
>>> +   /* Disable lane 2 and lane 3 control signal */
>>> +   c3_mipi_csi_update_bits(csi, MIPI_PHY_MUX_CTRL1, MIPI_DPHY_LANE3_CTRL_SIGNAL, 0xf);
>>> +   c3_mipi_csi_update_bits(csi, MIPI_PHY_MUX_CTRL1, MIPI_DPHY_LANE2_CTRL_SIGNAL,
>>> +                           0xf << MIPI_DPHY_LANE2_CTRL_SIGNAL_SHIFT);
>>> +   /* Select lane 1 signal */
>>> +   c3_mipi_csi_update_bits(csi, MIPI_PHY_MUX_CTRL1, MIPI_DPHY_LANE1_CTRL_SIGNAL,
>>> +                           0x1 << MIPI_DPHY_LANE1_CTRL_SIGNAL_SHIFT);
>>> +   /* Select lane 0 signal */
>>> +   c3_mipi_csi_update_bits(csi, MIPI_PHY_MUX_CTRL1, MIPI_DPHY_LANE0_CTRL_SIGNAL, 0x0);
>>> +   /* Select input 0 as clock */
>>> +   c3_mipi_csi_update_bits(csi, MIPI_PHY_MUX_CTRL1, MIPI_DPHY_CLK_SELECT,
>>> +                           MIPI_DPHY_CLK_SELECT);
>>> +}
>>> +
>>> +static void c3_mipi_csi_4lanes_setting(struct csi_device *csi)
>>> +{
>>> +   /* Select analog data lane 3 */
>>> +   c3_mipi_csi_update_bits(csi, MIPI_PHY_MUX_CTRL0, MIPI_DPHY_LANE3_SELECT, 0x3);
>>> +   /* Select analog data lane 2 */
>>> +   c3_mipi_csi_update_bits(csi, MIPI_PHY_MUX_CTRL0, MIPI_DPHY_LANE2_SELECT,
>>> +                           0x2 << MIPI_DPHY_LANE2_SELECT_SHIFT);
>>> +   /* Select analog data lane 1 */
>>> +   c3_mipi_csi_update_bits(csi, MIPI_PHY_MUX_CTRL0, MIPI_DPHY_LANE1_SELECT,
>>> +                           0x1 << MIPI_DPHY_LANE1_SELECT_SHIFT);
>>> +   /* Select analog data lane 0 */
>>> +   c3_mipi_csi_update_bits(csi, MIPI_PHY_MUX_CTRL0, MIPI_DPHY_LANE0_SELECT, 0x0);
>>> +
>>> +   /* Select lane 3 signal */
>>> +   c3_mipi_csi_update_bits(csi, MIPI_PHY_MUX_CTRL1, MIPI_DPHY_LANE3_CTRL_SIGNAL, 0x3);
>>> +   /* Select lane 2 signal */
>>> +   c3_mipi_csi_update_bits(csi, MIPI_PHY_MUX_CTRL1, MIPI_DPHY_LANE2_CTRL_SIGNAL,
>>> +                           0x2 << MIPI_DPHY_LANE2_CTRL_SIGNAL_SHIFT);
>>> +   /* Select lane 1 signal */
>>> +   c3_mipi_csi_update_bits(csi, MIPI_PHY_MUX_CTRL1, MIPI_DPHY_LANE1_CTRL_SIGNAL,
>>> +                           0x1 << MIPI_DPHY_LANE1_CTRL_SIGNAL_SHIFT);
>>> +   /* Select lane 0 signal */
>>> +   c3_mipi_csi_update_bits(csi, MIPI_PHY_MUX_CTRL1, MIPI_DPHY_LANE0_CTRL_SIGNAL, 0x0);
>>> +   /* Select input 0 as clock */
>>> +   c3_mipi_csi_update_bits(csi, MIPI_PHY_MUX_CTRL1, MIPI_DPHY_CLK_SELECT,
>>> +                           MIPI_DPHY_CLK_SELECT);
>>> +}
>>> +
>>> +static void c3_mipi_csi_cfg_dphy(struct csi_device *csi, u32 lanes, s64 rate)
>>> +{
>>> +   u32 val;
>>> +   u32 settle;
>>> +
>>> +   /* Calculate the high speed settle */
>>> +   val = DIV_ROUND_UP(1000000000, rate);
>>> +   settle = (16 * val + 230) / 10;
>>> +
>>> +   c3_mipi_csi_write(csi, MIPI_PHY_CLK_LANE_CTRL, MIPI_DPHY_CLK_CONTINUE_MODE);
>>> +   c3_mipi_csi_write(csi, MIPI_PHY_TCLK_MISS, MIPI_DPHY_CLK_MISS);
>>> +   c3_mipi_csi_write(csi, MIPI_PHY_TCLK_SETTLE, MIPI_DPHY_CLK_SETTLE);
>>> +   c3_mipi_csi_write(csi, MIPI_PHY_THS_EXIT, MIPI_DPHY_HS_EXIT);
>>> +   c3_mipi_csi_write(csi, MIPI_PHY_THS_SKIP, MIPI_DPHY_HS_SKIP);
>>> +   c3_mipi_csi_write(csi, MIPI_PHY_THS_SETTLE, settle);
>>> +   c3_mipi_csi_write(csi, MIPI_PHY_TINIT, MIPI_DPHY_INIT_CYCLES);
>>> +   c3_mipi_csi_write(csi, MIPI_PHY_TMBIAS, MIPI_DPHY_MBIAS_CYCLES);
>>> +   c3_mipi_csi_write(csi, MIPI_PHY_TULPS_C, MIPI_DPHY_ULPS_CHECK_CYCLES);
>>> +   c3_mipi_csi_write(csi, MIPI_PHY_TULPS_S, MIPI_DPHY_ULPS_START_CYCLES);
>>> +   c3_mipi_csi_write(csi, MIPI_PHY_TLP_EN_W, MIPI_DPHY_ULPS_STOP_CYCLES);
>>> +   c3_mipi_csi_write(csi, MIPI_PHY_TLPOK, MIPI_DPHY_POWER_UP_CYCLES);
>>> +   c3_mipi_csi_write(csi, MIPI_PHY_TWD_INIT, MIPI_DPHY_INIT_WATCH_DOG);
>>> +   c3_mipi_csi_write(csi, MIPI_PHY_TWD_HS, MIPI_DPHY_HS_WATCH_DOG);
>>> +   c3_mipi_csi_write(csi, MIPI_PHY_DATA_LANE_CTRL, MIPI_DPHY_LANE_CTRL_DISABLE);
>>> +
>>> +   c3_mipi_csi_update_bits(csi, MIPI_PHY_DATA_LANE_CTRL1, MIPI_DPHY_INSERT_ERRESC,
>>> +                           MIPI_DPHY_INSERT_ERRESC);
>>> +   c3_mipi_csi_update_bits(csi, MIPI_PHY_DATA_LANE_CTRL1, MIPI_DPHY_HS_SYNC_CHECK,
>>> +                           MIPI_DPHY_HS_SYNC_CHECK);
>>> +   /*
>>> +    * Set 5 pipe lines to the same high speed.
>>> +    * Each bit for one pipe line.
>>> +    */
>>> +   c3_mipi_csi_update_bits(csi, MIPI_PHY_DATA_LANE_CTRL1, MIPI_DPHY_FIVE_HS_PIPE,
>>> +                           0x1f << MIPI_DPHY_FIVE_HS_PIPE_SHIFT);
>>> +
>>> +   /* Output data with pipe line data. */
>>> +   c3_mipi_csi_update_bits(csi, MIPI_PHY_DATA_LANE_CTRL1, MIPI_DPHY_DATA_PIPE_SELECT,
>>> +                           0x3 << MIPI_DPHY_DATA_PIPE_SELECT_SHIFT);
>> Would it be possible to provide a definition for these 0x1f and 0x3
>> values ?
>>
>>> +   if (lanes == 2)
>>> +           c3_mipi_csi_2lanes_setting(csi);
>>> +   else
>>> +           c3_mipi_csi_4lanes_setting(csi);
>>> +
>>> +   /* Enable digital data and clock lanes */
>>> +   c3_mipi_csi_write(csi, MIPI_PHY_CTRL, MIPI_DPHY_LANES_ENABLE);
>>> +}
>>> +
>>> +static void c3_mipi_csi_cfg_host(struct csi_device *csi, u32 lanes)
>>> +{
>>> +   /* Reset CSI-2 controller output */
>>> +   c3_mipi_csi_write(csi, CSI2_HOST_CSI2_RESETN, CSI2_HOST_RESETN_DEFAULT);
>>> +   c3_mipi_csi_write(csi, CSI2_HOST_CSI2_RESETN, CSI2_HOST_RESETN_RST_VALUE);
>>> +
>>> +   /* Set data lane number */
>>> +   c3_mipi_csi_write(csi, CSI2_HOST_N_LANES, lanes - 1);
>>> +
>>> +   /* Enable error mask */
>>> +   c3_mipi_csi_write(csi, CSI2_HOST_MASK1, CSI2_HOST_ERROR_MASK1);
>>> +}
>>> +
>>> +static int c3_mipi_csi_start_stream(struct csi_device *csi)
>>> +{
>>> +   s64 link_freq;
>>> +   s64 lane_rate;
>>> +
>>> +   link_freq = v4l2_get_link_freq(csi->src_sd->ctrl_handler, 0, 0);
>>> +   if (link_freq < 0) {
>>> +           dev_err(csi->dev, "Unable to obtain link frequency: %lld\n", link_freq);
>>> +           return link_freq;
>>> +   }
>>> +
>>> +   lane_rate = link_freq * 2;
>>> +   if (lane_rate > 1500000000)
>> I would dev_err here too
>>
>>> +           return -EINVAL;
>>> +
>>> +   c3_mipi_csi_cfg_aphy(csi, csi->bus.num_data_lanes);
>>> +   c3_mipi_csi_cfg_dphy(csi, csi->bus.num_data_lanes, lane_rate);
>>> +   c3_mipi_csi_cfg_host(csi, csi->bus.num_data_lanes);
>>> +
>>> +   return 0;
>>> +}
>>> +
>>> +static int c3_mipi_csi_enable_streams(struct v4l2_subdev *sd,
>>> +                                 struct v4l2_subdev_state *state,
>>> +                                 u32 pad, u64 streams_mask)
>>> +{
>>> +   struct csi_device *csi = v4l2_get_subdevdata(sd);
>>> +   u64 sink_streams;
>>> +   int ret;
>>> +
>>> +   guard(mutex)(&csi->lock);
>>> +
>>> +   pm_runtime_resume_and_get(csi->dev);
>>> +
>>> +   c3_mipi_csi_start_stream(csi);
>>> +
>>> +   sink_streams = v4l2_subdev_state_xlate_streams(state, pad,
>>> +                                                  MIPI_CSI2_PAD_SINK,
>>> +                                                  &streams_mask);
>>> +   ret = v4l2_subdev_enable_streams(csi->src_sd,
>>> +                                    csi->src_sd_pad,
>>> +                                    sink_streams);
>>> +   if (ret) {
>>> +           pm_runtime_put(csi->dev);
>>> +           return ret;
>>> +   }
>>> +
>>> +   return 0;
>>> +}
>>> +
>>> +static int c3_mipi_csi_disable_streams(struct v4l2_subdev *sd,
>>> +                                  struct v4l2_subdev_state *state,
>>> +                                  u32 pad, u64 streams_mask)
>>> +{
>>> +   struct csi_device *csi = v4l2_get_subdevdata(sd);
>>> +   u64 sink_streams;
>>> +   int ret;
>>> +
>>> +   guard(mutex)(&csi->lock);
>>> +
>>> +   sink_streams = v4l2_subdev_state_xlate_streams(state, pad,
>>> +                                                  MIPI_CSI2_PAD_SINK,
>>> +                                                  &streams_mask);
>>> +   ret = v4l2_subdev_disable_streams(csi->src_sd,
>>> +                                     csi->src_sd_pad,
>>> +                                     sink_streams);
>>> +   if (ret)
>>> +           dev_err(csi->dev, "Failed to disable %s\n", csi->src_sd->name);
>>> +
>>> +   pm_runtime_put(csi->dev);
>>> +
>>> +   return ret;
>>> +}
>>> +
>>> +static int c3_mipi_csi_cfg_routing(struct v4l2_subdev *sd,
>>> +                              struct v4l2_subdev_state *state,
>>> +                              struct v4l2_subdev_krouting *routing)
>>> +{
>>> +   static const struct v4l2_mbus_framefmt format = {
>>> +           .width = MIPI_CSI2_DEFAULT_WIDTH,
>>> +           .height = MIPI_CSI2_DEFAULT_HEIGHT,
>>> +           .code = MIPI_CSI2_DEFAULT_FMT,
>>> +           .field = V4L2_FIELD_NONE,
>>> +           .colorspace = V4L2_COLORSPACE_RAW,
>>> +           .ycbcr_enc = V4L2_YCBCR_ENC_601,
>>> +           .quantization = V4L2_QUANTIZATION_LIM_RANGE,
>> I presume for Raw Bayer data the quantization range is full ?
>>
>>> +           .xfer_func = V4L2_XFER_FUNC_NONE,
>>> +   };
>>> +   int ret;
>>> +
>>> +   ret = v4l2_subdev_routing_validate(sd, routing,
>>> +                                      V4L2_SUBDEV_ROUTING_ONLY_1_TO_1);
>>> +   if (ret)
>>> +           return ret;
>> You should validate that the provided routing table matches what the
>> driver supports, so only [0/0]->[1/0]
>>
>> Now that I've said so, if the routing table is not modifiable I wonder
>> if you should support set_routing() at all, or it could be left out
>> until you don't add support for more streams to the driver.
>>
>> After all this driver implements support for routing but doesn't set
>> the V4L2_SUBDEV_FL_STREAMS flag, so the operation is disallowed from
>> userspace for now.
>>
>>> +
>>> +   ret = v4l2_subdev_set_routing_with_fmt(sd, state, routing, &format);
>>> +   if (ret)
>>> +           return ret;
>>> +
>>> +   return 0;
>>> +}
>>> +
>>> +static int c3_mipi_csi_init_routing(struct v4l2_subdev *sd,
>>> +                               struct v4l2_subdev_state *state)
>>> +{
>>> +   struct v4l2_subdev_route routes;
>>> +   struct v4l2_subdev_krouting routing;
>>> +
>>> +   routes.sink_pad = MIPI_CSI2_PAD_SINK;
>>> +   routes.sink_stream = 0;
>>> +   routes.source_pad = MIPI_CSI2_PAD_SRC;
>>> +   routes.source_stream = 0;
>>> +   routes.flags = V4L2_SUBDEV_ROUTE_FL_ACTIVE;
>>> +
>>> +   routing.num_routes = 1;
>>> +   routing.routes = &routes;
>>> +
>>> +   return c3_mipi_csi_cfg_routing(sd, state, &routing);
>>> +}
>>> +
>>> +static int c3_mipi_csi_set_routing(struct v4l2_subdev *sd,
>>> +                              struct v4l2_subdev_state *state,
>>> +                              enum v4l2_subdev_format_whence which,
>>> +                              struct v4l2_subdev_krouting *routing)
>>> +{
>>> +   bool is_streaming = v4l2_subdev_is_streaming(sd);
>>> +
>>> +   if (which == V4L2_SUBDEV_FORMAT_ACTIVE && is_streaming)
>>> +           return -EBUSY;
>>> +
>>> +   return c3_mipi_csi_cfg_routing(sd, state, routing);
>>> +}
>>> +
>>> +static int c3_mipi_csi_enum_mbus_code(struct v4l2_subdev *sd,
>>> +                                 struct v4l2_subdev_state *state,
>>> +                                 struct v4l2_subdev_mbus_code_enum *code)
>>> +{
>>> +   switch (code->pad) {
>>> +   case MIPI_CSI2_PAD_SINK:
>>> +           if (code->index >= ARRAY_SIZE(c3_mipi_csi_formats))
>>> +                   return -EINVAL;
>>> +
>>> +           code->code = c3_mipi_csi_formats[code->index];
>>> +           break;
>>> +   case MIPI_CSI2_PAD_SRC:
>>> +           struct v4l2_mbus_framefmt *fmt;
>>> +
>>> +           if (code->index > 0)
>>> +                   return -EINVAL;
>>> +
>>> +           fmt = v4l2_subdev_state_get_format(state, code->pad);
>>> +           code->code = fmt->code;
>>> +           break;
>> I'm not sure if the V4L2 API specify that the formats on a pad should
>> be enumerated in full, regardless of the configuration, or like you're
>> doing here reflect the subdev configuration. I like what you have here
>> more, so unless someone screams I think it's fine.
>>
>>> +   default:
>>> +           return -EINVAL;
>>> +   }
>>> +
>>> +   return 0;
>>> +}
>>> +
>>> +static int c3_mipi_csi_set_fmt(struct v4l2_subdev *sd,
>>> +                          struct v4l2_subdev_state *state,
>>> +                          struct v4l2_subdev_format *format)
>>> +{
>>> +   struct v4l2_mbus_framefmt *fmt;
>>> +   unsigned int i;
>>> +
>>> +   if (format->pad != MIPI_CSI2_PAD_SINK)
>>> +           return v4l2_subdev_get_fmt(sd, state, format);
>>> +
>>> +   fmt = v4l2_subdev_state_get_format(state, format->pad);
>> Could you clarify what other streams you plan to support ? As you
>> support routing I presume you are preparing to capture
>> multiple streams of data like image + embedded data, or to support
>> sensors which sends data on different virtual channels ?
>>
>> How do you see this driver evolve ? Will it be augmented with an
>> additional source pad directed to a video device where to capture
>> embedded data from ?
>>
>> I'm wondering because if PAD_SINK become multiplexed, you won't be
>> allowed to set a format there. It only works now because you have a
>> single stream.
> Pardon me, I've been made to notice the stream API allows userspace to
> set a format on a [pad/stream] combination, so the above statement is
> not correct: you will still be allowed to set a format a multiplexed
> sink pad.
>
> Knowing however how you plan to expand this to support multiple
> streams is still something I would be interested in :)
>
> Thanks
>    j
>

Thanks for your suggestion.

But this MIPI CSI2 hardware module doesn't have the ability to separate
data , such as image + embedded data.

So there are no plans to support other streams.

>> Speaking of which, as you prepare to support multiple streams, I would
>> specify the stream number when calling v4l2_subdev_state_get_format().
>>
>>        fmt = v4l2_subdev_state_get_format(state, format->pad, 0);
>>
>>> +
>>> +   for (i = 0; i < ARRAY_SIZE(c3_mipi_csi_formats); i++)
>>> +           if (format->format.code == c3_mipi_csi_formats[i])
>>> +                   break;
>> nit: please use {} for the for loop
>>
>>> +
>>> +   if (i == ARRAY_SIZE(c3_mipi_csi_formats))
>>> +           fmt->code = c3_mipi_csi_formats[0];
>>> +   else
>>> +           fmt->code = c3_mipi_csi_formats[i];
>> You could set this in the for loop, before breaking.
>>
>>> +
>>> +   fmt->width = clamp_t(u32, format->format.width,
>>> +                        MIPI_CSI2_MIN_WIDTH, MIPI_CSI2_MAX_WIDTH);
>>> +   fmt->height = clamp_t(u32, format->format.height,
>>> +                         MIPI_CSI2_MIN_HEIGHT, MIPI_CSI2_MAX_HEIGHT);
>>> +
>> You should set the colorspace related information too, as you
>> initialize them, similar to what you do in init_state()
>>
>>> +   format->format = *fmt;
>>> +
>>> +   /* Synchronize the format to source pad */
>>> +   fmt = v4l2_subdev_state_get_format(state, MIPI_CSI2_PAD_SRC);
>>> +   *fmt = format->format;
>>> +
>>> +   return 0;
>>> +}
>>> +
>>> +static int c3_mipi_csi_init_state(struct v4l2_subdev *sd,
>>> +                             struct v4l2_subdev_state *state)
>>> +{
>>> +   struct v4l2_mbus_framefmt *sink_fmt;
>>> +   struct v4l2_mbus_framefmt *src_fmt;
>>> +
>>> +   sink_fmt = v4l2_subdev_state_get_format(state, MIPI_CSI2_PAD_SINK);
>>> +   src_fmt = v4l2_subdev_state_get_format(state, MIPI_CSI2_PAD_SRC);
>>> +
>>> +   sink_fmt->width = MIPI_CSI2_DEFAULT_WIDTH;
>>> +   sink_fmt->height = MIPI_CSI2_DEFAULT_HEIGHT;
>>> +   sink_fmt->field = V4L2_FIELD_NONE;
>>> +   sink_fmt->code = MIPI_CSI2_DEFAULT_FMT;
>>> +   sink_fmt->colorspace = V4L2_COLORSPACE_RAW;
>>> +   sink_fmt->xfer_func = V4L2_MAP_XFER_FUNC_DEFAULT(sink_fmt->colorspace);
>>> +   sink_fmt->ycbcr_enc = V4L2_MAP_YCBCR_ENC_DEFAULT(sink_fmt->colorspace);
>>> +   sink_fmt->quantization =
>>> +           V4L2_MAP_QUANTIZATION_DEFAULT(false, sink_fmt->colorspace,
>> If you could initialize them like you do above, with specific values
>> instead of using _DEFAULT() I think it's better.
>>
>>> +                                         sink_fmt->ycbcr_enc);
>>> +   *src_fmt = *sink_fmt;
>>> +
>>> +   return c3_mipi_csi_init_routing(sd, state);
>>> +}
>>> +
>>> +static const struct v4l2_subdev_pad_ops c3_mipi_csi_pad_ops = {
>>> +   .enum_mbus_code = c3_mipi_csi_enum_mbus_code,
>>> +   .get_fmt = v4l2_subdev_get_fmt,
>>> +   .set_fmt = c3_mipi_csi_set_fmt,
>>> +   .set_routing = c3_mipi_csi_set_routing,
>>> +   .enable_streams = c3_mipi_csi_enable_streams,
>>> +   .disable_streams = c3_mipi_csi_disable_streams,
>>> +};
>>> +
>>> +static const struct v4l2_subdev_ops c3_mipi_csi_subdev_ops = {
>>> +   .pad = &c3_mipi_csi_pad_ops,
>>> +};
>>> +
>>> +static const struct v4l2_subdev_internal_ops c3_mipi_csi_internal_ops = {
>>> +   .init_state = c3_mipi_csi_init_state,
>>> +};
>>> +
>>> +/* Media entity operations */
>>> +static const struct media_entity_operations c3_mipi_csi_entity_ops = {
>>> +   .link_validate = v4l2_subdev_link_validate,
>>> +};
>>> +
>>> +/* PM runtime */
>>> +
>>> +static int __maybe_unused c3_mipi_csi_runtime_suspend(struct device *dev)
>>> +{
>>> +   struct csi_device *csi = dev_get_drvdata(dev);
>>> +
>>> +   clk_bulk_disable_unprepare(csi->info->clock_num, csi->clks);
>>> +
>>> +   return 0;
>>> +}
>>> +
>>> +static int __maybe_unused c3_mipi_csi_runtime_resume(struct device *dev)
>>> +{
>>> +   struct csi_device *csi = dev_get_drvdata(dev);
>>> +
>>> +   return clk_bulk_prepare_enable(csi->info->clock_num, csi->clks);
>>> +}
>>> +
>>> +static const struct dev_pm_ops c3_mipi_csi_pm_ops = {
>>> +   SET_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend,
>>> +                           pm_runtime_force_resume)
>>> +   SET_RUNTIME_PM_OPS(c3_mipi_csi_runtime_suspend,
>>> +                      c3_mipi_csi_runtime_resume, NULL)
>> You could use SYSTEM_SLEEP_PM_OPS and RUNTIME_PM_OPS and set
>>
>>                .pm = pm_ptr(&c3_mipi_csi_pm_ops),
>>
>> to avoid __maybe_unused in the functions, up to you
>>
>>> +};
>>> +
>>> +/* Probe/remove & platform driver */
>>> +
>>> +static int c3_mipi_csi_subdev_init(struct csi_device *csi)
>>> +{
>>> +   struct v4l2_subdev *sd = &csi->sd;
>>> +   int ret;
>>> +
>>> +   v4l2_subdev_init(sd, &c3_mipi_csi_subdev_ops);
>>> +   sd->owner = THIS_MODULE;
>>> +   sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
>>> +   sd->internal_ops = &c3_mipi_csi_internal_ops;
>>> +   snprintf(sd->name, sizeof(sd->name), "%s", MIPI_CSI2_SUBDEV_NAME);
>>> +
>>> +   sd->entity.function = MEDIA_ENT_F_VID_IF_BRIDGE;
>>> +   sd->entity.ops = &c3_mipi_csi_entity_ops;
>>> +
>>> +   sd->dev = csi->dev;
>>> +   v4l2_set_subdevdata(sd, csi);
>>> +
>>> +   csi->pads[MIPI_CSI2_PAD_SINK].flags = MEDIA_PAD_FL_SINK;
>>> +   csi->pads[MIPI_CSI2_PAD_SRC].flags = MEDIA_PAD_FL_SOURCE;
>>> +   ret = media_entity_pads_init(&sd->entity, MIPI_CSI2_PAD_MAX, csi->pads);
>>> +   if (ret)
>>> +           return ret;
>>> +
>>> +   ret = v4l2_subdev_init_finalize(sd);
>>> +   if (ret) {
>>> +           media_entity_cleanup(&sd->entity);
>>> +           return ret;
>>> +   }
>>> +
>>> +   return 0;
>>> +}
>>> +
>>> +static void c3_mipi_csi_subdev_deinit(struct csi_device *csi)
>>> +{
>>> +   v4l2_subdev_cleanup(&csi->sd);
>>> +   media_entity_cleanup(&csi->sd.entity);
>>> +}
>>> +
>>> +/* Subdev notifier register */
>>> +static int c3_mipi_csi_notify_bound(struct v4l2_async_notifier *notifier,
>>> +                               struct v4l2_subdev *sd,
>>> +                               struct v4l2_async_connection *asc)
>>> +{
>>> +   struct csi_device *csi = v4l2_get_subdevdata(notifier->sd);
>>> +   struct media_pad *sink = &csi->sd.entity.pads[MIPI_CSI2_PAD_SINK];
>>> +   int ret;
>>> +
>>> +   ret = media_entity_get_fwnode_pad(&sd->entity,
>>> +                                     sd->fwnode, MEDIA_PAD_FL_SOURCE);
>>> +   if (ret < 0) {
>>> +           dev_err(csi->dev, "Failed to find pad for %s\n", sd->name);
>>> +           return ret;
>>> +   }
>>> +
>>> +   csi->src_sd = sd;
>>> +   csi->src_sd_pad = ret;
>>> +
>>> +   return v4l2_create_fwnode_links_to_pad(sd, sink, MEDIA_LNK_FL_ENABLED |
>>> +                                          MEDIA_LNK_FL_IMMUTABLE);
>>> +}
>>> +
>>> +static const struct v4l2_async_notifier_operations c3_mipi_csi_notify_ops = {
>>> +   .bound = c3_mipi_csi_notify_bound,
>>> +};
>>> +
>>> +static int c3_mipi_csi_async_register(struct csi_device *csi)
>>> +{
>>> +   struct v4l2_fwnode_endpoint vep = {
>>> +           .bus_type = V4L2_MBUS_CSI2_DPHY,
>>> +   };
>>> +   struct v4l2_async_connection *asc;
>>> +   struct fwnode_handle *ep;
>>> +   int ret;
>>> +
>>> +   v4l2_async_subdev_nf_init(&csi->notifier, &csi->sd);
>>> +
>>> +   ep = fwnode_graph_get_endpoint_by_id(dev_fwnode(csi->dev), 0, 0,
>>> +                                        FWNODE_GRAPH_ENDPOINT_NEXT);
>>> +   if (!ep)
>>> +           return -ENOTCONN;
>>> +
>>> +   ret = v4l2_fwnode_endpoint_parse(ep, &vep);
>>> +   if (ret)
>>> +           goto err_put_handle;
>>> +
>>> +   csi->bus = vep.bus.mipi_csi2;
>>> +   if (csi->bus.num_data_lanes != 2 && csi->bus.num_data_lanes != 4)
>>> +           goto err_put_handle;
>> I would dev_err() here
>>
>> Thanks
>>     j
>>
>>> +
>>> +   asc = v4l2_async_nf_add_fwnode_remote(&csi->notifier, ep,
>>> +                                         struct v4l2_async_connection);
>>> +   if (IS_ERR(asc)) {
>>> +           ret = PTR_ERR(asc);
>>> +           goto err_put_handle;
>>> +   }
>>> +
>>> +   csi->notifier.ops = &c3_mipi_csi_notify_ops;
>>> +   ret = v4l2_async_nf_register(&csi->notifier);
>>> +   if (ret)
>>> +           goto err_cleanup_nf;
>>> +
>>> +   ret = v4l2_async_register_subdev(&csi->sd);
>>> +   if (ret)
>>> +           goto err_unregister_nf;
>>> +
>>> +   fwnode_handle_put(ep);
>>> +
>>> +   return 0;
>>> +
>>> +err_unregister_nf:
>>> +   v4l2_async_nf_unregister(&csi->notifier);
>>> +err_cleanup_nf:
>>> +   v4l2_async_nf_cleanup(&csi->notifier);
>>> +err_put_handle:
>>> +   fwnode_handle_put(ep);
>>> +   return ret;
>>> +}
>>> +
>>> +static void c3_mipi_csi_async_unregister(struct csi_device *csi)
>>> +{
>>> +   v4l2_async_unregister_subdev(&csi->sd);
>>> +   v4l2_async_nf_unregister(&csi->notifier);
>>> +   v4l2_async_nf_cleanup(&csi->notifier);
>>> +}
>>> +
>>> +static int c3_mipi_csi_ioremap_resource(struct csi_device *csi)
>>> +{
>>> +   struct device *dev = csi->dev;
>>> +   struct platform_device *pdev = to_platform_device(dev);
>>> +
>>> +   csi->aphy = devm_platform_ioremap_resource_byname(pdev, "aphy");
>>> +   if (IS_ERR(csi->aphy))
>>> +           return PTR_ERR(csi->aphy);
>>> +
>>> +   csi->dphy = devm_platform_ioremap_resource_byname(pdev, "dphy");
>>> +   if (IS_ERR(csi->dphy))
>>> +           return PTR_ERR(csi->dphy);
>>> +
>>> +   csi->host = devm_platform_ioremap_resource_byname(pdev, "host");
>>> +   if (IS_ERR(csi->host))
>>> +           return PTR_ERR(csi->host);
>>> +
>>> +   return 0;
>>> +}
>>> +
>>> +static int c3_mipi_csi_configure_clocks(struct csi_device *csi)
>>> +{
>>> +   const struct csi_info *info = csi->info;
>>> +   int ret;
>>> +   u32 i;
>>> +
>>> +   for (i = 0; i < info->clock_num; i++)
>>> +           csi->clks[i].id = info->clocks[i];
>>> +
>>> +   ret = devm_clk_bulk_get(csi->dev, info->clock_num, csi->clks);
>>> +   if (ret)
>>> +           return ret;
>>> +
>>> +   for (i = 0; i < info->clock_num; i++) {
>>> +           if (!info->clock_rates[i])
>>> +                   continue;
>>> +           ret = clk_set_rate(csi->clks[i].clk, info->clock_rates[i]);
>>> +           if (ret) {
>>> +                   dev_err(csi->dev, "Failed to set %s rate %u\n", info->clocks[i],
>>> +                           info->clock_rates[i]);
>>> +                   return ret;
>>> +           }
>>> +   }
>>> +
>>> +   return 0;
>>> +}
>>> +
>>> +static int c3_mipi_csi_probe(struct platform_device *pdev)
>>> +{
>>> +   struct device *dev = &pdev->dev;
>>> +   struct csi_device *csi;
>>> +   int ret;
>>> +
>>> +   csi = devm_kzalloc(dev, sizeof(*csi), GFP_KERNEL);
>>> +   if (!csi)
>>> +           return -ENOMEM;
>>> +
>>> +   csi->info = of_device_get_match_data(dev);
>>> +   csi->dev = dev;
>>> +
>>> +   ret = c3_mipi_csi_ioremap_resource(csi);
>>> +   if (ret)
>>> +           return dev_err_probe(dev, ret, "Failed to ioremap resource\n");
>>> +
>>> +   ret = c3_mipi_csi_configure_clocks(csi);
>>> +   if (ret)
>>> +           return dev_err_probe(dev, ret, "Failed to configure clocks\n");
>>> +
>>> +   platform_set_drvdata(pdev, csi);
>>> +
>>> +   mutex_init(&csi->lock);
>>> +   pm_runtime_enable(dev);
>>> +
>>> +   ret = c3_mipi_csi_subdev_init(csi);
>>> +   if (ret)
>>> +           goto err_disable_runtime_pm;
>>> +
>>> +   ret = c3_mipi_csi_async_register(csi);
>>> +   if (ret)
>>> +           goto err_deinit_subdev;
>>> +
>>> +   return 0;
>>> +
>>> +err_deinit_subdev:
>>> +   c3_mipi_csi_subdev_deinit(csi);
>>> +err_disable_runtime_pm:
>>> +   pm_runtime_disable(dev);
>>> +   mutex_destroy(&csi->lock);
>>> +   return ret;
>>> +};
>>> +
>>> +static void c3_mipi_csi_remove(struct platform_device *pdev)
>>> +{
>>> +   struct csi_device *csi = platform_get_drvdata(pdev);
>>> +
>>> +   c3_mipi_csi_async_unregister(csi);
>>> +   c3_mipi_csi_subdev_deinit(csi);
>>> +
>>> +   pm_runtime_disable(&pdev->dev);
>>> +   mutex_destroy(&csi->lock);
>>> +};
>>> +
>>> +static const struct csi_info c3_mipi_csi_info = {
>>> +   .clocks = {"vapb", "phy0"},
>>> +   .clock_rates = {0, 200000000},
>>> +   .clock_num = 2
>>> +};
>>> +
>>> +static const struct of_device_id c3_mipi_csi_of_match[] = {
>>> +   { .compatible = "amlogic,c3-mipi-csi2",
>>> +     .data = &c3_mipi_csi_info,
>>> +   },
>>> +   { },
>>> +};
>>> +MODULE_DEVICE_TABLE(of, c3_mipi_csi_of_match);
>>> +
>>> +static struct platform_driver c3_mipi_csi_driver = {
>>> +   .probe = c3_mipi_csi_probe,
>>> +   .remove = c3_mipi_csi_remove,
>>> +   .driver = {
>>> +           .name = "c3-mipi-csi2",
>>> +           .of_match_table = c3_mipi_csi_of_match,
>>> +           .pm = &c3_mipi_csi_pm_ops,
>>> +   },
>>> +};
>>> +
>>> +module_platform_driver(c3_mipi_csi_driver);
>>> +
>>> +MODULE_AUTHOR("Keke Li <keke.li@amlogic.com>");
>>> +MODULE_DESCRIPTION("Amlogic C3 MIPI CSI-2 receiver");
>>> +MODULE_LICENSE("GPL");
>>>
>>> --
>>> 2.46.1
>>>
>>>
>>>

