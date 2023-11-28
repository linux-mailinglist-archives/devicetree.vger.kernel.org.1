Return-Path: <devicetree+bounces-19773-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 387DE7FC82A
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 22:48:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6A1531C20E20
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 21:48:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3DDA44C94;
	Tue, 28 Nov 2023 21:48:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 667E998;
	Tue, 28 Nov 2023 13:48:03 -0800 (PST)
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-6d7eca548ccso3449624a34.3;
        Tue, 28 Nov 2023 13:48:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701208082; x=1701812882;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tY859mgZuixEXsQXpxoxdofdHWsZ/aGJN72aWxxZ5dQ=;
        b=qXCDnFAZWQAmzBbgOS5s8g6UUc2mCDm/AXW/1mOWdbKPHbVDZwFaIEx+0rr4TzAGR7
         P7K5DIWyXlIr0KfY8KE/HSPkzaixwpzlZSEs+kGSejslAhsOGcx9XJ8zQjP9Y2G9IXkg
         2DJ0lPJVvmbdhWsVG0sscwwred8Rwy35zt//i4fCAyXwZO3X61AjYpD93E5fMlBBN6l8
         9ieWZcW7N0tuKnV7Br/k5+SDAZD0gSgwmea7TL/F48iNA8xPk1rdjI5jMz+d6bLRGth4
         QbVzapp6AadeGJvyfzTmlZp8pjqVxxBSQvA3hFaLGuOkwaOw66DE+uof2sdjdMe0CPAz
         oI/Q==
X-Gm-Message-State: AOJu0YyJSQmC9SgdLKX6F5CHuTi+yiOHsCg29cFAB8Syr9O0TWOhjz4c
	nLInS/j40mcrkJ/8kjbqg6PUORRRbQ==
X-Google-Smtp-Source: AGHT+IG3MhdI/KC/5pcMn9+h7mJSK+hnGWJUirDvj5cEw3pKREm4LBbTIwkWueAPZns7pEIbVfOTuQ==
X-Received: by 2002:a05:6870:248e:b0:1fa:1c89:c656 with SMTP id s14-20020a056870248e00b001fa1c89c656mr14173684oaq.56.1701208082608;
        Tue, 28 Nov 2023 13:48:02 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id z20-20020a056870385400b001fa2823dc13sm1930073oal.0.2023.11.28.13.48.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 13:48:01 -0800 (PST)
Received: (nullmailer pid 3975504 invoked by uid 1000);
	Tue, 28 Nov 2023 21:48:00 -0000
From: Rob Herring <robh@kernel.org>
To: Philipp Zabel <p.zabel@pengutronix.de>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Wei Xu <xuwei5@hisilicon.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: reset: hisilicon,hi3660-reset: Drop providers and consumers from example
Date: Tue, 28 Nov 2023 15:47:58 -0600
Message-ID: <20231128214759.3975428-1-robh@kernel.org>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Binding examples should generally only cover what the binding covers. A
provider binding doesn't need to show consumers and vice-versa. The
hisilicon,hi3660-reset binding example has both, so let's drop them.

This also fixes an undocumented (by schema) compatible warning for
"hisilicon,hi3660-iomcu".

Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../reset/hisilicon,hi3660-reset.yaml         | 25 +------------------
 1 file changed, 1 insertion(+), 24 deletions(-)

diff --git a/Documentation/devicetree/bindings/reset/hisilicon,hi3660-reset.yaml b/Documentation/devicetree/bindings/reset/hisilicon,hi3660-reset.yaml
index cdfcf32c53fa..e4de002d6903 100644
--- a/Documentation/devicetree/bindings/reset/hisilicon,hi3660-reset.yaml
+++ b/Documentation/devicetree/bindings/reset/hisilicon,hi3660-reset.yaml
@@ -50,32 +50,9 @@ additionalProperties: false
 
 examples:
   - |
-    #include <dt-bindings/interrupt-controller/irq.h>
-    #include <dt-bindings/interrupt-controller/arm-gic.h>
-    #include <dt-bindings/clock/hi3660-clock.h>
-
-    iomcu: iomcu@ffd7e000 {
-        compatible = "hisilicon,hi3660-iomcu", "syscon";
-        reg = <0xffd7e000 0x1000>;
-    };
-
-    iomcu_rst: iomcu_rst_controller {
+    iomcu_rst_controller {
         compatible = "hisilicon,hi3660-reset";
         hisilicon,rst-syscon = <&iomcu>;
         #reset-cells = <2>;
     };
-
-    /* Specifying reset lines connected to IP modules */
-    i2c@ffd71000 {
-        compatible = "snps,designware-i2c";
-        reg = <0xffd71000 0x1000>;
-        interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>;
-        #address-cells = <1>;
-        #size-cells = <0>;
-        clock-frequency = <400000>;
-        clocks = <&crg_ctrl HI3660_CLK_GATE_I2C0>;
-        resets = <&iomcu_rst 0x20 3>;
-        pinctrl-names = "default";
-        pinctrl-0 = <&i2c0_pmx_func &i2c0_cfg_func>;
-    };
 ...
-- 
2.42.0


