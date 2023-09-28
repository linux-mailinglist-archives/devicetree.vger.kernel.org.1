Return-Path: <devicetree+bounces-4230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0229E7B1931
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 13:03:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id A84302824AC
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 11:03:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 726EA36AE8;
	Thu, 28 Sep 2023 11:03:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0608F37155
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 11:03:38 +0000 (UTC)
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E36CDCDF
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:03:33 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-50336768615so21737972e87.0
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:03:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695899012; x=1696503812; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OFX9JomlQAWrg2wVtXgvkj8bMtfCZmpZ79ww1DHQiqs=;
        b=t/EMW/ZkOfzBKLPp0fPEAnbgkjb+LZ6VgtvkHPvfNClf8lmlbBpUPnWTUKD/mpavvl
         XhtTEGE1THArAnLEwr5IkS9gr9/78kZv7yFUbVoTT7v7M6YPGooTWSjWVce9N8LaX4D4
         iQzj0iCZ44G18cwT1MaUmIJ+nnMv1V0ODBQwE0Vkzv0y9Q+a5Eu8MlkaM4EgDKKQdKMf
         t4WU4J+6Xb+k5BIJBxjRmKUVfrSbNOFR9Q/qETGOFfvOHa9h7T2K/BwDDhyGJIZmQ7NE
         xgTK3jPfqrKbuBPN9Xuf781oxrFs97X2DJoshJwyj7YOfmrTd5tn7Nqv4xn3gpP++dJb
         6tzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695899012; x=1696503812;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OFX9JomlQAWrg2wVtXgvkj8bMtfCZmpZ79ww1DHQiqs=;
        b=K0X872wDP3BA69agVcLkHQPXlS2Z0RyTv0DJR/4piA2F7u8iVO8kft++KAzD3dSdh5
         6WFDLC1209cK5ZOms4fR3c77pA1VxFhQzMiTw71KIdveOEOUTn+0jHHCxH3xogRaeK+0
         Acu3qpzolCfwGa2CpOxYiwdQLaBIDij2s5qH6Fk3brKHcnqb+Q4Z4sK5M30MojQ59ciZ
         jVwN+B4PAFuo+nq3aNbMIvv9IwzPj4pdRKcx2RTcWaCywEI6MioZwsltHPVH3Koa/Mm+
         YMajNvJWrpCwP9H+ytY59ECbdtKnEejpn+S806kfAO756XltPMWZb2VT7DoAOH4ueW6v
         WIkA==
X-Gm-Message-State: AOJu0YzWtCdX38Cbk4MhzCvVONYg84CLH5uBn97sfJoUAbOpuS+DrmFP
	9FtNow4fZRIT+83Dotg0rrNp2A==
X-Google-Smtp-Source: AGHT+IHdEfPI24XGfVGZEfYWZKHcs+lEBcRXhLp+C5z556VudXi8sGfQagUsYFtsfVN5X512utV2sg==
X-Received: by 2002:a05:6512:1388:b0:503:1bd4:5e43 with SMTP id fc8-20020a056512138800b005031bd45e43mr1025434lfb.40.1695899012070;
        Thu, 28 Sep 2023 04:03:32 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id u2-20020a056512040200b005030a35019dsm3052953lfk.178.2023.09.28.04.03.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 04:03:31 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: [PATCH v6 25/36] ARM: dts: qcom: pm8921: switch to interrupts-extended
Date: Thu, 28 Sep 2023 14:02:58 +0300
Message-Id: <20230928110309.1212221-26-dmitry.baryshkov@linaro.org>
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
Reviewed-by: Konrad DYbcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/pm8921.dtsi | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/pm8921.dtsi b/arch/arm/boot/dts/qcom/pm8921.dtsi
index fa00b57e28b9..360a179670c5 100644
--- a/arch/arm/boot/dts/qcom/pm8921.dtsi
+++ b/arch/arm/boot/dts/qcom/pm8921.dtsi
@@ -11,9 +11,8 @@ pm8921: pmic {
 		pwrkey@1c {
 			compatible = "qcom,pm8921-pwrkey";
 			reg = <0x1c>;
-			interrupt-parent = <&pm8921>;
-			interrupts = <50 IRQ_TYPE_EDGE_RISING>,
-				     <51 IRQ_TYPE_EDGE_RISING>;
+			interrupts-extended = <&pm8921 50 IRQ_TYPE_EDGE_RISING>,
+					      <&pm8921 51 IRQ_TYPE_EDGE_RISING>;
 			debounce = <15625>;
 			pull-up;
 		};
@@ -32,17 +31,15 @@ pm8921_mpps: mpps@50 {
 		rtc@11d {
 			compatible = "qcom,pm8921-rtc";
 			reg = <0x11d>;
-			interrupt-parent = <&pm8921>;
-			interrupts = <39 IRQ_TYPE_EDGE_RISING>;
+			interrupts-extended = <&pm8921 39 IRQ_TYPE_EDGE_RISING>;
 			allow-set-time;
 		};
 
 		pm8921_keypad: keypad@148 {
 			compatible = "qcom,pm8921-keypad";
 			reg = <0x148>;
-			interrupt-parent = <&pm8921>;
-			interrupts = <74 IRQ_TYPE_EDGE_RISING>,
-				     <75 IRQ_TYPE_EDGE_RISING>;
+			interrupts-extended = <&pm8921 74 IRQ_TYPE_EDGE_RISING>,
+					      <&pm8921 75 IRQ_TYPE_EDGE_RISING>;
 			debounce = <15>;
 			scan-delay = <32>;
 			row-hold = <91500>;
-- 
2.39.2


