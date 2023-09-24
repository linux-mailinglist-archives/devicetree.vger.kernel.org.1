Return-Path: <devicetree+bounces-2834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 674337ACB6C
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 20:39:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 713BE1C20826
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 18:39:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60FD3DDC7;
	Sun, 24 Sep 2023 18:39:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C7B3D2EE
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 18:39:21 +0000 (UTC)
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2AA8FB
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 11:39:19 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-40531812168so54032225e9.1
        for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 11:39:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695580758; x=1696185558; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=o734mewGMtz+2kpo5WoDnDG7d6uU4MuaMiFRPG38+aw=;
        b=uOYTGBRhk284gNIbRFyO6MjIm9QNPAiC7zHwfGgAZt/lPcU3W6/gAy5aOAwY+3r/AJ
         2wsTZc2Y55xCKqlC2FKnbjARCPM5jqGBO0dAdQ4C6bPSe8rfOChmGaqmukf5WOxUgm2D
         QxNu7e67saaWvLD8L6BDQVM4mwAMK+TBXBebuGeclKABgmwjtdpO1+CXn9j1wKKbIISr
         C+Q46ISBsnPe02rpthkvfTgeHjilR2zs0HHSqYYqxseA/0OKv2jL8E6TsSwxldCRvbCd
         Fisb+jSS0h74ata5f5RndrnX64wfYDh83B2UkpE7iq00SN/UPTSbCbWoEWQj+0S12mNM
         fA6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695580758; x=1696185558;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o734mewGMtz+2kpo5WoDnDG7d6uU4MuaMiFRPG38+aw=;
        b=j0b/hFdr1JyubWyFiu53q7rRvGyVKbfCqUQNzTTC7pwmTiM/MW0Ild4ghhM17JGt+d
         Ebwnlh+J5Ssbb1IymT7eWHpGpL1bEOdvWVqWmFlCnpdX4eNDcPmJ4MbGyzJ9SphL8KOn
         tcBiDOsZ1hZVOcAc7dmEDWzk/UVyBzN1cOyX8ulIt6+TNRhvVX8jU1E79HINYNkq/xtr
         H6VhBoRztEOJHicuJJNoOF27nBcuusURgbbitF8Lji0dUhEHKcsPKUyUBnCqoNGoF8O5
         W3uSLcNOqOK1zKWd9xYXLg+LoQq4/OxjhSJ9hu2PfJRcaVyN6Pp47+mZtQTI5sau7wyW
         Rp7A==
X-Gm-Message-State: AOJu0Yw8DpnXtu68GB19FrofhfqFKP8pB34E4zE7P4ZXMt+2YDGbq/Nk
	X8fCGqdoVTlIZDG45TENkvxLxQ==
X-Google-Smtp-Source: AGHT+IG5UN9LXXSN96zid3SP8/ewFjj9oimFPhHYXF5OhA2nxG1Fa7TRXs8140wgRl9trJfDlcO3LQ==
X-Received: by 2002:a05:600c:22c9:b0:405:36a0:108f with SMTP id 9-20020a05600c22c900b0040536a0108fmr4263049wmg.41.1695580758059;
        Sun, 24 Sep 2023 11:39:18 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id v20-20020a05600c215400b00401b242e2e6sm7570446wml.47.2023.09.24.11.39.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Sep 2023 11:39:17 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Stephen Boyd <sboyd@codeaurora.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [RESEND PATCH 1/4] ARM: dts: qcom: apq8064: drop incorrect regulator-type
Date: Sun, 24 Sep 2023 20:39:11 +0200
Message-Id: <20230924183914.51414-1-krzysztof.kozlowski@linaro.org>
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

regulator-fixed does not have a "regulator-type" property:

  qcom-apq8064-ifc6410.dtb: regulator-ext-3p3v: Unevaluated properties are not allowed ('regulator-type' was unexpected)

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-apq8064-asus-nexus7-flo.dts | 1 -
 arch/arm/boot/dts/qcom/qcom-apq8064-ifc6410.dts         | 1 -
 2 files changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064-asus-nexus7-flo.dts b/arch/arm/boot/dts/qcom/qcom-apq8064-asus-nexus7-flo.dts
index c57c27cd8a20..c0dd6399f597 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8064-asus-nexus7-flo.dts
+++ b/arch/arm/boot/dts/qcom/qcom-apq8064-asus-nexus7-flo.dts
@@ -36,7 +36,6 @@ ext_3p3v: regulator-ext-3p3v {
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 		regulator-name = "ext_3p3v";
-		regulator-type = "voltage";
 		startup-delay-us = <0>;
 		gpio = <&tlmm_pinmux 77 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064-ifc6410.dts b/arch/arm/boot/dts/qcom/qcom-apq8064-ifc6410.dts
index 96307550523a..b0c5e7bd5e74 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8064-ifc6410.dts
+++ b/arch/arm/boot/dts/qcom/qcom-apq8064-ifc6410.dts
@@ -58,7 +58,6 @@ ext_3p3v: regulator-ext-3p3v {
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 		regulator-name = "ext_3p3v";
-		regulator-type = "voltage";
 		startup-delay-us = <0>;
 		gpio = <&tlmm_pinmux 77 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
-- 
2.34.1


