Return-Path: <devicetree+bounces-4240-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 533F37B193E
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 13:03:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 0D07D1C20A2C
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 11:03:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45AE93716A;
	Thu, 28 Sep 2023 11:03:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C876737163
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 11:03:48 +0000 (UTC)
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E1A210D5
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:03:43 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-50482ba2b20so3118691e87.1
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:03:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695899021; x=1696503821; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nM3zUCrkzzZCM+Nf4nmXa6grbgv8Ay5KiASe8iKB7nE=;
        b=IS6mT8MfCf6Z4Fvxlqkf6YWQ2Up1OUFlacYSkYBlLtVd3caG1aGEM9iaR49lG6TDFR
         lHfa6WGtZ9o3WgLA7mSbaz83uJDfpE2S7mAtk3cRQLhqEpgTqizGmohPf5+N46R8sErs
         mzYWY9uPv7aRJ+luisw7FrgEAz5G+s5E/lYPyBRmQ0KagCXi32kangIW8JnXvv5eeQL4
         d9ZkmsuLEB28UJWN7Q3MsuXweEDaXuh0OPD2b2Dn+qcc4B9XmevmdZJE06DpAtDoCQ8B
         DW6zjDFn+0q/5CWPiM7Qbh933vYq4zx4mv7Q2FpGQjWQZHwKnZ61YCJw37QG7l/Jy8/d
         QONQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695899021; x=1696503821;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nM3zUCrkzzZCM+Nf4nmXa6grbgv8Ay5KiASe8iKB7nE=;
        b=h/wE4nb+fdJajn/d02Kwvxyz2F1EZYNOE2S5tM1yyNUQgB7cgW5cXxeT+AasvGA+Lz
         9seOLJaa8GV2+JrCuEwadbUujEON7gU8YsKN+teRHOfVvNwlGkd1WfCo7TVTQNOdbumj
         hKluhh3jlhae3PKkuAZLRgiCFcsbDd3AROjO/s8noDdfniBlnczHMX5msPDjID+YVQku
         u7tbtNUA7HIaCo5ChbfOrfevYk56PXSpn4urvhn6axe0Q9Ay5OiF1sncuC5stiVXen2N
         IUuZtQDGDCiQoKfNrasmmCKqvRrqhrjaIaElx4uZ2nmzT5x0ITl1irKSVRWrTtKdVRew
         PsYw==
X-Gm-Message-State: AOJu0YwtCN127AiScWzs/doo6DtyQljlx+DP0+Y7BHwj1st6MuBbB3Yt
	mR6ax6WIlegpj4MQe25K2tsl4A==
X-Google-Smtp-Source: AGHT+IFeAKIYLEsj38kkkIwMz3KG8kRAlKVmJCP9F1oSvae03EQ7fsBURNMp6loK29neRwT8lDJL1Q==
X-Received: by 2002:a05:6512:3056:b0:4ff:9a91:6b73 with SMTP id b22-20020a056512305600b004ff9a916b73mr799362lfb.17.1695899021157;
        Thu, 28 Sep 2023 04:03:41 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id u2-20020a056512040200b005030a35019dsm3052953lfk.178.2023.09.28.04.03.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 04:03:40 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: [PATCH v6 35/36] ARM: dts: qcom: ipq8064: drop qcom, prefix from SSBI node name
Date: Thu, 28 Sep 2023 14:03:08 +0300
Message-Id: <20230928110309.1212221-36-dmitry.baryshkov@linaro.org>
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

Device tree node names should not use vendor prefix, they contain a
generic name of the device. Drop the qcom, prefix from the SSBI node
name.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi
index 6198f42f6a9c..c3677440b786 100644
--- a/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi
@@ -366,7 +366,7 @@ rpmcc: clock-controller {
 			};
 		};
 
-		qcom,ssbi@500000 {
+		ssbi@500000 {
 			compatible = "qcom,ssbi";
 			reg = <0x00500000 0x1000>;
 			qcom,controller-type = "pmic-arbiter";
-- 
2.39.2


