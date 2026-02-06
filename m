Return-Path: <devicetree+bounces-263509-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KDrTM4NNhmn8LgQAu9opvQ
	(envelope-from <devicetree+bounces-263509-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 21:22:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A80103127
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 21:22:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A1AAF302DA19
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 20:22:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25EF82D5923;
	Fri,  6 Feb 2026 20:22:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="SKTTyVsi"
X-Original-To: devicetree@vger.kernel.org
Received: from CO1PR03CU002.outbound.protection.outlook.com (mail-westus2azon11010045.outbound.protection.outlook.com [52.101.46.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160423EBF19;
	Fri,  6 Feb 2026 20:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.46.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770409345; cv=fail; b=V6wk3RR95n7/GiAKOq+QMHGtSEP+p1wDe+qf6wYk7FU9cEQ1lHzVhjSCEOXfi3nS6pv1wsZBaoPnY5RHZv+0194reY7h/PraQ9tY/EObpGIoNUKc7nsqBZwXowfN9FdVxxU3oOksjlvx7lxI8iRB21Gryl7qUIB3sd4en86ztDk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770409345; c=relaxed/simple;
	bh=epZIFR4sWOJrkBnLn3qi6esr4n1iQFMlve4LNJRWwus=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=fIBsfpQtFso+YChWoE81a0bTFQmODQkBzMwht4Vvtphf6qfhSA0pp4qu8sFgTqr0CSIpl7kkSpMyb733F5jO2Mhgtd81y18xMOz6RrXfw0tyQBANdH7MH2334a2B5MiHtxFUvBUiXgX7Z1DlQn/MzpGotMwjoCSzGkUicyitn6s=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=SKTTyVsi; arc=fail smtp.client-ip=52.101.46.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B/cuT4K749IoCGK2DXsUTk+H8z/Aib//P5ztX0rtOhp5ya4/j5NsQbUEqI4mwkWNQtUlU4BMG7tp09j7AHVviY6PRcyyKVZLX6qq5UM0HWuaeiMRG+jMPcnA7SPXq7rkb4giSL9Eq3YdDUh/lZqEjN3Bdc1qe6KjyUCz/BLuC+h7BEoDkJIoKuZXPFLFV5CsjMNU+V5juzA48LenD3gfe1M6tra580nulp4JpfN4X6pqZOPydqT+LMy+rAIINuMQFB36yF9e/dJP9WFnWptxZ2fUbr8JnP54I0z552FipssAx/x1N7wLMoDr1vJnDdg//h9kzpgd2iCZWqjmUzumCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zB7NCegdPAVE7LASscEv3nMY2MkDpDQK5Y2G/g89nnU=;
 b=jgZq64MutkEgEtduFKpOj8LZDdN1b7an0/FGMdRAlJcy6zTRg8sPfV1lxcrQtGDw8l0wL7zK+RmFTwIZ10EptBFTvV8AQJSkzgm15yZqufiQ9r38DIfRKAYfcUmIEYdJUT+7nsNPH/yALB+7gUPeYRaIGOpXIbVimSDBQe/I9DSD76Hdr1045waza4ax76v4WDILrTBvkr/tB+CscVf1dEODfmqtXBCij3N5/jb1+HZ5UaUR94H8wExEGJJK8zf7MAlrAn7BMZqiUl+fd3KsULhkA9rImbjGUkakJ0GuYd51i8lUA2mEJAdBk7Pg8ot/9JgC/ARfgmKhnUZiGkmG5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.194) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zB7NCegdPAVE7LASscEv3nMY2MkDpDQK5Y2G/g89nnU=;
 b=SKTTyVsiJC/zioIvLZmdFryub6FyVBasfYMQs+gJJUucKt1d5Mnhf9PIaeE2SOdiQQHF2MCMiUkw7QbO4NKqyy7PXLAYOPKwRc5TzZLQjkN0Ehftag0rwyQNjLPhzpIDQACZKux3Z8b75E3nNUn05xvqKM/QJDRigcJizxzY16A=
Received: from SJ2PR07CA0015.namprd07.prod.outlook.com (2603:10b6:a03:505::28)
 by IA0PR10MB6699.namprd10.prod.outlook.com (2603:10b6:208:441::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.16; Fri, 6 Feb
 2026 20:22:22 +0000
Received: from SJ5PEPF000001CB.namprd05.prod.outlook.com
 (2603:10b6:a03:505:cafe::83) by SJ2PR07CA0015.outlook.office365.com
 (2603:10b6:a03:505::28) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9587.16 via Frontend Transport; Fri,
 6 Feb 2026 20:22:22 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.194; helo=flwvzet200.ext.ti.com; pr=C
Received: from flwvzet200.ext.ti.com (198.47.21.194) by
 SJ5PEPF000001CB.mail.protection.outlook.com (10.167.242.40) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.10 via Frontend Transport; Fri, 6 Feb 2026 20:22:20 +0000
Received: from DFLE207.ent.ti.com (10.64.6.65) by flwvzet200.ext.ti.com
 (10.248.192.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 6 Feb
 2026 14:22:03 -0600
Received: from DFLE209.ent.ti.com (10.64.6.67) by DFLE207.ent.ti.com
 (10.64.6.65) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 6 Feb
 2026 14:22:03 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE209.ent.ti.com
 (10.64.6.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Fri, 6 Feb 2026 14:22:03 -0600
Received: from [10.249.42.149] ([10.249.42.149])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 616KM2Ot1904659;
	Fri, 6 Feb 2026 14:22:02 -0600
Message-ID: <a40bf556-0a4d-4acc-9ce8-421628218b0a@ti.com>
Date: Fri, 6 Feb 2026 14:22:02 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] soc: ti: k3-socinfo: Add support for AM62P
 variants via NVMEM
To: Judith Mendez <jm@ti.com>, Nishanth Menon <nm@ti.com>, Vignesh Raghavendra
	<vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
References: <20260206191914.52878-1-jm@ti.com>
 <20260206191914.52878-3-jm@ti.com>
Content-Language: en-US
From: Andrew Davis <afd@ti.com>
In-Reply-To: <20260206191914.52878-3-jm@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PEPF000001CB:EE_|IA0PR10MB6699:EE_
X-MS-Office365-Filtering-Correlation-Id: ff3832f5-6273-4948-0b5e-08de65bd6e73
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|82310400026|376014|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?VkpiRmhQakFZN0ZHYk1pdThTKzlvV1orVlpObm1rendyL0JrVzFDZElReitq?=
 =?utf-8?B?Zk04SnpwY3ZPVEJLVkZ0cnZweHhTd2tzVWVQYUhKUmZidzZYc3I0WVlFRjdY?=
 =?utf-8?B?VG9lSm1LN1M5bTJ1aTZpaktoU2FqSHhBZTVxMG9SUFJPWmEwM0RjMnBpVHJu?=
 =?utf-8?B?WTRmUGdxUUpWdEZHdEV0R1VsejEzK0FKUjdOUGpzbjVpVUxVRFdFcUI1Q0dw?=
 =?utf-8?B?Mk00NEF4eHhqang5aDZIdko3Ti9HQTh2bkdGYkZzZjNSQTZuVjRTdXB0M2g5?=
 =?utf-8?B?WFBZakFjRjV4NlZwMkxneXJqTUoxM1BaWThkSlhvaGlmdE4wWVhiVWFPaFVK?=
 =?utf-8?B?VGRTSXMwa29OalZ2KzJtRWFRcHZuYkZQY1lta09GZXhFTVZVcDhidXZiTlIz?=
 =?utf-8?B?bGIzcnJEUUxweDk4cHovSGFBOTFqNDRnT3JwOG13cnhrT1JVQ0hNaDl1dmk5?=
 =?utf-8?B?aTZLK2RMTVhpOHJvRWNtK29LNzM3bzZYZk5rNGErU3pkTm0wSVdLaC9TZk5w?=
 =?utf-8?B?aDlWYWVhQUsycHdmZFRNSmdOeER6NkRyYTl1QnFiVVJ1dGhwUVcrOW91eVAx?=
 =?utf-8?B?YlVxN010TTFKa0kwSk5LdGF4NUJOZ2ZkNWdOVEpkdHFURVh4TWVFQ1c2RGNC?=
 =?utf-8?B?ektTV2psUjhOY0tLQ1gvYSt1UHFwdHdCVGs0WXhXREV0azk5S3VzTDVhYXA2?=
 =?utf-8?B?c21RMWtYMU5XMy92NUtmeERTN2IxUjg3RndzQ04zbDd3bm5iVE1DSUliV29Y?=
 =?utf-8?B?MXJJNXNLSDF0bUZ6VnZaVmJuWGNSR29kUWQyY2RxUVRIcXNITDUrZWFYUkJa?=
 =?utf-8?B?ZVNYSlJwQ3c0STJEb1k2am1hNnJJNHpZMVZIalFzMGdSVGxpT1duVFZZbnRz?=
 =?utf-8?B?Q3dRemJNNHpoRXRpV3dFOVZpMlVlSmhSdm1BOFVyVnJ0WTFLcjJMQ2E5VUFM?=
 =?utf-8?B?SFJJdStadFBNbG91VURvZW5rcGdLbXJWdjAzRlJmOUNsNGZBeFFsSVR3ZlQz?=
 =?utf-8?B?WWR3M3FpdHhNam9hU1Npcm1PRWx0alBkOEFxbVZHK09IRXNoL1E4YjZZS2F4?=
 =?utf-8?B?Y2N1Qjcxb3g0cWU3ZUtpbkJpT2xHK2RXaHIwdGdKQWhTSEJHZDhjZFZyeU4v?=
 =?utf-8?B?bFA1STAyb0hpbFpVVi9QblB1QVdGVksvcFA4eXZzU2ZQVU5qRDZRakdtUnBZ?=
 =?utf-8?B?YWVVdEkzNGRoRzhoTm5ycnZaa0dVOGVtOW5KaENNNXJMSEZRUmhJYTVBQUZv?=
 =?utf-8?B?Z2JWUlpWZVRHelA1eDZvV3ZmYVBnTVJ3M1hhc3YrZDBXczhkRnI2L05NaUZD?=
 =?utf-8?B?TXZmalhJSGdpTzVzT29sZUpnOU5EVUdIOHgzeE1hU1JTdERlZzF6QzUrN3Uy?=
 =?utf-8?B?Q1JBUHdzR1BvNzEvclY1SktaSDgzTHAyWkQ1NU5weWRyUkk2bjFuRldyVWY5?=
 =?utf-8?B?Y3ZUdzdRbitUQ0t1ZVdGaDNDNzZwcDh2ejlOcmlSaHpaTUJVUThVakk2Yk5n?=
 =?utf-8?B?Yk1MRUNHa3kwYUNMSXpVMDdhY3FIVWpnUTRtT1BPVmd3clpQcFlhdnpPby82?=
 =?utf-8?B?Zy9QVGo4MWVKWE43RTZxYXhWYzdER054emRDdXcxSlhuQ1gxWnJjZ21oTGli?=
 =?utf-8?B?cW9Tc3M1Y0RuUjBsKzNKSGgwQmZOQkdac2dMUnc1RkF1enAyVXUzdStBckov?=
 =?utf-8?B?c3V6cWFpNzZ1ZkJNQ1pBR05JQjBZU0FtR3RVVjBVTmpZZ1U3eDhsZmpyTysx?=
 =?utf-8?B?b1I0T1grc1RWSytMdkNFS25lWXBBYmpwM0E0NnhrR2pjWGlxUDErbG50U0FH?=
 =?utf-8?B?ZGZWQjRmdjNtSWNKb0tYRHZqYjkzaHpzMlNYZTRnUU5CamhDdnJYMmN1a0o4?=
 =?utf-8?B?Qk43dTIxUndMYTZtZE1YZjZXZXlHeTVZVkk3aDMvM0I4a1FxR0dTZG9VaVRG?=
 =?utf-8?B?T3BaQUhReVE3VExPcGQwMDM1NzFuSCtmSzJ3cG1vdUErWmUrQWN3UVdHN0Y2?=
 =?utf-8?B?VmhmblB4U2xvdFdzZHhwVm0vTkgrMk9YbXVGbWZKa21LenF0UXMveEV3MGYv?=
 =?utf-8?B?bnljbGlXaWpZZHZnR21yYW9XOFVHeDdyQU44OFMxR2VZNTdQemZla2ZPaS9N?=
 =?utf-8?B?MkppQlZDdVhTV0IzZWRvQ3ViZC9hdzl4eWtMY1Nlcnp5aUhVMUJuUGo5TFRV?=
 =?utf-8?B?cndzckZaVDBoeUFONjgwZWdhamtENmlWa0FHamNKSW5Qdzh0SnVPU0NiZHFK?=
 =?utf-8?B?TkhWYk5Gam53a2VlMEJBd2hDbmZ3PT0=?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet200.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(1800799024)(82310400026)(376014)(36860700013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	6ZIQt3pprdE7LqIJdeWKXkAtV/y1WPJcgEjUARnzl9UhI/dUPCtXHNpyHPjvdB6F4lGCGwQ0z/nkik/QZoknhxU0pjk0a5k8O8bSHYq5a7N474Gr/NfjCk2EkqdVW2tr3cIgW/lLc3Leyp9TYFrBgr9iQb+EyogD8Txiud+KfOJXszncETM3B7p9jHvQR7XVJ70QEYqfToTspIdVesMa+uUQpKi8p5N7ANppbnAWm6nfkLjJdNWVa2AMvk+lWpNTuIxtoYn18MpudTnvN4LLEZLxD9R/Wm6n5LiqriDZN7zbtJNHc+oaYM8SFXDhPL5vrwBDtyA3ugI07nSmAl2AxE5CDrz4jWr416knJmsyEF2e670Md3BQ6o/+BWTbLIwzAOCD8yNTWJnmQk4EydDUbPYazWyD2KcBIAJy3iFSZ5eNX1rXN95K1VBVUax9GCHr
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2026 20:22:20.8046
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ff3832f5-6273-4948-0b5e-08de65bd6e73
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.194];Helo=[flwvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SJ5PEPF000001CB.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR10MB6699
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-263509-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[ti.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ti.com:email,ti.com:dkim,ti.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[afd@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.996];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: E6A80103127
X-Rspamd-Action: no action

On 2/6/26 1:19 PM, Judith Mendez wrote:
> Add support for detecting AM62P silicon revisions.
> 
> On AM62P, silicon revision is discovered with GP_SW1 register instead
> of JTAGID register. Use the NVMEM framework to read GP_SW1 from the
> gpsw-efuse nvmem provider to determine SoC revision.
> 
> Signed-off-by: Judith Mendez <jm@ti.com>
> ---
> Changes since v1:
> - Drop valid bit check, and determine all silicon revisions from ADR
>    register bits
> - In k3_chipinfo_get_gpsw_variant, merge detection of final return value
>    and return action
> - k3_chipinfo_get_gpsw_variant parameter: switch pdev to dev

My comment was on `k3_chipinfo_variant_to_sr()`, you should switch
pdev to dev for that function also. Otherwise LGTM,

Reviewed-by: Andrew Davis <afd@ti.com>

> ---
>   drivers/soc/ti/k3-socinfo.c | 41 ++++++++++++++++++++++++++++++++++---
>   1 file changed, 38 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/soc/ti/k3-socinfo.c b/drivers/soc/ti/k3-socinfo.c
> index 42275cb5ba1c8..d8fbc243945f4 100644
> --- a/drivers/soc/ti/k3-socinfo.c
> +++ b/drivers/soc/ti/k3-socinfo.c
> @@ -6,6 +6,7 @@
>    */
>   
>   #include <linux/mfd/syscon.h>
> +#include <linux/nvmem-consumer.h>
>   #include <linux/of.h>
>   #include <linux/of_address.h>
>   #include <linux/regmap.h>
> @@ -25,6 +26,8 @@
>   #define CTRLMMR_WKUP_JTAGID_VARIANT_SHIFT	(28)
>   #define CTRLMMR_WKUP_JTAGID_VARIANT_MASK	GENMASK(31, 28)
>   
> +#define GP_SW1_ADR_MASK			GENMASK(3, 0)
> +
>   #define CTRLMMR_WKUP_JTAGID_PARTNO_SHIFT	(12)
>   #define CTRLMMR_WKUP_JTAGID_PARTNO_MASK		GENMASK(27, 12)
>   
> @@ -70,6 +73,23 @@ static const char * const am62lx_rev_string_map[] = {
>   	"1.0", "1.1",
>   };
>   
> +static const char * const am62p_gpsw_rev_string_map[] = {
> +	"1.0", "1.1", "1.2",
> +};
> +
> +static int
> +k3_chipinfo_get_gpsw_variant(struct device *dev)
> +{
> +	u32 gpsw_val = 0;
> +	int ret;
> +
> +	ret = nvmem_cell_read_u32(dev, "gpsw1", &gpsw_val);
> +	if (ret)
> +		return ret;
> +
> +	return gpsw_val & GP_SW1_ADR_MASK;
> +}
> +
>   static int
>   k3_chipinfo_partno_to_names(unsigned int partno,
>   			    struct soc_device_attribute *soc_dev_attr)
> @@ -86,9 +106,11 @@ k3_chipinfo_partno_to_names(unsigned int partno,
>   }
>   
>   static int
> -k3_chipinfo_variant_to_sr(unsigned int partno, unsigned int variant,
> -			  struct soc_device_attribute *soc_dev_attr)
> +k3_chipinfo_variant_to_sr(struct platform_device *pdev, unsigned int partno,
> +			  unsigned int variant, struct soc_device_attribute *soc_dev_attr)
>   {
> +	int gpsw_variant = 0;
> +
>   	switch (partno) {
>   	case JTAG_ID_PARTNO_J721E:
>   		if (variant >= ARRAY_SIZE(j721e_rev_string_map))
> @@ -102,6 +124,19 @@ k3_chipinfo_variant_to_sr(unsigned int partno, unsigned int variant,
>   		soc_dev_attr->revision = kasprintf(GFP_KERNEL, "SR%s",
>   						   am62lx_rev_string_map[variant]);
>   		break;
> +	case JTAG_ID_PARTNO_AM62PX:
> +		/* Check GP_SW1 for silicon revision */
> +		gpsw_variant = k3_chipinfo_get_gpsw_variant(&pdev->dev);
> +		if (gpsw_variant == -EPROBE_DEFER)
> +			return gpsw_variant;
> +		if (gpsw_variant < 0 || gpsw_variant >= ARRAY_SIZE(am62p_gpsw_rev_string_map)) {
> +			dev_warn(&pdev->dev, "Failed to get silicon variant (%d), set SR1.0\n",
> +				 gpsw_variant);
> +			gpsw_variant = 0;
> +		}
> +		soc_dev_attr->revision = kasprintf(GFP_KERNEL, "SR%s",
> +						   am62p_gpsw_rev_string_map[gpsw_variant]);
> +		break;
>   	default:
>   		variant++;
>   		soc_dev_attr->revision = kasprintf(GFP_KERNEL, "SR%x.0",
> @@ -173,7 +208,7 @@ static int k3_chipinfo_probe(struct platform_device *pdev)
>   		goto err;
>   	}
>   
> -	ret = k3_chipinfo_variant_to_sr(partno_id, variant, soc_dev_attr);
> +	ret = k3_chipinfo_variant_to_sr(pdev, partno_id, variant, soc_dev_attr);
>   	if (ret) {
>   		dev_err(dev, "Unknown SoC SR[0x%08X]: %d\n", jtag_id, ret);
>   		goto err;


