Return-Path: <devicetree+bounces-4974-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6717B48CC
	for <lists+devicetree@lfdr.de>; Sun,  1 Oct 2023 19:19:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id B808728197D
	for <lists+devicetree@lfdr.de>; Sun,  1 Oct 2023 17:19:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47B0E168C2;
	Sun,  1 Oct 2023 17:19:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0234ED295
	for <devicetree@vger.kernel.org>; Sun,  1 Oct 2023 17:19:09 +0000 (UTC)
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87F28DF
	for <devicetree@vger.kernel.org>; Sun,  1 Oct 2023 10:19:08 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-32483535e51so3722710f8f.0
        for <devicetree@vger.kernel.org>; Sun, 01 Oct 2023 10:19:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696180746; x=1696785546; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gHH2omA1s8Yg4jj5Xktf/NmIdGT8UW7+Aak9UE+FTBI=;
        b=j5cN/Z1mok7o8siqeWG+WD7COhBsh1EfF1IK3wWOlp1Pq5K1Hx+kXf8TSjtpLaQg3C
         07Zz95enVn9p9Z6OzfVcJuSh6hXRHoQZSvPeenwNgulPsCMHNWk9iaNWIAyRkxNuJZg4
         ENW7J5xiMIZZ0+BZNX9eicPU1Gx1/thuIZ3pmXuidh4FcbbgTBnr9z/U+KnH24l8zZQy
         RqFi1WGIcaA+xaRImZBmHGOvQOJX5slVCOEFK1i2JLVdjlmlo9vi91eqRhbSmEJf1ObK
         6wNmMDUN2AFs9Gw4gSLaCR2b5f1gB+iFdF3Si3tGE+viLvGZNv5X89Uo9nwUI6zNG+nB
         EQAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696180746; x=1696785546;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gHH2omA1s8Yg4jj5Xktf/NmIdGT8UW7+Aak9UE+FTBI=;
        b=XzidQ2/Qswn5LB3WKg1oU+qpuWTW8g4uyvoeT53Aqimp+1SqcRhYAUBHlVQU3hvTBZ
         DyA6bqBm9ZjedZiPB+T4eNJiQ3L1yt+eG+ONapc2OJfHb1pPGG2xrK7ie/UFxKSC/YV1
         QQZv/ekbvLk2URNfcrm5tyiuq5/HK6NECp2NJeeYBSdKAIhh9yFkn0TUme6iCsabHb3+
         kApdIIzZVMdSVPYh9dg757qrlyu9tkFq5+gfQbK4QuTl0w1cHTeslF+80WLQaDGq0unh
         /RV/XVTfVQoXfB8VbVjDSXcHEI7dliQYb/KeUaAN0jzQl9vBQXG6AmK977dRQOV+Gsze
         CCEA==
X-Gm-Message-State: AOJu0YxFiDZmw/aM3978NiftDAoCJhWg1gsFEZ+04gtQIkv1RgbJIWZA
	FA2q+id/OVdaOZsBtXGcerZ2wA==
X-Google-Smtp-Source: AGHT+IGvryi3AuJAk5xX9EktDr0cH+kRACmbSovIRj9gkarcNRzSIBNoBKPinxh4g7gj7OGePOBEpg==
X-Received: by 2002:a5d:4b89:0:b0:31a:ea9a:b602 with SMTP id b9-20020a5d4b89000000b0031aea9ab602mr8900195wrt.1.1696180746558;
        Sun, 01 Oct 2023 10:19:06 -0700 (PDT)
Received: from lion.localdomain (host-2-99-112-229.as13285.net. [2.99.112.229])
        by smtp.gmail.com with ESMTPSA id n9-20020a05600c294900b00401c595fcc7sm5613042wmd.11.2023.10.01.10.19.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Oct 2023 10:19:06 -0700 (PDT)
From: Caleb Connolly <caleb.connolly@linaro.org>
Date: Sun, 01 Oct 2023 18:19:03 +0100
Subject: [PATCH 1/2] arm64: dts: qcom: sdm845-oneplus: enable flash LED
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231001-b4-sdm845-flash-dts-v1-1-275a3abb0b10@linaro.org>
References: <20231001-b4-sdm845-flash-dts-v1-0-275a3abb0b10@linaro.org>
In-Reply-To: <20231001-b4-sdm845-flash-dts-v1-0-275a3abb0b10@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Caleb Connolly <caleb.connolly@linaro.org>
X-Mailer: b4 0.13-dev-46309
X-Developer-Signature: v=1; a=openpgp-sha256; l=1400;
 i=caleb.connolly@linaro.org; h=from:subject:message-id;
 bh=Zfz2LQwvMPPiN2Qwb+dfpDk64wKyyMi0H5c+r0COrD8=;
 b=owGbwMvMwCFYaeA6f6eBkTjjabUkhlTJVRxHvwc41StImQSdnztb95HEs7dXjC9EH3P/aOTPs
 E9/YwBTRykLgyAHg6yYIov4iWWWTWsv22tsX3ABZg4rE8gQBi5OAZjIrA2MDFuM5h4JyrdM5lpg
 8/SmRcet65cK6xYK/rXw1fWqLjCfJcfwP9O6VuiV3P1fxwxW3Rc5bubwIOWb1SMFL0bZ7wY8DBP
 0fwAA
X-Developer-Key: i=caleb.connolly@linaro.org; a=openpgp;
 fpr=83B24DA7FE145076BC38BB250CD904EB673A7C47
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Both the 6 and 6T feature a dual tone flash, enable it.

Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
---
 .../arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi | 23 ++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
index b523b5fff702..e821103d49c0 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
@@ -8,6 +8,7 @@
 /dts-v1/;
 
 #include <dt-bindings/input/linux-event-codes.h>
+#include <dt-bindings/leds/common.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 #include <dt-bindings/sound/qcom,q6afe.h>
 #include <dt-bindings/sound/qcom,q6asm.h>
@@ -484,6 +485,28 @@ &pmi8998_charger {
 	status = "okay";
 };
 
+&pmi8998_flash {
+	status = "okay";
+
+	led-0 {
+		function = LED_FUNCTION_FLASH;
+		color = <LED_COLOR_ID_WHITE>;
+		led-sources = <1>;
+		led-max-microamp = <500000>;
+		flash-max-microamp = <1500000>;
+		flash-max-timeout-us = <1280000>;
+	};
+
+	led-1 {
+		function = LED_FUNCTION_FLASH;
+		color = <LED_COLOR_ID_YELLOW>;
+		led-sources = <2>;
+		led-max-microamp = <500000>;
+		flash-max-microamp = <1500000>;
+		flash-max-timeout-us = <1280000>;
+	};
+};
+
 &q6afedai {
 	qi2s@22 {
 		reg = <22>;

-- 
2.42.0


