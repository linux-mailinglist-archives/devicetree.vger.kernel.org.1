Return-Path: <devicetree+bounces-5329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 727C97B5FF2
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 06:35:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 82EBBB2096A
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 04:35:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A350A3C;
	Tue,  3 Oct 2023 04:35:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE08F10F4
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 04:35:01 +0000 (UTC)
Received: from mx0b-0016f401.pphosted.com (mx0a-0016f401.pphosted.com [67.231.148.174])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 628DA9B;
	Mon,  2 Oct 2023 21:35:00 -0700 (PDT)
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
	by mx0a-0016f401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3933ikRU022252;
	Mon, 2 Oct 2023 21:34:44 -0700
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2170.outbound.protection.outlook.com [104.47.59.170])
	by mx0a-0016f401.pphosted.com (PPS) with ESMTPS id 3tgbas8520-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 02 Oct 2023 21:34:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bo0sHhxm4byya8y71oO5+V9Pj+/tjD7KmJEPvWjy+SNy57IsYw97lQnSMWMghAqJGfpELmJDSOfMLHx6c53BzVMhlIo0OdIacHCTcczNbfltb6Mdn5F3VTpCIZLhMC1hQmjB7KiJgFUQag1n2rWw5jgRKfPmdgIhdbcKM3i4Kb/LimM2uF1DQ0h/kYG4s5x+UQj4wA/X1CZ3DTd75ceDJcSRdiy6DqjcXscPTC9E7FFN3uxoX0G35dWgKN9wfVRGtVyyQSAsPK/EjjmwIBamWFDN7r9Hm8N57Hxxsv12CQzGN2yqvpDNT3UOfEmDlAuCfjVCpUm81R+dtpRIxBSqxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fPsMCh2j2zhT7AYbhqSsgVLHYK/ON75zQdrHd8z7oL0=;
 b=CohGOOoooyqUoA3bkVcsYh8z9G9wsLgcGEoh7HthA4a+gtc9RlIaBdNSpCWegeGLha7/u8Fj5xLDhenGaLc8XbOFlPLfvZueAZEj16HlQRNevIr93b8XePvoqcdmqlSiz45Yz/5oM9vj8WoT0Ag05razHXnzlk+PSc8tHl3kdTFFBb1wCKHDDO78mrtTLex2ZL3Q8uMF/ZZ9hBIi5Avv1j0FLsC15KyVHrhUHqxm6bwHStfz62w8NmzOJ9ErkNK5sNlvTcylgLT6z9uZw9RHuoi+A+Ac26UE4ZRbeMd1VYGn+7E0qswNBBX5xKKIohgAnQM1Z3niBWBJVZNDn9oW3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fPsMCh2j2zhT7AYbhqSsgVLHYK/ON75zQdrHd8z7oL0=;
 b=fu48+lJTV4EIE+yqYw+nYyZ4ou31U9ApRrUJseNGYlqbhNcJw3EWl6LWPhubOD7QJC03+XMXfKHxGgxq8HJ9icvcMW5lU7qntN4AM9cZuKZVH3rrLINTXQabUhUV4/9np4Ao03Zq6MKExIuLx1aJjaXN79jpRF7x8f0yaD3QaTo=
Received: from PH0PR18MB5002.namprd18.prod.outlook.com (2603:10b6:510:11d::12)
 by SJ2PR18MB5695.namprd18.prod.outlook.com (2603:10b6:a03:573::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.26; Tue, 3 Oct
 2023 04:34:37 +0000
Received: from PH0PR18MB5002.namprd18.prod.outlook.com
 ([fe80::2ace:2e4c:29ae:e924]) by PH0PR18MB5002.namprd18.prod.outlook.com
 ([fe80::2ace:2e4c:29ae:e924%6]) with mapi id 15.20.6838.016; Tue, 3 Oct 2023
 04:34:37 +0000
From: Linu Cherian <lcherian@marvell.com>
To: James Clark <james.clark@arm.com>
CC: "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>,
        "coresight@lists.linaro.org"
	<coresight@lists.linaro.org>,
        "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
        "conor+dt@kernel.org" <conor+dt@kernel.org>,
        "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>,
        Sunil Kovvuri Goutham <sgoutham@marvell.com>,
        George Cherian <gcherian@marvell.com>,
        Anil Kumar Reddy H
	<areddy3@marvell.com>,
        "suzuki.poulose@arm.com" <suzuki.poulose@arm.com>,
        "mike.leach@linaro.org" <mike.leach@linaro.org>,
        "leo.yan@linaro.org"
	<leo.yan@linaro.org>
Subject: RE: [EXT] Re: [PATCH 2/7] coresight: tmc-etr: Add support to use
 reserved trace memory
Thread-Topic: [EXT] Re: [PATCH 2/7] coresight: tmc-etr: Add support to use
 reserved trace memory
Thread-Index: AQHZ8to3H4wlN6sq0kSn6NuKwqqotbA2nYwAgADiZkA=
Date: Tue, 3 Oct 2023 04:34:36 +0000
Message-ID: 
 <PH0PR18MB5002662D5A023E762B8F4A1DCEC4A@PH0PR18MB5002.namprd18.prod.outlook.com>
References: <20230929133754.857678-1-lcherian@marvell.com>
 <20230929133754.857678-3-lcherian@marvell.com>
 <0f3ac22f-59c9-6e04-c824-dd486c20bf37@arm.com>
In-Reply-To: <0f3ac22f-59c9-6e04-c824-dd486c20bf37@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-rorf: true
x-dg-ref: 
 =?utf-8?B?UEcxbGRHRStQR0YwSUc1dFBTSmliMlI1TG5SNGRDSWdjRDBpWXpwY2RYTmxj?=
 =?utf-8?B?bk5jYkdOb1pYSnBZVzVjWVhCd1pHRjBZVnh5YjJGdGFXNW5YREE1WkRnME9X?=
 =?utf-8?B?STJMVE15WkRNdE5HRTBNQzA0TldWbExUWmlPRFJpWVRJNVpUTTFZbHh0YzJk?=
 =?utf-8?B?elhHMXpaeTB5Tm1ZMVpEWmxOaTAyTVdFMkxURXhaV1V0WWpabU15MHdNRGt4?=
 =?utf-8?B?T1dVek1XSTBNbVJjWVcxbExYUmxjM1JjTWpabU5XUTJaVGd0TmpGaE5pMHhN?=
 =?utf-8?B?V1ZsTFdJMlpqTXRNREE1TVRsbE16RmlOREprWW05a2VTNTBlSFFpSUhONlBT?=
 =?utf-8?B?STBPVEUwSWlCMFBTSXhNek0wTURjNE1USTNOVEV6TXprME5EZ2lJR2c5SWxJ?=
 =?utf-8?B?NWFHczRTRWhqVDA4clJFMVhTak5zV2xGRldYQTRZbUVyTUQwaUlHbGtQU0lp?=
 =?utf-8?B?SUdKc1BTSXdJaUJpYnowaU1TSWdZMms5SW1OQlFVRkJSVkpJVlRGU1UxSlZS?=
 =?utf-8?B?azVEWjFWQlFVZEpWMEZCUXpSTU1EZHdjM1pZV2tGV2FqZG9MMDVvVUhobVVs?=
 =?utf-8?B?ZFFkVWc0TWtVdlJqbEZXa0ZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRklRVUZCUVVKMVJIZEJRVE5uT0VGQlNWRkhRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGRlFVRlJSVUpCUVVGQk9WSmxia3gzUTBGQlVVRkJRVUZCUVVGQlFVRkJT?=
 =?utf-8?B?alJCUVVGQ2FFRkhVVUZhUVVKNVFVZFZRV04zUW5wQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVWQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlowRkJRVUZCUVc1blFVRkJSMDFCWkZGQ2VrRklVVUZpZDBKMFFVWTRRV05C?=
 =?utf-8?B?UW14QlNFbEJZM2RDZGtGSE5FRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRV2RCUVVGQlFVRkJRVUZCUVVGQlFVRlJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRMEZCUVVGQlFVTmxRVUZCUVZsM1FqRkJTRTFCWkVGQ2Rr?=
 =?utf-8?B?RkhNRUZZZDBKM1FVZG5RV0ozUW5WQlIxVkJZbWRDTVVGSE1FRlpaMEpzUVVo?=
 =?utf-8?B?SlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZDUVVGQlFVRkJRVUZCUVVsQlFVRkJRVUZLTkVGQlFVSnFRVWhW?=
 =?utf-8?B?UVdOM1FqQkJSemhCWWxGQ1prRklUVUZqZDBKMVFVWTRRVnBCUW1oQlNFMUJZ?=
 =?utf-8?B?VUZDWmtGSVdVRk5RVUY1UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?Q?FBQUFB?=
x-dg-refone: 
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlJVRkJRVUZCUVVGQlFVRm5RVUZCUVVGQmJtZEJRVUZI?=
 =?utf-8?B?VFVGa1VVSjZRVWhSUVdKM1FuUkJSamhCWTNkQ2VrRkhORUZZZDBKeVFVZFZR?=
 =?utf-8?B?V1ZSUWpOQlJ6aEJZMmRDYTBGSVRVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVkZCUVVGQlFVRkJRVUZEUVVGQlFV?=
 =?utf-8?B?RkJRMlZCUVVGQldYZENNVUZJVFVGa1FVSjJRVWN3UVZoM1FucEJTRTFCWW1k?=
 =?utf-8?B?Q1prRkhORUZpZDBKclFVZFZRV0pCUW5CQlJ6QkJZVkZDTUVGSFZVRmpaMEpt?=
 =?utf-8?B?UVVoWlFVMUJRWGxCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVKQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlNVRkJRVUZCUVVvMFFVRkJRbXBCU0ZWQlkzZENNRUZIT0VGaVVVSm1R?=
 =?utf-8?B?VWhOUVdOM1FuVkJSamhCWTNkQ2QwRkhSVUZaZDBKc1FVWTRRV1JuUVhkQlJF?=
 =?utf-8?B?bEJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkZRVUZCUVVGQlFVRkJRV2RCUVVGQlFVRnVaMEZCUVVkUlFXSkJRbmRCUmpo?=
 =?utf-8?B?QlkzZENja0ZJYTBGalFVSnNRVVk0UVZsM1FtOUJSMFZCWkVGQ1prRkhNRUZh?=
 =?utf-8?B?VVVKNlFVaE5RVmxSUW01QlIxVkJXSGRDTWtGRVFVRk5aMEZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCVVVGQlFVRkJRVUZCUVVOQlFVRkJRVUZEWlVGQlFVRmFR?=
 =?utf-8?B?VUp6UVVoQlFWaDNRbnBCUjNkQldWRkNha0ZIYzBGWWQwSnFRVWRuUVZsUlFq?=
 =?utf-8?B?QkJSamhCWWxGQ2JFRklUVUZqZDBKb1FVZGpRVnBSUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?Q?FBQUFB?=
x-dg-reftwo: 
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFrRkJRVUZCUVVGQlFVRkpRVUZCUVVGQlNqUkJR?=
 =?utf-8?B?VUZDYTBGSGQwRmpRVUptUVVoUlFWcFJRbWhCUnpCQlkzZENaa0ZIT0VGaVow?=
 =?utf-8?B?SnNRVWRSUVdOblFuQkJTRmxCV2xGQ1prRkhXVUZoVVVKelFVZFZRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVVZCUVVGQlFVRkJRVUZCWjBG?=
 =?utf-8?B?QlFVRkJRVzVuUVVGQlIxVkJZbEZDYUVGSGEwRmlRVUptUVVkRlFWcEJRbXRC?=
 =?utf-8?B?U0VsQldsRkNla0ZJVFVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlJWRkJRVUZCUVVGQlFVRkJRVUZCUVVGUlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlEwRkJRVUZCUVVObFFVRkJRV0pSUW1oQlNFbEJaR2RDYkVGSGQw?=
 =?utf-8?B?RllkMEozUVVoSlFXSjNRbkZCUjFWQldYZENNRUZHT0VGaVowSm9RVWN3UVZw?=
 =?utf-8?B?UlFucEJSamhCV1hkQ2RrRkhORUZhWjBKd1FVZFJRVnBSUW5WQlNGRkJZVkZD?=
 =?utf-8?B?YUVGSGQwRllkMEpvUVVkM1FXSjNRblZCUjFWQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVVpCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkNRVUZCUVVGQlFVRkJRVWxCUVVGQlFVRktORUZCUVVKMFFVZEZRV05u?=
 =?utf-8?B?UWpKQlIxVkJZa0ZDWmtGSVFVRmpaMEoyUVVkdlFWcFJRbXBCU0ZGQldIZENk?=
 =?utf-8?B?VUZIUlVGaVVVSnNRVWhOUVZoM1FubEJSMVZCWTNkQ01FRklTVUZoVVVKcVFV?=
 =?utf-8?B?aFJRVnBSUW10QlJqaEJXVkZDYzBGSE9FRmlaMEpzUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUlVGQlFVRkJRVUZCUVVGblFVRkJRVUZCYm1kQlFV?=
 =?utf-8?B?RkhNRUZaVVVKNVFVaFpRVnBSUW5OQlJqaEJZMEZDZVVGSE9FRmhaMEpzUVVk?=
 =?utf-8?B?TlFXUkJRbVpCUnpSQldWRkNkRUZIVlVGamQwSm1RVWhKUVZwUlFucEJTRkZC?=
 =?utf-8?B?WTJkQ2NFRkhUVUZrUVVKc1FVZFJRVmgzUW05QlIxVkJaVUZDYWtGSE9FRmFR?=
 =?utf-8?B?VUpzUVVoTlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFWRkJRVUZCUVVGQlFVRkRRVUZC?=
 =?utf-8?B?UVVGQlEyVkJRVUZCWWxGQ2FFRklTVUZrWjBKc1FVZDNRV0pCUW1aQlIwVkJZ?=
 =?utf-8?B?MmRDZEVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?Q?FBQUFB?=
x-dg-refthree: 
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUpCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?U1VGQlFVRkJRVW8wUVVGQlFuUkJSMFZCWTJkQ01rRkhWVUZpUVVKelFVWTRR?=
 =?utf-8?B?VnAzUW5aQlJ6aEJXbmRDYzBGSFZVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGRlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFXZEJRVUZCUVVGdVowRkJRVWN3UVZsUlFubEJTRmxCV2xG?=
 =?utf-8?B?Q2MwRkhkMEZZZDBKM1FVaEpRV0ozUW5GQlIxVkJXWGRDTUVGR09FRlpkMEoy?=
 =?utf-8?B?UVVkUlFWcFJRbnBCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJVVUZCUVVGQlFVRkJRVU5CUVVGQlFVRkRaVUZCUVVGaVVVSm9R?=
 =?utf-8?B?VWhKUVdSblFteEJSM2RCWWtGQ1prRklRVUZqWjBKMlFVZHZRVnBSUW1wQlNG?=
 =?utf-8?B?RkJXSGRDYWtGSE9FRmFRVUpzUVVoTlFWaDNRbXRCUjJ0QldYZENNRUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUWtGQlFVRkJRVUZCUVVGSlFVRkJRVUZCU2pS?=
 =?utf-8?B?QlFVRkNkRUZIUlVGalowSXlRVWRWUVdKQlFuTkJSamhCWTBGQ2VVRkhPRUZo?=
 =?utf-8?B?WjBKc1FVZE5RV1JCUW1aQlJ6UkJXVkZDZEVGSFZVRmpkMEptUVVkTlFXSjNR?=
 =?utf-8?B?blZCUjFsQllWRkNhMEZIVlVGaVowSXdRVWRyUVZsUlFuTkJSamhCWWxGQ2FF?=
 =?utf-8?B?RklTVUZrWjBKc1FVZDNRV0pCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVVkJRVUZCUVVGQlFVRkJa?=
 =?utf-8?B?MEZCUVVGQlFXNW5RVUZCUnpCQldWRkNlVUZJV1VGYVVVSnpRVWQzUVZoM1Fu?=
 =?utf-8?B?ZEJTRWxCWW5kQ2NVRkhWVUZaZDBJd1FVWTRRV0puUW1oQlJ6QkJXbEZDZWtG?=
 =?utf-8?B?R09FRlpkMEoyUVVjMFFWcG5RbkJCUjFGQldsRkNkVUZJVVVGaFVVSm9RVWQz?=
 =?utf-8?B?UVZoM1FuUkJSMFZCWTJkQ01rRkhWVUZpUVVKelFVWTRRV0ozUW5sQlJqaEJX?=
 =?utf-8?B?VkZDZVVGSE1FRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?Q?FBQUFB?=
x-dg-reffour: 
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZSUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUTBGQlFVRkJRVU5sUVVGQlFXSlJRbWhCU0VsQlpHZENiRUZIZDBGaVFV?=
 =?utf-8?B?Sm1RVWhCUVdOblFuWkJSMjlCV2xGQ2FrRklVVUZZZDBKMVFVZEZRV0pSUW14?=
 =?utf-8?B?QlNFMUJXSGRDYWtGSE9FRmlaMEp0UVVkclFWcEJRbXhCUnpSQlpFRkNjRUZI?=
 =?utf-8?B?UlVGaVFVSm1RVWN3UVZsUlFubEJTRmxCV2xGQ2MwRkhkMEZZZDBKMlFVaEpR?=
 =?utf-8?B?VmgzUW01QlJ6aEJZbmRDYmtGSGQwRmFVVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?Q1FVRkJRVUZCUVVGQlFVbEJRVUZCUVVGS05FRkJRVUowUVVkRlFXTm5RakpC?=
 =?utf-8?B?UjFWQllrRkNjMEZHT0VGalFVSjVRVWM0UVdGblFteEJSMDFCWkVGQ1prRkhO?=
 =?utf-8?B?RUZaVVVKMFFVZFZRV04zUW1aQlNFbEJXbEZDZWtGSVVVRmpaMEp3UVVkTlFX?=
 =?utf-8?B?UkJRbXhCUjFGQldIZENkRUZIUlVGalowSXlRVWRWUVdKQlFuTkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJSVUZCUVVGQlFVRkJRVUZuUVVGQlFVRkJibWRCUVVGSE1F?=
 =?utf-8?B?RlpVVUo1UVVoWlFWcFJRbk5CUjNkQldIZENkMEZJU1VGaWQwSnhRVWRWUVZs?=
 =?utf-8?B?M1FqQkJSamhCWW1kQ2FFRkhNRUZhVVVKNlFVWTRRV05uUW14QlNFMUJaRUZD?=
 =?utf-8?B?ZVVGSGEwRlpkMEl3UVVkVlFWcEJRbVpCUnpCQldWRkNlVUZJV1VGYVVVSnpR?=
 =?utf-8?B?VWQzUVZoM1FuWkJTRWxCV0hkQ2FFRklTVUZpVVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVZGQlFVRkJRVUZCUVVGRFFVRkJRVUZC?=
 =?utf-8?B?UTJWQlFVRkJZbEZDYUVGSVNVRmtaMEpzUVVkM1FXSkJRbVpCU0ZGQldsRkNl?=
 =?utf-8?B?VUZITUVGaFVVSjFRVWhWUVdOM1FVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVSkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJTVUZCUVVGQlFVbzBRVUZCUW5SQlIwVkJZMmRDTWtGSFZVRmlRVUp6UVVZ?=
 =?utf-8?B?NFFXUjNRblpCU0VsQldrRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZG?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVdkQlFVRkJRVUZvUVZsQlFVRkJRVUZCUVdOQlFVRkJR?=
 =?utf-8?B?VkZCUVVGQlFVRkJRVVE0V0U1NVFXNVNVVzFSYjB3MmVVTjZjbGhGV1VsSVFV?=
 =?utf-8?Q?FBQUFF?=
x-dg-reffive: 
 =?utf-8?B?UVVGQlFVRkJRVUZCU21keVVsRnJNbVZVUlV0UGQwSkJZMEZoZVRGd2FXOUJR?=
 =?utf-8?B?VUZCUWtGQlFVRkpaMEZCUVVGQlFVRkJRbXBCUnpoQlltZENiVUZIYTBGYVFV?=
 =?utf-8?B?SnNRVWMwUVdSQlFuQkJSMFZCWWtGQlFVRkNiMGRCUVVGYVFVRkJRVWRCUVVG?=
 =?utf-8?B?QlFVRkJRVUZDYUVGSFVVRmFRVUo1UVVkVlFXTjNRbnBCUVVGQlNrRkJRVUZC?=
 =?utf-8?B?U1VGQlFVSnFRVWhWUVdOM1FqQkJSemhCWWxGQ1prRklRVUZhVVVKNVFVaE5R?=
 =?utf-8?B?V0ozUW5WQlFVRkJUR2RCUVVGQlFVRkJRVUpxUVVoVlFXTjNRakJCUnpoQlls?=
 =?utf-8?B?RkNaa0ZJUVVGaFFVSjJRVWMwUVZwUlFuVkJTRlZCWWxGQ2FVRkhWVUZqWjBG?=
 =?utf-8?B?QlFVUkJRVUZCUVVGQlFVRkJXWGRDTVVGSVRVRmtRVUoyUVVjd1FWaDNRbnBC?=
 =?utf-8?B?U0UxQlltZENaa0ZIVVVGWlVVSjZRVWRuUVZoM1FqSkJSRUZCVFdkQlFVRkVR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVmwzUWpGQlNFMUJaRUZDZGtGSE1FRllkMEo2UVVoTlFX?=
 =?utf-8?B?Sm5RbVpCUjNOQldsRkNOVUZJWTBGaWQwSjVRVWRSUVdOM1FVRkJSRFJCUVVG?=
 =?utf-8?B?QlFVRkJRVUZaZDBJeFFVaE5RV1JCUW5aQlJ6QkJXSGRDZWtGSVRVRmlaMEpt?=
 =?utf-8?B?UVVjMFFXSjNRbXRCUjFWQllrRkNjRUZITUVGaFVVSXdRVWRWUVdOblFtWkJT?=
 =?utf-8?B?RmxCVFVGQmVVRkJRVUZOWjBGQlFVRkJRVUZCUW1wQlNGVkJZM2RDTUVGSE9F?=
 =?utf-8?B?RmlVVUptUVVoTlFXTjNRblZCUmpoQlkzZENkMEZIUlVGWmQwSnNRVVk0UVdS?=
 =?utf-8?B?blFYZEJSRWxCUVVGQkswRkJRVUZCUVVGQlFVZFJRV0pCUW5kQlJqaEJZM2RD?=
 =?utf-8?B?Y2tGSWEwRmpRVUpzUVVZNFFWbDNRbTlCUjBWQlpFRkNaa0ZITUVGYVVVSjZR?=
 =?utf-8?B?VWhOUVZsUlFtNUJSMVZCV0hkQ01rRkVRVUZOWjBGQlFVUlpRVUZCUVVGQlFV?=
 =?utf-8?B?RkJXa0ZDYzBGSVFVRllkMEo2UVVkM1FWbFJRbXBCUjNOQldIZENha0ZIWjBG?=
 =?utf-8?B?WlVVSXdRVVk0UVdKUlFteEJTRTFCWTNkQ2FFRkhZMEZhVVVGQlFVUm5RVUZC?=
 =?utf-8?B?UVVGQlFVRkJXa0ZDYzBGSVFVRllkMEl3UVVkVlFWbFJRblJCU0UxQldIZENk?=
 =?utf-8?B?a0ZITkVGYVVVSnJRVWhKUVdGUlFqSkJSMVZCV0hkQ2JVRkhhMEZpUVVKc1FV?=
 =?utf-8?B?RkJRVXBCUVVGQlFrVkJRVUZDYkVGSE1FRlpVVUp3UVVkM1FWaDNRbWhCUjFG?=
 =?utf-8?B?QldrRkNlVUZIVlVGamQwSjZRVUZCUVZkQlFVRkJRVlZCUVVGQ2RFRkhSVUZq?=
 =?utf-8?B?WjBJeVFVZFZRV0pCUW1aQlNFRkJZMmRDZGtGSGIwRmFVVUpxUVVoUlFWaDNR?=
 =?utf-8?B?blZCUjBWQllsRkNiRUZJVFVGWWQwSnFRVWM0UVdKblFtMUJSMnRCV2tGQ2JF?=
 =?utf-8?B?RkhORUZrUVVKd1FVZEZRV0pCUW1aQlIwVkJZa0ZDZGtGSE5FRmFVVUZCUVVa?=
 =?utf-8?B?UlFVRkJRVUZCUVVGQllsRkNhRUZJU1VGa1owSnNRVWQzUVZoM1FuZEJTRWxC?=
 =?utf-8?B?WW5kQ2NVRkhWVUZaZDBJd1FVWTRRV0puUW1oQlJ6QkJXbEZDZWtGR09FRmpa?=
 =?utf-8?B?MEpzUVVoTlFXUkJRbmxCUjJ0QldYZENNRUZIVlVGYVFVSm1RVWRGUVdKQlFu?=
 =?utf-8?B?WkJSelJCV2xGQlFVRkdiMEZCUVVGQlFVRkJRV0pSUW1oQlNFbEJaR2RDYkVG?=
 =?utf-8?B?SGQwRllkMEozUVVoSlFXSjNRbkZCUjFWQldYZENNRUZHT0VGaVowSm9RVWN3?=
 =?utf-8?B?UVZwUlFucEJSamhCWTJkQ2JFRklUVUZrUVVKNVFVZHJRVmwzUWpCQlIxVkJX?=
 =?utf-8?B?a0ZDWmtGSFowRmFVVUkwUVVkTlFXSjNRbXRCUjFWQlkzZEJRVUZEUVVGQlFV?=
 =?utf-8?Q?FBQUFB?=
x-dg-tag-bcast: {BB38C8B4-BBDA-40C5-8168-0013E523D1A2}
x-dg-refsix: 
 =?utf-8?B?UVdKUlFtaEJTRWxCWkdkQ2JFRkhkMEZpUVVKbVFVZEZRV05uUW5SQlFVRkJT?=
 =?utf-8?B?bWRCUVVGQlFVRkJRVUowUVVkRlFXTm5RakpCUjFWQllrRkNjMEZHT0VGYWQw?=
 =?utf-8?B?SjJRVWM0UVZwM1FuTkJSMVZCUVVGQk1FRkJRVUZCUVVGQlFVY3dRVmxSUW5s?=
 =?utf-8?B?QlNGbEJXbEZDYzBGSGQwRllkMEozUVVoSlFXSjNRbkZCUjFWQldYZENNRUZH?=
 =?utf-8?B?T0VGWmQwSjJRVWRSUVZwUlFucEJRVUZCVUdkQlFVRkJRVUZCUVVKMFFVZEZR?=
 =?utf-8?B?V05uUWpKQlIxVkJZa0ZDYzBGR09FRmpRVUo1UVVjNFFXRm5RbXhCUjAxQlpF?=
 =?utf-8?B?RkNaa0ZIVFVGaWQwSnJRVWRWUVdOM1FtWkJSMUZCWVZGQ2FrRklVVUZCUVVK?=
 =?utf-8?B?bFFVRkJRVUZCUVVGQlJ6QkJXVkZDZVVGSVdVRmFVVUp6UVVkM1FWaDNRbmRC?=
 =?utf-8?B?U0VsQlluZENjVUZIVlVGWmQwSXdRVVk0UVdKblFtaEJSekJCV2xGQ2VrRkdP?=
 =?utf-8?B?RUZaZDBKMlFVYzBRVnBuUW5CQlIxRkJXbEZDZFVGSVVVRmhVVUpvUVVkM1FW?=
 =?utf-8?B?aDNRblJCUjBWQlkyZENNa0ZIVlVGaVFVSnpRVUZCUVdKQlFVRkJRVUZCUVVG?=
 =?utf-8?B?Q2RFRkhSVUZqWjBJeVFVZFZRV0pCUW5OQlJqaEJZMEZDZVVGSE9FRmhaMEpz?=
 =?utf-8?B?UVVkTlFXUkJRbVpCUnpSQldWRkNkRUZIVlVGamQwSm1RVWROUVdKM1FuVkJS?=
 =?utf-8?B?MWxCWVZGQ2EwRkhWVUZpWjBJd1FVZHJRVmxSUW5OQlJqaEJZbEZDYUVGSVNV?=
 =?utf-8?B?RmtaMEpzUVVkM1FXSkJRbVpCUnpoQlkyZENaa0ZIUlVGalowSjBRVUZCUVdO?=
 =?utf-8?B?blFVRkJRVUZCUVVGQ2RFRkhSVUZqWjBJeVFVZFZRV0pCUW5OQlJqaEJZMEZD?=
 =?utf-8?B?ZVVGSE9FRmhaMEpzUVVkTlFXUkJRbVpCUnpSQldWRkNkRUZIVlVGamQwSm1R?=
 =?utf-8?B?VWROUVdKM1FuVkJSMWxCWVZGQ2EwRkhWVUZpWjBJd1FVZHJRVmxSUW5OQlJq?=
 =?utf-8?B?aEJZbEZDYUVGSVNVRmtaMEpzUVVkM1FXSkJRbVpCUnpoQlkyZENaa0ZIWTBG?=
 =?utf-8?B?aWQwSjJRVWRqUVdKQlFteEJRVUZCVjJkQlFVRkJRVUZCUVVKMFFVZEZRV05u?=
 =?utf-8?B?UWpKQlIxVkJZa0ZDYzBGR09FRmpRVUo1UVVjNFFXRm5RbXhCUjAxQlpFRkNa?=
 =?utf-8?B?a0ZITkVGWlVVSjBRVWRWUVdOM1FtWkJTRWxCV2xGQ2VrRklVVUZqWjBKd1FV?=
 =?utf-8?B?ZE5RV1JCUW14QlIxRkJXSGRDZEVGSFJVRmpaMEl5UVVkVlFXSkJRbk5CUVVG?=
 =?utf-8?B?QllVRkJRVUZCUVVGQlFVSjBRVWRGUVdOblFqSkJSMVZCWWtGQ2MwRkdPRUZq?=
 =?utf-8?B?UVVKNVFVYzRRV0ZuUW14QlIwMUJaRUZDWmtGSE5FRlpVVUowUVVkVlFXTjNR?=
 =?utf-8?B?bVpCU0VsQldsRkNla0ZJVVVGalowSndRVWROUVdSQlFteEJSMUZCV0hkQ2RF?=
 =?utf-8?B?RkhSVUZqWjBJeVFVZFZRV0pCUW5OQlJqaEJZbmRDZVVGR09FRlpVVUo1UVVj?=
 =?utf-8?B?d1FVRkJRWEZCUVVGQlFVRkJRVUZITUVGWlVVSjVRVWhaUVZwUlFuTkJSM2RC?=
 =?utf-8?B?V0hkQ01FRkhWVUZqWjBKMFFVZHJRV0puUWpGQlNFMUJRVUZCYVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVjd1FWbFJRbmxCU0ZsQldsRkNjMEZIZDBGWWQwSXpRVWM0UVdOblFt?=
 =?utf-8?B?dEJRVUZCSWk4K1BDOXRaWFJoUGc9PQ==?=
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR18MB5002:EE_|SJ2PR18MB5695:EE_
x-ms-office365-filtering-correlation-id: 16319f98-55d3-4f54-a3d6-08dbc3ca0ce1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 KKMIFxiQEr5X9ikBDbZiuw7TyKUPk0NvT0Ui7epeNrv8fUXprZapNtJxZEdGJxIAopXAPWCXw4REILE88tv1jyv8zzR7m7A55OE3n+OF8wcfxndPWrsPjajkffeDMdSmg20mqGwcxP7OrtEsiRrYXHKvNmy+BWTtzmXveSNGA21F+PrbOjBlLVbrKs8b8ZHuI90StwIuLae7j1Czm70L/PbtC+fGikhMLQ0/oGILrvHih3tvNiUe3OlcLbJNafzfTktSL4MTbG9sjpaKjo4i9jUwKhdq+mVVZ1o1xjlKQed073+R3jP0aszu5yingsroTi6hexLLmL1nfdwpnvH7Orft9OJjq4TpAzekxuGiqgsRGI5BmlMOF4MOAotJvUfrhuZ1TJ6gN8EbWZWP3akwLTX3l8U1FT6dIzjuFuEhQrGZDjSsZkrxelL4sPMeamk033q6vOVLxpy0ATHfQ1cUI2bRxd6CgDw7zl7U+aOjQIoWlGapBlniYk22lBc77oWXE/Pqnxi62Sc4yuR+fnpG9B/kl+UfGEvzMY9boaGY+wj0Pd3AfGVd7XRfaf3b6lE/FRiVS5OpP6bYf2x8o1JRuRwnvy23LMGGBosLpene8S9FvVqLm42JmPWAUMvtbiOC
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR18MB5002.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(396003)(376002)(366004)(136003)(346002)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(66446008)(66476007)(64756008)(76116006)(26005)(66946007)(66556008)(54906003)(6916009)(83380400001)(55016003)(33656002)(38070700005)(53546011)(38100700002)(86362001)(122000001)(6506007)(478600001)(71200400001)(9686003)(7696005)(7416002)(2906002)(8676002)(8936002)(4326008)(316002)(41300700001)(5660300002)(52536014);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?a3JyZnJsaHp1UmdWWHZRQ3JvbklyVURlbE9QNlpVSzZhZUJDNXZFcStNRTNC?=
 =?utf-8?B?WlpFQVVEcDMrMEMyTDFwb3puTHRQNWRKcUVIbFF5bTZqNDRhTHZkSDgrcFpG?=
 =?utf-8?B?QUFYclNYRHpvc3FtVTIwQTZVUEwyczByclRvM29TaXNnekJDd3BvMGovT1Fp?=
 =?utf-8?B?VE5QRHhlQmxwRnJ0dnJtaHNWSUdVcWs5S043UVJPTWZkZmpoNlFjTlFaWGky?=
 =?utf-8?B?YXhuMi9BSjZRbFY5L0hBMXBzMWpXWlZldWtHUGZwK2RFN3NwajdxMHRhNmUw?=
 =?utf-8?B?OGR5SC9sVFFzbUs5MXJrWFE1YXF6UHNoNHlUdFdaZkRTWWhXRXl4WVRpWnNT?=
 =?utf-8?B?eE5keXNSSEpSd1JGZDdjNkxPMklJMXFMbkxZSjlSdjZaYVluQlRpVXY1dGNx?=
 =?utf-8?B?K1JlZFREV1ZXZHFmMlg5MXNDT3djQW43UlZyYW5RN1N4N0g4SHY2T2JuMVRM?=
 =?utf-8?B?RE5VUS9TTGVjUEwzTzdlZkw2R0x5R0pRU2cyR2RRRnhPeU1nSmQ1VXdxTGVJ?=
 =?utf-8?B?bTMyMk5YUDBPK1FYd1Y0dTRFWTFhSlZINWphYmhnMVdGM3Q5NUNrL2h0NS9V?=
 =?utf-8?B?YjllT3NrY0xXUE5sb0hHYUZnSUNXaDlIQ1dmWlVlSnA1SC9mVWdCelJrd2d6?=
 =?utf-8?B?Y25GcGlXN28yaldISk8rK0xrZlMrMndibnNjUDNuenFnV05MRXhXWHRXcGhV?=
 =?utf-8?B?MzRoYnZ3M25hOHJjYnppRGM2MU9RcTAyanN6K3U5UGhqeWFxbUUvRDNzQ3V6?=
 =?utf-8?B?M0ErUlROMDVxOGFYUWttS1FJaS9vNmtTemsxVEw5K2dxejNMNXYvN2lVaU9Z?=
 =?utf-8?B?NGlRTXd6NFdLbEdKQXRuYjJaQ21hVUJUZVNpQ1NMdjdQK0l4WElObmQyMXph?=
 =?utf-8?B?VDVvZFdybnB5UmNlblAwRis0VHJHdllaRnlwblFVdkNNNHZvc1c0NnVjWk1Q?=
 =?utf-8?B?bFJSL0xsMGdJSkhpczJHZXkwN25uS2tzVmdObFMreTNSVXRnS2lwOWRORXhP?=
 =?utf-8?B?K2pnTlg5RFR2UDFoSWovU2pZbGV4Z3NvMUc3UzRlU09KT3VkTm91MFcyLzJO?=
 =?utf-8?B?QjlDNnZPanQ0NUk1dGI0azN0bEdjb0k2RnNFV0NVamY3a0Q0RVExTmRCaGg3?=
 =?utf-8?B?dkcwQnBYb3pERWw1NE92WmZTdkwzMVg4ZEtGZHB0cUd6c09wN3lmQ2VVa2JG?=
 =?utf-8?B?WVh0cFZ1blpyenpiN3NaZ3JjRjYrckZUNmt5Y295UGlnZjdIM0ZPUE5yaFlY?=
 =?utf-8?B?blBMN2FZd0MxQ0hxSWY2cGRUSFM2dmJDckl4NFhLYnMyWkhCU0lFSVR2bjg3?=
 =?utf-8?B?U1psZUQrVG9SWU5nbTFweFp6ck5EcWQzWjhJQTNia1RldmJHOHpFSXZUc3pR?=
 =?utf-8?B?MC9CY1pFeitEOEV0OUxzTURFcXRsTll4Si94bk5FU1ArR1JURmN6Ym9HanBz?=
 =?utf-8?B?Z3BGSjZ3S01xUUM5d2VQT0daZm4yOGZQdFZ1UGU2VWZRRjJGSENNekZxU2Qv?=
 =?utf-8?B?RHplUSs4QWJadW9SdWNUbG1SUUdOcXFCd0J1QVAzZUFpc2dJMmVVMG5jeGlp?=
 =?utf-8?B?L0RBVFJZbzAvNjZQbGRRR01YN0tqOU94VWxJYXBjaC9iQTNoeXBZUU1WUTVt?=
 =?utf-8?B?SnEzNzBQOG4vOUVqNFpWTFJPTDFyQ04yTVhzdS92dThuN1lnUWxGZE9GK1BO?=
 =?utf-8?B?RU9BdU92MG1zbTRHRG1XcHZWQVFZZjYxVENidWo2OWdROEhPZmJKQWRtM0k2?=
 =?utf-8?B?Y2RTQkllZ0hNSVAwUkNzMEFWc003ZWppaThaWnBQTmJidjVTQksrZWt6dFdx?=
 =?utf-8?B?SFJqQThwdU9hZHlUT0xHT2tEeHdUcTA0azQ3TFE1bWZqV08wRTlVaVNMaHVK?=
 =?utf-8?B?V3FORTRITTQwc3RSZ1o1SHMraWJxeVI1VlpETzJIR0ttTGgyWm1TanVtNEJB?=
 =?utf-8?B?NTFEQTlHajc3NG0vaWJvOWI1UDlaMjBhallhU090R1dVZ3daSXlwOXZLK1lU?=
 =?utf-8?B?M0E4cThlYlAvc09nNGI3UFlRVzFsQ2N6eDRCNjNwdHVtTjlhdHpidXo3Yzlx?=
 =?utf-8?B?Mnk2L09nZm5ldi9ZU05ESWRKODR5UHphdGtxdndXbTdiU294OCt0VkxoTmUx?=
 =?utf-8?Q?klAOTIGGdbHeiOAiIGpBpfVFn?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: marvell.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR18MB5002.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16319f98-55d3-4f54-a3d6-08dbc3ca0ce1
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2023 04:34:36.9980
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7H6eROp8pudDXqMh/rnurTnapJtC631bS8wuu3BpBF9U6aWfGsTSAnnNlrq3bjF5vtM+rgwOqL8OyQqJNOGHsg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR18MB5695
X-Proofpoint-ORIG-GUID: AzpigDVeKFuFoKbdnOSDKb1uWUPg5JjJ
X-Proofpoint-GUID: AzpigDVeKFuFoKbdnOSDKb1uWUPg5JjJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-03_01,2023-10-02_01,2023-05-22_02
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

SGkgSmFtZXMsDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSmFtZXMg
Q2xhcmsgPGphbWVzLmNsYXJrQGFybS5jb20+DQo+IFNlbnQ6IE1vbmRheSwgT2N0b2JlciAyLCAy
MDIzIDg6MzQgUE0NCj4gVG86IExpbnUgQ2hlcmlhbiA8bGNoZXJpYW5AbWFydmVsbC5jb20+DQo+
IENjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7IGNvcmVzaWdodEBsaXN0
cy5saW5hcm8ub3JnOyBsaW51eC0NCj4ga2VybmVsQHZnZXIua2VybmVsLm9yZzsgcm9iaCtkdEBr
ZXJuZWwub3JnOw0KPiBrcnp5c3p0b2Yua296bG93c2tpK2R0QGxpbmFyby5vcmc7IGNvbm9yK2R0
QGtlcm5lbC5vcmc7DQo+IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnOyBTdW5pbCBLb3Z2dXJp
IEdvdXRoYW0NCj4gPHNnb3V0aGFtQG1hcnZlbGwuY29tPjsgR2VvcmdlIENoZXJpYW4gPGdjaGVy
aWFuQG1hcnZlbGwuY29tPjsgQW5pbA0KPiBLdW1hciBSZWRkeSBIIDxhcmVkZHkzQG1hcnZlbGwu
Y29tPjsgc3V6dWtpLnBvdWxvc2VAYXJtLmNvbTsNCj4gbWlrZS5sZWFjaEBsaW5hcm8ub3JnOyBs
ZW8ueWFuQGxpbmFyby5vcmcNCj4gU3ViamVjdDogW0VYVF0gUmU6IFtQQVRDSCAyLzddIGNvcmVz
aWdodDogdG1jLWV0cjogQWRkIHN1cHBvcnQgdG8gdXNlDQo+IHJlc2VydmVkIHRyYWNlIG1lbW9y
eQ0KPiANCj4gRXh0ZXJuYWwgRW1haWwNCj4gDQo+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gDQo+IA0KPiBP
biAyOS8wOS8yMDIzIDE0OjM3LCBMaW51IENoZXJpYW4gd3JvdGU6DQo+ID4gQWRkIHN1cHBvcnQg
dG8gdXNlIHJlc2VydmVkIG1lbW9yeSBmb3IgY29yZXNpZ2h0IEVUUiB0cmFjZSBidWZmZXIuDQo+
ID4NCj4gPiBJbnRyb2R1Y2UgYSBuZXcgRVRSIGJ1ZmZlciBtb2RlIGNhbGxlZCBFVFJfTU9ERV9S
RVNSViwgd2hpY2gNCj4gYmVjb21lcw0KPiA+IGF2YWlsYWJsZSB3aGVuIEVUUiBkZXZpY2UgdHJl
ZSBub2RlIGlzIHN1cHBsaWVkIHdpdGggYSB2YWxpZCByZXNlcnZlZA0KPiA+IG1lbW9yeSByZWdp
b24uDQo+ID4NCj4gPiBFVFJfTU9ERV9SRVNSViBjYW4gYmUgc2VsZWN0ZWQgb25seSBieSBleHBs
aWNpdCB1c2VyIHJlcXVlc3QuDQo+ID4NCj4gPiAkIGVjaG8gcmVzcnYNCj4gPi9zeXMvYnVzL2Nv
cmVzaWdodC9kZXZpY2VzL3RtY19ldHI8Tj4vYnVmX21vZGVfcHJlZmVycmVkDQo+ID4NCj4gPiBT
aWduZWQtb2ZmLWJ5OiBBbmlsIEt1bWFyIFJlZGR5IDxhcmVkZHkzQG1hcnZlbGwuY29tPg0KPiA+
IFNpZ25lZC1vZmYtYnk6IExpbnUgQ2hlcmlhbiA8bGNoZXJpYW5AbWFydmVsbC5jb20+DQo+ID4g
LS0tDQo+ID4gIC4uLi9od3RyYWNpbmcvY29yZXNpZ2h0L2NvcmVzaWdodC10bWMtY29yZS5jICB8
IDUxICsrKysrKysrKysrDQo+ID4gIC4uLi9od3RyYWNpbmcvY29yZXNpZ2h0L2NvcmVzaWdodC10
bWMtZXRyLmMgICB8IDg3ICsrKysrKysrKysrKysrKysrKy0NCj4gPiAgZHJpdmVycy9od3RyYWNp
bmcvY29yZXNpZ2h0L2NvcmVzaWdodC10bWMuaCAgIHwgMjQgKysrKysNCj4gPiAgMyBmaWxlcyBj
aGFuZ2VkLCAxNjEgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gWy4uLl0NCj4g
DQo+ID4NCj4gPiArc3RhdGljIHZvaWQgdG1jX2dldF9yZXNlcnZlZF9yZWdpb24oc3RydWN0IGRl
dmljZSAqcGFyZW50KSB7DQo+ID4gKwlzdHJ1Y3QgdG1jX2RydmRhdGEgKmRydmRhdGEgPSBkZXZf
Z2V0X2RydmRhdGEocGFyZW50KTsNCj4gPiArCXN0cnVjdCBkZXZpY2Vfbm9kZSAqbm9kZTsNCj4g
PiArCXN0cnVjdCByZXNvdXJjZSByZXM7DQo+ID4gKwlpbnQgcmM7DQo+ID4gKw0KPiA+ICsJbm9k
ZSA9IHRtY19nZXRfcmVnaW9uX2J5bmFtZShwYXJlbnQtPm9mX25vZGUsICJ0cmFjZWRhdGEtDQo+
IG1lbSIpOw0KPiANCj4gSXMgdGhpcyBhIHR5cG8/IFRoZSBEVCBjb21taXQgc2F5cyB0aGUgcmVn
aW9uIGlzIGNhbGxlZCAidHJhY2UtbWVtIi4gQW5kDQo+ICJtZXRhZGF0YS1tZW0iIGZvciB0aGUg
b3RoZXIgcmVnaW9uLCBidXQgdGhhdCBvbmUgbWF0Y2hlcyB0aGUgb3RoZXIgY2FsbCB0bw0KPiB0
bWNfZ2V0X3JlZ2lvbl9ieW5hbWUoKSBhZGRlZCBpbiB0aGUgbGF0ZXIgY29tbWl0Lg0KDQpBY2su
IFdpbGwgZml4IGluIHRoZSBuZXh0IHZlcnNpb24uDQoNCj4gDQo+ID4gKwlpZiAoSVNfRVJSX09S
X05VTEwobm9kZSkpIHsNCj4gPiArCQlkZXZfZGJnKHBhcmVudCwgIk5vIHJlc2VydmVkIHRyYWNl
IGJ1ZmZlciBzcGVjaWZpZWRcbiIpOw0KPiA+ICsJCWdvdG8gb3V0Ow0KPiA+ICsJfQ0KPiA+ICsN
Cg==

