Return-Path: <devicetree+bounces-58942-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA458A3D36
	for <lists+devicetree@lfdr.de>; Sat, 13 Apr 2024 17:17:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 78429281667
	for <lists+devicetree@lfdr.de>; Sat, 13 Apr 2024 15:17:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1D91487B5;
	Sat, 13 Apr 2024 15:16:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oN9fFdTc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F090E45C04
	for <devicetree@vger.kernel.org>; Sat, 13 Apr 2024 15:16:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713021406; cv=none; b=BvnpuGwSDfiM3rkR1ZEWKlkp+hPYYlHFfUgpYvwxsaVWJfbtcKw1+DB8FPs7GCrAB663474Q+XNQt1v05oVllpKsF7yjqZQGASNdbCZkGfBZHLFNNgLqbYHF0klF/6Y7Na0HucvFaTfDuCN7dhVQzmFOpmh14xfJgS6kk/3Li/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713021406; c=relaxed/simple;
	bh=IHhPqznUG4voks9nHUIjXaqoLqCX+AXGap9zXBqCFRs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Tc3xugN18f2BuWhuGbxbcOY2KhLdfPyzyHE2zuvcyno8MiPT8gqNEtYRWJbeN2xPPPA7os4I+Y7L35F0FjhYrpYvRP5KxcxPz1MBjrvPEjwe7m6xNcsTDSFLJxdHrV6kMU/42kX8hx3ZZKOM9zvKET6lfHYk0MUkF18g+v3N8jI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oN9fFdTc; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-56829f41f81so2657916a12.2
        for <devicetree@vger.kernel.org>; Sat, 13 Apr 2024 08:16:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713021403; x=1713626203; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5A7g7qS50UKBu2Vs5SDgCbvvncurtSr/U44kFCGPI8Y=;
        b=oN9fFdTcFrYAsJmW6RlxzSSAKl7L/yJBSS9SIBH/zkdHnEsx9jZmeTYBMAmCvgdGEa
         z1Wyg9cLrVk0nfdwRI7YEagdJMOOrOZz7hwLBtmSSMM3Wsfwxe1X/nAdEOQ+haqRBXF7
         O8yDIVyL8GilkPMZ8SdS6BXpLDFT/7Pbsva791H1R1UI1ZuwdnIm3davtOga1eaIX0et
         bwt4A3dxbN6zSqde4wghRPoZ6QwTKWkiDiQWMPTX/6NIDco/XUakvbGLF6xFUMOMVKDe
         q3WgE2AxVapisiDW3Q/asyr7qE+Jq0syfm6MueoG1+Gvokf1bhdLp5O5U+28oN0fWmrS
         Lcbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713021403; x=1713626203;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5A7g7qS50UKBu2Vs5SDgCbvvncurtSr/U44kFCGPI8Y=;
        b=msiBaMN5Xsyc5u3jtyWQpDJCnnUdWSHPL3ngEAHpXGTDrri3NwS+dZ+2rr3ZQZrqLY
         Hn5oVmVZYBApzEojOvXjFUBuFDEBUjgGPTO6vf2v/iYS4AgmA8mop7EYGz8M2K7gqGSA
         vv01115d7MlIPjPszct12EIHjzzqodRWKR1M6Sy6C4kijytQWjyhHlUQyAxm0Qod+skz
         qrbkYqyUu/Zyj/MyuRhAJDaGQdZCHUrw/rTnv4oN6k3GKAmQkFM3Bg2rN7T2kDVEX68r
         Nhc4NP3UQRcQqx3c/RX8/XDWoSYs2qWQcub2EYVPeCHTJXHGJFra80tRNnKFsAbXZjRG
         hM0Q==
X-Forwarded-Encrypted: i=1; AJvYcCXg4BrbW39dZlyMiTLAqEvqLlmmw+tJDZ/aVSzt+1b+Lb2NeFshxFZM5yqxfq02CzzlHNH7s017U/QiNK/TFcKBgZej/qzJlUQIMw==
X-Gm-Message-State: AOJu0Yywkw2oQZFg+RSz68WCLRgRjBLmDiU0F6qaScm9Nw8XCajoUJg8
	ReFhoYCEQOkMVBCwGcKKczB/GNe/89UCdmEJ+z7C/nIXvsXPajdBP9IXSvbKO5k=
X-Google-Smtp-Source: AGHT+IEmo2EuLsiQvKf6UbS7ue4IQL/YRmJZHSgoqwKXTxi3PpsLAoyXQzBVJzA9zQct8EPeoVHm3g==
X-Received: by 2002:a17:906:36d6:b0:a51:d7f3:324b with SMTP id b22-20020a17090636d600b00a51d7f3324bmr3318859ejc.66.1713021403232;
        Sat, 13 Apr 2024 08:16:43 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id kj15-20020a170907764f00b00a51a60bf400sm3104956ejc.76.2024.04.13.08.16.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Apr 2024 08:16:42 -0700 (PDT)
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
Subject: [PATCH v3 2/4] dt-bindings: PCI: mediatek,mt7621: add missing child node reg
Date: Sat, 13 Apr 2024 17:16:15 +0200
Message-Id: <20240413151617.35630-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240413151617.35630-1-krzysztof.kozlowski@linaro.org>
References: <20240413151617.35630-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

MT7621 PCI host bridge has children which are PCI root ports.  The
children have "reg" property, but do not explicitly define it.  Instead
they rely on pci-bus.yaml schema, but that one has "reg" without any
constraints.

Define the "reg" for the children, so the binding will be more specific
and later will allow dropping reference to deprecated pci-bus.yaml
schema.

Acked-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v3:
1. Correct commit msg (root port).

Changes in v2:
1. Add tags.
---
 .../devicetree/bindings/pci/mediatek,mt7621-pcie.yaml          | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/mediatek,mt7621-pcie.yaml b/Documentation/devicetree/bindings/pci/mediatek,mt7621-pcie.yaml
index e63e6458cea8..61d027239910 100644
--- a/Documentation/devicetree/bindings/pci/mediatek,mt7621-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/mediatek,mt7621-pcie.yaml
@@ -36,6 +36,9 @@ patternProperties:
     $ref: /schemas/pci/pci-bus.yaml#
 
     properties:
+      reg:
+        maxItems: 1
+
       resets:
         maxItems: 1
 
-- 
2.34.1


