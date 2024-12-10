Return-Path: <devicetree+bounces-129131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 58BEE9EAB58
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 10:08:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 61206168B58
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 09:08:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C3DF231CB2;
	Tue, 10 Dec 2024 09:07:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P+qGMOjT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A664230D25
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 09:07:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733821678; cv=none; b=lFBpPsoE2bAnu4gsc+sMJrvXT3qECSFExcQlj22zliA62OXm3QMD44msVSd88J35gHO7wJ5lIMbiI11HOWn094PODGSmDn1R/K8dVdPrjO7p4b0jN/pkyPUVtRvE8wITjwBlKJmMTtsk0pTJvExGbsoDrQj6Wigo+sdj+WNFikM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733821678; c=relaxed/simple;
	bh=LeOeLTMTGIisFTd8s5GYZZv3DswIAXVm7zRdCpehk2c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=R2bkDKg0UjPgTqw2I4CFyZ2QxopxD4bf9yDvTVaVALoQfWQibrtU49WIzMLNaC8/Hjy/aaZ4dcvefXdA6Iagkgj+3rwm6l1m5BXjvXbA1N3YqvfhkErF6wefgnxlg0tViWwyyubaBfTLjNEqYgGaTTx96bDCcc+vfSfJnUlqwec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=P+qGMOjT; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5d3e6274015so4423592a12.0
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 01:07:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733821675; x=1734426475; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m6qOsPJJdAlZWS+86xEE7U+jJkJPEqu+4/SLHbofnyo=;
        b=P+qGMOjT81XSMxqSkNHiS5ZbBOKUgkl4zAtXeN5m+bcgXF9nrpVgRxmCCh2O84gt7c
         LMiLFL7T43UKtQXTaONb9x1pSPrN9+mKc7tOj6KgM24hIPxNStCASLzSPhRPJRkkwuFC
         qkh38b2uZ4/9onf2CMwZroxveJSyQ7jZZCVzpJxoBVpK9XFQAqcKLeBNx1wM8/BYn6vm
         9fMGXLvGlim0sNEGBd/7XXVm7el2RXvfQX7m+0raSL883i8AfpJbzTQ0bp390JR3QdMI
         C82uaklx3yu+l6PZG61qqIRw6A9p3PMMrDNxwcv+yoCWZuVYl8jSFh0U8glxr5YsgdKn
         tmOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733821675; x=1734426475;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m6qOsPJJdAlZWS+86xEE7U+jJkJPEqu+4/SLHbofnyo=;
        b=EZYIRwupwVhMQcf5BXaYAsaqAZ43Bl2y0hpRs88zEvCmz8I8RiQ+0bX85ZtYUNjnZl
         qPzT8p1rToKfUR31Z3FCzjpXRRElmITVIhKLLXsU4d44mZwpp4ExC74Z8hyND7tX9QkD
         fsX3CqSqs4BTy3U+j6BALso1almstdhM7ZPJuJ2teZJXzCYjWQ/AFmlv+Bs1JIIjTdAM
         QmBfgzPxn/exZo6PPG3OYenjd3yPhhZvycHPc3IDZ5TQ5AMUy/gnJR3Tdc8XCP9936Yt
         cscZ/dW2ZjVr2HaZaVDCTWG/isx+imQxBji3IdFzJ6s9p2xIQEcge5WUuehmh/RaXIho
         M1wg==
X-Forwarded-Encrypted: i=1; AJvYcCWWTSl0abTVmffwefYHWE9uwNwVI9wsefPrkRnMT+1jqZnBcOb809k+bpkKo3uS8Je30rWncWCh0OrB@vger.kernel.org
X-Gm-Message-State: AOJu0Yyrurug0BDmedkMZ0+25wcqeMIVohB7PxK5GN3qSCzTCPCgHgOp
	57qYKe8wFYCdTAfT8lkAJk2r7sDUpZbQaftwWyh27+Jltlu1M85RL5Y3MPI5E4BQErHb4ynZfUe
	MwAk=
X-Gm-Gg: ASbGncu2uSyern4tt4SHJMKoYC0WLyM1mo/O2JbXJKY0i9coIxptmIWEhSlQRZSEcgL
	9ooAgAySRwP5HNiKLfyszuwrbhKXFb3UJ6ZK33T5+ZPlpwGOTuOTKaQ6sp6xg4hkYJuRc1doE+l
	ZMSbmg3zcDceNVU8s3UqfJri3xpPkMdUVXOtgXh+HR3vEnmkTMOfX7QVU8i1apnRwg8sjDfjULe
	rG5651QJ679VmGRsEnX2kCz5TTddMnHxu1zkqOAc0BATYS5AokUYhAxlV+RiKc/5kI=
X-Google-Smtp-Source: AGHT+IGcPp2U40SOKQpcMuuXend2SGVLo2UdoLzm0IbDMKVEaEz1s+qCYkB0BamdH6ZHApYsd7Xg+Q==
X-Received: by 2002:a17:907:7844:b0:aa6:707a:af59 with SMTP id a640c23a62f3a-aa6707ad8bcmr884383566b.50.1733821675327;
        Tue, 10 Dec 2024 01:07:55 -0800 (PST)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef40:6709:8d26:5167:3c1d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa699618041sm173148066b.81.2024.12.10.01.07.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 01:07:54 -0800 (PST)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Tue, 10 Dec 2024 10:07:33 +0100
Subject: [PATCH 2/8] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s: Fix
 USB QMP PHY supplies
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241210-x1e80100-usb-qmp-supply-fix-v1-2-0adda5d30bbd@linaro.org>
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

On the X1E80100 CRD, &vreg_l3e_1p2 only powers &usb_mp_qmpphy0/1
(i.e. USBSS_3 and USBSS_4). The QMP PHYs for USB_0, USB_1 and USB_2
are actually powered by &vreg_l2j_1p2.

Since x1e78100-lenovo-thinkpad-t14s mostly just mirrors the power supplies
from the x1e80100-crd device tree, assume that the fix also applies here.

Cc: stable@vger.kernel.org
Fixes: 7d1cbe2f4985 ("arm64: dts: qcom: Add X1E78100 ThinkPad T14s Gen 6")
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts
index 975550139e1024420ed335a2a46e4d54df7ee423..86762f555979d96fbaaf325b210c196e711b3635 100644
--- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts
+++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts
@@ -763,7 +763,7 @@ &usb_1_ss0_hsphy {
 };
 
 &usb_1_ss0_qmpphy {
-	vdda-phy-supply = <&vreg_l3e_1p2>;
+	vdda-phy-supply = <&vreg_l2j_1p2>;
 	vdda-pll-supply = <&vreg_l1j_0p8>;
 
 	status = "okay";
@@ -791,7 +791,7 @@ &usb_1_ss1_hsphy {
 };
 
 &usb_1_ss1_qmpphy {
-	vdda-phy-supply = <&vreg_l3e_1p2>;
+	vdda-phy-supply = <&vreg_l2j_1p2>;
 	vdda-pll-supply = <&vreg_l2d_0p9>;
 
 	status = "okay";

-- 
2.47.0


