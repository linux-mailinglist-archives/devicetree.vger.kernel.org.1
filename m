Return-Path: <devicetree+bounces-183871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BBAB3AD232A
	for <lists+devicetree@lfdr.de>; Mon,  9 Jun 2025 18:01:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 55B361889C6B
	for <lists+devicetree@lfdr.de>; Mon,  9 Jun 2025 16:01:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A909A78F4B;
	Mon,  9 Jun 2025 16:01:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="BbiHMRdf"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2060.outbound.protection.outlook.com [40.107.244.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52BBF7E9
	for <devicetree@vger.kernel.org>; Mon,  9 Jun 2025 16:01:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.244.60
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749484864; cv=fail; b=VHD0Yj/Yc5to+aZ22EbFPCsUyU8dXJiGCdtL8DaYXcNSbwM42qfs1USTPopDy0qvXlDlbXQCrlvB4Oha03o0MEx8h5gU5q0EH1dCbrCTS7cyH/87fwld3omebUICuRZQ02Brr/4jSk00W7EAsnUtmX0Bqb1emwgE1ihpVSnnAc4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749484864; c=relaxed/simple;
	bh=IGDZ95Onr70Q2MRAe5cgXSnIDetcb5mH/Caknvg40BI=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=ZCV5MwfJpQZCUIs+iP6eu0d9VagByhdYi4i1VTga1EiIw/XZUNlfgIdVEv8Bo8uLFkAGELQWiT0ha3QO0IJHtw1EnhsupdlvxfeUQtKzUg47o3Esv/t4G/FFw79Pzhtvo5Li1VrOhElgFW7Z3GlfBgITCi/epclbDd1HGn4ovr0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=BbiHMRdf; arc=fail smtp.client-ip=40.107.244.60
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LWJSZcyhsNJkys1X8fOghN1umwxcdi+3wu7tcuxKoz+gSRKgnqckQHx+ueuqNGcEgBaPabfyiqWRNb/q7Skzd0WoAikXs69D4E2BvWezwNycLwT65+YkN78jxjsNPtg4mb3fT81Rq5Uy9jbMmd49BIhhjkKRcMYH0MZ7n4JQlf/iG/fFinajrHzIL9dsAShiwIjyqAXfeP6PpGMaOyZoJPuIIY9vTpU8oAqJbZkjk04IAvlcdHFIaoiZx8cfmX2/ldMTn2QKJHBCksIOCT8a79EqyqQXEXM5PTQZs84iNGQbjEgwYMihKDcpyZ/H45KW1VYSLPHBGaQ4xr4KyjWQlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+nfMeK6im2qqonDHdFaYHsQLOhF8klFpDLp4buB98HM=;
 b=wNGEd78VtZKg8kDRQS391li/Prv/cSjYskz0kn8wUrRXBNAnonI0WC6oEDcoIT2n7Ymryry899lhEPGmInQK51YV6oLejosUgyvAYl/nbAHfv1ok9b1RovzJZeYgYzA7VQW/u+Bk5cOPR4RWhzcLdyXEEKKY0JvQBERRj11s9kL1rqB72TW0d/ycd7DpYbKjMK55A+pvXaSCb+upShCP0/OIxT7Rd7UtbNCuXAixklzBbx56c2NTFT55lej+25Mf4OVPH0n7M9dAhUo2mzP36H9iNyjhgIguZI1T3r39T2upYG+eN2zXjRDqDx/SKF47ZGrzdoG3veS8K3lGm39OlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+nfMeK6im2qqonDHdFaYHsQLOhF8klFpDLp4buB98HM=;
 b=BbiHMRdfyz/MVrKTntQ+4q2MpZIbsQBCVpHjj5+wvZ3+f4ybLT++3GUGk1bWQ/F1rS1RvioxsGctAz28mS5l7aX0H7N86dnnH1xDSukQ3r2xeOGbAnlhcyWAEW7fI0N0Ft44ptRJLwpj8j2Ub5NQiR6QOO2iFXCeBvxtm/erDm6NTo/ZiIjDJ5MYEjAfiR5K40++9wMZpdmrzBjz6tHZmYkfyrTpl/GTHBX3xEew4HfRmo4qMvypBQX2j5SYgCQTpZyM3fDx0wVlpmUS4VryhKIfzR4C3/x4BoENR9B6EctQ5iov4hqbVBAQJZixLVl0lNeH4DL6mkQ5BqgXzd6mmg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from BYAPR03MB3461.namprd03.prod.outlook.com (2603:10b6:a02:b4::23)
 by SJ0PR03MB6986.namprd03.prod.outlook.com (2603:10b6:a03:436::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8792.34; Mon, 9 Jun
 2025 16:00:59 +0000
Received: from BYAPR03MB3461.namprd03.prod.outlook.com
 ([fe80::706b:dd15:bc81:313c]) by BYAPR03MB3461.namprd03.prod.outlook.com
 ([fe80::706b:dd15:bc81:313c%5]) with mapi id 15.20.8792.040; Mon, 9 Jun 2025
 16:00:59 +0000
Message-ID: <38a0b0bc-24f3-4e19-8637-d2a7a0c2ef93@altera.com>
Date: Mon, 9 Jun 2025 09:00:57 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: arm: Convert Altera SDRAM EDAC binding to
 YAML
To: Shankari Anand <shankari.ak0208@gmail.com>, devicetree@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Dinh Nguyen <dinguyen@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>
References: <20250608214822.192885-1-shankari.ak0208@gmail.com>
Content-Language: en-US
From: Matthew Gerlach <matthew.gerlach@altera.com>
In-Reply-To: <20250608214822.192885-1-shankari.ak0208@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR13CA0033.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::8) To BYAPR03MB3461.namprd03.prod.outlook.com
 (2603:10b6:a02:b4::23)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR03MB3461:EE_|SJ0PR03MB6986:EE_
X-MS-Office365-Filtering-Correlation-Id: 5f47154c-a7bc-4491-8fcb-08dda76ed34c
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?bnNGTWhSeGlXSDBmZEdISzRrU05yRU9DYWVzbHpHbGhjamtPWVU2MTE2S29K?=
 =?utf-8?B?a3V6SU40RXc0VVFSNmVEcnVCd1hiTE9vMXlyQmRGM0ZKajdjaXNyL0FvcERN?=
 =?utf-8?B?NTBCUkFkMTdHdjJuZ0xKanYybTNLUHE3SkU4SFRtdDZCSXVoK2g4RzNNdkEv?=
 =?utf-8?B?NmpDRzNLdDl3VTc5WWg3aDlrQlRWaGxsRGtZeGxLUEZuMXVxZmRuNkMzY2VM?=
 =?utf-8?B?R3ZTcXNkazFzbm5wQTIrMGV1bmtxM3c2N2l3NkdDSHdsREsrQ1hEZ0NtR1VD?=
 =?utf-8?B?eVZVSHVHWENiSGNIRG9XU3FwUkhJUUxESWcwL1FDcnYzRytoUU5KNjA5Y1lV?=
 =?utf-8?B?VWQyc0M2eWszK3lvWGpoVmRFUDhLSUNPcm5sRGtoOEJNSW5acXR0b2NNTWNG?=
 =?utf-8?B?VTFBdWl6RmREYVJYRTJBeFMxdlRzaVg0MnRiNTBTTXJMcENUWENvWHlaZ3R6?=
 =?utf-8?B?ZCtkN3ZWTmpNSVlqaUVlUCtza0JVMDBmTUNiSC85Y3RSTGtleVhpZVZ2d0kv?=
 =?utf-8?B?cGdjTTRMek9GcnRBb3RKVkNyZEJMSFRtM05jZXJjR2ZtM0VYdUhPanE1WGpD?=
 =?utf-8?B?ZEtzbFFkcytScHVIUC81aDFBVzkzVDdOOS9oM2lsMlVCL3Rhb3c3WTNuNGxP?=
 =?utf-8?B?M2VFU01KS2lMZjFCTGducDZFZlBvQUs0ek50M0ZBSG40RmpuQ2s0RE1rRlhz?=
 =?utf-8?B?U3pkMjh3TkVKUHZ3d1NUVjZaeVdmRVJ5UWdUL2pVRXBGd0owWWUwa0lCbXk4?=
 =?utf-8?B?QnpGOU8xUU5RY2l2UURWRDN6MGZ3ZU5WcWxXQkRpRTNGZzBXOWtmQ3NCMW1C?=
 =?utf-8?B?TzMyM2d3MWFESm9UbEthdjhXS0llRElMMEpHU3pLREtFYi80RXF4azZWTlR5?=
 =?utf-8?B?L0xST1lYd0hXT2RsUG04YlQ1TUtsZjd0Zi9wWTZEaEl3Z2hoTStEbGFxOG94?=
 =?utf-8?B?aHRybmpFbEMycWV4a01XUjI5SHJ4UllPeHNGdGtRc3dWMm5zRTAzdGlpYXp3?=
 =?utf-8?B?ajZWQVV6NExwRXFkelBrdHQxN1RZYzU1Ny9KY2Q5TElYb0JUOEhEbkJlbzNI?=
 =?utf-8?B?VGNsdDg1UHVhYVVoUnlRVXk4ZGc1blpCMS9HUWF0Z2pPN0pLN2FhM0c3TEJ4?=
 =?utf-8?B?Q0Vwa0xKRnB0MDBNODBuUXBiMFVxSU5lc01PVzg0ZjFSMDRwbGhGZ2hhVjBI?=
 =?utf-8?B?ZTFPWWpoMVErWG4yWmp6bG80N2gzeHJaQXRqRHdJWWJKL0ZqT3pTd093U1RR?=
 =?utf-8?B?YTNOcXlLYmh2ZDgxR3N4Q201d01ralN6U3lTQlMrNndtUjBLODlIVXpGUjFD?=
 =?utf-8?B?b09DTmNteEdYZE8vVWNrZ3FNNkpBVVJFeWdxdjlMejgycnhhRFpqR0hkVXJR?=
 =?utf-8?B?NFJuVGpQRzZHZVZ1dkVQZ1pMZWo1NDhET3lvc3pRcE82eVh5b0poN0M5ek4r?=
 =?utf-8?B?M2RwcnBKUkR4cGk0dlJwQktZNmJmalJHODNISnBicm13YUZ2c05EMVlHOW5k?=
 =?utf-8?B?bTBrQ3JhQll5NnpOelE4MHY0SGI0NlZHb1pzU2l4ckVpazFMVDRUTkdSRkxQ?=
 =?utf-8?B?N2VNUUMrRnBwYWR1VEJHN0poM0pEVGdXOU82bHZnTmVrRVc0U3dxZFRZQTV2?=
 =?utf-8?B?VFJORXFCZHZyS3ZSWDhOelRBdGRteEJNTEpzZkpnZFk2SWdoKzV4dlBCeHZ4?=
 =?utf-8?B?YVNqV1lEbXlWY3gzMEdlVWU1YkRXd2ROOE4vUXFadTM3RGg4bTk4UUdScDJn?=
 =?utf-8?B?YUVXVncwTTFVR0pLV1ZuZlVXWXN0cTlMbFExVTI3Q2lsWVlMdU9uQW1BM1Vs?=
 =?utf-8?Q?SGuHVKH4Mby4SmpZLbK+jlhbhIeR1bZ1QGmKY=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR03MB3461.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?ZzRIb09sTkIrYTVOSUhFS0xJQnRxMWl3TTcrYy9HRjdtRGJTbDN3aUtaOGRT?=
 =?utf-8?B?b2ZBSEJlYlRoakdFclRjWEtEMVJOYWNHeUpmMmxBWlVYVlpRSGVZc3IyMFB0?=
 =?utf-8?B?OFAvZFE3czhZOFAzbU5VeHVTcWo5c3AySW1pUzl2YlV1bVU3L2ZoRUh2SlVY?=
 =?utf-8?B?NXRMdUozdDVxcksxYnRrKzR2cUlUSXY3cTAvSExzSGhLbEcvUEdQTVREd0lT?=
 =?utf-8?B?SUNQcm9FZUJTb29ZdVpsZENtL2dTczV6eUlQejJFb25PRmk4OWN0UU52ZU5J?=
 =?utf-8?B?alozSHR3cnU2YUFrbEVEYzJMTjNzUnY0UVhIeFRiYWFjTlRQVXdBZmNrTXFX?=
 =?utf-8?B?NXVObUZPMEJENklMMDZZanZyS3NvSmppemRIY1hIeFpQTkozaG4rbS8yeitu?=
 =?utf-8?B?T3REMHh6dWxRUTJqaUpsQkRTMmh3K0RWVmRoa3BmUHAvUnNNNXNTRlUrT2Js?=
 =?utf-8?B?WEkzSGN1NjRNNHY2eC82OVRWajE1TCtMeFVCeEVmajFMQWh2UGN2d3l6NEJU?=
 =?utf-8?B?dzZwMGtaaG5mcFFEQzBIWFQvRFBiYW54YVgzODBZVjZickRUSVh2YXpqclB4?=
 =?utf-8?B?Y000a08wb01iUVh3SjI4Z1ZaaEdJS1J0RzY5ME0yZDZkVEc5ZjZOSG93a1Za?=
 =?utf-8?B?MEkreFdscjNkZGhyK1Q0OVRDYzlxS2tURng4U2NUQkRQaW9uendjLy9Ic3RS?=
 =?utf-8?B?OVdiNkJheDJyczA3bWdtOFlxVTErczBUTGM4TUM3K1BCVVl6ZEVoWURmWkRs?=
 =?utf-8?B?citrOXpkTkgwVURSbXlONWlwRytrTzRtNGpuMXBFeHByOUczWVBMSkh1MGt6?=
 =?utf-8?B?SjlFUE52dnptcDBnVDBaS3JRRFlYOFFUTm1mZjczd2s1N2p3RTBIM1VyWG8w?=
 =?utf-8?B?UGhqZ0w0L0dnL2JlR2p3VHZaYXprZkRMQitMTkY0OGR3STFPVCtJejNjOGVE?=
 =?utf-8?B?UkJmakZ0N0dIYUd1RG9xckdKYjRESXg5SkNZVXhjcmdMYW5HWTF0WEpBRnFm?=
 =?utf-8?B?REI0d1ZNZFBxNHBqb29PNldva0Q3dzF4Q2YzdG44NUliWUlxRkVETmRtUk5B?=
 =?utf-8?B?M29jOUVwQVkrMUZONUNjRkxNWkpWT0tuRThtOGx0QzByN1l3TUVxTWZYWHlm?=
 =?utf-8?B?SUgxK01OY0IxZmIwWi9IaFRUcWxnQlgxdTlmTWx6S0tGeEZ4REwza0pnQ1c2?=
 =?utf-8?B?T0pIOCtDZGRaenZhbTE1N2ZCYXFBd2NmWTlsQWZTaWhJeExpT2J2ZFBhZ2JK?=
 =?utf-8?B?UTBqdFEvMWNZV1hCdjRkQUsyaHE4VGFiS0U2VE9MVTNMK2FUUWRET2VaN1h2?=
 =?utf-8?B?c0VQd0xlRld1dUtRWW03Z2VMTFZlSzNoSzltNVFoL21VQ25RajU3TWN5eDlQ?=
 =?utf-8?B?cE1YdWpCeTlYc3NLalhCNlVnQWpWb3k5K2VDK0x0b1NIQ0hJVGJlT3REV3R0?=
 =?utf-8?B?OGRJTjZTeDBxWFV5Smx0Wk9LM0FlZlc1VHJsdlZ3VStSVUQzeFZORy9ET05h?=
 =?utf-8?B?ZnhLK1owQXBvM0g2U1lPUHNLQlFsTkNYSmZkWWxpbTNVdm8wTy9TRU5sZnNu?=
 =?utf-8?B?UXQ2S2xQZms3WmxoSldad3pYMmo4NnB5YWg2bkdiT0RTNko3U3M5enRFdGNW?=
 =?utf-8?B?cEdRaW5GS0h2N1pHU3JJamRoRTFtaXZHaFRjNE1RUHcrOHVuVkZMVjM1M3d5?=
 =?utf-8?B?MFZqL3dFMkFJT1FIRTdTWExlMlhsd25BTXg0S3hIbDZRc09qeEZKbU5Bd042?=
 =?utf-8?B?VmNBWlJsd0JlUEZucmp3dG0wdHVjeHpaWkJsTE45bjhVeWJXRjMrcm9pYzc0?=
 =?utf-8?B?S0V5WWNPTm9rdU5hbFhwOTNONFo0ejRPb09qb0lKTUt5SFlGZTF3QmErNEpM?=
 =?utf-8?B?SnRqdCtHKzZmZjFHbm02TytlelVaQUhqZ3BkNUp0ZmIxbHU1NFE3UlRLYWhZ?=
 =?utf-8?B?ZEhHWGVpUDNWUGk1QXAreXM0TExNRDJrNTVVQ0U4TjYwemQyTDlESXA4REhL?=
 =?utf-8?B?cXpuWnA0ZWFZNHlPRFZmMkhUOW5WM1FWSXZOVG05OURhc1RtUkFiYW00bXov?=
 =?utf-8?B?WUxnYWEzZTRCNkVLRHhtd1BtZHFEc0pwcDJhYnBTc2NnNWRhOEdGZTNBcTQz?=
 =?utf-8?B?RGpNVW1YWlBJcGFwTmREZlFqZmdMMDNjSDFYbkYyU1JJZ3hENE5VcGp5TzJV?=
 =?utf-8?B?WkE9PQ==?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f47154c-a7bc-4491-8fcb-08dda76ed34c
X-MS-Exchange-CrossTenant-AuthSource: BYAPR03MB3461.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2025 16:00:59.2237
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EIRJ5dEbtuMFCdrWl63UNx0kZTUHFa/eXc89bcqWNTzZhkBBvqraZAS7Gy4L83Ozr8bq9AxBZeWHpIOu1aP3t85HVlV5UpU6isx0eIWcFuY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR03MB6986


On 6/8/25 2:48 PM, Shankari Anand wrote:
> Convert the Altera SOCFPGA SDRAM EDAC devicetree binding from the
> .txt format to a YAML schema. This defines the compatible strings,
This patch should also delete the file, 
Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.txt.
> required properties, and a usage example.
> The SDRAM EDAC controller monitors ECC errors on the memory bus and
> requires access to SDR registers and an ECC interrupt line.
>
> Signed-off-by: Shankari Anand <shankari.ak0208@gmail.com>
> ---
>   .../arm/altera/socfpga-sdram-edac.yaml        | 47 +++++++++++++++++++
>   1 file changed, 47 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.yaml
>
> diff --git a/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.yaml b/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.yaml
> new file mode 100644
> index 000000000000..6e31632b09de
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.yaml
> @@ -0,0 +1,47 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/altera/socfpga-sdram-edac.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Altera SOCFPGA SDRAM Error Detection and Correction (EDAC)
> +
> +maintainers:
> +  - Matthew Gerlach <matthew.gerlach@altera.com>
> +
> +description: |
> +  This describes the Altera SOCFPGA SDRAM EDAC controller which monitors
> +  ECC errors from the SDRAM controller. It requires access to SDRAM
> +  controller registers and an interrupt line for ECC event reporting.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - altr,sdram-edac
> +      - altr,sdram-edac-a10

You are missing the following compatible:

                - altr,sdram-edac-s10

> +
> +  altr,sdr-syscon:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle to the SDRAM system controller (SDR) syscon node.
> +
> +  interrupts:
> +    maxItems: 1
> +    description:
> +      Interrupt specifier for the ECC error interrupt.

The Arria10 variant of the SDRAM EDAC actually has two interrupt lines. 
So you should have something like:

   interrupts:

     minItems: 1

     maxItems: 2

> +
> +required:
> +  - compatible
> +  - altr,sdr-syscon
> +  - interrupts
> +
> +additionalProperties: false
> +
> +examples:
> +  - |

You should use the macros defined in

     #include <dt-bindings/interrupt-controller/arm-gic.h>

     #include <dt-bindings/interrupt-controller/irq.h>

> +    sdramedac {
> +        compatible = "altr,sdram-edac";
> +        altr,sdr-syscon = <&sdr>;
> +        interrupts = <0 39 4>;
                   interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
> +    };
> +...

Matthew Gerlach



