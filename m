Return-Path: <devicetree+bounces-4229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1107B1933
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 13:03:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 46311B20B98
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 11:03:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB34836AEA;
	Thu, 28 Sep 2023 11:03:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E75237155
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 11:03:36 +0000 (UTC)
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C66D0CD7
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:03:32 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-5043a01ee20so18319166e87.0
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:03:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695899011; x=1696503811; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eDlULPpCaiOZl9KqGYW1vmjYvdhVYMx48DSYOBdmQVg=;
        b=oW6uf21sXjz0Uwly0ManHKBKSG3/qRGEMsoIuLTmi1NXw8ca3DyREypPj/H+BPschs
         N2u2tshrGRxy+ebW9jUfL2e8tLzzg6WbFTgU+ETqc3V6vphvRsBaaF/TUwjAH9Mr7UZ4
         tR2WkdoMzDduPMEYdTfX5jw+KnxIzMtSrRVPBkJTzcM/tK23LrWKIoJa4fDPDaTc5K4l
         kEHGYtXKOGFaIX2vDLlkRf06GaHX3WV90+ictZJISrngQ6D1aloEC52xO5PZeKbjisAm
         QhuddLrPBQ1fayxuZc4GhGa27byO2m6KF3/D2lcmkFFFbXMfaz6fMUoDqAmR9EoY5Oqi
         4Rxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695899011; x=1696503811;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eDlULPpCaiOZl9KqGYW1vmjYvdhVYMx48DSYOBdmQVg=;
        b=TyYf6Dqpq+j9EW/mi1qQ0XNRlGGjE1i1c8RnrwGxoL96C3dy/dKRXPNQPJ0FRvuwhi
         y5O5fy1xucGya1tBzQTHsijVuFDB9pn8FjFKo5MNYYt+08vTst21oLAyosDfLGm5Ju6H
         OyTHXXeyvBEJKOZTNVkVFFLCpq5ouhe03oUeOe9acBMqBxws0Mw7eenAGPw40nJpptSE
         nlioiLhTpl6npHnyWtMeaHfr18wzYWQO/4cA6jZX0wYSv8Z+IlMnz+yt1x7JY5dl6GVX
         k/hPMqu8+b2CmvBDWSofDJwyxzMQrqE3ynJvoIZlemSAtHXzF5ZV5cHbJdtiEOz16UWI
         CjOA==
X-Gm-Message-State: AOJu0YzoEPawPRrZ40pCq9szkMURWMoBe1duOpHuTgZ1Md7hOaskwqrk
	SZ2EIBs3MmGp9Pr4Ju/2pwS5Bw==
X-Google-Smtp-Source: AGHT+IErvB0i0xebvOmTr3KlHAWj13ou1LJDkFlraDvJjc4lPv8E9l3YRHzzf4GQ4sUSlchue1kE2Q==
X-Received: by 2002:a05:6512:ba4:b0:504:31a0:f9e2 with SMTP id b36-20020a0565120ba400b0050431a0f9e2mr981152lfv.58.1695899011133;
        Thu, 28 Sep 2023 04:03:31 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id u2-20020a056512040200b005030a35019dsm3052953lfk.178.2023.09.28.04.03.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 04:03:30 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: [PATCH v6 24/36] ARM: dts: qcom: pm8058: use defined IRQ flags
Date: Thu, 28 Sep 2023 14:02:57 +0300
Message-Id: <20230928110309.1212221-25-dmitry.baryshkov@linaro.org>
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

Use symbolic names for IRQ flags instead of using the numeric values.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/pm8058.dtsi | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/pm8058.dtsi b/arch/arm/boot/dts/qcom/pm8058.dtsi
index 913a511719fa..3683d7b60918 100644
--- a/arch/arm/boot/dts/qcom/pm8058.dtsi
+++ b/arch/arm/boot/dts/qcom/pm8058.dtsi
@@ -12,7 +12,8 @@ pwrkey@1c {
 			compatible = "qcom,pm8058-pwrkey";
 			reg = <0x1c>;
 			interrupt-parent = <&pm8058>;
-			interrupts = <50 1>, <51 1>;
+			interrupts = <50 IRQ_TYPE_EDGE_RISING>,
+				     <51 IRQ_TYPE_EDGE_RISING>;
 			debounce = <15625>;
 			pull-up;
 		};
@@ -61,7 +62,8 @@ pm8058_keypad: keypad@148 {
 			compatible = "qcom,pm8058-keypad";
 			reg = <0x148>;
 			interrupt-parent = <&pm8058>;
-			interrupts = <74 1>, <75 1>;
+			interrupts = <74 IRQ_TYPE_EDGE_RISING>,
+				     <75 IRQ_TYPE_EDGE_RISING>;
 			debounce = <15>;
 			scan-delay = <32>;
 			row-hold = <91500>;
@@ -135,7 +137,7 @@ rtc@1e8 {
 			compatible = "qcom,pm8058-rtc";
 			reg = <0x1e8>;
 			interrupt-parent = <&pm8058>;
-			interrupts = <39 1>;
+			interrupts = <39 IRQ_TYPE_EDGE_RISING>;
 			allow-set-time;
 		};
 	};
-- 
2.39.2


