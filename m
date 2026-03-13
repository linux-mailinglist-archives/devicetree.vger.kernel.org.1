Return-Path: <devicetree+bounces-274903-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WNgfAD2ws2lYZwAAu9opvQ
	(envelope-from <devicetree+bounces-274903-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:35:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E6027E31B
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:35:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5BCB0301ABB1
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 06:35:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B85A345CBF;
	Fri, 13 Mar 2026 06:35:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="QoatcINK"
X-Original-To: devicetree@vger.kernel.org
Received: from CH4PR04CU002.outbound.protection.outlook.com (mail-northcentralusazon11013044.outbound.protection.outlook.com [40.107.201.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83825309F1B;
	Fri, 13 Mar 2026 06:35:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.201.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773383736; cv=fail; b=BAgEfEF2AlLx3tJaGlD88ch3BTQYWBk2/v2SuBlRd5Ca6eRZikVqbZEVvzUBCZ88qayynSnL+scmkgJEEhzEFEP74xL+IU0QUJG/ULN4C7nv87FKFMn9No0rltAcUzKG+caLbvekylkCfqWLmTNRfsRTITCpq+0k0HK1ZKjWQGc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773383736; c=relaxed/simple;
	bh=81i9moOEQZTaRwL0OV4nG78Um+Ovsk6jRgnVMk23faM=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=EbFzr2dKxqBV/WmbbKJLglzWUNhRPhR1wpaRHOof8kqLTZBb7L5HfLEk0MOtVzYDIReLGJd/BmrXkR7EQ6SJ7TS/+byeEmwmCdPhJa/IWVNeRIsHqp3AyRd+G1ovi0VK+HJPjbujT8gmKcfVGs1Z6VP8451NvxGEi+NkxuE2grk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=QoatcINK; arc=fail smtp.client-ip=40.107.201.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BRPlqRF5KogL2m0fa1sWASIMlJsLRXZmXgdrwobd22KA6JO4DPvRxKi9y1zrqMMy53eeEZndo+30YmAdoCyNIlZluM9X2xGMBhxu7skjODmCSM6AXud+O8sm/MHGjaDvgxiWjGbnLbJOtr0q+n0Owi/dCrmte1V9HztYgKQBcPW4VwkX6btmGd3SAlyQkLEDgm0WyAKlXI7jx0hFSQS96dtfibLe4C4nI8fb8bWaoFCpfsp/z7QHWi2S04gQztT2Ix/Yd9Pw/KAPuXldPwvzLZLIwYJG/pwS6SgI0TP6nkmRPLBjcoed5U7Rqr8mZvheX1pqIru2ld08bzYuBBfsyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PQGw3+PhUT7s5a3M9wJXnJLlfPvgY9XDgs3Nc4omqqA=;
 b=RpvHxKqkmG1b82iyJqgpw1UPg7i+xfVIzyaTSZXfQdhdUjUb/Mnl7PfkFa6HkY3pKwW7JrVXWIq2lc4anpmQ0kU+YVR2erre+8NejMH5i0SOuXUM3SgiAFMR1liqeVuI8adSbsC42JnXGyrEJ73sahBQ+wjS9Rmc5u78Mxqq3OP6/cg0rFb62W95Fm4KwzlaxYTvTTn+YoSEsk0f0ENAVcVDcRrzzrEfYILjcT96P4M2IIs4XINir6QGMuWRebzWr8VAvuFSkcwJOdmJh0UE5ORiPtTNcAYVTISCpA3rq3ej6aM88rGdonS3TiX9/73RcUN/PoclX/qZ0TCWuoQDVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PQGw3+PhUT7s5a3M9wJXnJLlfPvgY9XDgs3Nc4omqqA=;
 b=QoatcINK9ZAs3+j3FYquFZGroy+V4aR/XnpyFqphu0CxpJM4vpdp6zq7w+IVcvKXo/qHlirzewpKzD7iid2+Cgg4RfjSXXE4ixOlI5++L9mpReWthYEgesNja4nSQ+wd3sOcDuHFUT0wfhmwwvfk8pElFxyv3nkIGdP+ETLayao=
Received: from MN2PR07CA0013.namprd07.prod.outlook.com (2603:10b6:208:1a0::23)
 by CY8PR10MB6633.namprd10.prod.outlook.com (2603:10b6:930:57::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.12; Fri, 13 Mar
 2026 06:35:28 +0000
Received: from BL6PEPF00020E60.namprd04.prod.outlook.com
 (2603:10b6:208:1a0:cafe::7f) by MN2PR07CA0013.outlook.office365.com
 (2603:10b6:208:1a0::23) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9678.31 via Frontend Transport; Fri,
 13 Mar 2026 06:35:30 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 BL6PEPF00020E60.mail.protection.outlook.com (10.167.249.21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9700.17 via Frontend Transport; Fri, 13 Mar 2026 06:35:27 +0000
Received: from DLEE205.ent.ti.com (157.170.170.85) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 13 Mar
 2026 01:35:27 -0500
Received: from DLEE211.ent.ti.com (157.170.170.113) by DLEE205.ent.ti.com
 (157.170.170.85) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 13 Mar
 2026 01:35:27 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE211.ent.ti.com
 (157.170.170.113) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Fri, 13 Mar 2026 01:35:27 -0500
Received: from [10.249.130.238] ([10.249.130.238])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 62D6ZNoq069132;
	Fri, 13 Mar 2026 01:35:24 -0500
Message-ID: <f55b008a-ad34-4fee-ae7f-eefec8629bb8@ti.com>
Date: Fri, 13 Mar 2026 12:05:22 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Betterbird (Windows)
Subject: Re: [RFC uL PATCH 0/2] Add TI's event mux router driver and build
To: <peda@axentia.se>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>
CC: <devicetree@vger.kernel.org>, <vigneshr@ti.com>,
	<linux-kernel@vger.kernel.org>
References: <20260313060437.3704592-1-r-sharma3@ti.com>
Content-Language: en-US
From: "Sharma, Rahul" <r-sharma3@ti.com>
In-Reply-To: <20260313060437.3704592-1-r-sharma3@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL6PEPF00020E60:EE_|CY8PR10MB6633:EE_
X-MS-Office365-Filtering-Correlation-Id: 344f12cb-e538-417c-cfe8-08de80cab727
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|376014|36860700016|1800799024|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	zeYZsxF4xxh/qV1PnQLRJnUagZ5XJkrUaYBDFY72H/Dkt2YGE1MMdkgehDpYSFGv2J0dBusevNSEV1lcOUJ+x7m9dJ411Us82POJn14iyD7fbrPpXiwyewT30AWOGByyYGS9MEf8CHk0FQmwmPRxeELkfq1KHEDIoPsIkBhSBkkQ/VTQIE3DctrTpy7d2DJQDCfeIovjSnoQnmSoVF8+hSn+nN0Y5e5hVkPcuD9KKqf100pUK7BeMXF2ABlb29RKaUQBYX+M7fA2mlB/JUsaxNjab81tLZhjFUZc1zz4kO6bwFj29I9b1fGgjLg9e6XsYO7HAZMDkumbxEQNicR4SoKJWYrsq4ffkcTDafCnOl26YJQ/kDjKB9i/6678xI5DXiNSgOCILTTT5Z94aCUQ9lVoPASuR0XeM/MAgeb8LtAphREzX54QHmV5/c7AMUfHEh41ldyzVisnF5p3RWD7aOLNJ3NWcE0mGM044TaKB+67CSGbr1NKGwf397M9Bn1lKy7ddXtWKUIBimj9OcvpCzuO0h81AbNpQ9nUWFMxrRZIu/X7AtNH6XgVxNdfFq1YAWvgpYNBYIGRXL6WnEe0PDewUTaLdcw4U+ONSAPVYRacmGCm7tF8zAmgSOMthmNlHl8GU7wG1jTzXkItBlF1e2Tc5TH7SkBDsbHMD47fjCbaeL/CFMombXrJXjlB+4REgZii51XWSbfdEqHlRFBoP+z0KbKaezghYxs+JzsRKYKnd/8CU+ipye/QVps3I49k24qB3S4ghxCUoNeMQJRkgg==
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(376014)(36860700016)(1800799024)(22082099003)(18002099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	rv1VNRIA+PJcIcyROJiAKsz7qJZ0Yqs9ZTBAne9BGPH9gCK+XTv7kZD2sydglIx6HKbHKWNJ6HTmek4jXYhB9s3S4SU85Bb0uV/kUJ3ltycdQt91JeTHlFx6twhF4Rmv5cnC2GnxThoNj/tCNdcPpJ+5b5a4aWu97dseCk6QeSu1cV0wj6KLj2BR+/OchZ36ZuPve3m358ybZxqlxxgwfFJDyyo7qdaJRz3/zdIQsuTq2YiV6RzSkrfhhmDiZqGqtNPIBS8SySdVZKodXXrSNpQcJ6FguRMuvy/C4EjHe3cO5PpqapruA2xVAr1H4d804oS59y1JeAg5vlC05gv/qEh/p2fB+ubZ6PhPvBsZ1NWpMIXJ6ZpViSsa6DYAkrC5gIX84mtArTktdsnjAs73YU2JkBYZf9pPIV1uFRgSb9O11dQ4OCIUyzFDOGpfwZBT
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2026 06:35:27.6626
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 344f12cb-e538-417c-cfe8-08de80cab727
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BL6PEPF00020E60.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR10MB6633
X-Spamd-Result: default: False [1.35 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	XM_UA_NO_VERSION(0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274903-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:dkim,ti.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[r-sharma3@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 85E6027E31B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

A note point for this patch series,

1) Subject prefix has "uL" which means upstream Linux. This got added by
mistake.

2) In both the patches of this series the commit header should use "mux"
instead of "mux-controller".

I will correct above but would wait for 1st round of comments before
re-spin.

BR,
Rahul

On 3/13/2026 11:34 AM, Rahul Sharma wrote:
> This series contains the event mux router support present in TI's K3
> platforms. The event mux router are of 2 types
> 1) gpio-mux router
> 2) timesync router
> 
> In normal scenarios, GPIO signals are received by CPU via GIC, but the
> gpio mux router routes the incoming GPIO signal to BCDMA(Block copy
> DMA) which the DMA upon receiving uses as HW triger to perform a single
> block transfer or as configured.
> 
> Time sync router does the same but for the time synchronization based
> events.
> 
> This driver supports both the routers but this patch series adds support
> only for GPIO-mux router.
> 
> Rahul Sharma (2):
>   dt-bindings: mux-controller: ti: add binding for event mux router
>   mux-controller: ti: add driver for event mux router
> 
>  .../mux/ti,am62l-event-mux-router.yaml        |  79 ++++++
>  drivers/mux/Kconfig                           |  15 ++
>  drivers/mux/Makefile                          |   2 +
>  drivers/mux/ti-k3-event-mux.c                 | 235 ++++++++++++++++++
>  4 files changed, 331 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mux/ti,am62l-event-mux-router.yaml
>  create mode 100644 drivers/mux/ti-k3-event-mux.c
> 


