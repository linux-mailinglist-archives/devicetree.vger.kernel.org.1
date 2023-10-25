Return-Path: <devicetree+bounces-11567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C037D62DC
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:32:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 30AF91C20DCF
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:32:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD752182D5;
	Wed, 25 Oct 2023 07:32:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CP6fAhQd"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7586C18059
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:32:15 +0000 (UTC)
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15FCF10E5
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:32:12 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2c51388ccebso78872851fa.3
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:32:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698219130; x=1698823930; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LkK06hkxzdwxK+868ZNfQOlrMKOnjIUgKDjw97JuG+E=;
        b=CP6fAhQdNQHxbFCGvyNAig0lhqLQCpHazulAV2WIYg2LEV7xR9Bg2TG1wls42fO+W7
         4rqwexrp0ImsZDIfhMz5hBxI43dtY6roRPtmznmnRtHdtbp3fUabCqoWxEEpuzkf/Ihb
         BsY6CCZnsk6/FXc3dwtv95x9saEKdTNpKwjXcTrNFdcW99lyfi9cdUHMwgAFoDTJdD7G
         s2Qa0oTflZCleCTA+oWcJaZzTCxxq5+B4uEUIGDF35UOd8q1HVyBFfVRs2J+TeVbzfCm
         dlHMxaPZVwRAhZlxzfXuo+LNJn9eFNqpSTzVJ/UwuAwMcE10dURyCDfRrOkvRURDEDXp
         DyHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698219130; x=1698823930;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LkK06hkxzdwxK+868ZNfQOlrMKOnjIUgKDjw97JuG+E=;
        b=CE3udCuU7df1BjIrNDMflA5dbbiQQM++S0+SJAaciJdiH25PELqBs1vrwY7TQidRC3
         35u1Gx/l1pDdBUe3CQVphqNYAz8bagjrim8l5jBGUcGd40LoVdO1jGir487Zq4EZzI0H
         GvHdATrzEDBh0JckcjqX+5O5vQWIWRAfyWFcCeGfBmWboAA1r1NFqDwwNKlW5pkeWmL1
         CVn5itBdNXdnJcnuVg14OArynxnuk6Z9j4rnF5he5KYACLM8fe3I/7jF//T3Agzk732N
         ILyBQ0lWum7ADRjFAYf+JTdfra+GEPlCtA1rNaHnouxOf2V8s/+qOR+7ZY/gkzcj+ia+
         Ru+w==
X-Gm-Message-State: AOJu0Yz1iCBMJJPL0aH8mS5Nkds6xUBciP8jLAsMp9zranYq13Dp7Op0
	uYlf5VD8N7R7/3FXEIfbJbIFi16CzzVTAAnewC4YaFoB
X-Google-Smtp-Source: AGHT+IH+Yira0OYgCUa++PaIdfxYJvBb1lvUtqlD4An+snbTHt/sntEuCvgnEiScLvU95z7u0RShvg==
X-Received: by 2002:a2e:b790:0:b0:2c2:a337:5ea with SMTP id n16-20020a2eb790000000b002c2a33705eamr10722063ljo.27.1698219130228;
        Wed, 25 Oct 2023 00:32:10 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id m21-20020a05600c4f5500b0040841e79715sm14036237wmq.27.2023.10.25.00.32.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:32:09 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 09:32:02 +0200
Subject: [PATCH 1/2] dt-bindings: power: qcom,rpmpd: document the SM8650
 RPMh Power Domains
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-topic-sm8650-upstream-rpmpd-v1-1-f25d313104c6@linaro.org>
References: <20231025-topic-sm8650-upstream-rpmpd-v1-0-f25d313104c6@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-rpmpd-v1-0-f25d313104c6@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1245;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=iyrV9MsmSRaFXNkt/CNnLJ+tmAlijZsh8rTitKBaq6g=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMR3jqfahPM5bx7B4kHScB4B7os/yKbaBRvnfuAh
 57/rSfiJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjEdwAKCRB33NvayMhJ0UtIEA
 Cops3457fn46b3U7vAcShT+c9Ygo+mADKziI7dm1hbLr4QG4NGE+FIODg3wwZKokavLf0eFByaK/DX
 qUJfNKjL5NRXTtzK47e1Qx4TNYk2bVZKAUgNf2exI2xDT+J7bXJViJefoXRMigdUstrFITmgXYlQrl
 tFlnGOEZ/f/E0FnnsUrntmxqx/ItUkCTT1lSUBjjVzZYNeFYU+aJKbvJ+WUDCqZajTsoJrY92B1Sq7
 S8LCfi/lBWrClR5HlKYXzMSizhDNt+SUG6gwJmtJmA2/8ASpd/t7Db6YCq9Mx5EsYyeh2z311IqROM
 uiUEjEeXKxN5ViXMh0uW+NYcflAwAGF8ZpBl8lsSlRJn/M4WEfOdL8qmua9c5hnT7HcOXAVifjchIF
 rPVTcr/d7u5TSKxBSfUBMaF3xsesYOwWMXzPbxXxPICaO5Fesl98sxoXvt2XDXr0pSCqHcTKg0ayM7
 piTzkOU1ABgvx//823/PfXqyDl+hHrjLC6/1uUK4IVcupAwSmCAJ4JxaKbVxoXC5hEl41Vwp7tmvn2
 nNtMfPam9ZE6vbFyk509Yt4tEnvBCHM0Yccze/ibipTa7l662LbhgoFZZpiGX/HbmavmOfriqljZB7
 POm21Sw47PoozQbGOJhZKuwDZJrDOe1u3CJKgvjuChbkoXAzqwZEXJcU18vA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the RPMh Power Domains on the SM8650 Platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/power/qcom,rpmpd.yaml | 1 +
 include/dt-bindings/power/qcom,rpmhpd.h                 | 1 +
 2 files changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml b/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml
index d38c762e1280..2803f7d56821 100644
--- a/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml
+++ b/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml
@@ -55,6 +55,7 @@ properties:
           - qcom,sm8350-rpmhpd
           - qcom,sm8450-rpmhpd
           - qcom,sm8550-rpmhpd
+          - qcom,sm8650-rpmhpd
       - items:
           - enum:
               - qcom,msm8937-rpmpd
diff --git a/include/dt-bindings/power/qcom,rpmhpd.h b/include/dt-bindings/power/qcom,rpmhpd.h
index 7c201a66bc69..0f6a74e09970 100644
--- a/include/dt-bindings/power/qcom,rpmhpd.h
+++ b/include/dt-bindings/power/qcom,rpmhpd.h
@@ -26,5 +26,6 @@
 #define RPMHPD_QPHY             16
 #define RPMHPD_DDR              17
 #define RPMHPD_XO               18
+#define RPMHPD_NSP2             19
 
 #endif

-- 
2.34.1


