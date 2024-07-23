Return-Path: <devicetree+bounces-87599-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D2F2939FDD
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 13:29:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C32211F227B6
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 11:29:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1E78152E0D;
	Tue, 23 Jul 2024 11:28:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JHQQyBG5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF04E1527BA
	for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 11:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721734115; cv=none; b=AtvtNkUlJd4yr4eZ57+6zSU0yOq8jd/z/vZ7UzJd9CNLw+EHthG5+BRzD7/faB6z82Ld5OmH26iYN/YfoHx3nv6IC8em18BE+quVrMo8V2HTLMGDvGITZE47B61/DPoYXE3m+Mf+UGx1U+oFrOsSHk/VO3J9t5Q7gab7yuvHAw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721734115; c=relaxed/simple;
	bh=ES7wWrOhhkjynRF1+9BlWZ7LeDgeDZ/7LKOPoPdvMZA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eNRqoOpbHdu/Fjw/WkJhKxem/B6bjdKJYN2bIUelb1HO0YSKwIX5TSkD9Hyp0ya2h/WX+4rBEDysG92eTV/e9PnT/tAmQ8/xDgIfpecLmIv5bIyR7KUi/HmW75lQqekYLKpPDUTZtdsPUAkWg2B9uK1doDnIUQ131PJyZplXqqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JHQQyBG5; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2ef23d04541so34255421fa.2
        for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 04:28:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721734112; x=1722338912; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EBzbMSTI2xw68Bw+2TLir3SBIr1TPeDFMebcN1sCpn8=;
        b=JHQQyBG5t+QrNMxVOka1B8LibJc5IQiQdEyrxCSj5o2c5bU0/B281Ia9hX5xfj5scH
         thjBN+OZJeGJk385hjJRvaFIB992YtOSyGaVFzP2tpKRyLWCTHvMax8W68Ztag953kVO
         vSpjyfH0r0TkOaMlBuRpgBCReRThiM185R3jUnpSSb52cdME406kIlXAdTGqgO/IzxI9
         CKIcP3i5AlycDJYo1peCS/+3uK2yYIgMjiqg+XlzjfRnoaj/C3OhrV0hst1EXSr5C4VR
         VyN+RoGQ7Ava3FUPOjqp5wAKgGeB23IcaWla3WnCXIjOUkeIfS1twz6BzZeno/SDAf3N
         mzfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721734112; x=1722338912;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EBzbMSTI2xw68Bw+2TLir3SBIr1TPeDFMebcN1sCpn8=;
        b=GKidR3BmiHRGrOnljuMzCMCC8aS6LKRPMzwpJUaYurHwnYPCdJ4wLShNMh7QBRSO4v
         GMxxXpVvk/4MwMauI+qxlBA1J2EKi1SQkXJ5P7q4Cw/Nf+PhANALpmhd3MrC61zQwrXA
         WPMDxZ2hLMUkemcT15tGMjH82FttMy6Pj8SIYAUYiUMEyCLtctjgDlJw27iV8pWse2sW
         hHngqQVcdybNMfAqv2r0+nuh2Y9HaNggQSZIQ85yzlQBPnBfXd3aLqJVeunWeUhLmZRY
         t+ypKZ2IHs2z15RFKM8QrqIOTrAM9Y0Fsytlltx/dsh72QrAA+wvExUX/rfnyjdtZUMt
         UVjA==
X-Forwarded-Encrypted: i=1; AJvYcCUJaafFmz+e6hYAs/YLHuWmtzjOjOKS5w6yeagupy/KOQk0z6OiaxyVWohYCcu90PlGvUWgqueiDR9Zn6L/NeysM6cZ7yU531gyDA==
X-Gm-Message-State: AOJu0YzgJrk4ipejFi2P48EMEEHbFPUO8OLoFKLZi/zozVdEzqzhQLkL
	BtPu2hySSR9IhDdNUSBBvW4LQDYUj0AYJDU9i9DXaJRCWihAeU3jVVgpUTd/9rw=
X-Google-Smtp-Source: AGHT+IFL18lLK7vMYwu6+uF/LnNLPc34++B4phx68OGmbRd11N7yB5ph4XVMRy/fIrBvldkaE2G3bA==
X-Received: by 2002:a05:6512:32c6:b0:52e:9958:1a66 with SMTP id 2adb3069b0e04-52efb6356f2mr7400142e87.23.1721734111815;
        Tue, 23 Jul 2024 04:28:31 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52f01552b43sm950871e87.286.2024.07.23.04.28.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jul 2024 04:28:31 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 23 Jul 2024 14:28:28 +0300
Subject: [PATCH v2 1/5] arm64: dts: qcom: msm8998-lenovo-miix-630: enable
 touchscreen
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240723-miix630-support-v2-1-7d98f6047a17@linaro.org>
References: <20240723-miix630-support-v2-0-7d98f6047a17@linaro.org>
In-Reply-To: <20240723-miix630-support-v2-0-7d98f6047a17@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Jeffrey Hugo <quic_jhugo@quicinc.com>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1653;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=ES7wWrOhhkjynRF1+9BlWZ7LeDgeDZ/7LKOPoPdvMZA=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmn5PdfmX0MSLna5RfQDOiud5GvUIB8TrDx/7g8
 YScg/ylLO+JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZp+T3QAKCRCLPIo+Aiko
 1UORB/4zJkaO1UgTrir4/fJ1lPBnYA8z16RmLwGVqq1hdPpg6qSbZpr62ipwahb1F3xIv/ZAUzT
 kvbD2F0JmtlbDnpF4sZDM26+hl0zCu53RATmjBdrsh2C8eP9XtiGeY0ibkd0H7wF3pPFKDCDOch
 3aUujdJieU9s+6Pp4C9MBm56720ALbXLuTy+nnw8MtcQbKQUQMOAYfyV0CpiPnM3c2DAkJqLGlo
 q1KyGMDEcgRw9ARmveKt7jnXrmtMP/4Hepg+m5gGeYNSu9RmgSCKkXf49SSAcZs7GtLGnabTgVt
 QOL6R61Mdt+uhkJoOukxWq9NGGauXWPKaZf59xuoed7WKgMt
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

There is no point in keeping touchscreen disabled, enable corresponding
i2c-hid device.

04F3:2608 Touchscreen as /devices/platform/soc@0/c179000.i2c/i2c-0/0-0010/0018:04F3:2608.0001/input/input1
04F3:2608 as /devices/platform/soc@0/c179000.i2c/i2c-0/0-0010/0018:04F3:2608.0001/input/input2
04F3:2608 as /devices/platform/soc@0/c179000.i2c/i2c-0/0-0010/0018:04F3:2608.0001/input/input3
04F3:2608 Stylus as /devices/platform/soc@0/c179000.i2c/i2c-0/0-0010/0018:04F3:2608.0001/input/input4

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../boot/dts/qcom/msm8998-lenovo-miix-630.dts      | 25 ++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts b/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts
index a105143bee4a..133999a7ed2a 100644
--- a/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts
+++ b/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts
@@ -11,6 +11,22 @@ / {
 	chassis-type = "convertible";
 };
 
+&blsp1_i2c5 {
+	clock-frequency = <400000>;
+	status = "okay";
+
+	touchscreen@10 {
+		compatible = "hid-over-i2c";
+		reg = <0x10>;
+		hid-descr-addr = <0x1>;
+
+		interrupts-extended = <&tlmm 125 IRQ_TYPE_LEVEL_LOW>;
+
+		pinctrl-0 = <&i2c5_hid_active>;
+		pinctrl-names = "default";
+	};
+};
+
 &blsp1_i2c6 {
 	status = "okay";
 
@@ -35,3 +51,12 @@ &remoteproc_mss {
 &sdhc2 {
 	cd-gpios = <&tlmm 95 GPIO_ACTIVE_HIGH>;
 };
+
+&tlmm {
+	i2c5_hid_active: i2c5-hid-active-state {
+		pins = "gpio125";
+		function = "gpio";
+		bias-pull-up;
+		drive-strength = <2>;
+	};
+};

-- 
2.39.2


