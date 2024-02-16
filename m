Return-Path: <devicetree+bounces-42501-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 53143857A00
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 11:11:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E3E9C28246C
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 10:11:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B33F1CD28;
	Fri, 16 Feb 2024 10:10:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="TQvFmFoj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE671CD15
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 10:10:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708078256; cv=none; b=OiTiQSrBoKuQLBw/DVWxqZjpQxX16GZi9F2d7G1TUQCMkmY6a1AttrPD9sfGrwFtmZP0uGS1TDwzla40PcSneyhavg2sTKWNDx3YNjXLayOx5XiTwvWYl/fpT4GEcbusxOr6cU+VAN63OnBw1BBuERNqXfBu2tG+Eiq/XJCDJsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708078256; c=relaxed/simple;
	bh=ibncrYSMoUQ3CoKZDrifhpZ0i3VODGcZmC6xuCZUXbc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=n/tajE5bztYRUmq/kYhL99HI95fHFNtYdbDjSAIFFJ1we/WlDodQescFQH0iXgUe85m1PohYkQOYcMCHbNBHlKXq5CKU+vKdmeHCWz+jDEPAVSkK2+HG5VZzQz0RQ4MH58t3fZlnBU63K5ylf6a2p63/10v6mMFJm1rDlG3E1k0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=TQvFmFoj; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-51197ca63f5so749975e87.1
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 02:10:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1708078252; x=1708683052; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ytAhWz1L3xYxXELaLgaUujOMD+Gva0kVPECBIzo4HAQ=;
        b=TQvFmFojycJeF2Z2j79M23GDp/vPI6XhPa2c2/LCyYN7oEG1a+Dtv8ZMfVoc8iai2u
         MQuQknk8LilwVKYoSM1himwn75nr5j0AOOtNr8biRMlA8MGIyiF2UkbvfOYRC/OqqPTz
         5XzVIstRB4eLQFf1y/p/t6UgDjM3Ve1GdbpD4rbTlbVn4dwbX9S+lZAQnVkMr/ZEPARV
         km/2k5LHCVOb1/SNg5BRrRPpwScyNe2bXAZeXowIyqofODV7I/DVIFDOlXxVFLYHRJvJ
         8HuJm8cSpVXReIipQqCDJsWSHxc5iJ5aUfzdYZcObcblndA8ZSQE/gauFKeb9KOiK/uJ
         uc3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708078252; x=1708683052;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ytAhWz1L3xYxXELaLgaUujOMD+Gva0kVPECBIzo4HAQ=;
        b=d20oD5fNPFN6QhV+3x9JLS9VxZe+vQqQ6Bll2QSTrcBZv4qrpe5EIrzypSof3lybH0
         fRXmTMWCH1IZpgmVO6ZJ0tv9HscOV8DCHR3eN/kPUxX21NoRoAtlIsS9T6/zs0UoAiLP
         FVjk5piYc6ItTp+/oMHhwxKoiaJWTz1dwWvm5V0hHkMYHmhdtnIZGpnaDq32CNEEsYGX
         GGDkvmE9Y9547RYam9/F0jMfHVG9gVnP9bpS+JrSQ16BKL07pQ5bbq53PaGUBeKwRC7V
         UaQPpKLnsIRCb3Krzts4ThdxfMVI5o0xw1rtpOwmTEAp7In9cyuitkLcI5RcNfJxWzon
         9aJQ==
X-Forwarded-Encrypted: i=1; AJvYcCW12DnxjVFL7RkRWQSSmdSHxhjiPfEWQHs8J9J8ChS5HcO/hN+yk0h+sTYq16YUq+gMQoW3PlLnCApT9OqrLTIqJVpaFF8ZC4ND/g==
X-Gm-Message-State: AOJu0Yy8W/wPpDM3qVLlFeN+r0Wj6HhQng9yLuz69be4Ww1eYXfxYjir
	fYZ/rdAhYulrR+EQ89lqEhNlfOaWgyQh146ic/4h+MpDSi/Q0uiQjh+4byfzQ24=
X-Google-Smtp-Source: AGHT+IEVJIPqjDwlWe58ZAZjaPzBTQECJYMTp+kbNtQLru1WjXV8FTBd2JXmb4czZQII9OWQJ0sxpw==
X-Received: by 2002:ac2:4db7:0:b0:511:dc62:7f95 with SMTP id h23-20020ac24db7000000b00511dc627f95mr3369194lfe.15.1708078252249;
        Fri, 16 Feb 2024 02:10:52 -0800 (PST)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id s18-20020a170906169200b00a3d1897ab68sm1398019ejd.113.2024.02.16.02.10.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 02:10:51 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 16 Feb 2024 11:10:48 +0100
Subject: [PATCH v3 1/4] dt-bindings: display: panel: Add Himax HX83112A
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240216-fp4-panel-v3-1-a556e4b79640@fairphone.com>
References: <20240216-fp4-panel-v3-0-a556e4b79640@fairphone.com>
In-Reply-To: <20240216-fp4-panel-v3-0-a556e4b79640@fairphone.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Andy Gross <agross@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.4

Himax HX83112A is a display driver IC used to drive LCD DSI panels.
Describe it and the DJN 9A-3R063-1102B using it.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 .../bindings/display/panel/himax,hx83112a.yaml     | 74 ++++++++++++++++++++++
 1 file changed, 74 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/himax,hx83112a.yaml b/Documentation/devicetree/bindings/display/panel/himax,hx83112a.yaml
new file mode 100644
index 000000000000..174661d13811
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/himax,hx83112a.yaml
@@ -0,0 +1,74 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/himax,hx83112a.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Himax HX83112A-based DSI display panels
+
+maintainers:
+  - Luca Weiss <luca.weiss@fairphone.com>
+
+description:
+  The Himax HX83112A is a generic DSI Panel IC used to control
+  LCD panels.
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    contains:
+      const: djn,9a-3r063-1102b
+
+  vdd1-supply:
+    description: Digital voltage rail
+
+  vsn-supply:
+    description: Positive source voltage rail
+
+  vsp-supply:
+    description: Negative source voltage rail
+
+  reg: true
+  port: true
+
+required:
+  - compatible
+  - reg
+  - reset-gpios
+  - vdd1-supply
+  - vsn-supply
+  - vsp-supply
+  - port
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    dsi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        panel@0 {
+            compatible = "djn,9a-3r063-1102b";
+            reg = <0>;
+
+            backlight = <&pm6150l_wled>;
+            reset-gpios = <&pm6150l_gpios 9 GPIO_ACTIVE_LOW>;
+
+            vdd1-supply = <&vreg_l1e>;
+            vsn-supply = <&pm6150l_lcdb_ncp>;
+            vsp-supply = <&pm6150l_lcdb_ldo>;
+
+            port {
+                panel_in_0: endpoint {
+                    remote-endpoint = <&dsi0_out>;
+                };
+            };
+        };
+    };
+
+...

-- 
2.43.2


