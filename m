Return-Path: <devicetree+bounces-69390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 06F928CFC0F
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 10:47:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B2079282D1E
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 08:47:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D15113D8BC;
	Mon, 27 May 2024 08:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="YJ5Dls2K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1D4813AD07
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 08:44:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716799460; cv=none; b=dfXCrYYABqRxlCQuUtiSAOIMg1TEJUjsnF0LvDyNJlDiJPnQ+2LVxGD6iex/omGM8d2JVsVDHsT0xiALevxTH3DjsPufR0/bqDeiDwxSeyCQszrYa/nxMC2RXW4IOgGSCm+pEwAxAL5pSVB+4t55Vae7MzM8XE/dAN1nKApF1QY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716799460; c=relaxed/simple;
	bh=3EDAUHsXKoG/qKpImUuoYQAk+6P6yudy3+ZtIt3JzhE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SANmWelP2W37/mmVvPznaige95Fji8/McVjsruFdkf68iXLE7qiihDG+o/qw8kipj8wDDRTSazuUzuVo1We3vmdMSJ3jwXutpCbXoe/F5QBQG2IZkcHDMoPdD6i3Z7yrtsgXDy2lQoef8KcqSiNp26tDmv147lsuCTHSp/IgreA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=YJ5Dls2K; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-529682e013dso3024851e87.3
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 01:44:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1716799457; x=1717404257; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ee+lz1uwo7ctAXz2XE2Pj87WD7POTM2aqHSnKbmZAtQ=;
        b=YJ5Dls2KnR3/FHfrY/be1/4+7pyhCkIeysY3a77VIjKey+CIJkQaYCjNwZzZTlDCSH
         uRhmMEdJdKtFYIiCK3cKzSgPEcFehvnsblpnrgaRWtRq4UgY4ncLC0LXXxh0/Wx3Dtu9
         s8CdZmHot99sqK/y4ePvWO85GbS1Akr7p6seqtecKHgWP1v44Wv3SsH24PQLExwe1PgC
         Iho2yOlF2GUoQWYcK7a7sTB9mCemEoskyYvuX6Cwe7pGatJ/3++mZdYRFQuaUMdscaoy
         mSd15lEM+Qy7GypkTws5Z2iZEU8lBg7vIQOvfBbk6R/Ry0Em3XCDedKafJD6uqNFQkv2
         5m+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716799457; x=1717404257;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ee+lz1uwo7ctAXz2XE2Pj87WD7POTM2aqHSnKbmZAtQ=;
        b=sSDYuqPOiLAarOP+hYqB/1+MJ5rN56N42EIbxkxkYhqPmWd7rL8y6zIyrOjbqggGjV
         ce+8V5BYc2fEARg0zXbxUq4zyRBSVlfwKMOK52cANeOFuV3QpJk6pbk1hPgc2SqqGgEv
         Cs2kcBzaLxIiIWzf8pfmSCcUHuTPghLbJpJ9bsWsgRV6vcdo7PmjpSy486gYNrOqtn8p
         ncR2Vdiu2+661RttqM/545vCBnNy8T6Sekax1ykw1idImEGHcQJlyiYP/THrCHZh0Ew1
         Of/YpKaEXPZ2EcE7uIGx3/x7Zn5v0m/wSSbLpuJtKn+97+e4CTkQVkWRthyryPW/O376
         oQtw==
X-Forwarded-Encrypted: i=1; AJvYcCVG76IeX0TjEAaRjz014JPbaoBRR7KWRAe98JEk4bgEpqoIDdO41sDvtNcQNYA1yl18pKTBtwOZ2riM4l4KxeMNBnqreE4x9+ONqw==
X-Gm-Message-State: AOJu0YyQsKSrpfNv9m6/wmgsMcGs2D32F4FDQY//s8+z+0K5QdB69YAX
	A5+zoiuiCFKS/D13rawbSFh59mVTIscbIU1duzRbvdgyrwp/iNzPMp40uBu30vY=
X-Google-Smtp-Source: AGHT+IHgNGBH0VfGcIy+2nfmBInkHcxkSMBQ3b9/ZSu+UgtuVTHHwuFH5qRtuL2AKhsJQ2UiDs7DyQ==
X-Received: by 2002:a05:6512:328e:b0:51c:5171:bbed with SMTP id 2adb3069b0e04-529649c5d97mr5449550e87.15.1716799456936;
        Mon, 27 May 2024 01:44:16 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:75a:e000:c322:131e:ff9d:ef41])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42108966682sm101365575e9.2.2024.05.27.01.44.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 01:44:16 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 27 May 2024 10:43:52 +0200
Subject: [PATCH v2 5/5] arm64: dts: qcom: sa8775p-ride: enable remoteprocs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240527-topic-lemans-iot-remoteproc-v2-5-8d24e3409daf@linaro.org>
References: <20240527-topic-lemans-iot-remoteproc-v2-0-8d24e3409daf@linaro.org>
In-Reply-To: <20240527-topic-lemans-iot-remoteproc-v2-0-8d24e3409daf@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Jassi Brar <jassisinghbrar@gmail.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Tengfei Fan <quic_tengfan@quicinc.com>, 
 Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
 Alex Elder <elder@kernel.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1173;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=ltuWgnMWBVzAFPrqL4rpwFznsQIrPKuJMFtG5UNQsAY=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBmVEfZe/GoJRntgWCYkwxLrWLqW+XWv1z2ooQwe
 6xSFV9LCNGJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCZlRH2QAKCRARpy6gFHHX
 csvFD/9V8wQHO7eGFPD5rqaV4OMF82bXwBTAmtVVnC/vZuILo+aKn7VhAyYD/PrKHGnj/yfyIFS
 6hqBLaRJt3Kl6RAncH7CjxN+ROoJoZ7urrM1Egj98o697IidhPQyTcNgFNJdhNKnNu9TKFihyNF
 iwTej7Ux0TBrSyteCqt3SQ5ZwMYYlJoSqPk1xPM792Omh4twuYfyaLZaKoKRievmXvuCK23eTN3
 FPRntZSMvibTwohL1rs2P/hJwtLaEIXK9Z8+KiSg1LruzHt1tZInEqNCfDZS3ur5KuBXEXSyFL9
 OKAyR4pPvRnW0x9mfD2vWUE2CNJdTKK3Ns5bQfIErkt68wfNS2pU0amYDaZkpcKnrIDigex86nb
 6E6uRLFqc5lFdQjkwOa9zM8s5OLI5aRUooUYpJDcel5Y19/VLEx86vygmKfzYjtFcgqhzjNnXks
 7MG2BNwtiNBx2OfhI5DkpWPHFwvRT2Eo5wwRii36wnemTNeJw2QfZyTOER9Yd46W0J/KXMlDLBa
 4mVoD538ANbF0ifNhlUhxsCGr6LLZ09/yTKaLFveMRgyMC+QSIxXTuFXjT12WoL2U0vqDAX+Pe/
 cP6YtqYH1rczE0KiMMk2gDEdlW6xYZkEaMEQ9NJHWS03wXT8yNmVoiQELnOSqUwDuApSyOjUfyB
 YojYZSuQAGCNwQg==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Enable all remoteproc nodes on the sa8775p-ride board and point to the
appropriate firmware files.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p-ride.dts | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
index 26ad05bd3b3f..071fcaf09364 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
+++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
@@ -727,6 +727,31 @@ &pcie1_phy {
 	status = "okay";
 };
 
+&remoteproc_adsp {
+	firmware-name = "qcom/sa8775p/adsp.mbn";
+	status = "okay";
+};
+
+&remoteproc_cdsp0 {
+	firmware-name = "qcom/sa8775p/cdsp0.mbn";
+	status = "okay";
+};
+
+&remoteproc_cdsp1 {
+	firmware-name = "qcom/sa8775p/cdsp1.mbn";
+	status = "okay";
+};
+
+&remoteproc_gpdsp0 {
+	firmware-name = "qcom/sa8775p/gpdsp0.mbn";
+	status = "okay";
+};
+
+&remoteproc_gpdsp1 {
+	firmware-name = "qcom/sa8775p/gpdsp1.mbn";
+	status = "okay";
+};
+
 &uart10 {
 	compatible = "qcom,geni-debug-uart";
 	pinctrl-0 = <&qup_uart10_default>;

-- 
2.43.0


