Return-Path: <devicetree+bounces-204707-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C79EFB267CB
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 15:43:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DC5872A3E6A
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 13:34:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80BF630748D;
	Thu, 14 Aug 2025 13:30:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i4i8TAcT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D335305E3E
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 13:30:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755178249; cv=none; b=Nz93cZoQpWaMV/sv98cg0HGRB1xbdEGuQbxRwhLhhLr4uxWAhnX5ar+aDFSSX1sasgclDQwGTXYtzomgC/P4uOsPTZqLRWWhTY7uKB8sDdy+pf4zw/9Fvn00QXUhwFOKiABNJTC6ce3V8cQGSfWPuJBD8Enau1/h192zjULG8DY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755178249; c=relaxed/simple;
	bh=znQ7gVSuwvaFmfXTJN2s7CZyHtnz0WIQh+xOOE8QsFk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OQS5So8A1hFyDl79Mt1IMXwiJM7L4YqSAg/BqBAf5fVPrmDSRH9k3fZwre6LPI/KfYfXkWTGpFm9TzQ6TQ3LYp/Dp9eWHUCJivvpKIfo+DvzJoapd/YiVpBSOp2tOiE1DC5NgFPsB8qD4V0Fh9I9hhkmlwYgPM9XTXaSj6CJHcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=i4i8TAcT; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-45a1b0d224dso4908655e9.3
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 06:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755178246; x=1755783046; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0cwBy6Ky9emn6674S7HsQ1ClNw2fn2tkOaPVrQns16Y=;
        b=i4i8TAcTm/yBBu9WfQAjttHHt225kn0EhEmpXTds34xcG2FrUeSKtXi0yfjvbn6Qwv
         4hH4gCEm4L84OeI4D735R9XYg8Q6PfQr9LltAQxieCi7dVrmPKKkPvt91Z0/ToW1e6xY
         ZBX5yd/Yh4FFQ7ZAQ3X+oSbobwqV+MDQq+yNLQOKNj03J0aaSqcjQjNYvNirRwtoH0Vc
         DfXX7vpqb3K8Jly5/UZDGIKMUUJ3Qp5N9dKaD4BbIsbsvH+4gbft7hbT5FC5+O5a5U2O
         0S4w/JhxGcnpfJElZlJiyWfQD2aEFTXZKilSoostuhZHbq3rir+Ac2CJpUWN3EQzRxCF
         T8WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755178246; x=1755783046;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0cwBy6Ky9emn6674S7HsQ1ClNw2fn2tkOaPVrQns16Y=;
        b=QWmhtVl8an0FFbsHA+yENmN2mun1ID6njVybQ8KVsERDhpMoyg+w6MjMjpmXgKHddM
         /e2XLH8knhtz2wed+b6VY/wD9g9PMVLLE3rQlzG7TfJkvjSFVAfVnakxoqCuXWbEAt0a
         QcdWcjgFfQoaCqQV/DG52LVLj+wakremW9bTXuCDD4dFrGJDC2cwi9oE1PcCp0tXAL0i
         UCluttKHWgJ6p0dBqYQY389U/VCq9l5TrjtxseYdIETMIgbl+JKwBoJ60F+jirJ+lht6
         kUb8pC7U6PBV6AJxFHBHr6tsiSQMFJH62rZdHlTbagb7rPIHx9/SJKbwGDltyErJ5eKR
         E/gw==
X-Forwarded-Encrypted: i=1; AJvYcCVRH0QGkS864iDUuleoh0XFNLDT4BQdXU0SsF3HnNyT9E1QvHh32Pt83Ow4R+K2LoBHcD8gHzIDjBBC@vger.kernel.org
X-Gm-Message-State: AOJu0YzkqmSMPNPV5dx2sTY2+zp32qbC+Mc89mGHHdkK+tsaPL1ksUjV
	6eofR1WPwvz5unGNXr5rRrScNm1amDbOa9Zs8ep854YbMFTiIHof/htZPhbQYhBQTwk=
X-Gm-Gg: ASbGncsdhLFz0B5u1LWe4LXJDOmj3nfG9qNMHRU47sg+y/sLUVsZxnRopVEWDsAXUJr
	gM9RizwVy+E83+QvaC73KpNLftZW1gZa6UCyb7cppeqttuSgqPOi0I6BesKibcXL008A2YQeL0i
	Xsg5d4pyPSizB3v+4OgLtvKq8b9tzauVXVjZSUtn2uUuEUCd4HL+Fqe+6D5YmMPoWd8ycmhWIjh
	oIOIU0F1p97t6wDg6Jn78YX2cBM+uooa+pKRv0iPXjwNICgaPuUmxiadxYQdodA6nuSdhyHR5dO
	aSN5hPtNaQ4cZq9IzrD6LgXrG29ofxLZYEEZiScRu3hk0+7QY/zvuY04JUHVS5d/R/gNGHy3r7u
	yGbDsbQ0KZquFv2GQx59zz+9XDBxZC11xmtB0
X-Google-Smtp-Source: AGHT+IETd818n3b8dsIfDRA2rMYZ4tfdJVXGsvoq1dwVvSh2Aexkw7PjMywYOPDX61Ol3IkavJaK2w==
X-Received: by 2002:a05:600c:5309:b0:459:db69:56bd with SMTP id 5b1f17b1804b1-45a1b74882cmr24060075e9.20.1755178245701;
        Thu, 14 Aug 2025 06:30:45 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:9c1:e029:fc81:a800])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45a1c6bc85csm21468385e9.5.2025.08.14.06.30.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 06:30:45 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Thu, 14 Aug 2025 15:30:32 +0200
Subject: [PATCH 5/9] arm64: dts: qcom: x1e80100-dell-xps13-9345: Add
 missing pinctrl for eDP HPD
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250814-x1e80100-add-edp-hpd-v1-5-a52804db53f6@linaro.org>
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

Fixes: f5b788d0e8cd ("arm64: dts: qcom: Add support for X1-based Dell XPS 13 9345")
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts b/arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts
index 6b27067f0be66b5c41fa681ff3b4f535100bdf59..6cb98197eb9c0d6e171741aa83e7f4ff77e911c9 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts
@@ -900,6 +900,9 @@ &mdss_dp1_out {
 &mdss_dp3 {
 	/delete-property/ #sound-dai-cells;
 
+	pinctrl-0 = <&edp_hpd_default>;
+	pinctrl-names = "default";
+
 	status = "okay";
 
 	aux-bus {
@@ -1080,6 +1083,12 @@ edp_bl_en: edp-bl-en-state {
 		bias-disable;
 	};
 
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


