Return-Path: <devicetree+bounces-134340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7197A9FD43F
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 13:58:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 74DF17A1308
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 12:58:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DC811F2360;
	Fri, 27 Dec 2024 12:58:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="knG86+ut"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D9341B2193
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 12:58:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735304326; cv=none; b=Aow2b5SltxyUJtrFN89TzulwUJkmZQygEyM1TreVIQESVJxGWsJyBGjz5536alVfxCxGwJbEfDcZylbA+IUav4EWICk7pWujbWLah0B9HHcaUYYWhibGmQvixA/eP3DbFklETSlyVRR6TxGK6P4pjUOsK+Ts2/G1BNOlL7q2QKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735304326; c=relaxed/simple;
	bh=I/hJbx+UhPHPiscNE9lP2YdCvgXCRwBeiiwDYlaGj4g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=HPMH9uXyn/HkDFOWECbQ6nXBTaR+ShcEd2KvfNrnCP3Xmmz7OVtRJp3T5UnLLlFHcokwcsn0vsypXiFpqdOYaA7pkLhC+gSyEoSuHpvyGx3AeFSYMQYiG9Nk9/0SqVGnqIRH74mfNmWUw2hpiMZh9rVTSivJEWpcj3Etj88ZfKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=knG86+ut; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43622354a3eso49686625e9.1
        for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 04:58:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735304323; x=1735909123; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aDdGEckgi4owvE+DWRBdebkpETzu1CKFX85k+EedgfM=;
        b=knG86+utEeFPAm66D+PQJ6Y/eGZJJ6JWmGAUYVw2yKqye8NCuic1ifSonkZ9uHK5z5
         TQiUKJIu0qSJ3bK+F6ioBagMDJQRgbK4ZSVBHAmnpj+nWKreA52/OdLYNvNC3OxgSVC0
         RUp30BqS/L5AMaTgK6yG/dKfFq4A18U9n7RLb07wRpVTS7NP7CEuyGFlts7o+cpm0JMD
         5WN/qjBPl3amNsMh5fUzhhHK0lGpW1uJfE5DjJethZy8Dyv7IVq3K6esooNWT2m9arsM
         Rz2kIwYBC7r3R1MHKWdCcpqmS+J00oc2JIQ73F9XR9vmYo8hkRz6jcDakU6amkfCbSA1
         AJ3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735304323; x=1735909123;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aDdGEckgi4owvE+DWRBdebkpETzu1CKFX85k+EedgfM=;
        b=EnWbV91h3xV7PmedNgCSRBd4Wa5udN4DfTB4bM6MmwiuDv1hH0ajlx9eylgce0cFp2
         KJGrBKtp9Bh6wMgcDFOsQ7n4JGYZRCLty4IIXPl06sYTTdx4yGZ1sC7v/g20fa5AuoJX
         kEBFkTUU0BK17hjkKIEi4uu4+hel6+1c5Lwr8AoBAM/Tswwn3x3gpY4tvlP+9ezlK1Z2
         mEAO4KnqFc6y2JvEzz+/8S/3gyb4d0rY5N0EsGSPHhOLy62UHuee5i0za+QNJ3Md1mJ3
         Zc4HMXbYugfzrkV5LegGslkQZa9Xh0UuPqbyZmdzEjyFn3OiVuwJ9UxuhorUofpWXlLH
         VXvg==
X-Forwarded-Encrypted: i=1; AJvYcCU9aCb/n5O9M3CYSvgO29RnzsI0CvQutzY9nO8ybDwRXa+dG9wGmZqP+4E0EK2rw/dPp1pBmg4QBTdQ@vger.kernel.org
X-Gm-Message-State: AOJu0YyXa4h4Ev84H1wOI+jzzBADe7p6koTDATwQOwwpB3VpFIIeojvt
	IHHCjQ/5Wnvcvk/UWwU0WOSUYIm9cL0NAG//NEtINAcYaeQh01MuzPcqi1DP9kI=
X-Gm-Gg: ASbGncsgTBfvZP1fsf6WNjzOq5I00B20mnRD1nw4Om22cpxRbVXcPeLm58SSKn9jd0D
	OKqkNeRUOnz+s9HDJvM2hYiujJ2zhdQnFljfXXxoNXtmLYZNUQlc64Crab2C3m6ZLF+Jv4j6sxh
	jtbRFXmP3E4A6TCnKDvK82TzsAUoYjzZNE/bo2MkE0ZvUjOTis5eZw1r8ynucb3hCm599LCyA2F
	tYjvZ2qqGC08EUlZOVtMestfW3omlBBMLLJWXQc6DOvdgP4jKaJqz8l
X-Google-Smtp-Source: AGHT+IFhkcxC0c+E0VfZles7rdAdsYhqqs+ATikjgURZTRqbT3bU1zZC8fVT4zxxYAFmI7TH0aDuLQ==
X-Received: by 2002:a05:6000:2ae:b0:385:f560:7911 with SMTP id ffacd0b85a97d-38a221f300cmr21977862f8f.10.1735304322944;
        Fri, 27 Dec 2024 04:58:42 -0800 (PST)
Received: from [127.0.1.1] ([82.76.168.176])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436724169afsm213946465e9.25.2024.12.27.04.58.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Dec 2024 04:58:41 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Fri, 27 Dec 2024 14:58:36 +0200
Subject: [PATCH] arm64: dts: qcom: x1e80100: Fix interconnect tags for SDHC
 nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241227-b4-x1e80100-qcp-sdhc-fixes-v1-1-cd971f7f0955@linaro.org>
X-B4-Tracking: v=1; b=H4sIAHukbmcC/x2MSQqAMAwAvyI5G0hLqeJXxIO2qebi0oAIxb9bP
 A7DTAHlLKwwNAUy36Jy7BVM20DY5n1llFgZLFlnrO1wcfgY7skQ4RVO1LgFTPKwou/90oUUE3k
 HdXBm/kXtx+l9P6+6ZvlsAAAA
X-Change-ID: 20241227-b4-x1e80100-qcp-sdhc-fixes-686b7cfdf064
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2421; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=I/hJbx+UhPHPiscNE9lP2YdCvgXCRwBeiiwDYlaGj4g=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBnbqR/XZNhn2y3VyDORttqYlP82xAV8I9hCbLN5
 CwtRTBCzEiJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZ26kfwAKCRAbX0TJAJUV
 Vgi5EAC+3ThsLdZjWaeqGZ7tyIlDZaDctj0YUYkUIn7Xg0XnTIMaSRopBYe3o5cKxGlcZ5dFwd8
 /dEQ+wQfB7u7920Azi5QVoSTb+6U/QFqg4G7jJFzdarsfKUKfQDhmXsYtjSQz0otg/gu3JNUWge
 ZlYErAUV1ZjUzqJ6KgrQ66O/PjpUp4buMPmY0CStTZWGwcKOzqfPAY0dJhPaDrVX7MBE7ZfYSNx
 +F7Ec8cTAokDccsrKcIT7kFpgmMNXOBs073vdynQvJhyfjvIumskoWL80SeODgicNWk8MYP3Q3J
 yVnvM7XOL2Gl3V8qyGJKKCMiUrKK8a3cI+5Mqh/hO1EBm7XbBR+rtXhCdJetRa+nyiptuyatNJH
 k0mtfARjRKvS8FYCQYob+UC2jHX/ImTqCuL08aFzwpHeh+0WhSCeFbLWLBQ1kO7fibYF8kgtRin
 7meaklmePcttreQwb0xrT09pXq6PF7fv6s34a1RKeeP+f6dAxmeEo+DaftvY3ybe7Y6c/hxhEc/
 XjTInIpuNvnhGgMkozSgByHOvL1K3Zts/ojXKYkkDxbw3Sky2rHP3wUkECBsYwr5t7KmBSRREe2
 pmXzNN0uoYTMZK1SplP7Nev7Wuc1q+mM7m/jOa6o8TpzJTyDDAK5uk4qHWzzmUSaLmm/Hv8Y39D
 OB9Eija7e/Oix4A==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The CPU-to-SDHC interconnect path for the SDHC_2 needs to have the
active-only tags. The tags are missing entirely on for the SDHC_4
controller interconnect paths.

Fix all tags for both controllers.

Fixes: ffb21c1e19b1 ("arm64: dts: qcom: x1e80100: Describe the SDHC controllers")
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Please note that the commit that this patch fixes hasn't
made it beyond Bjorn's tree yet. So fixes tag points to that.

Also this is based on Bjorn's arm64-for-6.14 to make sure it applies
without conflicts.
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 0e30029bfc1948d8412d62095a0c9b9274ebb9a2..9d31cb55b055d0726c73f726d6467edaf4607dbe 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -4315,8 +4315,10 @@ sdhc_2: mmc@8804000 {
 			power-domains = <&rpmhpd RPMHPD_CX>;
 			operating-points-v2 = <&sdhc2_opp_table>;
 
-			interconnects = <&aggre2_noc MASTER_SDCC_2 QCOM_ICC_TAG_ALWAYS &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
-					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS &config_noc SLAVE_SDCC_2 QCOM_ICC_TAG_ALWAYS>;
+			interconnects = <&aggre2_noc MASTER_SDCC_2 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_SDCC_2 QCOM_ICC_TAG_ACTIVE_ONLY>;
 			interconnect-names = "sdhc-ddr", "cpu-sdhc";
 			bus-width = <4>;
 			dma-coherent;
@@ -4366,8 +4368,10 @@ sdhc_4: mmc@8844000 {
 			power-domains = <&rpmhpd RPMHPD_CX>;
 			operating-points-v2 = <&sdhc4_opp_table>;
 
-			interconnects = <&aggre2_noc MASTER_SDCC_4 0 &mc_virt SLAVE_EBI1 0>,
-					<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_SDCC_4 0>;
+			interconnects = <&aggre2_noc MASTER_SDCC_4 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_SDCC_4 QCOM_ICC_TAG_ACTIVE_ONLY>;
 			interconnect-names = "sdhc-ddr", "cpu-sdhc";
 			bus-width = <4>;
 			dma-coherent;

---
base-commit: 1caf6149c3bf41a2ee07869449c4ea1ec8bbc2f8
change-id: 20241227-b4-x1e80100-qcp-sdhc-fixes-686b7cfdf064

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


