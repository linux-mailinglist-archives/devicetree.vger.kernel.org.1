Return-Path: <devicetree+bounces-138499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0CBA10A3E
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 16:04:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 48FCF16542E
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 15:04:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1551A15623A;
	Tue, 14 Jan 2025 15:03:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b="UVW68OP6"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2050.outbound.protection.outlook.com [40.107.93.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C719149C57;
	Tue, 14 Jan 2025 15:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.93.50
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736867036; cv=fail; b=RnYJcBPgAuSiaMYM7LhEZOS2Io0dkuqxUKMajqEZFl6AfeUXWZ8YMEnuEc/HhF9HNguWDtqbfVeBUwiaWG2S9nya2ctfho/aZyA95gBpubfk19czQfOnJ308msVk9m2ZzArsPtv/71MzvF4wbwV5CGhnwhN9G8Y5Df6d1ybOacw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736867036; c=relaxed/simple;
	bh=E3Fd7yhNvhDx3LZ6Qw7b3L7viajg+W3jLox2ZsTHE/s=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=Tc5+4jo9HPJ+Bvz2jfL9mb8aZnKK6keOu7b2m8sI8mFgEQ9Fo/ZQWQyE94cfaclkD6rjuF3gqyxS36OkwQRKif0pIPrLEdULKTMT+YxnHydxWvewek5YH167a0FTbuoNYw3lC/JqD3MD0u1usbgp67R7yulrwRA9fo/MWGcAEXo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amd.com; spf=fail smtp.mailfrom=amd.com; dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b=UVW68OP6; arc=fail smtp.client-ip=40.107.93.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amd.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=S0apXxC5LZTzNbIvANJvVUWUgeA1bCzkZiYALoWr43Ng09VQQ2URE2oKNBvN8ivdQH9mfTM1ZYKrRHmkWvNX870NfDnFqrdQdGdQOP72IKmr8FrcbjZ9DuZa3PPVCzX81B4hlVXUtPaDiBDj/NH2M1qFrKVumfF8+pj2MJAAqgnvcDHiS4Jggs/KaC4Y1+2DRHTFMoUf+kte/z896f2iWSnDD75PQ+9Th1Qqp+5hl3TTJINSpwoDZ4V5HzsNo57aso/+/OQ2bu+qM4JMyrJDT/MqHKs97e0ci9syRWtWRb/V5/3Y+ukSaPOKpdXZ9ObJWY6fLkO1XV7S+/KmZYFq5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8M1y6myrDk+Wgs4dSNKlSh+LfowML4Me3X7MF8QijVA=;
 b=QQHAb8yOYTiLNT4vLDInIjk30EjJIl7sAtjAUxrU9NLi5ODHoO6Ur1q/Dl2n7sRxkmxmA/89+zuMsO4OdXiK4YOGn1fobQqDe1Elm3eAFaNDAwGbdVa7ptu2vRchc3WO+D9rPHuHo3u47zi6BgTO+s5N2M5MomB6VBq7yfzazTstk8pDF+9kAFnoOLu38ZQL40EOUKCjEnppRxqcvP69PCn+pHwFvSNOmmAlnalZhQPbH5m9Ok70OjkmnfoDi29UsSRE+0pUrWS45r9HDaNL8fZGiiua+czsDtBxlqOjLRD3qwgQAUefkMSav/++l45W2JRqezFCUNm3sFqkw9jejw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8M1y6myrDk+Wgs4dSNKlSh+LfowML4Me3X7MF8QijVA=;
 b=UVW68OP6sZcOUvR+2tpOvY+kL7koUMvpQrN7d5gRi7AVGBuMtAav3DolgS3KQCA7J26MwdlKSuc/gkzUNI1Ao6YXN6Aw/h7e8YxkwgfoZeDCVJ3FTNGmd5X8uOanrlvZ2woxmxLbLCAWRZLQmW7LpfE/4IFZ/cp81VBgQa9IAYg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from SJ2PR12MB8109.namprd12.prod.outlook.com (2603:10b6:a03:4f5::8)
 by PH7PR12MB7019.namprd12.prod.outlook.com (2603:10b6:510:1b9::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Tue, 14 Jan
 2025 15:03:52 +0000
Received: from SJ2PR12MB8109.namprd12.prod.outlook.com
 ([fe80::7f35:efe7:5e82:5e30]) by SJ2PR12MB8109.namprd12.prod.outlook.com
 ([fe80::7f35:efe7:5e82:5e30%3]) with mapi id 15.20.8335.017; Tue, 14 Jan 2025
 15:03:52 +0000
Message-ID: <d2bdfbfd-3721-407f-991e-566d48392add@amd.com>
Date: Tue, 14 Jan 2025 16:03:42 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] microblaze: migrate to the generic rule for built-in DTB
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org
References: <20241222094701.207592-1-masahiroy@kernel.org>
 <05f5eebf-8253-48dd-b3bb-b5bf07b04598@amd.com>
 <CAK7LNAQDj9x7hHeSO=5PHpswRm6ku3bb1RW9fVZw9N+xswPQrA@mail.gmail.com>
Content-Language: en-US
From: Michal Simek <michal.simek@amd.com>
Autocrypt: addr=michal.simek@amd.com; keydata=
 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
 3i3l5DA=
In-Reply-To: <CAK7LNAQDj9x7hHeSO=5PHpswRm6ku3bb1RW9fVZw9N+xswPQrA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: VI1PR10CA0115.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:803:28::44) To SJ2PR12MB8109.namprd12.prod.outlook.com
 (2603:10b6:a03:4f5::8)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ2PR12MB8109:EE_|PH7PR12MB7019:EE_
X-MS-Office365-Filtering-Correlation-Id: 93dfe8fd-669e-4e6b-5c9e-08dd34aca89f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?UHVteXN5aWZVQVhId0VKT2RXS0MxZFBFUHl1U0oyaERCbmpTMXRoUXY3MXhK?=
 =?utf-8?B?NGloMTVzTHB6bFZpWkY5aGo4TTVraGREVWEwZzU3MHpFb202eE52VDd4N0xh?=
 =?utf-8?B?bVpHemtFOXlOUi9jdXFSZVBBamZyY3JDWkZDV2dZcHEvaTl6M3JKc0ZZUU9o?=
 =?utf-8?B?dk9PcnZRaGs2cy8zMUEwY1RuYzVHTjRmTTQzb3N2am8ySFJKcDU0UlpNd1Fj?=
 =?utf-8?B?SWdaNHBnWWFyUnVIWjZRZDRhQllZcU1pTGg0QnY0b1dlM3pjTFhlQ2pjTVNv?=
 =?utf-8?B?Y045eG1sZEp4NC9WYzllVjQ5U3FaY1ZTVjJUVUFZcTBWc3MvbUNwVklOeTBM?=
 =?utf-8?B?aVFRaUlVL0dhRkhiQ0xjdmoxamRKTDRKVVkyUGRybzFJcWxpY1pmb1lxNTRS?=
 =?utf-8?B?czhYajZ0RzlDZHVMLzFtVlpUWnFZdDdCbkZWVFJlYkd1ajNBQmRSMjJyS3lS?=
 =?utf-8?B?V2lEYWZWUmE3amg4RXd4emJab1Y5S2pKRTNxNWNiakQ4WkJ5bWtLZ2JwdXc1?=
 =?utf-8?B?bWRzZHovd0RmSGdzd0FxTkx4TXZONWQ5QjV3RUYzbW41Q1VJQ0ptU0hTUVdL?=
 =?utf-8?B?WGFQM09EM0ZsZCtsSUVUTUtlYkU1dERaaDRKSnRDUXNBb3JiSjBtNmtpTjlt?=
 =?utf-8?B?RVBsZ2ZFVUc3dS9mUXBBTjFPcTJhdWFya0tyekZtckFKdlRSVTkvSml2YlVy?=
 =?utf-8?B?c1FjbnBobFBnRWRiZUYxUTNiQkZkV1hsNGFWWEM2UUt5VDV4b0tqV2dQREJB?=
 =?utf-8?B?WGhZc3Q3emlveCswdk1SNUNUdTFGd3o1dUhhbFA0b21SeUNqVmRjWG1pRjBr?=
 =?utf-8?B?NmpWd2ZWcDdybTRJVG9qMnR2S1hZVU02SkVOdXJ4bnF5andqSWY0bUtZdm1t?=
 =?utf-8?B?c2tmaXdnMFFodjhOSVc5bUthM1lQWEdhaUtHTzVKeHFndFMxSCtjazZGcUtM?=
 =?utf-8?B?a3ZDUnYwWlYxR0s4MWFiVU1TTnBtWHJ3b09kQjg5bGE4bUd5TE1zVHFWUmtk?=
 =?utf-8?B?enRoTDVoSmhmN3RGVnRMc1ZCblFvY2RBRDBDSXVxWWtaY2Q0dmhTSzB5dEpJ?=
 =?utf-8?B?TE5Id3BxSnI5dDVzQ1FtRE5TcW12Y0ZnRUF5ZGhtQ3dMcjVEV3AybDJVWnpu?=
 =?utf-8?B?U0lwcndGSy9KTDB3b2ZEVGNTVktEVHdOK1BTRUZ3NnBPV25CcjAzendXbUI0?=
 =?utf-8?B?TTFyazZCTlE3TnhXdzNzbTI2eEkya09ES0pTRWc2VU5XcmhEVTUzZmNGZFg2?=
 =?utf-8?B?cjlBQkVmUjMwcFVPbFhISXFYd291dEZ0bERxL2Q0NDZqeXBKbS9vamxGaWVF?=
 =?utf-8?B?Mk55WHBRN1htSmJES1NjMFkwSUNXMm05dFV1UURKcXpkRTdDdUJWVzJHOEk1?=
 =?utf-8?B?aXliYW1ZVGN2U1ZhaWdRWmNGcXNrVmYzK3RhalpMYVlqUjltSnRuMWViTWw4?=
 =?utf-8?B?NHVjRGlFc1BhbDgzem5ybjhyaytUT3VmKzJDL3ArTFNTZjdVY3VGeUVhdzJ4?=
 =?utf-8?B?UnBJc1c0bTlrRXZ3RmpLNGwvUkpUTC9UTU5teUhjQXhsQTZKWC9jdkQ1Z1JC?=
 =?utf-8?B?WERnQjF0VStwMUFEODlpS05yaGk3anhuVTN6azlxeUVmMk1QNDl1NXpFMFVV?=
 =?utf-8?B?Q3lUc1NrWUFQblZoQTdaMGc4dy9BQnh3c1VWbmFNTW1Nc0JZazJuM2RHMjlN?=
 =?utf-8?B?S3ltbndSYVp1Wm9YY2k1WmxyMm03VFp4MFJLK2xpcUZHY25nSWJMSnVJeHdh?=
 =?utf-8?B?MFZxeEExNnU4K3dmMEQ2ZWM3TVRIV3hjdExua2ExejRyRkFqeVk1aTg5ZWMy?=
 =?utf-8?B?Uyt2R0cwcG1TakdFQXhsa1ZadzFlK3ZNbVN5WkNaY0pMZGpmemtKZElIblB2?=
 =?utf-8?Q?WF/141zMQx98I?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ2PR12MB8109.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?V3I0MWYwaXZrMDVsc0dWRXhKQW5KcVpKd0NwRkx4Wnp5eVJPUTB3WVJKT2NQ?=
 =?utf-8?B?S0VaV1lQOThQbzJVVXhNeWJpcytKeTdiZU1ndFJWdkFPSGRKVDZleWxNenE3?=
 =?utf-8?B?UE9Dd2h3RTlVWTlnZktwdDZiejUxZmswZ1BaWWZab1RDekExV003WkpCOXU4?=
 =?utf-8?B?VnljRGxRa1ZkK3NTSjhkN3NUN25XR1pwa0MzaHBLRlkwQitXYjhNc09UQlZV?=
 =?utf-8?B?RDZ0WFZqanBqR3MzV3YzYUJDbVY1MjErQ21VWm9YQy84RUU1OStGRHozQm1h?=
 =?utf-8?B?MjAzNWhFakV4dTNCY1hZd2J3b0I5cDFTM3VNeWIxWXpUMHFEcWxKVm9qNTFG?=
 =?utf-8?B?NklpWGxoUTdiU1J3SlVvbkdmWXc0WmFYNUYxN21iSXB6MWF6ZHVjazlWWS9v?=
 =?utf-8?B?anMwRk40TXhLbjhkb2dZa3E4aUxEcURNZmQ1dVFROHc1ZUlpbm1iNFNLZmxK?=
 =?utf-8?B?c2xraGZWUWYrajhPc00vWmR1bUJ0WlRRbWdwcGkwUDFIUnFzTmdFYUhnMzQ2?=
 =?utf-8?B?WDJ6R0RDa2xHeDJHTjNpaDRpOVg4TFp1cWs4bG5xZWVncjhYNWwwcDJRcFJm?=
 =?utf-8?B?MkgwdXF5R1RuZnRheEEwUHlDbkhJazUraTAvUUQ2djB4Y05JZ0lYZWwxSFVX?=
 =?utf-8?B?ME9Fc0RHNEY0em0wWjBDd0o2blFpcC85eDgzbm54MFdSNTFFbDBUaXgvbFRZ?=
 =?utf-8?B?SGhEYS96d3JXcTBoSytYRGNJNUs4YUdkaTg1dTlRUGtWWHhIL2pYTnMrSnZz?=
 =?utf-8?B?clZ0WXhTYkc2amoxNHBDK2VTODRGTWJyaGRlLzcvaCtBVGQ4SE1vbEpTK0Ru?=
 =?utf-8?B?M0FmeXZjMHNDZDNUSEJoamJTOXRVK2NWWW5SOGRkK25DcVJ2MFBZUjVtWGdw?=
 =?utf-8?B?TktEWXpQaTRUeEE2b1MycXB0Sy9WcjFBTEZKeGRQdVQwMHpyTlVBVHMwS0d6?=
 =?utf-8?B?V2JXSDlsUHprWE5SZnduMk0yVTBhb0lLaTc1cTNWaXdMajNTTXc3VkVmMXVD?=
 =?utf-8?B?R05SLy9Mb3hpekptSXFjbG8rcHY0TXBKQy8zL2l4T05RbENvYnlDUHlkWERl?=
 =?utf-8?B?cGxMN1V0WkxWUEJGQUVKZ2F0d3RvYS9HZUdId1pnQ3ZyRFZxemtpWmhzaUhj?=
 =?utf-8?B?alRNNnRlOFVVUlRXaWlyRTNHanRlRHc1VkVwdmNtdVJjMjhXbDZNb084WXRw?=
 =?utf-8?B?YUh6am5Eb0NEZjNwMlNzVTNldDdUUGR3T3FSYXhtMTd6MzUyMzFQTHJFcC9W?=
 =?utf-8?B?Z2hWRlBHbVB4cXZwNmlXSXhLeXlxcVNxTmxoR3lPazNuS0NRK2o0UlBGQ2xV?=
 =?utf-8?B?TjhBd3B2UnlCdnBhbkdrbzJVUHJhTnFyd0ova3ZlWGl6djJQZjVHM3JmaEMy?=
 =?utf-8?B?eDVNSUkrbUZNaXA4dnZCSFErQUtnWGRpalN6RlBMVkJCdVV2NFZ6ak9Rdmd4?=
 =?utf-8?B?MFViMHJ1TnJCNGFhc3NicEJ1cFU2ck5EOUY0Y1kxQ2VrKzAwTnNUcEl0T1E5?=
 =?utf-8?B?RDhKK2dueE40MFZwbEs4OXF0NWpkODlwbThWVUhwY0ZkemRQL3NsTWQwSGV0?=
 =?utf-8?B?REhVYzAzL2dCUzZJSnhLOHBYU2Z5K1ZUMzJTY2dWbmFNaWZtSVpDS2lHcnVQ?=
 =?utf-8?B?V3ZreHNMTWVFeldtZDJabEQ0Zi9uVFFqanlkalAxaG9USHJWbnJaZTNSQWts?=
 =?utf-8?B?ckdmUHBxVUxSRWw5SW0xdEJ1YTRkeENld1RlcEtzVFVGMnpSbzBiSXlQOG9t?=
 =?utf-8?B?SWNmbWZLaTVvaE5XcGM1ZXplR0JYOGpUV2ZnRkgzRllrSEpHU3hjYkdla1ZU?=
 =?utf-8?B?VHZWVmhmUWgyTkRxT1dOWHdSVUIzN2o4RXZlNDhIL3BxMnNYK21BU3hwTmV0?=
 =?utf-8?B?VzluWkE1a2w4MGxUWk55emsxRlZ2SzZNd1pPUDBwVTJjcEVLL0NFNU9ObkZR?=
 =?utf-8?B?eHJCbTE3cTkvMGVuTC9HNFZUMVVmUHRzU0NEWFk2OEN0RHpnTkdrYllrNFky?=
 =?utf-8?B?a2V5cDA0L0hxQmpTL0ZEMkR1ZTIyYTZUWVlWRlN3OU04OVNabGdvUDQ4VXVt?=
 =?utf-8?B?Wk1KNUtNZXdSNDVYbUh5V1VJTWtnMXR5cU96ZjNQV1U4QTJPM0U0RW14a0dz?=
 =?utf-8?Q?NjzKQ++J+6I+C4neUEZwvcEur?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 93dfe8fd-669e-4e6b-5c9e-08dd34aca89f
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR12MB8109.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2025 15:03:52.7181
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yxhsH3SUIvR8ELRpJcUhlwH/0TTeYn9BnUemSLADATAt/w2JFgcytAyo+sNG2MXP
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB7019



On 1/14/25 03:41, Masahiro Yamada wrote:
> On Wed, Jan 8, 2025 at 1:37 AM Michal Simek <michal.simek@amd.com> wrote:
>>
>> Hi Masahiro,
>>
>> On 12/22/24 10:46, Masahiro Yamada wrote:
>>> Commit 654102df2ac2 ("kbuild: add generic support for built-in boot
>>> DTBs") introduced generic support for built-in DTBs.
>>>
>>> Select GENERIC_BUILTIN_DTB to use the generic rule.
>>>
>>> MicroBlaze is the only architecture that places the built-in DTB to its
>>> own section, __fdt_blob, rather than the standard location defined by
>>> the KERNEL_DTB() macro.
>>>
>>> For backward compatibility, arch/microblaze/boot/dts/system.dtb is still
>>> placed in the __fdt_blob section, and possibly overwritten by an externel
>>> DTB passed via the r7 register.
>>>
>>> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
>>> ---
>>>
>>>    arch/microblaze/Kbuild                | 1 -
>>>    arch/microblaze/Kconfig               | 5 +++++
>>>    arch/microblaze/boot/dts/Makefile     | 5 -----
>>>    arch/microblaze/boot/dts/linked_dtb.S | 2 --
>>>    arch/microblaze/kernel/vmlinux.lds.S  | 2 +-
>>>    5 files changed, 6 insertions(+), 9 deletions(-)
>>>    delete mode 100644 arch/microblaze/boot/dts/linked_dtb.S
>>>
>>> diff --git a/arch/microblaze/Kbuild b/arch/microblaze/Kbuild
>>> index 077a0b8e9615..70510389eb92 100644
>>> --- a/arch/microblaze/Kbuild
>>> +++ b/arch/microblaze/Kbuild
>>> @@ -2,7 +2,6 @@
>>>    obj-y                       += kernel/
>>>    obj-y                       += mm/
>>>    obj-$(CONFIG_PCI)   += pci/
>>> -obj-y                        += boot/dts/
>>>
>>>    # for cleaning
>>>    subdir- += boot
>>> diff --git a/arch/microblaze/Kconfig b/arch/microblaze/Kconfig
>>> index f18ec02ddeb2..4ed8ca89f0c9 100644
>>> --- a/arch/microblaze/Kconfig
>>> +++ b/arch/microblaze/Kconfig
>>> @@ -10,6 +10,7 @@ config MICROBLAZE
>>>        select ARCH_MIGHT_HAVE_PC_PARPORT
>>>        select ARCH_WANT_IPC_PARSE_VERSION
>>>        select BUILDTIME_TABLE_SORT
>>> +     select GENERIC_BUILTIN_DTB
>>>        select TIMER_OF
>>>        select CLONE_BACKWARDS3
>>>        select COMMON_CLK
>>> @@ -47,6 +48,10 @@ config MICROBLAZE
>>>        select TRACE_IRQFLAGS_SUPPORT
>>>        select GENERIC_IRQ_MULTI_HANDLER
>>>
>>> +config BUILTIN_DTB_NAME
>>> +     string
>>> +     default "system"
>>> +
>>>    # Endianness selection
>>>    choice
>>>        prompt "Endianness selection"
>>> diff --git a/arch/microblaze/boot/dts/Makefile b/arch/microblaze/boot/dts/Makefile
>>> index b84e2cbb20ee..87c1d25ff096 100644
>>> --- a/arch/microblaze/boot/dts/Makefile
>>> +++ b/arch/microblaze/boot/dts/Makefile
>>> @@ -4,11 +4,6 @@
>>>    dtb-y := system.dtb
>>>
>>>    ifneq ($(DTB),)
>>> -obj-y += linked_dtb.o
>>> -
>>> -# Ensure system.dtb exists
>>> -$(obj)/linked_dtb.o: $(obj)/system.dtb
>>> -
>>>    # Generate system.dtb from $(DTB).dtb
>>>    ifneq ($(DTB),system)
>>>    $(obj)/system.dtb: $(obj)/$(DTB).dtb
>>> diff --git a/arch/microblaze/boot/dts/linked_dtb.S b/arch/microblaze/boot/dts/linked_dtb.S
>>> deleted file mode 100644
>>> index 23345af3721f..000000000000
>>> --- a/arch/microblaze/boot/dts/linked_dtb.S
>>> +++ /dev/null
>>> @@ -1,2 +0,0 @@
>>> -.section __fdt_blob,"a"
>>> -.incbin "arch/microblaze/boot/dts/system.dtb"
>>> diff --git a/arch/microblaze/kernel/vmlinux.lds.S b/arch/microblaze/kernel/vmlinux.lds.S
>>> index ae50d3d04a7d..e86f9ca8e979 100644
>>> --- a/arch/microblaze/kernel/vmlinux.lds.S
>>> +++ b/arch/microblaze/kernel/vmlinux.lds.S
>>> @@ -47,7 +47,7 @@ SECTIONS {
>>>        . = ALIGN (8) ;
>>>        __fdt_blob : AT(ADDR(__fdt_blob) - LOAD_OFFSET) {
>>>                _fdt_start = . ;                /* place for fdt blob */
>>> -             *(__fdt_blob) ;                 /* Any link-placed DTB */
>>> +             *(.dtb.init.rodata) ;           /* Any link-placed DTB */
>>>                . = _fdt_start + 0x10000;       /* Pad up to 64kbyte */
>>>                _fdt_end = . ;
>>>        }
>>
>> This patch is better then previous one but still it is changing behavior of
>> build. When this patch is applied linux.bin contains dtb which is not the same
>> behavior as before (which was empty).
>> DTB should be filled when simpleImage.<dt> is built.
> 
> Why is it a problem?

Firstly that change is not described in commit message.
Second system.dtb is really old dtb more for demonstration purpose and nothing 
else and likely it is not working on any existing board.

> 
> Microblaze always keeps 64kbyte space in case
> an external DTB is passed from a boot-loader.
> 
> Even if the default system.dtb is placed there,
> nothing is wasted.

It is not about wasting of space. It is about information which none is going to 
use. That's why linux.bin has no dtb inside.


> One more thing, Microblaze is only the architecture
> that determines the built-in DTB by the command line.

yes and it has been done like this for many years without any complain about it. 
simpleImage has been taken from PPC in past.

> 
> I do not think it is a sensible way.
> 
>      $ make linux.bin simpleImage.foo
>        --> linux.bin also contains the builtin device tree
> 
>      $ make simpleImage.foo simpleImage.bar
>        --> does not work

yes because foo.dtb and bar.dtb are not in the Linux tree.


> All other architectures determinantes the built-in DTB
> by CONFIG option.

Microblaze is soft core and make no sense to start to push other DTSes to the 
Linux kernel because pretty much every design is unique. That's why only 
system.dts is there for demonstration purpose.

If users have multiple boards they can just add dts to the source code and build 
kernel. And linux.bin should be used with U-Boot ITBs where dtb is passed via 
register.

Thanks,
Michal






