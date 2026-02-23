Return-Path: <devicetree+bounces-267531-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sHmjHteAnGmLIgQAu9opvQ
	(envelope-from <devicetree+bounces-267531-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 17:31:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E1DC0179CF8
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 17:31:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1282830BF41D
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 16:26:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FC8D30FC1D;
	Mon, 23 Feb 2026 16:26:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hYkUKWl+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABE6A3101CE
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 16:26:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771864000; cv=none; b=QmLjNykqx7mXbcvugjOoz+opfDEN6KenyitoMiJYLu1g6AUWn6AfdaH/SJekceb7Qq1pFgi6o6wAqoSurQ4P43l1a4Lp6ROadnKJF1wxdrYYl7Mw8hVoNsscZskU4DkZwzb4bPs3obJCvet1yWjavXn8hFOdPPKORT8jtgilQeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771864000; c=relaxed/simple;
	bh=BphH2H7DpRFTMwJhORTnWV19TZNqCP048ZgLz5ogpKE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VERDrwU3UmW+mgOJ9LnnOoKivucD8VsTvl9azZLer6ZjBVG7CuGrY+caX70MOhlPb8kib+FYX7iscx8/xjLYdOWPBjqEky0tZ1McXx2TcZDTdYXIZV47vK9d74F0muLUVCAjXF79P+c9za2VU6deTodre2S54kzSSHD17hkSS94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hYkUKWl+; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-48379a42f76so35228345e9.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 08:26:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771863997; x=1772468797; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wgeTGS+8qJEGuJv9Z7ulFAIz5McOanQP0tQrEdPQw4A=;
        b=hYkUKWl+Wf3Dj8SoLJ3IrmnOV4GoP79J6HHut0RDT0s6AoqKzAdXqeth6Qj5oLECXz
         +l6cpzjDE0Z+iBZOhq565hh8+DbRu5DOsw96QBQi1Abaf7LWrSWELQQhcbJ2bwULARCk
         M/W6pqW9165oSLbdOYZT11Jjae9IUg8Tn9SmUN9VJQcZeGPVcedkzB8IpDwGj9f1DzWG
         Sx5BHArIdebQBYAH3WmaSSgW70Ytqo3FqkYtv667qpMN1upmzqtvTAVNjDJa+mnQ3oGN
         Z6mEXg+fU3x2LGmQGmGHhxSgtVCu/uR4YCt9zvgv4Fv4p9wQoF3nZ1CvK2JhMQ0SP4XM
         +QnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771863997; x=1772468797;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wgeTGS+8qJEGuJv9Z7ulFAIz5McOanQP0tQrEdPQw4A=;
        b=qjrduhhLU5E78FosQ2Y7j5WzDnVQjtZtgZaPgA1dOyP2x41oJkbqVnrt5TO5p17zUa
         kXVWpyxjVoO4zJUPzl6mso0iistgJ2S4gOhjyMfikXM28x/EYxY/1PzoaBM4lrc7DRTY
         Oh7qy9mqPKSkdSO1rQtV1rVIGEeaoGDJJb9HHzboZHVSh0BztohLzbHeN7KAv7ZowEIN
         I5BOT9YyNpqz9MU4dvWs1D8VU3+xMGUjJg5mpTqmjbd+oJ+FKXuk6alVMPsANdwqohoi
         gj7KCW5tBIUsC7DjcQ22wnGMAW4hHay9mpmd1QgXKhgD/X4O9F+gW5W4Pl8Fqz8EjRsb
         K1nQ==
X-Forwarded-Encrypted: i=1; AJvYcCUO8YNYqrG7tId2934ioh6hOhQIYju4w+em9qgrb0suT1j3WtNREtp7tonGBlT/aivcsb4nlxBaPmsx@vger.kernel.org
X-Gm-Message-State: AOJu0Yz70RXG/MRJoJoO8sopKpeLivK6uYCSmlw8v/m5qA46EG3ldTeF
	ZuxEls0n/XGneJ2RaqEv+McdnVVFncVni55af9iM2RvDEiVZit06Qnj9
X-Gm-Gg: AZuq6aK3EWk373kXra7gDnFCkgMv0P+Ykl9Tbdr5a1DIauAmvvMNl+dilEWJ6n3EfJ7
	TVhFE93IVgPeP9tJTjUmg/HAzJvVz7RZZDezHZhTFIGlLdr0BFa2DwArIWCIonOLUta8+8BE28r
	7+53u1lIvIDYUIDpM61yE3zuIU5Nilj5AfBp3PrQtP9Mx/VMnc0fMODi1mYFreEth6OJAQl7JYy
	e/8297ocqHktK0huhBJi7YzeuVStPaF59xYQzZXst2IDVRzajiA9bZvSxJuaGot63+9iwGXEO5X
	8+JJlf5104M61aRSMwYKNgHO4hzJJxwuHde8iYviH70q3Yq311ZHgWs668FJ2oCZb3i1T5a7BZa
	fmK+3YiWmTrvrzXf5+FayFAXn7ognBa1tGeIOGe0JmVPLyfh8GAYdfBJrXdseMFIRS9f+R2Twfb
	fVL/A/Y/EaE/kUJFAqdU0=
X-Received: by 2002:a05:600c:4fd3:b0:480:4d38:7abc with SMTP id 5b1f17b1804b1-483a95f8eebmr158193415e9.11.1771863996672;
        Mon, 23 Feb 2026 08:26:36 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d5463dsm19120357f8f.34.2026.02.23.08.26.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 08:26:36 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 1/6] arm64: dts: mt8167: Reorder nodes according to mmio address
Date: Mon, 23 Feb 2026 16:22:45 +0000
Message-ID: <cd857bb68661a3b5b7bab222b2ceb5337582e18d.1771863641.git.l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1771863641.git.l.scorcia@gmail.com>
References: <cover.1771863641.git.l.scorcia@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[22];
	FREEMAIL_CC(0.00)[gmail.com,collabora.com,kernel.org,pengutronix.de,ffwll.ch,linux.intel.com,suse.de,mediatek.com,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267531-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lscorcia@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E1DC0179CF8
X-Rspamd-Action: no action

In preparation for adding display nodes. No other changes.

Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8167.dtsi | 68 ++++++++++++------------
 1 file changed, 34 insertions(+), 34 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8167.dtsi b/arch/arm64/boot/dts/mediatek/mt8167.dtsi
index 2374c0953057..27cf32d7ae35 100644
--- a/arch/arm64/boot/dts/mediatek/mt8167.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8167.dtsi
@@ -29,12 +29,6 @@ infracfg: infracfg@10001000 {
 			#clock-cells = <1>;
 		};
 
-		apmixedsys: apmixedsys@10018000 {
-			compatible = "mediatek,mt8167-apmixedsys", "syscon";
-			reg = <0 0x10018000 0 0x710>;
-			#clock-cells = <1>;
-		};
-
 		scpsys: syscon@10006000 {
 			compatible = "mediatek,mt8167-scpsys", "syscon", "simple-mfd";
 			reg = <0 0x10006000 0 0x1000>;
@@ -101,18 +95,6 @@ power-domain@MT8167_POWER_DOMAIN_CONN {
 			};
 		};
 
-		imgsys: syscon@15000000 {
-			compatible = "mediatek,mt8167-imgsys", "syscon";
-			reg = <0 0x15000000 0 0x1000>;
-			#clock-cells = <1>;
-		};
-
-		vdecsys: syscon@16000000 {
-			compatible = "mediatek,mt8167-vdecsys", "syscon";
-			reg = <0 0x16000000 0 0x1000>;
-			#clock-cells = <1>;
-		};
-
 		pio: pinctrl@1000b000 {
 			compatible = "mediatek,mt8167-pinctrl";
 			reg = <0 0x1000b000 0 0x1000>;
@@ -124,12 +106,36 @@ pio: pinctrl@1000b000 {
 			interrupts = <GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
+		apmixedsys: apmixedsys@10018000 {
+			compatible = "mediatek,mt8167-apmixedsys", "syscon";
+			reg = <0 0x10018000 0 0x710>;
+			#clock-cells = <1>;
+		};
+
+		iommu: m4u@10203000 {
+			compatible = "mediatek,mt8167-m4u";
+			reg = <0 0x10203000 0 0x1000>;
+			mediatek,larbs = <&larb0>, <&larb1>, <&larb2>;
+			interrupts = <GIC_SPI 121 IRQ_TYPE_LEVEL_LOW>;
+			#iommu-cells = <1>;
+		};
+
 		mmsys: syscon@14000000 {
 			compatible = "mediatek,mt8167-mmsys", "syscon";
 			reg = <0 0x14000000 0 0x1000>;
 			#clock-cells = <1>;
 		};
 
+		larb0: larb@14016000 {
+			compatible = "mediatek,mt8167-smi-larb";
+			reg = <0 0x14016000 0 0x1000>;
+			mediatek,smi = <&smi_common>;
+			clocks = <&mmsys CLK_MM_SMI_LARB0>,
+				 <&mmsys CLK_MM_SMI_LARB0>;
+			clock-names = "apb", "smi";
+			power-domains = <&spm MT8167_POWER_DOMAIN_MM>;
+		};
+
 		smi_common: smi@14017000 {
 			compatible = "mediatek,mt8167-smi-common";
 			reg = <0 0x14017000 0 0x1000>;
@@ -139,14 +145,10 @@ smi_common: smi@14017000 {
 			power-domains = <&spm MT8167_POWER_DOMAIN_MM>;
 		};
 
-		larb0: larb@14016000 {
-			compatible = "mediatek,mt8167-smi-larb";
-			reg = <0 0x14016000 0 0x1000>;
-			mediatek,smi = <&smi_common>;
-			clocks = <&mmsys CLK_MM_SMI_LARB0>,
-				 <&mmsys CLK_MM_SMI_LARB0>;
-			clock-names = "apb", "smi";
-			power-domains = <&spm MT8167_POWER_DOMAIN_MM>;
+		imgsys: syscon@15000000 {
+			compatible = "mediatek,mt8167-imgsys", "syscon";
+			reg = <0 0x15000000 0 0x1000>;
+			#clock-cells = <1>;
 		};
 
 		larb1: larb@15001000 {
@@ -159,6 +161,12 @@ larb1: larb@15001000 {
 			power-domains = <&spm MT8167_POWER_DOMAIN_ISP>;
 		};
 
+		vdecsys: syscon@16000000 {
+			compatible = "mediatek,mt8167-vdecsys", "syscon";
+			reg = <0 0x16000000 0 0x1000>;
+			#clock-cells = <1>;
+		};
+
 		larb2: larb@16010000 {
 			compatible = "mediatek,mt8167-smi-larb";
 			reg = <0 0x16010000 0 0x1000>;
@@ -168,13 +176,5 @@ larb2: larb@16010000 {
 			clock-names = "apb", "smi";
 			power-domains = <&spm MT8167_POWER_DOMAIN_VDEC>;
 		};
-
-		iommu: m4u@10203000 {
-			compatible = "mediatek,mt8167-m4u";
-			reg = <0 0x10203000 0 0x1000>;
-			mediatek,larbs = <&larb0>, <&larb1>, <&larb2>;
-			interrupts = <GIC_SPI 121 IRQ_TYPE_LEVEL_LOW>;
-			#iommu-cells = <1>;
-		};
 	};
 };
-- 
2.43.0


