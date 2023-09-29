Return-Path: <devicetree+bounces-4502-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB847B2D9E
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 10:17:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id DF508282DA9
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 08:17:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4D9BF9E5;
	Fri, 29 Sep 2023 08:17:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DBCEF9DC
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 08:17:49 +0000 (UTC)
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E28B41B2
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 01:17:47 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-99c3c8adb27so1863253066b.1
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 01:17:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1695975466; x=1696580266; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gm9WOtxBCPM3Yn/lK15TeRCQSRheb4lkHQZlX4Ty2GE=;
        b=G8iiBj8i+miDWCMG5WNBK5wxogmHOByk1LuD3aNObX4TvzWkJaCwDV3uDaiz/oGeuz
         LmCJjNzVxF5bi0X+Ahvu4YhpR1kiOy5ZysgchBM84Faf6uMAq9cKGSUum07mvGl8Iffu
         lRDDueCPhjjYOoGBUMAmpoHpgQ2BF0nQCmr3IfiAuUZK1Aixy/KGXpcpNuQU2BQAmwRx
         FydKpRQcaPQ8LxKi6ZyiWf+cM9LYN1CpWmiWq82YD5vbCtAtoqUZPALAuGloYnq3qkNa
         5SvAvlakxFOTtfNSjWVc8M33rgqNr23pfjmWAHT7rzeaWKoBNTP63v+fmHpUYt+EJt7l
         vHbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695975466; x=1696580266;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gm9WOtxBCPM3Yn/lK15TeRCQSRheb4lkHQZlX4Ty2GE=;
        b=QuCmrryZAb3qs/4/6oqLI83savK9UOrI9noH9W421K8WGYptRod8J26vSnF0Fq+Rb8
         O2JnMmVOavXjfj3CwAOEn5BtN9uu40MleDw+VkouRShIUUZ+CQPEITjmzi1wo4zsKpih
         /tTgQCMxwsPZKJNQof2W/un+27EDbI36YxCdq204UQI+n6jmz4/sjAmMpJ7NoRm2BnSp
         qjF65XN6gXFlQ1Ylhd7Yy8/1u9t/5HVF0ws6aguFsk8z6fOQyc5+aiCkIz+A3g/TBjhL
         acs5zXW25Ao4CSUoyG7ydZCngM6XMtmoCpWYBmbl+Ckgh91GB9ME/V4Ypm55o1/SWO3+
         jsdw==
X-Gm-Message-State: AOJu0Yzlt0pRxh4FJE7N0ZraVEl6v9k9MRud6xkzbjsx4mag/BpbK+JB
	bNLjHqxaA8/atZZaiKPC4utl0zESc3GidMEPqlWoHRmC
X-Google-Smtp-Source: AGHT+IGINqs5nJ8KMqVtQEztg+OrPreyXl50J3r+XObF8O0aLsRDQu1o0rWUe/zbyC8FBt/WGp6twg==
X-Received: by 2002:a17:907:75e1:b0:9b2:a769:8afc with SMTP id jz1-20020a17090775e100b009b2a7698afcmr3002090ejc.77.1695975466085;
        Fri, 29 Sep 2023 01:17:46 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id y22-20020a170906449600b009adc77fe165sm11873803ejo.118.2023.09.29.01.17.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Sep 2023 01:17:45 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 29 Sep 2023 10:17:38 +0200
Subject: [PATCH 1/2] dt-bindings: mfd: qcom,spmi-pmic: Update gpio example
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230929-pm7250b-gpio-fixup-v1-1-ef68543c1d3b@fairphone.com>
References: <20230929-pm7250b-gpio-fixup-v1-0-ef68543c1d3b@fairphone.com>
In-Reply-To: <20230929-pm7250b-gpio-fixup-v1-0-ef68543c1d3b@fairphone.com>
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
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

As per commit ea25d61b448a ("arm64: dts: qcom: Use plural _gpios node
label for PMIC gpios") all dts files now use the plural _gpios instead
of the singular _gpio as label. Update the schema example also to match.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
index 55e931ba5b47..e4842e1fbd65 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
+++ b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
@@ -245,7 +245,7 @@ examples:
             #address-cells = <1>;
             #size-cells = <0>;
 
-            pmi8998_gpio: gpio@c000 {
+            pmi8998_gpios: gpio@c000 {
                 compatible = "qcom,pmi8998-gpio", "qcom,spmi-gpio";
                 reg = <0xc000>;
                 gpio-controller;
@@ -330,7 +330,7 @@ examples:
             };
         };
 
-        pm6150_gpio: gpio@c000 {
+        pm6150_gpios: gpio@c000 {
             compatible = "qcom,pm6150-gpio", "qcom,spmi-gpio";
             reg = <0xc000>;
             gpio-controller;

-- 
2.42.0


