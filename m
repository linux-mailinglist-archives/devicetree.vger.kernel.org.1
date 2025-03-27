Return-Path: <devicetree+bounces-161350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 414E4A7377D
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 17:57:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AED321752C5
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 16:57:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E95F6219A72;
	Thu, 27 Mar 2025 16:57:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ebygD+RL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5398C2192E3
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 16:57:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743094635; cv=none; b=T55ZcbaU4i8EBMf75UMSsUWpmFEiMxn0wJ1XA5Lki7GTaC9zQ1ZCS91itrRkmS00+ityeqvD1NAnK5t1CvTpELSDfVnRgIdOSADPu+xUkwoJ14S+KUZCFbKTR9R/GCRhymtvS8oj1qJ2e8jRVSIANJUtrTJCRpDNG4mfir0CpKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743094635; c=relaxed/simple;
	bh=hki2XRHAm+6qSdDVA5w1j+cxg3SpI/NClnIYUfpbEVM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=T3Oefg1Msjw2pg36ISapEvHW1NPt1BuZNFwks/iZgFgiGNaiVRDjN0Bh6OTGpsOJcxlGhf7AcbTgl8G53Ga3jfgMK5aT/lFY9KNQfsQ85GsCtbDGEpMT4IEzpvfju0NwMGlVtRMfHtLqO/umUphU8F/h3AiSUVuMLkhuOxvRr0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ebygD+RL; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3912baafc58so964139f8f.1
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 09:57:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743094632; x=1743699432; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3bQS2dVHkXmrt/VYBQF6fRPY9BltaVPlOzaCvehejKU=;
        b=ebygD+RLqGr5mxwSCDuZ4r93bQrLqAII5SaJl3FYX9/1A+moqB1+ulK67n7sP3AlI7
         UmB95wiHYOFukEat6jpJyjIagMvmoz2dfBwHcJNUOFUppmsHQ+ZQ+VV8VmrhWAjlaHi2
         3dBLZRXqiVfXIFwDajsRdw/TsmrQjPBOohGDjyOC2EYsYwSh+tUYR8KUAPk61mXcKE0K
         WmbagutrNZPc0knTb7zsw7ebyVaFE5eyQufpNNYCTgyYiibiyhret0+x2k3DyOzhsVCP
         92hb/SGT5cVRj7R3Q25in4MNWAw72DmmVZWiChDA9jX9fqNPRhFil3dRJzGYjBP+KouM
         0NEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743094632; x=1743699432;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3bQS2dVHkXmrt/VYBQF6fRPY9BltaVPlOzaCvehejKU=;
        b=Jiots7VP7CCPVCPunbsKfFSEyJcbeO0Z0m5WzFSZKcQYnyt6V1c0yfkUv4ymJ0vgyD
         G6/glzPsXoJ0oLjYUihuRyVUvZQgbPADLqpeIg/AX1j/3P7thtp60/Pet9nGnqRosSIT
         JTJ/RiwqxuCkuUa0htGbemoqkZ5x4w8CdjvgIRKeMOnAkZf96uHWTDfHMI5EKB5DCQR5
         SvodMwjOmVJdx+WeiO+zI++u19xsmr1nAmJwubPc49AQhcQuHpBsOGP2y5xHF1XckVh9
         1BZW9Q2qxC5mHD5wdD7I6P+XOtp0B5o5tLXnj3Ahovsi45QAKKx7UQARpy/20vDQIXPI
         FAow==
X-Forwarded-Encrypted: i=1; AJvYcCVLMXUSTK7csApAXwOa2ryESX2NtcPyT+TwtBQqEryQ4VSRhRr/2+3qYURWrONgQxnT8uERhawfLtYV@vger.kernel.org
X-Gm-Message-State: AOJu0Yz154T44PcPLmIIQUYwNVgiKSXiAICvIU4f8X26foRnLjAzu+TS
	/FST446sZZpV3CEq3Ie7t3czWBNIdkVHHbWDf9e5pdsMmC0WG2OV5hc7+zEorU8=
X-Gm-Gg: ASbGncvD/9nbLJw8zIKrWWsSBSilVX0BFTUpfXXAQJI7rWPSHZnQFaKZXvhbr+Tnnuh
	v10Jqmwrt7BOp62aEZcgZioB0Ux9GkJJrMYLEN1z9jII9lEeHN2Rup5GhQmCl+4hJBBxKxZvD/2
	Gp+n1NSQKtnNxmR2CKnmrsOg8PS3jU9rHWZG4fJum0sUSdTxnd4nJjuAuzTRu70L0s4JWOIBBjQ
	BM7M8pBXJ+zIVCLCELmdYiPyL+yNy9nQA9giNrZwSaNV/bWwfbE8WAAxGxqrFDq+rzZUu8zlkt8
	XusUEU5DeOA2Ys5TCUpUOfm4hkVdy5nkJDARpSrMkU9nsVqVoSTgiYqD
X-Google-Smtp-Source: AGHT+IE624zLhan3Ico9kT8SzImQL6pNaOSeeMSfoq6G2YAdMGFLyy5+kDtd8oVH06T+DQICTxZj6Q==
X-Received: by 2002:a05:6000:400b:b0:38f:28cb:4d35 with SMTP id ffacd0b85a97d-39ad175bf01mr4343485f8f.13.1743094631550;
        Thu, 27 Mar 2025 09:57:11 -0700 (PDT)
Received: from localhost ([2a00:23c8:b70a:ae01:9cf7:b69:fc50:980f])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-39c0b663623sm65304f8f.35.2025.03.27.09.57.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 09:57:11 -0700 (PDT)
From: Christopher Obbard <christopher.obbard@linaro.org>
Date: Thu, 27 Mar 2025 16:56:53 +0000
Subject: [PATCH v3 1/2] arm64: dts: qcom: x1e78100-t14s: add hpd gpio to
 eDP panel
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250327-wip-obbardc-qcom-t14s-oled-panel-v3-1-45d5f2747398@linaro.org>
References: <20250327-wip-obbardc-qcom-t14s-oled-panel-v3-0-45d5f2747398@linaro.org>
In-Reply-To: <20250327-wip-obbardc-qcom-t14s-oled-panel-v3-0-45d5f2747398@linaro.org>
To: Douglas Anderson <dianders@chromium.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, Johan Hovold <johan@kernel.org>, 
 Rui Miguel Silva <rui.silva@linaro.org>, Abel Vesa <abel.vesa@linaro.org>, 
 devicetree@vger.kernel.org, 
 Christopher Obbard <christopher.obbard@linaro.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1476;
 i=christopher.obbard@linaro.org; h=from:subject:message-id;
 bh=hki2XRHAm+6qSdDVA5w1j+cxg3SpI/NClnIYUfpbEVM=;
 b=owEBbQKS/ZANAwAKAWNNxPBocEb4AcsmYgBn5YNmzhfFY04qzeR1a440ouQxIaIVV1dMaG0e8
 oG0Fpz+WA+JAjMEAAEKAB0WIQTxi9yLbCX5CqI9UXRjTcTwaHBG+AUCZ+WDZgAKCRBjTcTwaHBG
 +JnWD/9qet0c+c0pd6YLZzQunsHfWWMNROD08J5vAaKHNYeZVD0mtTJfp2btbxUzCM59x6RsoYV
 VkQbln0O4il13Pe6XXxPNGsDPOzy47Ra7kfifQDCl6s/xplmR/et/NELmHFy/5RD8Qdp1SFr6Bs
 GtZkNc3ReqLIieTjnn49FT+wMhXglxItzeoTNI7zOeT836bsu1uEuL1E3HYVIslMqsd2VUjia6p
 tfZ2xlnKt4tzWz0Yr7Tf4FuAOdESJde8WAs9+wQOWAHjeK8eiF26a+yIQrHToN5Gft5H9qzxB5l
 hkhwAefnYNb8ununTnEBNkqgh6gip0cqxCIH7DgCRdjoOiVGMQA76KbMQVbBVDQQDR2VpW4nHAc
 vjK+fIm62BopVgolq2cHFaLD8J45l7a/trrFarPtsiUmlf+PY9Huccv9g1+v5WhL6IAaYF8jkyW
 SW8QL7v3dSlx7Zrq0dmRDA+A+I6gUQU9zmGJ+kkmR3t7oo0gL2DeVqCQJEZ7+qCREpwuF8qI+CQ
 NkVVEB9Ypdt37zDucW98ZP7JEftMwQKL5NxcimQMkKiPweI+ri0Lhr1LWio8cNEDfgp8x8AEWBE
 VetKRDj+QV+Qzc1sVhbjgfb7JsX2UUbpcSCeVO8Excr8S+oRX6cohm5jo411AZQfxsLCnurUY53
 +msSzAqjLEAF5VA==
X-Developer-Key: i=christopher.obbard@linaro.org; a=openpgp;
 fpr=F18BDC8B6C25F90AA23D5174634DC4F0687046F8

The eDP panel has an HPD GPIO. Describe it in the device tree
for the generic T14s model, as the HPD GPIO property is used in
both the OLED and LCD models which inherit this device tree.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Christopher Obbard <christopher.obbard@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
index 962fb050c55c4fd33f480a21a8c47a484d0c82b8..46c73f5c039ed982b553636cf8c4237a20ba7687 100644
--- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
@@ -980,8 +980,12 @@ &mdss_dp3 {
 	aux-bus {
 		panel: panel {
 			compatible = "edp-panel";
+			hpd-gpios = <&tlmm 119 GPIO_ACTIVE_HIGH>;
 			power-supply = <&vreg_edp_3p3>;
 
+			pinctrl-0 = <&edp_hpd_n_default>;
+			pinctrl-names = "default";
+
 			port {
 				edp_panel_in: endpoint {
 					remote-endpoint = <&mdss_dp3_out>;
@@ -1286,6 +1290,13 @@ hall_int_n_default: hall-int-n-state {
 		bias-disable;
 	};
 
+	edp_hpd_n_default: edp-hpd-n-state {
+		pins = "gpio119";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-up;
+	};
+
 	pcie4_default: pcie4-default-state {
 		clkreq-n-pins {
 			pins = "gpio147";

-- 
2.49.0


