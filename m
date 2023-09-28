Return-Path: <devicetree+bounces-4236-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E3A87B1939
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 13:03:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 2ACBD1C20A5B
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 11:03:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9288F37152;
	Thu, 28 Sep 2023 11:03:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1942037158
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 11:03:46 +0000 (UTC)
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CA4C10CB
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:03:41 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-504a7f9204eso2434355e87.3
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:03:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695899019; x=1696503819; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Hx4XSe/NLtIIcU8XS/aqeNQhQByGw63IXr2PekRrcFA=;
        b=McrecGX5pS5jvcL6enNeoZq2cKd5TqmVvqSSGd5SSSbiE1RoyOODUM3gHTTQm/UvXB
         Lt0S9gpXhJc6tCsj3VrEb/M3zGYQLRMJAcYCoZ8cPQChk1a+ZeBXkfTWpm9Klkd0id9N
         gUk8BPT14tEiPajbltHsOAZN3yZzN+GqlZ9pPRl5WCkY4Ulk/ZfVZQuI4GyMW0nrlCrb
         v7yiiNBULTg2aKOfaoBmQIYI8Mkja3c0LMdJ1gKWbwctzzSSF9rsobfiGYJrT5vONGYN
         EuQJXREOhPhtGPhzYge4AZCAXrN/GQQJepqofw1MT/wD8ybCZnGdTzYz1X+G+IRE4GRw
         uOFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695899019; x=1696503819;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Hx4XSe/NLtIIcU8XS/aqeNQhQByGw63IXr2PekRrcFA=;
        b=qu/fU0egdzb7WFzVm16PKVC4fVaU+I6348enKNlt2n3E96lI/pr4bRQKvel7NstQGD
         s/ne6TuNmLUr+RkP1rrgzv9jGAjpH1bGoBa9zTLDGQg1GN0faHq5vsHxvUicRt7+c6tu
         KJFVq78X/bi5swVgAhyNF+p0NWJDHiI8lPahfb4WyXNbFJQwOjg71xHdynqOLkR310r1
         yNvKK0gZyRtYI6tII5hUqzFBSgx2ZXaJhkRdvTthZIWZc11QtLNr7NwqL+NhlMnZRS0X
         UOuybC4WXzTjF80EhgwO7Vzoa8TVSYh+uqhWDf7XY49ARyl1auCUsxM11zGms2QB0j1i
         qi2A==
X-Gm-Message-State: AOJu0YwR1JY3xtN0U5oJJD7kY+Ht4ZHEjtac+7AYKG5sZpsofLbe2zXD
	bTU6LVkwVBh3yevKLU+8++zaYmdUJnAIAgCwDvv+dg==
X-Google-Smtp-Source: AGHT+IFcfXAcbqZxNRqPcWIczG+2Z0sdN8Y0d++EY7MbLgyLbt6DeSVzavTF5TVYK1k7jBUX7T5xXA==
X-Received: by 2002:a19:6d03:0:b0:503:258d:643c with SMTP id i3-20020a196d03000000b00503258d643cmr761967lfc.21.1695899019507;
        Thu, 28 Sep 2023 04:03:39 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id u2-20020a056512040200b005030a35019dsm3052953lfk.178.2023.09.28.04.03.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 04:03:38 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: [PATCH v6 33/36] ARM: dts: qcom: pm8921: Disable keypad by default
Date: Thu, 28 Sep 2023 14:03:06 +0300
Message-Id: <20230928110309.1212221-34-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230928110309.1212221-1-dmitry.baryshkov@linaro.org>
References: <20230928110309.1212221-1-dmitry.baryshkov@linaro.org>
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

Since keypad is used only by some devices, disable it by default and enable explicitly.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/pm8921.dtsi          | 1 +
 arch/arm/boot/dts/qcom/qcom-msm8960-cdp.dts | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/qcom/pm8921.dtsi b/arch/arm/boot/dts/qcom/pm8921.dtsi
index 360a179670c5..058962af3005 100644
--- a/arch/arm/boot/dts/qcom/pm8921.dtsi
+++ b/arch/arm/boot/dts/qcom/pm8921.dtsi
@@ -43,6 +43,7 @@ pm8921_keypad: keypad@148 {
 			debounce = <15>;
 			scan-delay = <32>;
 			row-hold = <91500>;
+			status = "disabled";
 		};
 
 		pm8921_gpio: gpio@150 {
diff --git a/arch/arm/boot/dts/qcom/qcom-msm8960-cdp.dts b/arch/arm/boot/dts/qcom/qcom-msm8960-cdp.dts
index a5ea4843db43..36f4c997b0b3 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8960-cdp.dts
+++ b/arch/arm/boot/dts/qcom/qcom-msm8960-cdp.dts
@@ -102,6 +102,8 @@ MATRIX_KEY(0, 3, KEY_CAMERA)
 		>;
 	keypad,num-rows = <1>;
 	keypad,num-columns = <5>;
+
+	status = "okay";
 };
 
 &rpm {
-- 
2.39.2


