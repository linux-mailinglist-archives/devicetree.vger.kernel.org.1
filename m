Return-Path: <devicetree+bounces-107760-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C8798FEBD
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 10:14:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C1FB5283B54
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 08:14:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E8F9148FE8;
	Fri,  4 Oct 2024 08:13:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Spw2S8Jx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92F7C148849
	for <devicetree@vger.kernel.org>; Fri,  4 Oct 2024 08:13:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728029590; cv=none; b=QALCqf6Nu5w60ar6DQ7TLhjB/XH42OGNM+G3G6gB7hjrWk3OnGgqpV+z9TA/ibHKhTMBZoltb6Ajo3NYv8n9lOibUfQ+48drMrlaIXdYw23Uv28QrG8PyIAtO/xilWc8ku0N5D+Cb3C9QmL31pYODQRQZCyr1abbVAwKK4d5Tgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728029590; c=relaxed/simple;
	bh=o+q33GRmQKNHCxe0axUq1sxnK5fFLXYfcIZIf5MCZZo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NKs4C/rfST4X7QAM4V7PmzboToD/7u/pv+bkVtEMlVLJWIIeLstYaqJFH2qwYIHuAJDy0UF4X7XrxzHexNNhDXxBzM3tySdR24YuAJwdsdhoNRutNAUrfq4u5H4wmOpGSzxdUR07U1hisL9PDnWPmtDAi8a5RjAU7f0qoGctVXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Spw2S8Jx; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-20b86298710so15457235ad.1
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2024 01:13:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728029588; x=1728634388; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i4TchenuM2PZiHwsPrmRTDwDZS9j+elV+kESl2Ludm4=;
        b=Spw2S8Jx/vQ32PvMkLsv5b2cMrE1JwaveRyCpl1uCVxT1ykEY1wwfLKlz9AZFghpRW
         pVPGHetBfSl6dVZrNHNzNU4RZ1NwZOVBCd9OIb4m/wBUWMjqTf080YPRgFpnXVnkraT4
         KUbecarfFjPmfoiye8ueHeYj2kMb9oxy4jELE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728029588; x=1728634388;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i4TchenuM2PZiHwsPrmRTDwDZS9j+elV+kESl2Ludm4=;
        b=e7fO2GWz/2ATL50dFUIQlpznVV4Ejxfgfnszyfij07VYtgLx6yrpCRMDkYEwooO8tw
         DzbFVxkAgCzL16ZjJNkr7HC8DejzQA85jG8YrIZoA23Wn9T/DhZxocZK3rqynQZwY+Kl
         /DVLZ2V7+jLIIBcE3zDA+XAhXql8tXTMgiaR8dN0NUAmrbT3pTEK/4YR/ViELM+Xa4bd
         JdkDc1Qall6TF+raeLsJvS3OY1Ygt+6qxu72NwkEJ7vAASFkXBfBwzsMRFNXySFwgH1n
         zB4iV5NHp1huxwsRs6FLjLNzuBMdGdA1wbZb9ZmL7IwwpIlTi7tzld4OIbReEFdWkEJ0
         BZRw==
X-Forwarded-Encrypted: i=1; AJvYcCWLwH8Fq/VKPI1Jegl4OfrcRJysziMmf0dGwQoOliDyDcojSJiIn+DBYqIUzLcWetjjgdBN7EB5FtJp@vger.kernel.org
X-Gm-Message-State: AOJu0YzpQIK83rP/hN/+KmCCtMGvm59Mtke2GvCaxScQaMKMt0BbXRGA
	TTq3sant0ilkxDX/5KWKg3zFCY3BtJMv1J10mIZd3EEJQueE3PRqf34LrfJk2w==
X-Google-Smtp-Source: AGHT+IFNQ0WywxJScoB1okGv8SlygVhcsYIeOTSbtTWqDzvqCcmKgVOc2GfwIiZyeIV6XO2xvKyTmQ==
X-Received: by 2002:a17:902:c94a:b0:20b:968e:2585 with SMTP id d9443c01a7336-20bfdf80044mr35741085ad.6.1728029588048;
        Fri, 04 Oct 2024 01:13:08 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:73bb:cecf:e651:2ce6])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20beefad264sm19401305ad.205.2024.10.04.01.13.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Oct 2024 01:13:07 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: Fei Shao <fshao@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v3 8/9] arm64: dts: mediatek: mt8188: Add DP-INTF nodes
Date: Fri,  4 Oct 2024 16:12:00 +0800
Message-ID: <20241004081218.55962-9-fshao@chromium.org>
X-Mailer: git-send-email 2.47.0.rc0.187.ge670bccf7e-goog
In-Reply-To: <20241004081218.55962-1-fshao@chromium.org>
References: <20241004081218.55962-1-fshao@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the primary and secondary dp-intf nodes.
These DP-INTF hardware IPs are the sink of the vdosys0 and vdosys1
display pipelines for the internal and external displays, respectively.

Individual board device tree should enable the nodes and connect input
and output ports as needed.

Signed-off-by: Fei Shao <fshao@chromium.org>
---

(no changes since v1)

 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 26 ++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index ec12617ea925..8864f1ead663 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -24,6 +24,8 @@ / {
 	#size-cells = <2>;
 
 	aliases {
+		dp-intf0 = &dp_intf0;
+		dp-intf1 = &dp_intf1;
 		ethdr0 = &ethdr0;
 		gce0 = &gce0;
 		gce1 = &gce1;
@@ -2480,6 +2482,18 @@ disp_dsi1: dsi@1c012000 {
 			status = "disabled";
 		};
 
+		dp_intf0: dp-intf@1c015000 {
+			compatible = "mediatek,mt8188-dp-intf";
+			reg = <0 0x1c015000 0 0x1000>;
+			clocks = <&vdosys0 CLK_VDO0_DP_INTF0_DP_INTF>,
+				 <&vdosys0 CLK_VDO0_DP_INTF0>,
+				 <&apmixedsys CLK_APMIXED_TVDPLL1>;
+			clock-names = "pixel", "engine", "pll";
+			interrupts = <GIC_SPI 657 IRQ_TYPE_LEVEL_HIGH 0>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS0>;
+			status = "disabled";
+		};
+
 		mutex0: mutex@1c016000 {
 			compatible = "mediatek,mt8188-disp-mutex";
 			reg = <0 0x1c016000 0 0x1000>;
@@ -2745,6 +2759,18 @@ merge4: merge@1c110000 {
 			mediatek,merge-fifo-en;
 		};
 
+		dp_intf1: dp-intf@1c113000 {
+			compatible = "mediatek,mt8188-dp-intf";
+			reg = <0 0x1c113000 0 0x1000>;
+			clocks = <&vdosys1 CLK_VDO1_DPINTF>,
+				 <&vdosys1 CLK_VDO1_DP_INTF0_MMCK>,
+				 <&apmixedsys CLK_APMIXED_TVDPLL2>;
+			clock-names = "pixel", "engine", "pll";
+			interrupts = <GIC_SPI 513 IRQ_TYPE_LEVEL_HIGH 0>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS1>;
+			status = "disabled";
+		};
+
 		ethdr0: ethdr@1c114000 {
 			compatible = "mediatek,mt8188-disp-ethdr", "mediatek,mt8195-disp-ethdr";
 			reg = <0 0x1c114000 0 0x1000>,
-- 
2.47.0.rc0.187.ge670bccf7e-goog


