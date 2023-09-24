Return-Path: <devicetree+bounces-2831-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E65837ACB63
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 20:33:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 8A64A2816A3
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 18:33:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B2C3D528;
	Sun, 24 Sep 2023 18:33:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3597D294
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 18:33:42 +0000 (UTC)
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1E6CFB
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 11:33:41 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-401187f8071so34998815e9.0
        for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 11:33:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695580420; x=1696185220; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Y7nT8sXRV37KYa74CvXJWM9/EJEehx06DaI5NqBrPJk=;
        b=OcG4ZenAqOGr2Hq1p5RAAC3mWNVt5sg7/uwqwWph3yEbQ7i6WaQlciIShnGDHioDpM
         0og16Gdp0kZkkn/831NKo7AdD6H4FApE8n5KiFlqIGpzZwGsQ5Qhm32NrOiLuFSIGKjV
         4csKrsQZ3LDwilVotJNTqke+GZisq00PM7KsxEbDoXwEMAYn4EeHbrQ9OWjZ7C2tAEb4
         J813RJySD3sUYHW9+ZVcBB/fBU0xJzxezvb0DOtHZn0uWjFAHMp1fXbZO54kjWwy6A1R
         pR0AVdnqPOrZgYLX9Ez5qHz0T+ZHpw1DvIm9w53fd5sHJemzsl5cKL6DVRY85Lg8NkPY
         LA1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695580420; x=1696185220;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y7nT8sXRV37KYa74CvXJWM9/EJEehx06DaI5NqBrPJk=;
        b=bzQsH0UM3G5n3N47Jw93pX+hld+Nq5X+WM4eGdLlIJ9BRmRhEc4y294skS9eefpJw5
         8UAUH+RMiju7ZXAlIbvhZJoXN5KvbWx3yMy3NyQwfwg8G5pPV9+i+gV7viS06bzhEFnX
         McwXMgjAD00VhoE//Z5x8VWOljfiLhlfYgxE67wk8Um2QT4MPrwAWpAWiFEDF8LTigGu
         X7qYQEuo4qym5cu8xmw01zQpx739dlR+zHSFvli3bXzexbz+RBIR7pn3EZBgpIB/nAZQ
         ttpni8pi/gn1LI9zvOVI268ZS2tZkgy6oSIdkY9ps8bL/8SeQT4plOwk3OB7mXXIkd7h
         v/Ew==
X-Gm-Message-State: AOJu0YzM4TwcZY1ALXNMuft5NgXD8wyYSSTQ67BJ/L8bQbZAoG3rJFNo
	PNSnJbFXZNMocrCNsSgo6S2sAA==
X-Google-Smtp-Source: AGHT+IFVu5jnVcxO0oSHPDf57Cb+b10+I2/Y0w/bUNFsBygBYmaKYVh+Zt9KhvQVmtch/s8NePkFIQ==
X-Received: by 2002:a05:600c:1d18:b0:405:36f0:fa88 with SMTP id l24-20020a05600c1d1800b0040536f0fa88mr5757204wms.13.1695580420040;
        Sun, 24 Sep 2023 11:33:40 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id k10-20020adfd22a000000b0032320a9b010sm1972148wrh.28.2023.09.24.11.33.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Sep 2023 11:33:39 -0700 (PDT)
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
Subject: [RESEND PATCH 1/2] ARM: dts: qcom: apq8064: drop label property from DSI
Date: Sun, 24 Sep 2023 20:33:34 +0200
Message-Id: <20230924183335.49961-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

DSI node does not accept nor use "label" property:

  qcom-apq8064-asus-nexus7-flo.dtb: dsi@4700000: Unevaluated properties are not allowed ('label' was unexpected)

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-apq8064.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
index 9e033dc6e391..7fd3f164e7d4 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
@@ -1270,7 +1270,6 @@ mmss_sfpb: syscon@5700000 {
 		dsi0: dsi@4700000 {
 			compatible = "qcom,apq8064-dsi-ctrl",
 				     "qcom,mdss-dsi-ctrl";
-			label = "MDSS DSI CTRL->0";
 			#address-cells = <1>;
 			#size-cells = <0>;
 			interrupts = <GIC_SPI 82 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.34.1


