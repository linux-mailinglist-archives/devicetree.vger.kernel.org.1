Return-Path: <devicetree+bounces-176608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CED27AB4CD8
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 09:35:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4EE611B41B88
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 07:35:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF9781EB5DC;
	Tue, 13 May 2025 07:35:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="FJzc2mMe"
X-Original-To: devicetree@vger.kernel.org
Received: from DM5PR21CU001.outbound.protection.outlook.com (mail-centralusazon11011067.outbound.protection.outlook.com [52.101.62.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD431E5B91
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 07:35:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.62.67
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747121731; cv=fail; b=Ldt8CmPUmVdAIYdRTKZ9dMyWWcgE5jP41zBmh0BPL0HeAHXFQcRiAZHYrbqX9gJ1syfD6z6zDlwyUYB8i1q9YoWQwJPvyn8P3uuHaXy9gyVMl8riE9Aju2U8ISv8KtZeQmK0cGzl16hrF7yJn+ywxdS8I2QhiGUR4e+ZyQsYlV4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747121731; c=relaxed/simple;
	bh=FdtYjwT4ch/kqGx2ORcuVUUOUT6O2SjjSlbtmpSgtJ0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 Content-Type:MIME-Version; b=qyV/qQwRb4VN8l966CQvhhZ6GjFMZY6cZDGYAvEB8igYBINdZX/6SIUlfx3x6Asp4gp9ysHoFLhFTzDDWE+b+JDcYl+uDssO7gBlN2OjJKobox12n8liioPw29tufBbdjc8GslC39ZbVviYJVFA9L/b/MBdFcVNVxeN3YYCq088=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=FJzc2mMe; arc=fail smtp.client-ip=52.101.62.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n8rpAwImfqpbJsiM85vZCPTg7ZW5m+hbwlLNX+8KHmkhG6k7D+D861N7Y3QxheFfbqWWVD3qYQPP/94d2I/RjaeJ/rNhA7nu/Dl0IfYDq83NqcCQth9jn+zF4nkQU1zRPNXnwbU3HQTE39lPe95Sds4GLIizpGT7yTPemwks10w+RBJ2bSJ3AFPdtSWH8fpuWmRf+HNZRaS2v97Tigmcadn0TlhwOZ8tplYAjiI7q/28UWw8nheOsRfMNHQlqgUoCxzFM2JwZtndLS9WW3cHaz8Mwc0yitGFlNP0vhSClJP29k0SGLxUGFA4Ctbqu3Kyo3vMuujDhdvWypjs5asJLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QPjbw3ij6lzULK+1SiSuSUYjfDY6Lsw1H1LB14jd62o=;
 b=MdSAmL/+hdjwD/lzAW90IalFgVEjay06tftJkXwhLZsrOrfRSm9kywE77+PRaLyaKuF9bDfUKrhcfJowjVV5+V+GtgzZsNcovWWdTSdkxhZbO86AhWCKZemiOUiiDB1WZf93Sf6W22ty8G9o3K2tRooOSzOevzNO2ASzD/rSY2e93bCazBCHZa4+YASw0wU7psce2t4yxlb28Dfhfx2rCjqd09wy5vrGJ/YDwb2/Bxq6G8dvq+We1/3veVN9jc+olDXGn1vAUxmALeK0obqetVrN//iXwhUAmtdhfrq3tx0AT9j1uzU7y6LJpsLeU7vXdRi+CuZDC3/YSlbqkXLIMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QPjbw3ij6lzULK+1SiSuSUYjfDY6Lsw1H1LB14jd62o=;
 b=FJzc2mMeDxEPBIwkX3v0TNTH8iUMN6sQYezgZ8wW6hYWPZJ1zSgpc7jw90I3HOEzAytw/FkmIWvD+YrWoTxkAfYqjWzWVmteZo7U7BWjGu+pBRGndZUli8/VNAWuvp2hK+z3sePry0TFaRHK2NdMdTefvNJ8hVpAAh9ojQfrIzC8BgWLDEzNEuzO/7W6/ocOpqPdi4nn3248AP9DO8ZyFTwo6DcYKWFVO3R++49PP7lCLbARdLPHCQtA2D4qC5VGogcrVj94PTSspy5NJFSU7hd7QBaP1smpB9Yr/59fPzBm5a6Ij26T2uCjLB6bjj48JCn3r3WTLAIT2VITg6fMcg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from DM8PR03MB6230.namprd03.prod.outlook.com (2603:10b6:8:3c::13) by
 IA3PR03MB7595.namprd03.prod.outlook.com (2603:10b6:208:505::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.27; Tue, 13 May
 2025 07:35:27 +0000
Received: from DM8PR03MB6230.namprd03.prod.outlook.com
 ([fe80::c297:4c45:23cb:7f71]) by DM8PR03MB6230.namprd03.prod.outlook.com
 ([fe80::c297:4c45:23cb:7f71%7]) with mapi id 15.20.8722.027; Tue, 13 May 2025
 07:35:27 +0000
From: adrianhoyin.ng@altera.com
To: dinguyen@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org
Cc: adrianhoyin.ng@altera.com,
	Matthew Gerlach <matthew.gerlach@altrera.com>
Subject: [PATCH 1/2] arm64: dts: socfpga: agilex5: Add SMMU-V3-PMCG nodes
Date: Tue, 13 May 2025 00:35:20 -0700
Message-Id: <895e11fac220329b368cd4ff3a1430cf0224435a.1747098806.git.adrianhoyin.ng@altera.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <cover.1747098806.git.adrianhoyin.ng@altera.com>
References: <cover.1747098806.git.adrianhoyin.ng@altera.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR06CA0044.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::21) To DM8PR03MB6230.namprd03.prod.outlook.com
 (2603:10b6:8:3c::13)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM8PR03MB6230:EE_|IA3PR03MB7595:EE_
X-MS-Office365-Filtering-Correlation-Id: 59f63150-b7b7-4c71-abdc-08dd91f0bb0d
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?GMU0jd0ymv3Z8EayDnoc27wFykooPsTIZCtCjMSPHmAGCdZ91XzODO3xAXA/?=
 =?us-ascii?Q?jp7LPT37FW9hNHOZ4ZcOJHo/d38Mt/ak4FoZlSHDU8UHYMO13+tIXqguIixX?=
 =?us-ascii?Q?sNALJ2gY0Dw65P/uAY1Cv7MMjaa9L8j0kI8dQ1RCqTZnJMELWDaSM4Bv2A6u?=
 =?us-ascii?Q?sQ1lW8i6sS9OqSwM6W1z44eflW5cYxFG0G3ptSsGDOYszgXLucJd0/fG3RjQ?=
 =?us-ascii?Q?GiGCR0XtoZ2RmHy+9WLkJ3X1T1vISAPlTiX/bPFEY+sfF9/NB5Sg8JwNCJ1S?=
 =?us-ascii?Q?5dgxTW+/MVB3OoJoWcrU62ANJXskgUy/BCApwLpSscDdfuHwN414UlWKyyrR?=
 =?us-ascii?Q?+9kAia+FudlBEbLJr5Vh4s5czN1GF1uh+ErtMaDQYP8/bzPj0hA33i4RJtMZ?=
 =?us-ascii?Q?6V7a7yhQTwplE98LhqKtTJg+zChnx3oDiGClXL91PsttP9plB7OQm/vGgaOY?=
 =?us-ascii?Q?cqw14gLbm9Nq319DyA6wmdV48GF7CWsE5wh+WSrQz8EFuGUruWYXGkT7b6Ti?=
 =?us-ascii?Q?6mU/0WCdJjgBwphEKXl/wUIZlfLTyx6pmq8ZNpPb+rRjRQVLz9ImKMShS1o3?=
 =?us-ascii?Q?v0ZUjMTzsCvtMVFFltfbZ5IYq16pEMMygSq/TKdNfnvFHHNLT/y7LfH/zhiK?=
 =?us-ascii?Q?83fhLhQLx9UmryV8COkdgoSZzcac9i8UBI4NErWKe64RYmu+4NGGCRjktiqN?=
 =?us-ascii?Q?zNkOG0D3E6Sskz6OFpaFOn8SbQDAtalXP0TxF2JuU/WJHJWAORx5/ckIuwPS?=
 =?us-ascii?Q?xJQ5it00oREUyFhEbwAuUUo0pxPGt444d7i5cVzwMIxp4dXGxhyV8FSU1rqt?=
 =?us-ascii?Q?SZ7M46dEmKRfcBERp38L0QAod0QK7cM3VYjUF1BU/fgR7exrMaXDCRSFq993?=
 =?us-ascii?Q?q4ArH1EZCXvxW1JpEXg66VhIsEc13LN2dxqmdCZfkAUeZSI3RcEu1fTvMFus?=
 =?us-ascii?Q?FAC4fc0DBwGIHj5FAHyusoaaLPMxnAaF5VPB4IG2/0FNXZtlIuAKN/ZYDL0F?=
 =?us-ascii?Q?ygQLkNh/eVbJO7hkRlZrvOnu8MgZzoLBTn98ZD+R1rQN81D/h2r1qGM1Ic51?=
 =?us-ascii?Q?zgtEPnMFhZHNv/M+K502OqyFVkxBe88MAg9ZyHhcSqtWi0chZV5zvh8VnacS?=
 =?us-ascii?Q?GqZURYAwxawkwTaHDwEBnbxCoWwjNUeuDwWlTSo2oJDqbXmhTTHVYxUUau0Q?=
 =?us-ascii?Q?MxI5XIuZC34tDE/H0EVxuVd2LMj/pxDFkJZwEna+Z1CNi/BcYFp1pLe8Ri6M?=
 =?us-ascii?Q?0DHrqS+IArxMB7ISpzcN2xwekbMUTDn2rqrpeWKY2qIzYVk7BKoEqbmMmDxW?=
 =?us-ascii?Q?eZLFW4wVJ0nJ/i0LihY9feLHiHRbOtw08IFnc3MqArXW1O5cR62cK26LeTK7?=
 =?us-ascii?Q?VvsvqkCCHwCbM5QySLFDhGFvEs4q90aQexmJTdoIDZB93Ju1BJTZg0psCXRG?=
 =?us-ascii?Q?O960fwQLaGI=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM8PR03MB6230.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?vS7vx8XZAObKInVK+UswBmHG+oCq01Rgd33MbXL3UF4+6qgXEX7FwPUlK3e2?=
 =?us-ascii?Q?cEzmmgwUotHhXvwNYI/i/RhBVCy1jhLhfjLz2Owfhdatr19UQ2W/DbQHwYXe?=
 =?us-ascii?Q?dhQGSNHxK7OxUTcq+5v4hGb6XBJFQsbdT7uZ+IgTrmGCJ6eO/ODWXNzt+B30?=
 =?us-ascii?Q?lmq9V5BW0c80l0FWiKHI4X01Dk4vqj/823c/jPgtT1GUOqdu/o9+HUASZKt5?=
 =?us-ascii?Q?oXmgLFMyTfg2DhqK1ZYDuV+1bN66gM3cVLBUYylrnqB41Fx9cadF2HSIroTc?=
 =?us-ascii?Q?tkPZRVBI7yb9EuLWrZVcGXCncKwEOWDDHKhzAMnXUirUdkM+dhth+HZxVIt9?=
 =?us-ascii?Q?o16FxEPdEwSsX4MRZCipb5leIGDMsRyn4owGyqkZ3SGmiCqm7BglhFytrcSn?=
 =?us-ascii?Q?QyzQjSMBrdupl+ychaPiv0hLZjNb9OqYUjpTyictcKh5v2ApVAv6lERvzzFK?=
 =?us-ascii?Q?+mQ3HivuWQsy2htDqGj6pIHQf2k6kRBNSMFfo2ZmNHbbbb9lkU2UzRupGZtC?=
 =?us-ascii?Q?3VANmM/KSGNmMMdQQ5wy1s5+gZtVBD4h+jUVsRqd9ae/3iG0lkCv7JXefSc6?=
 =?us-ascii?Q?NIkkvFFTXURd/BR6f2ytH2Yvg8rTGfhnG9oSQo2zvj2bgpoOZ+0XqnwOQC1w?=
 =?us-ascii?Q?VaG+wdxUYw0Ql8TED2NYL3kgnDUPzByES1KJ/fF7L/6b7H7kWr5h2w3ajTxg?=
 =?us-ascii?Q?bQUSe4IV43sueuZWEPRLSM2EI7qOjBZgCjrwC3rFxqjtCmmOnkQDOw9JyBNO?=
 =?us-ascii?Q?mX79KVk5G8Q9MnVPqAN+jMQAwutxA2Urk6GeukFWalMfrQkMw9da2PIoLj6C?=
 =?us-ascii?Q?xZrUCul+PXcAfHPG6RGfTbkakVPYn88/k4GB6Lff5iybvcryqk22HwY+8lSw?=
 =?us-ascii?Q?hbtsq+JB7QNbb7Ax6UL9s820kiC3A/vuI2RfJ/U1qjIUkbAsiquj3EK6Pxnk?=
 =?us-ascii?Q?rauCGEAZqRr8YpN/yj3y1Dz2b25VCMya9Wict2k2EhFFZm14Zq3yKCIHiyhi?=
 =?us-ascii?Q?afJYjwqfJOq0DHq2YyxFj+AiSJLcGsxtFFd30dSC3ZxsSN9+tNJq0P+ezW61?=
 =?us-ascii?Q?2f2zHalJuwYHbuWpYCEwts8f/tCimrXyoLnbsi79g9xZ8LqUVCvWeqrKzkCP?=
 =?us-ascii?Q?P4AttoN6rtUfO05c7s/bfWg+bBxRKzZvxhibqYt9cc6/o4surzyGdeB/bf7w?=
 =?us-ascii?Q?1JBHLC8ljL91TW2mYznB/t80rX1Gbk604m5+tZcisvDR+wxCXL8ohbF29Bx6?=
 =?us-ascii?Q?gQQkHA27USVYuBuYGEGPL226lFdL+T5IYGUNM6RY+Srnuj5/b1KO9Rt6UuHW?=
 =?us-ascii?Q?RfKYyXGBunmP8nI4bYPNqsc5g6Kly+pu+8I+/vTRTwAAEqlnC98FwvDvlRjl?=
 =?us-ascii?Q?XCphVM3WprxznskDPktQ6fdxHF8FPpStolYx4XaHzsLF0fFtwf7lOMmJz7GF?=
 =?us-ascii?Q?BZVkiVnby22fpGdhdXQpRpXWVkwt3OvvDpWVRVGosZ36FSvzDgpkr2v+62ZU?=
 =?us-ascii?Q?U1WE+2kFNAcLvtk7H/sugGYWtND7BIfdTjHtS7Rzcqn3T2XVxc2W8SU4+GhP?=
 =?us-ascii?Q?Vlp0kKrFwELF6vFs1p7bJOy0gFAldoFwyD+m721lrcqgWuodaAj/lKgwA3+A?=
 =?us-ascii?Q?Wg=3D=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59f63150-b7b7-4c71-abdc-08dd91f0bb0d
X-MS-Exchange-CrossTenant-AuthSource: DM8PR03MB6230.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2025 07:35:27.3982
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kmgdIcZ0QrQHRQUNR9Tck86hoMqCSPGsPz5wG6IPFolC1dGVMElFeDou2zUugE29z7gxTzMymE9oEAi16NvGalM3RUE4ul+4k4jlja3ir1o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR03MB7595

From: Adrian Ng Ho Yin <adrianhoyin.ng@altera.com>

Add SMMU-V3 PMCG nodes for Agilex5.

Signed-off-by: Adrian Ng Ho Yin <adrianhoyin.ng@altera.com>
Reviewed-by: Matthew Gerlach <matthew.gerlach@altrera.com>
---
 .../arm64/boot/dts/intel/socfpga_agilex5.dtsi | 62 +++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
index 51c6e19e40b8..c624f9a66c95 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
@@ -133,6 +133,68 @@ usbphy0: usbphy {
 		compatible = "usb-nop-xceiv";
 	};
 
+	pmu0: pmu {
+		compatible = "arm,armv8-pmuv3";
+		interrupt-parent = <&intc>;
+		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW>;
+	};
+
+	pmu0_tcu: pmu@16002000 {
+		compatible = "arm,smmu-v3-pmcg";
+		reg = <0x0 0x16002000 0x0 0x1000>,
+			  <0x0 0x16022000 0x0 0x1000>;
+		interrupt-parent = <&intc>;
+		interrupts = <GIC_SPI 136 IRQ_TYPE_EDGE_RISING>;
+	};
+
+	pmu0_tbu0: pmu@16042000 {
+		compatible = "arm,smmu-v3-pmcg";
+		reg = <0x0 0x16042000 0x0 0x1000>,
+			  <0x0 0x16052000 0x0 0x1000>;
+		interrupt-parent = <&intc>;
+		interrupts = <GIC_SPI 138 IRQ_TYPE_EDGE_RISING>;
+	};
+
+	pmu0_tbu1: pmu@16062000 {
+		compatible = "arm,smmu-v3-pmcg";
+		reg = <0x0 0x16062000 0x0 0x1000>,
+			  <0x0 0x16072000 0x0 0x1000>;
+		interrupt-parent = <&intc>;
+		interrupts = <GIC_SPI 140 IRQ_TYPE_EDGE_RISING>;
+	};
+
+	pmu0_tbu2: pmu@16082000 {
+		compatible = "arm,smmu-v3-pmcg";
+		reg = <0x0 0x16082000 0x0 0x1000>,
+			  <0x0 0x16092000 0x0 0x1000>;
+		interrupt-parent = <&intc>;
+		interrupts = <GIC_SPI 142 IRQ_TYPE_EDGE_RISING>;
+	};
+
+	pmu0_tbu3: pmu@160a2000 {
+		compatible = "arm,smmu-v3-pmcg";
+		reg = <0x0 0x160A2000 0x0 0x1000>,
+			  <0x0 0x160B2000 0x0 0x1000>;
+		interrupt-parent = <&intc>;
+		interrupts = <GIC_SPI 144 IRQ_TYPE_EDGE_RISING>;
+	};
+
+	pmu0_tbu4: pmu@160c2000 {
+		compatible = "arm,smmu-v3-pmcg";
+		reg = <0x0 0x160C2000 0x0 0x1000>,
+			  <0x0 0x160D2000 0x0 0x1000>;
+		interrupt-parent = <&intc>;
+		interrupts = <GIC_SPI 146 IRQ_TYPE_EDGE_RISING>;
+	};
+
+	pmu0_tbu5: pmu@160e2000 {
+		compatible = "arm,smmu-v3-pmcg";
+		reg = <0x0 0x160E2000 0x0 0x1000>,
+			  <0x0 0x160F2000 0x0 0x1000>;
+		interrupt-parent = <&intc>;
+		interrupts = <GIC_SPI 150 IRQ_TYPE_EDGE_RISING>;
+	};
+
 	soc: soc@0 {
 		compatible = "simple-bus";
 		ranges = <0 0 0 0xffffffff>;
-- 
2.49.GIT


