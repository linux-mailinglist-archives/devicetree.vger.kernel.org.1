Return-Path: <devicetree+bounces-79864-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E8BC9917258
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 22:16:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A1B622829DE
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 20:16:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF7C617D8A5;
	Tue, 25 Jun 2024 20:16:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oHO3cal/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B97B3A8CB
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 20:16:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719346586; cv=none; b=FKFvBgJYC1h813mumC9YrTDFLLJx/LMnjJMzoKauDSLDl1wgmnwRMlZPh9B/OuL/8IRhK16piLcTfAdLnFRXed7Z5UKZ0dHp14L+4qHLzBIyHY67FWQkgvkx5BvXI9eiudmQAW8QE5TSHlhoKY5S0aQoUTso406Mx+7qNnFi+34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719346586; c=relaxed/simple;
	bh=nWWwFYPj5hSxETQn+GjyApQgH8kPlMG7B9D7jQerNto=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Sv+izeX0S5ZpFzc8CKsQOhsF3igfUHI4tUccUCdMphdieaDEWoYB3LoH7HNitiAITIqh1jIg1AKGz2bdREtpI4WRBCHm+LgFHIDuPHs4+lXTq3H8WxZJ92IR5fCf9DMZ9DjZFnbcPddSEkrCsQkhGxK9DWoJX9oGfN8UXh2XVA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oHO3cal/; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-52db11b1d31so189899e87.0
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 13:16:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719346580; x=1719951380; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TkU0X6SUBRJEq9ZcCHQgWMpdIwIb4pG7UUUsMWhF69k=;
        b=oHO3cal/X/Ww1LYxRquo5wfacNEnukB5iBvKse0Bolrmcw5Jg4TAGUbdH7FdVGnxMZ
         OTtcQYSVuh7t0YneMkVK+6e8Y4peeSoiWrgOcnCTbTzD773qqMM2bGlCtruVOBfwLxpy
         Tl2ym1KRY5QNZKU0JuCEu4fuTqh7jQLVrzxsojFXQfkDahGViaK6GZRxXRkW30+pAYop
         C8mEcX3fZCnBgnzNGYSYpM4kUs7NZhuSX14DULiD2eXBT3QVGb566pNjQqWK14Cg5o2/
         Fzr/PT8qJpXDWTEpXKWVcNEUKM0FSrYuAcUZYdbuypY9KS4TMmKLYZ+7M0W9TW5Rz802
         EgHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719346580; x=1719951380;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TkU0X6SUBRJEq9ZcCHQgWMpdIwIb4pG7UUUsMWhF69k=;
        b=CQP54gC3UV8HAKToWNYudZTY9ONzv0ixJN92xqBzdOSQ22Ft8N9Ur1YyeYHQfTvR0p
         xzgOxKnOI0fNQxeyTJ1a/T/cC3but4M29K9UxXTKg69HCKdjfdjhPhMxtrfQj9PFxe2A
         ECXhvEAKLapdjBjoPtpUkUmh1lE4G03KJACMu+jtY4NzyhJN7ZZqvcthudH2P4xhD8Js
         Ptxjdip+51FtqjrfL3H1xCQr+5xYsH3WFqVHSyCl4Av/0KNdbXWUUznkewecbnirCgXR
         vfin/2zQK8LAxzM9bVG8HkoB3Puxxj/h06PD9VgkMKHf2NsGkeEpFENe1nVhqDhkCS7b
         mwOw==
X-Forwarded-Encrypted: i=1; AJvYcCVYmiugtM85oKmEqTiTlOB8rj3XhtSr1wdmtZAwEF1h2JDbqRg2Iors0ge1WlgRhIB2Ef34AXmwL5OchyNSAR+0zTyvDcNZV2F1+w==
X-Gm-Message-State: AOJu0YyPa9qW3iA3fARdFQ3PZCOKDtgRBMW9eY0icq3RMu7xmc4OBU4n
	Lc8t2X7qGZxUfmkZkUuLXg0F8wHLc/h0p0Fh7jzstt4KHUM2+1eEbRwxIGojr9g=
X-Google-Smtp-Source: AGHT+IHtuB4vKKiiL28FswxIZMiWkQFPyJNHVbIyD55OOgZqWimzmngAS1rELc4hJG+TxFn6BdcgKg==
X-Received: by 2002:ac2:424b:0:b0:52c:ab2c:19c4 with SMTP id 2adb3069b0e04-52cdf7e7a41mr5756139e87.10.1719346579671;
        Tue, 25 Jun 2024 13:16:19 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52cec15c9f2sm360722e87.276.2024.06.25.13.16.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 13:16:18 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 25 Jun 2024 23:16:18 +0300
Subject: [PATCH] arm64: dts: qcom: pm8916: add temp-alarm thermal zone
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240625-pm8916-tz-v1-1-a4c1f61e92dd@linaro.org>
X-B4-Tracking: v=1; b=H4sIAJEle2YC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDMyNT3YJcC0tDM92SKt1ki5QUMwMzSxODlGQloPqCotS0zAqwWdGxtbU
 A7MqbglsAAAA=
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1448;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=nWWwFYPj5hSxETQn+GjyApQgH8kPlMG7B9D7jQerNto=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmeyWSrj/UKGLjilr5dmMSckl505jL1GzwPO4+C
 E0kWatUjTKJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZnslkgAKCRCLPIo+Aiko
 1V8WB/sEvBuY7vTlEn6ie74fqpW1GrxDKUq3hybzlXwtR1DbCwD/zT5ZPWZ4Hx6RkxYUFD5gqVc
 vAmTELrvIEjU8bViyXFzMp/Zxv0f99mlGyfxo6/ropn6O2rLlgThRyIrK3AYtyJUp3Sf9CSOVYL
 aQTWE2IpzCp7aUDATZcxoalMQpi6//XshzLmJh3xOatORAabRSFy4fGr1yW9FcWVnInjB7TjQDb
 9nrTpKtmq+vWTrSwMRNV0+4BrkuTHG/Wm8jdpHrHLoA9KR3oXpKPUJe1cWnZwZv4MpbmT/Ydngv
 h43OBN7A2sBoIteS5eYqiCsz+prvr+f/lmSGCMIUG+veLdeM
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Define the themal zones using the temperature values in stage1 for this
platform so that the spmi-temp-alarm driver becomes active.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/pm8916.dtsi | 31 ++++++++++++++++++++++++++++++-
 1 file changed, 30 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/pm8916.dtsi b/arch/arm64/boot/dts/qcom/pm8916.dtsi
index 4b2e8fb47d2d..2def48f2d101 100644
--- a/arch/arm64/boot/dts/qcom/pm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm8916.dtsi
@@ -4,8 +4,37 @@
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/spmi/spmi.h>
 
-&spmi_bus {
+/ {
+	thermal-zones {
+		pm8150-thermal {
+			polling-delay-passive = <100>;
+
+			thermal-sensors = <&pm8916_temp>;
+
+			trips {
+				trip0 {
+					temperature = <105000>;
+					hysteresis = <0>;
+					type = "passive";
+				};
+
+				trip1 {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "hot";
+				};
+
+				trip2 {
+					temperature = <145000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+	};
+};
 
+&spmi_bus {
 	pm8916_0: pmic@0 {
 		compatible = "qcom,pm8916", "qcom,spmi-pmic";
 		reg = <0x0 SPMI_USID>;

---
base-commit: 62c97045b8f720c2eac807a5f38e26c9ed512371
change-id: 20240625-pm8916-tz-c8dd606940dc

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


