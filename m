Return-Path: <devicetree+bounces-1434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B0647A638C
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 14:46:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 44A01281807
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 12:46:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2D8237C9B;
	Tue, 19 Sep 2023 12:46:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85EF646A3
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 12:46:15 +0000 (UTC)
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7C80E3
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 05:46:10 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-502a4f33440so9174074e87.1
        for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 05:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1695127568; x=1695732368; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7fWFiq2Z3kzEyU88O2c9+i0+0nk8+Hu7Vs+xo2WgRZY=;
        b=0qu5Ts8zT7BUKq+V4tf8qNL+Uamsn0u4PCcd/SdXWT66uBOofC56VEyRBtviIASGBt
         Fri7YsQnAta4i68K5lR9fRr86BuIsSfJjVuz2LD5/l0QM8X8ZXzfvEBXMujWlx1la7cW
         qvFI+xYOAX523nh/J32xpYNYTPdY5PnFU7yIQTDhjfHQ/shfG2rJVuWdVMt/fv+aZzen
         dNqp1ckCWBw8IbGaB+GzaXRAUBVt6a2N/2nVSMMLKaIdVSpjd7HlWynoRZ921MSAH/W9
         AyvWhlToFeX598Mks+iZGC9GadgNcHgQ2HtHEflgKgosd2gCtyU1L6euO/c6TTajnQRi
         eWrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695127568; x=1695732368;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7fWFiq2Z3kzEyU88O2c9+i0+0nk8+Hu7Vs+xo2WgRZY=;
        b=xRYtpjzky/48tfE0SGySYH77fQ2PBN1y538jSYR1GpUGxRMb1cXJmoiuGlOkweCEDJ
         bZ8MFQALC5zrBL5BLjVR3II6y/QDqRTCwuL84HnSdEjazOWwQVFKiTWI8Dt0+xtFqf8X
         4JI95isU4WuSssswI5VtA8y1EDqFMmLqeyoMrRaUCN15MgCTDnrqAgvN3kh+javzdx2f
         K4BzaEZdM16lcILoKVMPvV7g4ogYaG5ZYt6CMROEs3mYoVVDiMIiesV3KLXu4PWmTBwn
         5fuW0RF2h6vpYdLkBwcwEa2B54tfzXWN8NdZWiWvS/Vfu9aOD66GDTYdLXT0srouAA1+
         XG3w==
X-Gm-Message-State: AOJu0YzZa2A/Hb925in+lPDLKRBO/OPjFlb13m0ZdCJrOLb+ojcU/at/
	TUpyj1J2Xf5e90fQc4jf3qjiqg==
X-Google-Smtp-Source: AGHT+IGZklR6vmwx+I1m2TYBs5iOwsPLRBe+Obf/CId5PwS12y8h+KZFNQQ9tDvt0rDzC8/Y2ewakQ==
X-Received: by 2002:a05:6512:31cd:b0:503:1722:bf3a with SMTP id j13-20020a05651231cd00b005031722bf3amr5986480lfe.1.1695127568502;
        Tue, 19 Sep 2023 05:46:08 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (static-212-193-78-212.thenetworkfactory.nl. [212.78.193.212])
        by smtp.gmail.com with ESMTPSA id dn22-20020a05640222f600b00532c1dfe8ecsm635878edb.66.2023.09.19.05.46.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Sep 2023 05:46:08 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Tue, 19 Sep 2023 14:46:00 +0200
Subject: [PATCH v2 6/7] dt-bindings: arm: qcom: Add QCM6490 Fairphone 5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230919-fp5-initial-v2-6-14bb7cedadf5@fairphone.com>
References: <20230919-fp5-initial-v2-0-14bb7cedadf5@fairphone.com>
In-Reply-To: <20230919-fp5-initial-v2-0-14bb7cedadf5@fairphone.com>
To: cros-qcom-dts-watchers@chromium.org, Andy Gross <agross@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Viresh Kumar <viresh.kumar@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
 linux-pm@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Fairphone 5 is a smartphone based on the QCM6490 SoC.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index adbfaea32343..76934f4772e9 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -50,6 +50,7 @@ description: |
         msm8998
         qcs404
         qcm2290
+        qcm6490
         qdu1000
         qrb2210
         qrb4210
@@ -391,6 +392,11 @@ properties:
           - const: qcom,qrb2210
           - const: qcom,qcm2290
 
+      - items:
+          - enum:
+              - fairphone,fp5
+          - const: qcom,qcm6490
+
       - description: Qualcomm Technologies, Inc. Distributed Unit 1000 platform
         items:
           - enum:

-- 
2.42.0


