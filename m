Return-Path: <devicetree+bounces-15162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 589BD7E8BA7
	for <lists+devicetree@lfdr.de>; Sat, 11 Nov 2023 17:42:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 54C151C2087C
	for <lists+devicetree@lfdr.de>; Sat, 11 Nov 2023 16:42:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D39011774A;
	Sat, 11 Nov 2023 16:42:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kVulnaws"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B5401426D
	for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 16:42:37 +0000 (UTC)
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F6F73AA8
	for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 08:42:35 -0800 (PST)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-54394328f65so4825522a12.3
        for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 08:42:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699720954; x=1700325754; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RL7d8VoxJlR4XNP9HJLJN0AQS0DI/va4bZI7OWxqTno=;
        b=kVulnaws97v7mjBkpaYaUICXVOwZnd1mKRrcRXpUsrIOjBSWyyncGbX0+WYMUE94Ym
         e8vwEz/SNZNBzLwlfwnHzYw0M49uY9pQHPe3Pm32eF6IzMtm+tqRLVviL4pbBdp4l0jF
         +FoFPo9tii0PlTRlTmtkz0kfK9Yoi/9NepZyDgL3maUIpK+o/521YPfTEHcpW9GjVhh4
         Ou3f0B2W+UBtJFvpREpS47PSaEdho+8RnK7kKGm+AvnXPGXLrdPt84htfnFReYIu29A6
         Fle/BUjs5PDpa7W86bgiTyc4qV3Zm6f/he08xlSFnGNMhiQBYCDrJ/Cim0NSlxVhH87G
         g2mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699720954; x=1700325754;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RL7d8VoxJlR4XNP9HJLJN0AQS0DI/va4bZI7OWxqTno=;
        b=w96348w43kfFonsFR2LF1DHF0nG/o6NMgdlqdIO7HTnGqexDuqQrPr1OsKBSZBdP/x
         iPHN9vyzbkKE6XqCrlHsGW65RPk91BzgXOr0cLMoXoZzPcmgh/Zww2rtMbLNbf3RAqFl
         83rBCpzWgnh5Ci0dC9P4Em5ODm8RYbZE1Bl6vXv712ye7GwNetk588nXiXpATQS0Qt/J
         iZyKfaOIVSVJdzEoZ3pDRCSLqwt5S4dxzeBCDSe3ApMFnZ6BsBDDbmJ2IkBdub8kpEeF
         3VpuzshvBpHP/H5B3MwDluLJ49a58nFTdYibuE8BOsCmWxmhXCeyVhhu3mCbN77bwmxF
         5MLw==
X-Gm-Message-State: AOJu0Ywn9dMT6QInuB4RXumBOJUV+LDXkCw6RTZzFhylH+6sEpZJq8ha
	emoa+PTuGV7/yQ6UNFmSI+cNKA==
X-Google-Smtp-Source: AGHT+IFEwuIGXCh7j/HovpdUTndrpARTQgb4kaubQQyR+HNaiq2m4ooVUQzLZ6MbGoiTRuZnQYsJcA==
X-Received: by 2002:a05:6402:1a48:b0:547:b04:db3a with SMTP id bf8-20020a0564021a4800b005470b04db3amr1421103edb.21.1699720954065;
        Sat, 11 Nov 2023 08:42:34 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id k25-20020aa7c059000000b0053dd8898f75sm1161917edo.81.2023.11.11.08.42.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Nov 2023 08:42:33 -0800 (PST)
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
Subject: [PATCH 2/6] arm64: dts: qcom: sc8180x-primus: use 'gpios' suffix for PCI GPIOs
Date: Sat, 11 Nov 2023 17:42:25 +0100
Message-Id: <20231111164229.63803-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231111164229.63803-1-krzysztof.kozlowski@linaro.org>
References: <20231111164229.63803-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Linux handles both versions, but bindings expect GPIO properties to
have 'gpios' suffix instead of 'gpio':

  sc8180x-primus.dtb: pci@1c10000: Unevaluated properties are not allowed ('perst-gpio', 'wake-gpio' were unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8180x-primus.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x-primus.dts b/arch/arm64/boot/dts/qcom/sc8180x-primus.dts
index fd2fab4895b3..8eec33661ef6 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x-primus.dts
+++ b/arch/arm64/boot/dts/qcom/sc8180x-primus.dts
@@ -531,8 +531,8 @@ mdss_edp_out: endpoint {
 };
 
 &pcie1 {
-	perst-gpio = <&tlmm 175 GPIO_ACTIVE_LOW>;
-	wake-gpio = <&tlmm 177 GPIO_ACTIVE_HIGH>;
+	perst-gpios = <&tlmm 175 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 177 GPIO_ACTIVE_HIGH>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie2_default_state>;
 
-- 
2.34.1


