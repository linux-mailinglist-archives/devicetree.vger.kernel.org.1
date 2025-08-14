Return-Path: <devicetree+bounces-204711-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D3AB267DF
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 15:45:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9F933189A257
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 13:36:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79DC730E0DE;
	Thu, 14 Aug 2025 13:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GIQ2hTZk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9796E307AF9
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 13:30:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755178253; cv=none; b=QQ5qrFI+0Sc8qNfKvtIlWBltki4jpJDVvXi/tle1lPk9RtzyySWDjFggVBF2mVwBLIzBju4cx+Nm9CpRVT9JkAfj2Hg4m1ydR3cQX0croF3xi2IIAzXsTtefqktl+QPX1N6l5zpKReE2jQmTtsnUksayBHOWgCnDH5Eri4kvXOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755178253; c=relaxed/simple;
	bh=QynsBKDQL2BzLf0bIXsFSHjH/GTgsrvYFywFlGIP3TU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nw6nCLFMnTYWHLRVqrYPQVEta6K7kL3Z+QdDDy6oyR80UMfs77DqtzIzgEx1zkgb3KkbT5hymyZD38h+t0vOP5r//C2DTw2iQlFfPqCv4yNN7m+qeyG+jBC5OUlfMLAuvw8pzQ4od/qlDS1ljaFOoaLFgkfmjT6m5gxMTrnViA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GIQ2hTZk; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-45a1b0d224dso4909135e9.3
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 06:30:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755178250; x=1755783050; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jwSXTCKpuxO5xRMtx8jKiOAluJgz+rUMYQemGXnn4yk=;
        b=GIQ2hTZktUGejYNRmtZ9jzKDhaZYVmYhpuhY/ExkK07i6oXs5/3kQUST2hZih6b40C
         OofEu5TFtNBS+oPIKtGEbraTpDOpREDP73bpp7+Uz9CBH1uNfz9y+/caFNY7aC+cEX3m
         lpVerFOWroxP0jSwKGZak+eSE9cKZBI3xLPU9vtlor9dsA/bQ8Cz1oCWrwSTYyxPwN9F
         L0rF4RM0sJ12yiWbaI4Bf+eXf7olopsTPKFjIR1eqHJvzV9vcQktvmIFBs/T/At4D34H
         Z/BtPByBlHvWjFRr5lBIWGFo6gGPXLa8CV7EKMA9XQxQQcmJqzumojyK0l2o/Dtskwop
         BnUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755178250; x=1755783050;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jwSXTCKpuxO5xRMtx8jKiOAluJgz+rUMYQemGXnn4yk=;
        b=q3qDpbugdyMgXTxOIu4Fjd8Xw2PbjWLAAYxxXRw2+F/T92oEC9lu5O+lbMyV5ZRhDK
         ytdf6KWFN68QVUZ6TfQkYoGYqzUMlFv20OQxVIsKEDcY7Cshnke492G9JwfDlKgd5kwR
         2vqC2WRssXeTGm+7DjRXX8sOJ/rJyemKiXb1E+RdtFLcRmO25vKZJll+8pMwYLEjkAhs
         82Z2GYXmwqWE5+jQbFiGLz9LimqTPNnA0PCt9PMmaf/R+9U36AlFKKr4DKqiwuPlLZ97
         XqbNYiV9DmvSs6OWuVDhFL0JuTP3oXVSwaZrzTL9L4xhOaCUCom5gb5da4kP0gR/xRAf
         7fgg==
X-Forwarded-Encrypted: i=1; AJvYcCVUj45h4eTbJtVx2fDdqtUAMqxz6rv6+LDLh9MHypnwYc2/refKD5DXjWbVVFllRbXvUBhHP8z+vwwE@vger.kernel.org
X-Gm-Message-State: AOJu0YzyENubywkCewFEl/YBsywzFvrXGOshl7aha3Qmtxn+pjU6vqqi
	SvfScLxbxNt8PWcy2jHbfoRBeCUvJ27/j6QFwVu0tsFiNwerrY4PqjE088DTZD2pv8k=
X-Gm-Gg: ASbGnctFojIXABWkAsZicLGA/VDHFFTAl+G4E13iMrzUs+IX3ChEZbXqI9UTtc4/rAw
	o/DA3ajhLatohXfArmXAY8zFZNjJ10h89Wtm/t0aeDhs0GyR97btFmm4T+tBD3aCD9/Z6Eq6Iwq
	pz0NwfsqKHulO4X1TUrLbVlPyRDspxl0ey2GOljO6BNA5/WYE5ilce1vxYC4UpE07eBfQiEhzJy
	wrJirvWVvIpUFk/PaOVvd1hkrrrcyXQDdcRpsn2Il7YqKXgYwiggoR0V/NlUZn7GqT28xwWO4bh
	ZcmiShqgWDY5i6sEE4XftHHXT03DsebFj9yqREbJDJjZU7tuQ+iwWRVnn+Tv0hOv1NHQwJ0cLiP
	XvlDKLg4igjNhAodCgbTSkdLEOuY+00wCrgeh
X-Google-Smtp-Source: AGHT+IGt5cRVYspwQNW34QgGfD2H+qX9Ylgeh1WDh9AMn63El+afvTplduM9mj+PIQpeny+iXM3kBQ==
X-Received: by 2002:a05:600c:1d16:b0:456:db0:4f3d with SMTP id 5b1f17b1804b1-45a1b66828emr24158145e9.24.1755178249900;
        Thu, 14 Aug 2025 06:30:49 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:9c1:e029:fc81:a800])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45a1c6bc85csm21468385e9.5.2025.08.14.06.30.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 06:30:49 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Thu, 14 Aug 2025 15:30:36 +0200
Subject: [PATCH 9/9] arm64: dts: qcom: x1e80100-qcp: Add missing pinctrl
 for eDP HPD
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250814-x1e80100-add-edp-hpd-v1-9-a52804db53f6@linaro.org>
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

Fixes: f9a9c11471da ("arm64: dts: qcom: x1e80100-qcp: Enable more support")
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
index 9369b76c668b5c008fefd85d5ca18e87ab9ce93f..c7f9f0dfdfac187ea88b1b207a882eaaeabe749a 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
@@ -915,6 +915,9 @@ &mdss_dp2_out {
 &mdss_dp3 {
 	/delete-property/ #sound-dai-cells;
 
+	pinctrl-0 = <&edp_hpd_default>;
+	pinctrl-names = "default";
+
 	status = "okay";
 
 	aux-bus {
@@ -1179,6 +1182,12 @@ &tlmm {
 			       <44 4>, /* SPI (TPM) */
 			       <238 1>; /* UFS Reset */
 
+	edp_hpd_default: edp-hpd-default-state {
+		pins = "gpio119";
+		function = "edp0_hot";
+		bias-disable;
+	};
+
 	edp_reg_en: edp-reg-en-state {
 		pins = "gpio70";
 		function = "gpio";

-- 
2.50.1


