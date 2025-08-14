Return-Path: <devicetree+bounces-204706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 07FAAB267C1
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 15:42:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 47B5E9E04F4
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 13:34:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51428306D3C;
	Thu, 14 Aug 2025 13:30:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eZzFEskC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A154303CB0
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 13:30:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755178248; cv=none; b=fpcpcHrLHMie5fLgyZZAzL71q0FwrktZYMFSvebLr0h+o6EAgk81R0n5+m4Yw8ecInl+8d/7Npbv/Wyz+SaxL3BiNJbjrQK0jUhqjDmEqxnWGOg1G/lK+ZsJ0b3/ZocIz3CkbooNNdKT1FtmOD9YHq0nwxapAxg6kHd3v8qdgEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755178248; c=relaxed/simple;
	bh=AW/C05gpA8zsI8foPtShW8852Xb5/60pVcz2h0bpdoU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qCDPUlpJyOjmYVN9dZE71yODB/pnurVSdSWccwkFh2QWJ/6nwjkR2lbQ0MKIojXBW1lCE9VB291j7W+BfUvtR7lSQGxtGlManewuI6FHEJpoq9lEMOuZ2pGsR7rG7N/MiLhdNOBd40qxTX9H6Spz9XgH0mIymy8BuchLnhGHFJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eZzFEskC; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-45a1abf5466so5895115e9.0
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 06:30:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755178245; x=1755783045; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AUjJp1gXVO5P1y1//Y8b/D+RnQw1pgGXmM3cVh6CEY8=;
        b=eZzFEskCY7YsFE1mrTM+YxL7odeegPaiybx1zHADhI719JIVDFVZpKo/I+7YXpqY3s
         Kt4AmZW4R51+b9Q49ZMfaz2cAVWJ548OMnQnP3iuXrnDxWMuyBp+lyeUb3ILyhpy7Mdp
         yShC5MDv7se3KBBM8pVYdMBz2mfLBl8Pw1aqX485QoyGvVBkvVEEivrkELNVQe+7jaVa
         mnc92KMLNmbmUdjieQerp9sW8vkHtxenHAIWWxwHSpbVDu1+gc+19kZ8SDrhBsJqfii0
         gBYvpfGJ8814d4OdhWUeVLBFACmV1cJFhVYFC3Ir72z+XJuLwWMxnONSzL0KUTCiH/PF
         Hmkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755178245; x=1755783045;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AUjJp1gXVO5P1y1//Y8b/D+RnQw1pgGXmM3cVh6CEY8=;
        b=YRiodWICT8NhSip/Apgc0qhOzJbIkrV+DDOfzAaCOPPJFaFBxRfEC4DvCe72dys7ZO
         mHMRma34BpaRLMH/tyqAQZiCyVaiP4n2F7uNXeBrjxKq/ofdC4UxmroXclL2OvfRxWij
         MWaXfGHL9nKKSOvAd/bwclkGtGSCu/XT34LhYbk615I/XU+YhD7zDjzOZNu/bG0arR/N
         GcrEa+WXMk7jgTglI1ie/YXJ7nrTq+SCDrXM7c4nn/u0801ZsvYSnleZuVF1FwGQNaKj
         FbwblVDlzlHVqBK1Je1kq7I9bLvf889qgv3crvgYKBsc7iv5ALOOyNquP5iKAn7iVTm4
         YEcQ==
X-Forwarded-Encrypted: i=1; AJvYcCUSfJIcqiU+74+vZYSiNY9wXJ/Eug9L3Qul1Ixn8Naxw88A0hbNfHbzDkXz9Lf23z20uzBiXaqbhYYz@vger.kernel.org
X-Gm-Message-State: AOJu0Yyc0f2mEcw6gA/+0WzUZVeuByHHAabfW/plKFlShM6l/BlngZCT
	Vr2vJnniSuCrZEJFm0JnG4biZ+BJ76mJnWDWCHrKmMt/fbFNPy6fbA8RcLkuots1Qdk=
X-Gm-Gg: ASbGncu9MGiAXykGRJC6no/Hak+Ziwpwz9seGiy+iyMtYjw6p2dl0oPqTqM9Xad7796
	qVvdAeMAP1Heqb1pdJEIf6kFn0AbWwAXvgf7Pqo7FiUhinc7Xn+zU0ktfrtXDvHlf70PPapd8qH
	/FQGphK03oBb5nvtIlVG6Vg4UyCnu0NuZrDlfejOBlqP1SV81pqhtitc6qa4kwkKCdOoCfPzh1l
	95NBpsVKOMkR35qS7kOyubJH49/qIVBVzeCaT5TptpZxenjrPllORgZLqMQ8M3iICsrgDz4nOrl
	Wg2PVnwcSTdLH7OpAeN5iMnItB3lFCa8zvbcjrWGoz61jxOYJ9494/ZSLABoJBakjkr5/PLtUWg
	GuZ5zwOLQaRTp+2TJc4Xpqeo/BxtLsnPGBuqzGuuLU67faNI=
X-Google-Smtp-Source: AGHT+IG7JKhLyPc31BjgL55tLvmXBt9UfMVtsEehoyZNBdAf2sbJjekns+XXfh0hMgyFYmQuYJ6SFg==
X-Received: by 2002:a05:600c:35cb:b0:453:6c45:ce14 with SMTP id 5b1f17b1804b1-45a1b7924b3mr20295805e9.4.1755178244588;
        Thu, 14 Aug 2025 06:30:44 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:9c1:e029:fc81:a800])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45a1c6bc85csm21468385e9.5.2025.08.14.06.30.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 06:30:44 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Thu, 14 Aug 2025 15:30:31 +0200
Subject: [PATCH 4/9] arm64: dts: qcom: x1e80100-asus-vivobook-s15: Add
 missing pinctrl for eDP HPD
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250814-x1e80100-add-edp-hpd-v1-4-a52804db53f6@linaro.org>
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

Fixes: d0e2f8f62dff ("arm64: dts: qcom: Add device tree for ASUS Vivobook S 15")
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts b/arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts
index 62eba17cdc87c088ca471b4cbf5b44af06400fe4..312d754df18cc71aede13f77b07846ad04d06eaa 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts
@@ -593,6 +593,9 @@ &mdss {
 &mdss_dp3 {
 	/delete-property/ #sound-dai-cells;
 
+	pinctrl-0 = <&edp_hpd_default>;
+	pinctrl-names = "default";
+
 	status = "okay";
 
 	aux-bus {
@@ -741,6 +744,12 @@ &tlmm {
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


