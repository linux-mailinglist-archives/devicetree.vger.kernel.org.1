Return-Path: <devicetree+bounces-35501-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F2583D952
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 12:30:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ED64F28B0DA
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 11:30:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1775914288;
	Fri, 26 Jan 2024 11:30:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="Iv99MF2k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A5514273
	for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 11:29:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706268600; cv=none; b=PGfy2rRDDB7wuxNhsZD6dnwL5KGqTv/6U++q8nKwiQxato7nzYHIyXrYbibUiufrm5RxdufjrLlupIfCgnYGbNV4jRvNvmIGBbu9fMcjJcfJveUDHYOmX47KP6+l0eGcRUJuw76BjaI5/+rqVqFOBAhQxMca+rwLCKbiYwB6v/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706268600; c=relaxed/simple;
	bh=kk8TW/ENv6T0jmFy9Fe2+TbD0NwhTcZRKCATFbVXU5Q=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=V2QuLkMjnpZKA3vD2AILKLGkqC5+1kByeMy5ZEJ8rc7g/BLxqkGL4HLz7303E5B0JB5QV/zoi+XRVQdqiaBf/f49Fy3bSlP5wmdVz3+dZ5zqdmNpAj6bmA3lkCPpNgC7kkDqWIhJc0Ur4sEV5zHCQJLJQ0KHbZ/l9hmBtBAwFQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=Iv99MF2k; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-40e913e3f03so3871685e9.3
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 03:29:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1706268596; x=1706873396; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4MpsuS1RISyLieZhG+nOiB9EUsr5IB8MOc8CVenn3tg=;
        b=Iv99MF2kSSEJGJY2SZq2G/qhZ0/3ytHYOkTRoy7bzw7AkwjNpKKDqfMGQNonCVsA2X
         RqdrvIfrbei+JIgmhpGt8y+ctkgE6mOpx7iA3VDOrH8M5pph3NGH9woIVbC1bAculiBw
         rX9Tlhs6NW4fnNmzXcLeGP1kA1/x2/0o83h3nHrhkLnh6W4Fpf9KTuxbkFb7dUQG8FpK
         qBXrWHV4pM0kqK30Sq8SeFSAg3lG96cvpqysCXRIQt8htqlWcGPR55MR4GqyOUr6IQSq
         Oa53djDYl4mCUwwNOL+b82DtaQh8gjTkx0OUiys+J+knfr/HpEOGAAsN8Hp6+A/Nciv/
         BFIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706268596; x=1706873396;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4MpsuS1RISyLieZhG+nOiB9EUsr5IB8MOc8CVenn3tg=;
        b=GAXqPAMrp9FOp80eMgr9D3FFnVzUbUdzG0/z8sx5NmPcBjat0LfYS2hSZbN6JBP+qC
         ELpkheTKEnU6y59pP2kPEJwv7zq6/UvRAkFTxdj/YOXCW+4x3AfSI5ECVgNBBT9o5VPq
         KfT3E3YiRGJNBuyYi0aHHYyYmbzAYmH0AArMfMzr50XsXPy6pKXSFawgVnsGI++56U55
         v9Q+WuDMCmcMLIzGxDnp4h+s15nTIgd4Hj4le/9hMYosS186va1CfV3cSIja6OFHaef+
         EbMY5Lm5JUAeaBtymZ74PT8dCZUyQ4UMmNQgE4rs9YsZmnX5cm0H/M9jJiBx1oNzd2lD
         VDuQ==
X-Gm-Message-State: AOJu0YzI7OL09BrG3FZ3XWmKPWVxLigAr7npQOKZFsFQ3g3DIHdK8H1m
	mcXhTaQHBVSVbHKkuT8Sa9oOXXsX5+QDSHUx6iY1q2osj5p0z47v5VeF7GJWFTKtlhNna4fbXux
	R5dM=
X-Google-Smtp-Source: AGHT+IFZgFs4WF2KSb72kcILtaARumCAGosfYJuXqhmjqYlE1W8oA4FFNJfIo+it28R8yLf/Ude3eg==
X-Received: by 2002:a05:600c:5247:b0:40e:44ad:4645 with SMTP id fc7-20020a05600c524700b0040e44ad4645mr810415wmb.3.1706268596440;
        Fri, 26 Jan 2024 03:29:56 -0800 (PST)
Received: from stroh80.sec.9e.network (ip-078-094-000-051.um19.pools.vodafone-ip.de. [78.94.0.51])
        by smtp.gmail.com with ESMTPSA id p13-20020a05600c468d00b0040eaebc4e8fsm5523313wmo.1.2024.01.26.03.29.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 03:29:56 -0800 (PST)
From: Naresh Solanki <naresh.solanki@9elements.com>
To: Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Naresh Solanki <naresh.solanki@9elements.com>
Cc: mazziesaccount@gmail.com,
	linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: hwmon: tda38640: Add interrupt & regulator properties
Date: Fri, 26 Jan 2024 16:59:44 +0530
Message-ID: <20240126112945.1389573-1-naresh.solanki@9elements.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add properties for interrupt & regulator.
Also update example.

TEST=Run below command & make sure there is no error.
make DT_CHECKER_FLAGS=-m dt_binding_check

Signed-off-by: Naresh Solanki <naresh.solanki@9elements.com>
---
 .../hwmon/pmbus/infineon,tda38640.yaml        | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/Documentation/devicetree/bindings/hwmon/pmbus/infineon,tda38640.yaml b/Documentation/devicetree/bindings/hwmon/pmbus/infineon,tda38640.yaml
index ded1c115764b..2df625a8b514 100644
--- a/Documentation/devicetree/bindings/hwmon/pmbus/infineon,tda38640.yaml
+++ b/Documentation/devicetree/bindings/hwmon/pmbus/infineon,tda38640.yaml
@@ -30,6 +30,15 @@ properties:
       unconnected(has internal pull-down).
     type: boolean
 
+  interrupts:
+    maxItems: 1
+
+  regulators:
+    $ref: /schemas/regulator/regulator.yaml#
+    type: object
+    description: |
+      list of regulators provided by this controller.
+
 required:
   - compatible
   - reg
@@ -38,6 +47,7 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/interrupt-controller/irq.h>
     i2c {
         #address-cells = <1>;
         #size-cells = <0>;
@@ -45,5 +55,15 @@ examples:
         tda38640@40 {
             compatible = "infineon,tda38640";
             reg = <0x40>;
+
+            //interrupt-parent = <&smb_pex_cpu0_event>;
+            interrupts = <10 IRQ_TYPE_LEVEL_LOW>;
+            regulators {
+                pvnn_main_cpu0: vout0 {
+                    regulator-compatible = "vout0";
+                    regulator-name = "pvnn_main_cpu0";
+                    regulator-enable-ramp-delay = <200>;
+                };
+            };
         };
     };

base-commit: ecb1b8288dc7ccbdcb3b9df005fa1c0e0c0388a7
-- 
2.42.0


