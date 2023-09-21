Return-Path: <devicetree+bounces-2172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C5FF87A9CA9
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:23:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 10163284A32
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:21:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63CF851241;
	Thu, 21 Sep 2023 18:34:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D21065889
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 18:34:23 +0000 (UTC)
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54282DC728;
	Thu, 21 Sep 2023 11:34:19 -0700 (PDT)
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-1c59c40b840so11540625ad.3;
        Thu, 21 Sep 2023 11:34:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695321259; x=1695926059; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bGf/7eKiw4GZy2wkGbtT/YuoGRNiPGyqjAL1OAImvU4=;
        b=c7LhKglQKaBJZG9fUaf2z6LaXdMU/N/5YxruMzwR/8sgJUEkSkMN9UMeFi+XtkFNgn
         5rSZpfw0vj8jy2ub+4+EpDn/DY6lcft2WwG6hxOxgyc8kXjWry7qCZt0J2ttC4m/B4dx
         YzZjxtCFxQo/WM+PpcaibcNjqCjsUWlogbtGIDSS4fHK6dwhPg3L0KXaW5ktFFHgCTfe
         MliIb4KowRjRdtVXJY86nfYa5hmegANCO55PvRq24NQD/PLMIfwk0SAamNDL9PUj3Ll9
         1HZwhl1eNqW/vV6FZv/YvTEoyPQqwtMFwevuwyEDfHnOfSZ/MLZdJJKDy0JEgm/QZpTs
         VS+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695321259; x=1695926059;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bGf/7eKiw4GZy2wkGbtT/YuoGRNiPGyqjAL1OAImvU4=;
        b=mLwtjnWX30Sa1J9wqHlXmWUVsAYPEYtJD+kOeHfC+xuwnHQEdvPV3dtp0V4KOwmaJ5
         lBuN5BIKZiiMbbEBIOx2yrURSmqr6+XooX2WgeMoo10ntoGg80CzDZYhBwi0ZXEdeFJq
         4EP4J6WuxbygN1vRIFPu6ZVYDEA6XjNOWXul6v7X0f/dxbiMrFsutR5isLRHLLUsnYR5
         43hCGSP2BVavzr2FrYeBVsYs6Pfad2wbz1IUAnF/L/sbFL1oVpU1ivdL/vsEeoXWq+TW
         yOEwksDNeUg5WvIrtr9lkP+VDLoWn/JrMf7pcxjtRfPOhIp8xJFF3VTwW1mqiTI7cuAw
         pTag==
X-Gm-Message-State: AOJu0YwzHhWiBoKWBOQf+9H3HV31MK9iaHpY7IDY4Ebe9JImogLjbwZm
	FcEAnzDBFNPCS9MAIOReY44=
X-Google-Smtp-Source: AGHT+IHIURvUvx+ENScmM7CExkX+NBRuXfn7qir3DidtTnofrsT1JNEfob6CFehvv2XfBUELPXBlsg==
X-Received: by 2002:a17:902:7d93:b0:1c5:e00f:2 with SMTP id a19-20020a1709027d9300b001c5e00f0002mr910511plm.28.1695321258605;
        Thu, 21 Sep 2023 11:34:18 -0700 (PDT)
Received: from localhost.localdomain ([122.172.81.113])
        by smtp.gmail.com with ESMTPSA id c3-20020a170902d90300b001bbfa86ca3bsm1844790plz.78.2023.09.21.11.34.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 11:34:18 -0700 (PDT)
From: Bragatheswaran Manickavel <bragathemanick0908@gmail.com>
To: lgirdwood@gmail.com,
	broonie@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: Bragatheswaran Manickavel <bragathemanick0908@gmail.com>,
	alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] ASoC: dt-bindings: tfa9879: Convert to dtschema
Date: Fri, 22 Sep 2023 00:03:13 +0530
Message-Id: <20230921183313.54112-1-bragathemanick0908@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Convert the tfa9879 audio CODEC bindings to DT schema
No error/warning seen when running make dt_binding_check

Signed-off-by: Bragatheswaran Manickavel <bragathemanick0908@gmail.com>

Changes:
V1 -> V2: Fixed DT syntax errors and doc warning
---
 .../bindings/sound/nxp,tfa9879.yaml           | 44 +++++++++++++++++++
 .../devicetree/bindings/sound/tfa9879.txt     | 23 ----------
 MAINTAINERS                                   |  2 +-
 3 files changed, 45 insertions(+), 24 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/nxp,tfa9879.yaml
 delete mode 100644 Documentation/devicetree/bindings/sound/tfa9879.txt

diff --git a/Documentation/devicetree/bindings/sound/nxp,tfa9879.yaml b/Documentation/devicetree/bindings/sound/nxp,tfa9879.yaml
new file mode 100644
index 000000000000..df26248573ad
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/nxp,tfa9879.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/nxp,tfa9879.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP TFA9879 class-D audio amplifier
+
+maintainers:
+  - Peter Rosin <peda@axentia.se>
+
+allOf:
+  - $ref: dai-common.yaml#
+
+properties:
+  compatible:
+    const: nxp,tfa9879
+
+  reg:
+    maxItems: 1
+
+  "#sound-dai-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - '#sound-dai-cells'
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    i2c1 {
+       #address-cells = <1>;
+       #size-cells = <0>;
+       amplifier@6c {
+          compatible = "nxp,tfa9879";
+          reg = <0x6c>;
+          pinctrl-names = "default";
+          pinctrl-0 = <&pinctrl_i2c1>;
+          #sound-dai-cells = <0>;
+       };
+    };
diff --git a/Documentation/devicetree/bindings/sound/tfa9879.txt b/Documentation/devicetree/bindings/sound/tfa9879.txt
deleted file mode 100644
index 1620e6848436..000000000000
--- a/Documentation/devicetree/bindings/sound/tfa9879.txt
+++ /dev/null
@@ -1,23 +0,0 @@
-NXP TFA9879 class-D audio amplifier
-
-Required properties:
-
-- compatible : "nxp,tfa9879"
-
-- reg : the I2C address of the device
-
-- #sound-dai-cells : must be 0.
-
-Example:
-
-&i2c1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c1>;
-
-	amp: amp@6c {
-		#sound-dai-cells = <0>;
-		compatible = "nxp,tfa9879";
-		reg = <0x6c>;
-	};
-};
-
diff --git a/MAINTAINERS b/MAINTAINERS
index a4c30221eb30..569303daf9b4 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15476,7 +15476,7 @@ NXP TFA9879 DRIVER
 M:	Peter Rosin <peda@axentia.se>
 L:	alsa-devel@alsa-project.org (moderated for non-subscribers)
 S:	Maintained
-F:	Documentation/devicetree/bindings/sound/tfa9879.txt
+F:	Documentation/devicetree/bindings/sound/nxp,tfa9879.yaml
 F:	sound/soc/codecs/tfa9879*
 
 NXP-NCI NFC DRIVER
-- 
2.34.1


