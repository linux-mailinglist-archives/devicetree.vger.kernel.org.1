Return-Path: <devicetree+bounces-4238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B43747B193C
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 13:03:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id D1B3F1C2096D
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 11:03:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CE3E37148;
	Thu, 28 Sep 2023 11:03:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A4D36B0E
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 11:03:47 +0000 (UTC)
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E1DF10CC
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:03:42 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-5043a01ee20so18319338e87.0
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:03:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695899020; x=1696503820; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tzXt286sPhU+yVmzfDKl882XWnXgjzSmy9rWB6wpkCI=;
        b=UsPMDAwPQRpJ+EJbZtuawx9lmMdtJieWSX1gGK3SSQAbescWlXW4aSL55JIKbTTgGg
         8mm6H/TEHo8cAQ87J+NGVkdfJf4U+2IMnO4B4PIFLpWAM7EXrLInK+d9zQfQfKMmTLgw
         wN0kImDQcBkjDDV60NlVH+R5/t6VNIqOAcj+o8NT4D9skX+pM2Fywvh/bQepu2tuY37x
         0rUQ8maDH6FHj+vUCj/34PU3OS4H00nA7pKhPU9ycyN5unhGMXmYj+Dihb/82PmnMuwf
         VzVfbZ0XcCMhyx6jhCq7adfjexwbq18EBPO63s5nleuCmoq2955gsM0zdPb/cERGNVeJ
         mqeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695899020; x=1696503820;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tzXt286sPhU+yVmzfDKl882XWnXgjzSmy9rWB6wpkCI=;
        b=Dq+pNbCGnPs4HtL1KkxRBZ8SE9YLKIxUc9PIHxDjDCok0BXjGMdgQ7ivxOqmrCaGJM
         Ey4WHW6aKBCc02JDq94bLrsmuMXM1mKBaU04A2guZhhd1D/0Tr98a5L/e8MDF0pvdgTC
         vwv+rm+7ONbvkWQ26Wn1W2FJM8YWJYYOOm/JrWf+LYSZ8SjqIxPH/SR1e6giX53vmqPJ
         sp1TjKGzLyaTkRuERce3lu7efNEt2O41hYUWynsLNDtTgIZVUOXSCgz43f5Wl6nxzOu2
         YTBp6J7H3EpxroH6udTOT2iTrNXx/lLMGAyAeLr5XeHdkAA7Cs67OtaDapBYIo3I7/v2
         MmIQ==
X-Gm-Message-State: AOJu0YyA3SGsXKSXuPkmLaxHsOiowcDrYRI5GM1eRarmfROsYUZ9BfVI
	Womc0J5lqJjx3wfS1u3ShNXSOw==
X-Google-Smtp-Source: AGHT+IHZzuNkP/8GsAfbpN6MRNbr+OFRBsVahZwSUewqi9EERkhsBg2X+I9gHixCfUmuKRlZwATcdg==
X-Received: by 2002:a05:6512:46b:b0:500:c348:7efd with SMTP id x11-20020a056512046b00b00500c3487efdmr664134lfd.59.1695899020270;
        Thu, 28 Sep 2023 04:03:40 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id u2-20020a056512040200b005030a35019dsm3052953lfk.178.2023.09.28.04.03.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 04:03:39 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: [PATCH v6 34/36] ARM: dts: qcom: apq8060-dragonboard: rename mpp ADC channels to adc-channel
Date: Thu, 28 Sep 2023 14:03:07 +0300
Message-Id: <20230928110309.1212221-35-dmitry.baryshkov@linaro.org>
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
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Use generic `adc-channel@N' node names for board-specific ADC channels
(routed to MPP pins) to follow the schema.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../arm/boot/dts/qcom/qcom-apq8060-dragonboard.dts | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8060-dragonboard.dts b/arch/arm/boot/dts/qcom/qcom-apq8060-dragonboard.dts
index 8b70d4a59c7b..bf2527941917 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8060-dragonboard.dts
+++ b/arch/arm/boot/dts/qcom/qcom-apq8060-dragonboard.dts
@@ -998,23 +998,27 @@ &pm8058_xoadc {
 	xoadc-ref-supply = <&pm8058_l18>;
 
 	/* Board-specific channels */
-	mpp5@5 {
+	adc-channel@5 {
 		/* Connected to AOUT of ALS sensor */
 		reg = <0x00 0x05>;
 	};
-	mpp6@6 {
+
+	adc-channel@6 {
 		/* Connected to test point TP43 */
 		reg = <0x00 0x06>;
 	};
-	mpp7@7 {
+
+	adc-channel@7 {
 		/* Connected to battery thermistor */
 		reg = <0x00 0x07>;
 	};
-	mpp8@8 {
+
+	adc-channel@8 {
 		/* Connected to battery ID detector */
 		reg = <0x00 0x08>;
 	};
-	mpp9@9 {
+
+	adc-channel@9 {
 		/* Connected to XO thermistor */
 		reg = <0x00 0x09>;
 	};
-- 
2.39.2


