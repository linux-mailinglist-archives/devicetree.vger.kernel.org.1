Return-Path: <devicetree+bounces-8472-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C58A77C849B
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 13:38:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 65841B20C07
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 11:38:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42EB71400A;
	Fri, 13 Oct 2023 11:38:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="p7vYmdxC"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B75A913FFF
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 11:38:16 +0000 (UTC)
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 794C0FA
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 04:38:12 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-53e3b8f906fso1123602a12.2
        for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 04:38:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1697197090; x=1697801890; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wBM6ErArjaeuBbIlwBAlMfcfi+6e43gtVVtakkQbEgY=;
        b=p7vYmdxCDJGkllT9nIQpuTbdSATNpXhRuP+D0NJRF2lA8r9fgZ6sgKSEhTKCXgcDHb
         q8eFjPLVdi902nGBPF/+eO8Gmj7fyc+n4fiTfLOm9oXrPCimFdCbKnqu8WrTgPUDRKZ8
         CjDP6gvStlblsBRAxzBXRmjzoJQ4n6paZGAq42p9d35DcDBEEkTy0vcM8zRsF3m9K8Z0
         Zg15AeKOZYaWV4qAoXw+OLEHRuvdoUQr17iRArCTI+y5MmnDJIWGOnnMn8XatkbR20BP
         g2XFtQCImTK/fMqWEP7fXfIq4CUHbKhadvmF7zmOI/kkCS/yQnsE/fLpmk6uaMQgVb1k
         pGUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697197090; x=1697801890;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wBM6ErArjaeuBbIlwBAlMfcfi+6e43gtVVtakkQbEgY=;
        b=UA+uuD97K60V9SwtH9ajUFas66ML/4zm4Qhgm+X7/NIAjzPpg1J9aDqu7QHP6J37bv
         3YfkhoDZqs+K2mKo59dcpSp8CEfEvhMpH7Hgq2ghJGqeajlFVR4fckaUnLkg2Xs2ETuk
         OfWUCxY9vpGFjWkI6TadiYeAec8COk2lA4b06VYvqpWcApVlBf2HLmnpsbY0RpZkWaOX
         JaojEMjzKLkYwPgaQ7uCVdXG/OMmTqNW6F7J23dowtBtx8EM1AP8jMLX1df5r72mLRD6
         at+oyNoRvZAWBaFvJ930NGAHNrQ02CUH4WIN8D2K5JERvUEA8KjIU9TmolbKeCLoDmYa
         xoKw==
X-Gm-Message-State: AOJu0Yytqi9II6YtXdog1/FYVOOzKzG8agPxwZlQJ/jt4xsoL5GWxYri
	YchCLyh5lkFW6CofFm11qaWMqw0gGP/l8BjyL1NiBw==
X-Google-Smtp-Source: AGHT+IFIQuOTBqkA/VtH+UNyX6Cij89eBw9xBU+Q+5BAlaKmA2QqSgfIirC7HlPFaFtT4FrqCHvdDg==
X-Received: by 2002:a05:6402:524b:b0:53e:2409:d6f3 with SMTP id t11-20020a056402524b00b0053e2409d6f3mr693039edd.6.1697197090667;
        Fri, 13 Oct 2023 04:38:10 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id v18-20020aa7d652000000b00533dad8a9c5sm11360772edr.38.2023.10.13.04.38.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Oct 2023 04:38:10 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 13 Oct 2023 13:38:07 +0200
Subject: [PATCH 3/3] dt-bindings: usb: fsa4480: Add compatible for OCP96011
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231013-fsa4480-swap-v1-3-b877f62046cc@fairphone.com>
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

The Orient-Chip OCP96011 is generally compatible with the FSA4480, add a
compatible for it with the fallback on fsa4480.

However the AUX/SBU connections are expected to be swapped compared to
FSA4480, so document this in the data-lanes description.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml b/Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml
index 86f6d633c2fb..f9410eb76a62 100644
--- a/Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml
+++ b/Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml
@@ -11,8 +11,12 @@ maintainers:
 
 properties:
   compatible:
-    enum:
-      - fcs,fsa4480
+    oneOf:
+      - const: fcs,fsa4480
+      - items:
+          - enum:
+              - ocs,ocp96011
+          - const: fcs,fsa4480
 
   reg:
     maxItems: 1
@@ -53,16 +57,22 @@ properties:
                   - const: 0
                   - const: 1
                 description: |
-                  Default AUX/SBU layout
+                  Default AUX/SBU layout (FSA4480)
                   - AUX+ connected to SBU2
                   - AUX- connected to SBU1
+                  Default AUX/SBU layout (OCP96011)
+                  - AUX+ connected to SBU1
+                  - AUX- connected to SBU2
               - items:
                   - const: 1
                   - const: 0
                 description: |
-                  Swapped AUX/SBU layout
+                  Swapped AUX/SBU layout (FSA4480)
                   - AUX+ connected to SBU1
                   - AUX- connected to SBU2
+                  Swapped AUX/SBU layout (OCP96011)
+                  - AUX+ connected to SBU2
+                  - AUX- connected to SBU1
 
 required:
   - compatible

-- 
2.42.0


