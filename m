Return-Path: <devicetree+bounces-14065-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C74137E1E69
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 11:33:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 687C6B20EF1
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 10:33:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E1F4156D4;
	Mon,  6 Nov 2023 10:33:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="mwewnK/A"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF26118049
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 10:33:25 +0000 (UTC)
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB1E8125
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 02:33:22 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-32dc918d454so2577010f8f.2
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 02:33:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1699266801; x=1699871601; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CBQ+A9rHpTWs3KpXp33WW8nDFpcoA+H+EybbPKfpqLY=;
        b=mwewnK/A2XA9c0ngLeYhwiW8sP/L5Jn6gGMZu9z4WhW5l4JvgmqLJmUJa4jE+UDncx
         aPEvvC0X/nvEulsZNlRRQBhiHdSRVOXzeSOpukfKJq6bMBNHJDpXfjGa0rBglhznMGX8
         GDdggr9FcyWuDbQm5q6bAVWPuG5xQxGcDCNaHBcE4Ft7M5y+t4M1+HB46/m0+vlNViDp
         KcyDorut+PRC91zhqaOyrzw0ld2tFMShvNG3Qt/SOWIoYUS9n6gZQG2sw9xcU76ttefQ
         uC7oF4F9MovIltpNMAaY4foIP0msnbifeA1EM3enirNJsMkH2DRvRj/0sgQS2KQKtoys
         1/OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699266801; x=1699871601;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CBQ+A9rHpTWs3KpXp33WW8nDFpcoA+H+EybbPKfpqLY=;
        b=xSvTtqp9XfpUUDa3SyuTAvsBZ4GXTR5X7KshWQ9LPGkJNoMUajKVzzmznIGsbJfjyC
         Yn/dLuw+fQhJ8OhZRNPEEI4G6EHuE9PtReyGxdxk0dFFofq+Tt9e1uFABmHhzqeAbx6v
         259igQ+h/QE0vyfh/EEQMveVJsSo/raX50EJf/2yt3R8MG13dHf3wPEJ7Mglxtuocntw
         dX/zZnNdIW8QtQc2XycDE0xiwEk1pAeHdS7ZfEEY9wUbKeE+DWgSr1qlP72HJYjcgqdT
         wR9iYz5o0hFSEr4stIatmNCP4/ewax5I83+PQTvTimZ23klUPd4OXiCt/L0dx7sauRwD
         +Bpw==
X-Gm-Message-State: AOJu0Yx7i+c1x6iuQd9RW+8WLgjrnVhMgOev6hys1aciOBKdd9GY2CEf
	Wxsz/1NT2KE27Df/AZ5CYWmsUw==
X-Google-Smtp-Source: AGHT+IHcMPiY4o25MgzGfKk9Wcu81DblqKFjLfX/laBmvungFxUJ0K81n8g5LnJVDzF1XKHmm4zZPA==
X-Received: by 2002:adf:ecd0:0:b0:32d:a717:717a with SMTP id s16-20020adfecd0000000b0032da717717amr18098713wro.40.1699266801294;
        Mon, 06 Nov 2023 02:33:21 -0800 (PST)
Received: from toaster.lan ([2a01:e0a:3c5:5fb1:fabf:ec8c:b644:5d3])
        by smtp.googlemail.com with ESMTPSA id d1-20020a056000114100b0032415213a6fsm9033602wrx.87.2023.11.06.02.33.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Nov 2023 02:33:21 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Thierry Reding <thierry.reding@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Jerome Brunet <jbrunet@baylibre.com>,
	Kevin Hilman <khilman@baylibre.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-amlogic@lists.infradead.org,
	linux-pwm@vger.kernel.org,
	JunYi Zhao <junyi.zhao@amlogic.com>
Subject: [PATCH 2/6] dt-bindings: pwm: amlogic: add new compatible for meson8 pwm type
Date: Mon,  6 Nov 2023 11:32:49 +0100
Message-ID: <20231106103259.703417-3-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231106103259.703417-1-jbrunet@baylibre.com>
References: <20231106103259.703417-1-jbrunet@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit

Add a new compatible for the pwm found in the meson8 to sm1 Amlogic SoCs.

The previous clock bindings for these SoCs described the driver and not the
HW itself. The clock provided was used to set the parent of the input clock
mux among the possible parents hard-coded in the driver.

The new bindings allows to describe the actual clock inputs of the PWM in
DT, like most bindings do, instead of relying of hard-coded data.

The new bindings make the old one deprecated.

There is enough experience on this HW to know that the PWM is exactly the
same all the supported SoCs. There is no need for a per-SoC compatible.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 .../devicetree/bindings/pwm/pwm-amlogic.yaml  | 35 +++++++++++++++++--
 1 file changed, 33 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pwm/pwm-amlogic.yaml b/Documentation/devicetree/bindings/pwm/pwm-amlogic.yaml
index 754b70fc2db0..3aa522c4cae4 100644
--- a/Documentation/devicetree/bindings/pwm/pwm-amlogic.yaml
+++ b/Documentation/devicetree/bindings/pwm/pwm-amlogic.yaml
@@ -22,6 +22,7 @@ properties:
           - amlogic,meson-g12a-ao-pwm-ab
           - amlogic,meson-g12a-ao-pwm-cd
           - amlogic,meson-s4-pwm
+          - amlogic,meson8-pwm-v2
       - items:
           - const: amlogic,meson-gx-pwm
           - const: amlogic,meson-gxbb-pwm
@@ -37,7 +38,7 @@ properties:
 
   clocks:
     minItems: 1
-    maxItems: 2
+    maxItems: 4
 
   clock-names:
     minItems: 1
@@ -70,11 +71,14 @@ allOf:
               - amlogic,meson-gx-pwm
               - amlogic,meson-gx-ao-pwm
     then:
-      # Historic bindings tied to the driver implementation
+      # Obsolete historic bindings tied to the driver implementation
       # The clocks provided here are meant to be matched with the input
       # known (hard-coded) in the driver and used to select pwm clock
       # source. Currently, the linux driver ignores this.
+      deprecated: true
       properties:
+        clocks:
+          maxItems: 2
         clock-names:
           oneOf:
             - items:
@@ -83,6 +87,26 @@ allOf:
                 - const: clkin0
                 - const: clkin1
 
+  # Newer binding where clock describe the actual clock inputs of the pwm
+  # block. These are necessary but some inputs may be grounded.
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - amlogic,meson8b-pwm-v2
+    then:
+      properties:
+        clocks:
+          minItems: 1
+          items:
+            - description: input clock 0 of the pwm block
+            - description: input clock 1 of the pwm block
+            - description: input clock 2 of the pwm block
+            - description: input clock 3 of the pwm block
+      required:
+        - clocks
+
   # Newer IP block take a single input per channel, instead of 4 inputs
   # for both channels
   - if:
@@ -111,6 +135,13 @@ examples:
       clock-names = "clkin0", "clkin1";
       #pwm-cells = <3>;
     };
+  - |
+    pwm@2000 {
+      compatible = "amlogic,meson8-pwm-v2";
+      reg = <0x1000 0x10>;
+      clocks = <&xtal>, <0>, <&fdiv4>, <&fdiv5>;
+      #pwm-cells = <3>;
+    };
   - |
     pwm@1000 {
       compatible = "amlogic,meson-s4-pwm";
-- 
2.42.0


