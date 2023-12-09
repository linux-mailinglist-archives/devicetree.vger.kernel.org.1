Return-Path: <devicetree+bounces-23498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EEAB180B69A
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 22:56:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2C2D01C20841
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 21:56:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EEC11D549;
	Sat,  9 Dec 2023 21:56:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lBoFVRlE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8CCA111F
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 13:56:07 -0800 (PST)
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2ca2573d132so39917111fa.0
        for <devicetree@vger.kernel.org>; Sat, 09 Dec 2023 13:56:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702158965; x=1702763765; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Iqjo5dHisDRwrhKSHqJTPFQ5wOEs+diDPVCxtZ4wynw=;
        b=lBoFVRlEXC02haX04GCWKepLwzKRAI0Zw/eE2D/3XnG+7Vk/AbgoBLxnp5qOD2r1YW
         gccqgB50cmjaRzmPIopaxEX7JhMR19j+6WSALJ+TC+tvuU3UWEyirQHzKBmZOVpk2Eb7
         DEnQTtWFG7+stBExj4qKIoloWQxyoDTEoVTSoLvu83e44k9pCtxrbw4/X+/M2dfyCuJi
         w8lPlaZRKJM0ZlyzHw0ydjlHMUkVlcWSHA1m7+EkRIxVFBFBaKucmFxWUC73moTG3g5E
         /4TH2Z6qchrX12Dh5nXnHODNS2rUnrbG9ghbo0/0zkQvtp2p9OvawWy4i3Xp126NWhOz
         rOjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702158965; x=1702763765;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Iqjo5dHisDRwrhKSHqJTPFQ5wOEs+diDPVCxtZ4wynw=;
        b=hlDLtt9HjJn97E782Uj4cETUkVGSrIlAwpKyY0iJ3HJxao8YQDJvOmNA6tTo8zWjNz
         Q/caW9ri1bmuTmOD+N1zvAbKE5cHC1pX9LPcQoA74JmhC557zqZ5YTX5XNSGpA2/oiSC
         5929efEPLPVAaST8oq/Z0DWDZ41xj4N0WeTdrHO5CRW3OV190TwP7JdD25W+Q8KLyLww
         H5g1bIDX4vgxKE2dYpnxMQ/a8V1GVvrOcEyp+O6KHT6mcLYfCOdMQCLwQ9lzLNLGVcB7
         YA8lhx4i1R04xEfxyxTD+FmPHhtKyZ72LEDntqQMRfVuDFgBnd/ecQ0MGM1mglZW4yrs
         JgYA==
X-Gm-Message-State: AOJu0YyVeN8FNA7sa+05kwHDTZAPIWfsNE0D38Itc9DsIO0g90ACNudc
	+8DQyqnAQRhoAPqcgFa9NS05Ug==
X-Google-Smtp-Source: AGHT+IFubAjWZ4do8wQKj0af641r5+JD+IPoRZQF6ZK1TTErrrW6ML9sa5dMf7REXgAo6IcdWIKv/g==
X-Received: by 2002:a2e:8041:0:b0:2ca:cb5:2ed8 with SMTP id p1-20020a2e8041000000b002ca0cb52ed8mr902219ljg.103.1702158965566;
        Sat, 09 Dec 2023 13:56:05 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id e22-20020a2e9856000000b002ca061aa9d1sm665103ljj.88.2023.12.09.13.56.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Dec 2023 13:56:04 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 4/4] arm64: dts: qcom: sm8150: use SoC-specific compat for RPMh stats
Date: Sun, 10 Dec 2023 00:56:01 +0300
Message-Id: <20231209215601.3543895-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231209215601.3543895-1-dmitry.baryshkov@linaro.org>
References: <20231209215601.3543895-1-dmitry.baryshkov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The SM8150 platform doesn't support DDR sleep stats, so it needs
SoC-specific compat string for the RPMh stats data.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index 3cba87e00123..fb41f91cefc6 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -3950,7 +3950,7 @@ aoss_qmp: power-management@c300000 {
 		};
 
 		sram@c3f0000 {
-			compatible = "qcom,rpmh-stats";
+			compatible = "qcom,sm8150-rpmh-stats";
 			reg = <0 0x0c3f0000 0 0x400>;
 		};
 
-- 
2.39.2


