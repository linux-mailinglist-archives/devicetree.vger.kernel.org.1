Return-Path: <devicetree+bounces-274968-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4EHsKHHGs2kqawAAu9opvQ
	(envelope-from <devicetree+bounces-274968-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:10:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 098B627F580
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:10:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7D602319907C
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:57:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1795036EAB6;
	Fri, 13 Mar 2026 07:56:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="J2eY4imY"
X-Original-To: devicetree@vger.kernel.org
Received: from PH0PR06CU001.outbound.protection.outlook.com (mail-westus3azon11011042.outbound.protection.outlook.com [40.107.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8CA415530C;
	Fri, 13 Mar 2026 07:56:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.208.42
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773388580; cv=fail; b=hrF7rB5Lmj03Jp+SVZbBcdl0T2H/lWlA5c9KbKf3fqLDH3dmjiazErgmTQvp8D6vfV5Tv4GY3yRv3udb5eEyc8gLtUgl0g90S9KMoUWeDSSPEoBInW4QYgi6Y6YQN8p2TkhGFPJD6TecRq1SfUYc4e0JOlAD1lWmIEz5/U5MBgc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773388580; c=relaxed/simple;
	bh=RenMJJxDzboqkpdCDQRPHOX1TEPhwrsYDaZIC2XjKeQ=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=cVZO5vY5u2LEYZoFLX8Ju6lb9+lPUzUrGeIX2h6JYbKYjzLreLfUwIVZBSxmy5cafJtIwUT9mSaQ3mVbLn3stNKrEh4mOU66uNAi6og0KJx8V/WIqLorNwO/FCEQ1+Gdp9QrD2yLRIA3jNORNj/AURvZimLBf/nmeFS4PfLyMRA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=J2eY4imY; arc=fail smtp.client-ip=40.107.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d5f4XCMZcdoCua7ZNQrJdzz75FtFLLaiIta6Zjb3hOSjOUOPXRrPEGBYgDh9LTu5pZUlxJY3+gZpjlXQnwRA1ZUng1a3SeqKy7yoFwLux0+miE7f6lYND6jBZ2QgowtzbhNdupS9LoMnsickqUriSnQEqfcM52QI22x1lkfMVySmNsa4zpZxNaMOT7TTcJCYZM8dwJwmrF/qhvEhzSG3TDsXwz/HgdSAeoBPld3EfZQNIqHg2p8Tai+3BbZ7VXI0zynxTVlgqzBTK2ntXTpobV5fbGNOE/aOCB3n6vNHcRvGr3KEtReO32MlFAxIwTHO0j2r9yo8wpKHBkv01LyhUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M1zD0Umc8gx5juhNkbMkTxJAH+XQuSkmuGynP//esYY=;
 b=eroUmHADCHL8Q3kjmlMJvKITS1NvWOZF3DudZoI9wUDGxthP7qOSxq65I7aRjB5XzsMOAEYr6EfAW41ykk3gkMLKJT5t50hijyOa5dPuyOpIQaii0DazrqkdwYWL4WwDe3HAJpLG3Owtyk113P8ZF0WwoK/hNYXQBMnAc8O7ef2WQQc/oaAhmmphwBhr5VgkHUa2xIOFjqD5VUjFyGTBYZsHDPLyV8ABAxi1QoueD1UKvx69gAWNeP+B4MImiNbwp4pA3QmS+tQbJngklO0Bqmfg7P5VPKzuo0c8Mn3U95rO3oaXUyns+W7jioNrK0UmeKx3+M3hGyL8hcdpfem6CQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M1zD0Umc8gx5juhNkbMkTxJAH+XQuSkmuGynP//esYY=;
 b=J2eY4imYPqWqjzWxeptCiLzPOmbN2d70Q4VKrCokPEG2jE1fSl7FzuAdGMin+wF0l/lAIzn8x1PvQTIhrfi9W0skzKsAhEzlUUS7D2o73w2wf3yLYnKhOcydcqr5Y/USAtqeheEnbElLAf31uRa810UQ9P5nODcDB/A0mVrD7t0=
Received: from MW4PR03CA0346.namprd03.prod.outlook.com (2603:10b6:303:dc::21)
 by PH7PR10MB6457.namprd10.prod.outlook.com (2603:10b6:510:1ec::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.15; Fri, 13 Mar
 2026 07:56:16 +0000
Received: from MWH0EPF000C618B.namprd02.prod.outlook.com
 (2603:10b6:303:dc:cafe::c6) by MW4PR03CA0346.outlook.office365.com
 (2603:10b6:303:dc::21) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9700.16 via Frontend Transport; Fri,
 13 Mar 2026 07:56:15 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 MWH0EPF000C618B.mail.protection.outlook.com (10.167.249.123) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9700.17 via Frontend Transport; Fri, 13 Mar 2026 07:56:14 +0000
Received: from DFLE207.ent.ti.com (10.64.6.65) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 13 Mar
 2026 02:56:02 -0500
Received: from DFLE200.ent.ti.com (10.64.6.58) by DFLE207.ent.ti.com
 (10.64.6.65) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 13 Mar
 2026 02:56:02 -0500
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE200.ent.ti.com
 (10.64.6.58) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Fri, 13 Mar 2026 02:56:02 -0500
Received: from uda0132425.dhcp.ti.com (uda0132425.dhcp.ti.com [172.24.233.103])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 62D7tvFG3857268;
	Fri, 13 Mar 2026 02:55:58 -0500
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Kendall Willis <k-willis@ti.com>
CC: Vignesh Raghavendra <vigneshr@ti.com>, <msp@baylibre.com>,
	<d-gole@ti.com>, <sebin.francis@ti.com>, <vishalm@ti.com>,
	<s-kochidanadu@ti.com>, <linux-arm-kernel@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: ti: k3-am62d2-evm: Set wakeup-source system-states
Date: Fri, 13 Mar 2026 13:25:51 +0530
Message-ID: <177338196937.240421.2671267752481289168.b4-ty@ti.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260212-am62d-can-wkup-dts-v1-1-d2de17e1f303@ti.com>
References: <20260212-am62d-can-wkup-dts-v1-1-d2de17e1f303@ti.com>
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
X-MS-TrafficTypeDiagnostic: MWH0EPF000C618B:EE_|PH7PR10MB6457:EE_
X-MS-Office365-Filtering-Correlation-Id: f6b527ab-64c9-4438-d4a1-08de80d5ffd0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|82310400026|1800799024|36860700016|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	NUqWATSBCL7DTEfkwMaohePWNmdtoPLRuvDnogfD2j5yUrh6SssFk8Lt6e7O0bTAc6/t9JG9ufa2Hs0/5Wr39VxKIPPj3ZoImBng2FO1mYEiJ4d2024wzWc+GOIwxlUE1z7WGYT/9cFpGHE2k3XTM5a5GEavuqu6RsYh6mDlvCIa9oWLvvAM07yo/RYUZUZ3H/HPXt71QVj8oefVySxsox6qOczAflGqlip8MBT79J4GAiwjdvaoHe6AJJ9Hct2BrYBL8BOpCslWIlyNESt3lZEIF1j+ETcSWodFjK9dIpVSuureiOXpGdiVFrjaZC6CTn4OeAzUWkZpDZ+Oj0g7tQnmnFIsvjPD0l9+IBF/yLMsKkQB/v1dAkYkTSbPEt/sjuectYaMYZs6/v/x9fQuEhXaiU/V7v5uUVjrfrOsIatHDC4LvOteR6g7x21Z6hrmLhac2srsq9sVsnK2ceE7Mg0OuExqqpY8xQ/C7hIRHxVfT9NXOUNDg3M1Nq3+5D1y0eJZv53dDuUUAt8Pkf9ikdc23PUPtcnBwxPrI8HlHMN0KG+e/uVMhOl1GcS47hHTzUfKHwjUKCwJfDJMtLGZ/2X/J1MfmUtDoiLw1rt2ja1bo3ebZrqWmLVC5mili9hrv7QThABJMiPGXrEYgcdvpBv+XTmlm7RcKVwj9xFiWFcYUPZ9eXIcvl1HSMg3+z+BHGkQ3EZDo4O/TnnCaxvt21lx7HVLMf/PwHd+skVht+g=
X-Forefront-Antispam-Report:
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(376014)(82310400026)(1800799024)(36860700016)(18002099003)(56012099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	Yig/1cTHU5wkrlYpE4LGeK0MVSNjlFKYq/q3aqtkwcLaLmr3pcJMtoHEG8QFQiJr8G3znaKj5poshFvfqOPVjvF1O3F5iTv5vT0/MyKjaS8ML5nIof/E0hVlfRIIGQqYJ3t6GoEc4Xu4xoptJMhRrIfIcRyOi8HDTGXcb1isv4nYTUUtX4D6OuMqO8pXgbI2J4X2VYFgDJwG9IOkTWbny2u6sDmWqTBX+K6nOHY00g7vy+zTBaRbI7EaAEo9IC3QwxU74jm8jF4WMygKEMC2Vo7U1qNpl7R6zoJeDixg05yXVgs+jGJxBSD23uslcLJNOFO7wpIy/PtqCqmXySfPjO/8hgUj//3me8sXGEPHjtD2rt3mBjvHzSI1zPzAxOSVo3P2H04tLqJ4NgR7uznQrPzcEesqSZ+k+ytKexvS1VQVgl62V3kCg5a0UW9DEQwZ
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2026 07:56:14.0159
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f6b527ab-64c9-4438-d4a1-08de80d5ffd0
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	MWH0EPF000C618B.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR10MB6457
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-274968-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ti.com:dkim,ti.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vigneshr@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 098B627F580
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Kendall Willis,

On Thu, 12 Feb 2026 14:07:16 -0600, Kendall Willis wrote:
> The CANUART pins of mcu_mcan0, mcu_mcan1, mcu_uart0 and wkup_uart0 are
> powered during Partial-IO and I/O Only + DDR and are capable of waking
> up the system in these states. Specify the states in which these units
> can do a wakeup on this board.
> 
> Note that the UARTs are not capable of wakeup in Partial-IO because of
> of a UART mux on the board not being powered during Partial-IO.
> 
> [...]

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/1] arm64: dts: ti: k3-am62d2-evm: Set wakeup-source system-states
      commit: d170388d5c80d3812811b02fe0ce13a5f90796d0

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


