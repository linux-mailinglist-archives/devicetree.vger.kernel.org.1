Return-Path: <devicetree+bounces-250258-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E866FCE7C41
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 18:46:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8CB233015ECB
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 17:46:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC89B1F9F70;
	Mon, 29 Dec 2025 17:46:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="rmYdFs5M"
X-Original-To: devicetree@vger.kernel.org
Received: from CY3PR05CU001.outbound.protection.outlook.com (mail-westcentralusazon11013049.outbound.protection.outlook.com [40.93.201.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302501A23A4;
	Mon, 29 Dec 2025 17:46:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.201.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767030413; cv=fail; b=tyQpJUORM9S/zDSx1FCibmTS/uFdCoF9p3dEoD3jtjYNsIvoqsRl40H1K9S3WAhcjI7S2ybHjQGbBEu8PR2+9Hr1H/gFUC2+WDLYbpR2P0Fc3s+sWxSy605MxB+BAYW9fgaJKNbU55jZ2pZAES+dWtUoDv6AJdNdhgYV33hVAoc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767030413; c=relaxed/simple;
	bh=P2jRmKJzYZ3xu5o39bBBesGfoPM83+pm0mX/IQ2lzzI=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tEa2RSzLc+lDUAgfp3P7ZJtwqppf4KBH1jH6sN3w9h708uLvRu8MZuwG+AM0Mzb68IV6yAQikQYEWq+dw9POZw2c5oOhek9BJjZQfXAlgDJ1zZHyFv7QkkUQiq6pwNVlU7uvASn+cHaGwFJ4yoTJoV4wKXtyIlv4UNxxoM8jqGU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=rmYdFs5M; arc=fail smtp.client-ip=40.93.201.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=focfwOgeRVFr+CfQgQegEfMEY9OTQBPFXuhucjRfFM0J/eoIWb/gWISQB9IFvJ8EU7JR73Xg+97ZOw4YTvuw4usFjVkVg3s43cbCCi5NGwKt0Wh793agDCz5Eoetp8Qeq6PP1Bh7MBNZnsifQqtvLEnLqkEIewE3rNA4uvVUR3DH1UticnJ8dc0nG0J3gJQgprOYpAtMSH0yKheTb4nURt8sklh6i+aMeL0MtW3oTl/MA9hs9jllX5WF4zMSNwov/kVzj54dLDG+zsgrGcvn6Kyg9yqWCUTr5IdpurRKn3w1lJIhY3dkbDoZD6rJJlvIHEqKm95BnpvU6v0spKxwJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hKt3PTdKyup0ZpHa/Rojy0uR22JX6EgDm5xP2LN5fUU=;
 b=aqQFrIwpxpIwbSTBHFBwztVF5RpAQ+Mxxn7IID3BTA52QidbHs68Nkd1MLuiCEiWPOKIQ3YYjsf/CPEDsHfXejAOlfZHXnC0bb2/IhpXtCsB/HyI8NwdyNQYoyq4oEx6TYvw//J7JHHELVMQo6fen1HtSvmEDz1Gw+RzQsHCst35wK+FtCf7Tt9VU38Vqbs0qSPAvmrY5/3WLZq7paitbuXTA5fQkfZQ8yw6AZgQddiOPtWJGpISIHtEkMjPyRweN+MRdexQzVCIeWLYL7p3ADHbeAx4UuFtmy+sKGlmQgVuy0VAC+8rbJfnbglVVRMBZ9Ba/WEqLo3bAVuL9j29zA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.194) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hKt3PTdKyup0ZpHa/Rojy0uR22JX6EgDm5xP2LN5fUU=;
 b=rmYdFs5MDVh2Q8V/aa0SbacenYYFY3RECDu+p9Y1wV662n01g3C4fuzcvtckwTpZ8/ahKcUi9CDHO+AY6674gA9MGPGJ1bcgyN026dJ6yURAsjXG/FpyW+jPRkq5VrQsbT9DELF2qc6pn+bAVtjVKc2xk0pxDzY/qE18IPTzUNQ=
Received: from MN0PR04CA0007.namprd04.prod.outlook.com (2603:10b6:208:52d::12)
 by DS0PR10MB6702.namprd10.prod.outlook.com (2603:10b6:8:132::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.14; Mon, 29 Dec
 2025 17:46:45 +0000
Received: from BL02EPF0001A0FF.namprd03.prod.outlook.com
 (2603:10b6:208:52d:cafe::bb) by MN0PR04CA0007.outlook.office365.com
 (2603:10b6:208:52d::12) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9456.14 via Frontend Transport; Mon,
 29 Dec 2025 17:46:34 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.194; helo=lewvzet200.ext.ti.com; pr=C
Received: from lewvzet200.ext.ti.com (198.47.23.194) by
 BL02EPF0001A0FF.mail.protection.outlook.com (10.167.242.106) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9478.4 via Frontend Transport; Mon, 29 Dec 2025 17:46:44 +0000
Received: from DLEE210.ent.ti.com (157.170.170.112) by lewvzet200.ext.ti.com
 (10.4.14.103) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 29 Dec
 2025 11:46:39 -0600
Received: from DLEE210.ent.ti.com (157.170.170.112) by DLEE210.ent.ti.com
 (157.170.170.112) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 29 Dec
 2025 11:46:38 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE210.ent.ti.com
 (157.170.170.112) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Mon, 29 Dec 2025 11:46:38 -0600
Received: from localhost (uda0133052.dhcp.ti.com [128.247.81.232])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 5BTHkcfb3846552;
	Mon, 29 Dec 2025 11:46:38 -0600
Date: Mon, 29 Dec 2025 11:46:38 -0600
From: Nishanth Menon <nm@ti.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: Anshul Dalal <anshuld@ti.com>, Tero Kristo <kristo@kernel.org>, "Santosh
 Shilimkar" <ssantosh@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, "Andrew
 Davis" <afd@ti.com>, <linux-arm-kernel@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, "Vignesh
 Raghavendra" <vigneshr@ti.com>
Subject: Re: [PATCH v6] dt-bindings: arm: keystone: add boot_* mboxes to
 ti,sci
Message-ID: <20251229174638.btuhliymlmuy5op3@submarine>
References: <20251222-k3_syscon_add_boot_mailboxes-v6-1-b93ada9f1d47@ti.com>
 <1844147d-543d-4739-a1ec-a59f8a4564fb@kernel.org>
 <DF5GPF5U7NPA.2ODE22YOF8E1R@ti.com>
 <e516b73b-2dc3-4ae4-966b-278a946491c8@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <e516b73b-2dc3-4ae4-966b-278a946491c8@kernel.org>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL02EPF0001A0FF:EE_|DS0PR10MB6702:EE_
X-MS-Office365-Filtering-Correlation-Id: 3221527c-4ab9-45d9-1d14-08de47023b88
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|376014|1800799024|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?VWx5ikpjdSZwnBe1PWYRQN7spy93PgTVT1O3yAdCGsBwvDnFf4Bwq1qrCvXi?=
 =?us-ascii?Q?/TGWI5gqgVznJPB2yevsmxwATd3E4WUBPbLEsEc51lu4RkPqwqd40b7YgmUm?=
 =?us-ascii?Q?Z8pBKYPbQlPC8p1WoYmPUsz5oiQnYB4Z0vvBUqFvu9B8P5uU829CPoyNimVk?=
 =?us-ascii?Q?PLQujJLHeHARtQSxy55cG+vaG5i4hvB97lEN09grr4dk+nOi0iOabfUlBggr?=
 =?us-ascii?Q?UKJokegs+4k9Kl3kKO5xAaWmexmZP1ekB7PSF94Wi9g4wa+Dri/oBuxTB3N+?=
 =?us-ascii?Q?rkf6GvfoKyRHOoL05IdrcuW5eo+AtnoLlGVlEKWnI32vM1qjr9nsSO5Ve2Of?=
 =?us-ascii?Q?XYQJ5v+dGvUA6VwyxKMzuTKlbChlJTTQJNe500thEIPf4tfVYnid0tuo31Nr?=
 =?us-ascii?Q?dQzqp+rxwnGxoyQpyNP9R0ostvCLl9GGAxrQ8kdIFVUYZMkFSQLZx5evpJbS?=
 =?us-ascii?Q?YY64FcRgCbRVykrGcTKq/bjUv3TXYVy+REPD8xh/nw62uuTZtnTl04hr8LYq?=
 =?us-ascii?Q?fNQRABY+a5vBJi2sT8UlZGRFmTPdLrve9YMqWihnRXGQJYxXRNfmNO8VowTH?=
 =?us-ascii?Q?ZNAjevWWmJDTFSiuSL36BoS+i9uZKSWvqoyZ/Ewzgz1EJPoQjXBiIFBa+NlQ?=
 =?us-ascii?Q?n7WXWXmcJfHBtXXpK3WfoTqQ1OtCP7wT5foECQwwsN9lt8ruQoRgzDz4KLPe?=
 =?us-ascii?Q?XuE+OvJGSu9SqxEzu63mWuE5Z+yNznMbpOe6lXOFHlYA/QS8YVAeGtCIA1Ge?=
 =?us-ascii?Q?NthvCDPWKW1Grw4ZLe5R5M+eyixhXVhB1QzHxPLZV99xyFH9hfQkxlWFM+cx?=
 =?us-ascii?Q?y9g4jcKkg7/dRHipS+CRa04EBHy3PPD9tuEyuGwauEMyz52nuOLfv69oMAhS?=
 =?us-ascii?Q?T+PM9OyHu2VJW1rqmgBXxuZx9gN0KetCLWMzGiWk9tUCHSkThqSnPVmaHDcJ?=
 =?us-ascii?Q?CEiawPuH1GXI8t0MaEl8Tjo1mewcdJseE8ESOt3MFRAA/tzGzo7Ot8pCbkCc?=
 =?us-ascii?Q?1kPXP257vrcDpoTYcj4JvjmIh0ZcG1ZMzTTU+fk4fW96OCTVPmh2XIcyCL5i?=
 =?us-ascii?Q?5zuyA9csvRex1dvwEP976lPto+373cYpMyHBpnGav5hkS/CgYYjwg/DyMmB6?=
 =?us-ascii?Q?sDBHi2YzQ0oKoN4utzHRpIra8Ws/+qTJFd4+bHq1GYjLGgdcVudRX/Tbvlak?=
 =?us-ascii?Q?AjElMzw2LAyrwLw54rkNBK5L5tz5mqV15IL2+0GhlB4a9cJIJgdJWtK34icN?=
 =?us-ascii?Q?BBjSOGgLaBqZOxon18mapjc+vAr3Il36e7AFQqtTuzSWSTEyqyfWYyWvbz8V?=
 =?us-ascii?Q?m515XzRLXcvKe/9L3SiioJD7WCSogYnYW7S4BUu4yubHFLwnAf3XV3dE+Abe?=
 =?us-ascii?Q?hNOu44WZfrYjA+yD63jJxrjpSsNeeR28bpe131PTbElC3pf8GnUM2Mzfs7uK?=
 =?us-ascii?Q?ovft5zeBa9AiAda3PkaU4fqz5Qz8KnXEa0BJ0yuI67VIVS5Z6Q7TE3IbcQXK?=
 =?us-ascii?Q?PX0d9GByr2I6eZOEWgfQtZxLX2/LM+MgDrFh77FR/fyeFafiBpwb+A/C+4mZ?=
 =?us-ascii?Q?+9135QXoJzYB+Giqywk=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet200.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(376014)(1800799024)(36860700013);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Dec 2025 17:46:44.6317
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3221527c-4ab9-45d9-1d14-08de47023b88
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.194];Helo=[lewvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BL02EPF0001A0FF.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB6702

Anshul,

On 14:40-20251223, Krzysztof Kozlowski wrote:
> On 23/12/2025 09:44, Anshul Dalal wrote:
> > On Mon Dec 22, 2025 at 2:23 PM IST, Krzysztof Kozlowski wrote:
> >> On 22/12/2025 09:43, Anshul Dalal wrote:
> >>> The bootloader on K3 devices makes use of mailboxes as per the ROM spec
> >>> which might be different than one's available to the kernel (firmware
> >>> spec).
> >>>
> >>> Therefore, this patch adds the missing mailbox entries to the DT binding
> >>> if the matching compatible is ti,am654-sci to represent the mailboxes
> >>> exposed by the hardware during boot for the purpose of loading the
> >>> firmware.
> >>>
> >>> The new ti,am642-sci compatible is also added to represent SoCs which do
> >>> not expose a "notify" channel as part of their TI-SCI spec such as AM64x
> >>> or the AM62 family. The newly added mboxes are made optional by keeping
> >>> minItems as 2 to remain compliant with existing device-trees.
> >>>
> >>> Signed-off-by: Anshul Dalal <anshuld@ti.com>
> >>> ---
> >>> Changes in v6:
> >>> - Added ti,am642-sci compatible to represent SoCs without a "notify" channel
> >>> - Added new examples instead of editing existing ones
> >>
> >> Why? Rob asked not to.
> > 
> > I had followed what Nishanth had said[1], I'll wait for him and Rob to
> > align first before posting the next revision.
> 
> 
> Existing examples are fine. There is no rule saying you need to keep
> updating examples or keep adding new device to examples. If someone told
> you about such rule, tell them to stop inventing rules...

As I had responded to Rob (the reference you posted), leave the
existing example in the binding as is, we do not need to add new
examples either for each of the compatibles. We have enough examples
in device tree now. So, IMHO, just update the binding.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
https://ti.com/opensource

