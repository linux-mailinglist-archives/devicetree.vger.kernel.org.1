Return-Path: <devicetree+bounces-219869-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FC05B8EE53
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 05:59:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3252417CF55
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 03:59:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0775E2EDD58;
	Mon, 22 Sep 2025 03:58:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bryanhinton.com header.i=@bryanhinton.com header.b="zfXqqSvS"
X-Original-To: devicetree@vger.kernel.org
Received: from outbound.pv.icloud.com (p-west1-cluster6-host4-snip4-10.eps.apple.com [57.103.67.63])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79C5D2ECE8D
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 03:58:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=57.103.67.63
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758513526; cv=none; b=AjvujtpxtubjYJZ6jBtpflkie3CIijOEZ9cOvjWtq1GHAIvUMNq5uILNDtf6rbr5346lsL1zNOw5llD4V9/28NzMFeMc88BJGCvrnX5zIgoOcy10zA1thMjKvM/36Niu9PBk/Jcx16vmSfPMk/MCGL2WN0cfo+RqEDiRDWnBpfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758513526; c=relaxed/simple;
	bh=JJJI1CcJxWYuWCp7IFQSFI1UG87QL7Bwxk/zP50L3XY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LAaQ9FVLdzdDDR8OPl4sU6vAT8dxo0FaMKPrP8jTuYiH4B73iOeqJNl1WTFFQ4h9O8NuQza1UvVmEuqG0cfUmuiJ2HVX9FtQMd7gakk4jAFC3ItqlqFSoRvlIPQs4boXtBj4ANcQVyCFuCfM/am73KfivJeug09EiopDjpo0O0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bryanhinton.com; spf=pass smtp.mailfrom=bryanhinton.com; dkim=pass (2048-bit key) header.d=bryanhinton.com header.i=@bryanhinton.com header.b=zfXqqSvS; arc=none smtp.client-ip=57.103.67.63
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bryanhinton.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bryanhinton.com
Received: from outbound.pv.icloud.com (unknown [127.0.0.2])
	by p00-icloudmta-asmtp-us-west-1a-60-percent-3 (Postfix) with UTF8SMTPS id CC0A8180017E;
	Mon, 22 Sep 2025 03:58:40 +0000 (UTC)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bryanhinton.com; s=sig1; bh=O8HYVN07gDSXaOu8STfHqlIIT7RwSFQ27jn5Ap9U6NE=; h=From:To:Subject:Date:Message-ID:MIME-Version:x-icloud-hme; b=zfXqqSvSo2hiSBzhqwoMa0kVDBiWu+8TEBjzfboVPMcS+Z3nEXqmOicqsru+wLCgfwoUciJRyXWUtg23d5Y4tC1NMBjUOmZfM/yLUCDQej4QFMPXsF5avfDWn1MI7JRFabhfEi6E+TL1BjvBqJSxVZtEeVDP//LmluJJetPInfoPPSoFVMB2+ZHcDWOayxajddfOowhZACoVxeBx3mPGnc9+0yqx1fn7eNKpo1E/uyHyaf2p1NljovRkcC76v3rI2gerPx5QI8QM2EMrXZt4l+muFjTcte1dNmDB5va0GXqs1GJTBljdgyVVRc/nF7+YoHyXa4OH3fcW0rcOd7Mk3Q==
mail-alias-created-date: 1643268037438
Received: from localhost (pv-asmtp-me-k8s.p00.prod.me.com [17.56.9.36])
	by p00-icloudmta-asmtp-us-west-1a-60-percent-3 (Postfix) with UTF8SMTPSA id A97921800996;
	Mon, 22 Sep 2025 03:58:39 +0000 (UTC)
From: Bryan Hinton <bryan@bryanhinton.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	daniel@makrotopia.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	bryan@bryanhinton.com,
	kernel test robot <lkp@intel.com>
Subject: [PATCH v3 2/2] arm64: dts: mediatek: mt7981b: OpenWrt One: set console UART to 115200
Date: Sun, 21 Sep 2025 22:58:10 -0500
Message-ID: <20250922035828.2941327-3-bryan@bryanhinton.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250922035828.2941327-1-bryan@bryanhinton.com>
References: <20250922035828.2941327-1-bryan@bryanhinton.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: sGNH0LLxomuWs5zuOuM8AUACzi5xqiJg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDAzNiBTYWx0ZWRfX9QFjB1qO+EX+
 qiVq3UoucsRK9+nJ8ZjW1rh+OYb/ucu/xu3LFsNH0uE5TvUdtWxI8xK/Sz3AZyi+t4IbgG576so
 tKrXM8RVAe5fY8Y7A4n/HphrWKxGmW94Pmsw6KP4mPZjOMKvWUyzt4Pzk8NKa9diIMyrt/t56mZ
 3CnPbVsLcVyZYbT7KTaQTtOTuKtzeGD71BHatZFEKqiUyO+vsbOtKDPv4x9P1XDT4tUPeKFzs4Q
 IqysVsli96UrigaJ3y7xt0rK0vS/WmUBddu16TGdS2+/EtkeSPngrLaSvVraP8yMgpxX8aSUc=
X-Proofpoint-GUID: sGNH0LLxomuWs5zuOuM8AUACzi5xqiJg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-21_10,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 suspectscore=0 bulkscore=0 clxscore=1030 spamscore=0 mlxlogscore=999
 phishscore=0 adultscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.22.0-2506270000 definitions=main-2509220036
X-JNJ: AAAAAAABK2AL0pTFOiWYOHuLVg1Con28PkBY+KehYDhRl6RrHefaG6yK+xCLhqqn6rHCLGKaEXKI7Ta1pxkLtyg19UlsbWmk+oXHOl3grC7SKjrMD9pNjQcX/M+ga7RAtXHCTFmliFSFBi00JsmmRwP5zSaytW1mAOhCrS0B4eU2E27jeUTgkbIdFvvKKNWJoJ/aV8zGNf0G0LnAnWwF2SOQOM81nkPD62B0S05H/m42mzkmxmQss9hJ+tbmCE/pppGMr4CnfEsLyaHImDVeEgP9iZWi04ME39cyWfOgqX5Z3lUFxo/pffkCCnupDzdrNDLh5zviVugBMAHqzr1s4g2d3JxuSPsOp3kYxzksB0t43GhHVzKRGx9dlzmXbS461HuOEr2OGotNxxwGCLZGzjLCQfasvY2SodH24AwzDMcBmro6PpAYqQoqNPwkkp159MKHg/Ac498O+t4RWMoySAyUwmG/4ZGt9w62jXs+qj9TbtjXeY0N+HObGpPo/cusjLq1wSezvfRUMlOYZwhaURl1z8BwHXrhar/gAFLZ8Jy1uNCN7kzlo9KMY4JgKmO1UYCHfArcmBFtPaoklGxRP+/OtFNMWCrMGvaaEdpUr3A6ysJ2kEJwACNC2zaE1dTsvtoaGO63Rp9vJ+p/apg4GFssJ46zuy9CvorElgdUjpif2lb7QC2WRd7+ajLbgnvUpC99y3oNEWQCMaqS5iq83+GPwKk8uv1S9vIWCqVzAXpvjghvINVdVvGyGTbtPorlgHTAF0CIrnDTwdkeu7bns3Q/s1c40sjmrek=

Use the new uart0 label for the console and make the speed explicit by
setting stdout-path = "serial0:115200n8" under /chosen. This keeps the
DTS OS-agnostic: no bootargs or distribution-specific properties are
added.

Drop the 'current-speed' property from uart0 as it is not allowed by the
mediatek UART binding. The baud is already provided via stdout-path.

Verification: Boot-tested with mainline Image+DTB via U-Boot on OpenWrt
One (MT7981B). Serial console active at 115200, DTB decompile
confirms serial0 alias and stdout-path set correctly.

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/r/202509211032.0rJjPoYE-lkp@intel.com/
Signed-off-by: Bryan Hinton <bryan@bryanhinton.com>
---
 arch/arm64/boot/dts/mediatek/mt7981b-openwrt-one.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt7981b-openwrt-one.dts b/arch/arm64/boot/dts/mediatek/mt7981b-openwrt-one.dts
index 4f6cbb491287..968b91f55bb2 100644
--- a/arch/arm64/boot/dts/mediatek/mt7981b-openwrt-one.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7981b-openwrt-one.dts
@@ -8,8 +8,20 @@ / {
 	compatible = "openwrt,one", "mediatek,mt7981b";
 	model = "OpenWrt One";
 
+	aliases {
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
 	memory@40000000 {
 		reg = <0 0x40000000 0 0x40000000>;
 		device_type = "memory";
 	};
 };
+
+&uart0 {
+	status = "okay";
+};
-- 
2.51.0


