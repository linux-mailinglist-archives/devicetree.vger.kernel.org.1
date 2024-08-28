Return-Path: <devicetree+bounces-97434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5802E96234D
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 11:23:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BE73C1F23676
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 09:22:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0683161321;
	Wed, 28 Aug 2024 09:22:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cx3AOLhX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 058DD15B10C
	for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 09:22:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724836972; cv=none; b=c98eEBbje9ZK2axbqA4PxhvaFsdiuI30bIAHPKgasXHwGGkUgKvZxSuZDh42+LuzJpkN0ne5CHfckuHOG8SZzHYB/c4Fu37IkHFp2FSlBvCpTBZIQSFJmhJJCtQbpKPvQ/DlI3kCkOp8MXezbY+S9A//Ti9m1R4Rcc9DumoKle4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724836972; c=relaxed/simple;
	bh=Zo7rD7LhsqXVWI1DlfMsF/Q1UaOY4RkLnQpyLGe4S4Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=E0i9ROkrDvZEiuzGEmdtaAV7MP2Nsi6T9kO3ZvVF6op3WSHBET/OcI0nvP0MMvrqCVy1gY7FcNNC24mb4z3BYBcSmEtXuqob3HHovpetvYxPvPazUtBb2cfkyLDu91X9J7x9l6dMybq3r1tcwOv+Ugrzp51jhnFJCQnNWSDlC+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cx3AOLhX; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-428fb103724so2137675e9.1
        for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 02:22:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724836969; x=1725441769; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EfpPLPQgSBuRiuoslnQqHCmedaNEg3K6zxnI4WC0qco=;
        b=cx3AOLhX6U1QQIVyFDz0Cp4lETpma3R7WtNZKzM5WMnELCtCkzrGHdB3eLK9diY0L0
         USbezNSsLtSsiAidul5j/hVk7QFE7gNgzPjkE1IGQruRfMibOKOp2fvqVeG/mRAjKBSq
         WEWv5frqib34jWXaYa6X0iXx+uMZMkCaxa7yt1kHZWyv+B32PrtI7VkXGHim9QxYB4F1
         UJRSA0w15JNEEaFhmsW68m6hdKEgB/cgQ7KKg5iqxmOIZWnt1FpzoRmQ4dwQe4XFh9Hy
         paCTHB2conOGiF4mTSz1U9Ia20rfjNJVNWM3NS0lARROmBM1w/gNIxhqXU578PX98Ae9
         I3KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724836969; x=1725441769;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EfpPLPQgSBuRiuoslnQqHCmedaNEg3K6zxnI4WC0qco=;
        b=vGAF9aFY6Nz1toFj6GVdrZyrReby40VImZg2Y3Bf6HhephWWCTXMILsCUYEVZLlkKy
         QoM1+NwXNA7UopcOB5YXzmhWioBsWNwaohlLA5MZN8vPXyJwmctse6vNZLB14W7oPShI
         0VM2eFoVlIc3kYvAWRWQBpeev0DQrYlnUTZ6Pt809qqU5BnPQVPuyvJUr1T5qKyqNazh
         bQ8J8CH4tUEuUQLrEto4yc3rptEu1CXuidn+ypvTwPHCxtbFofTYSjPGVyqIQUhkJ63f
         xGXnElNk0amplBFPTFaBrwnbcdAoqQWxPLyPB+icO3zpfGA+Y1Hx7IhPQIde3cu2PqJM
         krQA==
X-Forwarded-Encrypted: i=1; AJvYcCXmcLMwQhWhwDjDawOWGa43mwg28IZ/DcCkUTsMNhnOioKHyyLD5xpd1zWBjtTkv7E+dEHhi30I3clf@vger.kernel.org
X-Gm-Message-State: AOJu0YwrM1WZlnui9MJxKezVinh9dfj/fLWBXAfSuueAyxOpe6Qrq4xG
	g9H3gis2gvin1lLnYKkbLQbNTy/4zGP0nV3a/MugJOPcCLQCT0AluHLHTUxTNC2NIzAs5sft9Af
	g
X-Google-Smtp-Source: AGHT+IHwi+uwVs5DR+MY8eZvorejySpiOuQ/4Y3KJHIrzaamfzZd0EgHKd7i+rD5u4AI7BnsYvchYQ==
X-Received: by 2002:a05:600c:3b92:b0:42a:a749:e6 with SMTP id 5b1f17b1804b1-42ba56b8683mr9613415e9.10.1724836968890;
        Wed, 28 Aug 2024 02:22:48 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42ba639687csm15002435e9.8.2024.08.28.02.22.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2024 02:22:48 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 28 Aug 2024 11:22:40 +0200
Subject: [PATCH v2 1/2] dt-bindings: display: panel: document BOE
 TV101WUM-LL2 DSI Display Panel
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240828-topic-sdm450-upstream-tbx605f-panel-v2-1-0a039d064e13@linaro.org>
References: <20240828-topic-sdm450-upstream-tbx605f-panel-v2-0-0a039d064e13@linaro.org>
In-Reply-To: <20240828-topic-sdm450-upstream-tbx605f-panel-v2-0-0a039d064e13@linaro.org>
To: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Doug Anderson <dianders@chromium.org>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2015;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=Zo7rD7LhsqXVWI1DlfMsF/Q1UaOY4RkLnQpyLGe4S4Y=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmzuxmRsyxXpFr1oHBkhtXrTwGfnTvuk1dnEZb9tiI
 iIa3VUWJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZs7sZgAKCRB33NvayMhJ0XhbEA
 C94nYloVsHo1X7imNWfAntDEUWB7OUc+4Yr+KkqspgD8gDzKcHAkCjlCEIuuUAgY7B1jXXOmmQUCv2
 jBKZsOXEWAPaoyEfqLMxoJAAfsLC/iwZLvgBCELF/lxIRI+rW8nJvIrhcFa7/KgiXjK8UlhPolnWYW
 kU6wrBrnivdGnvWYfN38XokqcMrV30pfvAiIwyIQ9ws+Jfy/YcLPHaczScY5Ij5Akt/2kCVNNBHwil
 eJu6Yzqq+sgJCa2ArNQT/pVFd2+vDXM1BYQNx+HcWDvdh+25XlRZOevRIX5hXQ9WJvxBTNcC/kYv+v
 bT/KcJynKg8AcXVaLoYjlLjDcics2jfpR7R5pilYeSznL9Dg9ishKN1jipvfxl72BSxHFGtxGdByWT
 ZlDpRkIAGPgBpgh+Zxn6I8qucSzamFuTwGgXXHsHnsW1LkTkR7i/qF8J/FTj72gAIPY6EVOKecjUx3
 /4S5fbm7ceFMPLHJPTsONlDgrZRjBjZkDFR/7KBTH0ZTFlJP529+GpDH6trGqycG/9Cgwt1Nzp+G4k
 KNYvBfNCBjAHf03Ut7/hazETcSzAu/aH5nsoZmCIRGfvzwOiWp7TC7PxyfZBaHGJ6nDDM8Z0DCQxtD
 LFY5cTAxTo8kuuAIstuBb07c7ZSoZGWYstGiOP57rUKHG9KZMXNY24BwzBeg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the 1200x1920 BOE TV101WUM-LL2 DSI Display Panel found
in the Lenovo Smart Tab M10 tablet. The controller is unknown.

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../bindings/display/panel/boe,tv101wum-ll2.yaml   | 63 ++++++++++++++++++++++
 1 file changed, 63 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/boe,tv101wum-ll2.yaml b/Documentation/devicetree/bindings/display/panel/boe,tv101wum-ll2.yaml
new file mode 100644
index 000000000000..dced98e1c69a
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/boe,tv101wum-ll2.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/boe,tv101wum-ll2.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: BOE TV101WUM-LL2 DSI Display Panel
+
+maintainers:
+  - Neil Armstrong <neil.armstrong@linaro.org>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: boe,tv101wum-ll2
+
+  reg:
+    maxItems: 1
+    description: DSI virtual channel
+
+  backlight: true
+  reset-gpios: true
+  vsp-supply: true
+  vsn-supply: true
+  port: true
+  rotation: true
+
+required:
+  - compatible
+  - reg
+  - reset-gpios
+  - vsp-supply
+  - vsn-supply
+  - port
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    dsi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        panel@0 {
+            compatible = "boe,tv101wum-ll2";
+            reg = <0>;
+
+            vsn-supply = <&vsn_lcd>;
+            vsp-supply = <&vsp_lcd>;
+
+            reset-gpios = <&pio 45 GPIO_ACTIVE_LOW>;
+
+            port {
+                panel_in: endpoint {
+                    remote-endpoint = <&dsi_out>;
+                };
+            };
+        };
+    };
+
+...

-- 
2.34.1


