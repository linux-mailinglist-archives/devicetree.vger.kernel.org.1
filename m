Return-Path: <devicetree+bounces-10308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB037D0BE6
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 11:33:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 308711C20FE8
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 09:33:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 653B013FF9;
	Fri, 20 Oct 2023 09:33:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="aBYf6lF9"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520D113FE0
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 09:33:43 +0000 (UTC)
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEC4F1BC5
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 02:33:28 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-9c773ac9b15so32263566b.2
        for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 02:33:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1697794404; x=1698399204; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wBM6ErArjaeuBbIlwBAlMfcfi+6e43gtVVtakkQbEgY=;
        b=aBYf6lF9OSoYYDPCHhRiksf2aJVMbKAK+E69a1WdAN9bnaaEF2vOud7VRVAQScOcna
         6CoYbcm+aCLtPOhj0aqPuc+yTpwpjrjFDptuxwPcrECww+bGFiirr1ua/4SVesOU4mnl
         tQvt7tLPg5AuVLyLc2JYLDwZvlo5RIblVG4YDfy/6sI/8Scq6htvmmyXwqsinRnCy3Ys
         IHGXUDg31gx65gHdLLqHO2Is1MaOSkrp5ZfMRSPk8yfrY84AHVZBROpoKScHxJylCUMj
         Bz0ywNAd7vmBE0S44ERwaS+akUeITa8Q+02bzzlIeNppdyArdQSG75KpP6V0E3hYutsX
         fJ1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697794404; x=1698399204;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wBM6ErArjaeuBbIlwBAlMfcfi+6e43gtVVtakkQbEgY=;
        b=cjCr1Hv7feKg927dkSVZl/M6XAremmHngVKAxtpuzI1/yAS6K+bLmHHWbfu2doQ0dO
         Tcw7j4LjAYm4Cw/fD4hP7o43NzcMJQ2ZMygOB/RSrgzI+nBvnWAkvYoZZeje92N/VocK
         SzkmUTqqFmutEAzDV3X8+MpJrXlo02zI17/aBX7btJAjCM/ej+mtKERL0jUA0rMGg/Vz
         sjk3RC7CcDKdQJe1N+dAJ6dXBP7gZXREKVTSCvg6VeZUAznyB/4vlAJau73C7BWdugZB
         /2jbEqbIIRf1FqHqBEuvBOjvxNwD/+x6v6Z/HM336dt5XTih1ItiGVcQ595amJd5MXzq
         yArw==
X-Gm-Message-State: AOJu0YwvwRPssUQdfsmFFbpKgie/PwVqE3NEsDvZmh87kXpKjCauVnct
	VF+UEDhQIrlDyVPCalSlrZHWwg==
X-Google-Smtp-Source: AGHT+IEmwTBub4TTdlz1jMLWOrqXIJ66kAQDBOiG76tfqbcR00lkfhKrg/qt9xMsw3VGkkS/X7RPHA==
X-Received: by 2002:a17:907:786:b0:9c4:41c9:6ac6 with SMTP id xd6-20020a170907078600b009c441c96ac6mr1006182ejb.33.1697794404139;
        Fri, 20 Oct 2023 02:33:24 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (k10064.upc-k.chello.nl. [62.108.10.64])
        by smtp.gmail.com with ESMTPSA id t15-20020a1709066bcf00b009a13fdc139fsm1102535ejs.183.2023.10.20.02.33.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Oct 2023 02:33:23 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 20 Oct 2023 11:33:20 +0200
Subject: [PATCH v2 3/3] dt-bindings: usb: fsa4480: Add compatible for
 OCP96011
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231020-fsa4480-swap-v2-3-9a7f9bb59873@fairphone.com>
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


