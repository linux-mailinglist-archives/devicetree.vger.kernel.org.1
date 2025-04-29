Return-Path: <devicetree+bounces-171819-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F89AA04D8
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 09:44:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 24428842600
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 07:43:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3869E2820DD;
	Tue, 29 Apr 2025 07:43:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pTJPjuMC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 570C32797B3
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 07:43:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745912589; cv=none; b=uOScIKKnzhiF62NFfAawNpOzYdmK0AkfHxu8u4fUxwcgdHzsfDoXPIjYCvqeg19qVGi+F+00ketLCvloGqAj2j5RGVkgHLwed7XtgIBQ3qL21MtsqrIEt4yXLPRWnTqDwL6k26UrfS0ppfLic7n7xNe7j7slWYx+Jf/RGw7KFms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745912589; c=relaxed/simple;
	bh=+kFtdh5zNKXGvnVuUeb4hD3s9G0IyLF5h/Rh3o0CXxM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LNCUmbAMremLMtJAKSbFNMnkGl6EqtmfJUJX5v0HJtKWWCaUKp+oNZto42JYZgWcScKHnt6958++j62Zbl/VVgtNdcky5tn8aLjtxVElLkygmweF6JN08cm4LhSbIcGcsz2jlTtvOi1dpFhMt7QIwoqNdgSEeWqKk63IDneF0RM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pTJPjuMC; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5f4d6d6aaabso9129920a12.2
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 00:43:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745912584; x=1746517384; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HKdri9oqQzlxJX/GoZ6d34Elo8Z6NtUhmYU5bCs5Gvw=;
        b=pTJPjuMCGlV4Uwx6CfKBHsDpginhX1Q6K5WN/EiPRTHkhOCCRM4Mf1/1iY3fMa14rB
         ApcaS5BhrnxAKmaCP73LCnn/pUYZP3S7zrj3MQx60tDxNg1qvJAQ2ewpx1cV50YusVBC
         CSG74iIJA0lFeyO4g2aw0KHr4SqJy5S6gCDXMpxtZkkOt65R5b4O1xM8BgysaGc1sy3j
         qLdYIWspuejfNCmvnCYRmz6R1BbBXp5O5A7nzey87TbBMJLJwwejJyO7RZsOK/4N5JJf
         hc+Swh4ggrwJ0t/ijSkg7x+4ByV6bAQHEwEvqWHa2igZJ7dMUPc9+WZmzv0ckuV5/8tQ
         uIJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745912584; x=1746517384;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HKdri9oqQzlxJX/GoZ6d34Elo8Z6NtUhmYU5bCs5Gvw=;
        b=YwTlevvuC7ScyMFJf2CMu8Cs+Rwu7x6a7Ka/qXd0esysU23TlUzqxEW6QM2xqSpVJs
         dsprR0cNCzb/Bfj1Ogr+YMbz0XtK3N1//U9HIjPucIp1HQFodgnEruZMSeTgWUkFnEj+
         Jc5UDY4KsSkSFjyjWy7gxCDl6dIH0F0NtMOerv6U0XKwM22aVu2UloTwgbc2FPKdqITa
         1zWrklSLHLbUvZg6+/Free3lRheLA6OYuVJXCmFe8KRp+XThPyQDW5fPFjxf+pJMpC2u
         doJtk8P1twg9DfmaBetA8gzHkwgyot/UAQwCy1lZcd8/vmXfvdBTjTwFfZDSA5L6ywa8
         757g==
X-Forwarded-Encrypted: i=1; AJvYcCUcbKBdYbI98ZWr35WWP3N5utZYCBhcb2v4mlsftJLnfRPpRuOPUDzmJpGCj/5e+tQWFfLhnFvDqUNU@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1DNE9znZ5EtRZf2VxRiThCxOgSO2uWCDGmN7vQdHpOea2C7Lv
	3kUKaBKaLA8DxkEzc0J5ChkMpN3zPN7mBkrDnL6igUJ6Vdbzz0ZOwBueLL9agt0=
X-Gm-Gg: ASbGnctEMIJSV6cT7ezkDWi+IU/6SdyI71fFFXAQ2qJnlrbgHazBAa5wisactkDlaHt
	cIsNqsqPuOSF35U7+22EKU8tcOD0XGWrZlLlxv7Agn0wfTT7W51kqIaPg+1MzgGZx28Ldpppwgu
	UQEuuKTn1YAve+tZiOfx0dVteJs01Fm+1MNy2IRmQzVoWjFMiTvMgNJoe58C9mSpPRS8aYp6O/i
	Ihqu2Z2y2ZYz9uYsZiPLij8ENhp8Afx/+qaX+1PzapuedGY3JmhvnVFkBEOr7drJrFGPPag8ZMi
	LN+S3mkziZb0P0j95v8DI5dBLxNqO9n72oD3+rP1DW2Vb9FM/w==
X-Google-Smtp-Source: AGHT+IHxcc8j/WDT3R+Ed9mqVDNNphrQGL2Z4Djg4/1VtTVLnJ2DccZzwdTkAMSr1cBwYyCqZJG32A==
X-Received: by 2002:a05:6402:350a:b0:5f6:31f3:d744 with SMTP id 4fb4d7f45d1cf-5f83884fa26mr2355871a12.11.1745912584531;
        Tue, 29 Apr 2025 00:43:04 -0700 (PDT)
Received: from [127.0.1.1] ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f7013ff4e7sm7048114a12.22.2025.04.29.00.43.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Apr 2025 00:43:03 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 29 Apr 2025 10:42:30 +0300
Subject: [PATCH 2/7] arm64: dts: acom: x1e80100-qcp: Drop useless DP3
 compatible override
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250429-x1e80100-dts-drop-useless-dp-compatible-override-v1-2-058847814d70@linaro.org>
References: <20250429-x1e80100-dts-drop-useless-dp-compatible-override-v1-0-058847814d70@linaro.org>
In-Reply-To: <20250429-x1e80100-dts-drop-useless-dp-compatible-override-v1-0-058847814d70@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sibi Sankar <quic_sibis@quicinc.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, Xilin Wu <wuxilin123@gmail.com>, 
 Jens Glathe <jens.glathe@oldschoolsolutions.biz>, 
 Srinivas Kandagatla <srini@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Konrad Dybcio <quic_kdybcio@quicinc.com>, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1230; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=+kFtdh5zNKXGvnVuUeb4hD3s9G0IyLF5h/Rh3o0CXxM=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBoEIL17Ga5JLUCneazXrtHjFW+wuU7Ojth75Av2
 4WlxEe4vN+JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaBCC9QAKCRAbX0TJAJUV
 Vp7hEACXpCm4EkeMaIE180F8dmj81H0AaiNpPwgRRA2TRLQsSTMTVY6Ts4h2Ucxnr/48JSwKEtx
 13gslrFppN11DzYPdKa/mN1ocanIFIGj/hauBuHc4hg2rbRDm2i/ojtewH727tCPjUNaE/NDwh0
 6mJCk/ZuReHlAHNwFUshpZkeWKaVrQC4//8MbXhzVjgjlseijJ4yqqXnv6OcSiZd0v8MIC3adIm
 +cwYB2fQS0kKe8H330KJTnKHhQGhycW8ulqd5g/LE0gzH7WTGK/WtbV7xjXkSHkIMBuaK9y+5dP
 vdkZlPITKXus00b0s5ZDdcglx8kMYzXzeBAPfFA9+21dlxFLJPQh0aSUpnVBJXzy4RYyt4ljr2e
 TmgWo7PfqJhjCS2vt1l+JkHqNyq8lgbxbYLXLwDYdMihqhb1VH5EZykQihQdVdGdqr5Uol4d9pU
 JeEofP4RQrMl/HMGz2NePDlI0kO1Fw+DQFwgFCshnYUp2pBLpiRqk/ShZhxdkKmeJsBKFUOCgp6
 85gfbX8nZkkmL+kpgbfasYBIG2UpddLRBoV/QIw0+JOzOMDMnsAaKiXTLxKzx4DC40d4DW754ku
 P4ypKF0zmMoJe4xGbL906zlCGRvR6E3JhRcBhXOBQHT3sTZ6mm1lRnoFmYYVsIf5qbF7Pb76vb5
 aq/UGQ71POw4dJw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Back when display support was added initially to CRD, and we used to have
two separate compatibles for eDP and DP, it was supposed to override the
DP compatible with the eDP one in the board specific devicetree. Since
then, the DP driver has been reworked to figure out the eDP/DP at runtime
while only DP compatible remained in the end.

This override was copied over from CRD which was the first X Elite
platform upstream to have display support.

Even though the override does nothing basically, drop it to avoid
further confusion.

Fixes: f9a9c11471da ("arm64: dts: qcom: x1e80100-qcp: Enable more support")
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
index 470c4f826d49866a2af87f5e109672d51c9bc9cd..f5a911f23d8ce89b9c3a6470c14f6a68aebfcaa6 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
@@ -871,7 +871,6 @@ &mdss_dp2_out {
 };
 
 &mdss_dp3 {
-	compatible = "qcom,x1e80100-dp";
 	/delete-property/ #sound-dai-cells;
 
 	status = "okay";

-- 
2.34.1


