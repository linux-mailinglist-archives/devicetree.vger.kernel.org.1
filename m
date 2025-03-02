Return-Path: <devicetree+bounces-152995-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 571A4A4AEF8
	for <lists+devicetree@lfdr.de>; Sun,  2 Mar 2025 03:50:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 939487A7E55
	for <lists+devicetree@lfdr.de>; Sun,  2 Mar 2025 02:49:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 327711BF33F;
	Sun,  2 Mar 2025 02:50:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cZcvDFSX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1847885C5E
	for <devicetree@vger.kernel.org>; Sun,  2 Mar 2025 02:50:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740883811; cv=none; b=tGaD7QkBF4LesLfn3J6Q63in7FK81U/LFywnJbE+itJ1UX/qkKaw0IB8skjpRR5fak4wpnAIK88+/0TI1VkVmRhGhEwoHemZHraZTDqVqmkViAo9eQgvZUz6AXCiVRbqlu/CbO9ZR9+woBdMYfJ3o5N/L8eITlogrZn54TChfJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740883811; c=relaxed/simple;
	bh=SlByiTDxYgd85794TFUJfJk6EJELUYRPQB26XL4VOA4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DiferLn8GKpmN6VrGBNFrsVRXwlLAPivjQfZjZWJ8Fjg3vsConEARwQhZPrh/kagZmtxi7yJJ4sYPtJMia7A1kpZ+stQHkwDdDYo4fVONJV40VKfIIQ3KQZrh0Ug8kdhQ1cmZ54KAFalwto5PnTI7CSV1VqKPbMMNJMQnoCzzlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cZcvDFSX; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4398ec2abc2so30046045e9.1
        for <devicetree@vger.kernel.org>; Sat, 01 Mar 2025 18:50:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740883807; x=1741488607; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DVE7MMoQ2WthyPOL2l/3V1MXkj9hPNOqHWuQkJid+/c=;
        b=cZcvDFSXjVmoD2eTQZoU5dkAFcuB9Pa6Xf4E2ICzrRF8acb1OmMdW4iFf2zhA1iK5q
         az2aQQ3tZEGyJHKxQhrenZx/IqhpC8GxLl77npYBLzRFo04XpVfY/p1CiD47aJ5ChZUK
         f1vgSBd35MH3I8Mmq4KvcUCTTh7sYZIUdeNmoaqcxjZMKfL8L2e3FFkUeJgw/+o+lWYI
         K6Zp7T1ZPvXfY2uogexDbmcAIzzbJNDUMN62cVW8HUfilfJ2uNabHb06NO8cSwsop7FT
         w51WVsAJZynDLtAeRbqDD7Z2mt/CaVKMaAjz3oTzHfxaX6hENfCI7AbqB0k/xiDm/S2V
         4xfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740883807; x=1741488607;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DVE7MMoQ2WthyPOL2l/3V1MXkj9hPNOqHWuQkJid+/c=;
        b=evEmvpdg/U3kY/fzCV0F0LSIEVeH8jNucH4dhU+JxTo2W20DV0bAJzt+NkVTAGaKp7
         TMnHq/6ARYIgBIYTIVkaIaNZqMW5chlNWEKzl9EtR3M9Aap1ZRgOF3i1xzI8E8gxRqtA
         jyZWkso8OQwZsVR45TxkxAVifiwPmJN0zMdq6QOzX6h8ATMQQMlCJMHjuX2cyjuL4fwB
         IHnXbi5O27rFcXcJQNiAX8V5Fwos3Rlj9y+sGpE0fttw5usiaGmcDAsh0jOhVYMRjVTE
         XkNjlRcx4J43i+uqQdKnEL9C8b+1RBfxGEnzgd5YyeJ5mh9kFA5c/l9lo6Ef/egkYMry
         e9pA==
X-Forwarded-Encrypted: i=1; AJvYcCVG7VextNPw2zIG4Zt2g8dbaPeyvy5TX8wWQ/UB2cSKgCclxyGt+3hLqaEiOottO84VchDFezD/t74T@vger.kernel.org
X-Gm-Message-State: AOJu0YwGXAecs6mbalRJWq0X2McTNBfkf6YR9X55nbUNdibta2ocWuTc
	6EFCfsd9xeezStfT0nPADYhBmJ6NpiohWueCx/aJ5hAdRFM93T2o0EU5oAdMRiM2DC1tv2eSMGY
	5
X-Gm-Gg: ASbGncuMHWBY2ozuZR7RunmMN066FkMVgmoSXcPVZALZ+FaWpWOJlLpg1VuDiYM13MM
	9xTKb/u8R7p8d8lGw4+sy2+monBHiBIUAd97PJoIHvaoXkfcSX1VLr9HQxnAcToi07AsW8mtS5k
	fF9t/cXAR7Ln4dXIXt3w1V+PDdpQ7gvg4lr8RdRIKlyzJwA9RoBKDhrIuy3UjCll+pDl0usQpEk
	AxvsjIPjMo3sVef73lCeA0sAeyD0HVsgwVchiOH+6QIoo8bK/mFzV30Mdi40gsixJwE58pT0G80
	hwkbn9fuZB4REdfQ9G45HJkZzKuMAfBwA3oMMP/9H+64YSpAhucxrw==
X-Google-Smtp-Source: AGHT+IF1OyUGX9QaED/sDZkS9eJZ9gYij7zwJ8c8ovq4U+BP6af7VsWqnEYCb6d6Amdd2x4tpI0G/Q==
X-Received: by 2002:a05:600c:1550:b0:439:6dba:adf2 with SMTP id 5b1f17b1804b1-43ba66e7550mr81082225e9.15.1740883807490;
        Sat, 01 Mar 2025 18:50:07 -0800 (PST)
Received: from [127.0.1.1] ([2a02:c7c:7213:c700:e992:6869:474c:a63f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43aba532b0dsm137845975e9.13.2025.03.01.18.50.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Mar 2025 18:50:07 -0800 (PST)
From: Alexey Klimov <alexey.klimov@linaro.org>
Date: Sun, 02 Mar 2025 02:49:54 +0000
Subject: [PATCH 4/5] arm64: dts: qcom: qcm2290: add LPASS LPI pin
 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250302-rb1_hdmi_sound_first-v1-4-81a87ae1503c@linaro.org>
References: <20250302-rb1_hdmi_sound_first-v1-0-81a87ae1503c@linaro.org>
In-Reply-To: <20250302-rb1_hdmi_sound_first-v1-0-81a87ae1503c@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org, 
 Alexey Klimov <alexey.klimov@linaro.org>
X-Mailer: b4 0.14.2

Add the Low Power Audio SubSystem Low Power Island (LPASS LPI) pin
controller device node required for audio subsystem on Qualcomm
QRB2210 RB1. QRB2210 is based on qcm2290 which is based on sm6115.

While at this, also add description of lpi_i2s2 pins (active state)
required for audio playback via HDMI/I2S.

Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcm2290.dtsi | 41 +++++++++++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
index 2c90047f7dd867580836284721c60ed5983f3f34..623046ba833b6da284ffa4e30e65ea4ae5fb77a2 100644
--- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
@@ -18,6 +18,7 @@
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/soc/qcom,apr.h>
 #include <dt-bindings/sound/qcom,q6asm.h>
+#include <dt-bindings/sound/qcom,q6dsp-lpass-ports.h>
 
 / {
 	interrupt-parent = <&intc>;
@@ -650,6 +651,46 @@ data-pins {
 			};
 		};
 
+		lpass_tlmm: pinctrl@a7c0000 {
+			compatible = "qcom,qcm2290-lpass-lpi-pinctrl",
+				     "qcom,sm6115-lpass-lpi-pinctrl";
+			reg = <0x0 0x0a7c0000 0x0 0x20000>,
+			      <0x0 0x0a950000 0x0 0x10000>;
+
+			clocks = <&q6afecc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+			clock-names = "audio";
+
+			gpio-controller;
+			#gpio-cells = <2>;
+			gpio-ranges = <&lpass_tlmm 0 0 19>;
+
+			lpi_i2s2_active: lpi-i2s2-active-state {
+				sck-pins {
+					pins = "gpio10";
+					function = "i2s2_clk";
+					bias-disable;
+					drive-strength = <8>;
+					output-high;
+				};
+
+				ws-pins {
+					pins = "gpio11";
+					function = "i2s2_ws";
+					bias-disable;
+					drive-strength = <8>;
+					output-high;
+				};
+
+				data-pins {
+					pins = "gpio12";
+					function = "i2s2_data";
+					bias-disable;
+					drive-strength = <8>;
+					output-high;
+				};
+			};
+		};
+
 		gcc: clock-controller@1400000 {
 			compatible = "qcom,gcc-qcm2290";
 			reg = <0x0 0x01400000 0x0 0x1f0000>;

-- 
2.47.2


