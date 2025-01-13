Return-Path: <devicetree+bounces-138183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AF296A0C0B4
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 19:50:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C0A99164F1B
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 18:50:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 917071C3F30;
	Mon, 13 Jan 2025 18:49:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=phytec.com header.i=@phytec.com header.b="YwcIn263"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2135.outbound.protection.outlook.com [40.107.220.135])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67EEF18CC1D;
	Mon, 13 Jan 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.220.135
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736794195; cv=fail; b=VuMIj/QMixE4GAKSC0P1ffXpjX1DkQfZGtI/ROPNAFYUx6lmb2eciv/1q1Wm4hZVv0ktJJrPJ4XM6kuWi/IyfoGJz/lmH/URiOEt0OPirSfv+WHSIfkSctCMmfROpIet3SuCHijxRq5Ycm+kGjIt3U/J50pxMLjKld/4WRnWOKM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736794195; c=relaxed/simple;
	bh=5+AE/42uZ5vYFZnZ2yz42NqnJwT1g81VM/Fe3pt/lS8=;
	h=From:To:Cc:Subject:Date:Message-Id:Content-Type:MIME-Version; b=YvuN9JwPU9NglhQZWM7FEwf2L+Ymw9f4IpqNSl72parlwnzWYNZ4yTI8AG8X8ZuDpBVZ9TTw7D0y3WjQ2gzSFZ2mAjPLA5S3TfQrQHO8RDChMii+FsOrdjRpiTKtVR23l47AFkbvdnYy+l4/GtxrBI/RhNZa5+WcjFkMH2nTaik=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=phytec.com; spf=pass smtp.mailfrom=phytec.com; dkim=pass (1024-bit key) header.d=phytec.com header.i=@phytec.com header.b=YwcIn263; arc=fail smtp.client-ip=40.107.220.135
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=phytec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Kcsd+ufZ6DV03/zB5VMpoEwjHV5tJtWR7TU8FPfGAwX4zRAwQ1pH6XY6SbB4MOVRg222qiVM6Bw0aIGkBg1kiX41Mq4qPCQ3xr3qRX4LFg7vztayqk3e7nHkLy1lpswYcgQJIzOcEUrBrkHiZyEhD8B0rkeIOgL5WRzJeu0eBWXLobfFn11pnE7VpPoSmeb8GQpsSAzsS6K8//T51TIx5JjvxWr3RKjR7EaCbqvCPnBLl1m6dxe4pv7gRccOF8v1pjqe3cnZlYLIs9P60/Ow2y2OZnfFQenkmnTKmogGhoRNQMEz48x7yCDHe3ySAfMXOZapqvI7yuSXyfluofJvdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3jnzlSwSj7ni8rUOG0aVnzLyyTkdFkrc+z4qqNrKNTM=;
 b=Fi0ZMQZ+sN1MR4SkmIrICsWqQG0JKGXRVoF8ycVyZ72KivGUuo8v7AR0n3tGl6Uut9nx8h+D2jdRaAN8oQ+ftcPJqg+n+DyhSu2N+GLdhb8JHeKGxRuhHjFiu1cpv9daTIOd10IRp2bT1KXlaP0OwELdb1EnHPGYn5G9O8heUSopZeTExkffhVSUiCAl93MdwmUiNybKREmmcDIAqIKE3hPW+9ZJDhskdQCrOgP4ZsQY+vLaM+NTrfiz3oW8YbKpuPRoyE6JQ9K4gQfstg3o3Me4wznKyulji0XjNeY3T0Gho99DQclzgihVRFviwKL0kShk2KALi4fM4K60J2J6IA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=phytec.com; dmarc=pass action=none header.from=phytec.com;
 dkim=pass header.d=phytec.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=phytec.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3jnzlSwSj7ni8rUOG0aVnzLyyTkdFkrc+z4qqNrKNTM=;
 b=YwcIn2632TEE2SUeQ0HmTY69Y1zW724iW2OBph4C89A0fRjCb04VJXoQnG6nyeB6sjz1pvXl8Ah3upRNm8FaF+Hoult2QRq7Osatk7/MAIdyS59OLdCoo0I14L5Wor0ONjBR57VpHsz0q1vsDCxW1HfaVJGIDRB81IPxJSdZPtc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=phytec.com;
Received: from SJ2PR22MB4354.namprd22.prod.outlook.com (2603:10b6:a03:537::8)
 by SA3PR22MB4427.namprd22.prod.outlook.com (2603:10b6:806:37d::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Mon, 13 Jan
 2025 18:49:49 +0000
Received: from SJ2PR22MB4354.namprd22.prod.outlook.com
 ([fe80::789c:e41e:1367:383d]) by SJ2PR22MB4354.namprd22.prod.outlook.com
 ([fe80::789c:e41e:1367:383d%4]) with mapi id 15.20.8335.017; Mon, 13 Jan 2025
 18:49:49 +0000
From: Garrett Giordano <ggiordano@phytec.com>
To: nm@ti.com,
	vigneshr@ti.com,
	kristo@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	w.egorov@phytec.de
Cc: upstream@lists.phytec.de,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arch: arm64: dts: ti: Add PEB-C-010 Overlay
Date: Mon, 13 Jan 2025 10:49:26 -0800
Message-Id: <20250113184926.2209094-1-ggiordano@phytec.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BN9PR03CA0056.namprd03.prod.outlook.com
 (2603:10b6:408:fb::31) To SJ2PR22MB4354.namprd22.prod.outlook.com
 (2603:10b6:a03:537::8)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ2PR22MB4354:EE_|SA3PR22MB4427:EE_
X-MS-Office365-Filtering-Correlation-Id: 64d862c5-a7c0-4d7e-58e1-08dd34030ec7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|366016|7416014|52116014|376014|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?/O5gzlPVc8a+iwIq8oC4yFCb/n47md4uR9NVnko3+GNmw3pg8n0hlaCxkDpX?=
 =?us-ascii?Q?cJRk0ordchKSdKOhmQjQSgE5kmg1AfNkAUvcSZC1Cjwhye911WO1LR0Xe8CM?=
 =?us-ascii?Q?08wOems7Xj6mlRrZnTYVUENi+SQ9rE/lp6b0HcZVrML5GTgrFCTWhglod/0u?=
 =?us-ascii?Q?75p1kLKdORDXcF8m33HN+jSp4n4omn8nHTo6ExtVLLneseF1tjH8aIu7QSDo?=
 =?us-ascii?Q?Wbj4/BRG6ao0Zb480Tynviv7TUeIU6UHNk+68fOY0Kj3PpiXL6XpG8vrCQuC?=
 =?us-ascii?Q?Y/f2JgdxyMZGTrNLq0+GY6GsaDBQVhzUnl9fUvx01PVes7X2ycbqheLC5DTW?=
 =?us-ascii?Q?RwQTePEtq/MCAUh3MXCWC050gbPCVWZvuoVdlOcS/9++vud+v1sPAiKI2HIQ?=
 =?us-ascii?Q?x45aEkyNWHD60iOPwiLoUCbOBoc48P2UvIjAcRwrqnWWc5kvAK3a5mRctOgA?=
 =?us-ascii?Q?osjG/GQBzH4m/7SIZcsOnoZR5iw1K2Po3zRdoc8pLsfQBIUwjMDojZxASpF4?=
 =?us-ascii?Q?RdAOBZ73znd1rA5dLGzbl+2QVz3/c+62+PXZ122AkmaM50KseAp1MYjDuD5W?=
 =?us-ascii?Q?mSmo6+n6c5gxNtoZH7lMhx7y3L2NRIMegjY4as3gG6uaaii/TBf3+P57DUEs?=
 =?us-ascii?Q?ow4fyTeBOC3uhJjHpkU3nDczbkjtbXmYUQvfLlUTDNhyoT1QpbGMYm16Y6mX?=
 =?us-ascii?Q?xs/26AAFjebJgMVv3H6jD/ei6BGvdT6whCZmfakWcYqY/Tl++DueB3wA29no?=
 =?us-ascii?Q?ztncxgcU/evon1YyTLHgOdakF8AZ+D39RilrDJ8BnxuSnNw/c0Bw9ceeENJw?=
 =?us-ascii?Q?l0RaNYcUC6o2ZbQWkHW0mN4XHi2YWlZBYMwI+kkxlLtrYSmbIzRlEoZZQiST?=
 =?us-ascii?Q?mfAzmuP4ISPOHBhWi50SzKkEHlnoXrV19uygc0n2o2QNrHBgdl+0vfjKtWrD?=
 =?us-ascii?Q?0ZQ7DGWYdABd89nT7ZHeDV8KoqMQ5qi/7XCZOanErLE5UKsbIuLeXMlGbNtJ?=
 =?us-ascii?Q?CiLT/Rna7pYWfmRXHaGNGyj5/Al0MgNHQUFGpxSXfCAVPSiCA6HR/g6RlDrJ?=
 =?us-ascii?Q?gPY6YR1bqzM/C5FeXi6oeFMntLhlugLRwP1u137jo2nzP2yXe2YywOxTG5W0?=
 =?us-ascii?Q?ZV/NZ+/eAnv2CuxlU/VXfuPYAVHyyxJDeVRWwyi0gPuXYT0wwEcSXP8s7eSQ?=
 =?us-ascii?Q?CEHQtboC0WBEjrdZ1wlN8MyqDI9qMdtHL+Bb7ekDUjBB1fDV0ng0oqa+SFTe?=
 =?us-ascii?Q?zO4Nv+iVodR518/lHJAlfCBpXYYAel4qGWbHvE2O/JvUjcPoPP0eOAPaPx2V?=
 =?us-ascii?Q?lSyRyG+bGcVZTIJmWsvV6WIA5taFh1BDD1AJYGQBiylR/g2KefaF7sShnqFU?=
 =?us-ascii?Q?EjGnt+6a1cershT6UTGKooC321Y9OieSSJcda9Ou7YuT3tkde90O2j1C16QS?=
 =?us-ascii?Q?pXtA7RIEzZkdVvlZJUUpq4DwvbHYhPS8?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ2PR22MB4354.namprd22.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(7416014)(52116014)(376014)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?Bzy6jrQ+ud9ZkzHzCa+4mPLzdEIHItA2L7LfkTbN/ZPBfYwcCn7HUGsT1tS7?=
 =?us-ascii?Q?l+VJqDuRX7KYISc67icjKjJoknMDt6guCzx14fK508O8K9ufMh5Xo0WjSnOQ?=
 =?us-ascii?Q?q0dAbVA00A0ssrVyi5WuHlRcCCzq6s+YIH3mHIuF87oTpJn092DPYEbwUHZe?=
 =?us-ascii?Q?R0E6NqMHcS1A719C7uZ4L5fKI0MmbTv/5UL7KHVDAu4J3JDY2Bwb7QNJmJ+l?=
 =?us-ascii?Q?EkrivrGTwhtN5rQ7rz3LlarWk4DxsloRYLtY9cL6D+xtrWw59u1pHMuaee5h?=
 =?us-ascii?Q?LdqImNqbjjpncmsElaQYwdIPxUXCRRPyD7jG9vkjSJPKlInOVozjIArYbxHh?=
 =?us-ascii?Q?aeVMoetMFZdKHDlYxvoKrRCR8gc8nuPkVCf48gwuGFEgTn4b5omKk+UXsQvV?=
 =?us-ascii?Q?Eij3l+b97J3+wEJjMzjHhzgkSGVE0SpkrUZtJC103Gv0olOT2KbEKFfdjeIK?=
 =?us-ascii?Q?8eFbGYHN400cv6MZZ/wKhsnCb8lDjwOjFD0R13CAxoWn1gMogN3oJTm9eBF7?=
 =?us-ascii?Q?pxjuxRiNrWjHUw5jnoIuP9J/MQq1js4rOGwazKUFDANhL2Ib+g4pWHaimixQ?=
 =?us-ascii?Q?mkPfjHDz2XMpMvzUToYelm5Olv/TVNJQ0i/inDwyeu+2DuMZs7VINTPY+dCv?=
 =?us-ascii?Q?2PGohSJh/M7jgA4dBdOGGLhTOY7bXPf4jYWISeJYFDZmmoTm3r5B+c22R0Lk?=
 =?us-ascii?Q?ZzeaQLcD0qGG86TCH9oPG9XCWU4l1FylaisSNqGfD/qaGKwmTCptRFEXm+LJ?=
 =?us-ascii?Q?x05Id1sA9nRKLgNNrazM6vfYdD839PqyjXVLemVA8lM5BpQldBR7ubkrFe9Q?=
 =?us-ascii?Q?bNhBMC6ZgSUcIb37GwuA7PoCwvKoUiTBMpKhBQWvbS1NskqIKEgtmex6BkVv?=
 =?us-ascii?Q?eq4XgPpqfqtpblQxkHVUv/K4TkJ+zQLUm/xPNCr5776aE8XZRseBO9Yo4OH5?=
 =?us-ascii?Q?tMm2vjPGNl9rv2rDUliSjdJQCc/WYBfTZZ3KyuYgtox6K8MvSkM0IX45A86R?=
 =?us-ascii?Q?oFoNhlLsAcqjT9jLwitRpAHwWeAClIzeRGTR1z5/0pDE6ywChzJqNqZWC9ZK?=
 =?us-ascii?Q?Zia4Z8GOiAhxoxhG5gllbSciFxtaM13MpcxV+DU2mp+nagltqSW+eM+lot1e?=
 =?us-ascii?Q?ariGrzrNYHOoc0fXhsAia8UdskbcTtjtWUwb68vpxCjfXd3y5dGiWNPVbHkM?=
 =?us-ascii?Q?twScJ1EAOgMMUtFvnkyYfH5G+2UcmPzOeEgUVGXjaQ2M7knbcCsXhFC9hIjk?=
 =?us-ascii?Q?oy5hkNO1Ttty7cvDtLITG13moyTM1o8D8sfGUr8WKeGs5g8eQKP/SyCEzj8L?=
 =?us-ascii?Q?UeXlwzGCLYGpJ6pmdFL1m/sxR3gd1vqeq1j57VJ9uIBTNnLPSRV/UAZMRAdZ?=
 =?us-ascii?Q?uNw1kkR/DdQHaHjc9cVvQq0hpxYWbxmNGEi7r3xBPUe8rnwFHyI3A13Z17SO?=
 =?us-ascii?Q?g+O28TS6jHhtd1cqP6up4+W5QRkiAE+HpzyGawfekuVE+UQMpqS6PcSOyjWg?=
 =?us-ascii?Q?7pJt6svcy2d1bgBeSkPn96z5PsjLwXUjs6Qb1kv1LjrLVUoTJk9hehb0MCTs?=
 =?us-ascii?Q?2YU7ysVgjsxvvMqlYqAx2imOpZQ20Ocy3Af5Ydm5?=
X-OriginatorOrg: phytec.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 64d862c5-a7c0-4d7e-58e1-08dd34030ec7
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR22MB4354.namprd22.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2025 18:49:49.5918
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 67bcab1a-5db0-4ee8-86f4-1533d0b4b5c7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P4HPpiLa/ad0Uz1mTR6cy8K838DMm3OYZuonPX18697jDKSHrHO43HFvQGKq9MZ0ObdmzMGhH5yB3jYJxjwv6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR22MB4427

The PEB-C-010 expansion board adds two extra 1Gbps ethernet ports to
the phyBOARD-AM64x Development Kit.

Signed-off-by: Garrett Giordano <ggiordano@phytec.com>
---
 arch/arm64/boot/dts/ti/Makefile               |   3 +
 .../k3-am642-phyboard-electra-peb-c-010.dtso  | 158 ++++++++++++++++++
 2 files changed, 161 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am642-phyboard-electra-peb-c-010.dtso

diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
index f71360f14f23..7f8bd6114b8a 100644
--- a/arch/arm64/boot/dts/ti/Makefile
+++ b/arch/arm64/boot/dts/ti/Makefile
@@ -58,6 +58,7 @@ dtb-$(CONFIG_ARCH_K3) += k3-am642-evm-nand.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am642-phyboard-electra-rdk.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am642-phyboard-electra-gpio-fan.dtbo
 dtb-$(CONFIG_ARCH_K3) += k3-am642-phyboard-electra-pcie-usb2.dtbo
+dtb-$(CONFIG_ARCH_K3) += k3-am642-phyboard-electra-peb-c-010.dtbo
 dtb-$(CONFIG_ARCH_K3) += k3-am642-sk.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am642-tqma64xxl-mbax4xxl.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am64-tqma64xxl-mbax4xxl-sdcard.dtbo
@@ -186,6 +187,8 @@ k3-am642-phyboard-electra-gpio-fan-dtbs := \
 	k3-am642-phyboard-electra-rdk.dtb k3-am642-phyboard-electra-gpio-fan.dtbo
 k3-am642-phyboard-electra-pcie-usb2-dtbs := \
 	k3-am642-phyboard-electra-rdk.dtb k3-am642-phyboard-electra-pcie-usb2.dtbo
+k3-am642-phyboard-electra-peb-c-010-dtbs := \
+	k3-am642-phyboard-electra-rdk.dtb k3-am642-phyboard-electra-peb-c-010.dtbo
 k3-am642-tqma64xxl-mbax4xxl-sdcard-dtbs := \
 	k3-am642-tqma64xxl-mbax4xxl.dtb k3-am64-tqma64xxl-mbax4xxl-sdcard.dtbo
 k3-am642-tqma64xxl-mbax4xxl-wlan-dtbs := \
diff --git a/arch/arm64/boot/dts/ti/k3-am642-phyboard-electra-peb-c-010.dtso b/arch/arm64/boot/dts/ti/k3-am642-phyboard-electra-peb-c-010.dtso
new file mode 100644
index 000000000000..1dc912bf5bbe
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-am642-phyboard-electra-peb-c-010.dtso
@@ -0,0 +1,158 @@
+// SPDX-License-Identifier: GPL-2.0-only OR MIT
+/*
+ * Copyright (C) 2024 PHYTEC America LLC
+ * Author: Garrett Giordano <ggiordano@phytec.com>
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/net/ti-dp83869.h>
+#include "k3-pinctrl.h"
+
+&{/} {
+	aliases {
+		ethernet3 = &icssg1_emac0;
+		ethernet4 = &icssg1_emac1;
+	};
+
+	icssg1-ethernet {
+		compatible = "ti,am642-icssg-prueth";
+		pinctrl-names = "default";
+		pinctrl-0 = <&icssg1_rgmii1_pins_default>, <&icssg1_rgmii2_pins_default>;
+
+		dmas = <&main_pktdma 0xc200 15>, /* egress slice 0 */
+				<&main_pktdma 0xc201 15>, /* egress slice 0 */
+				<&main_pktdma 0xc202 15>, /* egress slice 0 */
+				<&main_pktdma 0xc203 15>, /* egress slice 0 */
+				<&main_pktdma 0xc204 15>, /* egress slice 1 */
+				<&main_pktdma 0xc205 15>, /* egress slice 1 */
+				<&main_pktdma 0xc206 15>, /* egress slice 1 */
+				<&main_pktdma 0xc207 15>, /* egress slice 1 */
+				<&main_pktdma 0x4200 15>, /* ingress slice 0 */
+				<&main_pktdma 0x4201 15>, /* ingress slice 1 */
+				<&main_pktdma 0x4202 0>, /* mgmnt rsp slice 0 */
+				<&main_pktdma 0x4203 0>; /* mgmnt rsp slice 1 */
+		dma-names = "tx0-0", "tx0-1", "tx0-2", "tx0-3",
+					"tx1-0", "tx1-1", "tx1-2", "tx1-3",
+					"rx0", "rx1",
+					"rxmgm0", "rxmgm1";
+
+		firmware-name = "ti-pruss/am65x-sr2-pru0-prueth-fw.elf",
+				"ti-pruss/am65x-sr2-rtu0-prueth-fw.elf",
+				"ti-pruss/am65x-sr2-txpru0-prueth-fw.elf",
+				"ti-pruss/am65x-sr2-pru1-prueth-fw.elf",
+				"ti-pruss/am65x-sr2-rtu1-prueth-fw.elf",
+				"ti-pruss/am65x-sr2-txpru1-prueth-fw.elf";
+
+		interrupt-parent = <&icssg1_intc>;
+		interrupts = <24 0 2>, <25 1 3>;
+		interrupt-names = "tx_ts0", "tx_ts1";
+		sram = <&oc_sram>;
+
+		ti,iep = <&icssg1_iep0>, <&icssg1_iep1>;
+		ti,mii-g-rt = <&icssg1_mii_g_rt>;
+		ti,mii-rt = <&icssg1_mii_rt>;
+		ti,pa-stats = <&icssg1_pa_stats>;
+		ti,prus = <&pru1_0>, <&rtu1_0>, <&tx_pru1_0>, <&pru1_1>, <&rtu1_1>, <&tx_pru1_1>;
+		ti,pruss-gp-mux-sel = <2>,	/* MII mode */
+				      <2>,
+				      <2>,
+				      <2>,	/* MII mode */
+				      <2>,
+				      <2>;
+
+		ethernet-ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			icssg1_emac0: port@0 {
+				reg = <0>;
+				phy-handle = <&icssg1_phy1>;
+				phy-mode = "rgmii-id";
+				/* Filled in by bootloader */
+				local-mac-address = [00 00 00 00 00 00];
+				ti,syscon-rgmii-delay = <&main_conf 0x4110>;
+			};
+
+			icssg1_emac1: port@1 {
+				reg = <1>;
+				phy-handle = <&icssg1_phy2>;
+				phy-mode = "rgmii-id";
+				/* Filled in by bootloader */
+				local-mac-address = [00 00 00 00 00 00];
+				ti,syscon-rgmii-delay = <&main_conf 0x4114>;
+			};
+		};
+	};
+};
+
+&main_pmx0 {
+	icssg1_mdio_pins_default: icssg1-mdio-pins-default {
+		pinctrl-single,pins = <
+			AM64X_IOPAD(0x015c, PIN_OUTPUT, 0) /* (Y6) PRG1_MDIO0_MDC */
+			AM64X_IOPAD(0x0158, PIN_INPUT, 0)  /* (AA6) PRG1_MDIO0_MDIO */
+		>;
+	};
+
+	icssg1_rgmii1_pins_default: icssg1-rgmii1-pins-default {
+		pinctrl-single,pins = <
+			AM64X_IOPAD(0x00b8, PIN_INPUT, 2) /* (Y7) PRG1_PRU0_GPO0.PRG1_RGMII1_RD0 */
+			AM64X_IOPAD(0x00bc, PIN_INPUT, 2) /* (U8) PRG1_PRU0_GPO1.PRG1_RGMII1_RD1 */
+			AM64X_IOPAD(0x00c0, PIN_INPUT, 2) /* (W8) PRG1_PRU0_GPO2.PRG1_RGMII1_RD2 */
+			AM64X_IOPAD(0x00c4, PIN_INPUT, 2) /* (V8) PRG1_PRU0_GPO3.PRG1_RGMII1_RD3 */
+			AM64X_IOPAD(0x00d0, PIN_INPUT, 2) /* (AA7) PRG1_PRU0_GPO6.PRG1_RGMII1_RXC */
+			AM64X_IOPAD(0x00c8, PIN_INPUT, 2) /* (Y8) PRG1_PRU0_GPO4.PRG1_RGMII1_RX_CTL */
+			AM64X_IOPAD(0x00e4, PIN_OUTPUT, 2) /* (AA8) PRG1_PRU0_GPO11.PRG1_RGMII1_TD0 */
+			AM64X_IOPAD(0x00e8, PIN_OUTPUT, 2) /* (U9) PRG1_PRU0_GPO12.PRG1_RGMII1_TD1 */
+			AM64X_IOPAD(0x00ec, PIN_OUTPUT, 2) /* (W9) PRG1_PRU0_GPO13.PRG1_RGMII1_TD2 */
+			AM64X_IOPAD(0x00f0, PIN_OUTPUT, 2) /* (AA9) PRG1_PRU0_GPO14.PRG1_RGMII1_TD3 */
+			AM64X_IOPAD(0x00f4, PIN_OUTPUT, 2) /* (Y9) PRG1_PRU0_GPO15.PRG1_RGMII1_TX_CTL */
+			AM64X_IOPAD(0x00f8, PIN_INPUT, 2) /* (V9) PRG1_PRU0_GPO16.PRG1_RGMII1_TXC */
+		>;
+	};
+
+	icssg1_rgmii2_pins_default: icssg1-rgmii2-pins-default {
+		pinctrl-single,pins = <
+			AM64X_IOPAD(0x0108, PIN_INPUT, 2) /* (W11) PRG1_PRU1_GPO0.PRG1_RGMII2_RD0 */
+			AM64X_IOPAD(0x010c, PIN_INPUT, 2) /* (V11) PRG1_PRU1_GPO1.PRG1_RGMII2_RD1 */
+			AM64X_IOPAD(0x0110, PIN_INPUT, 2) /* (AA12) PRG1_PRU1_GPO2.PRG1_RGMII2_RD2 */
+			AM64X_IOPAD(0x0114, PIN_INPUT, 2) /* (Y12) PRG1_PRU1_GPO3.PRG1_RGMII2_RD3 */
+			AM64X_IOPAD(0x0118, PIN_INPUT, 2) /* (W12) PRG1_PRU1_GPO4.PRG1_RGMII2_RX_CTL */
+			AM64X_IOPAD(0x0120, PIN_INPUT, 2) /* (U11) PRG1_PRU1_GPO6.PRG1_RGMII2_RXC */
+			AM64X_IOPAD(0x0134, PIN_OUTPUT, 2) /* (AA10) PRG1_PRU1_GPO11.PRG1_RGMII2_TD0 */
+			AM64X_IOPAD(0x0138, PIN_OUTPUT, 2) /* (V10) PRG1_PRU1_GPO12.PRG1_RGMII2_TD1 */
+			AM64X_IOPAD(0x013c, PIN_OUTPUT, 2) /* (U10) PRG1_PRU1_GPO13.PRG1_RGMII2_TD2 */
+			AM64X_IOPAD(0x0140, PIN_OUTPUT, 2) /* (AA11) PRG1_PRU1_GPO14.PRG1_RGMII2_TD3 */
+			AM64X_IOPAD(0x0144, PIN_OUTPUT, 2) /* (Y11) PRG1_PRU1_GPO15.PRG1_RGMII2_TX_CTL */
+			AM64X_IOPAD(0x0148, PIN_INPUT, 2) /* (Y10) PRG1_PRU1_GPO16.PRG1_RGMII2_TXC */
+		>;
+	};
+};
+
+&icssg1_mdio {
+	pinctrl-names = "default";
+	pinctrl-0 = <&icssg1_mdio_pins_default>;
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	icssg1_phy1: ethernet-phy@1 {
+		reg = <0x1>;
+		rx-fifo-depth = <DP83869_PHYCR_FIFO_DEPTH_4_B_NIB>;
+		tx-fifo-depth = <DP83869_PHYCR_FIFO_DEPTH_4_B_NIB>;
+		rx-internal-delay-ps = <2000>;
+		tx-internal-delay-ps = <2000>;
+		ti,clk-output-sel = <DP83869_CLK_O_SEL_REF_CLK>;
+		ti,min-output-impedance;
+	};
+
+	icssg1_phy2: ethernet-phy@2 {
+		reg = <0x2>;
+		rx-fifo-depth = <DP83869_PHYCR_FIFO_DEPTH_4_B_NIB>;
+		tx-fifo-depth = <DP83869_PHYCR_FIFO_DEPTH_4_B_NIB>;
+		rx-internal-delay-ps = <2000>;
+		tx-internal-delay-ps = <2000>;
+		ti,clk-output-sel = <DP83869_CLK_O_SEL_REF_CLK>;
+		ti,min-output-impedance;
+	};
+};
-- 
2.25.1


