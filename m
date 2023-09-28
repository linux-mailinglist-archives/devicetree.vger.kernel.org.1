Return-Path: <devicetree+bounces-4231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 834AF7B1932
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 13:03:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 366532829A7
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 11:03:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F02DB36AEA;
	Thu, 28 Sep 2023 11:03:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B51336B00
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 11:03:38 +0000 (UTC)
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B022CCE0
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:03:34 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-5041bb9ce51so20483675e87.1
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:03:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695899013; x=1696503813; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dm6eWdkXRtbkiE6yiEQEBoDe5iM/WM4eQNZl22nI37Q=;
        b=qa8oRA7DYVjUSsIJWvwcPgnnngXw8Wz/XC2HjNoErWQdClDrAUVHIDgRurQptxin3g
         cJZpbw1zAnXt20H5QT5kVITVSOmMQTL9E7Xu+4I4EZ71EKix9qhFGY0POWGLX5Ld83eR
         Vlkr/Scxz4vIWyDVSASIZ24FD0ST38TuM6Areg0K8XKuDEQSGCyrfvvOSj8+HGFKqKRl
         O3Y6l24D2Bq0H7pkz75uleVOHpADMr2AmvXDsoZYFOiokzoY8OLqrAlQLrq1kdAHd3s7
         x7TtvaYtonbOXxxnDTukuprOoFB3QGfJSiRcwb49cNuhcNnmGFer8BZAZfAnUskmT1UW
         5tog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695899013; x=1696503813;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dm6eWdkXRtbkiE6yiEQEBoDe5iM/WM4eQNZl22nI37Q=;
        b=ApdtgA/Y+kBEQq/K7PluZkfzzPG8LnbIGhRrVXrUQEUvtejQD3JH9hw0p8E84Q5zkw
         eqDkxvAaTnsq7FUXL4IRmKXlgMJDnRoXuxU7fO7nRXyd0iqHLEefcl3fz5Bz4Kbwjv/8
         Hv7zxPyf4RbK2dPAh4rt7oNm6M8IvsNJNO3Xf2tRUrVBT6Edn0XmPryUpS7ZnUWUTEQ2
         YzM9sQ2JpBpL07HCTUEnAqCop1N254of4GZSgMWM0JdTNShuumgsCgipM83q8akwxR+8
         28S1e5h1f/pMeD65pbK4TimjXtp+5im+hQwr2kM/N6uN+DeQ0lIbLF6cuKPkjabCWalj
         Iwug==
X-Gm-Message-State: AOJu0Yxtt2nQylzkvfmyc0AvnUzvsovSkyNt4nEiAjMN7zo/NbpDtCPJ
	x7lXMav74AXuwMdsIqLOERYy+g==
X-Google-Smtp-Source: AGHT+IEnl1aVLFAz34yc6Y9Kbyr/iB1hncHxUTCaffKSciAtgUe7cB6jUvUXjWMTWVZJqsB9f5RIRQ==
X-Received: by 2002:a05:6512:39c4:b0:500:bffa:5b85 with SMTP id k4-20020a05651239c400b00500bffa5b85mr1081423lfu.32.1695899013018;
        Thu, 28 Sep 2023 04:03:33 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id u2-20020a056512040200b005030a35019dsm3052953lfk.178.2023.09.28.04.03.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 04:03:32 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: [PATCH v6 26/36] ARM: dts: qcom: pm8018: switch to interrupts-extended
Date: Thu, 28 Sep 2023 14:02:59 +0300
Message-Id: <20230928110309.1212221-27-dmitry.baryshkov@linaro.org>
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
 arch/arm/boot/dts/qcom/pm8018.dtsi | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/pm8018.dtsi b/arch/arm/boot/dts/qcom/pm8018.dtsi
index 85ab36b6d006..22f3c7bac522 100644
--- a/arch/arm/boot/dts/qcom/pm8018.dtsi
+++ b/arch/arm/boot/dts/qcom/pm8018.dtsi
@@ -18,9 +18,8 @@ pwrkey@1c {
 			compatible = "qcom,pm8018-pwrkey",
 				     "qcom,pm8921-pwrkey";
 			reg = <0x1c>;
-			interrupt-parent = <&pm8018>;
-			interrupts = <50 IRQ_TYPE_EDGE_RISING>,
-				     <51 IRQ_TYPE_EDGE_RISING>;
+			interrupts-extended = <&pm8018 50 IRQ_TYPE_EDGE_RISING>,
+					      <&pm8018 51 IRQ_TYPE_EDGE_RISING>;
 			debounce = <15625>;
 			pull-up;
 		};
@@ -38,8 +37,7 @@ pm8018_mpps: mpps@50 {
 		rtc@11d {
 			compatible = "qcom,pm8018-rtc", "qcom,pm8921-rtc";
 			reg = <0x11d>;
-			interrupt-parent = <&pm8018>;
-			interrupts = <39 IRQ_TYPE_EDGE_RISING>;
+			interrupts-extended = <&pm8018 39 IRQ_TYPE_EDGE_RISING>;
 			allow-set-time;
 		};
 
-- 
2.39.2


