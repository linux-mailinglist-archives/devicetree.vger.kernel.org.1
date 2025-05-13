Return-Path: <devicetree+bounces-176609-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E98AB4CD9
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 09:35:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7E8F93B69E2
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 07:35:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBA461E5B91;
	Tue, 13 May 2025 07:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="HxPwLiGV"
X-Original-To: devicetree@vger.kernel.org
Received: from DM1PR04CU001.outbound.protection.outlook.com (mail-centralusazon11010033.outbound.protection.outlook.com [52.101.61.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3093517A31D
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 07:35:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.61.33
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747121734; cv=fail; b=kvBasC/+QPV3ucjiNAhYDuHK8maTtuoe/TZOhe+Jlx8WQISelcYZWQG/5/QBY6w9mqc9WAlN5h9XzZzUc7jiEuIxgzDXT1rB38XGg5Vj09HvRZe9hmIY/eeUyKYtd4Ggp9llUtpjYnV+iMMh/77MC3VBeZKq2EuykStP2y+6R18=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747121734; c=relaxed/simple;
	bh=nC9+I9/8rc87kdsulCfMxyBxnQcKMvitQp0vA04PPUY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 Content-Type:MIME-Version; b=rHFZjCy5pEB+OCSMs8hhG+8vi7tV1AS08toi+FmFgK5gBvv4hYtrcPsMc9PgEkb1f+5DVo2JOXgW6/kx3lYAQLBMRY59tU1+Rf2YSCIlybb2yPYjxuHEvOPDV2hB3OsA6x2G6jZVtp9iWOyaWM8EpeWDKLBzPQ8Dx7DBx4T/N6o=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=HxPwLiGV; arc=fail smtp.client-ip=52.101.61.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dnBsEJfKsqVensOdTygmD4qjrch/g+Y4wa3VSSWkmkGaVHkYW6lVf3/8+rtZIXaFmI3bOWYYwW5Gpget30dE/3O+EkxZ8sGJDHGjctfnCofn16KIinAYeTRukI03NT9iw2MzWKkkrMLDYq80eQsejZQFS9f8bp2ZrKDN1zU6I5fkDxcD9dD2FlmvMF9cmCCT5qvVZbqKQup7KZ4vjOuZw8Y3ogQFq2dh/wOH4zk4wRrpP6uMdCpz3mtAFkK+m1vCfu392SdgbIO474Al0+1+lwBchqwb/KH7ouEx7fxZPeN141rh6laMRBdxK/FsC88mQtrsCstNXs+9O9LOIX3y+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lB3yATCssQF5KldswCHKyvbjekxTvv9clhqjJufZhuY=;
 b=TR8OwMpdt+XmFs6yS7C7Slo2WfmRibQz8EZpxnW7r6GNo+Lcn4KLiF5Z9PxT41Sa+BDdi6jy21DmLX5OSCbWRaMWPrjU+szHW0n/xEhuzbbDaCG+ams3zblVzScUUDfFazMzVU2P3cxUZ8qMSSoihrZauq0lPH3l6joKFDkwMbsAH5+Bd36uGgzKupJc7Ma4oPuOY7je/3f0zcQHp2f8ZMPv9QdUfcSP0UMo2rZ9wy78whMVofempzZ81PO6V/ylVBAWtzoK1qm8EpSQtCDEYFcfC4cuzRMBvBlyOeF9rZd0ZMeicRIa/Glox4UMyELQb9esS5yFO2rJYRNH7FjSzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lB3yATCssQF5KldswCHKyvbjekxTvv9clhqjJufZhuY=;
 b=HxPwLiGViszhFYoaZc+G/x2FmFoHkjVdhHKNI+vkDxq3KoLd3TPttdAMOzPTnL6HbdgSAoBpp4a+DjkfIBkk5qnSwYUXI1ZGgNACuOQVkYGPUVXEbWDLfK8EmMIiVA+pqXlxFbM94AgjO0jpgffnINSABi8OKZKLdKSQeSWu9O0797U8TuVkHlQte90bHFagWcKBNoOzucbIF4hmL+vYKmpU4BDGB0HKtthMLNA7uiO2+ze6zmBN8PqvVhUuStSf7JXUraUjJi+QbeTQIjLd7DxtF80joPvTeTBWQ77Pq8jKoTJgZnOGRW+KYS6X/o4xCKjyAYtH5xFfFC7bAODEow==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from DM8PR03MB6230.namprd03.prod.outlook.com (2603:10b6:8:3c::13) by
 SA1PR03MB6644.namprd03.prod.outlook.com (2603:10b6:806:1cf::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.30; Tue, 13 May
 2025 07:35:30 +0000
Received: from DM8PR03MB6230.namprd03.prod.outlook.com
 ([fe80::c297:4c45:23cb:7f71]) by DM8PR03MB6230.namprd03.prod.outlook.com
 ([fe80::c297:4c45:23cb:7f71%7]) with mapi id 15.20.8722.027; Tue, 13 May 2025
 07:35:29 +0000
From: adrianhoyin.ng@altera.com
To: dinguyen@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org
Cc: adrianhoyin.ng@altera.com,
	Kah Jing Lee <kah.jing.lee@intel.com>,
	Matthew Gerlach <matthew.gerlach@altrera.com>
Subject: [PATCH 2/2] arm64: dts: socfpga: agilex5: Add L2 and L3 cache
Date: Tue, 13 May 2025 00:35:21 -0700
Message-Id: <95d803a7df1e85cab05ca0561e7cba90fd1504f8.1747098806.git.adrianhoyin.ng@altera.com>
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
X-MS-TrafficTypeDiagnostic: DM8PR03MB6230:EE_|SA1PR03MB6644:EE_
X-MS-Office365-Filtering-Correlation-Id: c10f8c15-45de-49b1-662e-08dd91f0bc79
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?XltGppbK9b8fWjqZwDa837tc7uXhDzTNgI6Wf1YbX07p2uKBTcMxqsomiy0Z?=
 =?us-ascii?Q?sRupZOgAiOl5wQ1cBN6BIETFpmBQEJMRLLbXc3FBswIZvVUCWQPwj0KT5R++?=
 =?us-ascii?Q?H8FM2VbXPgZS1cKElExI3Cvs3fxzc4/29zpzO+COB3dEQ4imBNrLSq431ybl?=
 =?us-ascii?Q?9aLJureWMKCs+ozOV6GswqSrAoSrG4vwxHDE9ITaucqkWjpwZbBlggNoTAb8?=
 =?us-ascii?Q?CoAcr70nDlVRBQNF5QO5hAU7LFEU+pNBhlVsjke3ZXAyV9uzJjv5+L3jJfDu?=
 =?us-ascii?Q?YS8lfu8qhpu+NrE12LF/kSQWxCgPvN7nxweBxs1L1JwWwUV5DItAHuq4J+RM?=
 =?us-ascii?Q?PAaF2qSHfy6Nw2rMdd/qHVH8W7XvlNxxiarxrnGr9fpVLdusYxWdXm7KcDKd?=
 =?us-ascii?Q?gBFgTrnH//baC8/wxgpMJ44bhmtPnmJJ076O+pJyyp9j0+ds0ZoV+xOcmaQE?=
 =?us-ascii?Q?6YCEw6X+cEcoOqKQOklPNrNnm9KzeQiHo5Yxl3PnhDvqYvv4rYBcYwtfjenI?=
 =?us-ascii?Q?+n6nReRdRz1EC5p+ejLnuHwohYpvrSmko+O3MNzuqeb9NMW7D7rToh22Sfnk?=
 =?us-ascii?Q?a/5cHcGXnlzpdrkYZRwVrt83IB1ts5yfp8t7AEgNLQpZFTNPlq6Tr+7At38T?=
 =?us-ascii?Q?0bwlCBKWSllu5r7DaZ9/g4FB3vIZJPHyMIxedPMZmOElcYG+H4YRwu5L48Ax?=
 =?us-ascii?Q?ago6T8af26cDsznaAWBe3bBHi0hLVhj8EqP1d9lyqoalp+Odu39m2Te3HBpH?=
 =?us-ascii?Q?5+ovik6Suxj2rKdmnEPwgVoLt0Co0RfretL01qT4bD3CdC1Vha8JEhGbBqTy?=
 =?us-ascii?Q?bRwkFR4oUcVM0oJezoddk6mK4ZlB4exsGgmgzvldlk5ueC0ELv52ypjEBceA?=
 =?us-ascii?Q?kBWDUprvNMWJee0++37yGOOPIfXAHDxCRLjhG5bYrTWA6rvMj8RPEiIjryEx?=
 =?us-ascii?Q?KBpUmLYpNPWZ/MxU0P1w9cq2H9juA/lQrsCCtddcRZLHrutUPRBwow1ftSHi?=
 =?us-ascii?Q?+DZMHUHC2q/FTCCdcDJaVTdmSKkl6rpR723gOlncpl4jR8rUbqApfv9cJU0x?=
 =?us-ascii?Q?5Lv6cvz+KajX6LikDwUSOsxq7sO4ilV/ktuxnyvRkEPtu0bRL+3p83kQTjjt?=
 =?us-ascii?Q?m3cvxyb79H06hLIxlFg//zYte5F+GP3WD78EuAYQ5gcGvGoE+lAxt9BiVpU/?=
 =?us-ascii?Q?JgJmO1ap2lrc+3JNmD2CeuiJuT3NX6v9K0Z15yAgfYL0aGuCcWa4MsV7KdX5?=
 =?us-ascii?Q?2eG2Ga1v8Iz0zglaZCtPi7mfNf5tX8H7u0FTfVS3d8K8RUrgtbosEc22/LLy?=
 =?us-ascii?Q?Ho75QxXJQ6oFa1yOSbshaFU7sabV32hLYw9Y5RkLUxSvpLrsNzhf5OLJNFMg?=
 =?us-ascii?Q?tGHy3K1Pz/KdEdA5c3BrbUSLZsh/kJeVj9luqjpev1WboFm+pyf/RoH571Xz?=
 =?us-ascii?Q?FFS2ME3qQig=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM8PR03MB6230.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?tgKhnYCzlThQrTiNVPvDSo5IR4D+i2+44PtGrWwd7UFUT9/QBFEEfp75vSLq?=
 =?us-ascii?Q?3MekAEYvZXGox9OUz8irpjafGDiUvBqdUQeyjORfKY4ryASfZTOyRHIXTVIE?=
 =?us-ascii?Q?YiAw1DXOTGfQVLPYeMgpIvCCIWKNfFR/KqCksBADilYfbD2NFxfhXpzq5YMM?=
 =?us-ascii?Q?on95hL/eG7rxJFvmdyB3EjIo8FhYRxRO7xiA/T7o1ldmccSC8fb8i0OT8S0D?=
 =?us-ascii?Q?0wS66e96ka9q3h8PUAFTyB6q5/6dxub3nELN6T2oo5nZth3gGba1lI8ZNcDi?=
 =?us-ascii?Q?PAD1XVtETOoz0iT32t6HQX0NOhnoIMgOd6xHjxTPkj17ytooym6f2ZpFV55V?=
 =?us-ascii?Q?H9+ARibeXK1jmHsVL7YW3bijKj7/UBse+ZeW1bfNrY0SrN/MBm/aVKzDQVkt?=
 =?us-ascii?Q?9IQSbKUfduH4JbAhjlRoDvq76JYlr5Aosy4w/oQAwsaQWJF9enpEyxOS4Dyb?=
 =?us-ascii?Q?81PPQ8jiDTy1rjpx97Uefm7IzrVmtyQWR4oQRmszdWBc1O8Cr2LCsaYPdCt2?=
 =?us-ascii?Q?HJx6sPq82zf1ufy5qYiKtGlirbGE6VquhuDLZOVMCOnh/zggPoF8AsrF/GW6?=
 =?us-ascii?Q?jTvEqD7QE+bqVamAd2pZdYnfEkWuUFxbrkQSxPr/Ugz4Y4MilLSydwQUFiPo?=
 =?us-ascii?Q?8cbanSZE26Z7V5PSIPFx0+wkNN57OSHCWPheputbZkvsq1+9px5cOPedHPND?=
 =?us-ascii?Q?ecL1Gslloaj12v7NQCKy5lpSrYGsgLr86vHKbwabyDeqZ8gnNMVbh+Whtys+?=
 =?us-ascii?Q?fhndOjuWFarz/SykHtRirSe7tzONFWs7LZPARes4gMTWoJeJDJuL6t1Os1V7?=
 =?us-ascii?Q?Z6pe8MMp81ffncOzlqBC4RAb/eiipSvRvaDX5QAStgLOJ31VIFJn2YYvD3bn?=
 =?us-ascii?Q?NWfSRBxnsy/lQ5AOHBmL3KW50VIi60B3W+IOUcuwk943s95+kTjT4xKj53PC?=
 =?us-ascii?Q?zESjbNRCPMPIte5I6u2kwSqfLZejPpqyzdGcya754n0H01nZfYLFc5shWjuY?=
 =?us-ascii?Q?PWzu22zZwzRENDTwvl0jTkSZcMgyMKm9iAFVN75gtzo1dR5kbwn7abP27rzw?=
 =?us-ascii?Q?LPfZiY7pTFeKA3mTi4/mB00uqLELgUtoLZAfY0W5knh02XJPFJCDFxBoPWUn?=
 =?us-ascii?Q?T/FY18C33RUOiHCc0QobULxd47/0P8Fj9FPNOGKPhdKsbwdEw1ciNkzk7b8A?=
 =?us-ascii?Q?QYNu8DlA/VBWs9JO7c5VPoGul20aWoC8t53aD3NNTxKp7usCftqlBFb3t0F9?=
 =?us-ascii?Q?Rx5VI3DgED0qxgE4bvEeXTcoqEtFtp/7fKP0N5Cp5j9ae0eSS4ZAdyPwEP81?=
 =?us-ascii?Q?DN9821JyjWjYOBmyBke7r2nNKmbDKx5AoL9xQgrTImXTCyu74nQCJFcSsi87?=
 =?us-ascii?Q?SWZ0BsbNCEu/Oet+mI8+UVVIxc/ZKl+aNcBJRSAk60xmf9qwUHUjraOmqrq5?=
 =?us-ascii?Q?WumDABL8ojXv6mqdFP/CVi1nBG4KWyrUKRQcgxJG+r9I8ngAipk3S7cWbNY9?=
 =?us-ascii?Q?uyGQLfftwcJWFFoZCakV6uSB4jB6QAx/8vf3ipPoe4et7xsOKaiEVT6ApXSn?=
 =?us-ascii?Q?sKdDGAnZSVqyBXO8ZMQgBWrp2aORE47CzR2LkyXo7HuW0qwEQV12yb/16/AJ?=
 =?us-ascii?Q?Dg=3D=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c10f8c15-45de-49b1-662e-08dd91f0bc79
X-MS-Exchange-CrossTenant-AuthSource: DM8PR03MB6230.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2025 07:35:29.8007
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9mHHjJktQB+IG0se8Imec0jsmArFnHQP3zym8NJLJjZ46b0NIB1RHAdBNtQQYKbZ2n0Lj+97NSaRh6CNNMBOAtqwzkJthroetJ0+BZt59jk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR03MB6644

From: Adrian Ng Ho Yin <adrianhoyin.ng@altera.com>

Add L2 and L3 cache to fix the cacheinfo warning "unable to detect cache hierarchy".

Signed-off-by: Kah Jing Lee <kah.jing.lee@intel.com>
Signed-off-by: Adrian Ng Ho Yin <adrianhoyin.ng@altera.com>
Reviewed-by: Matthew Gerlach <matthew.gerlach@altrera.com>
---
 arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
index c624f9a66c95..fcd1013647ff 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
@@ -37,6 +37,7 @@ cpu0: cpu@0 {
 			reg = <0x0>;
 			device_type = "cpu";
 			enable-method = "psci";
+			next-level-cache = <&L2>;
 		};
 
 		cpu1: cpu@1 {
@@ -44,6 +45,7 @@ cpu1: cpu@1 {
 			reg = <0x100>;
 			device_type = "cpu";
 			enable-method = "psci";
+			next-level-cache = <&L2>;
 		};
 
 		cpu2: cpu@2 {
@@ -51,6 +53,7 @@ cpu2: cpu@2 {
 			reg = <0x200>;
 			device_type = "cpu";
 			enable-method = "psci";
+			next-level-cache = <&L2>;
 		};
 
 		cpu3: cpu@3 {
@@ -58,7 +61,22 @@ cpu3: cpu@3 {
 			reg = <0x300>;
 			device_type = "cpu";
 			enable-method = "psci";
+			next-level-cache = <&L2>;
 		};
+
+		L2: l2-cache {
+			compatible = "cache";
+			cache-level = <2>;
+			next-level-cache = <&L3>;
+			cache-unified;
+		};
+
+		L3: l3-cache {
+			compatible = "cache";
+			cache-level = <3>;
+			cache-unified;
+		};
+
 	};
 
 	psci {
-- 
2.49.GIT


