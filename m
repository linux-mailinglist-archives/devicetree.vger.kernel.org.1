Return-Path: <devicetree+bounces-12521-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E54AE7D9C62
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 16:57:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4B8F6B20C2E
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 14:57:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C053637179;
	Fri, 27 Oct 2023 14:57:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=flawful.org header.i=@flawful.org header.b="YsbpGZLd";
	dkim=pass (1024-bit key) header.d=flawful.org header.i=@flawful.org header.b="AC1j0s5R"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368533716B
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 14:57:15 +0000 (UTC)
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D58F7196
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 07:57:12 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-508126afb9bso3040540e87.0
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 07:57:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698418631; x=1699023431;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-signature
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BsJJ/V2PoKeSH7+cJbI059DATLh5neI6g7w5sBgpGlE=;
        b=b8RndUDZ2Cps5RT8QO5ZvukXPHBn76lHbzkckfJtFSDhSQis97AY2zRtPRoEMRBeJI
         VtlQxGRXyx7KD219NZsV2+YecImhrrkrBG2hryZqQQOG/MpMAsA96fkb9mJT4+yi6W0S
         XWqU1MTNyBAOG5/rl8AGzC8+29VwKf7TBfoWd1uFJ7G6Ik7Va581EqzDTTCyl/m/alet
         7k9FwLBm8dKVoPnnsL3sdvt7irVR7JPllrLMA4QBsyfVrLITh7COTSskFVrwIGtF7KBR
         MtZz9kP1SEPHtYDehVMFGBLXShl2qovPHK4Vj0Y3EObicAdd++rjkZ6TC/RGuj0TNB+x
         /G+w==
X-Gm-Message-State: AOJu0YxoGQEuAVgP4iX7Os9ehrMYJ+WX50ZQJHIR5Arbux/rbaiCxscC
	R6hOlBRvTLIJIl/8x1Elp2TDRPQWuUBSaA==
X-Google-Smtp-Source: AGHT+IFKsOs/XZRgbnjL5ndYAANElxW3f8vHaIjmxbLViXhV0CDBp9drc58+JCulpGyNjwgwhgcFmA==
X-Received: by 2002:a05:6512:238c:b0:503:261d:eab8 with SMTP id c12-20020a056512238c00b00503261deab8mr2633328lfv.28.1698418630843;
        Fri, 27 Oct 2023 07:57:10 -0700 (PDT)
Received: from flawful.org (c-f5f0e255.011-101-6d6c6d3.bbcust.telenor.se. [85.226.240.245])
        by smtp.gmail.com with ESMTPSA id n13-20020a19550d000000b004fde41a2059sm301953lfe.305.2023.10.27.07.57.10
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 07:57:10 -0700 (PDT)
Received: by flawful.org (Postfix, from userid 112)
	id 36B6E19B4; Fri, 27 Oct 2023 16:57:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=flawful.org; s=mail;
	t=1698418629; bh=4m/j33aLfnPTftHcMEfi4ylW+5Px5yZjm59ENTNn2S0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=YsbpGZLdMgNTlNNtrK20Hp9RBHnaG65PTVW3nI0WkwvwTpYy3TcwnDCYI2rfA4e20
	 kbWaiz+RoMLFTS24W1ZyZINmAyfXKu1f5E7w+ToidOSD+4ltF2BBZkrxe3LZMLaXWs
	 +3k8SDJTUxm7YJUiCTPhUe7ud02uMGfMgRklNrms=
X-Spam-Level: 
Received: from x1-carbon.lan (OpenWrt.lan [192.168.1.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by flawful.org (Postfix) with ESMTPSA id A55931A81;
	Fri, 27 Oct 2023 16:54:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=flawful.org; s=mail;
	t=1698418486; bh=4m/j33aLfnPTftHcMEfi4ylW+5Px5yZjm59ENTNn2S0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=AC1j0s5ReXm/pSSTHEsnbW+EfxJFSTBX0A/2P+2H1A2PM1ONslbRPPgEW6363wwGI
	 /TsUCq4ztQzwMiG9bMlxma0whHR5If0Pej5qQZJ8ctB/oph8ccrB+v33jfU7AHdxbV
	 DZuuQn9qBExT4WCtVIFRzNIYZv4mkOuATTK1Hi2A=
From: Niklas Cassel <nks@flawful.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Serge Semin <fancer.lancer@gmail.com>,
	Niklas Cassel <niklas.cassel@wdc.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v3 4/6] arm64: dts: rockchip: add missing mandatory rk3568 PCIe atu reg
Date: Fri, 27 Oct 2023 16:54:16 +0200
Message-ID: <20231027145422.40265-5-nks@flawful.org>
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

All the PCIe controllers in rk3568 are using the iATU unroll feature,
and thus have to supply the atu reg in the device tree node.

Without this patch, the driver will not be able to detect all the inbound
and outbound iATUs. (The default iATU range that is used by by the driver,
when no atu reg is found, allows the driver to detect up to a maximum
of 8 inbound and 8 outbound iATUs.)

Signed-off-by: Niklas Cassel <niklas.cassel@wdc.com>
---
 arch/arm64/boot/dts/rockchip/rk3568.dtsi | 14 ++++++++------
 arch/arm64/boot/dts/rockchip/rk356x.dtsi |  7 ++++---
 2 files changed, 12 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index 4487754065b7..019429891288 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -90,13 +90,14 @@ pcie3x1: pcie@fe270000 {
 		phys = <&pcie30phy>;
 		phy-names = "pcie-phy";
 		power-domains = <&power RK3568_PD_PIPE>;
-		reg = <0x3 0xc0400000 0x0 0x00400000>,
+		reg = <0x3 0xc0400000 0x0 0x00300000>,
 		      <0x0 0xfe270000 0x0 0x00010000>,
-		      <0x0 0xf2000000 0x0 0x00100000>;
+		      <0x0 0xf2000000 0x0 0x00100000>,
+		      <0x3 0xc0700000 0x0 0x00100000>;
+		reg-names = "dbi", "apb", "config", "atu";
 		ranges = <0x01000000 0x0 0xf2100000 0x0 0xf2100000 0x0 0x00100000>,
 			 <0x02000000 0x0 0xf2200000 0x0 0xf2200000 0x0 0x01e00000>,
 			 <0x03000000 0x0 0x40000000 0x3 0x40000000 0x0 0x40000000>;
-		reg-names = "dbi", "apb", "config";
 		resets = <&cru SRST_PCIE30X1_POWERUP>;
 		reset-names = "pipe";
 		/* bifurcation; lane1 when using 1+1 */
@@ -141,13 +142,14 @@ pcie3x2: pcie@fe280000 {
 		phys = <&pcie30phy>;
 		phy-names = "pcie-phy";
 		power-domains = <&power RK3568_PD_PIPE>;
-		reg = <0x3 0xc0800000 0x0 0x00400000>,
+		reg = <0x3 0xc0800000 0x0 0x00300000>,
 		      <0x0 0xfe280000 0x0 0x00010000>,
-		      <0x0 0xf0000000 0x0 0x00100000>;
+		      <0x0 0xf0000000 0x0 0x00100000>,
+		      <0x3 0xc0b00000 0x0 0x00100000>;
+		reg-names = "dbi", "apb", "config", "atu";
 		ranges = <0x01000000 0x0 0xf0100000 0x0 0xf0100000 0x0 0x00100000>,
 			 <0x02000000 0x0 0xf0200000 0x0 0xf0200000 0x0 0x01e00000>,
 			 <0x03000000 0x0 0x40000000 0x3 0x80000000 0x0 0x40000000>;
-		reg-names = "dbi", "apb", "config";
 		resets = <&cru SRST_PCIE30X2_POWERUP>;
 		reset-names = "pipe";
 		/* bifurcation; lane0 when using 1+1 */
diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index e2d99613109b..872c6bc28559 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -961,10 +961,11 @@ qos_vop_m1: qos@fe1a8100 {
 
 	pcie2x1: pcie@fe260000 {
 		compatible = "rockchip,rk3568-pcie";
-		reg = <0x3 0xc0000000 0x0 0x00400000>,
+		reg = <0x3 0xc0000000 0x0 0x00300000>,
 		      <0x0 0xfe260000 0x0 0x00010000>,
-		      <0x0 0xf4000000 0x0 0x00100000>;
-		reg-names = "dbi", "apb", "config";
+		      <0x0 0xf4000000 0x0 0x00100000>,
+		      <0x3 0xc0300000 0x0 0x00100000>;
+		reg-names = "dbi", "apb", "config", "atu";
 		interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>,
-- 
2.41.0


