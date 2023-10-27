Return-Path: <devicetree+bounces-12523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE5A7D9C69
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 16:58:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0255A282464
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 14:58:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9C06374C2;
	Fri, 27 Oct 2023 14:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=flawful.org header.i=@flawful.org header.b="igZ5lcWv";
	dkim=pass (1024-bit key) header.d=flawful.org header.i=@flawful.org header.b="lIEk++rU"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECB5B3716B
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 14:58:14 +0000 (UTC)
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30497116
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 07:58:13 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-508126afc88so3228239e87.1
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 07:58:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698418691; x=1699023491;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-signature
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=b6depyAdzlEahClY2ILTFQdJm84po5XS7FQbvEXfeAc=;
        b=YKNOZFxBk4YhoaRs5AUYi3mXbK7ZXBB6IIif7bSs5Ee/uceqE2vlyWUOYcJPsVtcN/
         vg1S+95hudPUQw49O69CRVQHfx1HQY3h1CjuVuP08CyzPlorSC6Qk81TH+StgDBABEdm
         oN8td6D6XnBIRTORJhwBDoln3lcyo6au8FllwgaLnlTo3UPh+EDepU70BhdDNXxYhb+a
         99nNWRyfYIhR+FrFlvvzuW1kOFxIOtHt3mZhxZkPoffLyelkYTbYd8SC++QFtXHp/jL9
         G2eJJoV+adk4tPkloQCK6manZmW8RNp7f5UCoK0APIJ85SJfAHGViEic4DxXLauD1TbM
         ZWoQ==
X-Gm-Message-State: AOJu0YzlHo5kO6C1O/L7pOSgvyJp0+9D9tUQOBelq7CUIq1pwSgOjZ4O
	uMvnZHLIFdI/U3tE8P4a3QdgU6EU2vcXhA==
X-Google-Smtp-Source: AGHT+IGAO59JeGtyvx3vTVuEuIIT0NIYjq68wa5x15sVGu2uaOKD8riy3Zt17SRl8Map9LV1GTOKrg==
X-Received: by 2002:a05:6512:1081:b0:507:9640:f256 with SMTP id j1-20020a056512108100b005079640f256mr2289820lfg.36.1698418691094;
        Fri, 27 Oct 2023 07:58:11 -0700 (PDT)
Received: from flawful.org (c-f5f0e255.011-101-6d6c6d3.bbcust.telenor.se. [85.226.240.245])
        by smtp.gmail.com with ESMTPSA id n23-20020a05651203f700b005056d0f000dsm300589lfq.155.2023.10.27.07.58.10
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 07:58:10 -0700 (PDT)
Received: by flawful.org (Postfix, from userid 112)
	id 2922A19B4; Fri, 27 Oct 2023 16:58:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=flawful.org; s=mail;
	t=1698418686; bh=qQ9hq70oYRmKNAJo1vjES7WLtnAHGiesxzIi/vwy5WM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=igZ5lcWvxHaE3hlZ6UTrdD6cK+M6LnsHKgJLAk54wRMwtr+gvtUC3WqrsqzA3ibZj
	 wIn2AUfY7aeKtE/+HgsvsAJsGZ05/hzGA8StS/amXtAswZuOkl9aNiELOIpFjLcOwc
	 wGSmOefs1iEbzmO3kRvcFL7gGdkxCKRganxZGtD0=
X-Spam-Level: 
Received: from x1-carbon.lan (OpenWrt.lan [192.168.1.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by flawful.org (Postfix) with ESMTPSA id 813C21AD0;
	Fri, 27 Oct 2023 16:54:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=flawful.org; s=mail;
	t=1698418487; bh=qQ9hq70oYRmKNAJo1vjES7WLtnAHGiesxzIi/vwy5WM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=lIEk++rUUgZ7bcX4gwedNqhgBeNIOuTZ40wjQ0mi1A3FyASflyK3/H7VRC+dje58n
	 ehllQ8j90x41PstlXZ+ZC6ZcMtz0Vb60HKhgcMgWSKG/uAxmz+PCU+lWFXM8EUcIcT
	 Pk6Pg/flWE1OUJiYlN9IcsoJ2xKRYO2De2XeAi6s=
From: Niklas Cassel <nks@flawful.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jagan Teki <jagan@edgeble.ai>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Serge Semin <fancer.lancer@gmail.com>,
	Niklas Cassel <niklas.cassel@wdc.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v3 5/6] arm64: dts: rockchip: add missing mandatory rk3588 PCIe atu reg
Date: Fri, 27 Oct 2023 16:54:17 +0200
Message-ID: <20231027145422.40265-6-nks@flawful.org>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231027145422.40265-1-nks@flawful.org>
References: <20231027145422.40265-1-nks@flawful.org>
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
and thus have to supply the atu reg in the device tree node.

Without this patch, the driver will not be able to detect all the inbound
and outbound iATUs. (The default iATU range that is used by by the driver,
when no atu reg is found, allows the driver to detect up to a maximum
of 8 inbound and 8 outbound iATUs.)

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
index 5519c1430cb7..28955acda9f2 100644
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
+		      <0xa 0x40300000 0x0 0x00100000>;
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
+		      <0xa 0x40700000 0x0 0x00100000>;
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
+		      <0xa 0x40b00000 0x0 0x00100000>;
+		reg-names = "dbi", "apb", "config", "atu";
 		resets = <&cru SRST_PCIE2_POWER_UP>, <&cru SRST_P_PCIE2>;
 		reset-names = "pwr", "pipe";
 		#address-cells = <3>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 5544f66c6ff4..60e02a5145e7 100644
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
+		      <0xa 0x40f00000 0x0 0x00100000>;
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
+		      <0xa 0x41300000 0x0 0x00100000>;
+		reg-names = "dbi", "apb", "config", "atu";
 		resets = <&cru SRST_PCIE4_POWER_UP>, <&cru SRST_P_PCIE4>;
 		reset-names = "pwr", "pipe";
 		#address-cells = <3>;
-- 
2.41.0


