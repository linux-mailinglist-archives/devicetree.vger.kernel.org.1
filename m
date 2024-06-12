Return-Path: <devicetree+bounces-74920-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0A0904FE9
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 12:01:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 24AD6B2685F
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 10:01:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 969E116F82C;
	Wed, 12 Jun 2024 09:59:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WLn6Pj7P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F05D16EC13
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 09:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718186384; cv=none; b=NZyvb+GnU2YHBeGmmCGz1e7G85eyLQ3Rw7eFccf8JO0Wh1Rn1/1K1ohr/c567cxI0l9ws90nHh8WpwUgHc0n1uUm1jOQAzQKP81rz9oNO7NXWzJr98d6aurbVrtebu5Nzsl9lWpy/A76K8GONqdONCMTZW00n13Qned/FmlWRl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718186384; c=relaxed/simple;
	bh=ohK2sslGjClxr9kCmY/gW62DMEkgvC5Tz6xsCMKB8Kw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=C6IYWUOgEB89spHWNXzkxxqDmeNG5WwPYukxuNu6wReDdwJDPf7bI0QVahG6mRFbDRo+SFOQtIJf1sYZYAY+EfX0MpWevEhRyQk3D8Sj/46qpHbmFuU8h6dks9T+Rs0hvCijudD3Gw0IL8NTxClVChCsi9UYlJ/YmAkvmz+oXbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WLn6Pj7P; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-52bbdb15dd5so2420350e87.3
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 02:59:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718186379; x=1718791179; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o+nA/cIlT4hl2if/i6DmrZViDpHELl0xAbf5HX+dSsg=;
        b=WLn6Pj7Piq+4cztdivf0ukLwjmPqMkfsDfsto44sg8iXKOzIu5SiqrhpCeaYXPRo/R
         uNA5r7LY3E5d7nXUvBXkcF0YRpgMRxiW6iGhg1jwrf6akDCBJoG4XtILeyd91ce3ies2
         mkFqcWjtZSAsNj5xB5zobPbcgyKaCjRj6BcoJV9nPfAxa4SzZLlHNCl/hETbesD0rMIa
         GlEyKOJB/bsQESlQU8kTXJnkEW6qbI5U8UfPwUUBTEJnNJWZ8s4aDCkPxwm6b9lXJDds
         hkN+q5gAXOkS7/IUjvtu7+67EKtnPAcZiN0FeAp6RgKLoWVexYzPkxouHJN7hHktxC6z
         2IsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718186379; x=1718791179;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o+nA/cIlT4hl2if/i6DmrZViDpHELl0xAbf5HX+dSsg=;
        b=IHUiCz6Pj5TBiGjPLXOgG1XYKEIqkK0Q0mIk1Xdd2WMLWtVmMwaGsSLw4GnULS6qU7
         dkEyZPkpPONPj4tT3dhnQhRCMpOqAz8dwdhx+CrP9wR1IKZoBNeyQqevjuE+YmvPxcaM
         XbxoBn7gcYJPYAXTuUj4kIvcbP0LJKwXkgWFP4v9JCyIBOHfiOOQgFnF+Y32Jm+hCHV4
         wZL4/y8/biWSzm9IHaF47zLLZ/a99DrovEhArfLLDWnODtq70S95LBz5Ixunz25CQptF
         BGbo39Q3g3gT5le3/RTxrR2VJOjBBRHPCJsrqaKT+a0l5+gyiz5altyFMfISzIAlfq+z
         86vQ==
X-Forwarded-Encrypted: i=1; AJvYcCXsy13nAfYZ48nDP84aL330JkOkA+BCC3S3PDK7RVkZ25H99HOqFUhChgBAMhhnozHSoF0bBTt2qXz4JP6/VZmHPY92sbsqlmuVsg==
X-Gm-Message-State: AOJu0YxFWKcJUCyDC83N4VBsKSsyDtHnlJFaRCOYYMo1OMrnXdEXyWqQ
	Dnk0RfbtdcKzdF+PMzesHIX4I2Uzt6OwldgH2bf5WTOBZgBJhjpx1ZVyE+oicBY=
X-Google-Smtp-Source: AGHT+IHTcT4mC0Nzbmc6b1H/FZNG20WBWcPGniAAoVbeRpccp8ESJqfGnnzabTmdUSfmS01JMG2n0A==
X-Received: by 2002:ac2:5304:0:b0:52c:5925:fc9e with SMTP id 2adb3069b0e04-52c9a3c90a9mr711130e87.25.1718186379504;
        Wed, 12 Jun 2024 02:59:39 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52c8907dae9sm1408095e87.129.2024.06.12.02.59.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 02:59:39 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 12 Jun 2024 12:59:37 +0300
Subject: [PATCH v6 6/6] arm64: dts: qcom: c630: Add Embedded Controller
 node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240612-yoga-ec-driver-v6-6-8e76ba060439@linaro.org>
References: <20240612-yoga-ec-driver-v6-0-8e76ba060439@linaro.org>
In-Reply-To: <20240612-yoga-ec-driver-v6-0-8e76ba060439@linaro.org>
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Hans de Goede <hdegoede@redhat.com>, 
 =?utf-8?q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Nikita Travkin <nikita@trvn.ru>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2519;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=ve9c78TTAFS5VXzgVyLUhE7e1KCToRb1yljm5NLcL8s=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmaXGGOk/65ERYG8sCrkBZ6uTW6sRyP3LfmRj1l
 6y9bUFbLayJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZmlxhgAKCRCLPIo+Aiko
 1dCvB/9LQGrfkJ/u4aLp75/Zx6a+cXAeCvOCANx8w5dfCHL5TokODXa5I6kDdMLBOR37znLJgqr
 aT9z6ceGWbOk93tw7e1g59lHc+8Mw5QRkxl4NUPCFd3n+sx7Xs7YqyL9RhMY7zld2zsnh75EzmR
 u9yd9Mopfkxb56v33Dy6yLVZZjs3nFyV0m6AZW+wJ1wAwsJG/YQlFiPa1O01ZGrlQ1nRFDfQPnr
 2/PsADEFy5fmazZTtIVvKRMqdNoyn2DktsqfcSi0/xPI50LXPPLrveZFjnTdXDtyHC4TWvSgb5C
 /Ww4kB3AeLhoN1yGDBXzkwLqYmzOFKhZgCq7ppu4YnZvwmNt
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

From: Bjorn Andersson <andersson@kernel.org>

The Embedded Controller in the Lenovo Yoga C630 is accessible on &i2c1
and provides battery and adapter status, as well as altmode
notifications for the second USB Type-C port.

Add a definition for the EC.

Signed-off-by: Bjorn Andersson <andersson@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../boot/dts/qcom/sdm850-lenovo-yoga-c630.dts      | 75 ++++++++++++++++++++++
 1 file changed, 75 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
index 8402ea2d93a7..f18050848cd8 100644
--- a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
+++ b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
@@ -370,6 +370,66 @@ zap-shader {
 &i2c1 {
 	status = "okay";
 	clock-frequency = <400000>;
+
+	embedded-controller@70 {
+		compatible = "lenovo,yoga-c630-ec";
+		reg = <0x70>;
+
+		interrupts-extended = <&tlmm 20 IRQ_TYPE_LEVEL_HIGH>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&ec_int_state>;
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		connector@0 {
+			compatible = "usb-c-connector";
+			reg = <0>;
+			power-role = "dual";
+			data-role = "host";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					ucsi0_hs_in: endpoint {
+						remote-endpoint = <&usb_1_dwc3_hs>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					ucsi0_ss_in: endpoint {
+						remote-endpoint = <&usb_1_qmpphy_out>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					ucsi0_sbu: endpoint {
+					};
+				};
+			};
+		};
+
+		connector@1 {
+			compatible = "usb-c-connector";
+			reg = <1>;
+			power-role = "dual";
+			data-role = "host";
+
+			/*
+			 * connected to the onboard USB hub, orientation is
+			 * handled by the controller
+			 */
+		};
+	};
 };
 
 &i2c3 {
@@ -695,6 +755,13 @@ mode_pin_active: mode-pin-state {
 
 		bias-disable;
 	};
+
+	ec_int_state: ec-int-state {
+		pins = "gpio20";
+		function = "gpio";
+
+		bias-disable;
+	};
 };
 
 &uart6 {
@@ -742,6 +809,10 @@ &usb_1_dwc3 {
 	dr_mode = "host";
 };
 
+&usb_1_dwc3_hs {
+	remote-endpoint = <&ucsi0_hs_in>;
+};
+
 &usb_1_hsphy {
 	status = "okay";
 
@@ -762,6 +833,10 @@ &usb_1_qmpphy {
 	vdda-pll-supply = <&vdda_usb1_ss_core>;
 };
 
+&usb_1_qmpphy_out {
+	remote-endpoint = <&ucsi0_ss_in>;
+};
+
 &usb_2 {
 	status = "okay";
 };

-- 
2.39.2


