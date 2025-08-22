Return-Path: <devicetree+bounces-207939-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 336CFB3134E
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:35:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D93E81C24121
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:33:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E71202F6598;
	Fri, 22 Aug 2025 09:29:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CRXox0Za"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE4AC2F618E
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:29:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755854951; cv=none; b=bJ83cBDJ79obJBuDqYp93fwdUVjyXWZ9fDQqlcbWtEjMjXh6FIlKaBjiHzazcW/S45AIXhFjSfU6cbSW5buiprwC2VC3OBRShf+kIl7LblH17X6SaFuUU6HmQbL/zmnIRMlMOTP5FxA2bXRcZz2sHiu5XWrQ7WYJq0afK3dvFZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755854951; c=relaxed/simple;
	bh=FvPs3wBirH9wf6cIhRfzmRxFdkB6syQv2ofYw7Gsrt8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XVsnI3qySWBs8JMPJIxHpapFbyIVIRxXsEXjv5WKT0BWAFzO9qRsVtGU6vvDwRjwW5s3T+ECYZzJN0MEDe68nQHNwt2n4+GpgyfYsCyk9KS2wtf9jIzOU9Cn/wkTCGPW99OMpCM88ALDTsDALu/SyDt6TwFq9dTaCcf1oEonSsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CRXox0Za; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3b9dc5c2f0eso1008610f8f.1
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 02:29:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755854948; x=1756459748; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xZMxXQw8/LMF8pMRBn7r6Jgqr/TVT4ig4WiXL2+/Rbk=;
        b=CRXox0ZaTJ3b1+2NaCHIpkfyBg7O8Ke/lhPDcQQf9OtpYWrwwV/npFj77a8tt30vDQ
         vQiMzB5HyYvhtHSRE0aqC2XZd0ELSNoL8U8i1Nv9Ln9wiK1/23XQYDaNItQ4dH02XfRQ
         v5Pq3g32Pp7b+FivnNctHwCHe/vvE4CeVBa5UURGmFUUQGDZnY8hk/aOGH4WlIss/rLO
         GDbD7uzJZD3oQa3KVSicadfNhD27WIQccwsKB6BFzvwb3omzQRXD6Mr+FJofUCIDC304
         2/fAhnvzeFvltm4WwkJeBDygBkH93CPm+2BlJR2eBGL90iyOv5lfmmrxLOGCf6uZ8sKV
         RC4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755854948; x=1756459748;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xZMxXQw8/LMF8pMRBn7r6Jgqr/TVT4ig4WiXL2+/Rbk=;
        b=WodzgMEiQB07EkI4O1fgKe1KR12y/+KyWz+Ia9dcyOXXRTASM2O9yLEqp6BtM0D6gf
         oFUM7gd33CUfUxdbRIzuOS8YsPQtWIMs2MplNX1Hlrb7Ux2RbGw4OYaafFzdF10obSSK
         wEJTHiANFN4669+oDHQUtUkjfyvBVBrSjzht/+HjCLmDGJrmL20Xh9JYwef6EeYclKzF
         3+EHy8fx2m3D/qfFwdiLP2Odh0Cy0F4ADp//COjjaaF/Xi23PM6szRBrAEGrsNEkwNp4
         3/IbVKbQWO1WwTjxGzQurR6H6r+NK5CGmiJgFliGgWLQesTo6RU+OPt4WX9UCqWI/RHg
         M6LQ==
X-Forwarded-Encrypted: i=1; AJvYcCUJZyLHSxkoruMOl+lNUDwL6i///yeJzKhYhrZJJMxklRyTBWt6VkFdDtbfFdTDawRD6sUf9ReOHavQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3yhfDt8MUtCkZ22DiQw+MSecML1CQUBPeV7z5YnxucusuD2bD
	92C1OmTBODLUpSxPuFGjH2C02uQSOClgVjON3N1Q2nUGyzB8jMZo5FzBBfIdHccGzUM=
X-Gm-Gg: ASbGncu83ft4FmiD5vlZ/WxOGGtoMNeRgbSytpUiR2mEMaLVVzUx6+rwdnQ+ZW+8NEl
	LW3g4MlynhLTHKFGKTgfbHTUtYyh7weaHd/bdlfw/xFEySyFaJwx9AQrKadqYgO1oaCDarUlhJw
	yOwqvW/bzfZmIFgxlbsEMDP+fsT6LaShqo5GYDjxoISTajPNAgyzIpjMnbblr6rWIJQRiGkJIPl
	lAPQpaiUhtsysVVblNloSrqGm07vSL1Ax9zUePbHhwfU1bpluYhpvstLGrPpJcXcL+8zfaUbomo
	2GEGvILizqpqbv84Q3QpaCDwYV9X2PAtRYhg1iI8QYAgEZxepjLK2mgGx+5q8hoJJDjY10Xfuin
	sh+z1KS+nn5ROoAmOYEtNwR6YbLDorwpje266Bw==
X-Google-Smtp-Source: AGHT+IFJ9FWfvS1AnYycVX7DAKqsbG4Q/IzzJ8xRcOcq/trFxgqfeNBZXVo51B4Eh2DsKIVTjFJTYg==
X-Received: by 2002:a05:6000:18a3:b0:3b8:f887:c870 with SMTP id ffacd0b85a97d-3c5daf01e82mr1443738f8f.19.1755854947871;
        Fri, 22 Aug 2025 02:29:07 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:c671:531c:f2ff:2a7a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b4e269d20sm33831805e9.2.2025.08.22.02.29.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 02:29:07 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Fri, 22 Aug 2025 11:28:55 +0200
Subject: [PATCH v2 04/10] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s:
 Add missing pinctrl for eDP HPD
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-x1e80100-add-edp-hpd-v2-4-6310176239a6@linaro.org>
References: <20250822-x1e80100-add-edp-hpd-v2-0-6310176239a6@linaro.org>
In-Reply-To: <20250822-x1e80100-add-edp-hpd-v2-0-6310176239a6@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Aleksandrs Vinarskis <alex.vinarskis@gmail.com>, 
 Abel Vesa <abel.vesa@linaro.org>, Xilin Wu <wuxilin123@gmail.com>, 
 Jens Glathe <jens.glathe@oldschoolsolutions.biz>, 
 Srinivas Kandagatla <srini@kernel.org>, 
 Sibi Sankar <quic_sibis@quicinc.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Johan Hovold <johan@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
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
bias-disable according to the ACPI DSDT), which is defined as
&edp0_hpd_default template in x1e80100.dtsi.

Fixes: 7d1cbe2f4985 ("arm64: dts: qcom: Add X1E78100 ThinkPad T14s Gen 6")
Tested-by: Christopher Obbard <christopher.obbard@linaro.org>
Reviewed-by: Christopher Obbard <christopher.obbard@linaro.org>
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
index 4cf61c2a34e31233b1adc93332bcabef22de3f86..76d491f085db2eb6ba8c8358063882611446ae72 100644
--- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
@@ -1010,6 +1010,9 @@ &mdss_dp1_out {
 &mdss_dp3 {
 	/delete-property/ #sound-dai-cells;
 
+	pinctrl-0 = <&edp0_hpd_default>;
+	pinctrl-names = "default";
+
 	status = "okay";
 
 	aux-bus {

-- 
2.50.1


