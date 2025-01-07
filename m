Return-Path: <devicetree+bounces-136142-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AA403A0406F
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 14:10:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 716767A1C72
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 13:10:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C43561EF09E;
	Tue,  7 Jan 2025 13:10:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RInHeiDj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CD021E3DD3
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 13:10:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736255427; cv=none; b=jgvbfaeZ4oPLoUH5SNJRapGH0b1LkiA7tEpkqCWHP1x9/zOR/U6YTuRNTVJZoCsztMw+uufhwUnA68IANnT8xUAwqXeEza+xlQ3JtsThqq1E0knbTWhp2i+2yZEz+SpCEBUE4VOiBTu4v8XM2yDA/GPRDqpjVPInaBU4BVcE0Tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736255427; c=relaxed/simple;
	bh=ZSVfHvcyonMMaAuHxLoTsm3svmwPbJluMG1JO7rk65k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YssPInSK1dRCGkD9kRCH3TRdlMQVnZYA0q7MA6qNAc7me6iTq2ANtCBHLl+EK//hAimKfbYzwqfzjEKnLFS370xO8fGTZ9OLB1eO9Zd10jF7SIXq+YHtVL0QaLEOyE305C73exgFDoxnJGQfVMS1grTbQC9XAJcwIrNwsrbbUUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RInHeiDj; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3862f11a13dso1857402f8f.2
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 05:10:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736255423; x=1736860223; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=T66eNQvkCk8ULvCPWitWaVVqgBtMU9sicY2LjyOUOVo=;
        b=RInHeiDjnH+WvBxRlr+gVSHftNWwS1mS7TpIcUqboHLJtkMjQODvRVjfdvKv0dnbtC
         vEHqXYkiS0EBBIdYItYbYForUasMfWd56E493K7Aor0lKhXb0va+kK0IG9SdXHwDhTQ7
         2d6955dcnbHnRv3sVNNxoEP85G8QNZNLF6ZdoyhIQuX41FYuTa/ESm9W2wh4qxhWK4Bh
         +bxjYkBRPHB3IC6RtyvmA6/NqGSq3CK/bvHbZQcaP4jAhXG4pXlSL8yFW7L9xicTyseP
         qqkFJtzcTJB1yMjSv6Hai37gGqGHcLE/MEKwsYtwp4pCYDP+9J9TgqCAHLF0ZOw5qFjn
         ucog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736255423; x=1736860223;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T66eNQvkCk8ULvCPWitWaVVqgBtMU9sicY2LjyOUOVo=;
        b=l1ZaT0nxw5twmY4QwcpPrVVM74QSQAOURyL5lXwjJR/bH5FrtJ7Rlw07axHm+V2Sad
         jWE3QeLdVZo2UDjufjB37z3KjybZBUhSaXA+f8MPL+UD6UIYaIy37H6NSyxacplNdUSU
         54STfg9p+IkGgj3L/4WgXpZg+siQl/nXMlOVmWWSDcoIH5EjowzVxnsoxQcVukRdZnST
         NMfGM9nTCOLMGJVMd56zpGtcyoZK6Z3aU8+yaj9KnkFhp9++4+1Ar8jGWs4XoRRi1FZR
         qxwGpYyX4Y7pZTmplxYTH8sT4EKGsm3k/fY3objVkmcdkd3lBQ3gKi/Jyd2gkzxZmULO
         J2zQ==
X-Forwarded-Encrypted: i=1; AJvYcCUxvVXy5yqsnuWa3kWbb98+wAiRWAOWQ66Dw4RdEA7caG+iukRwAUAqi0Q1/lCTAoueoctg8AcqQXe9@vger.kernel.org
X-Gm-Message-State: AOJu0YzKONujzZXA3z5DRgLophKQ9k7Df1qFcQK9sZE5D6IyTNexmlOK
	dNmDInz4qsJIeD2TgylhZhuNSURvGLz7thdtvvXn8xxybL78D3GZMTnW8AS7QbY=
X-Gm-Gg: ASbGncse+9km93ja7OuT1/x5fHWGPrBL4LrcsLeM/yyDwicTc/Hc1uT4He0Fprfsb+R
	wayaKNFzEp8hRo4CoKLl+DbZXatnZkKrHRwLiwXUwxO12m28ejUKR+thRLWZZxlLPFjIIYjYYeJ
	Dslm1E6zU+UNcf0UG1GengkrT814SE2PBAkXrornz9VOXc821AoFA74BZ1KRaeW097/B+egh3RZ
	++agfH4A1OW/UIHQ4tDbO/S7cwP1o91f2UxCLxqWYPWhr3VinNZJlzPnEwptrnOH6840BE=
X-Google-Smtp-Source: AGHT+IGJtRYkKYFK2PfPatv3vBYhYEZyX64bizP7nth8eSlErNUm+QXw16gIId4ACUxbkB0wlK9AkA==
X-Received: by 2002:a5d:6d0f:0:b0:385:ebbf:8736 with SMTP id ffacd0b85a97d-38a223f7484mr20095420f8f.9.1736255422748;
        Tue, 07 Jan 2025 05:10:22 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4366127c4bbsm593719505e9.32.2025.01.07.05.10.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2025 05:10:21 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	linux-scsi@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: ufs: Correct indentation and style in DTS example
Date: Tue,  7 Jan 2025 14:10:19 +0100
Message-ID: <20250107131019.246517-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

DTS example in the bindings should be indented with 2- or 4-spaces and
aligned with opening '- |', so correct any differences like 3-spaces or
mixtures 2- and 4-spaces in one binding.

No functional changes here, but saves some comments during reviews of
new patches built on existing code.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/ufs/renesas,ufs.yaml  | 16 +++++------
 .../bindings/ufs/samsung,exynos-ufs.yaml      | 28 +++++++++----------
 2 files changed, 22 insertions(+), 22 deletions(-)

diff --git a/Documentation/devicetree/bindings/ufs/renesas,ufs.yaml b/Documentation/devicetree/bindings/ufs/renesas,ufs.yaml
index f04f9f61fa9f..1949a15e73d2 100644
--- a/Documentation/devicetree/bindings/ufs/renesas,ufs.yaml
+++ b/Documentation/devicetree/bindings/ufs/renesas,ufs.yaml
@@ -50,12 +50,12 @@ examples:
     #include <dt-bindings/power/r8a779f0-sysc.h>
 
     ufs: ufs@e686000 {
-            compatible = "renesas,r8a779f0-ufs";
-            reg = <0xe6860000 0x100>;
-            interrupts = <GIC_SPI 235 IRQ_TYPE_LEVEL_HIGH>;
-            clocks = <&cpg CPG_MOD 1514>, <&ufs30_clk>;
-            clock-names = "fck", "ref_clk";
-            freq-table-hz = <200000000 200000000>, <38400000 38400000>;
-            power-domains = <&sysc R8A779F0_PD_ALWAYS_ON>;
-            resets = <&cpg 1514>;
+        compatible = "renesas,r8a779f0-ufs";
+        reg = <0xe6860000 0x100>;
+        interrupts = <GIC_SPI 235 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&cpg CPG_MOD 1514>, <&ufs30_clk>;
+        clock-names = "fck", "ref_clk";
+        freq-table-hz = <200000000 200000000>, <38400000 38400000>;
+        power-domains = <&sysc R8A779F0_PD_ALWAYS_ON>;
+        resets = <&cpg 1514>;
     };
diff --git a/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml b/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
index 720879820f66..b4e744ebffd1 100644
--- a/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
+++ b/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
@@ -112,19 +112,19 @@ examples:
     #include <dt-bindings/clock/exynos7-clk.h>
 
     ufs: ufs@15570000 {
-       compatible = "samsung,exynos7-ufs";
-       reg = <0x15570000 0x100>,
-             <0x15570100 0x100>,
-             <0x15571000 0x200>,
-             <0x15572000 0x300>;
-       reg-names = "hci", "vs_hci", "unipro", "ufsp";
-       interrupts = <GIC_SPI 200 IRQ_TYPE_LEVEL_HIGH>;
-       clocks = <&clock_fsys1 ACLK_UFS20_LINK>,
-                <&clock_fsys1 SCLK_UFSUNIPRO20_USER>;
-       clock-names = "core_clk", "sclk_unipro_main";
-       pinctrl-names = "default";
-       pinctrl-0 = <&ufs_rst_n &ufs_refclk_out>;
-       phys = <&ufs_phy>;
-       phy-names = "ufs-phy";
+        compatible = "samsung,exynos7-ufs";
+        reg = <0x15570000 0x100>,
+              <0x15570100 0x100>,
+              <0x15571000 0x200>,
+              <0x15572000 0x300>;
+        reg-names = "hci", "vs_hci", "unipro", "ufsp";
+        interrupts = <GIC_SPI 200 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&clock_fsys1 ACLK_UFS20_LINK>,
+                 <&clock_fsys1 SCLK_UFSUNIPRO20_USER>;
+        clock-names = "core_clk", "sclk_unipro_main";
+        pinctrl-names = "default";
+        pinctrl-0 = <&ufs_rst_n &ufs_refclk_out>;
+        phys = <&ufs_phy>;
+        phy-names = "ufs-phy";
     };
 ...
-- 
2.43.0


