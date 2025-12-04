Return-Path: <devicetree+bounces-244168-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EAF2CA22C1
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 03:29:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D56333024350
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 02:29:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B214A243367;
	Thu,  4 Dec 2025 02:29:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="oMCXfiqv"
X-Original-To: devicetree@vger.kernel.org
Received: from SJ2PR03CU001.outbound.protection.outlook.com (mail-westusazon11012017.outbound.protection.outlook.com [52.101.43.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DED5918D636;
	Thu,  4 Dec 2025 02:29:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.43.17
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764815347; cv=fail; b=ful1KXD6FXTRNZo8GhotlJLnfn/nORvfZUd65B9ENDqsrM/qQRJ2scaeCs4JBt+A52dPeABAmhFEgpzjqpPh5W7+aRhm/NeI++29FE1/cf4kTD7qukPfbIxG45oEOXx1bZYd5o8V3RIhvgdrovrdi55J/S3OgZWKuGnzCHPdnsU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764815347; c=relaxed/simple;
	bh=bgnpncK50qV/+DSLFa5XNXDQaZKxMQ39gOKBptOb49k=;
	h=From:To:Subject:Date:Message-Id:Content-Type:MIME-Version; b=OVy336sEGC1FRVucFg3FYhd9UuB0LUkhgT6N7Rn5oqQkbje6HDSN7KM5LcOJR6eUOufgBTg6kFo0lZ2EZIYZsNNWW6yqcQKUzwENsxrfb/Guh05oL7SAz0sbjxXPkMB/QOYT8Q6gvN6bHd34vKn2rYvwZTdN/Yt1vgfCk5T2Cdo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=oMCXfiqv; arc=fail smtp.client-ip=52.101.43.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A2exRQy4vszZ/fivMCdgcP4unLArQb/ujIU1UOTE3d1uSOi+GaLal8W+L5iy5VW29XtQMWTsM8U72gJxYctXgiTHd+Sj1j03IZkP7F0lYUgOX+c3EHYRmLg3zRgWYT+uz2g4MQ4lnuQC1/LG4H0+QEY2bGK6ZsL+oqvR+6Q5+AIlDfwJ5yfvlFRPowNspcgEl8O466wfuNlMy80oMUl4Axt+VP18s/EW2jUMAKDHyOrhQ4yMJSkqAW/OOJJTrLosXkEveR8H2sDTQlbn5/zBOugkZFFrvCJ/FrHa5mSJJDaGJyuZuEwYg5msFxBWk3h+CmttpFgW9CY4npNOJfcxKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+Fyeh4Kqy5AamZuEEhAJSIopVRGtlubgdOKKQpvLUzM=;
 b=uIjJcp154AAsk4vV4OCEfG3Nrg5YtobcM+VAdSr6LeZw6Y9ZJPZcfWs9jLIs/VMvEHH8v4ryE3EgGbl/pP7XAyCTGfIfWvwhzlJu9Oufi5PIE0XKOaE+QQyYSSLXdgnZKezFFTSQ7paLjYJCYRsZhiv1LFSVxdh4Qz7Z3g1atZQqThsRExSYASao+3a6yvtFUV5YLSlJ7lhqj5yc9iRDI2Y5ULnnQ3KH+Z1KeTFGIQ2covzGDWD+DnStolLYFTmZE6tySMrvgFWepKfBwaqreDwYMdMEdGveFmP7vUDDoolR2ruebHSDCliJbV9IfG6QZPK9DmgzbKHnRRMDvgFPjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+Fyeh4Kqy5AamZuEEhAJSIopVRGtlubgdOKKQpvLUzM=;
 b=oMCXfiqvhjN3h+BZM1tZZbiEk/J4rSv0fIaDeTPMbmZdt+wVdteFmfdBPHUv0fWsul2wFMkq5lswpwYz8DyxK1xHNUAl+iUhKhEjqdPRHGbnKr2IH6ecNoiksrVAXdNKqeeRLBeZec/mCspftoCV8WKUy85niyji8MqQ7Yjn7ro3Ai17eJR9TElbrtw5KnlgaSoGaL0w7dzP6XqLiurTJC5ja6s7MTf2sp9UiTehesGikSTutkODM/6vIpw9813y9bhuqIw+M476UOlCDuAKQQH9CPcgdegQF9pyFPggMmxomRelvoo+wfxBsSE0hgYacSka4SJEj6qBADOMlZWj6g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from SJ0PR03MB6964.namprd03.prod.outlook.com (2603:10b6:a03:432::18)
 by CO1PR03MB5891.namprd03.prod.outlook.com (2603:10b6:303:98::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Thu, 4 Dec
 2025 02:29:03 +0000
Received: from SJ0PR03MB6964.namprd03.prod.outlook.com
 ([fe80::b965:bfa8:58fb:e775]) by SJ0PR03MB6964.namprd03.prod.outlook.com
 ([fe80::b965:bfa8:58fb:e775%6]) with mapi id 15.20.9366.012; Thu, 4 Dec 2025
 02:29:02 +0000
From: muhammadnazimamirul.nazleasmade@altera.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Nazim Amirul <muhammad.nazim.amirul.nazle.asmade@altera.com>
Subject: arm64: dts: socfpga: agilex5: Add IOMMUS property for ethernet nodes
Date: Wed,  3 Dec 2025 18:29:00 -0800
Message-Id: <7379d0b30094b30843c99f801dfcba9fafc4ae1d.1764294423.git.muhammad.nazim.amirul.nazle.asmade@altera.com>
X-Mailer: git-send-email 2.26.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR03CA0060.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::35) To SJ0PR03MB6964.namprd03.prod.outlook.com
 (2603:10b6:a03:432::18)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR03MB6964:EE_|CO1PR03MB5891:EE_
X-MS-Office365-Filtering-Correlation-Id: 68f13fb9-39e8-49b5-910a-08de32dce398
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?RAHDRYUouZ1gNbegsLSqu+qAxn2A/2HikjiNoYW1d/EOIhcEI1Mm/wtr9NAh?=
 =?us-ascii?Q?3ARnjrfhxVc3co9xMoqQSxwBlFGxX6nSscpxGh0bJvMxXWhH2izbNILwb2MF?=
 =?us-ascii?Q?j5xHYbRRmNs7PTfAixAIDb2Mj9fpLqJ7fDr42HvezmkwzxTKVY6sg3BQMHrB?=
 =?us-ascii?Q?n0B7AsRl/7MTGUAl06a19BF/OO7JhEwfg4nk3b0DTsivl9JHdhk/ABuHbq2c?=
 =?us-ascii?Q?Qi9gZg/W+OU0aUb6rlbKsBJxHiMgxhG4qZ4Kl3Mg7SludZTDUq1gIKRxQmcQ?=
 =?us-ascii?Q?aZXD3KpJwxcoaNZ/KJoiFKHYh3yU6Q0Gmo503DtL5kDcU5hRmZMYcmQQE8ow?=
 =?us-ascii?Q?uuDWLQ/r5CyBMEDzF4eNCAa//ISzyTKZLUVuoYKdIVPodmUEpgOKo0QGPrPF?=
 =?us-ascii?Q?qfyo0dQG60sE6XYF5TBjv2ZTkIh6Xd5YRRDtcZXNqFb2YdBg9Lg2+X5N2hB2?=
 =?us-ascii?Q?yd9WNIOnY57hGD9iwwwUlgtrEwnvJcdDDj0wgYNrB6hf3qGcpsJzXLsCSFkQ?=
 =?us-ascii?Q?azq9MtpIh9Teu2Vz9WE+QIIzE5HpJgLB4St+G1u98pRb7ktDkEdnKkX6iPtP?=
 =?us-ascii?Q?BdOAXK1YpWNe31ORcYMxshY+1lFDAiec39hZNei3POh7WJxoawoUUt7Qxs6x?=
 =?us-ascii?Q?9HTISWZS6g+mrsJ2kN9L7u3qcAzQIxlXp59XmkNz2un2mO1bGBhfWzIRCT2N?=
 =?us-ascii?Q?zCbFBjoiiS4ELYnS3/TVA9x2yPdPbajRTyW0/HNZVpnQKiembvWWDHk/Y4X9?=
 =?us-ascii?Q?gZ2nN9j1bflwNyebsF3bsaf0BZ7aWj2iFy/b6h1MfQkaR218X9OAH+R6u2I5?=
 =?us-ascii?Q?awv1D83Dpr0zq/r+YFU7E5NyHtIFFx4afMovU7L/vmz0wvYPtVTv7U6WUxG0?=
 =?us-ascii?Q?xsWa8/3sgefZpGtx2vC633DFKi9Ejw0D1Ec9rjOIX/FAlQReXa9hICwx+JTg?=
 =?us-ascii?Q?x4eDExW1jmTQzTqT1mbgM/OLSfU9JGXHcGEc9wAE8p/8Uql65O66P6VM07mZ?=
 =?us-ascii?Q?ob47TuqvcrOxxrBfyylwheTyoeRyKoba/5B3DYWMGHpqgCw4Jvc+mGr5OJul?=
 =?us-ascii?Q?joaPXr71eDXwkuuyVd7MYqQzoTLLWhsV32Gu1BOmDNXyhPkF+BVYYF61T536?=
 =?us-ascii?Q?+n2IRaRSl+MLOM27qM2fow89KOg/YBVhWyT5vL9EWrOqgy1L20lmOYc6xCaO?=
 =?us-ascii?Q?j3n0hOTnPeqg5nyBUTJJud21xnYQ/VyERyNIY/Cg8pAHPvrs7p0xyh6hKxwU?=
 =?us-ascii?Q?wXlV3x6Ne8a3eAqRuIxluiGNuAnRSeu3fdsLmA2tuDvHrYZhG7QDRHCRzMDf?=
 =?us-ascii?Q?1mKM0dWRIDXUL31UFcODbDFD+7Bj9C4eFryAnvq1m64zqftQvU4TKQ3vwJWx?=
 =?us-ascii?Q?Hi7AQwYra+Gpo16jDrHfrKvqGDdFQtgEthIwcVYS73rMf35qlJIsxO5s24+w?=
 =?us-ascii?Q?MtXOrZpyPTylqVjjofGFe9hRyhR8Q0b9?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR03MB6964.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?CYi9PUdZKRLZt5qU+DkVDZpRndYdfhnSmOjuVXYQAGkF0j9D+JiQT91zzooS?=
 =?us-ascii?Q?H6AUu7LeEOx62SEcXAB0upDUp+L1UcnIjEFp6arolK87uEh2kpR/kva4JttY?=
 =?us-ascii?Q?aaiDQxJJ5UHj2GcDysT/FbtwzPjjcTXLmXM2Z05sdOslqUPJeTcBWtQw1Bog?=
 =?us-ascii?Q?Dhydg/HeGqPmXGak9mHyvLgb7Zk+dmE2U8ZmwwS+GpLkc55qiOya0uLuKJcy?=
 =?us-ascii?Q?xQbVfU4VvY3tr78v2kvVzEY0o40TfwypkYx96rJlnoEU4D84Bd+A/YM941W8?=
 =?us-ascii?Q?pGuSDAm/72pVwQDbKvjQr65Wd+oma7ZRj9MUSWMMnLS00RoClmcjlg2ZwFLF?=
 =?us-ascii?Q?nYQuKxoaRGoxtQ3mVmppabctumYFtGABRbgV8q0YGxho0omfczwMR9fRJIu/?=
 =?us-ascii?Q?8WQQDz3aPclGoDiNXZflMWrIXyiLCj1+6hiPsLJx95OoTVbtsFeGjNz2e4K1?=
 =?us-ascii?Q?iVGGi1EcircPOxCKyKwSVCTCnFxeEnhK4SOXP8hCh8wpdbw6/WcoWIq+BRod?=
 =?us-ascii?Q?O898FEFugfeM8J87ayG6NrljedeykGzkNvrdMzbxMEyF9IH9m8JLiNR/oD3P?=
 =?us-ascii?Q?IselTXMFNc5eeqfx+8NApadCfS+7SspaPIlGqTVf2c//toxArjfdjNRqyczM?=
 =?us-ascii?Q?XlND2YjhmJBrgXyYYB5LPWGBf76LWYT5qhL6UhFu3s44h4auB6onseJ31zlZ?=
 =?us-ascii?Q?HcFLxD5i5U/OToUYY9ZTa2Tr/nAlWqf6dJhBcDVq/7cbCelmKj41qDjFzofc?=
 =?us-ascii?Q?DNLeFy7+yZwFa3rc2Fs/dazD8mSE/bFzbF7+lP2gRhKa63MTlqTYf4LoegZa?=
 =?us-ascii?Q?DTQi+npHTtxOLdhHmFlNXudylRatuLHvozKtMyDaGynkIVHmpjcpY/2EZmEj?=
 =?us-ascii?Q?UEXOSX1LjrEQThL7TVkxBLkOiB+PcGU1XhWCskZXCkMn+rCrvQIXaG1CkuLp?=
 =?us-ascii?Q?Kp/ztXnQWTapohw1r/Dzg3VX+nQQjwg9FicYLEeECpKqoWpMslc1lxVOFh9o?=
 =?us-ascii?Q?sty4gyjBVT7pCRRJLqa6UguQeGbiPwk+3qk6OSGcjR8dY73q9IwHlp1AUlo3?=
 =?us-ascii?Q?u/E1SNOZvjhoDZJXhwMwo48wKjO0+h69WEp8HjacgScQhRWYj74X0Wc8ze4g?=
 =?us-ascii?Q?PB9W6MfV69v7T0YWYmkyuBwHiNHB6PNPQ/JqABqX49ZBa6rr+oyrCiPQ71/2?=
 =?us-ascii?Q?l5d1n9P3jdGmxuPmC5oKl6CJ9PBR+RJO1WKB1B3/QjRx2RbQTR3gRhRov4s5?=
 =?us-ascii?Q?G/RIglzJ+21SaUVta5VCSXMsbdsi8E1xZhGxCLDbcJ8nXqvFAbi9iYPlxa0U?=
 =?us-ascii?Q?i1OB47zjxaVFZSaLAXiVM1sgt75Jj45YLwvaCPca5HHURPstNJxN/BVIMx3w?=
 =?us-ascii?Q?VO/9yiK8NiPcXCJPFM83T4yl5xfiBt8Is3o0IxAdtFuqHhLOyF+ClPtQNJlZ?=
 =?us-ascii?Q?F7UC3s60/aqMbZVPcKWIzrl6Fh1tHm75N1p7PX6vIQFm5x52RYRrLJEfnqbq?=
 =?us-ascii?Q?b/+OQuHcY/+Netl9jNY583jGHZs9o17IAOCrc/Jvjfg9fPwns2YNXdKQmDF1?=
 =?us-ascii?Q?zRL3paLTNmHZnSNErI3YREXuEEaFDgf1tq016eGz1pW9sa/1pTugUzZMlqDJ?=
 =?us-ascii?Q?is+s/8xpKYf5wRXACYoVCMbjsA3onv5VUinSNtDL77M2?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68f13fb9-39e8-49b5-910a-08de32dce398
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR03MB6964.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2025 02:29:02.9064
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3NOky8+g6JNMGFBGCZdltD1XIBd9tTkvnOhvGAt7FsP79yM7+kvNNr0/yKVR44qRaa4L7c19pdLrkYJhQfkz/MW7a5h5xLp8PgwuMzj9KZRhDVtLs+qADn3dEHlMFX+Ef1H5s4UbkAKlDW1UaEGkGA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR03MB5891

From: Nazim Amirul <muhammad.nazim.amirul.nazle.asmade@altera.com>

To enable SMMU integration, populate the iommus property to the ethernet
device-tree node.

Signed-off-by: Nazim Amirul <muhammad.nazim.amirul.nazle.asmade@altera.com>
---
 arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
index 1f5d560f97b2..06f98667499b 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
@@ -577,6 +577,7 @@ gmac0: ethernet@10810000 {
 			snps,tso;
 			altr,sysmgr-syscon = <&sysmgr 0x44 0>;
 			snps,clk-csr = <0>;
+			iommus = <&smmu 1>;
 			status = "disabled";
 
 			stmmac_axi_emac0_setup: stmmac-axi-config {
@@ -689,6 +690,7 @@ gmac1: ethernet@10820000 {
 			snps,tso;
 			altr,sysmgr-syscon = <&sysmgr 0x48 0>;
 			snps,clk-csr = <0>;
+			iommus = <&smmu 2>;
 			status = "disabled";
 
 			stmmac_axi_emac1_setup: stmmac-axi-config {
@@ -801,6 +803,7 @@ gmac2: ethernet@10830000 {
 			snps,tso;
 			altr,sysmgr-syscon = <&sysmgr 0x4c 0>;
 			snps,clk-csr = <0>;
+			iommus = <&smmu 3>;
 			status = "disabled";
 
 			stmmac_axi_emac2_setup: stmmac-axi-config {
-- 
2.43.7


