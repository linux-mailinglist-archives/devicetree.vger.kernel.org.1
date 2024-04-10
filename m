Return-Path: <devicetree+bounces-58034-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD5389FF89
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 20:15:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 72FE31C2305F
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 18:15:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99F501802AC;
	Wed, 10 Apr 2024 18:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vqu/Zhcm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B6671802A1
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 18:15:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712772933; cv=none; b=k4fVXPZDqj7X2PLoCVerRK+D+z6kDyhOzELV44D4/83DAA3TOzhEga/sb3/biYOt7jRBAfJOiBz9Tc144q1G9gSa2bg+5GiXvDjozcV99c2whsItlRqmiYiovbPBCKmhixYPnZDn/yvDurxAixvHcWc/6Ksbpx+YwHqO1KioEH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712772933; c=relaxed/simple;
	bh=tWhKR1dsQM1YC79zbmlvLikHvew+c5F6LJQDwMAE2cg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Ubh53TJ/66lHVHsJLsUmrqCwLXIwcWwGeWpfawTMy72h5V9MQ8Bq9OCOLbxNvm6nhcI/Jcdc+LLKdw+rcJfythGGdviMiJ7EmwJdoa10Qi5p1lD5X5NZrazKEq1TIZZLvRqath7ezmAdBkEbEPY+2/OzHUt04QBp9x8dOeS4Lug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vqu/Zhcm; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-416a8ec0239so696325e9.0
        for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 11:15:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712772930; x=1713377730; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wIIgCwWsXgtg5bruLAQKszp23oXas8PwjnbukW1ABVE=;
        b=vqu/ZhcmTXTWyuku74l9jzNxCpxDm75JMuSmwPS+4RJB/KrYmQqOqyKc9DRrOHKFk6
         I/MXgLeygoFTj5VCaWnnmcQidIYsy5bdAPsrbqESJ2efpAgjwd/WLTODuQ7DIYCcf/XY
         EKQet6XVdC+UXJt1SyrLnQp2cgU0E5HEbgo9r0/o7cIR57Qc+LAhKmm3lR6f/stSGDvY
         rmLu8H18zz9q8qwqbEHRfBA6lMnK3hXt7FuEnyMQTaR3ib17aXawJpAeAupCWfvM8ipY
         TOmSJSJCi9bTv5dZBrBezDXEyrYEsuCikdQHyD16bHqZ5+A7iUtAJM0vhR8/Sm8f1H9v
         0L/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712772930; x=1713377730;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wIIgCwWsXgtg5bruLAQKszp23oXas8PwjnbukW1ABVE=;
        b=HXIbrqB6bpoj96SNFGHk8U8HA1817K4rnccdgGuPey60pBGBegohF8aCOmwD8hSoH+
         A2zNHC3CxwMSU+dLS/LCaivzao5Gwi3MGCpVE5EcLqhmkLOi9/g1Nt76jCiOxV9Q6Vjb
         zmQuKyPOOMK16Q1XQW63aH5gdC1VHKWI1XoPshsQZ0v9HNL/GFdnuwbYwSoDT+vmq+JP
         1eMkC9cbMqG2tIE9tUwGZpMUzQ5CwbHMV+3LTxBpF2vgfoGkUUOfdMM8dIy4MUVfDBl/
         WxJaMZB0LRgyCX6QkhKzV09nOL/xO8SQY+4F6L1hp187ISQM4uArNezXMMaODjqkaeuI
         7vbw==
X-Forwarded-Encrypted: i=1; AJvYcCXjaDtK2uxbvIBieJsfb9aQHAgIrFq58mVL/rAClvB/7UqfBVjyk7+OxUVUgI+B36Cdae1gIckPOqC2HeN1Oupd7pp+/LHmD/DslA==
X-Gm-Message-State: AOJu0Ywvivnq4U8a+WkZbBYoLllcVKhjkO5pS1mlxfARy4NMF0Fl7uol
	P3gS8upeIz1XOSZHUiSdxSP2uIJP5tVH3q9Cr+Gp2kNOYJ8Vdgte+BAzhDBxZ+E=
X-Google-Smtp-Source: AGHT+IHa3VzJvP4OihmkofwN3t83NfQ7iiOhP0nYKsaImp6PQcjJKVMYMSyyVk8er1agY3VX8l3E6g==
X-Received: by 2002:a05:600c:4e93:b0:415:431d:7747 with SMTP id f19-20020a05600c4e9300b00415431d7747mr358784wmq.7.1712772929771;
        Wed, 10 Apr 2024 11:15:29 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id d13-20020a05600c3acd00b004161bffa48csm3026487wms.40.2024.04.10.11.15.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Apr 2024 11:15:29 -0700 (PDT)
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
Subject: [PATCH v2 1/4] dt-bindings: PCI: cdns,cdns-pcie-host: drop redundant msi-parent and pci-bus.yaml
Date: Wed, 10 Apr 2024 20:15:18 +0200
Message-Id: <20240410181521.269431-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The binding reference common cdns-pcie-host.yaml, which already defines
msi-parent and has a reference to pci-bus.yaml schema.  Drop redundant
pieces here to make it a bit smaller.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
1. Add tags.
---
 Documentation/devicetree/bindings/pci/cdns,cdns-pcie-host.yaml | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-host.yaml b/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-host.yaml
index bc3c48f60fff..a8190d9b100f 100644
--- a/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-host.yaml
+++ b/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-host.yaml
@@ -10,7 +10,6 @@ maintainers:
   - Tom Joseph <tjoseph@cadence.com>
 
 allOf:
-  - $ref: /schemas/pci/pci-bus.yaml#
   - $ref: cdns-pcie-host.yaml#
 
 properties:
@@ -25,8 +24,6 @@ properties:
       - const: reg
       - const: cfg
 
-  msi-parent: true
-
 required:
   - reg
   - reg-names
-- 
2.34.1


