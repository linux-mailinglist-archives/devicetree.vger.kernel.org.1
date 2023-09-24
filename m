Return-Path: <devicetree+bounces-2832-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 273AE7ACB65
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 20:33:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id C16122816C6
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 18:33:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 783FCDDC6;
	Sun, 24 Sep 2023 18:33:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159D3D2EE
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 18:33:45 +0000 (UTC)
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61E9AFC
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 11:33:43 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-3214cdb4b27so4769169f8f.1
        for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 11:33:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695580422; x=1696185222; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G2YA6VGuZT/cSJot2FxC+vz9o1Sq5pRaeYXhHT3S/jE=;
        b=Q6SH87Vz7htzAdLWGIa8IpLsiYj9rg1b7ZQVNa6ynwQBWbZJb2Y6TBR2V3YaSY2twK
         aweV5ItOMnHJ9381Zofb4Du3+M3UlH2HYpey8hH4uAv6LVGJArSy3+xF2k8V4ubvfhSS
         kSuzqRtADiNlccBWop6sRpSHhsZQJPCyTTGXVIQMMz13wB0G+dzO+ET0nRCel5syTZt5
         Vf/TkU1eOFSp4uCEszobQ6LbKzWHSdF0dwJQpFj8NL12FKxLTIQ17/g+ehEioirblzqP
         QUHe6ETKjbdO9wwz08lJp2C9MQ+dQdnfZkyNW/lV5uSAYSSAgjgYnL+s+i0ylj3JkrwB
         GehQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695580422; x=1696185222;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G2YA6VGuZT/cSJot2FxC+vz9o1Sq5pRaeYXhHT3S/jE=;
        b=v4iDCP98bEGgga2yxAbmpo9vAv17IoxHHiu7n6YcW3wccLDkBnB8OQgYbgEtK75gQR
         rV6xKj42kVAoMhhNuXvh00/LCL9qRNnJjukOL+8reSAFVn/UvwlSVXcrNCiMGA0wyMeN
         le6r8JCPFjGi8qb88mAr2CECLm9/GqLXF/Qt+dDJwMhaZIo5kcXzoh0ZeRwM0Tb2xzVa
         gN16pHhnZVvkOUhGIGjCFhHD9vOjPoTakxf/SgxF6zfcDIDJ9I9EbyJ1PQystMMoONhF
         dDsNRvGhkXvurxR8kLzdpDrEJUmbaIKK4vuGMBQRfSPbkpHNNpxnWYNTcaapszjLRb+3
         EhLg==
X-Gm-Message-State: AOJu0YwA6kAC50TqZfYBGQvSrkUvrFK5Ypju2tyZ3gUn2+papln6tUWx
	eLCtM1hDn8vMvE+8WAkU6Wt0jQ==
X-Google-Smtp-Source: AGHT+IHdN3UgAsFuA4CXCn5ra23ZJBcYiGcG7vszyEbV03U7f23hSKmo+MuXXCn5VJv0gDlZgE0D2Q==
X-Received: by 2002:a5d:5083:0:b0:31f:fb5d:96da with SMTP id a3-20020a5d5083000000b0031ffb5d96damr3652666wrt.64.1695580421752;
        Sun, 24 Sep 2023 11:33:41 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id k10-20020adfd22a000000b0032320a9b010sm1972148wrh.28.2023.09.24.11.33.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Sep 2023 11:33:41 -0700 (PDT)
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
Subject: [RESEND PATCH 2/2] ARM: dts: qcom: sdx65: fix SDHCI clocks order
Date: Sun, 24 Sep 2023 20:33:35 +0200
Message-Id: <20230924183335.49961-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230924183335.49961-1-krzysztof.kozlowski@linaro.org>
References: <20230924183335.49961-1-krzysztof.kozlowski@linaro.org>
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

Bindings expect clocks to be in different order:

  qcom-sdx65-mtp.dtb: mmc@8804000: clock-names:0: 'iface' was expected
  qcom-sdx65-mtp.dtb: mmc@8804000: clock-names:1: 'core' was expected

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-sdx65.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi b/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi
index 311fd01a4f9e..6d1bf0eeb139 100644
--- a/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi
@@ -461,9 +461,9 @@ sdhc_1: mmc@8804000 {
 			interrupts = <GIC_SPI 210 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 227 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "hc_irq", "pwr_irq";
-			clocks = <&gcc GCC_SDCC1_APPS_CLK>,
-				 <&gcc GCC_SDCC1_AHB_CLK>;
-			clock-names = "core", "iface";
+			clocks = <&gcc GCC_SDCC1_AHB_CLK>,
+				 <&gcc GCC_SDCC1_APPS_CLK>;
+			clock-names = "iface", "core";
 			status = "disabled";
 		};
 
-- 
2.34.1


