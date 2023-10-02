Return-Path: <devicetree+bounces-5063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FED87B5019
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 12:20:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 0D3BFB20B3B
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 10:20:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED574F9F7;
	Mon,  2 Oct 2023 10:20:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D120D306
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 10:20:36 +0000 (UTC)
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 758D4E0
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 03:20:33 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-503397ee920so24809318e87.1
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 03:20:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696242032; x=1696846832; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ICWvHuFsaFLK5szrah3dwwdrzpV6FfDaZOz40gAcqqk=;
        b=WGFbRrcyqw9reHfV5SCfD92CLMNthhPXKKJhjP6YFL1jx++/cQ0j4OjypXW8Hb4Zxn
         QpNuroBc5tasNahgSCaLuFK6lMNcpSuBeELgdpyT2h9xrxcTM3UwRZJGWt1BEnVAKbqF
         RBKqFK/wooUEjHOs0gJlHeRV2TEsE+heWsshb1g64j+U02j7DdIGLbs/rKbFM4qCoEzT
         hqi1AbvHy7lZwcublbi960ZTMqqpFkyFoIRqKiNeVJwr7zFO6UboaYx8YiGIwerz1LgF
         gsELyGJ4e/xYtnLnbLbZjODfyPWLWUJnn/Je7SXYaj+Gu2ML5uNtoF8QbQod0a7lvaOJ
         hF1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696242032; x=1696846832;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ICWvHuFsaFLK5szrah3dwwdrzpV6FfDaZOz40gAcqqk=;
        b=ClBjXwEjHoS/EObXEmUmGF1WoQLmHlUDG/TZqykhWP6x6YxdNy595olMgfmbXDE9sJ
         Yxol+9V9lMz2Qa//ZBrqjK/cqobb5ULmnrOHbVIjiCrXBj7HxglOe78qeDD3UcspR3t4
         +xb3NDtbrMS9ISiNL3VI5gtQ4VyleIYGDsNtjGBAdarYTTM1i6bR2cm0Pj8GctUgy4h5
         5l8c/hUW6q/QBwacVeBqKX9k83FTn9lIoQv6BvUGouK7KU+jqnDV/24/FJ6L7/8C53jV
         f4+LWAqBmBJF3geYluHTUrwFopUQvWpHZHnXwUTyvmY6Zl/W2KSRWB8fX0N9jKFe7Ytu
         Ck8A==
X-Gm-Message-State: AOJu0YyIvPGHWqUBfDTJttv6oNJadugNUDodd9Hh/elHuS/BFHHGSsvn
	e0ZdAwubJKyAikxxOP+yHn3Ahg==
X-Google-Smtp-Source: AGHT+IHH9AffhbFDJfNzTdURfoi9bsKLkCyvLukcnhRxhhPNC/iBQ2DUCRD0oBggM3uwEdeYac88SQ==
X-Received: by 2002:a05:6512:4019:b0:503:2683:ec7b with SMTP id br25-20020a056512401900b005032683ec7bmr11113056lfb.33.1696242031604;
        Mon, 02 Oct 2023 03:20:31 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id g18-20020a5d5552000000b003196b1bb528sm27822901wrw.64.2023.10.02.03.20.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 03:20:31 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 02 Oct 2023 12:20:21 +0200
Subject: [PATCH v2 1/4] dt-bindings: soc: qcom: qcom,pmic-glink: add a gpio
 used to determine the Type-C port plug orientation
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231002-topic-sm8550-upstream-type-c-orientation-v2-1-125410d3ff95@linaro.org>
References: <20231002-topic-sm8550-upstream-type-c-orientation-v2-0-125410d3ff95@linaro.org>
In-Reply-To: <20231002-topic-sm8550-upstream-type-c-orientation-v2-0-125410d3ff95@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1747;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=L7UnCblZqCaCfW4IrZ58Z/ALtSFo6Rtxp79suaPVa+c=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlGplrkqZV/Tmlq7jEKIw/ICGOw1HdwAoPaffkBJCT
 u+mNY6CJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZRqZawAKCRB33NvayMhJ0SSWEA
 CQqVMykzVIbnYm3WSgupWHnT+di0HYfk1Y7rw0Y8BgStNrBNTndgtHxdON1IPN3lVC/cPM+J6Xl1t8
 pCKP0o8HZidzHv6RD9PF2v1DZpf6AmwKRRcFxqNMxi7nVBkAJTNaGzPIV7w+d8fArKsDdaEQ7fwyN0
 5XBDDRnqyqUUS0andHcKg00hxF6ulleTOAHz79jsTby/kD4vg6213txvMzDeKQOqWlpcnjvt3JS43/
 dkG7EMr2atvs+YbRr5+0y4AIOzgUa7j+6Zi7MO7ORd58ujpSDQbAxMzuKcWc/9jieSSrX06VjfJfD/
 Bj3c7kYvl65k1tmTrk8D1Sw57TguhfveGuxfTvlpS4DhI3EVBW2DwRB7Cs1rXfqsU6m2Kbjz0NH1zh
 gb0eY23NQnVi/vbDU1sPJ6IyzqRAU05vq6EjUbXejb4pmXune3uVNOHvl5dWVEJDovq97CdyOg5S9e
 jqc2UgeEacN8s5lXJmk1cbwtSqFnLOpwCoU+4oHI7vwphYo4itQqogsKVCF0jpsm0/LgVDoqx5bltX
 qMFcxOewcic3wDRqC6HWbL7iW3iwYfUxsgGI7c4yE+hlKNeoGobh4Fzd7J7G3wlnEUzxDPEzTg/OnT
 XJPsc8QtY7PbxvWh9NuLQLIbPwH7BSeMsVJcZ7rD4UdYbbcOA1cAZmNtnNaA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On SM8450 and SM8550 based platforms, the Type-C plug orientation is given on a
GPIO line for each connector which are set by the PMIC(s).

Document this optional Type-C connector property, and take the
assumption an active level represents an inverted/flipped orientation.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
index bceb479f74c5..422921cf1f82 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
@@ -35,6 +35,12 @@ properties:
   '#size-cells':
     const: 0
 
+  orientation-gpios:
+    description: Array of input gpios for the Type-C connector orientation indication.
+      The GPIO indication is used to detect the orientation of the Type-C connector.
+      The array should contain a gpio entry for each PMIC Glink connector, in reg order.
+      It is defined that GPIO active level means "CC2" or Reversed/Flipped orientation.
+
 patternProperties:
   '^connector@\d$':
     $ref: /schemas/connector/usb-connector.yaml#
@@ -44,6 +50,19 @@ patternProperties:
 required:
   - compatible
 
+allOf:
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - qcom,sm8450-pmic-glink
+                - qcom,sm8550-pmic-glink
+    then:
+      properties:
+        orientation-gpios: false
+
 additionalProperties: false
 
 examples:

-- 
2.34.1


