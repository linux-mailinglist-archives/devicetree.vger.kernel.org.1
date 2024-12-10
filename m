Return-Path: <devicetree+bounces-129133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B619EAB5D
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 10:08:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 351EC283809
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 09:08:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E3702327B5;
	Tue, 10 Dec 2024 09:08:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rkMVD7IU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5F0231CB6
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 09:07:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733821680; cv=none; b=E1OAOzqEuhvqVR4DdrQrd6cSlVBt7FHITlfIQzrCbhzBXo0uLy5iO0fmSF376nOoSaR+lyIiDkZqXWBDZW74RFMdnm9cGtnIR5qOUzslgz9SetLsrdhalp8klXLKHy2ybiIbwGYtn+cuypcOuUeNR27etFB/j3CepplQm1CLsUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733821680; c=relaxed/simple;
	bh=+FZI7p90x8pKuXu4wG+Lh/pKwT4cM9Ld+dZ7EPC/XaY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CraJQszIiOyG9yWpp9w88sp4MBNeae4vwZceLnqGGPiTe3LLmx3GDsEhtCrT+0TUb42L0QeFBxg1QVt9BQY3vr0AHRnh9GxCg3GfbA7a7k9BFGsrxn5pNSwfRNKkG3vXRr+oZ46OghgJ47QSLhfeJ4Cn9WlR/G06tPWXpp41o1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rkMVD7IU; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-aa1e6ecd353so862073766b.1
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 01:07:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733821677; x=1734426477; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=efJ++Y02aMYEZf39htR14MgkTrlByWoeM1Gi0XFn3zk=;
        b=rkMVD7IUX3julo9hyuCB0d6T0Ixb6nwXDmiZJ3Ar3j4msLKcYfFs3PyPvZGhHjQ1mA
         zHFgsPkaII0dr2sKqKGcOf3cPkV55DQ5VgByhB+hJXD3a7iCUotfzuhihEfFeoArpkEc
         sPDuiaQ82bI3cyRYPXdCHIUCtVNuWMM8GVIbqcQG1EF2Eio4QDKFvjBonpalTKOMCo4o
         VJDKuqwCUuc2PmB11Ny5SEykCKW9CA98gGgjgsqAUoaH3sd0HKCRRWkJWS6fekNK8jRV
         C5Pch4BcANdTL8Z1gQz17GpcFlDYrWSjtYvEHtKHjjvyZ1y0qeyJwXLwVtw6iHZ0//ky
         CEMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733821677; x=1734426477;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=efJ++Y02aMYEZf39htR14MgkTrlByWoeM1Gi0XFn3zk=;
        b=QMNlDm8q930lQlOPEXD34xLPISLwTVt0/Kj0SpGx7YS8sdj111+zCSjNpNG7gI/axI
         HeGdJZnavD7yn+kGjsatuEQjtEMPRJ3o/Uyer95jBl4rRe3IjSHqzUbAGBpB5jes1S6x
         RkDCeEZAuE/ZDV/aWnTvDiob0Lic9xdrIxcVM2yqstoMwTUkkqlQwBJP9pv9KSKRHF3b
         jDkpTSBTxlEySopoN5EEu8IQ9V8+rDplpFXBKMZeVom2lanbcsCCJz35C1KLFziuQgLy
         dhxfotz3ecXrjwwH3FCVx0DVmYIB1JdRbqoRvCUxaB6+7M620AbmJswlvmkll1y+M4tC
         xUaA==
X-Forwarded-Encrypted: i=1; AJvYcCXoOColUd5b6EgKYDlrCDkUDrWnvcXrS1J549pZS7oTTe8jrIk7g0jgs8V7in+YRmcuQ4uDyXaRHNRD@vger.kernel.org
X-Gm-Message-State: AOJu0YxReFE3VOX0QrfovgthA7LtvMbYNq9oI25jv8nm1b0Bv5dvvQJJ
	UsZ8iwwxaEu512jMukX2h2zRr47MO0TeIgqBujkEKSSiLzhtSaMypk+vjrsasEM=
X-Gm-Gg: ASbGnctrGC/OtuNzcrQBoGH3du14lELyDj8J1jq/yrjobbzGJRkXf29/Vw7ZiawvvEJ
	FcAX0YtFRHvmrUW08Qe/rn8El01m+NCL43RE9BWFq/G1KBHC8MczIuTfQME5W9EuWCvb48mr+Az
	va+MtbmYMF8Xb6OTNAYZia8TdtZGTOWtQbK5vi3qos32rSOx1SalTDuS2j9C7tMUkALPfARatnR
	hsegQIbpwCoDeXmcoT69EC9i3z26HIYRrrf7dXMRuJU+xrQUeYTvwWo/JhFlPCAggA=
X-Google-Smtp-Source: AGHT+IHOSLN91GRMFwbfXF4p+jpX74rYIBidttA0YEKYP9pNN983icoBOo6bymBwpvzHTUdD2SCK/A==
X-Received: by 2002:a05:6402:274d:b0:5d0:9054:b119 with SMTP id 4fb4d7f45d1cf-5d4185d5fb5mr8775267a12.21.1733821677437;
        Tue, 10 Dec 2024 01:07:57 -0800 (PST)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef40:6709:8d26:5167:3c1d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa699618041sm173148066b.81.2024.12.10.01.07.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 01:07:57 -0800 (PST)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Tue, 10 Dec 2024 10:07:35 +0100
Subject: [PATCH 4/8] arm64: dts: qcom: x1e80100-crd: Fix USB QMP PHY
 supplies
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241210-x1e80100-usb-qmp-supply-fix-v1-4-0adda5d30bbd@linaro.org>
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

Cc: stable@vger.kernel.org
Fixes: ae5cee8e7349 ("arm64: dts: qcom: x1e80100-crd: Fix USB PHYs regulators")
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
index 39f9d9cdc10d8e79824b72288e2529536144fa9e..401326123db6619552b9ff2b90aa16dbb6649b92 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
@@ -1187,7 +1187,7 @@ &usb_1_ss0_hsphy {
 };
 
 &usb_1_ss0_qmpphy {
-	vdda-phy-supply = <&vreg_l3e_1p2>;
+	vdda-phy-supply = <&vreg_l2j_1p2>;
 	vdda-pll-supply = <&vreg_l1j_0p8>;
 
 	status = "okay";
@@ -1215,7 +1215,7 @@ &usb_1_ss1_hsphy {
 };
 
 &usb_1_ss1_qmpphy {
-	vdda-phy-supply = <&vreg_l3e_1p2>;
+	vdda-phy-supply = <&vreg_l2j_1p2>;
 	vdda-pll-supply = <&vreg_l2d_0p9>;
 
 	status = "okay";
@@ -1243,7 +1243,7 @@ &usb_1_ss2_hsphy {
 };
 
 &usb_1_ss2_qmpphy {
-	vdda-phy-supply = <&vreg_l3e_1p2>;
+	vdda-phy-supply = <&vreg_l2j_1p2>;
 	vdda-pll-supply = <&vreg_l2d_0p9>;
 
 	status = "okay";

-- 
2.47.0


