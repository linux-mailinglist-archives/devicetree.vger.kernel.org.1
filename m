Return-Path: <devicetree+bounces-31870-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E70E82CE85
	for <lists+devicetree@lfdr.de>; Sat, 13 Jan 2024 21:56:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 840431C21089
	for <lists+devicetree@lfdr.de>; Sat, 13 Jan 2024 20:56:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 320771642A;
	Sat, 13 Jan 2024 20:56:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lz1+7e39"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5A6316416
	for <devicetree@vger.kernel.org>; Sat, 13 Jan 2024 20:55:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2cd33336b32so99183291fa.0
        for <devicetree@vger.kernel.org>; Sat, 13 Jan 2024 12:55:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705179357; x=1705784157; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7p6gWY0YoqvRhvH4CsaKCkw0XoA/dxUPDgcmLcO++Co=;
        b=lz1+7e39YQZlrJzMxIfebWkDPjzES428oQdzT/1ACb1DpbAAU5FBLuW92xqsrcHgPe
         GbiTupc23lD1KsPW3bZ24XuSpNZSHi6yr0kkWjCYXsBzWGvEau/g4UWPe40BA+4LU+RP
         a0fagI9gXC/3ZuQdZRpKjV7OJh6A+Mu3f99hiYeIFKbOQazZ5vJMBtApdPCfWyxwHNHP
         igNpk+fm7BWmZeGMtoMIdLyRIX80z95TFy077ldAyx1IkgEauuxqzuOZ08dlY6z7Ti9E
         RGOuGN+b8IWkjbmIxvIDc8dltrV7VrjhQEljKKynw/B27RoUcJsBuXWcEyPBJZhq2V+U
         fkCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705179357; x=1705784157;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7p6gWY0YoqvRhvH4CsaKCkw0XoA/dxUPDgcmLcO++Co=;
        b=rSe9cTAahr0Hk2TWFSNS8O2qTFGPW2TM8PFfOfVWq35UZcPLuEZI29ObK7lEVCocX3
         Fii2gUD0gBiV8LlN0Pyoeml1jRVAnaAqB89+sTxaVQNm2fxm7RPrxbcaobnEz3wJg6nL
         9YWUh9lPHhGiiPT42GLFYXWIhUtMSc5b0qqxcJezbk2KPI2s1mdu20EDLcCirqqo5HDc
         Y9UIuxz2uwm1WDGgzSR3V+tbHmMX6bWTOc5/+ahQMpEAN9h9J1CKN/ZbPMPBEXPDBd7p
         zeqfiWSLhpjPFgKjyQ85rxJ3FA4i2H13Vc8BkiBTcydQRI4yRrp7DaRq/DdxNwQKhtO2
         iAQA==
X-Gm-Message-State: AOJu0Yy4C33SAOhh9b7dJ2sQ89PQDGl1V6t5+5hgN4pmQ/wBXT7pAtr1
	UeW2Otm78Sdv8Dvuk0XrKeXfsdkYZPNqbQ==
X-Google-Smtp-Source: AGHT+IHbb6Hk424wpmBXA/9fo5agMx0JnS4ckc6EKBxpEvGttdRpEC8T4a1XsFQYTmrfLJQJgkphAQ==
X-Received: by 2002:a05:6512:3a3:b0:50e:ac97:8bb2 with SMTP id v3-20020a05651203a300b0050eac978bb2mr1475688lfp.40.1705179357005;
        Sat, 13 Jan 2024 12:55:57 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id p14-20020a056512328e00b0050e9355d7eesm919802lfe.103.2024.01.13.12.55.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Jan 2024 12:55:56 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 13 Jan 2024 22:55:47 +0200
Subject: [PATCH v2 04/15] dt-bindings: phy: qcom,msm8998-qmp-usb3-phy:
 support USB-C data
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240113-pmi632-typec-v2-4-182d9aa0a5b3@linaro.org>
References: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
In-Reply-To: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Guenter Roeck <linux@roeck-us.net>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1888;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=DFAh3NKLCMzL120f+oFd/fyT9CXy+jx6bI/mJAUdqN0=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlovjW4B6beCENV5/96moOaMSzx2h+m+EJaFunL
 SthbyEEWY2JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZaL41gAKCRCLPIo+Aiko
 1aCJB/91Cw/8WKjyEpSIFaaHXcsRjP6p85e6/a/7FdD7cuRjSfW8kepdL17IrwnUK+i2Q0xwLnX
 xX16b70KjG4G7vkM6zQMZtvR7jTqglUIkIPwxu9pkPnuJBUj7/TImgzzDsaY+z1SVo8hF50iPPw
 KxsrPhgDEIoLOOls1Jqze+HRaqp66PsRl2Qp+Da9bnC6ij1ech7MWsshoiA8R+29ljeH2wcWeqQ
 w+Fik+qyIUtQJEGv7H/y4GiFDtJmkqT9GifaK2QPzq5EIYc8h15LRZtZRaTkgo8zK7sU/UhPRAa
 QCFhZAxajUCLimoZgB4K1iyX3jONmza/VNmI7rgzUooJTPCt
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Extend the Qualcomm USB-C QMP PHY schema with the USB-C related entry
points: orientation-switch property and USB-C connection graph.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml    | 39 ++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
index 868fabd44d72..da5d4cbca24c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
@@ -50,6 +50,22 @@ properties:
   "#phy-cells":
     const: 0
 
+  orientation-switch:
+    description:
+      Flag the PHY as possible handler of USB Type-C orientation switching
+    type: boolean
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Output endpoint of the PHY
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Incoming endpoint from the USB controller
+
 required:
   - compatible
   - reg
@@ -129,4 +145,27 @@ examples:
 
       vdda-phy-supply = <&vreg_l1a_0p875>;
       vdda-pll-supply = <&vreg_l2a_1p2>;
+
+      orientation-switch;
+
+      ports {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        port@0 {
+          reg = <0>;
+
+          endpoint {
+            remote-endpoint = <&pmic_typec_mux_in>;
+          };
+        };
+
+        port@1 {
+          reg = <1>;
+
+          endpoint {
+            remote-endpoint = <&usb_dwc3_ss>;
+          };
+        };
+      };
     };

-- 
2.39.2


