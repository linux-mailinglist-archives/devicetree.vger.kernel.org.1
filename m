Return-Path: <devicetree+bounces-204705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC73B267BF
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 15:42:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B35E87273A8
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 13:33:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E537305E21;
	Thu, 14 Aug 2025 13:30:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WM/5un6e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F23E302CCA
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 13:30:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755178247; cv=none; b=rwMAHsKnyazooIZYhdQXvzS8nmwKgns2ZOp4JCrXkfwwwGyuS4sXZKdDHYb+XsPDQa8bKn1iDxlRU0fJk5eOa/C8MLO+PK8vkddPpNdHi/YKxb96zB5egoU3yxfdzbLRPglQgYVHya+KCXqd7KW0ku7hOfBcPcKLdv0aVeO1IqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755178247; c=relaxed/simple;
	bh=DdmaG7ehVjESVEvapkg0MYfay+O+SC8wve45b9Wg3/s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=G5uXU2jvmVi8VSuhLpX1Nkq2xz3I5It4lC/ynpTIXzFtmlBQWFO+O3+1sqMAhvGyGMDUzVtLcldvrKC2RKwOW5AJ5q+67NcUrB7DXyNseDcRf/u7Tar2ah0bug7CU/iBC3gwjt+2LuSJQJCe9eMXBC4K90h98Az0ndf1aMgAG7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WM/5un6e; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-45a1b00797dso6271665e9.0
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 06:30:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755178243; x=1755783043; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xO7OyOIjZ2UD4IHxiiLEPx4FR9p4ANXjYYZCIW4sH8Q=;
        b=WM/5un6e/YNZZ0QVIrPiVD7B/pmEf9nj/2nE5A/Tcxw3QJj38cjI8aPcHmXJhlYSCT
         Zoz3R+6WAQC2IDg5VDnv6HWGFTsI9cR5LSMpcwkTmmivs634DQkzzm1sPqcwMZHulKxM
         1ttcBFvYL0E8zTSAFjJQ+X1S/i1cGHXXtnAX9vmj7Hv1EdXcf2IwfmSMqBtjX8Rat1tj
         10ccHXJbw95hWJqwBKcT+uQpNKBHYq8bLJlzHjQ188ayNTpCm0M6h+qPfMItNUsvro4f
         0vr5wTQNB9O+lVRBMoUyoE/Re+ohOoW1LZLhYkf0KBymTKl8Q6nnFwO6pxvQxDxV3RD7
         yDMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755178243; x=1755783043;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xO7OyOIjZ2UD4IHxiiLEPx4FR9p4ANXjYYZCIW4sH8Q=;
        b=kwIfhD9jpsnEs0jH/ZF0tV+S4pvbUrtjwWrsd/RfYn129Nkq4mVoYXe4a9E8n9+gFq
         v9ybb4U+jHdskGtThpFZ3sD2z2ls6O9P2rAmb9iBXL2IU+86vcnlBZrSxL3OHDsKA8Jy
         vpv9HzBiHjxA03J70m6U8wTW6Md9CSr40FL+2m7otZSCOhuq07m9Mf263sWUVCyIa2Aw
         YQrfcMmBI3Mbmb48LNHD7IeakYQoMRr3OsOIwswnaSdMMavuRcSW3yJeSeTYwIJHpV9X
         5kXCwOErUNeVSiN2IXGNbzp7jgcuoNfK49wbsTOrHlA0Z9Rz+mHLJfnQpM6ibVVaibH/
         9ZuA==
X-Forwarded-Encrypted: i=1; AJvYcCW12c3Iool2IcPapaDqYTQ5HxXZA0foidl9Ocr59QkIagIap9jDC7n71BDTkDJH/62K3+UAdVYnSFrN@vger.kernel.org
X-Gm-Message-State: AOJu0YzGfqyCiFKhZpV4/5aNZgA48nNCWIGVFzPvla9rSASINcSDwoHS
	eJXLjx5vAZtSjfip9juR2Xj4udY5tAt4P3+HpnTGoACRpZh5SFRKVfSQz5YxDhJxGJk=
X-Gm-Gg: ASbGncvOZ2ZDU4lPDwKaGVBm8lcjcSVAjNUS0YrhRKHDJ/fbm0z/78Wq+vdKGUiLtBX
	ilWWVpN0tv+cJP6DxBVcQrcNhmfJz4MaifNcotP6JW01iwOWR58r+JhX5TIF0TxOvzUIK0lWemf
	HdokX0ek0GiwZ07lH4yygm+7cF9RbHJ1L3DuY1zH+TCkuzVaxfmytKJ2bI64bcN03GeddeuyTGS
	xPKGAukh5LXzM0gUg66/0m57wjU+4mM6yH61WJr2I9hJ80ZsOvpUPEzE05uoULj4Yy5utd2Asij
	UbcwDU8ADVQRSVAKIdKcin9DVXgJL3tQOKAQycgXtxyU/bQ2c6gFOfll2y5ErxTOifThxAIueeg
	LzCSJJTzjLiq2qzbS5VYTy8Cp8uXepwWUv3mY
X-Google-Smtp-Source: AGHT+IErG9lWZOvLzZHMGjaWUJqrantKmVyUgoNQhEzIXeLjDvvFkrGyYX3YexiBqjoDQV3W7HBtaw==
X-Received: by 2002:a05:600c:458a:b0:459:d3ce:2cbd with SMTP id 5b1f17b1804b1-45a1b61bdcamr27554675e9.13.1755178243488;
        Thu, 14 Aug 2025 06:30:43 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:9c1:e029:fc81:a800])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45a1c6bc85csm21468385e9.5.2025.08.14.06.30.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 06:30:42 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Thu, 14 Aug 2025 15:30:30 +0200
Subject: [PATCH 3/9] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s: Add
 missing pinctrl for eDP HPD
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250814-x1e80100-add-edp-hpd-v1-3-a52804db53f6@linaro.org>
References: <20250814-x1e80100-add-edp-hpd-v1-0-a52804db53f6@linaro.org>
In-Reply-To: <20250814-x1e80100-add-edp-hpd-v1-0-a52804db53f6@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>, 
 Abel Vesa <abel.vesa@linaro.org>, Xilin Wu <wuxilin123@gmail.com>, 
 Jens Glathe <jens.glathe@oldschoolsolutions.biz>, 
 Srinivas Kandagatla <srini@kernel.org>, 
 Sibi Sankar <quic_sibis@quicinc.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Johan Hovold <johan@kernel.org>, 
 Christopher Obbard <christopher.obbard@linaro.org>
X-Mailer: b4 0.14.2

At the moment, we indirectly rely on the boot firmware to set up the
pinctrl for the eDP HPD line coming from the internal display. If the boot
firmware does not configure the display (e.g. because a different display
is selected for output in the UEFI settings), then the display fails to
come up and there are several errors in the kernel log:

 [drm:dpu_encoder_phys_vid_wait_for_commit_done:544] [dpu error]vblank timeout: 80020041
 [drm:dpu_kms_wait_for_commit_done:524] [dpu error]wait for commit done returned -110
 [drm:dpu_encoder_frame_done_timeout:2715] [dpu error]enc40 frame done timeout
 ...

Fix this by adding the missing pinctrl for gpio119 (func1/edp0_hot and
bias-disable according to the ACPI DSDT).

Fixes: 7d1cbe2f4985 ("arm64: dts: qcom: Add X1E78100 ThinkPad T14s Gen 6")
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
index 4cf61c2a34e31233b1adc93332bcabef22de3f86..b775110bbcaff165cac259cacc7509a64746b987 100644
--- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
@@ -1010,6 +1010,9 @@ &mdss_dp1_out {
 &mdss_dp3 {
 	/delete-property/ #sound-dai-cells;
 
+	pinctrl-0 = <&edp_hpd_default>;
+	pinctrl-names = "default";
+
 	status = "okay";
 
 	aux-bus {
@@ -1263,6 +1266,12 @@ &tlmm {
 			       <72 2>, /* Secure EC I2C connection (?) */
 			       <238 1>; /* UFS Reset */
 
+	edp_hpd_default: edp-hpd-default-state {
+		pins = "gpio119";
+		function = "edp0_hot";
+		bias-disable;
+	};
+
 	eusb3_reset_n: eusb3-reset-n-state {
 		pins = "gpio6";
 		function = "gpio";

-- 
2.50.1


