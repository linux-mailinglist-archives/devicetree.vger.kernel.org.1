Return-Path: <devicetree+bounces-14241-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E58247E3005
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 23:44:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 227121C209A6
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 22:44:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6954D1DA32;
	Mon,  6 Nov 2023 22:44:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Z9HuSfM4"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE98C38E
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 22:44:22 +0000 (UTC)
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1C44D7B
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 14:44:20 -0800 (PST)
Received: by mail-oi1-x236.google.com with SMTP id 5614622812f47-3b2b1af09c5so2373688b6e.0
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 14:44:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1699310660; x=1699915460; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MQfwiBgyb0NDLVCz1up5WP4xaDEfvCkGE4sF98eZ7HU=;
        b=Z9HuSfM4FPnV9mJ/CsS4B3+t92xyYhdaQo8Z8cmhKiY+JnnGVC8HwpIgqcuIdkDt1X
         Wae4JtthLkDNRFFcXWo8l1dX8lzoyl4FF6phaFTtyElxSB5ZcgVqox4eMGEUA4u3RlaG
         i0/52SlJlA0kWimJq0bLGOkH+CjjLjnR2S39c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699310660; x=1699915460;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MQfwiBgyb0NDLVCz1up5WP4xaDEfvCkGE4sF98eZ7HU=;
        b=rsahC7clbsGkpQKERecat3mQJAr7g0AyHD3g0mEYq6vvNOMwWULRd8b20uYG3JIUod
         si6yBj6SVrVo3DGuDfzy7pSov6XBCBlJEp4+WaihVuJrWrbkExaMmqhZCnUTb3j+SB74
         e0oKSvQAdrGafOGz3V0TukNw6Ft3Y0873uWQWTYHkJiqkkNry79EuAgTBYgcQG1Qk19S
         MSSU/xEN7edZD2s1kZT1rg3Tq/pqwSH1XKu9tLp3oV7kcANbaM1NvEYCDgFK7BUYBRH6
         LjselOJX34miDrl++nEgFMxaowkv01wr1CKGLVPYQFi+hR12RZ5L7dHQDdoUUcCLs6wE
         dIhA==
X-Gm-Message-State: AOJu0Yynubj70TLQZVyIklAi2O5eJd5LT6hRdJ9f8Kj32Xg5AEyFwVhj
	VVf6RjnscRru/E76Cnel6U3zxw==
X-Google-Smtp-Source: AGHT+IFdMSyh5AqVjDStLHve/AJFaFnM1P4vCt/67yxeGNDa/ie7acpEAVZqAzrV0qH2B1+wMAJiHw==
X-Received: by 2002:aca:1b0d:0:b0:3a7:52b9:cbfe with SMTP id b13-20020aca1b0d000000b003a752b9cbfemr25606422oib.32.1699310660283;
        Mon, 06 Nov 2023 14:44:20 -0800 (PST)
Received: from tictac2.mtv.corp.google.com ([2620:15c:9d:2:16a7:2c01:9126:36a4])
        by smtp.gmail.com with ESMTPSA id c10-20020a056a00248a00b006b725b2158bsm6043402pfv.41.2023.11.06.14.44.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Nov 2023 14:44:19 -0800 (PST)
From: Douglas Anderson <dianders@chromium.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>
Cc: swboyd@chromium.org,
	linux-watchdog@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>,
	Andy Gross <agross@kernel.org>,
	Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/9] arm64: dts: qcom: sm8150: Make watchdog bark interrupt edge triggered
Date: Mon,  6 Nov 2023 14:43:31 -0800
Message-ID: <20231106144335.v2.4.I23d0aa6c8f1fec5c26ad9b3c610df6f4c5392850@changeid>
X-Mailer: git-send-email 2.42.0.869.gea05f2083d-goog
In-Reply-To: <20231106144335.v2.1.Ic7577567baff921347d423b722de8b857602efb1@changeid>
References: <20231106144335.v2.1.Ic7577567baff921347d423b722de8b857602efb1@changeid>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

As described in the patch ("arm64: dts: qcom: sc7180: Make watchdog
bark interrupt edge triggered"), the Qualcomm watchdog timer's bark
interrupt should be configured as edge triggered. Make the change.

Fixes: b094c8f8dd2a ("arm64: dts: qcom: sm8150: Add watchdog bark interrupt")
Reviewed-by: Guenter Roeck <linux@roeck-us.net>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

(no changes since v1)

 arch/arm64/boot/dts/qcom/sm8150.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index 97623af13464..ad4fab61222b 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -4170,7 +4170,7 @@ watchdog@17c10000 {
 			compatible = "qcom,apss-wdt-sm8150", "qcom,kpss-wdt";
 			reg = <0 0x17c10000 0 0x1000>;
 			clocks = <&sleep_clk>;
-			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 0 IRQ_TYPE_EDGE_RISING>;
 		};
 
 		timer@17c20000 {
-- 
2.42.0.869.gea05f2083d-goog


