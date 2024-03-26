Return-Path: <devicetree+bounces-53625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3167A88CDC7
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 21:03:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 551EE1C38914
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 20:03:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B53E13D2B1;
	Tue, 26 Mar 2024 20:03:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PlgjgzwX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E68613D28A
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 20:03:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711483383; cv=none; b=UnmruRGK3vE9wEEnpwHK8XVtPcDqCjCssCapka4+fd4okr0xJivKv5+PhFDbI6vw7m5FjxD2icBggQNH9XBG0HSIlAxOoeUOfAFgSfVNgN5AFpSPcdbz8P7QMUHCy1dRXDLgGs0wsXkcqtpOCK5rQiSziUayuzrapXtg6qb1evA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711483383; c=relaxed/simple;
	bh=yPu9lShLWjrX8FbgY01q1INaNP1kyI/7w03v1seDbHM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LbBJZkXmzib3NUWRIPZiMxlRku6MaLuowkdZOPfVPqx5iYHiNYQDaJgbRt81jsFtKmHpIMnuJSO2yr+z9tz3iOVmN9AQeBroHl6i4Z5Nn2yo1y9B12PFtN6LlAppc112e5Z6gYtv5MGIBDYZ56Xs/r+2bsZOHuXv5J8dudS90ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PlgjgzwX; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-515b69e8f38so1297456e87.1
        for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 13:03:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711483379; x=1712088179; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8nAoWwlePI94p1y2muaLUzxrPgMrou5m/LTN89EwtK0=;
        b=PlgjgzwX4rpjSgEwZBCs/VUmSdHz3FicPaxPXqws+KNe3HvUVNzeVsZdFcoXBJcSXV
         U/usjhI+IpQRy3ynH5EgQloQGZg63PYv/t24BwkPuIcNuTR8oiTmjv7jGPT7/exn8dbH
         hgMUjznLoPjx17sVqplHONfUId9RmUJlTTlKWnSSrhBqpHz4LY7erxakFiN3joFUVwiu
         q/rpi/9uLN8W1TLheWPtk4JKPR2ARunvpdcBmJyxIcOQxeIIsyAuX1VAMKRlqssAqqWe
         PqPzTose6+fi+q2+SbUWAUNzc0WZ2G2zPHxCHEyiJUW39kuiYjPwSEM6y2k8XmySAI7V
         /v2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711483379; x=1712088179;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8nAoWwlePI94p1y2muaLUzxrPgMrou5m/LTN89EwtK0=;
        b=dLOVS6aDbFA7y3DK1+Oi2bt5lRa2m1D2V0NCYmAfnOLmCnjVgmdp38AaC6OoEQbyuA
         JELXhl3q0bRJwTwfsgatRu6zdmlICXyqnhosTKJ9i5FnKh1zxrRtqOqynzDLygIfPt91
         tbnenEO1wgaruM6C9mugauAJP9Yht18izYBL0F0rO7aAcqEmgPWIdd+1SR3c5J6l6yKf
         42UWDrx1zwrko4acUUBDoxFCcbaYExSbGKxyRl4KAN+NSELotQM9X1dsOXYNiZwDaApC
         rBjAl62H5az51TUfq/IfEAhzsIVh6gUB1mbzzQQIDP6MMsTnZ872tXLKWDpaL6rzZfM+
         xn3g==
X-Forwarded-Encrypted: i=1; AJvYcCVNhRbB/4EpYBhpPisMb2telTNBZVW+TDSLUCdfAnHEot3elLUfUZZkgQxt5ldqxksKXVBL9fc1C6oIt7tf3K99IugPby/96XRVoA==
X-Gm-Message-State: AOJu0Yz2eT9JWwP8cLwE6WWNHoJm47KDusiDMqTYHFmwVzCfoBzNBDlS
	edFNsmr0YGOKllnx5ibMWwXivFhdgDQKK8CsRfN7b5rcdlVCzBQDP+5+MA1PCCE=
X-Google-Smtp-Source: AGHT+IE1d1nbIGU7ZLdfB3h02LNS/0lJ8+D665YXYeLAwS3bEUcJFQ6R+3LsKDYRQN6L+DwIPZjgUw==
X-Received: by 2002:a05:6512:e93:b0:515:a257:cbd with SMTP id bi19-20020a0565120e9300b00515a2570cbdmr9048758lfb.24.1711483379537;
        Tue, 26 Mar 2024 13:02:59 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a21-20020ac25e75000000b00515a7984acbsm1279408lfr.94.2024.03.26.13.02.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 13:02:59 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 26 Mar 2024 22:02:56 +0200
Subject: [PATCH 3/4] arm64: dts: qcom: sc8180x: Drop flags for mdss irqs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240326-fd-fix-schema-v1-3-4475d6d6d633@linaro.org>
References: <20240326-fd-fix-schema-v1-0-4475d6d6d633@linaro.org>
In-Reply-To: <20240326-fd-fix-schema-v1-0-4475d6d6d633@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1495;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=yPu9lShLWjrX8FbgY01q1INaNP1kyI/7w03v1seDbHM=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmAynwe9CmGRZkwUdeLtPrCLeXExmbk+bZLq4La
 z66Qg/tqIuJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZgMp8AAKCRCLPIo+Aiko
 1XrkB/sH0dT8EtUmpApTgR+HX6qHLfd7G0JD71J2R4pl7Kpsg0b4hOMmi/48dmN7ygHKFmDKh5e
 GHIDSrgYnIobPMo6TD0HKqWGlENnS9o1ThGurh7exjswsOQhPXhIlHZ9D8sZ+VeYCCz/jdTfvOk
 4nN3Ds9/Tyn+gj7NBv0P70wF2rAhwaPr5oIgTYTwMx0j4ABB+4p9NbgSnPibOP+ZKonNn1GJBWN
 SDpfF+cr0UAamSQo+YUAA1i2G6FFDCpOZt9VQ9d0FREfLrlOF6CdiKFCD4PHbgHZHzNdRGrRsDn
 jfOm779ppXBzdGhViV22N5jdjrfF9LzSVmyYlgHPd92Zc2wZ
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The number of interrupt cells for the mdss interrupt controller is 1,
meaning there should only be one cell for the interrupt number, not two.
Drop the second cell containing (unused) irq flags.

Fixes: 494dec9b6f54 ("arm64: dts: qcom: sc8180x: Add display and gpu nodes")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8180x.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
index 99462b42cfc5..6d74867d3b61 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
@@ -2804,7 +2804,7 @@ mdss_mdp: mdp@ae01000 {
 				power-domains = <&rpmhpd SC8180X_MMCX>;
 
 				interrupt-parent = <&mdss>;
-				interrupts = <0 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <0>;
 
 				ports {
 					#address-cells = <1>;
@@ -2877,7 +2877,7 @@ mdss_dsi0: dsi@ae94000 {
 				reg-names = "dsi_ctrl";
 
 				interrupt-parent = <&mdss>;
-				interrupts = <4 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <4>;
 
 				clocks = <&dispcc DISP_CC_MDSS_BYTE0_CLK>,
 					 <&dispcc DISP_CC_MDSS_BYTE0_INTF_CLK>,
@@ -2963,7 +2963,7 @@ mdss_dsi1: dsi@ae96000 {
 				reg-names = "dsi_ctrl";
 
 				interrupt-parent = <&mdss>;
-				interrupts = <5 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <5>;
 
 				clocks = <&dispcc DISP_CC_MDSS_BYTE1_CLK>,
 					 <&dispcc DISP_CC_MDSS_BYTE1_INTF_CLK>,

-- 
2.39.2


