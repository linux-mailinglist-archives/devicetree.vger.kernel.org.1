Return-Path: <devicetree+bounces-10306-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 653657D0BE1
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 11:33:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B385BB21667
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 09:33:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D005313AE9;
	Fri, 20 Oct 2023 09:33:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="zaGWjaxj"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1305D12E77
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 09:33:33 +0000 (UTC)
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 535331992
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 02:33:24 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-9c773ac9b15so32258866b.2
        for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 02:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1697794402; x=1698399202; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NPt+CEIhCocuFEjYEJNPHpjjDpAfwHYTgOkmzxyzoz0=;
        b=zaGWjaxjbEFFV3LGlU1SXBviOittO024w4VisuWiBTKh6M/sf0Gi8iR/x7LTmegJo2
         PxSaDSqcL2SO028gkWNoHF0SM4f6sNNs9hUMGrwDqAz+I2aDzo7BMr+iBnbRBpT+ThBx
         lfx1ZJwPWUSOEKgRMCMDxqcQ4jy3IJ3GS+R/tXTdCMqOd4woPcFPAC6lH2vFj8hSLmxo
         3JHYFNieswSrRRcz3NjKInKALq4e80ZUDqClOkxRn98azUJI1cbqHyNEGkytSAjxMAmz
         7oOdEikDAwcmGR4m9s9pjYbtUUvJa7KbyCL1d57bnCJOSJl4NKIa4Evir24GJ8qqiuu4
         qD6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697794402; x=1698399202;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NPt+CEIhCocuFEjYEJNPHpjjDpAfwHYTgOkmzxyzoz0=;
        b=BZ5MsphvFGAifQ3IRKpNlcBtTiGwlfxSXAbc0YI37OyLobpyGQy3NAefl7dSVjgpv+
         5L0Qz5lahhbdmrCFIn8/qXog6y+DRICNZpdPLbrDHXXVQEo0ntbS3wzEEJ6PaTGxQw+X
         3a5EhKgFTQeNQKCbsQuBJ29OoZxRsR4vFyTZT/TpgObOJsXGN+X7EYHJr0L+sWXtQMqu
         VMMwpnE+rpfDaFCUFfH6jenCUX0Jct/bmTqzhQw3lfKtEZ7WT/OEJNQCTRc7EXHr/szw
         bURYBNFR8o8c+dEyGssV5GyfDb93Jjli3QQaY9tRHdZEbjA/V5FFT0p0CKoyAhFDfQT/
         SdBA==
X-Gm-Message-State: AOJu0YxAAmby2MVgrMWQoZq7aFu0oBUtXV+qGwx20VGK8HYBfQI+xl0n
	4S8BLJPOeHcn73xsPkjstafXUQ==
X-Google-Smtp-Source: AGHT+IGKQwW17Fy4T1BraCaYfTjGgV0tF528AbO3jxsar61meA0nxPsdWi7srJYGCContnpddhZyYQ==
X-Received: by 2002:a17:906:da82:b0:9ad:a4bd:dc67 with SMTP id xh2-20020a170906da8200b009ada4bddc67mr1041118ejb.50.1697794402540;
        Fri, 20 Oct 2023 02:33:22 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (k10064.upc-k.chello.nl. [62.108.10.64])
        by smtp.gmail.com with ESMTPSA id t15-20020a1709066bcf00b009a13fdc139fsm1102535ejs.183.2023.10.20.02.33.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Oct 2023 02:33:22 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 20 Oct 2023 11:33:18 +0200
Subject: [PATCH v2 1/3] dt-bindings: usb: fsa4480: Add data-lanes property
 to endpoint
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231020-fsa4480-swap-v2-1-9a7f9bb59873@fairphone.com>
References: <20231020-fsa4480-swap-v2-0-9a7f9bb59873@fairphone.com>
In-Reply-To: <20231020-fsa4480-swap-v2-0-9a7f9bb59873@fairphone.com>
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.3

Allow specifying data-lanes to reverse the muxing orientation between
AUX+/- and SBU1/2 where necessary by the hardware design.

In the mux there's a switch that needs to be controlled from the OS, and
it either connects AUX+ -> SBU1 and AUX- -> SBU2, or the reverse: AUX+
-> SBU2 and AUX- -> SBU1, depending on the orientation of how the USB-C
connector is plugged in.

With this data-lanes property we can now specify that AUX+ and AUX-
connections are swapped between the SoC and the mux, therefore the OS
needs to consider this and reverse the direction of this switch in the
mux.

_______          _______
      |          |     |
      |-- HP   --|     |
      |-- MIC  --|     |or
SoC   |          | MUX |-- SBU1 --->  To the USB-C
Codec |-- AUX+ --|     |-- SBU2 --->  connected
      |-- AUX- --|     |
______|          |_____|

(thanks to Neil Armstrong for this ASCII art)

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 .../devicetree/bindings/usb/fcs,fsa4480.yaml       | 29 +++++++++++++++++++++-
 1 file changed, 28 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml b/Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml
index f6e7a5c1ff0b..86f6d633c2fb 100644
--- a/Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml
+++ b/Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml
@@ -32,10 +32,37 @@ properties:
     type: boolean
 
   port:
-    $ref: /schemas/graph.yaml#/properties/port
+    $ref: /schemas/graph.yaml#/$defs/port-base
     description:
       A port node to link the FSA4480 to a TypeC controller for the purpose of
       handling altmode muxing and orientation switching.
+    unevaluatedProperties: false
+
+    properties:
+      endpoint:
+        $ref: /schemas/graph.yaml#/$defs/endpoint-base
+        unevaluatedProperties: false
+
+        properties:
+          data-lanes:
+            $ref: /schemas/types.yaml#/definitions/uint32-array
+            description:
+              Specifies how the AUX+/- lines are connected to SBU1/2.
+            oneOf:
+              - items:
+                  - const: 0
+                  - const: 1
+                description: |
+                  Default AUX/SBU layout
+                  - AUX+ connected to SBU2
+                  - AUX- connected to SBU1
+              - items:
+                  - const: 1
+                  - const: 0
+                description: |
+                  Swapped AUX/SBU layout
+                  - AUX+ connected to SBU1
+                  - AUX- connected to SBU2
 
 required:
   - compatible

-- 
2.42.0


