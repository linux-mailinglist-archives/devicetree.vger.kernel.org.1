Return-Path: <devicetree+bounces-126349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E0519E12D6
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 06:20:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C68641616E9
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 05:20:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF3C21422D4;
	Tue,  3 Dec 2024 05:20:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=de.bosch.com header.i=@de.bosch.com header.b="GmLnS2PA"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (mail-dbaeur03on2059.outbound.protection.outlook.com [40.107.104.59])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8353D6FC3
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 05:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.104.59
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733203203; cv=fail; b=Yw2e6nV6zNgueGN9gzYKjqaLTDjTEZUU8T7Uvo7mWnR9qm1tkb2ldWLZfMP+qKfGTGMRT5pMzOJ9x6Tnay+VthN64UTztov+eL2rn+PMS2PBC6EF+9MrYtjFxSRholWXHOgmmBKghQT4CHtuW8yCnnMNQRSNDD5CAUKRFCbrQ6w=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733203203; c=relaxed/simple;
	bh=59m1h/V8WWaVKJSVM8UeRkmUjMC3E4z6rzyMhZq/VWM=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=jLVsNw49ucrqWzXPxJsxzy7QdGWQzHaQHZOxLWTRz4g4rLinqcBm6/C55rfzuFwo6EaRzOnHHN8O85MVx1xWOgJtzLKNBj6M57mLw1yYUrxwCMDhIgxf1MfvfQ3AAzl7Y5E70WRRoDb+xb3jT0ceF807aFwEWBhUI2NBV/Hs8rI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=de.bosch.com; spf=pass smtp.mailfrom=de.bosch.com; dkim=pass (2048-bit key) header.d=de.bosch.com header.i=@de.bosch.com header.b=GmLnS2PA; arc=fail smtp.client-ip=40.107.104.59
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=de.bosch.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=de.bosch.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GTwRUz8LtJQR+/pTmuXcDa6J2sLRgov0ptneu32LAXgpusnjxyjt3Um1/ODjmviK6AAFTEiZSPp3xZwXIIaZWSm6fmovfMOyiQWNm5YxXQzIDixJA9d0h4F7lXl3lGTmuPwPnYJqA0URnHhHYwEodMnTmurAwDWFxV/vffF2tr1rCnSvMRqk6g/5NSGFuXkhFbsypODVUL1w3uY3HdFSXfh6tNeWG5CJRwQqUhQnDL/Xcq+CRiNXFMCJ2rF5fEgFA3YVUlQKR1YqVG/Vycc0vMsIl33OhjOFbCb98x9bSbFuyLpyYMaVohABrEX5zoh7m/8+qE7UZyXOSwJtOF4ZCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3dlGZjBkKI+cTC70N37qio06vuiwtofdIi7hjlKbgJY=;
 b=Eomajm33e7kqSDideen3CPRBSB5GiDdEim8xwZIXOW43BEwLBdwapbOatWlmVN8Bc80ef0Gis5TdkasAkaqj7hsqAmRLWmxIxmtALkBrBY7lN/Jsvz43PxHJYlJ1X5Sl6lZ+5KsBHHZVJEdFNjdtY+Lab8p24/U6VFiVevBRoG+YSqnfaeKZiiH8VE9aOIATNU+yWJeZ4zigM+yyC3SeWHVwhQ1cMvke2Yall37YpsSI70iqeom/oRQ9nZjCqU1ip7YW13nbhDyc6czGSF6NPSJjRBGhqhvezaQRu1rvdAZa/iW0uJoq2Efbd49BHbio5i/TBt8RZw0Zn/Rb5hoqTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 139.15.153.206) smtp.rcpttodomain=kernel.org smtp.mailfrom=de.bosch.com;
 dmarc=pass (p=reject sp=none pct=100) action=none header.from=de.bosch.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=de.bosch.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3dlGZjBkKI+cTC70N37qio06vuiwtofdIi7hjlKbgJY=;
 b=GmLnS2PAUKj2BJOLr7SBH3W5ZzoGh1IVyHycBRSw/KzHGVyl5liaAUBbvgfnRxzDuDcKZbj+Gv/Mv1UD2R4hAonT7I5vVIXJoJkfIajOVhIVV8oix0d4T9m30emvqV8i2lv8EZM8sadbYUgFHSiMLFz/bNNsshjDJUhf4+zLTQI+UabWXnWt1upM7R0hRNnEz4Dx3dUROeRE4Mmu97XvGsP6wN+qnyn7tI6Y1SCX3RKxdwpf0KtExXwO33XfGEH8pB5Cs46wNdOHla9AAXDH+iOkfZoy9Gj+lWnwcW/y76Wk2qtWiFUo4kvcnXBBtwsT1Ahtf/Dg5BabUaWJNT++Zg==
Received: from AM0PR04CA0099.eurprd04.prod.outlook.com (2603:10a6:208:be::40)
 by AS4PR10MB5175.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:4c3::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.8; Tue, 3 Dec
 2024 05:19:56 +0000
Received: from AMS0EPF000001AD.eurprd05.prod.outlook.com
 (2603:10a6:208:be:cafe::54) by AM0PR04CA0099.outlook.office365.com
 (2603:10a6:208:be::40) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8207.17 via Frontend Transport; Tue,
 3 Dec 2024 05:19:56 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 139.15.153.206)
 smtp.mailfrom=de.bosch.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=de.bosch.com;
Received-SPF: Pass (protection.outlook.com: domain of de.bosch.com designates
 139.15.153.206 as permitted sender) receiver=protection.outlook.com;
 client-ip=139.15.153.206; helo=eop.bosch-org.com; pr=C
Received: from eop.bosch-org.com (139.15.153.206) by
 AMS0EPF000001AD.mail.protection.outlook.com (10.167.16.153) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8230.7 via Frontend Transport; Tue, 3 Dec 2024 05:19:56 +0000
Received: from SI-EXCAS2000.de.bosch.com (10.139.217.201) by eop.bosch-org.com
 (139.15.153.206) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.13; Tue, 3 Dec
 2024 06:19:53 +0100
Received: from [10.34.219.93] (10.139.217.196) by SI-EXCAS2000.de.bosch.com
 (10.139.217.201) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2507.43; Tue, 3 Dec
 2024 06:19:53 +0100
Message-ID: <6ee4d36c-7b94-4117-a3a0-0a0a56b20d41@de.bosch.com>
Date: Tue, 3 Dec 2024 06:19:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
Subject: Re: of_unittest: Missing #address & #size-cells warning
To: Rob Herring <robh@kernel.org>
CC: <devicetree@vger.kernel.org>
References: <f97dc442-b306-487a-9699-f38544bd7219@de.bosch.com>
 <CAL_Jsq+_VRqG1eMsfZuvftpQ8Eivwsqb0L2gvi4m3pQvdGwXRg@mail.gmail.com>
 <CAL_JsqLAG1G3nUXifWPFexs40iSOZSXBC-bE86oF6MtnUUYhGg@mail.gmail.com>
Content-Language: en-GB
From: Dirk Behme <dirk.behme@de.bosch.com>
In-Reply-To: <CAL_JsqLAG1G3nUXifWPFexs40iSOZSXBC-bE86oF6MtnUUYhGg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMS0EPF000001AD:EE_|AS4PR10MB5175:EE_
X-MS-Office365-Filtering-Correlation-Id: 6432e34c-7923-421d-fd1c-08dd135a2010
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|36860700013|376014|82310400026|7053199007;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?d0tmUFZ2anU3Vmx2K3Jrc1RjcGQ0UFdzQmR5U1JEZ0JPU0lUMkVLS2wxNGh6?=
 =?utf-8?B?VXBpSFUvUUZ3eHNNUnRoS201VGVVOFd1NHJSNURYVkRZbVA1bTUxc3VuS0Ry?=
 =?utf-8?B?Y2QyNUZVcllZQmFnd3AxUmdKS1RmRW9zeUZENHJ0OHNvaFNmK3Jka0hnd0FY?=
 =?utf-8?B?Mmhpbk9HV3gzYi9RdnUrYjBmd0Q0NUZ4NWdsYXVDTllFdVU3V2J2ZjRNM2xt?=
 =?utf-8?B?OGdWajUwNDA4TGxsUGNmcHI0VnBkQjA4Z09GYy9oS0trWnhrSkJnNUJUbXZ0?=
 =?utf-8?B?YXVJMHYrUmdZeHM5OXNyOGo0emZRZlhTRmx5Q285Z0U3ZDBnMXVJOHVRRDgy?=
 =?utf-8?B?bFdEd0M0WXEzdHVPM25jTDdaRm5Ub2hGSE1Gb3NCSFdRUWNUek8zbndRYXBK?=
 =?utf-8?B?bXJpcjBjYWJPT0ZhOEVkMm5zQ1JLNWV0MVZCdWxsOTVLaWxUdEg0bHA0YWNo?=
 =?utf-8?B?TmRSU05RWTFCUjRBUWR0L0EvRnFzNFhuSGtjL0VPWHRnUTRYdGlBOWp5Nktw?=
 =?utf-8?B?c1FqdnROdlNuSUFya200R1RoVytvbVcyWm5PNGdJUzh6ak5CelNTQjM2UVg5?=
 =?utf-8?B?VHpSaW1JcW5Qck5uRUZRc0ZLZnpxU21BcTYwMmZMWHhRdEZpUGU5YWwvdW1B?=
 =?utf-8?B?NnNKajdITWJVazdnd2hOMGFyR2VSSjl1enZVVG4zaUloREMveGcvU3d4dWZO?=
 =?utf-8?B?SkdjUEt1VlFJREswMmoyU2VPYWNSTERSTmc1amNJSGFVUDMwcllnTWtKOUFk?=
 =?utf-8?B?N09INDU3Sm9EMzZZQy9VbnpsM1J1cGZBQmpXN2hFOUNya2VTMkluU0pXVDVO?=
 =?utf-8?B?b1dLcnRwUWlKNklwUDFqeFIvbHpTd0kxeU1NTGh6Y3ZudGlrWVJRQkh6RHNP?=
 =?utf-8?B?bjZlYy9tNEFDKzhqSTNQZXUxMG1GbmlBMkk0amd4YVVZL2U4b012d24xSzND?=
 =?utf-8?B?em93cUpCdVRHalpMRXRJSlU4ajIzaTdRUE96WGE3STdhVlR3Z3c4UEpObWN5?=
 =?utf-8?B?U2w1VThBZlFNQ3dLNHdaR2l6Z1plOFpicmJsL1Nkb1RsUS9SL25CM01maEU0?=
 =?utf-8?B?L2U4d243ekJlaHkrdThBUnVUbHJpVzk0VjgxL0xEdG85eXV6RU9TZitZQXRV?=
 =?utf-8?B?ZmRkV2ljQ0Jpejk3S0wzZTFmYU1IeDV0ZUJ5cEgzRGh3czVhMTlpcXh1VnVy?=
 =?utf-8?B?dE1DUUxHVURvNmROekhONGp0Qi8wUkx6c0JLVklkRTlHbjl4M01HTjh1d3FC?=
 =?utf-8?B?T0FyT3hDUTlqUnBGNGpXOWx0MDNxQTN3OUkxaWpnSVByNzZQMHd4OG9TRE44?=
 =?utf-8?B?ejFoWGxHNk5rRnh2MU5Oa3Z1Wkt4M1lpK2hJYzEvUEM3WHd0NmxpdmV1b3RP?=
 =?utf-8?B?N1lEN2FtWHR3WXVQOHRGNWFmWUkzdlNKK2V6QnMwd0VTNFNyWWtXZ3M3WnFC?=
 =?utf-8?B?WVd5V0d4WmFsaU0xZzVWdzB2cjBtRzJPRVNROEF0bTA1aFpQU0JPcHFiK1Ar?=
 =?utf-8?B?T3BFVjRCRzJNemt3SVZHL3VIU2RpS2QvdnZuYlR2YTY0NFpXS3gyWHBsUE54?=
 =?utf-8?B?a0hhV1V6MTRzd0JXM1ByNGJsWU9Jb2FKdXR4ajhhQ253cjY2ZFhUSlZaeXQx?=
 =?utf-8?B?YVBURTlVMTBNUEtGWkprQkx1aUNjcFVuUFJNcTFNOVlzZHVObXFCbFpwK2R1?=
 =?utf-8?B?cWF0ME9KVkt4RURmZ2RWL3Z3aGw2VEFLaVNMMHlnYVN5bldUNDN5U0t5WHUz?=
 =?utf-8?B?KzFlVFgrc2ZBY0hKOHExaGJ6bGRXZ21zejFlMHJSR3RCVHlvQ1JhZlVHMzB3?=
 =?utf-8?B?endpV3RrMHl0QUpmVm5nNEs4QXp1WWV4cHREZlJ3VXlsbis4WjNoN21lSXB5?=
 =?utf-8?B?RG5GUjJDUXUvQ0JmdjRmUE50QWlJbTA3d25Rc3Iwam4rYVd6YXNUSWpSRDcx?=
 =?utf-8?Q?cjn2y8Xb7A4wceKKZ98herHeOjXn+y21?=
X-Forefront-Antispam-Report:
	CIP:139.15.153.206;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:eop.bosch-org.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(36860700013)(376014)(82310400026)(7053199007);DIR:OUT;SFP:1101;
X-OriginatorOrg: de.bosch.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Dec 2024 05:19:56.1822
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6432e34c-7923-421d-fd1c-08dd135a2010
X-MS-Exchange-CrossTenant-Id: 0ae51e19-07c8-4e4b-bb6d-648ee58410f4
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0ae51e19-07c8-4e4b-bb6d-648ee58410f4;Ip=[139.15.153.206];Helo=[eop.bosch-org.com]
X-MS-Exchange-CrossTenant-AuthSource:
	AMS0EPF000001AD.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR10MB5175

On 02/12/2024 16:13, Rob Herring wrote:
> On Mon, Dec 2, 2024 at 8:38 AM Rob Herring <robh@kernel.org> wrote:
>>
>> On Thu, Nov 28, 2024 at 1:04 AM Dirk Behme <dirk.behme@de.bosch.com> wrote:
>>>
>>> Hi,
>>>
>>> on recent Linus' master from today [1] I'm getting [2] running the
>>> of_unittests.
>>>
>>> Is this known and/or is there somewhere a fix?
>>
>> No and no. Thanks for the report, I'll work on a fix today.
> 
> Actually, the fix for this does already exist[1], but was needed for
> other reasons. So I'll apply it.


Yes, thanks, I confirm this fixes the issue for me.

Thanks!

Dirk


> Rob
> 
> [1] https://lore.kernel.org/all/20241202131522.142268-6-herve.codina@bootlin.com/
> 



