Return-Path: <devicetree+bounces-204708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 077D0B267DB
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 15:45:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7417C2A40E4
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 13:34:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71ECB3074AC;
	Thu, 14 Aug 2025 13:30:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cJksusFk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89A75306D4B
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 13:30:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755178250; cv=none; b=OI0Tkn7a2HOeS0iMbuq7oVypUPuBXi1tjnizBEDXSyYur7K6yhIz5KEZLQAfNhIujEFwxJHJeAq6L7Ydmq455uFyb2GvhmDP7mkoKBk9IImGuOn4hVVyvbfY/6lfj+YEriFkEHQDZB4ocW66OUAixNWPwDF2X9acBpINAmS5lNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755178250; c=relaxed/simple;
	bh=GaZvRFv4128lAqMlpTFVLwnOn9gOhB/5YbymF6GUNrU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nQIoS1Qq7Sbk7T4B3QU0bUSb8SLwGhE0SdCflZ1+YCuzrIhVOSNEBjm/MaG1t0bPjZ6SLyK89r4v7Jv+dKuUm+L0GeecCm8uCpRAOAK5nIsawe1k6KgpCLpr6byqszmW+HcCWa2OyKqEYHkr+B/skWb5XtceIO39iP/xhEc7h2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cJksusFk; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-45a1b0bd237so7475995e9.2
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 06:30:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755178247; x=1755783047; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UTkjR4AVfQFQ4JdIrIaqDXIbIwBvW0y2B1DRP7iokNg=;
        b=cJksusFkxQsTbty+Ddpod9SqILBYJpUc3ZLAyZvRSEi6k6H7n3V5+4lRDafQszS6Jg
         JE+FEODF+zVGvJ8jg7FUmel9We8x29TONckWd8v60QZmcWLOguxHa/FtNqhB+QPEhDoF
         f86h6X7tn6mxw7uYQMbYXFYk1YSOLBNTvL/wEfybyZVgIpUmuf9gSvMAkaE08VuAbolR
         M6y7MAueH4wdiZ0fPZNgCg5QuLe1wKDyfwAkb3RPghumGsRRc27lHl31o7LK3MYji1Ak
         PAko6HmSM0Lmd6yQDGONrGoPo7tqUtpdljSzZjmoxLX1kdPdn3F9lzRDnpgqC0z9tCK9
         qXvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755178247; x=1755783047;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UTkjR4AVfQFQ4JdIrIaqDXIbIwBvW0y2B1DRP7iokNg=;
        b=YH1aJ/BcGmDpll0Xg/cNfKanXFs1xea9NoJVdmweRhZOCYAAR3fM9o28/kiIdEqA5t
         XrxUC9HYER3fOyp3u5Oe3WRtBFD7aPtZ9OiujWrlagO/AXUVb+11f4Iynzno1Ub5HCOH
         x+DzD+L5wqJYIdQWWSNT7Hwy/v70vkrX3FAJ/XjXqfHALZSn5A0kFu+H32A1n6W0Laij
         Er+LpVA+tqE3BimJ0S8vAeVfHvRMMJOO4jKMKylXVZdluq8s0/aJlCgBPgSdtma5t8pr
         1xcyD61bxMLjQ8Dc9aPAH3gSxS1JEJNCsypxpL53BBksH8dBrDy7mfTlUt9OletISTLI
         0/mg==
X-Forwarded-Encrypted: i=1; AJvYcCX5Ziz+qn7eqcOqmshuInL3I+3ujcfZmtRFIz4+lPASFKyXkd5OefHwTLMhN/22d3NZFFv7ZC7CazTR@vger.kernel.org
X-Gm-Message-State: AOJu0YwVb4jb14L7vk5KPFi35ZsRPbkzNwemmZrhiYlupulDRNHAwPw6
	4SB17wxLaDwoTYzzTdUi0r454arS6ounrnBH+wgRcIMiBHKTVcN6EANkroU3eD5+/1Q=
X-Gm-Gg: ASbGncuuz37u995F99wmr42XTMwtaqa/2KgjCQb6MHgFmCFRzC2ffSJx/OWo6jlqKBW
	GdCC+zPXVjNMfy29jDAcP2S/o2QAw3D80l33saaeq/A/RRpZswrv1l24XJSWcXoSyc2zfGbqCY+
	eSszU9NA6veron7MLk+LdeVqBiaxu751qwcM8L28ka6iqSxIeqzoCrf2SERf2tIKgIXrMg3LgXz
	DgnRPdwZe2g0eh2V9KjwwwY6Ctt4QQsDIRUoMSZlmgDtTmtNkq/AxzkelQt5SHMOb3BUSKLRJid
	VCkrVtGPn2VE8BER3OQ+t/5hAoXj3hY9UW6+5QHBVa5KsiCH0FoZGnLsdn2X6plgE8ChATNrLIv
	R+qB9jAP+Jlg0cWHbZfec/vkF/e6m76dfcuMb
X-Google-Smtp-Source: AGHT+IGPbl0U1uI1tIWWQhqnmUUfpWK5Nduw4p+gnIdH8QJvgzFH+ZoJh9pyeptum3eemuNfitFa6w==
X-Received: by 2002:a05:600c:548a:b0:459:d3d0:650e with SMTP id 5b1f17b1804b1-45a1b60f4e1mr25811935e9.13.1755178246811;
        Thu, 14 Aug 2025 06:30:46 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:9c1:e029:fc81:a800])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45a1c6bc85csm21468385e9.5.2025.08.14.06.30.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 06:30:46 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Thu, 14 Aug 2025 15:30:33 +0200
Subject: [PATCH 6/9] arm64: dts: qcom: x1e80100-hp-omnibook-x14: Add
 missing pinctrl for eDP HPD
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250814-x1e80100-add-edp-hpd-v1-6-a52804db53f6@linaro.org>
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

Fixes: 6f18b8d4142c ("arm64: dts: qcom: x1e80100-hp-x14: dt for HP Omnibook X Laptop 14")
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts b/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
index f9ce2a63767c151192b0618ee2154e8d97316c1b..a701146ce98db4a2b01cb9798c0805d7db7f5df6 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
@@ -1044,6 +1044,9 @@ &mdss_dp1_out {
 &mdss_dp3 {
 	/delete-property/ #sound-dai-cells;
 
+	pinctrl-0 = <&edp_hpd_default>;
+	pinctrl-names = "default";
+
 	status = "okay";
 
 	aux-bus {
@@ -1314,6 +1317,12 @@ &tlmm {
 			       <72 2>, /* Secure EC I2C connection (?) */
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


