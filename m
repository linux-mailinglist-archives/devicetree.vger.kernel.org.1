Return-Path: <devicetree+bounces-4232-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 85FAF7B1934
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 13:03:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 35AF828285E
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 11:03:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0387336B1C;
	Thu, 28 Sep 2023 11:03:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9FB36B1F
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 11:03:39 +0000 (UTC)
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99529CE6
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:03:35 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-503f39d3236so20707808e87.0
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:03:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695899014; x=1696503814; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yrAjsdbjqNoZfzO46ca2VQOrSbv12nquDzMHZ51VtI0=;
        b=QO00yeOjS1yiKCixyVqANqlL2nHJetvWymCPXxAok2Hc/IpvNZnodJg0lV5HVxFZyC
         TxA2IXQ5S0kvdGiJBJs0y1KZL4JCv7IqnobtfzQgvdnMpPoS+646IN5VRrgZBYy7jruy
         BifpcHjKj9NtdYt6aZbywnOMRjFE1IErHZayt2vxZVxZ2wFir+K+kd31egJKnxfOhTM9
         WBkjxnAeKl7UY7/p4j2nzW2WHBUNNTznrIse7cmveIpEKcd9YlmG7acGEscK3vAUHBu7
         Tsx1yX48vvDrvEdtG6Gco2MlXIDMdbyh8RUJ/7Z6NdqixWG/ldfI7IsPEbKhtlSPnIxs
         1BAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695899014; x=1696503814;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yrAjsdbjqNoZfzO46ca2VQOrSbv12nquDzMHZ51VtI0=;
        b=Wc9fuBDSbQ+4BkUVg0gaTWBrE9y2izGia3v/kUT/SWEuqPX/lOnEWlH/GKz/LdS5j3
         HSzXlYvSBpSkqb8uQ+ynj9ZC4JWpb188e6DqSGIaK01AT8EQcQvtQBLJbKwWJ/tjjoGO
         zFJMSrfPv9YQvpZuallwbV2gTXKchF9bi/bHOZ62WrPrnTEvhHow9UB4anK4M6lJWUc1
         xn74N3gq+i09CEn0WcPP5SWupXToy7/YvT+qPSAX8VhNgSvSYqdE5L8yDxF9eGomyUzd
         ZJha4UjrehTC/LnIegjPjY5DtVx0b3Y3z4Q1Frt9HXfqpzyi+mPirMoyY5XJHINAw6h3
         aDrQ==
X-Gm-Message-State: AOJu0YwmIZt9cPYpd/wJ44oHryNWGkcppkIt6LL6hhuQjep5775wSVzH
	lRa5vx9wLnjlg7/rX7urTKj1PxEOZk41dYMBeg1ryg==
X-Google-Smtp-Source: AGHT+IFb59rr2nhdssE6+4NnwwxKlqEvZUcT4WeGf6gQznLgr0t52e0Z4iovx/RUeJ+WmOHb3uZ+cA==
X-Received: by 2002:a05:6512:370c:b0:503:36cb:5436 with SMTP id z12-20020a056512370c00b0050336cb5436mr758814lfr.9.1695899013770;
        Thu, 28 Sep 2023 04:03:33 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id u2-20020a056512040200b005030a35019dsm3052953lfk.178.2023.09.28.04.03.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 04:03:33 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: [PATCH v6 27/36] ARM: dts: qcom: pm8058: switch to interrupts-extended
Date: Thu, 28 Sep 2023 14:03:00 +0300
Message-Id: <20230928110309.1212221-28-dmitry.baryshkov@linaro.org>
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

Merge interrups and interrupt-parent properties into a single
interrupts-extended property.

Suggested-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/pm8058.dtsi | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/pm8058.dtsi b/arch/arm/boot/dts/qcom/pm8058.dtsi
index 3683d7b60918..984b79777984 100644
--- a/arch/arm/boot/dts/qcom/pm8058.dtsi
+++ b/arch/arm/boot/dts/qcom/pm8058.dtsi
@@ -11,9 +11,8 @@ pm8058: pmic {
 		pwrkey@1c {
 			compatible = "qcom,pm8058-pwrkey";
 			reg = <0x1c>;
-			interrupt-parent = <&pm8058>;
-			interrupts = <50 IRQ_TYPE_EDGE_RISING>,
-				     <51 IRQ_TYPE_EDGE_RISING>;
+			interrupts-extended = <&pm8058 50 IRQ_TYPE_EDGE_RISING>,
+					      <&pm8058 51 IRQ_TYPE_EDGE_RISING>;
 			debounce = <15625>;
 			pull-up;
 		};
@@ -61,9 +60,8 @@ pm8058_led133: led@133 {
 		pm8058_keypad: keypad@148 {
 			compatible = "qcom,pm8058-keypad";
 			reg = <0x148>;
-			interrupt-parent = <&pm8058>;
-			interrupts = <74 IRQ_TYPE_EDGE_RISING>,
-				     <75 IRQ_TYPE_EDGE_RISING>;
+			interrupts-extended = <&pm8058 74 IRQ_TYPE_EDGE_RISING>,
+					      <&pm8058 75 IRQ_TYPE_EDGE_RISING>;
 			debounce = <15>;
 			scan-delay = <32>;
 			row-hold = <91500>;
@@ -136,8 +134,7 @@ ref_muxoff: adc-channel@f {
 		rtc@1e8 {
 			compatible = "qcom,pm8058-rtc";
 			reg = <0x1e8>;
-			interrupt-parent = <&pm8058>;
-			interrupts = <39 IRQ_TYPE_EDGE_RISING>;
+			interrupts-extended = <&pm8058 39 IRQ_TYPE_EDGE_RISING>;
 			allow-set-time;
 		};
 	};
-- 
2.39.2


