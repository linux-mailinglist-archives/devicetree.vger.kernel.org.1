Return-Path: <devicetree+bounces-8469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2531D7C8495
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 13:38:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D52BD282CEB
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 11:38:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93BBA13FE6;
	Fri, 13 Oct 2023 11:38:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="nHbmM/vK"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBE8713AE7
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 11:38:13 +0000 (UTC)
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18421EA
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 04:38:11 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-523100882f2so3437767a12.2
        for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 04:38:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1697197089; x=1697801889; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P/sDFt5u6yywO4BpNy8pUfk7EN+/+vD5SZ2loLoo8lA=;
        b=nHbmM/vKpzvkzfMFgwkMLAHL/LKz3fEOgeIXO3ydrrNBLjCLqdODeJh9OYm7r1zw1Q
         f6hk3PTcsOsN4ZaCaw2efXsDp7ygA779oJ3wpexbkFrJztdbgy5+nsP3Dy52+UTBjWrZ
         vdN97vuA+mZY004ibWJPj3yUFRN/1Nd48tqGzGhs7CVj2nRZRWp4F8urLf10ytsOoeOO
         sFYuGr6xGfLMueEKD3qqUsUvDtSiIyRoeTp3mqZXt92FrrgWOkoiB0MbpCnieFn+ldbk
         qKezYgKec+QxBabMRAOnib9J/FemUe0BGrrShnm+sHR1cE2LDsSIY5Et8Y7hXy+CgCCY
         rrMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697197089; x=1697801889;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P/sDFt5u6yywO4BpNy8pUfk7EN+/+vD5SZ2loLoo8lA=;
        b=B7hEBKFHIpPt0J+fxUAxbvaRQUYU4UrbBKIvKyGhvjBQugkkYVqIKcQOZRagDRbKbd
         LVJA+WKE2HKF4h+0A3NAS9N9OGzMannrWh2uCwndmRMZ6psKQtQcCeOPQ9EtP7Mf7UI2
         SfsDvccN98k3oP3i77nn0Bc3q9NvJztqiDE/BPYvUZGCiyl1KWS1Ch2cMAsc61p45zyZ
         G8lztEUBPZwQ3arbMt8TaQTJXmrXm33tAWB+BrYccgWfXfBohDz42JzZoiSIzCRDLzSk
         IW7T93U7XCx8ACK6S5RW1URyI43UqoxF5aEZ2BpF66O08zL4ImF73yG9x6tcfF0WzGFu
         5Eow==
X-Gm-Message-State: AOJu0YxbIPj9rD/nx8/d0BYNhmXwQmclQjkLk8s2l9j0aau5g8y0vAi3
	WcqW9gnf7xPHOiWFsIxU7Bd3asUoopd2i/jrU/8A7w==
X-Google-Smtp-Source: AGHT+IFmR+Da1OD7TXV3vp3gQFMiZH6VvNX+Av8DxmkzVtm5A0bm+pmE9h2RNaAcqybsEUeZvGqIlg==
X-Received: by 2002:a05:6402:1e89:b0:53e:12dd:b9d0 with SMTP id f9-20020a0564021e8900b0053e12ddb9d0mr5236497edf.36.1697197089101;
        Fri, 13 Oct 2023 04:38:09 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id v18-20020aa7d652000000b00533dad8a9c5sm11360772edr.38.2023.10.13.04.38.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Oct 2023 04:38:08 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 13 Oct 2023 13:38:05 +0200
Subject: [PATCH 1/3] dt-bindings: usb: fsa4480: Add data-lanes property to
 endpoint
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231013-fsa4480-swap-v1-1-b877f62046cc@fairphone.com>
References: <20231013-fsa4480-swap-v1-0-b877f62046cc@fairphone.com>
In-Reply-To: <20231013-fsa4480-swap-v1-0-b877f62046cc@fairphone.com>
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
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Allow specifying data-lanes to reverse the SBU muxing orientation where
necessary by the hardware design.

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


