Return-Path: <devicetree+bounces-12769-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EAFC57DB686
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 10:48:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A05332815DE
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 09:48:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 443BFDF61;
	Mon, 30 Oct 2023 09:48:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EO+7pu23"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4C76FC13
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 09:48:32 +0000 (UTC)
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6FC61A7
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 02:48:27 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-32dcd3e5f3fso2928614f8f.1
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 02:48:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698659306; x=1699264106; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uCuSfSLgFx8Z/IvwoSAQd+YCkV42twFc29IgX5SJkTg=;
        b=EO+7pu23wVOqdMCcOAQnUKgR8Fp59rAP1vtfq2/dmh/zSGlbEtm65sKaS/JQLr/q1R
         SNs6lN8lcTN7h+4AsepaZyxKDnqDUXbwfXDieQweI3taBB6ayVKZyCjz03Fz/T4aeVW9
         NutM92GxVdKLhO6Lm/I2T02urhSH7C2FfuIeMfIbcx6EiljwfYEDWZUcajanMNwPvE36
         07RK/VGtIW6/7hyHXEbnW7egCo2KnQQjuRGcqsiTKPZ9ydTtZvlv35mu38M5HrJUdKLZ
         nnW8iupQuH73IFJ0Z44kSz3DNm8ciOIiBMX29xVaK4Zniw1UZ3oxu568mIPJTGNxml1n
         1v6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698659306; x=1699264106;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uCuSfSLgFx8Z/IvwoSAQd+YCkV42twFc29IgX5SJkTg=;
        b=BXu9B3hRCKjfg6FOJ+y9YjWJPkyj8kF6YoC4Yd9EGDnG0v8h9P8QsgVbcyJS2BCKFP
         CSJa+Z7/sCl9/aOZpy8Q5BeOFT9kNyV+liz6EDIuy5oyU9/yDXCbOTSgCvOxk65xRNoQ
         etBAYGQpkNSXbuAC9z2i2rlbTMWGXsRFbebnJajp+8/P06UPJv3Ey2qgad/FQTSA2Pbh
         Y6AytVRmUe51sXh4Afp4VENBh5y/RtWnI9CVyLeYFH3ReIq8BGBb6rd7Y77y4+ld97Qc
         waieTYZgHroowNeDDqZY0n61n/ArWolAw6/WrO71IVR06uFfpALYpufsNFWab+mE4Lem
         GljA==
X-Gm-Message-State: AOJu0YzjTlIp7FS5G+JBnRtiuWubCJqNv7/ytHAXaYZPY5GIA+zgjYWj
	Sw0TvVa+t55P9gLt84AdfA5lOLIlcuFow+fbmvCJwQ==
X-Google-Smtp-Source: AGHT+IHW/xU5Ij0aGLUm73LSiJoZHAEsd+ik2nIPYqzPQsf0fl7/4XS3gnokOk2EzQoCAHfj6y/kpg==
X-Received: by 2002:adf:fa85:0:b0:32d:a221:446 with SMTP id h5-20020adffa85000000b0032da2210446mr6682171wrr.59.1698659306186;
        Mon, 30 Oct 2023 02:48:26 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id x14-20020a5d444e000000b0031980294e9fsm7854256wrr.116.2023.10.30.02.48.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 02:48:25 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 30 Oct 2023 10:48:20 +0100
Subject: [PATCH v2 4/7] dt-bindings: phy: qcom,snps-eusb2: document the
 SM8650 Synopsys eUSB2 PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231030-topic-sm8650-upstream-phy-v2-4-a543a4c4b491@linaro.org>
References: <20231030-topic-sm8650-upstream-phy-v2-0-a543a4c4b491@linaro.org>
In-Reply-To: <20231030-topic-sm8650-upstream-phy-v2-0-a543a4c4b491@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=919;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=uDr4gwg1jv7yeRi5cBz8xYb4ZzzFE6+VBH4HpIqP6lE=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlP3vjH4uGW9TyY3ekMitgroXCau0sfpQjVnZfbqiH
 yJNM9fqJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZT974wAKCRB33NvayMhJ0WonD/
 4rK2+ac0h/7aAFux75W9E5oGIohRphOpiw0/MhpGXzOgcKxAHhIER/vVWUFv0qv0jcTf/vGSymHo+d
 gCfpsPxZWRjXBXQ4nv369sLAn+jb8+5ODwSWR+khqU81ODLRRe6WskynZ2NMzMFX8JmBzfhBbnbjYI
 wt7efHKzmEGhGXX2itP6f6xKSWINRCWFMrEky2Qpp27bgCGDgXiWcZd9FvgZfpfz9nhEl5E+SKPeSg
 olKaDv0QyNjAk9TM1OSwEMbB3GafzbCK7xLk+QS1rTuRPjWWWpfiLLCLbHb++5mYCbANSyqcK1W4wr
 heHaxu8qacQfD8YoVZWAjndiZQSOmzwrfWgnFmfBjzyY0dj2e077PBFygyd9/qRZmbTQ8Bmt5X7WPN
 1lsWVAMIRMUHLyjCaNkp8Ho7KnXd7mYYk2IkKmbSzKW+r26hvPTtDtzr80JDswjH06fL4R0oSAPePU
 nKeAUGbfp+aAKWXRtHd0479s6o0WWGyml7MygMWH8hP4x2Xw/LSokngWogAkzHi3duM4sUZ9eIeM3d
 fsLZIekuS5cuZYjY6SEd30edMT/C/xft7nwxSmPcXGzVg6p4OOkEHLiYTCribY+liJUZ0jF1c0SdX4
 VKR98rpQEOhYBOFGnMImQkKFcBzt92pM4oNmoVcQdyPUzW0Xro8FqNTX3FKA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the Synopsys eUSB2 PHY on the SM8650 Platform by using
the SM8550 as fallback.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
index c95828607ab6..8f5d7362046c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
@@ -18,6 +18,7 @@ properties:
       - items:
           - enum:
               - qcom,sdx75-snps-eusb2-phy
+              - qcom,sm8650-snps-eusb2-phy
           - const: qcom,sm8550-snps-eusb2-phy
       - const: qcom,sm8550-snps-eusb2-phy
 

-- 
2.34.1


