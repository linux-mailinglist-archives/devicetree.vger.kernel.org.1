Return-Path: <devicetree+bounces-247979-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF4ACCD524
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 20:05:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0A8E1300B918
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 19:05:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93456313E1E;
	Thu, 18 Dec 2025 19:05:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="IygKVGCv"
X-Original-To: devicetree@vger.kernel.org
Received: from BL2PR02CU003.outbound.protection.outlook.com (mail-eastusazon11011021.outbound.protection.outlook.com [52.101.52.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79435226CF6;
	Thu, 18 Dec 2025 19:04:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.52.21
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766084700; cv=fail; b=FxOEqLfu+zcX8IabeO0dMDvT6VoHfDJBfFvpuMTYkZenLJsW7FSuqmRsSWhKvBRvR8DvcT7li4tQl14i/ZwC4h0zZi+pf+c8460oFrVq+JEXFReCiwZLrCBLO40topFjVD8Cm70gx8COf6QBPTuLMaO105MwDqwVYRCGQKPfXQs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766084700; c=relaxed/simple;
	bh=V7nbjHSB+7puHR9QNe8yT50hk6oQq3VzsSDKEQUWC6Q=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iQ6tg3h8RU4n2oGVBz2KeuHikQXwQCUvSaZWPVzJtevq2Cg2NznCu8PDrx625b8AUqEaSCYZSYS4ePUv8R+0/NO26t3xNqEct6wqnRlAOAKUmftbjvm2VDlqzVRArLiiDImuff1+eKxejDoJZUrC5p/ZdyU5IhV2NNVtMKetIbo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=IygKVGCv; arc=fail smtp.client-ip=52.101.52.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A4bI1fTbAMahL8nxWIKJAv1Pf28uqHxur4KTcgPLIwuu3UCWVMwZqUGP/vhReUx7e3RsCiTRZCt6pw3cmUXMfpwe2GEjoV1pG71FOhu/IUkgU1K9Fpx8ce5Z507Yl+qHjdUdWYH8PJn8ScJpW9eg8tokoKBUDzqV+IjHZT1hGtZSZepZ3zplBPxnAPYyFamtqHe5oa69dcDAQVGz2pLeBHfU1mmCLHOJ9as2PwvZVG+2uAxQajsVHeDk4c6M5sUL0iuXWUQ+h136VqlxBJflYGU57pj5N1cetaQFVNwoTI8kCfIntioQW+26SYGVwMulKG4aSGiqHtztEZkrZt895Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eAphim/8lNJpWq8YT85qZozcvip6tRTa4pz+GNjLxJQ=;
 b=A9Cyb17bcrfK/SThIaWlVfv6AnQkP++nHSZD/wXgEqSN0leaiwxM6t3x5nBcjw0VfosTP9YNx5jEjOXmBKtRNpzoHi26Aqa/fjsUoY6ZP8O/xSCBhNOXCNW9+7X3VS1estE9Ezr6uaTcgtj66C8CLdPIbsQH/0G8JQaSxcTTUWlUcxUGO1OPbFmKf6QpkIM8Po30m1ut2CfHf8xkiv2Fl9jpZAOyKLaOFtWzvLqLUPw3O0dvr2ty5fAjDm3gROXcyk6Yh0hC8KR8lzEvKlqP7w969lT30YA/0QFsjn9bmSv089cOkP/Uxp3BdIGs/y/ScFNm7BzU0jYpIMOqmUDn8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eAphim/8lNJpWq8YT85qZozcvip6tRTa4pz+GNjLxJQ=;
 b=IygKVGCvY2G0H7SCPK0Liut40tn1KWQuBB6Xi9fhyHAfgD0mUCUXqfVEoJARLPwCvo2tWTcl0KrCqQhV6/rqNk0LRhTgQQ8AsHdnOY6cwR7Ntnx/hjawtcVl97JhG8VMJAf49PaDMdgrHcxTVRBHa807/6OyPP64OMz3XAFEdMQ=
Received: from SJ0PR13CA0078.namprd13.prod.outlook.com (2603:10b6:a03:2c4::23)
 by LV8PR10MB7774.namprd10.prod.outlook.com (2603:10b6:408:1e8::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.6; Thu, 18 Dec
 2025 19:04:53 +0000
Received: from SJ1PEPF00002319.namprd03.prod.outlook.com
 (2603:10b6:a03:2c4:cafe::24) by SJ0PR13CA0078.outlook.office365.com
 (2603:10b6:a03:2c4::23) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9456.5 via Frontend Transport; Thu,
 18 Dec 2025 19:04:51 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 SJ1PEPF00002319.mail.protection.outlook.com (10.167.242.229) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9434.6 via Frontend Transport; Thu, 18 Dec 2025 19:04:52 +0000
Received: from DLEE212.ent.ti.com (157.170.170.114) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 18 Dec
 2025 13:04:50 -0600
Received: from DLEE200.ent.ti.com (157.170.170.75) by DLEE212.ent.ti.com
 (157.170.170.114) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 18 Dec
 2025 13:04:49 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE200.ent.ti.com
 (157.170.170.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 18 Dec 2025 13:04:49 -0600
Received: from localhost (uda0133052.dhcp.ti.com [128.247.81.232])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 5BIJ4nIT3789119;
	Thu, 18 Dec 2025 13:04:49 -0600
Date: Thu, 18 Dec 2025 13:04:49 -0600
From: Nishanth Menon <nm@ti.com>
To: Rob Herring <robh@kernel.org>
CC: Anshul Dalal <anshuld@ti.com>, Tero Kristo <kristo@kernel.org>, "Santosh
 Shilimkar" <ssantosh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Andrew Davis <afd@ti.com>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>
Subject: Re: [PATCH v5] dt-bindings: arm: keystone: add boot_* mboxes to
 ti,sci
Message-ID: <20251218190449.cnp46cf6hikt6cqa@freebie>
References: <20251215-k3_syscon_add_boot_mailboxes-v5-1-5a8fe567fd31@ti.com>
 <20251215135708.ij5e7jr3binzmlbf@panda>
 <20251217125747.GA689283-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251217125747.GA689283-robh@kernel.org>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PEPF00002319:EE_|LV8PR10MB7774:EE_
X-MS-Office365-Filtering-Correlation-Id: 94ab8923-1b9f-4396-b673-08de3e685347
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|36860700013|1800799024|82310400026;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?aoTleKRAs7LpPmpp1coOQCPgdHT0fk9ciWEM+462N0CGWoHupXzK1zNX7efg?=
 =?us-ascii?Q?+XTUx1E+Yy9omC33QamFD1nCpPnVXhojacchdWVBgpGQA5Z1KOYjuPCxUUJd?=
 =?us-ascii?Q?IG6AWRMA9+Dqc5PQY8KkAOp4SQ3b752FhZ6WNWCpj1FZjANIQnnjk//eDfet?=
 =?us-ascii?Q?Ro/TixOLLTknLwa18rkxag9nJcLu8XOnizkeSs3YrPdj3sU5YHAK3OcY9viM?=
 =?us-ascii?Q?k0kXwB/p1mb1FMC0n3wglbUDdngCZlswKOUnc+0OrLYNBQA8Zx6JbJ1VmuT5?=
 =?us-ascii?Q?j6sPSvKPdtgeHuXXmenE+BTW/2jgpzWxrblbVb/RirwZpVnc3QCdsl5ELVyM?=
 =?us-ascii?Q?ALi2qSkSL/4e7AuaN5I7eWgVc521UQbEVW8wRENMsCvaNpNEl9EoMTrUAAQN?=
 =?us-ascii?Q?mqjWL53GPT1RbcIVi3Gx7T6YFP/9JXltgI6woFurqspAGjEtFWDNRfmt9ief?=
 =?us-ascii?Q?f5g6yB2lihPJ3R9sFd8wtavOPZp7QXbUrfjRFiGORWpmu7uW9OSVAYYqG89k?=
 =?us-ascii?Q?nvKkyr3mZNBesqqKRxiid2aCtgRzk+TlKr37K2pjaRu0wH2RFpgXLkON6kxZ?=
 =?us-ascii?Q?Dn1YQcKKpQW0MV4pmX0Dt3Uka4wGBSlUKMk4V7JQf8DC0ohatUrUIwNkOUhj?=
 =?us-ascii?Q?CazX1MNpJYPifiLoxZBTVHcXRaBZ3n4Q4WsP6UR3HIi+WY0H25xM3jkG5DTL?=
 =?us-ascii?Q?HwTxFJPOYubw5b989NqZQcfSZXz6yQ0wZuUyUYOlRSD8T12mAnlL84ZuOkiu?=
 =?us-ascii?Q?NvxRRjZq7pEQpk44MdQR4WTUF7fb75imYrgl0vz6dD00K+VSDpOo+cToN5kA?=
 =?us-ascii?Q?Ow4qsFFOHRV94YKqDmWd2oEtlvJM5P4UQl8ejKNI89IvkpTFDH0CxeO53oE/?=
 =?us-ascii?Q?sIdsj0H55rqFRDD7NVSsJY78lSUoHgvBtfUgO9keIGPbnlyfTTOC5KOfnFlx?=
 =?us-ascii?Q?2/lOzveE8lKJDbeR7+6ZYIgQAwZ8vhAt96tvjwbNcu8HJyn7AXyB+C+Wpw03?=
 =?us-ascii?Q?CKw+t2i7YXoqoFe45th1Ft6tr3jHT55mMw3J3PJYqbv8Xz5E/+hQghqzNvAA?=
 =?us-ascii?Q?VM9t6L46aGD1UB2MatjnSz2FJD4QH3ubDfxnlvxkB01O3mJS4vdikECZ7jBr?=
 =?us-ascii?Q?pvfYLNxqVBEsW1RsI0LrLe7I4RJ2H4QtcMO+QYlvQNM/xxagZmGHRrpeqIyj?=
 =?us-ascii?Q?IdYHwnDMVZZ7/CgT5wJCUvVZCa3eeBtpZt6Lnytxw7jTpmZ8ywqYE3fP15d4?=
 =?us-ascii?Q?tq+PYawxDIHqI1t5rbqO/y/qUiGJaW7uwGf94uDLzJI9RkEAmO51G9UoxQiD?=
 =?us-ascii?Q?AHJ51cGv4cdG/IVmDL8pPFSH6SX1bbaHQq2vp8Lfw6cfA5ejWieron+UQyCF?=
 =?us-ascii?Q?LmTycv2VW8tBnKU62UfJddV5zYw70F1KXJ3JDu2PBwCD1f1H4uxUBA/rZvHo?=
 =?us-ascii?Q?A5ZNC8aE9XCOe1JQm43p12xf5Us/bZ9txRm5Fm+zn2XIcp6q6tbEJCue8Hcf?=
 =?us-ascii?Q?B4LN0rxjTPGYnCGIHqrUa2OPpDnhJLOE+ObClm6q0Pb1Z9/QQtsVGzlc3v3S?=
 =?us-ascii?Q?5k5YxhvL0FoIMHGDzt8=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(36860700013)(1800799024)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Dec 2025 19:04:52.7120
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 94ab8923-1b9f-4396-b673-08de3e685347
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SJ1PEPF00002319.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR10MB7774

On 06:57-20251217, Rob Herring wrote:
> > >    - |
> > >      dmsc: system-controller@44083000 {
> > > -      compatible = "ti,k2g-sci";
> > > +      compatible = "ti,am654-sci";
> > >        ti,host-id = <12>;
> > > -      mbox-names = "rx", "tx";
> > > -      mboxes = <&secure_proxy_main 11>,
> > > -               <&secure_proxy_main 13>;
> > > +      mbox-names = "rx", "tx", "notify", "boot_rx", "boot_tx";
> > > +      mboxes= <&secure_proxy_mcu 6>, <&secure_proxy_mcu 8>,
> > > +        <&secure_proxy_mcu 5>, <&secure_proxy_mcu 5>, <&secure_proxy_mcu 4>;
> > >        reg-names = "debug_messages";
> > >        reg = <0x44083000 0x1000>;
> > 
> > Please add a different example for am654, i want to make sure k2g still
> > continues to be checked.
> > 
> > That said, AM62 series of devices do not use notification pipe for
> > standard communication. So, the schema will break for those.
> > 
> > in summary:
> > k2g: rx, tx
> > am654, j721e, j721s2, j7200, j784s4, .. : rx, tx, notify, boot_rx,
> > boot_tx, boot_notify
> > am625, am62p ..: rx, tx, boot_rx, boot_tx, boot_notify
> > 
> > we will need three examples, and will need to add am62x series as one
> > additional compatible.
> 
> Do we really? We have a whole tree of examples in .dts files.

We do not. But, I would rather leave existing valid example as is rather
than modifying it for a new compatible that was just added.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
https://ti.com/opensource

