Return-Path: <devicetree+bounces-107407-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E4BA998EA08
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 09:03:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A710528385D
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 07:03:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45C9E143723;
	Thu,  3 Oct 2024 07:02:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="QJOCxWrd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2C7686AE3
	for <devicetree@vger.kernel.org>; Thu,  3 Oct 2024 07:02:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727938932; cv=none; b=MaswbyCNBTlGkCblR3y4HQqXWfM7Z34v87jMPTMHgHKrYRmpox2bTXRgzFfQYLfz87KKpRus1489OsauVI8d0Fn5q4sKqJOCzyaHIcvrJ+rWtb1pR+VWa7ek+Pg1Iph5oc7ir3KrR/Hd/7dYCTqnOb/rxrmzL3uCTXyUl2C2FWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727938932; c=relaxed/simple;
	bh=Ye0siwcOaJvlxvSr6UbPhEw7tWXLtn2oIKJeHRX1aEQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GvCtAlrHZDld3T4Y4VUKPrdXSqlCOBHiSzRIFPm8CmNC+4cqzAespVYdU9dF9+ihYUn15itqKZX5ZcP+GaD8voLoXZc6f+yERDIEXtPkWZ/t8+vJxjw29OseJ09ixAv7dfEFM1bIueq2uWq6O/sHYclwIN9uUK8RnIKs53B3rGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=QJOCxWrd; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-719b17b2da1so487681b3a.0
        for <devicetree@vger.kernel.org>; Thu, 03 Oct 2024 00:02:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1727938930; x=1728543730; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ftwFn9ZLUuKCLPPu13/3mAe7bDdVNGDECC9c6Eq3ZPM=;
        b=QJOCxWrdlq+lXIyC/qCmK8BTMum4ITnBt9IUYTDXmpPA05bIXvqTarjFENbUfa88ni
         gWbbEaqEvVWJYO7p7U1EbUvFZGZvcOqPm97XmOTfTAneCFvKPDBrl0bwBU6D8hpDfaa+
         e0InDBNGCY4gFAq/1Yv7DgjOeEukZw+N7V9xg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727938930; x=1728543730;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ftwFn9ZLUuKCLPPu13/3mAe7bDdVNGDECC9c6Eq3ZPM=;
        b=DVYZGp5239Xubr2sk2zVYHw/BOR9J8+0KoYXuQIYMyh6n7nfIoPS0mtuXNMzlv3Hc5
         RGdB/Z+sZPfBRGDgkfPWaXuP9xsgEHv939KK7BTwGqYgkRQvtETPqwpCJ/H0PxlTV4of
         FvLpHZ/csREcsrtjAXPCV9BwWCLBoK2MnI1sqIR5OW2KD+u8S334MnT/0W2RPYssYnS+
         MtYgfX3VNLn8oq0F4eMhDodlw/Fdj4PzzZ+f1r7SFQuCoxeK8S1UFK3jCW8MgvRNP7jE
         FevGqmvawLBw+MBECglNPwrOt37JfVPZ1GLm0kRX0qTrg+z5eyZY/UU3F+eIVQ1/59Ru
         3+fQ==
X-Forwarded-Encrypted: i=1; AJvYcCWpGt9/sUn9saVR3SFWopxPNmj/CKEDE9l7Z0YfgEsWVRItzV0DvhG3rULJaz8wDZ7Zv1VAAdjCAbit@vger.kernel.org
X-Gm-Message-State: AOJu0YydXhKeVu9L62ZNuvxGxi2EQL6GM9jVEIbr8D7NacQPTXTwa2FM
	V5ECGZyi5Ii9WChZ+wgymV0iAtHbvqB1MdyK+UPLdwamTWoDA2stIczzw14qtQ==
X-Google-Smtp-Source: AGHT+IHE/CCPGFNgWjWh9e6CyqMHQZblij2trHaQLpVyyZLVEj0BO/xQcou38wPPpQh6mNnsYlGS5A==
X-Received: by 2002:a05:6a00:1829:b0:714:1a7c:b727 with SMTP id d2e1a72fcca58-71dc5c772bbmr9315186b3a.8.1727938930039;
        Thu, 03 Oct 2024 00:02:10 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:3bd0:d371:4a25:3576])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71dd9d8e473sm633782b3a.81.2024.10.03.00.02.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Oct 2024 00:02:09 -0700 (PDT)
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
Subject: [PATCH v2 9/9] arm64: dts: mediatek: mt8188: Add eDP and DP TX nodes
Date: Thu,  3 Oct 2024 15:00:03 +0800
Message-ID: <20241003070139.1461472-10-fshao@chromium.org>
X-Mailer: git-send-email 2.46.1.824.gd892dcdcdd-goog
In-Reply-To: <20241003070139.1461472-1-fshao@chromium.org>
References: <20241003070139.1461472-1-fshao@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add edp-tx and dp-tx nodes for the Embedded DisplayPort (eDP) and
DisplayPort ports to connect to DP-INTF ports and panels, and add the
efuse cell for the DP calibration data.

Individual board device tree should enable the nodes and connect input
and output ports as needed.

Signed-off-by: Fei Shao <fshao@chromium.org>
---

(no changes since v1)

 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 26 ++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index e77bd2b76128..92e71977c775 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -2006,6 +2006,10 @@ efuse: efuse@11f20000 {
 			#address-cells = <1>;
 			#size-cells = <1>;
 
+			dp_calib_data: dp-calib@1a0 {
+				reg = <0x1a0 0xc>;
+			};
+
 			lvts_efuse_data1: lvts1-calib@1ac {
 				reg = <0x1ac 0x40>;
 			};
@@ -2852,5 +2856,27 @@ padding7: padding@1c124000 {
 			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS1>;
 			mediatek,gce-client-reg = <&gce0 SUBSYS_1c12XXXX 0x4000 0x1000>;
 		};
+
+		edp_tx: edp-tx@1c500000 {
+			compatible = "mediatek,mt8188-edp-tx";
+			reg = <0 0x1c500000 0 0x8000>;
+			interrupts = <GIC_SPI 676 IRQ_TYPE_LEVEL_HIGH 0>;
+			nvmem-cells = <&dp_calib_data>;
+			nvmem-cell-names = "dp_calibration_data";
+			power-domains = <&spm MT8188_POWER_DOMAIN_EDP_TX>;
+			max-linkrate-mhz = <8100>;
+			status = "disabled";
+		};
+
+		dp_tx: dp-tx@1c600000 {
+			compatible = "mediatek,mt8188-dp-tx";
+			reg = <0 0x1c600000 0 0x8000>;
+			interrupts = <GIC_SPI 458 IRQ_TYPE_LEVEL_HIGH 0>;
+			nvmem-cells = <&dp_calib_data>;
+			nvmem-cell-names = "dp_calibration_data";
+			power-domains = <&spm MT8188_POWER_DOMAIN_DP_TX>;
+			max-linkrate-mhz = <5400>;
+			status = "disabled";
+		};
 	};
 };
-- 
2.46.1.824.gd892dcdcdd-goog


