Return-Path: <devicetree+bounces-246120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 797E0CB8BA7
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 12:37:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BDD8C30C27D9
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 11:35:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 482CD31ED60;
	Fri, 12 Dec 2025 11:35:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="SasdYDNA"
X-Original-To: devicetree@vger.kernel.org
Received: from SA9PR02CU001.outbound.protection.outlook.com (mail-southcentralusazon11013000.outbound.protection.outlook.com [40.93.196.0])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F10A31D727;
	Fri, 12 Dec 2025 11:35:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.196.0
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765539337; cv=fail; b=rBCF6aI8e0ewkFx7U5vXeqL28E7BdTSjjm1KEdWF701GLWmqwKqkaGentkboa1Zv1gMlCZUwHbhR0WjQAavm1IVFZXMwgAAJ5JZuEs2snAZEBUglnOAwRHN4Fz1RRknlAVAPPxohvJ6FJcZ/5HkjoSAceCifiWV1/eNMiOwGHGg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765539337; c=relaxed/simple;
	bh=aEDZUBd1XpvZyIivEYHJ+qxjXXNuojDQVrgHD+fYp9Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=E2nsodb9kBsZ6m7rH4kFPyPSy/t22MFZKuAO1K9ImMmNwlsff+GzQCT2+cpKD+Ere7fQjM0sOBM/JoVmr+IWd4KPs/iC33CLi3MDU4iGelqAqJn51biMsV44JGNE6Uxd/vO4ZOb6NIHhtvzF0v1ZRJOaNfQVaa+AlPgSM4AK3Sc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=SasdYDNA; arc=fail smtp.client-ip=40.93.196.0
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h7Ltb/vV5Rqdo5UXWiaZHZ6nGj2g3UoooW5JcR8OFGCo7JdYLg6YDFJm2BGWZiQ48CZUx9RHavcCpvJJCo9sN6KRCftk9NZ9aqLJZCgTStELwbHtI46cnwgOzhG9LE7Lgav0VZiLoCNolrWOv47S4YHDEq2L+62TsROghdQJJHXepOFb6xAvh+tvVh4sUDSqAMtoF0CmYUEkDlL4EX4/L1s5wpMHjsPkyu+ucTzIGReJhN0TmW/WdyVigKKYc2yB6d05rIEmIx7CkckD1kgusjOiGGdDWLPc19fSqo8HZi8PdXwKQyALH7QHstoQkpvWBv2XpaFdVFaGvaOGD/+VzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gOPpAx5ivausbDSotwI4vIzllo+/Lr1uVrFa4B6wYWE=;
 b=RrVEwqpefwrgwRjlz3QXVwZ3PmZr8cMaOlB4dbSDhBYa/S5Fa0EfapS6PuXQXllUlk91Ml9pKKwACT+psqdgm0jg34ctaC7rDfINWtsNjIgQjcoyl4jZCXoCdbFxgVcBBKAzeEAVv5LIXjkhjkL/4FHNEPGZ/ggSQkX467yqPwC4gXa1+N0gHV8AWjse16d3UkjBlgmZOEIPQYlVf2eyNoFCoLnQ0UnU4qX1uS7Ad4olBzbPkJlIBP4Tq/IV7KIJ0PBKOd+6xnS+ipZKWlpPMrjcUlMTNOpihBUJCU9taypUWhlf0dlklfjnUNQkyrA0uXOFb3q9+iWWvywcJxCl3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gOPpAx5ivausbDSotwI4vIzllo+/Lr1uVrFa4B6wYWE=;
 b=SasdYDNALI/OkRHOs2gNXh2+Nmap+vXiNJpTKc0UgefjSFEyB2xsUqMe9X8BRdDd8SpCmdN8mSlhGhVjdLTnfamXd0kkKPLP9pIQBWIphNbE8mLr2dXdTYdCwZUdyTtwXuypW9LmxNGyd+ilcVRDNaXnN+8xqR0mKGtGxlG8NOOYt5yNJs6VulZjhTKG3LaLhZ3qDH3Qa7fO7L0x4k55a8a8JJPOMe7yqwV8hjYhhICPZHk3NEnMr+pEkrftNtcWuNLX5KKn2VcZNIe7DMdGHDeRBzFqPwsZIm5zUmEj+kLBSli10fDAVusqZCKT5cHhCpN+gpvGhQZDibU24oxw0g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from MW4PR03MB6555.namprd03.prod.outlook.com (2603:10b6:303:126::12)
 by SJ2PR03MB7473.namprd03.prod.outlook.com (2603:10b6:a03:554::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.12; Fri, 12 Dec
 2025 11:35:30 +0000
Received: from MW4PR03MB6555.namprd03.prod.outlook.com
 ([fe80::9efe:fcb2:936:c1eb]) by MW4PR03MB6555.namprd03.prod.outlook.com
 ([fe80::9efe:fcb2:936:c1eb%4]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 11:35:30 +0000
From: hangsuan.wang@altera.com
To: linux-kernel <linux-kernel@vger.kernel.org>,
	devicetree <devicetree@vger.kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Thierry Reding <treding@nvidia.com>,
	Lee Jones <lee@kernel.org>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	Andrei Simion <andrei.simion@microchip.com>,
	Dinh Nguyen <dinguyen@kernel.org>,
	Mahesh Rao <mahesh.rao@altera.com>
Cc: Marek <marex@denx.de>,
	Simon <simon.k.r.goldschmidt@gmail.com>,
	linux-drivers-review@altera.com,
	Muhammad Amirul Asyraf Mohamad Jamian <muhammad.amirul.asyraf.mohamad.jamian@altera.com>,
	Khairul Anuar Romli <khairul.anuar.romli@altera.com>
Subject: [PATCH 4/4] arm64: dts: socfpga: agilex: add fcs node
Date: Fri, 12 Dec 2025 03:35:22 -0800
Message-ID: <7002e7ea3511cc4bd8ea3a1ee8944ebf2b7a81ee.1765534135.git.hang.suan.wang@altera.com>
X-Mailer: git-send-email 2.43.7
In-Reply-To: <cover.1765534135.git.hang.suan.wang@altera.com>
References: <cover.1765534135.git.hang.suan.wang@altera.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR03CA0372.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::17) To MW4PR03MB6555.namprd03.prod.outlook.com
 (2603:10b6:303:126::12)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR03MB6555:EE_|SJ2PR03MB7473:EE_
X-MS-Office365-Filtering-Correlation-Id: e9bdbfed-c476-4e71-f033-08de39728d97
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|7416014|1800799024|366016|921020;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?b0t4uOwpu3DW3c7vzBpoGa09iHXcbjl9NpOWA+wa7vo1Rmg2oekzN5P/j+Kd?=
 =?us-ascii?Q?zu+cAM+A2LYvgD6Q9Mf8RT5kjIilHqjzdXjJywIhCz3PbGrYSHaFHJhBSwDM?=
 =?us-ascii?Q?d2PJrOGMdNZQlK71Cto3VmlvCaBozOCCavidTUUSthfEq2YL5YmNl/L9Avjn?=
 =?us-ascii?Q?d4whNXu9SPaQoRDd9N6Ypnyzm4AFB2Hj8whvQejyRKnaa4atxtOpf5f4VspU?=
 =?us-ascii?Q?KH1csaGnJyyG+vDx8jtU1eAUd/caLcjg4rGFlTEaeeA4NhySCya4MjingxOe?=
 =?us-ascii?Q?EWf4LW9VgiIT53zi1RXIFBPgNty89qaieHMCGZir73r31vLHgA1EROCVnOfY?=
 =?us-ascii?Q?h+SuICn32sgaXvmzG9xdeIFhcRQ+S0Ac1cEhVRNBfxElF9NqDGMLKi002roo?=
 =?us-ascii?Q?yp4iD1P3A3KtlBb1JdslBtzFkymuuyStkOpQgXe49duSytbKcO7hV41HWkFc?=
 =?us-ascii?Q?IfYE4zgih+aloVkvR8LPXCq2z0iVY6x3RHiKNy3JFUAuW74TbTaPW7vBo3qI?=
 =?us-ascii?Q?cKoASg37yUsIVlCPWEbQgJsnf0h0R+f1xQmrcyzjbmZA578Am7NufFalFdmJ?=
 =?us-ascii?Q?YrZppnr0252rlf/SbjLaT3qlStLBVmMtK6nDILMgp8nQeRcPxxzbP4S0ggWu?=
 =?us-ascii?Q?zO8wSGOlYvS2xi533c9DfQ1FeSPpYb7u6QtLStl6vVBKxSkxwsE8UF1L3n1W?=
 =?us-ascii?Q?vyuslUh7dtQIGWRde44WaXirltjjgyqSgy4sEEjqupknFdGhfsLPlHrzmtKx?=
 =?us-ascii?Q?/6SV9mdNM8RujmDpW2nXIviYmWVW62gJIW1hA656fUn2GfWozKJAvQpbo+ee?=
 =?us-ascii?Q?arYnPGx0HPRMfQe0QMWO9TUcaivV/Ish+Uh2BmaMw9oai6SD1qNoVU6F3O5d?=
 =?us-ascii?Q?u0S+vZ3d6kxYeRUqGPA42rRvfkQPgO+JVbrxY0l8GZsVuAO32HRZQIOIO5aO?=
 =?us-ascii?Q?CKQQv4YorrY2LAr4GlqWLyyMy1OxEonuKwFPpdjOD26sMUFQVV1I1rMpxTgA?=
 =?us-ascii?Q?DzaJnyxIWeuFzseruouSeuf0OHmrJ+kdsQBbiDyRUekhZPGpfQJGyMt5Qven?=
 =?us-ascii?Q?bBf8D8BRfBqnoqQ6ncvCvspKD+QXzO0aY9543dep6Zsc0PI3736WB/9Hv4IM?=
 =?us-ascii?Q?ezM6Ylu4rzWeSdl8UZrR8cUxUQAzGwFAxlDx5XN1X0hw/YeBzA4VjqRCrMom?=
 =?us-ascii?Q?iaU7SMMsLUZxKdrL7NN8qXpRPY9gfHK8XDH1N6JEDtdWGFo33G0PErPk29Nf?=
 =?us-ascii?Q?9gpx7uZ471FkPu+PcxTDhOCe1RECDjViFrLwDhX6s237QweqkxHdkQEIqed4?=
 =?us-ascii?Q?NwxlEGru0H9gOiJz/C20dWXsY7tdyk2ag7eXoPbyneqMlNU03XB27t4M4PcU?=
 =?us-ascii?Q?+tOKV9N/kNnenoMg7wuhVqxVcApff/ZtbXropMyas+HScl5B/XTd7Mk8Vsfx?=
 =?us-ascii?Q?wtvs/za7pn8CD4dySIA/mS8lvJB9VQx8GSnj0Xlio7zpasa4NEQAm/BSDW/7?=
 =?us-ascii?Q?8mA1KaMw0InXI8E=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW4PR03MB6555.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?PjRuudDcmZFD3JjLoxJfC/GxJb8Dn5dkJ4tb3sE4GB0kKAgsY8kUqxnEOsDt?=
 =?us-ascii?Q?Inc/3CqdROxQiMScT8bo4cZ0gjXIxhhjD9XvVean0gMWMMy69JsouyV1Q2M5?=
 =?us-ascii?Q?qROD+qSw38GFrvbw/uRgrAsXMNuu4xromKsUmZ64jPdTrrVQAKNHzX2noD+L?=
 =?us-ascii?Q?Z8r63Nn1RIVCGL0LwjrOZ1Dhun2NkrbPvzVymVU9qAh0ONWATxFmOru97XGV?=
 =?us-ascii?Q?DJbH/MWLb6NowvBKnCZZNmnLB6SA4/RhOuqg+DlCSw8K5HeIhSHWr4JgIDpO?=
 =?us-ascii?Q?qjrp7/tTJllQGUDiDZzIe+JanvI86Q20cgiFlrfWe24an6Jjs6coVgxS+5BO?=
 =?us-ascii?Q?lPSrOrTqZMrgVJkkY1rbV7ipOQ9Huw4vaTGg4zFEHcQfco9ef6uEPtLCeKvP?=
 =?us-ascii?Q?XaVu/XKH439J5qynR5OffAf6Qw86qzJcuvIChvv7ytja9xFfNUuUyAzJzq5T?=
 =?us-ascii?Q?LZGO4vakEmCdOHtbEdhUek/SeB/1Bxy4Cdopyt4q4rQb4qnC5ktTahOZJheg?=
 =?us-ascii?Q?hV6VpjJ7GUDgwNx2FQGIqUQJVpyucxACa++nnDGz3FANkMg8+cxriyXUiZbx?=
 =?us-ascii?Q?Mh+4nivSkWQdAY5h3lf5x2e27ZqUsASf4jY3apZSLVZiNSCGdaNrhCQiiH7o?=
 =?us-ascii?Q?A4AkcBWLZWZGDkzEVi38ER5N3UK4cuWJevJuQX6uKXSpsJgxuerpwSc4R2w0?=
 =?us-ascii?Q?VkmmzZq92npPrEmMrugc2Imj50rs3dG8SyMlFPjXKXlZIMI+bgiRXeNP0gfm?=
 =?us-ascii?Q?S7gpntsjWzcm9vixFsm+2DeX72wk+0LQWk15EQUv05MsrjqqOxwzsZ3yion+?=
 =?us-ascii?Q?UESz/dt7TxnZYqFae9Cp5mqfF+G6VX2f6/j7uoh27pC1ng2KSCFGhm4qQCtD?=
 =?us-ascii?Q?fsQUFk0K3M1MzCo0HvnaiqfdCSHc2YybGkH2MQPccBTmApJOBSHdQFODCYtP?=
 =?us-ascii?Q?5e1NMHupkSy3n4iuXrAfr6cE6G/YpKTCrj/MNRy2afMOpV9ICAKvOYgyxFGF?=
 =?us-ascii?Q?blJKBJrdrqHlxwDRb92uSBhA3Y8crbDJ/ClKYKUtSM5Zh1t1z8uuklKZVZOM?=
 =?us-ascii?Q?TN/srSmCOeNTmf9Pq0HnvDkwUdAyDscChalgI/eEIbhab+66RkY++sIlql09?=
 =?us-ascii?Q?FcGIXTZIDF2JoJ/p2G9lyz1Kv9mql5Nxs6P6mJld6zTD93UQuFSyFKKks1+m?=
 =?us-ascii?Q?OQosZjJBBIOps4GWR32ZTG3+z5FXhpdP0v2P+idRCllD1dxWORZzrJtmWGgn?=
 =?us-ascii?Q?RDBZhItT8FZJdZA45qJ3J3EYgJgkIPPy3T/ZckNMDf60x7q87Flj5j+q6BC0?=
 =?us-ascii?Q?jiERAwLJY662rF+ZBAkPQ7jp64xbHLpmsQCzON7h1Vi8uJEdxNtOR0MogPkL?=
 =?us-ascii?Q?jlLdO/6Lt8TGbSRMRbpRjQBxvdOJo/PLL7CkksAJVOacS7cC0c82oHzNgqjg?=
 =?us-ascii?Q?xos9skzlUFXblxoE3PoyyQhkoAQrMG3DcspUTZC6g0CJXSxNtYMU8KUdSfJn?=
 =?us-ascii?Q?AE1pfVSvUCyEoCZAQGPoca0WWR+P2g397EH67pcP9jDS828Hv+o4bUbbSU6e?=
 =?us-ascii?Q?27Q6Ah+QCxXZ2OXAuN1FYF+4rzfXVbdjGZKS4q2paZx9EMd5Dvxq70CwziAG?=
 =?us-ascii?Q?qQ=3D=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9bdbfed-c476-4e71-f033-08de39728d97
X-MS-Exchange-CrossTenant-AuthSource: MW4PR03MB6555.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2025 11:35:30.1368
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MGugSTfOq4qf6rRFv7WSBKIWBJc3oAmk1EPCMY96BPT0SOCwkeRdnQorRQVzsSzwxQzyj6dA5SCUI3xMUtJyNyUMJf+zZlSQH7vawr/pYp0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR03MB7473

From: "Wang, Hang Suan" <hangsuan.wang@altera.com>

Altera new SoC/Hardware FPGA Crypto Service (fcs) provide
hardware crypto features through mailbox. Hence, enable
fcs driver inside the firmware node for agilex devices.

Signed-off-by: Mahesh Rao <mahesh.rao@altera.com>
Signed-off-by: Wang, Hang Suan <hangsuan.wang@altera.com>
---
---
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
index 0dfbafde8822..3ee2f7eb7ea3 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
@@ -69,6 +69,10 @@ svc {
 			fpga_mgr: fpga-mgr {
 				compatible = "intel,agilex-soc-fpga-mgr";
 			};
+
+			fcs_config: fcs-config {
+				compatible = "intel,agilex-soc-fcs-config";
+			};
 		};
 	};
 
-- 
2.43.7


