Return-Path: <devicetree+bounces-184311-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 78465AD3A75
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 16:07:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E1B953A9CB4
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 14:06:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AD4D2BDC34;
	Tue, 10 Jun 2025 14:06:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Hj/szyH0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 600EB29B789
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 14:06:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749564381; cv=none; b=eqdxCV20QR7D6yHn/RVJ/xdRlg2pY6uiCV6IptLuqohNKp1G6Qi2f9XiIAsplk+nqKjNFYsljqmL7EodrfN4g3k7Nqi/Xs2cMGIyTmvI+7OZ7R/wVrYWeWuGwAl4zBk9UqthAM/mycshlgpVQBELdvm3fm8fFhHFWCN786FVzfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749564381; c=relaxed/simple;
	bh=XU5572AbRAlL2dnAZKnz9YY70ssdWL7hBDylOur/otU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FbomNIEbfxrImC4o5CwEOp7F/rRyPQXV3fMot60czmx00Qb49dGk/eQIS8dchE1fJ+hchvzAQAuegSDWg4ZELt+L2Kzd/jh/sUT0X/FGlT4isLd4bw69XIzludKFKUi5Va03fOHjABG2pCXxN1vruMfmPALMJLEYd/0MCsKKuFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Hj/szyH0; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3a4f64cdc2dso430046f8f.1
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 07:06:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749564378; x=1750169178; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LYwgiUzq75NuT9nEk3WuZ2BIh7wkvlMFp5zrsAIKP/U=;
        b=Hj/szyH08Mko4l2Y1CXmH+64L1Yv7JvPx1OrOzV3GWsZM64jS+I08uyiQleZdYLmCE
         QAbzt1+vsBrrAbr9arVSQppl4FQ+wwNSz4meNEn8iUJ/aYr8eGIzFkeo0/U/454j/RMW
         MxgHqraVrxwLQeEQWvZCh17NWI7d2atjnvEngEBgKKbaGpW3l+4dtGY0iCv5K8uGdZNk
         DvrPIu2xN747nw1EHJiJYmEvMPwnemgaFDkAILczrpBz5YT8kaC4DQ0+mRXW4sbW/aMw
         dsSf9vhTgRMrmSsnmMWV1LEVua/AJRTWBTbIBkXlKjc853FFwkx4ua6hWItNYyls8fDu
         dQ7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749564378; x=1750169178;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LYwgiUzq75NuT9nEk3WuZ2BIh7wkvlMFp5zrsAIKP/U=;
        b=qnnWJ0WbFY4enXcaEa80OwyUkwhyUs4VvTfucwMNw3rtd7fZV9UzmlKD7ssgXnSMZQ
         ILxVuT0yVHNTc6Nxe8AdBCbhPEXH98gH8kT8v1G5ccRwVJBg+MMxbN5cKOiFy2Op3WwU
         MVyN+Rtv2NoQKKAqnZ/VHrrayF/hdMNKUzoTey6lfZ2o3nWGJZrR6Jls/0rMb6bo1qsg
         g2HRMoupSEEYXbu9mEuFlCttOHBInW3S0afPqRRBhXWw53USOXdeR72bmgLuw99kxAkW
         lmX1VxDMijQi06OZmYL5XM2R0Whyst91AdqIhe6Chm/cB8VQOfYTQrLiu9lWr3Y0bz61
         HifA==
X-Forwarded-Encrypted: i=1; AJvYcCUwIfekLi/ySorTRhwL0DKE6FupQK62CCvKdVCQCYzPuVbkHX/z/evRIsvoTGoxkxkyPTAUDmOmR37O@vger.kernel.org
X-Gm-Message-State: AOJu0Yyf/V2rQE29p1L8ydGUbIGPIYKA1eHqB10C7WC2WElvJxU8vDiS
	o/6uR1WBGffeNAW2KoQFOZQdwJQ+J8MP/xranjWA65PjyPtZyS5+3A9zuSJorSCBh587jCijIoO
	mCrC5Xs4=
X-Gm-Gg: ASbGncuinNnraVTa3MAzYilxHcRV7UJOLQKA3MsCwSh1K7HqE0d3ACn+FZJSUHRkcF5
	b9Y9i+qqr3V++DzLAS7IODR40xyyA4E+eoRctwDtL6FuO7HFK6kezPyQdCm2vB44TAP4pexBfcN
	ovpnMRbYo3o3k9EprmWhVBl6yBAVNlO29Q7IMps3/kubIAqT3tAUpwQH2KD18OKZomAuL0k/xKv
	ykIDd6pq1L8V/B9joFMBSnEInU5dTcwEolg8hpnHPtuxQlLL5kW8rMIeGcB/Q+7ioOo1LnrbKMM
	LHxoxorYcHQKHUMBjcNX6NttJD6818qixnuLLXrQO9+O1vWtFI3/4LCYjE2xvV/fw6R4sA3IPVt
	MKCyxxA==
X-Google-Smtp-Source: AGHT+IH25gKgo8d1gYAXhu9lWH0BmA+6Au/NMRgukcCSeLR32XCsUqrr/CCJpz5l/lsXeticymgVQw==
X-Received: by 2002:a05:6000:144a:b0:3a3:6e85:a550 with SMTP id ffacd0b85a97d-3a533143e5dmr4792126f8f.5.1749564377666;
        Tue, 10 Jun 2025 07:06:17 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.223.125])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a53244df06sm12734469f8f.69.2025.06.10.07.06.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 07:06:17 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 10 Jun 2025 16:05:42 +0200
Subject: [PATCH v6 04/17] dt-bindings: display/msm: qcom,sm8650-dpu: Add
 SM8750
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250610-b4-sm8750-display-v6-4-ee633e3ddbff@linaro.org>
References: <20250610-b4-sm8750-display-v6-0-ee633e3ddbff@linaro.org>
In-Reply-To: <20250610-b4-sm8750-display-v6-0-ee633e3ddbff@linaro.org>
To: Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krishna Manikandan <quic_mkrishn@quicinc.com>, 
 Jonathan Marek <jonathan@marek.ca>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Clark <robin.clark@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-clk@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Srinivas Kandagatla <srini@kernel.org>, 
 Rob Clark <robin.clark@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=943;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=XU5572AbRAlL2dnAZKnz9YY70ssdWL7hBDylOur/otU=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoSDvC2lB3lIxtbsNFzyWORfZgsGtzg3s+vk35z
 /dPmTfPLbuJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaEg7wgAKCRDBN2bmhouD
 134XD/0d1lSSjv1+CB5AgL0VUzorFocmxjRuPcFE2sJHZWxqDzRNRynQD6x9VAr0Shl9tFORtxC
 8DkQQ2uR4ZjnjhvnhSAa/ki40J03d/MdQWr6HeJwlAaCVKGO3B6dqzJRtaIMHwO2JtVVfqbN1BM
 wXb1lZhR/6McXk51ULNzCqwhSU9tl6gERabgsEPNT7LI9SkhRQ+/a+MutB3gNFY3GuS3qFccz2Z
 DvPmibAcl1AO4QRoEsNdKLW23BFqfHhpRsGiRnNC0JHbrp4tOZo7MmAkxXyNilN+kDNRwjyHurD
 K216/cd9UAvqhzDo6FK/0rq1EjL3IvPNsVhCrrLSX7QbS2IC8gqTdkVlnfFY0KL6giNbJ3/qL1V
 VY0UMPgEDQ+uVNdz+cUtP2YYJbmL3DeaXKvxXB3Pjwd8krdc6dTmyfoOEcErTIwSBaCPwqeI/Ob
 Y69EuoyarJ1KY8eRVyRpIcgceGRW63D/Dg8eEtyrWgEH3K2hgQYPaP4Arcr7PniTIiFvEc/A9jE
 9Jj0bugI1whaH/BsqGp6Kia8VdabiQ/Is2hkHxmzpsAczNAvrXE+Bu07GQ1A/SWUTUDrwaEWp6W
 8NaUYft0uDbjzb6ISM8zwKArfCc82KutxoiV8Xf2Vgvq9L0bVcxR9w68Hc8YbkO80ZIwwnThDPN
 6iDFXdGLfdUJKkA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Add DPU for Qualcomm SM8750 SoC which has several differences, new
blocks and changes in registers, making it incompatible with SM8650.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
index 01cf79bd754b491349c52c5aef49ba06e835d0bf..0a46120dd8680371ed031f7773859716f49c3aa1 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
@@ -16,6 +16,7 @@ properties:
     enum:
       - qcom,sa8775p-dpu
       - qcom,sm8650-dpu
+      - qcom,sm8750-dpu
       - qcom,x1e80100-dpu
 
   reg:

-- 
2.45.2


