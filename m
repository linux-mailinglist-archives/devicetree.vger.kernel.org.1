Return-Path: <devicetree+bounces-5015-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2847B4BFB
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 09:00:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id AA156B20920
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 07:00:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67CE09CA4A;
	Mon,  2 Oct 2023 07:00:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7A29CA44
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 07:00:21 +0000 (UTC)
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1D23E1
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 00:00:19 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-9b2cee55056so552202866b.3
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 00:00:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1696230018; x=1696834818; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ktFRr1CyTGjJizjBCavkn96vmdNuVPfuYSai3Lj20Ho=;
        b=A8rTHl0bHs+fQRldcQ2EKRUpzMdadYZwDJJBbKmb1acAmtTL6s56RkTMynTuXRjW4q
         NJzre3dW/lyhnPmR4x6oLoyjwNfY5r24iNX6vRsR1HGq5CdO6tFJn0Am5JeVFC05ycfK
         iTvNuAUT1XyuVIqEhu3q5lfj1JW649Wn4Ld+EIXSc2t28q3oJ2ghc6YtcvuvrhttxkRd
         8k4X7MY/JMI+kqeD4xO1gd/kjglvyde4Wc2VWeD+t+FuKtXJc/1kIkcQUfOAZNgg+LZB
         3N3ri1Qugg8Bm7GiOoEU0l3reA2QcuTWv7h3sf5JduTReMpMgWIcvcumlYo6pppCQ+HC
         wKTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696230018; x=1696834818;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ktFRr1CyTGjJizjBCavkn96vmdNuVPfuYSai3Lj20Ho=;
        b=T+r4c0XpPlNzHg0yuBeQlzNRtKVFWqV96I3ncvvPjVNRhnmk/MfLpz+Gi76j92Q7CJ
         SI5JllPWdd7QUv2wwFGx4QYAv62sXten+6f0SY/GYEjRTaSUIu3D7W4tcj04+8rzOjfJ
         bGYWzvwhUlZDfBN2g3wETg23RhxTga7dc1NQXyyjFoL0a42EBiIxcbYFyfFCECEfWgst
         WM26+Ej7mgYJwMvhz+2crztiI5/RnWYOYT2RjKDy1Oiq5yN0HuJP52MI5afnkImR52tY
         hmLub6AqKvAB/J5zqnKPwAGpskWtFOgE5dHrKkBsLdo9Dyik+AbMUCsGBvOdtFMNvZgf
         De6A==
X-Gm-Message-State: AOJu0YyuvXbqXoQs5KlWglkzIcklwVFSfYacVOn956pspcC2NqTx1O+I
	Q+wjmH847qcj6WkxU3+HtDyKdw==
X-Google-Smtp-Source: AGHT+IEJS20GX9/Mz9Z0qBVhL4ZNvgD0cSbmWS3xm8ggW22h2lQIbSpD0NnWIB2Ep/fOKv1woD89+g==
X-Received: by 2002:a17:906:cc15:b0:9b6:53a9:792c with SMTP id ml21-20020a170906cc1500b009b653a9792cmr238046ejb.15.1696230018260;
        Mon, 02 Oct 2023 00:00:18 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id z10-20020a170906714a00b0098ce63e36e9sm16692013ejj.16.2023.10.02.00.00.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 00:00:17 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Mon, 02 Oct 2023 09:00:11 +0200
Subject: [PATCH v2 1/2] dt-bindings: mfd: qcom,spmi-pmic: Drop unused
 labels from examples
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231002-pm7250b-gpio-fixup-v2-1-debb8b599989@fairphone.com>
References: <20231002-pm7250b-gpio-fixup-v2-0-debb8b599989@fairphone.com>
In-Reply-To: <20231002-pm7250b-gpio-fixup-v2-0-debb8b599989@fairphone.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

There's not much point in having unused labels in the binding example,
so drop them.

This patch was originally motivated by ea25d61b448a ("arm64: dts: qcom:
Use plural _gpios node label for PMIC gpios") updating all dts files to
use the plural _gpios label instead of the singular _gpio as label but
this example wasn't updated. But since we should just drop the label
alltogether, do that.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
index 55e931ba5b47..9fa568603930 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
+++ b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
@@ -239,13 +239,13 @@ examples:
         interrupt-controller;
         #interrupt-cells = <4>;
 
-        pmi8998_lsid0: pmic@2 {
+        pmic@2 {
             compatible = "qcom,pmi8998", "qcom,spmi-pmic";
             reg = <0x2 SPMI_USID>;
             #address-cells = <1>;
             #size-cells = <0>;
 
-            pmi8998_gpio: gpio@c000 {
+            gpio@c000 {
                 compatible = "qcom,pmi8998-gpio", "qcom,spmi-gpio";
                 reg = <0xc000>;
                 gpio-controller;
@@ -330,7 +330,7 @@ examples:
             };
         };
 
-        pm6150_gpio: gpio@c000 {
+        gpio@c000 {
             compatible = "qcom,pm6150-gpio", "qcom,spmi-gpio";
             reg = <0xc000>;
             gpio-controller;

-- 
2.42.0


