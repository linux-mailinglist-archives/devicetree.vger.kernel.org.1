Return-Path: <devicetree+bounces-11345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6F87D54F3
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 17:12:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 513C51C20BC9
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 15:12:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D68B2E654;
	Tue, 24 Oct 2023 15:12:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=flawful.org header.i=@flawful.org header.b="odXpgW2V";
	dkim=pass (1024-bit key) header.d=flawful.org header.i=@flawful.org header.b="aqo6fhzQ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0A962C84D
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 15:12:45 +0000 (UTC)
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5344410F4
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 08:12:23 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2c504a5e1deso72873771fa.2
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 08:12:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698160341; x=1698765141;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-signature
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ErYDPZxHlGKWRGh1uHyf/gkIgr8quGpEBSe4QaL/8Iw=;
        b=RGMcFN78Ovifo8froDymBXx+3LtXJdUcF5AFr6ONhoAcpUnC752dRhHah7gqa+gFqV
         fNr0p+bvov6yWuS+tGELGAGwit4iGGDVQvDW2pp2R0R3bMEgpccC41YqygDyiokZF73p
         MUeq2bXmg6Gwszh0MlKUqnnnxNX2VXSr+hXF3k7Tyy2x8f/paUPmP5ClcAEgnavwSPXL
         zCt1+xC/lTKNnzK+PAyWyFgAPyDV/pyDZutFwXOhy1rQdsxXg4EFPEBrPivnicGPZkx/
         zHID3427nG4wP85upCDXybuVq4g740TPvJvYJjPwKCjZU8RFrz9PfFavCDrR8kRkGWr5
         4Sqw==
X-Gm-Message-State: AOJu0Yy5UkPCSSDzYdes4k37eGaBMX1O/HyW4+kHoztUeMD4z3GrvSt+
	L5QXLCWCGkM+w+DGXtB5O7nBjSHQUnbg+Q==
X-Google-Smtp-Source: AGHT+IFywoP8DRa94ZunspkjO0BtfZv1YVbwFihV6ZGEvkPjK6qjphQPpKsONBFdqhITnzx/3yvc3A==
X-Received: by 2002:a2e:b8c4:0:b0:2c5:e0:1634 with SMTP id s4-20020a2eb8c4000000b002c500e01634mr8533140ljp.35.1698160341085;
        Tue, 24 Oct 2023 08:12:21 -0700 (PDT)
Received: from flawful.org (c-f5f0e255.011-101-6d6c6d3.bbcust.telenor.se. [85.226.240.245])
        by smtp.gmail.com with ESMTPSA id a18-20020a2e8612000000b002bce38190a3sm2063891lji.34.2023.10.24.08.12.20
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 08:12:20 -0700 (PDT)
Received: by flawful.org (Postfix, from userid 112)
	id DB10F14D4; Tue, 24 Oct 2023 17:12:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=flawful.org; s=mail;
	t=1698160340; bh=MJQPrt0WclUUI63J7BXde/G6Km1xt1fTunHs0Soe+Yk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=odXpgW2VNsRdoGSPACUo1+eUu7FRgx5RoTQqerD/nwEt19MIJcUHgzUye8n6HsOnv
	 hty2CYtJ66P5065A0l8eHX485bWbnBfqGuT/hvv/lwI8CT/ZhNr2J2LFZwioGDV++u
	 A+xyERH3z1/NpnPVfgLOCE3KM4RuhHLJWlJfbb1g=
X-Spam-Level: 
Received: from x1-carbon.lan (OpenWrt.lan [192.168.1.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by flawful.org (Postfix) with ESMTPSA id 6B53B14E3;
	Tue, 24 Oct 2023 17:10:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=flawful.org; s=mail;
	t=1698160245; bh=MJQPrt0WclUUI63J7BXde/G6Km1xt1fTunHs0Soe+Yk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=aqo6fhzQyyWCdA5YuF7vVGUiRtxAL4aDO/jIDL3qJTX9sJhZx+WVDfvQoqfYZxS0r
	 Unwk9IjPvWkP79Swc89i1BRyhJlFeLSoNB7Y+93PK/6ATRG4Xfv8DTXSGdiTsjkVdM
	 p1uJ4MiMmqOrFNeNMtjT0A1LYLHuJ+UqpmMqrslA=
From: Niklas Cassel <nks@flawful.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jagan Teki <jagan@edgeble.ai>,
	Kever Yang <kever.yang@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <niklas.cassel@wdc.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 2/4] arm64: dts: rockchip: add missing mandatory rk3588 PCIe atu property
Date: Tue, 24 Oct 2023 17:10:09 +0200
Message-ID: <20231024151014.240695-3-nks@flawful.org>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231024151014.240695-1-nks@flawful.org>
References: <20231024151014.240695-1-nks@flawful.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Niklas Cassel <niklas.cassel@wdc.com>

From the snps,dw-pcie.yaml devicetree binding:
"At least DBI reg-space and peripheral devices CFG-space outbound window
are required for the normal controller work. iATU memory IO region is
also required if the space is unrolled (IP-core version >= 4.80a)."

All the PCIe controllers in rk3588 are using the iATU unroll feature,
and thus have to supply the atu property in the device tree node.

The size of the iATU region equals to:
MAX(num inbound ATU regions, num outbound ATU regions) * 0x200.

Where for each 0x200 region, the registers controlling the
IATU_REGION_OUTBOUND starts at offset 0x0, and the registers controlling
IATU_REGION_INBOUND starts at offset 0x100.

pcie3x4 and pcie3x2 have 16 ATU inbound regions, 16 ATU outbound regions,
so they have size: max(16, 16) * 0x200 = 0x2000

pcie2x1l0, pcie2x1l1, and pcie2x1l2 have 8 ATU inbound regions, 8 ATU
outbound regions, so they have size: max(8, 8) * 0x200 = 0x1000

On the rk3588 based rock-5b board:
Before this patch, dw_pcie_iatu_detect() fails to detect all iATUs:
rockchip-dw-pcie a40000000.pcie: iATU: unroll T, 8 ob, 8 ib, align 64K, limit 8G
rockchip-dw-pcie a41000000.pcie: iATU: unroll T, 8 ob, 8 ib, align 64K, limit 8G
rockchip-dw-pcie a40800000.pcie: iATU: unroll T, 8 ob, 8 ib, align 64K, limit 8G

After this patch, dw_pcie_iatu_detect() succeeds to detect all iATUs:
rockchip-dw-pcie a40000000.pcie: iATU: unroll T, 16 ob, 16 ib, align 64K, limit 8G
rockchip-dw-pcie a41000000.pcie: iATU: unroll T, 8 ob, 8 ib, align 64K, limit 8G
rockchip-dw-pcie a40800000.pcie: iATU: unroll T, 8 ob, 8 ib, align 64K, limit 8G

Fixes: 8d81b77f4c49 ("arm64: dts: rockchip: add rk3588 PCIe2 support")
Fixes: 0acf4fa7f187 ("arm64: dts: rockchip: add PCIe3 support for rk3588")
Signed-off-by: Niklas Cassel <niklas.cassel@wdc.com>
---
 arch/arm64/boot/dts/rockchip/rk3588.dtsi  | 21 ++++++++++++---------
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 14 ++++++++------
 2 files changed, 20 insertions(+), 15 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588.dtsi b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
index 5519c1430cb7..d7998a9c0c43 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
@@ -119,10 +119,11 @@ pcie3x4: pcie@fe150000 {
 		ranges = <0x01000000 0x0 0xf0100000 0x0 0xf0100000 0x0 0x00100000>,
 			 <0x02000000 0x0 0xf0200000 0x0 0xf0200000 0x0 0x00e00000>,
 			 <0x03000000 0x0 0x40000000 0x9 0x00000000 0x0 0x40000000>;
-		reg = <0xa 0x40000000 0x0 0x00400000>,
+		reg = <0xa 0x40000000 0x0 0x00300000>,
 		      <0x0 0xfe150000 0x0 0x00010000>,
-		      <0x0 0xf0000000 0x0 0x00100000>;
-		reg-names = "dbi", "apb", "config";
+		      <0x0 0xf0000000 0x0 0x00100000>,
+		      <0xa 0x40300000 0x0 0x00002000>;
+		reg-names = "dbi", "apb", "config", "atu";
 		resets = <&cru SRST_PCIE0_POWER_UP>, <&cru SRST_P_PCIE0>;
 		reset-names = "pwr", "pipe";
 		status = "disabled";
@@ -170,10 +171,11 @@ pcie3x2: pcie@fe160000 {
 		ranges = <0x01000000 0x0 0xf1100000 0x0 0xf1100000 0x0 0x00100000>,
 			 <0x02000000 0x0 0xf1200000 0x0 0xf1200000 0x0 0x00e00000>,
 			 <0x03000000 0x0 0x40000000 0x9 0x40000000 0x0 0x40000000>;
-		reg = <0xa 0x40400000 0x0 0x00400000>,
+		reg = <0xa 0x40400000 0x0 0x00300000>,
 		      <0x0 0xfe160000 0x0 0x00010000>,
-		      <0x0 0xf1000000 0x0 0x00100000>;
-		reg-names = "dbi", "apb", "config";
+		      <0x0 0xf1000000 0x0 0x00100000>,
+		      <0xa 0x40700000 0x0 0x00002000>;
+		reg-names = "dbi", "apb", "config", "atu";
 		resets = <&cru SRST_PCIE1_POWER_UP>, <&cru SRST_P_PCIE1>;
 		reset-names = "pwr", "pipe";
 		status = "disabled";
@@ -219,10 +221,11 @@ pcie2x1l0: pcie@fe170000 {
 		ranges = <0x01000000 0x0 0xf2100000 0x0 0xf2100000 0x0 0x00100000>,
 			 <0x02000000 0x0 0xf2200000 0x0 0xf2200000 0x0 0x00e00000>,
 			 <0x03000000 0x0 0x40000000 0x9 0x80000000 0x0 0x40000000>;
-		reg = <0xa 0x40800000 0x0 0x00400000>,
+		reg = <0xa 0x40800000 0x0 0x00300000>,
 		      <0x0 0xfe170000 0x0 0x00010000>,
-		      <0x0 0xf2000000 0x0 0x00100000>;
-		reg-names = "dbi", "apb", "config";
+		      <0x0 0xf2000000 0x0 0x00100000>,
+		      <0xa 0x40b00000 0x0 0x00001000>;
+		reg-names = "dbi", "apb", "config", "atu";
 		resets = <&cru SRST_PCIE2_POWER_UP>, <&cru SRST_P_PCIE2>;
 		reset-names = "pwr", "pipe";
 		#address-cells = <3>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 5544f66c6ff4..286d7b10b9dd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1259,10 +1259,11 @@ pcie2x1l1: pcie@fe180000 {
 		ranges = <0x01000000 0x0 0xf3100000 0x0 0xf3100000 0x0 0x00100000>,
 			 <0x02000000 0x0 0xf3200000 0x0 0xf3200000 0x0 0x00e00000>,
 			 <0x03000000 0x0 0x40000000 0x9 0xc0000000 0x0 0x40000000>;
-		reg = <0xa 0x40c00000 0x0 0x00400000>,
+		reg = <0xa 0x40c00000 0x0 0x00300000>,
 		      <0x0 0xfe180000 0x0 0x00010000>,
-		      <0x0 0xf3000000 0x0 0x00100000>;
-		reg-names = "dbi", "apb", "config";
+		      <0x0 0xf3000000 0x0 0x00100000>,
+		      <0xa 0x40f00000 0x0 0x00001000>;
+		reg-names = "dbi", "apb", "config", "atu";
 		resets = <&cru SRST_PCIE3_POWER_UP>, <&cru SRST_P_PCIE3>;
 		reset-names = "pwr", "pipe";
 		#address-cells = <3>;
@@ -1310,10 +1311,11 @@ pcie2x1l2: pcie@fe190000 {
 		ranges = <0x01000000 0x0 0xf4100000 0x0 0xf4100000 0x0 0x00100000>,
 			 <0x02000000 0x0 0xf4200000 0x0 0xf4200000 0x0 0x00e00000>,
 			 <0x03000000 0x0 0x40000000 0xa 0x00000000 0x0 0x40000000>;
-		reg = <0xa 0x41000000 0x0 0x00400000>,
+		reg = <0xa 0x41000000 0x0 0x00300000>,
 		      <0x0 0xfe190000 0x0 0x00010000>,
-		      <0x0 0xf4000000 0x0 0x00100000>;
-		reg-names = "dbi", "apb", "config";
+		      <0x0 0xf4000000 0x0 0x00100000>,
+		      <0xa 0x41300000 0x0 0x00001000>;
+		reg-names = "dbi", "apb", "config", "atu";
 		resets = <&cru SRST_PCIE4_POWER_UP>, <&cru SRST_P_PCIE4>;
 		reset-names = "pwr", "pipe";
 		#address-cells = <3>;
-- 
2.41.0


