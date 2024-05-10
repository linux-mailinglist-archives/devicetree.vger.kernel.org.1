Return-Path: <devicetree+bounces-66285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CADB8C24D2
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 14:27:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4FA3C1C21BEB
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 12:27:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C54116F8EB;
	Fri, 10 May 2024 12:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="qDiGUUcG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F32412BEAB
	for <devicetree@vger.kernel.org>; Fri, 10 May 2024 12:27:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715344042; cv=none; b=CFmnb2wtbwh03cvD08NCnofZc8vEe/f9ngAHI9Ncvmom3iOcmdRrpKzQwaUbzQaEYf6jq2Q4rdwVFc9e9u2Vyb4kc5+bCf9K+TQg9R629Pmk7mBTdnjwXv5+D8GK5wiukLEUWO8ksWTAF6kybT4FjRwImU6MeFwHlSQAU2/6Erc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715344042; c=relaxed/simple;
	bh=fVRg0B+SoKGyQZjZGM35V3zycwmERzXO4crppui7oW0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fvTg3pRn2XbuJ0IlyNjg0tYV3W7TOzDIkiqrg2SM4xrxb6nuY4dPey0u9sNdBD5L+4/c+bHb1ljak4AKOKig93SHIDx4nZTLn2OBf+x3vUQ9qSH+F8+FasnRslqX6NKTa619brcd93N5k2No9t5TbieqY/Wf8mUSxK/UbYSr6Ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=qDiGUUcG; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a59c448b44aso509696466b.2
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 05:27:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1715344040; x=1715948840; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+mcIqLuJJPw3GiMJfbLNtSKUQP2lsFTPw8ADS4mj8Dg=;
        b=qDiGUUcGQPj4ZkBovTn1ywv1ie8jJ/zs3nfLD9y9YMa1mbgHpXAs6QluP9ktsvPsFS
         MtARIyixoIgBs7OqyJPVf2sT6nY1d1GpPY26OCXfgE6OypaQBp8CN+Z7JhsqKiNY/+9d
         aS1vDujZTDQsSEiQZTcO0Z0WOb6lzNoxDMSJvy6MXnCmLuN9401DfRGxYo92BhWtSb21
         PFvum/MrdSz9tWpoGGLUfX+HxWzNaNmurPZRZW3afngozUW7ZQ0SPZsoVjy0hDA7NhJa
         XIRDVdHlr/i/xalkBlloSfsumr07KiVGIO4WZGvEjpgV+3jlaIMm96QT+SbcQNdVeLGT
         UO1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715344040; x=1715948840;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+mcIqLuJJPw3GiMJfbLNtSKUQP2lsFTPw8ADS4mj8Dg=;
        b=KT7ce3LYgJmO9HtbLWep0A5AGwNlsRj7OOgA/ly4NWZxLKCg/kMm6lGBe6eZhzzie7
         TDoB3ltqNgzymRppsbTljSiYjxi1yIhz64glJ5S6dLtcurpiB51XdakjzCnlDf+lSLRk
         7cGzJFa/DA6YGBQ2XCDXokda7iRUcJCbd8qy5ih8jtANX1KnD1CopAMYGww8psMW5Y9L
         t+UvyqbK69CyEKowxQX1KQQeE8q1jJeKxkQbGtKyVRVBrM7urQH94xUOVnifk1YsOVop
         ozS0YNzsviwKB+wL2CH4SsBOPrARdtEZYgGQBROETVHjP337Vxk7gwlLbXFospUw34jC
         6xhQ==
X-Forwarded-Encrypted: i=1; AJvYcCVD0iH/EysiKXaMuyhK470oppwy6mNgpgLG5iikzBX40krd5Juc03BWvfTSVuVuqNSQ1s9hiwHPT0d2xYtotL8IRNXw6pYxqM5m6Q==
X-Gm-Message-State: AOJu0YxG1C2fKO9lot34a4UxTvlTPvan2sdUQY1jRmJgm94ddvtUQH1S
	DYWp10HluHlIWEoK7dauPDeDyYVU55LoGPv5Nd//SDUmlYl0k0HcbadR+uZyXnA=
X-Google-Smtp-Source: AGHT+IHRZ6F9QRbCi+Ce6mddApr315w18te4B3o9cg98Wf4XxL2oksDu0esFm+ifb+xhkWK/GDdzIA==
X-Received: by 2002:a17:906:3c56:b0:a59:f380:1823 with SMTP id a640c23a62f3a-a5a2d66b493mr165210566b.49.1715344039844;
        Fri, 10 May 2024 05:27:19 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (2a02-a210-20ba-5a00-9ceb-707b-2d57-26f7.cable.dynamic.v6.ziggo.nl. [2a02:a210:20ba:5a00:9ceb:707b:2d57:26f7])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a17b017b1sm178043366b.181.2024.05.10.05.27.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 May 2024 05:27:19 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 10 May 2024 14:27:09 +0200
Subject: [PATCH DNM 2/2] arm64: dts: qcom: qcm6490-fairphone-fp5: Add
 DisplayPort sound support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240510-sc7280-apr-v1-2-e9eabda05f85@fairphone.com>
References: <20240510-sc7280-apr-v1-0-e9eabda05f85@fairphone.com>
In-Reply-To: <20240510-sc7280-apr-v1-0-e9eabda05f85@fairphone.com>
To: cros-qcom-dts-watchers@chromium.org, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>, 
 Mohammad Rafi Shaik <quic_mohs@quicinc.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.13.0

Add the required nodes for sound playback via a connected external
display (DisplayPort over USB-C).

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Depends on a bunch of patches upstream doing bringup of Display (DSI),
DisplayPort, GPU, and then finally audio could land. But we're blocked
on DPU 1:1:1 topology for all of that unfortunately.

And also machine driver for sound just exists a bit hackily.
---
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 36 ++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
index 05bbf1da5cb8..2bbbcaeff95e 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
@@ -14,6 +14,8 @@
 #include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
+#include <dt-bindings/sound/qcom,q6afe.h>
+#include <dt-bindings/sound/qcom,q6asm.h>
 #include "sc7280.dtsi"
 #include "pm7250b.dtsi"
 #include "pm7325.dtsi"
@@ -774,6 +776,12 @@ &pon_resin {
 	status = "okay";
 };
 
+&q6afedai {
+	dai@104 {
+		reg = <DISPLAY_PORT_RX>;
+	};
+};
+
 &qup_spi13_cs {
 	drive-strength = <6>;
 	bias-disable;
@@ -847,6 +855,34 @@ &sdhc_2 {
 	status = "okay";
 };
 
+&sound {
+	compatible = "fairphone,fp5-sndcard";
+	model = "Fairphone 5";
+
+	mm1-dai-link {
+		link-name = "MultiMedia1";
+		cpu {
+			sound-dai = <&q6asmdai MSM_FRONTEND_DAI_MULTIMEDIA1>;
+		};
+	};
+
+	displayport-rx-dai-link {
+		link-name = "DisplayPort Playback";
+
+		cpu {
+			sound-dai = <&q6afedai DISPLAY_PORT_RX>;
+		};
+
+		platform {
+			sound-dai = <&q6routing>;
+		};
+
+		codec {
+			sound-dai = <&mdss_dp>;
+		};
+	};
+};
+
 &spi13 {
 	status = "okay";
 

-- 
2.45.0


