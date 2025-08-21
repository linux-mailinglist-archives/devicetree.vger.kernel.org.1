Return-Path: <devicetree+bounces-207244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5F6B2EF4B
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 09:18:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B5E4C1CC32D9
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 07:17:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B4882E8DF0;
	Thu, 21 Aug 2025 07:16:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="f79nxg5a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED732E8B68
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 07:16:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755760607; cv=none; b=PaQNZmW0KU1fZulhXqEbwHTrMb+5luB3S7OxR6CwyVdQXLQtqXWbXo2/n6A+8Lfv9ITApYqCMkpGX8N1+FVYRls8KYFRdoX5w01qpL51DGAAEp3W71GkOKwABh+sea0keX8XTmDssbLVyhimqiAUV/bXf6TKQ/E5p6NDoLJQ2pE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755760607; c=relaxed/simple;
	bh=MFYFkMSrWP5pY4nqJFiDqJWkSa4uwcnjvsxZoozTN9c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=n1ZWbDC/k/qbPtTLTzYT//40vWh69GrAOz+UD2z4HkJTYzEwP4a89KKe9rGw0xYfVBc4kwQHufuEDyv5JQF1fKXNsW7YxjuG1YiwPUtFSofkWScFkk/zxw3QC3rwNTuWn1FNJkRVD21ucHJ4zAyNqVGIJCmDFMbpUAGuZbuB1V4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=f79nxg5a; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3bea24519c0so820739f8f.1
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 00:16:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755760603; x=1756365403; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IiOSxWsMfZ22+52FKy1745xSVf+zWfH8pzVT2pR3hgY=;
        b=f79nxg5a3oQ4a0iSIjBJD9V8hrh4ogTx4t/o/+qG0MVMD+bnaq6q54bQUESF3J0irD
         AE0/leUTB6gHD1BCx6F2MLSumTojdiitMcwTSqHsaSn5+Lra1FnyDJVI47u5UWvqEydJ
         m4gKTXYawz/JERCi7FKTpbuNpHUuYx9AYWLMX2EvFCoGFBIoc2/WXq5XLx3gu9+ewxdT
         yheeM4e9LmHllGIl+E8hy8fpQ4coHsXw4jzcU2XVlRTfa+viWns2wlfY8K7Ixqe2DygA
         SOGk3ye9pkbFoJWUj6mmhzjzRLC8LfqYntF00Akd9/vvCO9ZoBsVwi864GFxUI2RvUCf
         pcfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755760603; x=1756365403;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IiOSxWsMfZ22+52FKy1745xSVf+zWfH8pzVT2pR3hgY=;
        b=f+pBNWtL8x4orH6wayS4URxX/9P+CFPbSsfP4P5x7p3h5aBnpsqQq1BbbvHkxVtG56
         hKGyVhs9TZCEqy1zxnm/X3RUmBw0rDR1OMTLC9R4Kemm8IGwnRW8iTuNdxUl32A5SEoi
         r3yGBHCIjryKMCSLMu7Pi5F383DqPTjj6IZ1qZKI+0NGsmWe2nQ7vaP9aAsTVuQDxIUH
         8EfW6p4dyPo/p3hEA0GYWvWHlJGEBj8AzGrdZtOMDXbr8FoZEMCGqIx1GABr6ifVkJLA
         owoqiMiJsibCOGkhO112+tg8ic2YVVV5Gjm4VM0tnq3ksmBLEgQCN40e2ydWpogA7hA7
         TqGg==
X-Forwarded-Encrypted: i=1; AJvYcCXMVIui9DCIpY8Eg+5Pmejse+TLXjIXRuWksjycSV42qMJYRiLciqL+NWkL+O3d9ysZRA9nmPfPqIXO@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+AUAHJRC7qWJASmNjjINbgHdGleXYtMGqhS5EZeduecRH5ucy
	7hwPJu6BQmppS3Ehh0gq/Pyqipsz1Mkra6t/FDQtcO0Y4W3daCkS/5t+fhMfW2DTvJ0=
X-Gm-Gg: ASbGncs33ZKF3Is/Q7jXHrOjccSz8oeBJtNVdiX4yXT743GELx/dA1lskhog3LhYipA
	JAocbIWGLULo3l5EMQzc5F6DKHO1VetgheyUEOF6apS1EshmeIAwO+p3dh5/RFU+nGxJTwJFk3v
	XLUDoQxoiGEWfaMZ/eAEoJcrVWacDGP1slArjtcSu18Zcszjs96bBC2EuQ/nD8ZS4QS0cVQiIMn
	6NeitbQ9ljHGKTy1yikYDdXedTXrzpSxX63f18vuq9aS+EmTt5HsHwRJK/ZjuBqkSItIaTFB7QV
	aKV7builEQlDLstWf23I4ggfBwZUK5eVkQKu+UmrZybqMvtTgeIQPxUfHTJzUT3a8NyGMropS3G
	ULhjgJkzwqHk4ViHqY0BghvmAWvBgFckICkZpTGQKr7w=
X-Google-Smtp-Source: AGHT+IE2duDyD+EqTrmYcapA1riRnaHwJhVPv+AeTwRpPsHbP5BgHn99AKrVHXuZLDRidZJpXNnK3A==
X-Received: by 2002:a05:6000:2dc1:b0:3b6:162a:8e08 with SMTP id ffacd0b85a97d-3c4af1eaf2fmr1128390f8f.12.1755760603419;
        Thu, 21 Aug 2025 00:16:43 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b4de5b52esm14411455e9.20.2025.08.21.00.16.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 00:16:43 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 21 Aug 2025 09:16:36 +0200
Subject: [PATCH 3/6] arm64: dts: qcom: sm8650: Additionally manage MXC
 power domain in videocc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250821-topic-sm8x50-upstream-pll-multi-pd-voting-dt-v1-3-a510c72da096@linaro.org>
References: <20250821-topic-sm8x50-upstream-pll-multi-pd-voting-dt-v1-0-a510c72da096@linaro.org>
In-Reply-To: <20250821-topic-sm8x50-upstream-pll-multi-pd-voting-dt-v1-0-a510c72da096@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jagadeesh Kona <quic_jkona@quicinc.com>, 
 Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1214;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=jbtLIQpfABjo4yu0j1qEsUQ4afK624swlDN103gi/yE=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBopsfWx7SrQf4C4mJft/Jh5SQc5skYviHq7qGJzMnZ
 bfxkrXyJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaKbH1gAKCRB33NvayMhJ0RlkEA
 DMq2XsrsaAYfDF8EOA18LpMmfSgeV9APNMBpps9HwozvJrJdTX2voMUkINnBaA/Pw/rZCCFZHs2dml
 aDnV2rpDMRAVVEtXURHfjijAJI0Nf1tJhiUc5DBrGchllr+P//M03p8xfg9TOwqEeMyMC4dPRgEY4T
 UfnAuAU5xuh42vqtO8LY10lPLmIWt8NuCaws5eUPW8WeBCfGAKhMVrdKsdeVg4eA4lBg8VAIZxvQCj
 LXCUAL2kCOTPrknY/I+tYPS4xugbxnH3Mn5KvWE5y2Z6zg4zY3JacfiQj3kb+0I4rxFfaujPad+s4x
 0r0gWgN058T7IbVU9D/CpNgIuizfjnBA9vakH/TMUahbs2EfjHFLEJWlZm7s6CGFdhA9tZdvPfIUr5
 4jzmgLD4UlHUMaYpzj6P3MTog2UUB3K5CoUh5eH8T2PbxPfJs2qYDUlOCdoHY/MCb9Ib6eQZKVPyuR
 IF9a3pSsmokWwagj6t+eQW1yMZWdVlTTszfKad7dogvxbhXZsa0jm7o3JU7OBTaNsP/nzZqM9j2u/W
 LR8YCKHyHL6Bkc9LC7dQThzBoJO6+4Sd22hkQRPLDwMBDk87N3nNI+Ws/1dxa/b/w73xLEGJ0AzrwJ
 GBG0mqQkEIUR4E09fpfQtsmTCvVkZ/3GkWdXnyBJBADEWSmongwPDF0+MlNQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

From: Jagadeesh Kona <quic_jkona@quicinc.com>

Videocc requires both MMCX and MXC rails to be powered ON to configure
the video PLLs on SM8650 platform. Hence add MXC power domain to videocc
node on SM8650.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index d6794901f06b50e8629afd081cb7d229ea342f84..99b7c6603f284df54b0a4e0ed554817fa8ce6f35 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -5236,7 +5236,8 @@ videocc: clock-controller@aaf0000 {
 			reg = <0 0x0aaf0000 0 0x10000>;
 			clocks = <&bi_tcxo_div2>,
 				 <&gcc GCC_VIDEO_AHB_CLK>;
-			power-domains = <&rpmhpd RPMHPD_MMCX>;
+			power-domains = <&rpmhpd RPMHPD_MMCX>,
+					<&rpmhpd RPMHPD_MXC>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;
 			#power-domain-cells = <1>;

-- 
2.34.1


