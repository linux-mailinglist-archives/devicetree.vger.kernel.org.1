Return-Path: <devicetree+bounces-84263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B8592BA94
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 15:07:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3E1C528B36C
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 13:07:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 764A116D4FC;
	Tue,  9 Jul 2024 13:05:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PM7nHEnU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ADFB167DB9
	for <devicetree@vger.kernel.org>; Tue,  9 Jul 2024 13:05:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720530357; cv=none; b=NL9uDgl2+y7nCqXN6QLpgCrzAWQS7LQY9ZUgDSVTbOiXSGlaFdbnvkVAE91TtgspwnvlUSRx7JfQdrs3JqkvhYzRSJyd0kAYs6CmEjz+8/F4l7VYQKpJ57wfrXXYidgWKdOkb8+CRpJFxGcYMJvt3zolC5ULCYFqKeiPBCWQhjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720530357; c=relaxed/simple;
	bh=mlSpbyM8SVEH5mQ9NXQsLdRRwy/Rr3F4/HZMYlmQL4g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tevGlE01N+yiYuPzja5VGMWWN1Bz7f6dZHso6T2Y5zg9cff7Ds+Ve06IwROsW8x94CrYJy5mhb4U8HqvKRfplVDcolzNwa+pNqHd74f8RFchuIKpTRRILyaDCw44MdBdDR2MIZcCrVjim0xJEExCLlqZZqLkL+ZSBxMktKjzlrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PM7nHEnU; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2ee77db6f97so70620141fa.2
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2024 06:05:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720530354; x=1721135154; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jbNayVJr9rOaf+AdR4qLuePlMRMX+Lq4+sIWrvY2Hh8=;
        b=PM7nHEnU6FYXYLzinboUHmDuYpwnpMIG3LwBQkn2e9x7SfazrSfIeET+jyKULzNsQD
         +E4WPs6vY58uvZ2nxPaDRLYvWNgonydTg0BdIYFjmejCTjXzFBn26l3BBrIeqeACs7on
         JsBzoMVLS3fT0cS5Tg3Q3naKdnaP0ReZU91Y3bTDHlnzdmdXgxXxhdPjATAgVKEGOTZK
         P6ORtPl83hlahEz8dpB4hQ5fgFcgE/BgkQ+n6DNqLKrb0H1FbXk17eHQAwPIINE+zryN
         a0aR7bDcVskeHhIhP8cBYeaqjG1WsXPmrkgqv93kQCn1J35BXCWwjDM++lJsSupULW4K
         r6QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720530354; x=1721135154;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jbNayVJr9rOaf+AdR4qLuePlMRMX+Lq4+sIWrvY2Hh8=;
        b=d/g5yzLbaorNbm0y+609SbuVoP/2uYPA4n23jFC/AXFY603vfk77hv7+EhDarRlgJc
         W2cFA+wBYN1BSI9KqFpXnyIhi7qlE9CUnlfjgRSN6hUEYOlFvkDJLs6aMgZL00MGSCF9
         vbiAQ7oHFdsuVKTG2KsnJxUdK+G7Y4IpVSUv3J+eKTHMlosyNCVDtVGz8b766cCA/4bD
         oqycyVdSWT2OlIUpU7rsRv/lQygCtsPW+PAwv46BJBB3/DvU5pMHz+7in7vZ7MJGRLHX
         Jr7UI8TilPwK+fddpxjAyZWPs1YiP+OMjzJDTpsOullsuhEMu1K68C/yOITX3UyScKg+
         Z0uQ==
X-Forwarded-Encrypted: i=1; AJvYcCXWeiFdawCRchT99vREzAALNDAvTX2O3Dt7u3h4Y9ZgeHScHDRDhlSz7SpLiQf8+GFEkz921lZWSBUV68xX1g//dv8mGMJlBm/ipQ==
X-Gm-Message-State: AOJu0Yw12dctkQAx6lZisqKGfAZAw3uAPBsm/EdYvOfjX0O5H2Y22hHH
	W21psyJMFO74LTzIz2t2zkU73cdoMgd/LfqL9WhXuvR0FGhq2xC2INBY7PvB9yQ=
X-Google-Smtp-Source: AGHT+IGl2YCvaMbWLiEcR1rhNPaQEVPyNfHiJ7ATMAjObGvX7mk/AYzSbc81HlfG8hyWR4Sowl7AFA==
X-Received: by 2002:a2e:9695:0:b0:2ee:8817:422d with SMTP id 38308e7fff4ca-2eeb30bae90mr22063991fa.5.1720530353700;
        Tue, 09 Jul 2024 06:05:53 -0700 (PDT)
Received: from [127.0.1.1] ([2a0d:e487:133f:fb1b:7fc5:f63a:ac6f:62c6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4266f736939sm40812395e9.37.2024.07.09.06.05.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jul 2024 06:05:53 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 09 Jul 2024 15:05:44 +0200
Subject: [PATCH 1/2] dt-bindings: display: panel: document BOE TV101WUM-LL2
 DSI Display Panel
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240709-topic-sdm450-upstream-tbx605f-panel-v1-1-af473397835d@linaro.org>
References: <20240709-topic-sdm450-upstream-tbx605f-panel-v1-0-af473397835d@linaro.org>
In-Reply-To: <20240709-topic-sdm450-upstream-tbx605f-panel-v1-0-af473397835d@linaro.org>
To: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1959;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=mlSpbyM8SVEH5mQ9NXQsLdRRwy/Rr3F4/HZMYlmQL4g=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmjTWtERwPm9umBBymSswYDO0ZU3Se2jjiICMwZ
 oBmDJPp+QOJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZo01rQAKCRB33NvayMhJ
 0VbiD/wL4P7XuyhVC555StSDLegTWEcPYp1foJY/0cbug6grY8ebtV69kBkENU6e5m5Aag0KsWZ
 sTIjD/25SyEnnIXxz8G3wvrdDouvaICgGdM7A00BXrA9tC39u/1Z2LBYsyY+x2JlG3/uxZK8hPs
 QTaWxgpoILJKvUNaswtKMgDnCrIDPuE8zirH9C8j1FmbsA8E5204T6WjyYHCNYuEkQ1PV9CjxMO
 Ge6ifcWVHDEsliLXaBf/394ue6yMZZVkkqMf3rXCz6emFJVYrkqGuhdKpMhWIFh9F4RPNoTBCGU
 hiRLYOspoMCRhEilJyag3M0KCFHztnR4A0Y362GAnZw1H79Dp/xJl6rtLAb/AmgYEthLiS4VY2k
 DX09yqhO7Wr6D1ecIiT6339I76IONN2fmXbPsb/ol3LxbA0qOWZxgZv25CkZjLoE99PeqeqbH3A
 RlNDN8q9oWUZWzith7Hu4Dn/OsJ5LJmbb1kDixiGcsox1Wunlrbva2MoOo2fW62lZHI91T3a8/d
 SCjXMH9kC9B7nO+DQgRVkzdd60acTSY4d6PuW9dUXmvP/FYsTwFzrVvCklUsmt1zOCteXtSsrIa
 hkdYidmXQpZlm7fA1B7RBrwv5HibyjMhKA+8PgHv6xsPLTMsMPMogZO9barw2R0EcWiM15R/NhZ
 LZmI7p2gtml3M2w==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the 1200x1920 BOE TV101WUM-LL2 DSI Display Panel found
in the Lenovo Smart Tab M10 tablet. The controller is unknown.

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


