Return-Path: <devicetree+bounces-265612-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GABSDmOKkWn1jgEAu9opvQ
	(envelope-from <devicetree+bounces-265612-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 09:57:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E103F13E5C5
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 09:57:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3695230312D0
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 08:55:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 619252D0610;
	Sun, 15 Feb 2026 08:55:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ceWlvB/b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDBF12D47F1
	for <devicetree@vger.kernel.org>; Sun, 15 Feb 2026 08:55:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771145747; cv=none; b=qbW94VHjy4gCJYT6xymPuXjGzgoXHopVt+H9KIB/f3T9l3zwe1yL9H6H9kKvQ+LV5NDlX+k78NbGnj/wx+FqFIiWLPWbrb3uL+HKe4rSV4Vk5CnELd8rwAgBuIviPH1ju0nXrTb8z8YQbFebYm9Hp78LNtQXOwItPtBMVPAaO/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771145747; c=relaxed/simple;
	bh=qfwcnFi77p2rcOG/oSUsUf4wTJFkZNPOsw/D/70PXKc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ezr9OxC6+Addm16W26G6h2Xbpn8lKEteAw941v9qY6AYGEQWdOjRXuGbdnj2Ozn7ANYnGlVXpW6eFaH6N8mppwPl8rU5nn2pCDYFKl0YDXEmaXx0wC7NtlrrFSWD+PvFT7dTka9kcckMkESVkL+J8ddHgSjsV/x/fBvMQCwkZJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ceWlvB/b; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-48379a42f76so9153535e9.0
        for <devicetree@vger.kernel.org>; Sun, 15 Feb 2026 00:55:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771145744; x=1771750544; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tMkpYF7y2Q4cqPGN71X2yW3ov4J2sqIdlYQITivE9qI=;
        b=ceWlvB/b29Ywtz8uKixnGMlViOjSyHGxc2tGop5gepcFzKdawQKK278HD/XoMZAVey
         cYfHavbqBdKbAETI+yQFya9foX09Crgg7snxYB4myTX4zTi/5IpZJDqfYq6LRwL92NNb
         +NsDyf0abn+GB312SSePI5+TuQ3p2o0MnFPgf/vCQp8759jR7A1djfxfRH/eqGZrAvsr
         6AzL+GKEtdtkzJGdAepXGHIkK5MmUT4CyCl/pVRex4jrhxRRwcQDsLuKiU7dgsjQOzrZ
         RlSFFKHjZVNUPh8D9JnXotVFFTQWu+vf9zNIqRiu7KHwVFdDGgC7+OntnenzJMoOJdvy
         S5pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771145744; x=1771750544;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tMkpYF7y2Q4cqPGN71X2yW3ov4J2sqIdlYQITivE9qI=;
        b=oL+HpFBWPSKMN6Q27r1w3WFiJVgEVLgoEwsP6+aBBsU0vFs1P+fp0hhcTuQiu/yr+O
         TdZMqnh0Z371XA24e+M0CYZGHbf3BovzDWYQcrf3+hLhQJVqFtOoQI+JefrwiP8jf8uj
         +L4BwlTUUNHj5NECjmkz5s5nD58fPn0MHbhhZTfEJ8YSFVRinFy8BEzP2nLXkUGKanws
         KqCEy+aeDGv0YW2xuBPqHA/vIHAkG91rLW+ZkkRvNo8zelayRnY4SgW8rYfBeAoXx3r9
         mPFY7LHiHp3EszBf7P1ZeOyi8Fu9HeOW+e0c6sRKXYTIBoPzcJczQ/MZAt/WBjgB8Vmh
         ZMUA==
X-Forwarded-Encrypted: i=1; AJvYcCWvsjd6AQ5L+Tdf48sMjCIVSEviSIyN1kkpTwEo8mu6PJrmJ5BjGYoN9KYCUfnjsnsytHLJ1/8RI8XA@vger.kernel.org
X-Gm-Message-State: AOJu0Yym8uBxroPmXwhGcNhr9ItQNegvlyTy530rwiLsFsgmf+t9lSqe
	bU4DaaMsMGGqKmfln8CURvyFY3Z4c13/Et1mwop8UAaa1jVe0d3fqX1h
X-Gm-Gg: AZuq6aI2TIKfh0XiBtgUgLvSBJQhQ5BCztRJmk4TibULvBfNti35IC9sbCGgBh0aFJF
	XeOggtmSHsWZlL9ZPj8AISM+lwWD32rNmxXavVGb1wufsmVd+S9Dl5pg08pl14avYfyseEoH33h
	WW99xvwXOdf8AE4Daz9bi21NmiXYxOgXiB0X86JiwB2pizP+09pgQzpg0m0iBaSqiV2F7WR4iyi
	iyRLpwpMbz8YZtaRL5hrE71QquABVcDpv+6WS/CtW2WKwn6WbX231WNb/lcE+XNdQuwMz8tiHXf
	HygD60KDr22JZGmQn8Lsp1WJFgE0PpsvBGU4Y3RYx27jqc+qIdHehVSUZn4FRuh5WhZwhqv4Ivb
	oobNT2usxBr10cc/dr2O7YEuSFNJcd6T6W8z7WXDCeIMSENtckAN4cqSNDJaT/I5thCKUG9GQj2
	GAhUEsJbtXXy6QRLP4DIwpn+albMyi2Q==
X-Received: by 2002:a05:600c:609a:b0:483:7020:864 with SMTP id 5b1f17b1804b1-48379c178eamr79445925e9.25.1771145744106;
        Sun, 15 Feb 2026 00:55:44 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d5d78cfsm547211675e9.1.2026.02.15.00.55.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Feb 2026 00:55:43 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Jitao Shi <jitao.shi@mediatek.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: [PATCH 3/4] arm64: dts: mediatek: mt8167: Add DRM nodes
Date: Sun, 15 Feb 2026 08:53:55 +0000
Message-ID: <efed7184f27f7f85e9b811070a072b81e134e57e.1771144723.git.l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1771144723.git.l.scorcia@gmail.com>
References: <cover.1771144723.git.l.scorcia@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-265612-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,pengutronix.de,linux.intel.com,suse.de,ffwll.ch,mediatek.com,linaro.org,collabora.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lscorcia@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E103F13E5C5
X-Rspamd-Action: no action

Add all the DRM nodes required to get DSI to work on MT8167 SoC.

Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
---
 arch/arm64/boot/dts/mediatek/mt8167.dtsi | 386 +++++++++++++++++++++++
 1 file changed, 386 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8167.dtsi b/arch/arm64/boot/dts/mediatek/mt8167.dtsi
index 27cf32d7ae35..c6306234e592 100644
--- a/arch/arm64/boot/dts/mediatek/mt8167.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8167.dtsi
@@ -16,6 +16,20 @@
 / {
 	compatible = "mediatek,mt8167";
 
+	aliases {
+		aal0 = &aal;
+		ccorr0 = &ccorr;
+		color0 = &color;
+		dither0 = &dither;
+		dsi0 = &dsi;
+		gamma0 = &gamma;
+		ovl0 = &ovl0;
+		pwm0 = &disp_pwm;
+		rdma0 = &rdma0;
+		rdma1 = &rdma1;
+		wdma0 = &wdma;
+	};
+
 	soc {
 		topckgen: topckgen@10000000 {
 			compatible = "mediatek,mt8167-topckgen", "syscon";
@@ -120,10 +134,371 @@ iommu: m4u@10203000 {
 			#iommu-cells = <1>;
 		};
 
+		disp_pwm: pwm@1100f000 {
+			compatible = "mediatek,mt8167-disp-pwm",
+				     "mediatek,mt8173-disp-pwm";
+			reg = <0 0x1100f000 0 0x1000>;
+			clocks = <&mmsys CLK_MM_DISP_PWM_26M>,
+				 <&mmsys CLK_MM_DISP_PWM_MM>;
+			clock-names = "main",
+				      "mm";
+			power-domains = <&spm MT8167_POWER_DOMAIN_MM>;
+			#pwm-cells = <2>;
+			status = "disabled";
+		};
+
 		mmsys: syscon@14000000 {
 			compatible = "mediatek,mt8167-mmsys", "syscon";
 			reg = <0 0x14000000 0 0x1000>;
+			power-domains = <&spm MT8167_POWER_DOMAIN_MM>;
 			#clock-cells = <1>;
+
+			port {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				mmsys_main: endpoint@0 {
+					reg = <0>;
+					remote-endpoint = <&ovl0_in>;
+				};
+
+				mmsys_ext: endpoint@1 {
+					reg = <1>;
+					remote-endpoint = <&rdma1_in>;
+				};
+			};
+		};
+
+		ovl0: ovl0@14007000 {
+			compatible = "mediatek,mt8167-disp-ovl";
+			reg = <0 0x14007000 0 0x1000>;
+			clocks = <&mmsys CLK_MM_DISP_OVL0>;
+			interrupts = <GIC_SPI 160 IRQ_TYPE_LEVEL_LOW>;
+			iommus = <&iommu M4U_PORT_DISP_OVL0>;
+			power-domains = <&spm MT8167_POWER_DOMAIN_MM>;
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <0>;
+					ovl0_in: endpoint@0 {
+						reg = <0>;
+						remote-endpoint = <&mmsys_main>;
+					};
+				};
+
+				port@1 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <1>;
+					ovl0_out: endpoint@0 {
+						reg = <0>;
+						remote-endpoint = <&color_in>;
+					};
+				};
+			};
+		};
+
+		rdma0: rdma0@14009000 {
+			compatible = "mediatek,mt8167-disp-rdma",
+				     "mediatek,mt2701-disp-rdma";
+			reg = <0 0x14009000 0 0x1000>;
+			clocks = <&mmsys CLK_MM_DISP_RDMA0>;
+			interrupts = <GIC_SPI 162 IRQ_TYPE_LEVEL_LOW>;
+			iommus = <&iommu M4U_PORT_DISP_RDMA0>;
+			power-domains = <&spm MT8167_POWER_DOMAIN_MM>;
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <0>;
+					rdma0_in: endpoint@0 {
+						reg = <0>;
+						remote-endpoint = <&dither_out>;
+					};
+				};
+
+				port@1 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <1>;
+					rdma0_out: endpoint@0 {
+						reg = <0>;
+						remote-endpoint = <&dsi_in>;
+					};
+				};
+			};
+		};
+
+		rdma1: rdma1@1400a000 {
+			compatible = "mediatek,mt8167-disp-rdma",
+				     "mediatek,mt2701-disp-rdma";
+			reg = <0 0x1400a000 0 0x1000>;
+			clocks = <&mmsys CLK_MM_DISP_RDMA1>;
+			interrupts = <GIC_SPI 163 IRQ_TYPE_LEVEL_LOW>;
+			iommus = <&iommu M4U_PORT_DISP_RDMA1>;
+			power-domains = <&spm MT8167_POWER_DOMAIN_MM>;
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <0>;
+					rdma1_in: endpoint@0 {
+						reg = <0>;
+						remote-endpoint = <&mmsys_ext>;
+					};
+				};
+
+				port@1 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <1>;
+					rdma1_out: endpoint@0 {
+						reg = <0>;
+					};
+				};
+			};
+		};
+
+		wdma: wdma0@1400b000 {
+			compatible = "mediatek,mt8167-disp-wdma",
+				     "mediatek,mt8173-disp-wdma";
+			reg = <0 0x1400b000 0 0x1000>;
+			clocks = <&mmsys CLK_MM_DISP_WDMA>;
+			interrupts = <GIC_SPI 164 IRQ_TYPE_LEVEL_LOW>;
+			iommus = <&iommu M4U_PORT_DISP_WDMA0>;
+			power-domains = <&spm MT8167_POWER_DOMAIN_MM>;
+		};
+
+		color: color@1400c000 {
+			compatible = "mediatek,mt8167-disp-color";
+			reg = <0 0x1400c000 0 0x1000>;
+			clocks = <&mmsys CLK_MM_DISP_COLOR>;
+			interrupts = <GIC_SPI 165 IRQ_TYPE_LEVEL_LOW>;
+			power-domains = <&spm MT8167_POWER_DOMAIN_MM>;
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <0>;
+					color_in: endpoint@0 {
+						reg = <0>;
+						remote-endpoint = <&ovl0_out>;
+					};
+				};
+
+				port@1 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <1>;
+					color_out: endpoint@0 {
+						reg = <0>;
+						remote-endpoint = <&ccorr_in>;
+					};
+				};
+			};
+		};
+
+		ccorr: ccorr@1400d000 {
+			compatible = "mediatek,mt8167-disp-ccorr",
+				     "mediatek,mt8183-disp-ccorr";
+			reg = <0 0x1400d000 0 0x1000>;
+			clocks = <&mmsys CLK_MM_DISP_CCORR>;
+			interrupts = <GIC_SPI 166 IRQ_TYPE_LEVEL_LOW>;
+			power-domains = <&spm MT8167_POWER_DOMAIN_MM>;
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <0>;
+					ccorr_in: endpoint@0 {
+						reg = <0>;
+						remote-endpoint = <&color_out>;
+					};
+				};
+
+				port@1 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <1>;
+					ccorr_out: endpoint@0 {
+						reg = <0>;
+						remote-endpoint = <&aal_in>;
+					};
+				};
+			};
+		};
+
+		aal: aal@1400e000 {
+			compatible = "mediatek,mt8167-disp-aal",
+				     "mediatek,mt8173-disp-aal";
+			reg = <0 0x1400e000 0 0x1000>;
+			clocks = <&mmsys CLK_MM_DISP_AAL>;
+			interrupts = <GIC_SPI 167 IRQ_TYPE_LEVEL_LOW>;
+			power-domains = <&spm MT8167_POWER_DOMAIN_MM>;
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <0>;
+					aal_in: endpoint@0 {
+						reg = <0>;
+						remote-endpoint = <&ccorr_out>;
+					};
+				};
+
+				port@1 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <1>;
+					aal_out: endpoint@0 {
+						reg = <0>;
+						remote-endpoint = <&gamma_in>;
+					};
+				};
+			};
+		};
+
+		gamma: gamma@1400f000 {
+			compatible = "mediatek,mt8167-disp-gamma",
+				     "mediatek,mt8173-disp-gamma";
+			reg = <0 0x1400f000 0 0x1000>;
+			clocks = <&mmsys CLK_MM_DISP_GAMMA>;
+			interrupts = <GIC_SPI 168 IRQ_TYPE_LEVEL_LOW>;
+			power-domains = <&spm MT8167_POWER_DOMAIN_MM>;
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <0>;
+					gamma_in: endpoint@0 {
+						reg = <0>;
+						remote-endpoint = <&aal_out>;
+					};
+				};
+
+				port@1 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <1>;
+					gamma_out: endpoint@0 {
+						reg = <0>;
+						remote-endpoint = <&dither_in>;
+					};
+				};
+			};
+		};
+
+		dither: dither@14010000 {
+			compatible = "mediatek,mt8167-disp-dither",
+				     "mediatek,mt8183-disp-dither";
+			reg = <0 0x14010000 0 0x1000>;
+			clocks = <&mmsys CLK_MM_DISP_DITHER>;
+			interrupts = <GIC_SPI 169 IRQ_TYPE_LEVEL_LOW>;
+			power-domains = <&spm MT8167_POWER_DOMAIN_MM>;
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <0>;
+					dither_in: endpoint@0 {
+						reg = <0>;
+						remote-endpoint = <&gamma_out>;
+					};
+				};
+
+				port@1 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <1>;
+					dither_out: endpoint@0 {
+						reg = <0>;
+						remote-endpoint = <&rdma0_in>;
+					};
+				};
+			};
+		};
+
+		dsi: dsi@14012000 {
+			compatible = "mediatek,mt8167-dsi",
+				     "mediatek,mt2701-dsi";
+			reg = <0 0x14012000 0 0x1000>;
+			clocks = <&mmsys CLK_MM_DSI_ENGINE>,
+				 <&mmsys CLK_MM_DSI_DIGITAL>,
+				 <&mipi_tx>;
+			clock-names = "engine", "digital", "hs";
+			interrupts = <GIC_SPI 171 IRQ_TYPE_LEVEL_LOW>;
+			phys = <&mipi_tx>;
+			phy-names = "dphy";
+			power-domains = <&spm MT8167_POWER_DOMAIN_MM>;
+			status = "disabled";
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <0>;
+					dsi_in: endpoint@0 {
+						reg = <0>;
+						remote-endpoint = <&rdma0_out>;
+					};
+				};
+
+				port@1 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <1>;
+					dsi_out: endpoint@0 {
+						reg = <0>;
+					};
+				};
+			};
+		};
+
+		mutex: mutex@14015000 {
+			compatible = "mediatek,mt8167-disp-mutex";
+			reg = <0 0x14015000 0 0x1000>;
+			interrupts = <GIC_SPI 153 IRQ_TYPE_LEVEL_LOW>;
+			power-domains = <&spm MT8167_POWER_DOMAIN_MM>;
 		};
 
 		larb0: larb@14016000 {
@@ -145,6 +520,17 @@ smi_common: smi@14017000 {
 			power-domains = <&spm MT8167_POWER_DOMAIN_MM>;
 		};
 
+		mipi_tx: dsi-phy@14018000 {
+			compatible = "mediatek,mt8167-mipi-tx",
+				     "mediatek,mt2701-mipi-tx";
+			reg = <0 0x14018000 0 0x90>;
+			clocks = <&topckgen CLK_TOP_MIPI_26M_DBG>;
+			clock-output-names = "mipi_tx0_pll";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
 		imgsys: syscon@15000000 {
 			compatible = "mediatek,mt8167-imgsys", "syscon";
 			reg = <0 0x15000000 0 0x1000>;
-- 
2.43.0


