Return-Path: <devicetree+bounces-66330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A2AED8C26EF
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 16:35:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D3E9E1C226D8
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 14:35:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B158517108E;
	Fri, 10 May 2024 14:35:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="ROHqB4m2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95CF817082B
	for <devicetree@vger.kernel.org>; Fri, 10 May 2024 14:35:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715351730; cv=none; b=Q0HZKzxwBtfv0r3/XIZwvWgntRAfHyKXhrW/8169FmyJ/jVL6w71kESaxyy7jHAnwmgvBsvGVwChMdeHHL9LMdh8jr/NE5BlRhBcOBJ3J1SMBlAuawQ2cFrotFM6Mq96nacRALaskRTgRlYKUXW5bQLBvdN/2Adjn0Cm/0hAMBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715351730; c=relaxed/simple;
	bh=P92kk6BhCHW3muExoIcLcwA5qcNfUfMADu6b2AJa6JA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pTKzGDayMhWbFnCBawa1FzvdBOCXVZtazIrIQV5SuCVYn/QHOZA+/RYJikkvVDls40S2Em1u3hKsGR+xrCmYIuby5VaykuBtXds7q9wXiau3h5AWoYE27NR427rdMbQ7/KZxZK4TEYUQRYyCg1o0rP2gmDup3QI8rZxySkLdZZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=ROHqB4m2; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a59a64db066so550895366b.3
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 07:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1715351727; x=1715956527; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fJE6iq5KMzfXhNp8cO0cJHNPNYoqLhn2RR6V0vH5QBM=;
        b=ROHqB4m2bwmUAfyqROd6dRtM6BST+qJEOTL/Voj49JLC+hzHMfFPxNQPLN8KCzJCbp
         +iSdYwX6IRridt4tSm7D3gkea4E9Rm+wFX8VbCvEZs4+ucEePY0NdM3LZd5wx0yJcUUP
         wonQgTFaz9pLp/dca/DM46ymG/wlOzu0jNupxPMUHVnfiJ2LsP2AfcRNFPSfUVmPs4Jg
         mXTtA+1cvPm3aXNG88VTB7Vx6d/fO5JjG1QJuwmoOq5flpZXOdhtVBGkvGmEkU4gj4Ec
         2pHAFkWbvXSjQDE0eRQwwIA357Nt+VCgRL1dNdYbm0n0vs/MjL4EASrI43DDkyPZdHQp
         xZTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715351727; x=1715956527;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fJE6iq5KMzfXhNp8cO0cJHNPNYoqLhn2RR6V0vH5QBM=;
        b=CYi6pBmna2SK8wcx8M4aXsxA9uCc2mlSowbYI5x3qh72oXObyne1vvg5DA/xDhToDr
         5HbCGTgStq2DIPc5QXyI/So94qAlDy2jin26K+Aov7lblTC182j09f/YBRSRAoRCfBdR
         AqwZDoRK6gNnHCssedDWEjtUl+vH3KgVZDIuy0aZHzQDM2fgr2K7D0sssTTOIAeewpRt
         4j8t+It/hR6pDUZrbxHsk4YBbxMus2wHCFP32TIwcdpEhA5bWqwKmc+MQVJzHyiqDJXX
         Q4rAGpss1e38oBYJ5TsUOBSk5uFSxU6lvd87niMh+LMgFDWtTBAJWjpdnRB4cW2ENLwn
         /ciw==
X-Forwarded-Encrypted: i=1; AJvYcCVIyv79G6SHv9NUBPmUBQ7rWybz8VZRmpeDi6HR5XGH4SgQm3RRI/nrYYaNg9CDGqiGyW+XIX/wnh5Kt2687JjavQkBfN9SzkZTtA==
X-Gm-Message-State: AOJu0Yyj1HmV6yPQFHBS/lk68YA6IZRpCiVxjUZHx2e8nPkvYLWSBE2b
	mtTMTWkWpEsGpp27W2DNOfYirCUdQtJChuONGmALkSb1Z2IMMWXZcq3RGVq2H6E=
X-Google-Smtp-Source: AGHT+IGYZyhWDzVYf6DmjGdC71tudm6uLp4GK1JX9oFjlfQU0KYYH9PsgUrcikFgCQeJEwb7baoaaQ==
X-Received: by 2002:a50:baeb:0:b0:56e:2ebc:5c4 with SMTP id 4fb4d7f45d1cf-5734d5ceae0mr2015999a12.20.1715351727022;
        Fri, 10 May 2024 07:35:27 -0700 (PDT)
Received: from localhost (host-95-235-217-160.retail.telecomitalia.it. [95.235.217.160])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5733bea6a36sm1882673a12.12.2024.05.10.07.35.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 May 2024 07:35:26 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Kamal Dasu <kamal.dasu@broadcom.com>,
	Al Cooper <alcooperx@gmail.com>,
	Eric Anholt <eric@anholt.net>,
	Stefan Wahren <wahrenst@gmx.net>,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org
Cc: Andrea della Porta <andrea.porta@suse.com>
Subject: [PATCH v2 2/4] dt-bindings: mmc: Add support for BCM2712 SD host controller
Date: Fri, 10 May 2024 16:35:28 +0200
Message-ID: <1f0c4fa62d6849753e2138cce5498693cfc3a230.1715332922.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1715332922.git.andrea.porta@suse.com>
References: <cover.1715332922.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The BCM2712 has an SDHCI capable host interface similar to the one found
in other STB chipsets. Add the relevant compatible string and relative
example.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
 .../bindings/mmc/brcm,sdhci-brcmstb.yaml      | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml b/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml
index cbd3d6c6c77f..404b75fa7adb 100644
--- a/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml
+++ b/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml
@@ -13,6 +13,10 @@ maintainers:
 properties:
   compatible:
     oneOf:
+      - items:
+          - enum:
+              - brcm,bcm2712-sdhci
+          - const: brcm,sdhci-brcmstb
       - items:
           - enum:
               - brcm,bcm7216-sdhci
@@ -114,3 +118,22 @@ examples:
       clocks = <&scmi_clk 245>;
       clock-names = "sw_sdio";
     };
+
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    soc {
+      #address-cells = <2>;
+      #size-cells = <2>;
+
+      mmc@1000fff000 {
+        compatible = "brcm,bcm2712-sdhci",
+                     "brcm,sdhci-brcmstb";
+        reg = <0x10 0x00fff000  0x0 0x260>,
+              <0x10 0x00fff400  0x0 0x200>;
+        reg-names = "host", "cfg";
+        mmc-ddr-3_3v;
+        interrupts = <GIC_SPI 0x111 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&clk_emmc2>;
+        clock-names = "sw_sdio";
+      };
+    };
-- 
2.35.3


