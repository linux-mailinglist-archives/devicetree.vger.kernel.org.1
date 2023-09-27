Return-Path: <devicetree+bounces-3744-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F324C7AFFC7
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 11:22:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 37BF7281D22
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 09:22:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4B61210F9;
	Wed, 27 Sep 2023 09:22:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 833D820B21
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 09:21:59 +0000 (UTC)
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 310DC92
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 02:21:56 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-9adca291f99so1316958766b.2
        for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 02:21:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695806515; x=1696411315; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TWm1kTvALKqdp6UrH/Oz1h9cS//ES9dxbJ1u6BdZbf0=;
        b=aYm77+pgt9sRW24bzYX6DSPiLTVr/ZKs3rbG1pFv3rcr0Kqu5LnPgjynRKQ338EK07
         M2hq85dZ5sqkyrz7wzm6t5O671jtdNHOR/SB1A6to46YHNLSg/uj/hJv307bkdlDeWog
         apPoaresBhc2zcDOHpbjnBNj04pZyyoaLRKgNriov9m2g3Z/6ulxDk5+Zv05JljRWm90
         +cJplgYhuDrEMKzeYlZhV6S2aNGd03ZVII14GSBgVGH1PclA+xpYi9/R/7QPG80/7vzp
         xRdUsn4bWQPS5oVVNiYlpdf/So0s94RW3sU/5rJU2mX4VO0wVkVz2sy+aRtjwpUHSXDf
         4R1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695806515; x=1696411315;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TWm1kTvALKqdp6UrH/Oz1h9cS//ES9dxbJ1u6BdZbf0=;
        b=G24oshPOpeNSH8Yk9I17duy09rsiFWCUDj7Tn5tLdr37NGpMIUCed4pjB2dltRighN
         BfoR9DapRFPUh9hFl8W1tw29bI54CUxFRznzq9KMhQzcSh7xcHh7XXvhZrYRxyS0Mh4u
         Y/ol2mlHlNczj6FPTQpoQthEAsPlGs5CXNBLTlgkLfp4N6ot/iVYnRqqRsGEuhaU55Tv
         AuonKRcxa862I/AEw/spNg/C7ySe1U+RyizrgmMyJ3DMOsho+XnVpOKZYMRrWgPUpWBq
         ks+cazHm0CHVkni2GzvJOEOiMhq5vzWWDYG/MW1ASadtDIelDxLIl9DvJ1MG0Fz2nlfX
         1p5g==
X-Gm-Message-State: AOJu0Yxxx6OOXrtfgufxa27mvI01co1kYJxsBUiPyq8e+pVVCIBzNBI1
	9gm85qcXDyS+pM8CqPCZDl8cMA==
X-Google-Smtp-Source: AGHT+IGuhunRQjEcowCkdHaMAAcBPnbycL1eQFuP09gaEtEPVWkMveTm1Vx4nab6bUsiXM7tdLsg7A==
X-Received: by 2002:a17:907:25ca:b0:9ae:3a60:570a with SMTP id ae10-20020a17090725ca00b009ae3a60570amr1474637ejc.18.1695806515299;
        Wed, 27 Sep 2023 02:21:55 -0700 (PDT)
Received: from [10.167.154.1] (178235177023.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.23])
        by smtp.gmail.com with ESMTPSA id qq23-20020a17090720d700b00993664a9987sm8948574ejb.103.2023.09.27.02.21.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 02:21:55 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Wed, 27 Sep 2023 11:21:43 +0200
Subject: [PATCH 4/4] arm64: dts: qcom: sm6375-pdx225: Add USBPHY regulators
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230927-topic-6375_stuff-v1-4-12243e36b45c@linaro.org>
References: <20230927-topic-6375_stuff-v1-0-12243e36b45c@linaro.org>
In-Reply-To: <20230927-topic-6375_stuff-v1-0-12243e36b45c@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1695806508; l=1124;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=kfCuRxKJPakhy+dYlGoAXo1GkhMTh9kKuB4nSV7OqPc=;
 b=FuuOXXR8da7l+sqQespL/53ZTFiJLfX0apJEbsmRKQvBt3KRNjOex63DWBneGsx5rHUmRe2w0
 HzhTEyMSqe9AnEsXtuECV+oBhyDJ0y7j7aI491pxM6ZHl0ZxXbZgERg
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

To make dtbs_check happy and the software more aware of what's going
on, describe the HSUSB PHY's regulators and tighten up VDDA_PLL to match.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts b/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts
index bbec7aee60be..0ce4fa8de8b0 100644
--- a/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts
+++ b/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts
@@ -243,8 +243,8 @@ pm6125_l6: l6 {
 		};
 
 		pm6125_l7: l7 {
-			regulator-min-microvolt = <720000>;
-			regulator-max-microvolt = <1050000>;
+			regulator-min-microvolt = <880000>;
+			regulator-max-microvolt = <880000>;
 		};
 
 		pm6125_l8: l8 {
@@ -430,6 +430,9 @@ &usb_1_dwc3 {
 };
 
 &usb_1_hsphy {
+	vdda-pll-supply = <&pm6125_l7>;
+	vdda18-supply = <&pm6125_l10>;
+	vdda33-supply = <&pmr735a_l7>;
 	status = "okay";
 };
 

-- 
2.42.0


