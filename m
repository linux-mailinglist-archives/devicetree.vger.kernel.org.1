Return-Path: <devicetree+bounces-129137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 45FB09EAB6A
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 10:09:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ACE1A283EC4
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 09:09:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB12A238725;
	Tue, 10 Dec 2024 09:08:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="F3mlVdcP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E49C9232796
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 09:08:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733821684; cv=none; b=i3DmZzWVT52V9TI77xwMmlPH1fAMrbdAWtFNidMdzOM/zJbJF7fxFIuc4ygUvB6UrCnqoWoUroDG6/9bf03Ui78gfbJdQt2f2Mf/m/bwFA60Of55smr+XUWbe8rZkgRArC79MmtM0x4cisWcfhVWeYJ34sL7DD5AlYNDNjN6U2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733821684; c=relaxed/simple;
	bh=IYAwvQwwCQKo8c+lDnI8prpThnDxOHryRsPosT+rDpc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Jr9s88KctCBzTsd4tdjeS714rMKWgEjImWaSIHq893GSZOhTj18lG1Bb7vdCJ9d4OCfZHicFTMYadPC9PaGEQLcfCZFvkWM+xmRnEECwe+InqQWBNK0gKRGJhMGvroMZC8ZoiCmAGBR6kX+sh8gH2CSugdi1RioQ0w0n0zEtPAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=F3mlVdcP; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-aa696d3901bso274172966b.1
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 01:08:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733821681; x=1734426481; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BnE2wEToNkpRucIH8XuqT9lW36KsXiQTzCV3FjDwSro=;
        b=F3mlVdcPMwVKg1P+FG4GhUjraiHFobBSUzJo/kAR7c7t8A9+Ld//Csu/iQv5rQ9j4H
         EB/ecvsVsfUmX5XaJE8obEDWJkiuEJiygxqzTvbPQwsQ94vA0q9oYd3H8P67pO64j0Wd
         Qs2jrHhfEvsDLv4iPhOHEd9RmI17qm0BESggVZzR4ywu0TJxH8lhl7oOnYnSeN5RLqFH
         DgjRTAIPfK28rb258d0VaYAPqYHuJ/VF2C1WGgB9gYZysKDnsAQvzkve76/2e0PI+0fR
         k09kc1x1aP2zCs2+pObk10tfXxqGbqybFN75dOdZtTFSL4XniL+h/L2dY3yBEeL/5rVI
         1ecg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733821681; x=1734426481;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BnE2wEToNkpRucIH8XuqT9lW36KsXiQTzCV3FjDwSro=;
        b=ED8BhdhlMmwhWE7pW1WV1LcTTAWLpegAasO+jVTncizJyo1aswD+DPMM8151JLcTlM
         7DL6VsYttC7QYH2Xqzwqp3ccJsr0P/ROyY+RZI4qJyrdLAUcUq4aZGfrhKLr57rXk3wo
         qZSGLDWPy9BX2nUfbtuEpRt5ztHr7Py2CvQp1PrZu543ks34s7wkrBBAq3oMvXroJK04
         eA39g3yFKu2ysMwT+h1Y2H+BHKJafpj0kgf9Y8YZISgowWgbvt5emPm056c52yNLUEm0
         HxxNYbsGraGhPRAVbbaY24TFNttitJlqyTrA5bEw4osFs8LP4DeanYM/AWE78esnCeF5
         /dMA==
X-Forwarded-Encrypted: i=1; AJvYcCWbtsgs9AAm5QIZI7WBoD40925v+BkCDNSacJOEAsisJG/sjB6cdrZ1EfDCfCs0xltjrEDlz1lZ29uR@vger.kernel.org
X-Gm-Message-State: AOJu0YwAjlOOQEkZO3gvWjO/tPIEeGOmNEPehhAm3/nkW61dmlsx6C+u
	qU8jRUjOc3hhDXjOPMd8wdgEU8qd1xSXJQ39sXIoHdJx+TlRHeBW/v+i+rC27h0=
X-Gm-Gg: ASbGncvcnL9Bq0ntnH+PgA5bmZUO3aC5UqBf+kL/4D0AiZ1FT9s1gpdAXszrSodufRq
	qB0lHPP+t5YYiPvYWYcnIj66Mumgglvh0qQFJCFN9asatFDbz6G/MIH7sqgPBS5wBtEXik7eI65
	b7cYncli9wyKvrupT9zBpbZvx2dQlXBkMlvw4px6Dybft3QkordxTvt2qun0if/BAr0X6pVWHpP
	BAawR8wbossbido6K4Y64en4/Dkqd1Jf5Xc0+4W/I59bZz2kViz8ZHSpoElttnP+80=
X-Google-Smtp-Source: AGHT+IGzH9ziveqkwam6CFxe8nFblJ7owxb05HcZ0YOcd7fMuZM0FNozTJykEazrYFwfBg7gaxbWYw==
X-Received: by 2002:a17:906:3297:b0:aa6:94c0:f753 with SMTP id a640c23a62f3a-aa694c0fbb1mr464377666b.33.1733821681376;
        Tue, 10 Dec 2024 01:08:01 -0800 (PST)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef40:6709:8d26:5167:3c1d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa699618041sm173148066b.81.2024.12.10.01.08.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 01:08:01 -0800 (PST)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Tue, 10 Dec 2024 10:07:39 +0100
Subject: [PATCH 8/8] arm64: dts: qcom: x1e80100-qcp: Fix USB QMP PHY
 supplies
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241210-x1e80100-usb-qmp-supply-fix-v1-8-0adda5d30bbd@linaro.org>
References: <20241210-x1e80100-usb-qmp-supply-fix-v1-0-0adda5d30bbd@linaro.org>
In-Reply-To: <20241210-x1e80100-usb-qmp-supply-fix-v1-0-0adda5d30bbd@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sibi Sankar <quic_sibis@quicinc.com>, 
 Marc Zyngier <maz@kernel.org>, Xilin Wu <wuxilin123@gmail.com>, 
 Abel Vesa <abel.vesa@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Aleksandrs Vinarskis <alex.vinarskis@gmail.com>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>
X-Mailer: b4 0.14.2

On the X1E80100 QCP, &vreg_l3e_1p2 only powers &usb_mp_qmpphy0/1
(i.e. USBSS_3 and USBSS_4). The QMP PHYs for USB_0, USB_1 and USB_2
are actually powered by &vreg_l2j_1p2.

Cc: stable@vger.kernel.org
Fixes: 20676f7819d7 ("arm64: dts: qcom: x1e80100-qcp: Fix USB PHYs regulators")
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
index 5ef030c60abe2998d093ee60a6754a90cd5aaf72..af76aa034d0e17622ab738bfcb25536764416eff 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
@@ -896,7 +896,7 @@ &usb_1_ss0_hsphy {
 };
 
 &usb_1_ss0_qmpphy {
-	vdda-phy-supply = <&vreg_l3e_1p2>;
+	vdda-phy-supply = <&vreg_l2j_1p2>;
 	vdda-pll-supply = <&vreg_l1j_0p8>;
 
 	status = "okay";
@@ -928,7 +928,7 @@ &usb_1_ss1_hsphy {
 };
 
 &usb_1_ss1_qmpphy {
-	vdda-phy-supply = <&vreg_l3e_1p2>;
+	vdda-phy-supply = <&vreg_l2j_1p2>;
 	vdda-pll-supply = <&vreg_l2d_0p9>;
 
 	status = "okay";
@@ -960,7 +960,7 @@ &usb_1_ss2_hsphy {
 };
 
 &usb_1_ss2_qmpphy {
-	vdda-phy-supply = <&vreg_l3e_1p2>;
+	vdda-phy-supply = <&vreg_l2j_1p2>;
 	vdda-pll-supply = <&vreg_l2d_0p9>;
 
 	status = "okay";

-- 
2.47.0


