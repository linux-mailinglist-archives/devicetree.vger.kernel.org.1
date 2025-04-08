Return-Path: <devicetree+bounces-164332-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 48350A80231
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 13:45:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6D192881AB4
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 11:38:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FFFD266EFB;
	Tue,  8 Apr 2025 11:38:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="M4f8Xowq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FA2216E30
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 11:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744112337; cv=none; b=GuXakRuz4xgfQzyEPSibD2lAii6VMSGKDnTluHLmMV3zwp5UtsREHJSLREQ7DQUYZg6VUGrR5YQC6jVDfHYHXXH+mDVxC4OeiQC5bdYNLy1RwKCQqpOqefJxhk58PBA67P3b/Lqgp8M2fZCR4afAL8fiviRno4oJ+/+aod2lCnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744112337; c=relaxed/simple;
	bh=kpZJ3p3+Ei11yz4vXSapgIwBGtEJqC036Y2YaN9pwWk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=HyqTWs4kLAMaJsBvhVndFeTFMFOqIulRMS/gco0xj8Axs/eWiYMRRIF8lN2VRZSSamrH8QRm1JtRKLLFFlKgTBBXiKTAAOSE8DGFOyNgV37KEUuzunJQP8M++blA6ucW8D4bbYI0YXAyFtptnhPFvyyfm3Sbxe3sD9Q/MBWh4fY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=M4f8Xowq; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43cfe574976so37531805e9.1
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 04:38:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744112332; x=1744717132; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5/FBWzeg0+ZCf4A8fXrkY1rmJAliXUxuxCPzLRVcmGk=;
        b=M4f8XowqfIaqQIwwW9+P2Xy12BGVZJFJxqC2gOLUvCprllR/PO/D3ZuAgIJbu9qZgI
         ha5NzLYgubtPu/Hgz+h28ZFsb+vL5uMRG0LzH5Cs+TWL02NqXGJZiXVUPRLIYcz0s/l2
         mwAfdAaTVmx5kMB/pjMO0duX3K8dtF4pfHIr6exYP/i5nHe66dX8bfuh+tiwWYtL8Vhv
         6wEGsSiZ1+Z3PKbaoBlY9IfocomylpaDRVsWkTezLahwOL+cS1jvWD8/ngHFr+2bYBAY
         0BAf1k+ruyxzC3IMEycObcMGYTL6q4GbOzyH6S3B80R0RGTeYTLS1YFQ9q126Y8c50oY
         gddA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744112332; x=1744717132;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5/FBWzeg0+ZCf4A8fXrkY1rmJAliXUxuxCPzLRVcmGk=;
        b=MULGtK7FaYVIs8ssR4Dd9iThG9tJVe2PAWh46NFRABcfrKGsCvwtl14DBlwRuse6J8
         wDt2ooWWy8yim5Uw1s60TfLIsbN5EhDHqkSDDBrzSFszzmkK1QnYW0pHkqmevKYALSHB
         P3zMZwDk0WQN16c3ClgoBPUSmXxy57jB6T1nlVg97EIaGduEjNRIZSlBX/MRQ7CkD60T
         kd1Lht2p2ebZdtWVTdMRAa6dyCJzZF70iP/u0HgsSkrQmtVQmJn+vvG843sFkgTBa1qz
         Hx2cM0UjudzvyzsOM+CQe5COCFD1Bl75c29dt/fzdoQGs7QUxkK3uwZUjUk79N5tZAuF
         Ib9A==
X-Forwarded-Encrypted: i=1; AJvYcCUiSHRZlI9R3DDzpWXxuRHmNSyAHL4RCYDzTOTinJFy7tpQNBR4O5s9VEbowbIw89SziiJVXWmuyLc9@vger.kernel.org
X-Gm-Message-State: AOJu0Yyy5rqZs6AZ4JR/6Y7buuMeECFx/VS0397i41p7s9SbBmOE2D05
	0KKZ6leVSNAtilr9BVp6+AhwK2M3eqH3cT0AGGN/hcZTF/nPfRvEzIrRaXxW59U=
X-Gm-Gg: ASbGncsKu35bhY7v4F4XP6o7MWNdnVO3PJnv7OXk0CnQwfayCwDLMVZTcd55M7zutWe
	9y66UPXRkrZ71cNbpexHiZJOpp3IN6r5xQ0Tf6pdXmpBlHC2ryICW6V1VbxgEVWbzewwOAG7bkF
	NWaYaP3A7eo/yQXNJlqogK2ZZUKaDpIWDaLA1VsvnwmlH+TUKzn1aGxZTE61j3DiSFHGqCiVfSE
	sEqXW+Tg/m2meVdts3Bmf5TI0WJ6AZILE6CP7WpqWIrS/fjboIA6sA7/QpTwapyfkAFIoqO123O
	v1MtKN54uOG7P+q0usDKEB46CrKyqj8C5TJV4SIEtjG3L3SawNQkDiISggNdVmW60Ghw0Q==
X-Google-Smtp-Source: AGHT+IHdC8zFootrYV47QAuc493nshO5OIqjtfco256NhQOrJ/t6KiHXd7JiTKrrAZAkcejY1qH0aA==
X-Received: by 2002:a05:600c:4443:b0:43c:fa24:8721 with SMTP id 5b1f17b1804b1-43ecf8d1b10mr168181105e9.17.1744112332326;
        Tue, 08 Apr 2025 04:38:52 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:a515:3b2a:eb67:e90e])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec34bbd9csm157085715e9.20.2025.04.08.04.38.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 04:38:51 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Tue, 08 Apr 2025 13:38:42 +0200
Subject: [PATCH RESEND] arm64: dts: qcom: apq8016-sbc-d3-camera: Convert to
 DT overlay
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250408-apq8016-sbc-camera-dtso-v1-1-cdf1cd41bda6@linaro.org>
X-B4-Tracking: v=1; b=H4sIAMEK9WcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI2MDSyMj3cSCQgsDQzPd4qRk3eTE3NSiRN2UkuJ83TQjE/Ok1EQTgzRLSyW
 g7oKi1LTMCrDJ0UpBrsGufi5KsbW1AC1TaSJxAAAA
X-Change-ID: 20230922-apq8016-sbc-camera-dtso-f247bea40f99
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Stephan Gerhold <stephan@gerhold.net>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.2

From: Stephan Gerhold <stephan@gerhold.net>

Follow the example of the recently added apq8016-sbc-usb-host.dtso and
convert apq8016-sbc-d3-camera-mezzanine.dts to a DT overlay that can be
applied on top of the apq8016-sbc.dtb. This makes it more clear that
this is not a special type of DB410c but just an addon board that can
be added on top.

Functionally there should not be any difference since
apq8016-sbc-d3-camera-mezzanine.dtb is still generated as before
(but now by applying the overlay on top of apq8016-sbc.dtb).

Since dtc does not know that there are default #address/size-cells in
msm8916.dtsi, repeat those in the overlay to avoid dtc warnings because
it expects the wrong amount of address/size-cells.

It would be nice to have a generic overlay for the D3 camera mezzanine
(that can be applied to all 96Boards) but that's much more complicated
than providing a board-specific DT overlay as intermediate step.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
This patch was already applied by Bjorn on Sun, 28 Jan 2024 11:45:55 -0600
as commit ea689ec32bf0d885277d3f58450a85df5149c98b [1]. However, unlike the
first patch in the series, this one never made it into the repository for
some reason.

[1]: https://lore.kernel.org/linux-arm-msm/170646395036.64610.14333204830178417809.b4-ty@kernel.org/
---
 arch/arm64/boot/dts/qcom/Makefile                            |  5 +++--
 ...ra-mezzanine.dts => apq8016-sbc-d3-camera-mezzanine.dtso} | 12 ++++++++++--
 2 files changed, 13 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index adb4d026bcc4b24d73de92e204db8d525b0770e6..465b3791f15e66883717ecd59a2ade9461472df7 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -1,12 +1,13 @@
 # SPDX-License-Identifier: GPL-2.0
 dtb-$(CONFIG_ARCH_QCOM)	+= apq8016-sbc.dtb
 
-apq8016-sbc-usb-host-dtbs	:= apq8016-sbc.dtb apq8016-sbc-usb-host.dtbo
+apq8016-sbc-d3-camera-mezzanine-dtbs	:= apq8016-sbc.dtb apq8016-sbc-d3-camera-mezzanine.dtbo
+apq8016-sbc-usb-host-dtbs		:= apq8016-sbc.dtb apq8016-sbc-usb-host.dtbo
 
 dtb-$(CONFIG_ARCH_QCOM) += sar2130p-qar2130p.dtb
 
-dtb-$(CONFIG_ARCH_QCOM)	+= apq8016-sbc-usb-host.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= apq8016-sbc-d3-camera-mezzanine.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= apq8016-sbc-usb-host.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= apq8016-schneider-hmibsc.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= apq8039-t2.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= apq8094-sony-xperia-kitakami-karin_windy.dtb
diff --git a/arch/arm64/boot/dts/qcom/apq8016-sbc-d3-camera-mezzanine.dts b/arch/arm64/boot/dts/qcom/apq8016-sbc-d3-camera-mezzanine.dtso
similarity index 89%
rename from arch/arm64/boot/dts/qcom/apq8016-sbc-d3-camera-mezzanine.dts
rename to arch/arm64/boot/dts/qcom/apq8016-sbc-d3-camera-mezzanine.dtso
index f9cbf8c1d6891108e208f4626aa7667c74ee413b..d739ece6b44ff25960f92088a4023ef794215712 100644
--- a/arch/arm64/boot/dts/qcom/apq8016-sbc-d3-camera-mezzanine.dts
+++ b/arch/arm64/boot/dts/qcom/apq8016-sbc-d3-camera-mezzanine.dtso
@@ -5,10 +5,12 @@
  */
 
 /dts-v1/;
+/plugin/;
 
-#include "apq8016-sbc.dts"
+#include <dt-bindings/clock/qcom,gcc-msm8916.h>
+#include <dt-bindings/gpio/gpio.h>
 
-/ {
+&{/} {
 	camera_vdddo_1v8: regulator-camera-vdddo {
 		compatible = "regulator-fixed";
 		regulator-name = "camera_vdddo";
@@ -38,6 +40,9 @@ &camss {
 	status = "okay";
 
 	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
 		port@0 {
 			reg = <0>;
 			csiphy0_ep: endpoint {
@@ -53,6 +58,9 @@ &cci {
 };
 
 &cci_i2c0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
 	camera@3b {
 		compatible = "ovti,ov5640";
 		reg = <0x3b>;

---
base-commit: 7483c7cc0b2cebf842ec0f5902e354650c4a0d29
change-id: 20230922-apq8016-sbc-camera-dtso-f247bea40f99

Best regards,
-- 
Stephan Gerhold <stephan.gerhold@linaro.org>


