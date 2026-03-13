Return-Path: <devicetree+bounces-274952-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0KhlA4m/s2lHagAAu9opvQ
	(envelope-from <devicetree+bounces-274952-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:40:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6679927EDE2
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:40:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 76EBD304B8DF
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:39:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11DFE36C0DB;
	Fri, 13 Mar 2026 07:39:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="n2I3QQa8"
X-Original-To: devicetree@vger.kernel.org
Received: from BL0PR03CU003.outbound.protection.outlook.com (mail-eastusazon11012015.outbound.protection.outlook.com [52.101.53.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4901DF980;
	Fri, 13 Mar 2026 07:39:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.53.15
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773387576; cv=fail; b=BmGRQSzWcvVHrZfdJNo+4z8dh7btyMHBYwlK44ZOO/W9uVG7m5HfQdlO5KkP8+ADxDMvzK/hfK3V6LCZG5+j8+z1lv8aYDwx5Xnu6Sv89T7iyNW5DqjU1zfPv0hfrk2tDI4rDFtnJrJ1qQIuR5P2CtP0mm2C4BWxac5X5BQGgAU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773387576; c=relaxed/simple;
	bh=g9qnVcJ+JL/YkOyAQMKCSPzUuSD/UNXL16bBvJO5LZc=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=SvcWEyqKW/SivUOCvCqLzmCxq3HSdRrhnzmL0j7k/awrJ+m/oKZrrW0aoLaTMFDOI9RHh5Ma0J/Jevx4j1mPcUSpBxHdymwX22nvHrIhT2hMrub2Fq1TFE67+QHEEAwNZ0m0n7xXUZjht2TsQyaE9MRu4TLbg6/N5WQVC2YgOFs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=n2I3QQa8; arc=fail smtp.client-ip=52.101.53.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZfIgWlmSTWZ6q9rfXzwD/0E8TV7tU+MycxRTr59HmRi1HxXa/9RDGi+4zEcnQ2LPKLW+Guxw96BE3idyn1d+8Kw2OCI72/cH8YEUDwrOI9f66yVE0vLISDjAmH54ymbcjtvtVdno2e7nxWvnjNqFS23JSK8dp+XjjOJxFj3WmJKoS3QBbB/9m9BLVV8c2OURTQsm1XzoczOX1P0Z4RmVbnFzqSRm95vI4VCUnL8XAzNU/5G37TmjGYfypifQa0fZI0GPDsZrkLVbpLfxSynjiVbcA1uNzrHZ5wt1yA5vEQBITcCxzIFncu48D8lKSW52amxNSDcqJE9t6VtGYQZS8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=57BiHG8MwyWf9/nUGr5+8X8iktsqBU23TS1GSpdmGAY=;
 b=TL8lgW2kyqUIU7slu3PI8eCOrYlH3c30FEHCj/n9+KLmdkqW1fX2DIRwUIS+M3S9nCu+TY4unwkpu1GL2pGnfD7MqXBwseJuQTy4fE334Jc7DWpI9X74dHOFzLZBxpbHBlsvbFJMv8jbno2Yf4tcBfxGhUWs3dW7dF9e/It/6/SvsNxcWG2QuDmf+IO8q5xevFuJggjCtHYnFsKcrN2wtDtBpmcQ58XUsrYK3bv/MYnRmSERLUMZLmY40ZOtltHt3hOrls3KHxLr7kd1gZQxoLm1xdR9H+hc0z/0vlpx9iXjvs1WnV8c6A3WlYhcVOHtRc4L+N4J6IFk15rd9aRgKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=57BiHG8MwyWf9/nUGr5+8X8iktsqBU23TS1GSpdmGAY=;
 b=n2I3QQa8WodR1Nz1Q8MboxG/i3nnvIW6qFFnMFZZiOoHLJmhlBl2vKsjqTDZ0YMrTU1QjZGT5ljkoVfPTNqpcBZH1HdHycLw63XnZ5PYTlRAQPtZxg2dJeEIkyrORJdhjPayRn0qr1JXpgAeNaebVi5HXq/UrQJmVrkx0/rO5GQ=
Received: from MN0PR05CA0027.namprd05.prod.outlook.com (2603:10b6:208:52c::24)
 by DS0PR10MB7201.namprd10.prod.outlook.com (2603:10b6:8:f2::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9700.16; Fri, 13 Mar 2026 07:39:27 +0000
Received: from BL02EPF0001A0FA.namprd03.prod.outlook.com
 (2603:10b6:208:52c:cafe::b7) by MN0PR05CA0027.outlook.office365.com
 (2603:10b6:208:52c::24) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9700.15 via Frontend Transport; Fri,
 13 Mar 2026 07:39:26 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 BL02EPF0001A0FA.mail.protection.outlook.com (10.167.242.101) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9700.17 via Frontend Transport; Fri, 13 Mar 2026 07:39:27 +0000
Received: from DLEE214.ent.ti.com (157.170.170.117) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 13 Mar
 2026 02:39:25 -0500
Received: from DLEE200.ent.ti.com (157.170.170.75) by DLEE214.ent.ti.com
 (157.170.170.117) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 13 Mar
 2026 02:38:52 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE200.ent.ti.com
 (157.170.170.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Fri, 13 Mar 2026 02:38:52 -0500
Received: from uda0132425.dhcp.ti.com (uda0132425.dhcp.ti.com [172.24.233.103])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 62D7clWX151650;
	Fri, 13 Mar 2026 02:38:48 -0500
From: Vignesh Raghavendra <vigneshr@ti.com>
To: <nm@ti.com>, <praneeth@ti.com>, Shiva Tripathi <s-tripathi1@ti.com>
CC: Vignesh Raghavendra <vigneshr@ti.com>, <kristo@kernel.org>,
	<robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <kamlesh@ti.com>, <t-pratham@ti.com>,
	<afd@ti.com>, <vishalm@ti.com>, <k-malarvizhi@ti.com>
Subject: Re: [PATCH v2] arm64: dts: ti: k3-am62l: Add RNG node
Date: Fri, 13 Mar 2026 13:08:45 +0530
Message-ID: <177338196941.240421.7108287389800858410.b4-ty@ti.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260309101650.1652240-1-s-tripathi1@ti.com>
References: <20260309101650.1652240-1-s-tripathi1@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL02EPF0001A0FA:EE_|DS0PR10MB7201:EE_
X-MS-Office365-Filtering-Correlation-Id: dbee6503-62cf-4790-ea44-08de80d3a7dd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|36860700016|82310400026|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	wFz30AX06GfkSkSATBueUZsNjmHP5Si6Mj/iDU07tcQWtzHNrGme8G6tW555m4M4Dyh7rmk12F5WrWXYYtLTqPAW0NFWnolU4RBw3JYsOVK3zefVyF0XFza5843Vj7q8xqDi4zCAQ4JfwWO/L3MBrTN05TA+AZpRNTkaR7+w/EF9VDN4cnriq9qzJZW5Jbu+DdBhckAU1g8LJAKzrEz+yucbOgxfZfWRgvmnuF4cMAlbpi0QX4tgzn+kAc7PbIz8AYP5lHunWUO2y0nzPasNzVtDRwMkFsjPh7GftRyMSC2RaeWHhRf9dk58U3HijstsrtgjzizpO++MC7W9mahBF3eA43X8bDZz6+8AJTpG+bqR0c3yDzeQg6R+bA/cnk3av++M2AdTL72LaQ7JGhjxmi1EWvZKYRdyzvV5qbE7kxu+RPof+HK5hwLXjphrq3ItNbv/iMS8CzgPAiRaAn4Y3t2R+kRhmxosRpMoqZCNtqfeFzBNvC0ke5htCZ7T99lxgzlQ3oHAv3oZjhKdiDVLIqorXBLTJ5w9oJMi5x9w57Udv9OC1xGzTRoH1s3hrLuSk/y5M8vzri0NJi7ODAsnubSkzbIQRpwSWMsrQPoQVavqKoEuZ+aS3OCL4t8TsXGnzJWZ5skE0KzEeMWXqYy/uZMa8aTc1mgRcUevONxAsDNCeZEm9J1V73qzE/9l6CG2ZVCF4Fi/Dg+XaQ2NO0bY21JMBU4zYOV/AD+7ufM62cQ=
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(376014)(36860700016)(82310400026)(18002099003)(56012099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	8nz36H+sT73eaMH5QlyFFFTVcKqYgpE9/W1F+HGaeTKuG6sSWQGoSKB8uGzuQx75SmGKONaTjNaYsoVo8hC7yMOAy0iQA72TFx3ZxE74FdZB4FTA13uUlF7jJMm0fEsIU+rxXTEfYP0KekfVxb/1pqfAlB5ajjVqcD5ss8s+eJ/EE6qMcSuQyGrOMlQw0l11laqpLn4CIRqodIFyn6rEH7cTaFGRsggZUjwltuZTvNhVALqhz4Rmd3bqYEK++xXKkInC4jHzAc+waNY09ci80tT9rYr5KkSnwxYab72gaiP4gktQiqoXma3JjDqptC0OraN6ghgMx9TUERLDrtyiR+e/jxhkVHVr3dmYK5Fqp7yt6kfWtRsXRsudYTlO1GO8bD8goqbTP8B7g9ceQDlv4w4tybT6mlTdftfLf9KH4P3WKD9y810J1rWYb2xowY2o
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2026 07:39:27.4821
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: dbee6503-62cf-4790-ea44-08de80d3a7dd
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BL02EPF0001A0FA.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB7201
X-Spamd-Result: default: False [-0.16 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274952-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ti.com:dkim,ti.com:mid];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	DKIM_TRACE(0.00)[ti.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vigneshr@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 6679927EDE2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Shiva Tripathi,

On Mon, 09 Mar 2026 15:46:50 +0530, Shiva Tripathi wrote:
> Add EIP76 Random Number Generator (RNG) node for AM62L SoC. Unlike
> other k3 platforms, AM62L RNG is integrated outside crypto subsystem
> at address 0x3b100000, requiring an additional entry in cbass_main
> memory map.
> 
> Mark the RNG node with status "reserved" as it is intended for use by
> OP-TEE for secure random number generation. If required, this hardware
> can also be used through Linux kernel by enabling this node.
> 
> [...]

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/1] arm64: dts: ti: k3-am62l: Add RNG node
      commit: c9c61275fd270c09e1dfe82794f90ad10604fd5d

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent up the chain during
the next merge window (or sooner if it is a relevant bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/ti/linux.git
--
Vignesh


