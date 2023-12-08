Return-Path: <devicetree+bounces-23096-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B5380A3A3
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 13:43:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 348141C20BF2
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 12:43:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3143213ADC;
	Fri,  8 Dec 2023 12:43:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bt/OT6Bf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F19C7199D
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 04:43:35 -0800 (PST)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-54ca43031d1so1895905a12.0
        for <devicetree@vger.kernel.org>; Fri, 08 Dec 2023 04:43:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702039414; x=1702644214; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hq7OTSSO5jL1zKGxG1x1x9EuleHIb2ireoAXlk/78G4=;
        b=bt/OT6BftpmxfmrZdmLWcD44IKMo1plC5Ty2ggONm/epmqqOfvYFRREYCtomJgc643
         2S7yC2InRyPKZxV5dNlf5+nJGAuQ8y907WxOdCFPmwTsB9PmbNbJH73HL5rkFe2YL+yC
         4tmZ4QBTGeqiqiDBndUk3P6z0oUKo0sYYufmykjHHGhnn5mPC+ruuazM+wpEhLhNREO8
         zU9P98QfSpzuAHsdRGhm9y1xdJbyIIwxWsY5ZlC0rw8Bz99p4GiHiiOqjDXbjzq1OefH
         Y61wZfYH+KnMDaFppAfyCdsuXHz5ABrblb+nqFMdBJXO2S9v47YPXkUKbtje6HWGQFmf
         mv4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702039414; x=1702644214;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hq7OTSSO5jL1zKGxG1x1x9EuleHIb2ireoAXlk/78G4=;
        b=rJSwDbnTI5FiQerQ33Tbn1RBdltSUVnVxS9TmWzIeEzJ2F5XNEE7wKx6KxFiqP5y/2
         eHNY/778nVVS0kK1Vp6cg/+yCaRP+nRTKA8AGfzLCeUcPmukZBZCn48Jc7ueuzUhl0lc
         ikvf9nC8k1o2FqmMj4FSZuIWBXJHNOHTMzPbNCrFmOiHhw2i+Bj3HtWnG/Lp3gMMOIj+
         aDwspmCRvvoxZiBXtUrUXlbGECyDDyzSXBE4wKsnACLHZjzG/bE6et1WHF7hmOnGn1mf
         sU8NjVKba6Bd4rS5dLjxQNWHx3zzcDPWd+vO6yS0WoSvT0Bf0iG625k6bdicubsqC3RJ
         Ukvg==
X-Gm-Message-State: AOJu0Yx2fjulFAF/zP9VuSjmrbXAGLpQMwj0RkNG5fk9XxWmnAZ7ndGJ
	u2K2FOXyjidb1WBNmhUuN2WBBg==
X-Google-Smtp-Source: AGHT+IFa7aLm3Iljw5/1elYh9fWl8/YSbM+A6pDPRDKw9/FBaWRFdTpLVngwjQVe+S9O/f4BEVF2vw==
X-Received: by 2002:a17:906:2618:b0:a09:e781:97ef with SMTP id h24-20020a170906261800b00a09e78197efmr2237620ejc.73.1702039414441;
        Fri, 08 Dec 2023 04:43:34 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id tl18-20020a170907c31200b00a1da2c9b06asm970989ejc.42.2023.12.08.04.43.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Dec 2023 04:43:34 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: qcom: pm8550: drop PWM address/size cells
Date: Fri,  8 Dec 2023 13:43:32 +0100
Message-Id: <20231208124332.48636-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The address/size cells in PWM node are needed only if individual LEDs
are listed.  If multi-led is used, then this leads to dtc W=1 warnings:

  pm8550.dtsi:65.19-73.5: Warning (avoid_unnecessary_addr_size): /soc@0/spmi@c400000/pmic@1/pwm:
    unnecessary #address-cells/#size-cells without "ranges" or child "reg" property

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/pm8550.dtsi | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/pm8550.dtsi b/arch/arm64/boot/dts/qcom/pm8550.dtsi
index db3d5c17a77d..797a18c249a4 100644
--- a/arch/arm64/boot/dts/qcom/pm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm8550.dtsi
@@ -64,9 +64,6 @@ pm8550_flash: led-controller@ee00 {
 
 		pm8550_pwm: pwm {
 			compatible = "qcom,pm8550-pwm", "qcom,pm8350c-pwm";
-
-			#address-cells = <1>;
-			#size-cells = <0>;
 			#pwm-cells = <2>;
 
 			status = "disabled";
-- 
2.34.1


