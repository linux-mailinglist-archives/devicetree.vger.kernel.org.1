Return-Path: <devicetree+bounces-15124-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C35CB7E8A0C
	for <lists+devicetree@lfdr.de>; Sat, 11 Nov 2023 10:46:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F05E21C20849
	for <lists+devicetree@lfdr.de>; Sat, 11 Nov 2023 09:46:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34C6211714;
	Sat, 11 Nov 2023 09:46:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aX/h6miS"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB34911701
	for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 09:46:29 +0000 (UTC)
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B43353868
	for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 01:46:27 -0800 (PST)
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2c54c8934abso38441791fa.0
        for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 01:46:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699695986; x=1700300786; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SVTtu6pYkR0UVEWdHben4O/LG/815s2RPg8sTMtWYG0=;
        b=aX/h6miS8GIX1ZqLQdTQnIJFOrRp+Yh+gJHkquxLun1HP6tNXdLEDOHj04ZNuyOS2o
         z3xY3EewxcCt54GTcuSNehVEFTngByzBt1LmSaBKjjWE93KY7MokriWwWDKIgZI8X07E
         6A5oFj8yjNAL0BySsjoL/R/PSr0gqC0Alvd32MsyXfv0OZ6F6WCw4P6aeCLD1tHs686F
         LS+XAR68BTfRTkAePV2tu4EbkluYEc2PZtzzXxtwEmgNpp1j/vR3vRrXN60TzXyYuI4z
         EdVa2S7BTDOStYrpn1K2PnbXnxIvf1x5wI793i2yFmLFDS4liXbkhnbSKxeoEAt8Shyv
         v9tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699695986; x=1700300786;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SVTtu6pYkR0UVEWdHben4O/LG/815s2RPg8sTMtWYG0=;
        b=F58HrhOr43VePvxbMrDHU4DrUFMy8LzLddajns/DLnKodOFnU+b0iZ8nDeNiVolvBS
         mC5pCSY+hUE4ieI3FJwjUGiWZETP93C79Rem1YFKppXM296nfyi4kJx8843rFZ3pN++w
         VA2mdFHY0rTek6KtyEj21bvoHBZgRe/QcGuuuzSnLRK9eBVZMcgg1qHmVQPnpdY/WVmy
         zUJ5bawQZW5H0ieTCnRrxiLnYsMYBh1++4Lg4xDVp8HDmwqYcrWiL2Cj/rjc5r44QiFd
         NTIMvcUEHMuGa7U1Narz74hWmY5YAKzfb5wqg1HRrrRTj25LMNwrb8YYj+v8EZqnWM8T
         ZySA==
X-Gm-Message-State: AOJu0YwTrzyEhDsGSbzI5CF4s1vH+sBgtnrE3S4/jDpSSqiBQVLQ+dEq
	vaL+Fm67SG0ncJKa30SxWDccaA==
X-Google-Smtp-Source: AGHT+IF0eidGM7AYzIhV9yHBXmFKLt3sGRz9bIZrJcfxgiQ2gg4MZdPcbDoNPd4tb0nwmba7lVRVRQ==
X-Received: by 2002:a2e:9915:0:b0:2c0:52e:eafa with SMTP id v21-20020a2e9915000000b002c0052eeafamr1064875lji.29.1699695985873;
        Sat, 11 Nov 2023 01:46:25 -0800 (PST)
Received: from krzk-bin.monzoon.net (46-253-189-43.dynamic.monzoon.net. [46.253.189.43])
        by smtp.gmail.com with ESMTPSA id p37-20020a05600c1da500b004064ac107cfsm1695052wms.39.2023.11.11.01.46.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Nov 2023 01:46:25 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: qcom: qrb5165-rb5: correct LED panic indicator
Date: Sat, 11 Nov 2023 10:46:23 +0100
Message-Id: <20231111094623.12476-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There is no "panic-indicator" default trigger but a property with that
name:

  qrb5165-rb5.dtb: leds: led-user4: Unevaluated properties are not allowed ('linux,default-trigger' was unexpected)

Fixes: b5cbd84e499a ("arm64: dts: qcom: qrb5165-rb5: Add onboard LED support")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index 3bd0c06e7315..e43f73f1be1b 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -64,8 +64,8 @@ led-user4 {
 			function = LED_FUNCTION_INDICATOR;
 			color = <LED_COLOR_ID_GREEN>;
 			gpios = <&pm8150_gpios 10 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "panic-indicator";
 			default-state = "off";
+			panic-indicator;
 		};
 
 		led-wlan {
-- 
2.34.1


