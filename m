Return-Path: <devicetree+bounces-4227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 48EBE7B192E
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 13:03:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 615E11C20B6F
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 11:03:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93E2C36AE8;
	Thu, 28 Sep 2023 11:03:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C30937168
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 11:03:34 +0000 (UTC)
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 790F1CC1
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:03:31 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-50437f39c9dso18274930e87.3
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:03:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695899009; x=1696503809; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+n4FHogtkUWW0lhbbvCjrAu0cEo2A7+C+ewNBfn30Hw=;
        b=O83me/Rx/ptyJnmCGEsA+Ld0Bauv0t0I4f/Trak8oWl3XRAty3ooyopaEpyL9hXWue
         sM9OnUImb4lSSc6dtuwjpW7BG45moARyel7Nn39XvPg9+KqjD2Mq5PhPo8XIVMe3wTZr
         kGpHuwyGWCb0XKgzR/SRDX3Ygt7ikyhbBWFL0eRue8KZlbi+CG/BCjD62qOascxYarLC
         FrTtrNkQMUe0JY0FBROD1iSiWSlALEjIylkXa8dyyRwVIXycSH0YpUStUw2cZ6HtEIyB
         CjEbXitjx7Ohen1vqVwgkxOnAi84N4E8jdLSL4WaRokblmg4oeKgeyHo489Qy0pzURId
         gKRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695899009; x=1696503809;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+n4FHogtkUWW0lhbbvCjrAu0cEo2A7+C+ewNBfn30Hw=;
        b=qKQxuD63W9Sem90c8866gnVLwvuAUX0KjFRzF+TTZdLqjDuyfQTeNdpLgW070duP8n
         ksKU2DSXlVpUsZbG6AUBczcXBKDkoSK1H78nzssdwbjYFDgpScO22fNeCMtQQRSEawNP
         bxx4Lx9o6L96c+POBtBywlkXoDbp9SekPlsvmHd6cemQjK6kEWFeKCFN9c/knBdiT/Ie
         uJUhpUmLunZfveXw+1jB3ZOo/cVkgbt5vIhSZ6ia+/NpIK+xiYDn7XzLithK0gq/wQap
         M6kNuZcCf3dBp7XnHfxWN7GnOhBg60y+/pQyk4B8dQ8WGvIQKUFJ+8ZqiTbyHzi/mGxa
         FF0w==
X-Gm-Message-State: AOJu0YxDJItou0MwVU+3KeGeDiAmylgqVYEVfwuizccwEKrxURKoZ3ca
	mNNRLBhDxo2s6rsQvIrkZogz6Q==
X-Google-Smtp-Source: AGHT+IGOAv4PSOr7sNgvwgm0egz8nrxlsNUAuQ3OUikUrKLJeaRXaJlydrIp+FFXyF1EA6FmDyC4rw==
X-Received: by 2002:a05:6512:1289:b0:502:acf2:88df with SMTP id u9-20020a056512128900b00502acf288dfmr1065993lfs.35.1695899009436;
        Thu, 28 Sep 2023 04:03:29 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id u2-20020a056512040200b005030a35019dsm3052953lfk.178.2023.09.28.04.03.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 04:03:28 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: [PATCH v6 22/36] ARM: dts: qcom: pm8018: move reg property
Date: Thu, 28 Sep 2023 14:02:55 +0300
Message-Id: <20230928110309.1212221-23-dmitry.baryshkov@linaro.org>
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

Move reg property to come after compatible.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/pm8018.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/pm8018.dtsi b/arch/arm/boot/dts/qcom/pm8018.dtsi
index c602544900b2..85ab36b6d006 100644
--- a/arch/arm/boot/dts/qcom/pm8018.dtsi
+++ b/arch/arm/boot/dts/qcom/pm8018.dtsi
@@ -27,9 +27,9 @@ pwrkey@1c {
 
 		pm8018_mpps: mpps@50 {
 			compatible = "qcom,pm8018-mpp", "qcom,ssbi-mpp";
+			reg = <0x50>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
-			reg = <0x50>;
 			gpio-controller;
 			#gpio-cells = <2>;
 			gpio-ranges = <&pm8018_mpps 0 0 6>;
@@ -37,9 +37,9 @@ pm8018_mpps: mpps@50 {
 
 		rtc@11d {
 			compatible = "qcom,pm8018-rtc", "qcom,pm8921-rtc";
+			reg = <0x11d>;
 			interrupt-parent = <&pm8018>;
 			interrupts = <39 IRQ_TYPE_EDGE_RISING>;
-			reg = <0x11d>;
 			allow-set-time;
 		};
 
-- 
2.39.2


