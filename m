Return-Path: <devicetree+bounces-8127-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C916C7C6BDF
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 13:03:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 83004282869
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 11:03:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBA3122F0F;
	Thu, 12 Oct 2023 11:03:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="gYbXA+0r"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54324210F8
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 11:03:31 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35DD3D3;
	Thu, 12 Oct 2023 04:03:27 -0700 (PDT)
Received: from localhost (dynamic-002-247-255-251.2.247.pool.telefonica.de [2.247.255.251])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sebastianfricke)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 651786607342;
	Thu, 12 Oct 2023 12:03:25 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697108606;
	bh=Kr52WeaibSMzQEC+JIzvnVvSxNmcDMqJUK52PCMNxMs=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=gYbXA+0rAmN+fHCMz2BXKvLFhpA02bDFHURIjlD8HAfOFY8whjuzlV6UjiPtmwwGB
	 g11H0QGtYqc13vq4X3pzuJ8uA3VbajJ1RPSWSW2ATmNDFFZgZhhAJeM5GOZXArUn3P
	 h5tXlInijaJgpCQNB9UKp2LEYlsLZC5niOOJQrJUN4YZsBUr5w7rT/UjMFYzzQ/eAu
	 8EsdYKMfcD6CZav3NYbwI0zmyrspJa/kxJoZncZJ4acMhBbpeIVWol10K1hZM7aMPS
	 ftwwGHLjOZFXAK30oOIPnIpEhpoe23qWB7u/TG2SbG569bq2pVPEVmPKbch6jCig3U
	 L+veivOhFyP5g==
From: Sebastian Fricke <sebastian.fricke@collabora.com>
Date: Thu, 12 Oct 2023 13:01:06 +0200
Subject: [PATCH v13 8/8] arm64: dts: ti: k3-j721s2-main: add wave5 video
 encoder/decoder node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230929-wave5_v13_media_master-v13-8-5ac60ccbf2ce@collabora.com>
References: <20230929-wave5_v13_media_master-v13-0-5ac60ccbf2ce@collabora.com>
In-Reply-To:
 <20230929-wave5_v13_media_master-v13-0-5ac60ccbf2ce@collabora.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>, Conor Dooley <conor+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Jackson Lee <jackson.lee@chipsnmedia.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Nas Chung <nas.chung@chipsnmedia.com>, Fabio Estevam <festevam@gmail.com>
Cc: linux-media@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 linux-kernel@vger.kernel.org,
 Sebastian Fricke <sebastian.fricke@collabora.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, kernel@collabora.com,
 Robert Beckett <bob.beckett@collabora.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Darren Etheridge <detheridge@ti.com>
X-Mailer: b4 0.11.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1697108536; l=1367;
 i=sebastian.fricke@collabora.com; s=linux-media; h=from:subject:message-id;
 bh=KjtW4nXLRi51SZO69gg3rFOFCJG7FEnu72pgZnyojug=;
 b=16Hv4nA1kUNqQIY2GIoNV1ibkKsGw+Vjuvx3T3frJ3lTghc8tR4cZyZqi6xfozethsFvL3RiYXQ2
 kB3ewQLWD/9jh5H4+lBJ0YwYyKPaWE3JiM5+CLhxPp2gJ3jn7ITB
X-Developer-Key: i=sebastian.fricke@collabora.com; a=ed25519;
 pk=pYXedPwrTtErcj7ERYeo/IpTrpe4QbJuEzSB52fslBg=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Darren Etheridge <detheridge@ti.com>

Add the Chips and Media wave521cl video decoder/encoder node on J721S2.

This functional block also requires an SRAM buffer as a bandwidth saving
temporary store so we need to add a carve out of 126K for this as
specified in the documentation.

Signed-off-by: Darren Etheridge <detheridge@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
index 084f8f5b6699..7ae4c6436275 100644
--- a/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
@@ -28,6 +28,10 @@ atf-sram@0 {
 			reg = <0x0 0x20000>;
 		};
 
+		vpu_sram: vpu-sram@20000 {
+			reg = <0x20000 0x1f800>;
+		};
+
 		tifs-sram@1f0000 {
 			reg = <0x1f0000 0x10000>;
 		};
@@ -716,6 +720,16 @@ main_i2c6: i2c@2060000 {
 		status = "disabled";
 	};
 
+	vpu: video-codec@4210000 {
+		compatible = "cnm,cm521c-vpu";
+		reg = <0x00 0x4210000 0x00 0x10000>;
+		interrupts = <GIC_SPI 182 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 179 2>;
+		clock-names = "vcodec";
+		power-domains = <&k3_pds 179 TI_SCI_PD_EXCLUSIVE>;
+		sram = <&vpu_sram>;
+	};
+
 	main_sdhci0: mmc@4f80000 {
 		compatible = "ti,j721e-sdhci-8bit";
 		reg = <0x00 0x04f80000 0x00 0x1000>,

-- 
2.25.1

