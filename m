Return-Path: <devicetree+bounces-15287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 848737E983A
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 09:56:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 23FC21F20C95
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 08:56:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D897F16436;
	Mon, 13 Nov 2023 08:56:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="3asjtuz7"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89B28171DF
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 08:56:25 +0000 (UTC)
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2BB110D7
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 00:56:23 -0800 (PST)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-9ae2cc4d17eso634299466b.1
        for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 00:56:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1699865782; x=1700470582; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8Yy2i2F+9pJywYxY6AKw4sbn/DiDdL44GgjGmpRdRoA=;
        b=3asjtuz7sgt8quCwhI1cdHSBLmVtwRjEFYRU9UTkuX8DFtQYc5UuI85sxenC1MLo+S
         LI/bwueDq3LNbZD7UNwel4436vXjg/oDoiIy/fClR3dU34uY1NAZ+ad+/TY8AfKaQokm
         b11EN04wMukjV8kBpF6U77vmAG9jcMef8eBrgcVAOh13xtS405t3a1AZSbzny8YyiRKq
         gQSdWmxyE9QsSHummEALpZcQWon7pQKPHhH/IlGYKSreghHBjekbsMoyGDu3f7rA+yNS
         dpOcIwsp0ROzqnfqu1ye6gvG5UTUkPRoiF5JMQ8Qt+hDnlE+YQZ2enVFh+IcpKQCsUnT
         +Qjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699865782; x=1700470582;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8Yy2i2F+9pJywYxY6AKw4sbn/DiDdL44GgjGmpRdRoA=;
        b=j6VzVR3fjV/Gglwj0YYWFk3ertJo+hM3ATIV3RZBuQzJpmGGVP6RfPzgau9JYOhoYP
         gH1R/+Dzowe2YveP+id9B6Mob8qvH4Kc4NB9lK1cDOJ/rSo3Q4iwcO2WWhGXBpv/7lFX
         MFyqo7FqHOFt3vw0XC984wznxMNFUoEt2Jo6b6XKjtRiJbYpntvbCzmmX0RddsZPBB1P
         WOW08ZBBIBTdrtwHk5HFtWQ+0sKuPx9XnxUxHH3E5vq5higGsVlcP9w8X+m6jIknoD2U
         POBlcjCTLR5lhp8Glx/iPjIjtLKi/i0Fo4Q27S5s9XaffJ6JlznMGZ0CfKugtW8C9xS1
         ZdKA==
X-Gm-Message-State: AOJu0Yx8JjNtYjRkgj540y/QMWqF8AdY3k1Ne5T5Y0g8pxzkg7BHftn3
	TUhIXvXFC5UCe1WfzLyUffpMbw==
X-Google-Smtp-Source: AGHT+IFM/lpqUyVAhbMPMKL5aNIUU8Y2d2td7/wT/Q4RZpTSCZABxHEPsS/89HX+GaB730z6a+XDOg==
X-Received: by 2002:a17:906:4708:b0:9e5:2e15:35c6 with SMTP id y8-20020a170906470800b009e52e1535c6mr4195362ejq.44.1699865782434;
        Mon, 13 Nov 2023 00:56:22 -0800 (PST)
Received: from otso.luca.vpn.lucaweiss.eu (k10064.upc-k.chello.nl. [62.108.10.64])
        by smtp.gmail.com with ESMTPSA id kk22-20020a170907767600b009c758b6cdefsm3673538ejc.128.2023.11.13.00.56.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Nov 2023 00:56:21 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Mon, 13 Nov 2023 09:56:12 +0100
Subject: [PATCH v2 01/11] dt-bindings: remoteproc: qcom: sc7180-pas: Fix
 SC7280 MPSS PD-names
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231113-sc7280-remoteprocs-v2-1-e5c5fd5268a7@fairphone.com>
References: <20231113-sc7280-remoteprocs-v2-0-e5c5fd5268a7@fairphone.com>
In-Reply-To: <20231113-sc7280-remoteprocs-v2-0-e5c5fd5268a7@fairphone.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
 cros-qcom-dts-watchers@chromium.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Rob Herring <robh@kernel.org>, 
 =?utf-8?q?Matti_Lehtim=C3=A4ki?= <matti.lehtimaki@gmail.com>, 
 linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.4

The power domains for MPSS on SC7280 are actually named CX and MSS, and
not CX and MX. Adjust the name which also aligns the bindings with the
dts and fixes validation.

Fixes: 8bb92d6fd0b3 ("dt-bindings: remoteproc: qcom,sc7180-pas: split into separate file")
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/remoteproc/qcom,sc7180-pas.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sc7180-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sc7180-pas.yaml
index f10f329677d8..6f0bd6fa5d26 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sc7180-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sc7180-pas.yaml
@@ -114,11 +114,11 @@ allOf:
         power-domains:
           items:
             - description: CX power domain
-            - description: MX power domain
+            - description: MSS power domain
         power-domain-names:
           items:
             - const: cx
-            - const: mx
+            - const: mss
 
 unevaluatedProperties: false
 

-- 
2.42.1


