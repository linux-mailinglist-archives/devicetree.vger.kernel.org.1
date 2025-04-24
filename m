Return-Path: <devicetree+bounces-170456-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D05A9AE72
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 15:08:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 685814A2DFA
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 13:07:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4576A289363;
	Thu, 24 Apr 2025 13:04:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SABBVXJP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1789728137D
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 13:04:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745499892; cv=none; b=JF6JhI4XIKFF3JybOqFYL7pcrt2tiLOHSwj+byfbe9J3puBCx322nPgLnDMdxsWxj+u+OkMB3cgfOJfgogxoc6Lyu9sdrVuggyDVTYsaN2cSaCyE789aG0yvR9nMiVykuiT8viCVszvG2Vc5xmGOxh5oU3RnPDA1l7j3Nz8I9GM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745499892; c=relaxed/simple;
	bh=Xo1D4WMW3u8AexLikJCqgRpBtmlISfqstOrN3jZwAJE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QxIgp+c9a7W6q0Nnow+cuIcnHwsQAn1Ud74V9z5NDMpaOzv8vrZZjk62Q8a7mj1IMkyC8u2kmE4sZ9vT9mBZMDlw2u28b5lKS+vsyZff/M2czwhKDs+eAJ07duIUGiXYiPeMVFf8V49CmefdUM9TpGNhBEQb/IgC84FMvT3qbyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SABBVXJP; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5f121612dabso141982a12.1
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 06:04:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745499887; x=1746104687; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ykdI3Gi+8HO4bIXRSEA0t0XdHfsbEsUCV4pjAqv7UHU=;
        b=SABBVXJPJhBw/cThxHU08t0Hk1iFK37/lNUWxMRjBx8TvBTJAJn6df/Ct3D7BSvwDE
         yA35MZnrGSI7nm10SKklofSoJNJE+L0QUfu5YO2tHFgE/mEROV51BqI51Usfky/ygZhg
         1OSh5dYFEBfnvJpVSKGLNIGj4zfZCdz4awJX69GU8OjInxO1u9tq3lqn4/zDZPF2Fk7E
         5mSXTQ1OJGBx38Q00LA6/GxntstSRc22SIJuhqxPZwy9YcVbgNXIVuNUA9hw9uVXG5S5
         95eFF5IVg8itG2JkVdW+g7/vL6xnygsXT8o10RBSeMdr8P3uv+uVIfLmhNGiFE7xfPTo
         gRGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745499887; x=1746104687;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ykdI3Gi+8HO4bIXRSEA0t0XdHfsbEsUCV4pjAqv7UHU=;
        b=JasmGVDt+9UofnkJiRGKplJHZxeg/rPJaAhGnV4fU9OhtrENxCBekijRPd+LufnYgy
         6759QVRVwFfUAjrZLFsCfaSsBbM1lju3nCN5s+ohD9yTGPWagN8fD3UWS6h3X4FW0gIn
         6545yviw7xrHxh5HIFXz6TflvQeoIuukK65l/kdT1W05Md68eD3JaxsFVmfybMyJEY4R
         wqXGjqEueF5Q/WRGvytUE+HLFdvBKlo/jTqwC43pEQnSz78cT9oKD5C1iuijtTYPCu2t
         k7BVnx5ZQu9TIuq7eyaGzZvcq0xPIsnUYN80bZyQCJrAt+/nyVVoYegU3vGtq1FSSONS
         c6Vg==
X-Forwarded-Encrypted: i=1; AJvYcCUjxnTHgPxQR0tTXfhmWVIC4Wc5zv/DJQKY7/FXAZHgEH181EZEvDMWaqPS5mKyTDS7yYnG+GIlC/Xl@vger.kernel.org
X-Gm-Message-State: AOJu0YxWWUzoOS1JLfC2gLhdXIvFSFcXLlznL6coLa+4Vzu8+gJtDOw1
	dbU+8LyE2Pm0Z2TMAQ97c7DZmW9lx38N3MdEhw2MUDIVeKQwchizLnUwE3uZkHs=
X-Gm-Gg: ASbGncsmZtjhr3Z9xvQF+y0VYrAZXlwJv6+BUK0KhPF+UvxI2K43/yCA1H8F1IYuWqH
	nCm25aw9xL6YpMNFDShgtOMF4BInuyRkOnPw+xgTAr+OWxMfRgtL/uEqdBJIi7K48aqt3quUfTs
	uV2iPebAEDbhfQryHYr1mJDN5F1htuEVpIR6lK7U2RodWmNUVqTBEy41KzMAwWWyEuY2RG7Ys59
	fN5fdVRdYW529rjoR2u2KWBhfauoi1UgHxeFcDpsWQjNKQER+da0k2hmqUWdrfKQtGk+9ZQ3R1c
	ZrAxBLKdrr9+8fgt6zn9afXqYzBOnBErptKsHD0Csgv10q+fylGIfTKZOCZ1ii3W5bQMig==
X-Google-Smtp-Source: AGHT+IEnwMjmqYoeXiol5aRWjKTI8V0HKRWyVipeDqDx/054e4xCWp2ngxOEU1v1zHU6J2MgEsk2bQ==
X-Received: by 2002:a17:906:f5a9:b0:abf:6c88:df53 with SMTP id a640c23a62f3a-ace5725d41fmr89394966b.4.1745499887122;
        Thu, 24 Apr 2025 06:04:47 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace59898006sm105101766b.46.2025.04.24.06.04.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 06:04:46 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Thu, 24 Apr 2025 15:04:28 +0200
Subject: [PATCH RFC/WIP 4/4] arm64: dts: qcom: sm8750-mtp: Enable
 DisplayPort over USB
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250424-sm8750-display-dts-v1-4-6fb22ca95f38@linaro.org>
References: <20250424-sm8750-display-dts-v1-0-6fb22ca95f38@linaro.org>
In-Reply-To: <20250424-sm8750-display-dts-v1-0-6fb22ca95f38@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Jessica Zhang <jesszhan@quicinc.com>, 
 Abhinav Kumar <abhinavk@quicinc.com>, Abel Vesa <abel.vesa@linaro.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1381;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=Xo1D4WMW3u8AexLikJCqgRpBtmlISfqstOrN3jZwAJE=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoCjbmi1xU3eE3c43nUPHItZE3DFChc9pXj2fks
 c47cykL5daJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaAo25gAKCRDBN2bmhouD
 1zWmD/9p2QKcbcGrH0JBB350VSK8vdheJHkABSI9fKr9JwvDM3Zsnn2KB+levveiHs4D+5uYw/M
 XlVOH0A+lEWOLMsMYnZbh6c5gX8HZoOFmon81afG4/eOfRtaH1ObChIYGtiUnWH2PhCCAHCv/Jl
 ZaPCSJH+6urTjZyTru6y0rBG4u/fQvOnblFhz1kZYCgqIj1fZgb3bMaHmtmFb8O2UKZlNDrcCId
 sRVlTyAv3Fv1YEZIDr5fLMpTySP6fPdqOw6gpEeh4NRHnCg3d70x6aKpd5uSUiL1nfom5YvM43U
 +Xy17fVtby+pvDjEHEAhoJDYbmpBzyYATv/BkV2jC4FzqwQyJM4FB0vzsBukdIjdDtYAW310I9t
 axbIFbruG2VLPWKU4Z7/DGOhHMftTy0JPkmHSOfuZYKRDnVOTClc5ZI5OvnqeUjNbZZCtXMYgDx
 UY/XVlpz/inPG0+PzlS9pEP14MnKIn5r/2Htkvo8XEHx1r9flR7lYNTmiOAZbHaFSRHqemDrT8w
 NO0FFZ25xIyF3NbVLLEwR/JB7fljzIbj9rGyQJ8Rjyp9I/WdvaVf6KKa6NlZEn92J4Eu11mwF/i
 JvBM4nYvGLCZF14Ssf/2jtBzyo70ZoxB0nXbZAqMvktO1LMtCvPlMFVS/7babOtbkwonvgE8fce
 fRKg/LtTAdKmjvA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Hook up DisplayPort parts over Type-C USB on MTP8750.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 8 ++++++++
 arch/arm64/boot/dts/qcom/sm8750.dtsi    | 2 ++
 2 files changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
index c3470e1daa6b7f31196645759be23fb168ce8eb7..69a54ac0f85d5ae20d005a09fbf8da7d769a9c2e 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
@@ -910,6 +910,14 @@ &mdss {
 	status = "okay";
 };
 
+&mdss_dp0 {
+	status = "okay";
+};
+
+&mdss_dp0_out {
+	data-lanes = <0 1>;
+};
+
 &mdss_dsi0 {
 	vdda-supply = <&vreg_l3g_1p2>;
 
diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index 753b069cab1de636a3b1108747f300bec0f33980..b20fc5b5bdfab598fc7b9be53eef96cc16bc5985 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -2965,6 +2965,7 @@ port@1 {
 						reg = <1>;
 
 						mdss_dp0_out: endpoint {
+							remote-endpoint = <&usb_dp_qmpphy_dp_in>;
 						};
 					};
 				};
@@ -3064,6 +3065,7 @@ port@2 {
 					reg = <2>;
 
 					usb_dp_qmpphy_dp_in: endpoint {
+						remote-endpoint = <&mdss_dp0_out>;
 					};
 				};
 			};

-- 
2.45.2


