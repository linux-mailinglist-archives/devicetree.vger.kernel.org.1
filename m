Return-Path: <devicetree+bounces-58037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C76AD89FF9B
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 20:16:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3DDAE1F22874
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 18:16:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3582181335;
	Wed, 10 Apr 2024 18:15:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lrRW0a0F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF2EE18131A
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 18:15:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712772943; cv=none; b=OLpeqR7160zqYyitiCV+ud+uXh9nPsJDtnw8eL//jhIq5bDVb+MdCQMaPTdJXxVO2mcPo6knzoGsciGRNjNYDCuUsdjJPA2V5wK7RnExjk1c+bEHG5SF5jEG266TtPCfxgsoS9TM0COme2Y4u07vRZE6HSIyamfUs7g3nEsUMAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712772943; c=relaxed/simple;
	bh=Q2qHTZspSdWtX9XB3A8ImC1CW2zPPcnl5BCkVvkisr4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=dCnT7sTn675/gIBpUavQlBkrlyfG03EYd76rMpDRKuaQUx1NO69CdMHX4f32vh7OVElPT5kkRLKXuB1GOz1lbjTYoBpl0tVDscjkxrdAGjqT0VLJwzROag+O7JgqqnL3Pdtov5KqAZm/qoftksKFIovg+IS4PzhfcCnL3nnN7Vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lrRW0a0F; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-416920b1a2aso19638225e9.2
        for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 11:15:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712772940; x=1713377740; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZTWafwAOSteWZK+IF8K+ySu+NLy3Zj+VooWrs6puuRE=;
        b=lrRW0a0F5OIK6cx/Uktin3Vb43i9YY53hzg4Hj3AC2A4mWCg1dFqX+/DhBBJUmx8al
         G4zrfREF/oyikrlsCoS5jrfToMDL1T2yMkMIEenzflJ1mGdOQrotzE0elG3g/7vI6Q2h
         BvuBu7Bx5VVePyFyGWOgOoGsjmtUrIudLOdLBrpX1XlQjr/LyrSxa7NE3PPzNflcfkV9
         30RARpS4maYm7FDUiCxoQrDLSgG0r0yYJGetYn39uLU+u+qR2DUXenVcFzvWtLeGHMW/
         4OeYgNubQlhNU/M4aIfMoY0SJo7C3CaUAlFpZ1rQU+6F6Aa4LW/SGkk5B8ngYZdIxVu5
         mKJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712772940; x=1713377740;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZTWafwAOSteWZK+IF8K+ySu+NLy3Zj+VooWrs6puuRE=;
        b=NOg22u1i9xHrLlgBBeVW8pAFihSpu/oRp9w5583vVms7WN9ydxtuJHDAvzrcpiKhXG
         5EVKwGKINrI/7R1qtJdh7jzw2FsXYx+/cjeDdYTKo9CPBobVYF+ZTGWDG5wnYbKGKey9
         Q+PTxra9UyoePZ4XeSxHVcy0UO9DezHTCIE+GcmtEKExwPkzfz+Qrxv+Axe7iaLRXnQb
         i04hvS+LSKMomDJxAA+qn1KsVNbllnjY2T4aBCK4znncgDaxhYeUWrEO5a39TiDeB0pq
         Ba03Jkv3uYKcsIuhZ8MXT9h0DJ6cBe/x6FUMA9W1LfnrrPXkDlU52MVJIUW7oNu/Iew1
         UqtA==
X-Forwarded-Encrypted: i=1; AJvYcCX5VZcc28u2Dr5meBUfk8OGNh3NKsJyh59JPDuzYRlb++W2uB0ny0aL3EwlNOQXyXDqAiwSMYqgDDo02NDo3ametyAvqtl6Gnw66g==
X-Gm-Message-State: AOJu0YwCL1RFpbnCSZDNd7TP5Dkj1V4kWlh3JIwK2JLhodzINg+sYGex
	nnTiWM+I1vDr7TVBL93vYTs755/H9Rwsr9taETxX8eKyLEunSlTQIK4c4/z8Pug=
X-Google-Smtp-Source: AGHT+IF48RGmHk8pl2ow/KjC14k8yrkxBwd5xymh3LOhP56MyaRgm1/Xm1jdP8c96wTN/A1i8OYwaw==
X-Received: by 2002:a05:600c:3b98:b0:416:2629:bbaf with SMTP id n24-20020a05600c3b9800b004162629bbafmr2751097wms.29.1712772940126;
        Wed, 10 Apr 2024 11:15:40 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id d13-20020a05600c3acd00b004161bffa48csm3026487wms.40.2024.04.10.11.15.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Apr 2024 11:15:39 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hector Martin <marcan@marcan.st>,
	Sven Peter <sven@svenpeter.dev>,
	Alyssa Rosenzweig <alyssa@rosenzweig.io>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Jim Quinlan <jim2101024@gmail.com>,
	Nicolas Saenz Julienne <nsaenz@kernel.org>,
	Will Deacon <will@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Srikanth Thokala <srikanth.thokala@intel.com>,
	Ryder Lee <ryder.lee@mediatek.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Sergio Paracuellos <sergio.paracuellos@gmail.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Marek Vasut <marek.vasut+renesas@gmail.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bharat Kumar Gogada <bharat.kumar.gogada@amd.com>,
	Michal Simek <michal.simek@amd.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Mark Kettenis <kettenis@openbsd.org>,
	Tom Joseph <tjoseph@cadence.com>,
	Ahmad Zainie <wan.ahmad.zainie.wan.mohamad@intel.com>,
	Jiaxun Yang <jiaxun.yang@flygoat.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Thippeswamy Havalige <thippeswamy.havalige@amd.com>,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	asahi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 4/4] dt-bindings: PCI: mediatek,mt7621-pcie: switch from deprecated pci-bus.yaml
Date: Wed, 10 Apr 2024 20:15:21 +0200
Message-Id: <20240410181521.269431-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240410181521.269431-1-krzysztof.kozlowski@linaro.org>
References: <20240410181521.269431-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

dtschema package with core schemas deprecated pci-bus.yaml schema in
favor of individual schemas per host, device and pci-pci.

Switch Mediatek MT7621 PCIe host bridge binding to this new schema.

This requires dtschema package newer than v2024.02 to work fully.
v2024.02 will partially work: with a warning.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Important: v2024.03 (said dtschema newer than v2024.02) was not yet
released, therefore this patch probably should wait a bit. Previous
patches do not depend anyhow on future release, so they can be taken as
is.

Changes in v2:
1. New patch
2. Split mediatek,mt7621-pcie to separate patch as it uses
   pci-pci-bridge schema.
---
 .../devicetree/bindings/pci/mediatek,mt7621-pcie.yaml         | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/mediatek,mt7621-pcie.yaml b/Documentation/devicetree/bindings/pci/mediatek,mt7621-pcie.yaml
index 61d027239910..6fba42156db6 100644
--- a/Documentation/devicetree/bindings/pci/mediatek,mt7621-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/mediatek,mt7621-pcie.yaml
@@ -14,7 +14,7 @@ description: |+
   with 3 Root Ports. Each Root Port supports a Gen1 1-lane Link
 
 allOf:
-  - $ref: /schemas/pci/pci-bus.yaml#
+  - $ref: /schemas/pci/pci-host-bridge.yaml#
 
 properties:
   compatible:
@@ -33,7 +33,7 @@ properties:
 patternProperties:
   '^pcie@[0-2],0$':
     type: object
-    $ref: /schemas/pci/pci-bus.yaml#
+    $ref: /schemas/pci/pci-pci-bridge.yaml#
 
     properties:
       reg:
-- 
2.34.1


