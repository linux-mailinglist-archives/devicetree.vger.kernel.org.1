Return-Path: <devicetree+bounces-207922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D61DBB31314
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:30:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0026E5864B2
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:26:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17E2D2EDD63;
	Fri, 22 Aug 2025 09:26:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YTLr5k6W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B30B2E229D
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:26:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755854804; cv=none; b=fPuzg9VehevyfSF76zvbw0OPnu27wky8A8yrN/jgf0tSx5FJY4wdACa7cVQFwZTu9L18EeS7/fkoKpjvYCNDlbCtuWz81L9y/RWN1zDLGMdOmmis98CZ3XezkZZifd64W/Z9q5h4PhiY3VmNqlZWljeuAVZfFqUBWq4LLXbFY2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755854804; c=relaxed/simple;
	bh=odok1NB/os6Op96Tw20uQsfm8O8IHcGhS2hw5yQh51U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=i0Xq2LhZTt0A1vI/XYDklp1uoJsM4DU+SHfpxAU856ME1Im2iko4+FGI/AuNNs410UKXAWoU+WPCQzxCChjSvIOKIJUwBicpnl7NlkBckvOm/XMXSHbkgqeg09o9BWknr5JvrzYPw8p9AUpRRUPB97O0dlxlW7nF1vv959QzID8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YTLr5k6W; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3b9d41c1964so821059f8f.0
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 02:26:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755854801; x=1756459601; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qqy2gm0eQAUZyJWlOlSTZmK8sdI8rKYK24OGN8Pqm2g=;
        b=YTLr5k6WNVbvjOz7+hBYJ8jSi29b5I4q6zEbwbuwJZUz/y+18BEs5Me+/TYu6KsREL
         w+EyFDemejc9PgG+n8/mhrEiyNftfjMlMTs+/+4IpCt0ZgWivyDyOHF3u8By3Dq1770f
         ByPfE6/NUZ7xOObtQ2hNuMkdaHpyI9FC2U5xOK9OcV+da9vR/AZELOQMI9AHNpSOs4I/
         JMjO4nWXhwgeRj2EVdU40qMdoIue3w0gi5a3WTLgbW4DQ5Y9JQPr8eWS6CjDP81F47r5
         MZwGPqP/ejtqfkY1MvPf+KEFPILQ+K4QwvvbBMvFQnBwVMrUX9mXHX+MlIPdKtQkwTUo
         QeXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755854801; x=1756459601;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qqy2gm0eQAUZyJWlOlSTZmK8sdI8rKYK24OGN8Pqm2g=;
        b=qO6S7trGQI9239uCucoonz/FxHOMyns5OYgdYsxIZvtRImYMh5qUvaPD7Hc92cHpoS
         Hfm1QZEYMcNPcpzYNmC/ST7KxkGipuZ3BO1SJpaDUqVviIo5MSqLcPWiNmuDB7k/bhxM
         qnnLfrsDzg9+SxpC8b0lkixUm6UscOjQh+UdSvAuQWGp30sO/Bx8oxO1vKnh3g+X36h+
         x7ubv5Mwyu2O7aIJLO+Kt93KilZnEZe3ToBc9lgh9KKOW5BiJXJ66CW3DVOV47X2zPWZ
         XCHlzIWCdmmdzrGmm438mrS6GwMZjGC86BnIa4wPFVrf8GhwBQTVwcDs4Jny+ODGqryQ
         PLHQ==
X-Forwarded-Encrypted: i=1; AJvYcCXHD/MfnSC3R1ljI4ZIV0+lPyNogf46L5DzC9SHcTZ/9BpRo4U0lKDXa5CSC2zSCr/bnzLJB8B2rpX5@vger.kernel.org
X-Gm-Message-State: AOJu0YwuvO9e3BXh2xkEIQDto6x3ybQ2GXPkbima06IBvFM/iiEQbDBs
	af+qfq6M/0aZtWNdZLQamJiT1qV+CNE5Ja16oomaMRcqt8AqiXSgyT74Tba2/YeV9bg=
X-Gm-Gg: ASbGncuBmrN29yrgu7tOOlLpNOXItueZz71iR15cHvNNPIIufdJZp9LmTq7ZiaOFiJr
	ncbtqxNmPEAKrJTJwe4L0061PIpPxl6f1RPU2N2z+KDXpQAiC2+alBQ1kyTl0eDo3hiIg1PCq95
	/ecAt6U7zl3ScltjsZA7cgcTkE7LrYD7NGqIObA52JZpPLGtSLPSQU4ZYLjZyQFqqIWRCPOYTCs
	+8NtbzashpJy9hq23lllrA6J1P2kcjOlycEQjWYBKQzuEc/G/CHeGAvYm2T0nftKZlDLoC0SR7Y
	rwUwndR0EJFGHDXcTACzV+GAAA4QAJiUyfRGCuCs61OWFujEI2FbZ2q61kGwJspK3eFLv+03hpf
	Spe7j54AsyYtLVXphvqoKzxHpuhwhNiNLswedLxVgXkmOCtqP+tTmIQ==
X-Google-Smtp-Source: AGHT+IGbDE4Lbd1UX80jxSMFpqE9JxKaQx6eti4GBEaGPewm18SC2YL90lrx67QMMt85CnHr/UlVog==
X-Received: by 2002:a05:6000:2f86:b0:3a4:eda1:6c39 with SMTP id ffacd0b85a97d-3c5da931b49mr1552694f8f.13.1755854801333;
        Fri, 22 Aug 2025 02:26:41 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3c5826751d5sm3297007f8f.14.2025.08.22.02.26.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 02:26:40 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 22 Aug 2025 11:26:34 +0200
Subject: [PATCH v2 2/6] arm64: dts: qcom: sm8550: Additionally manage MXC
 power domain in videocc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-topic-sm8x50-upstream-pll-multi-pd-voting-dt-v2-2-28f35728a146@linaro.org>
References: <20250822-topic-sm8x50-upstream-pll-multi-pd-voting-dt-v2-0-28f35728a146@linaro.org>
In-Reply-To: <20250822-topic-sm8x50-upstream-pll-multi-pd-voting-dt-v2-0-28f35728a146@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1337;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=EsER8r1zfXvJMrf+Uq1BesZ7c/Gb0QgKo2HXPPO6s9I=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBoqDfMqjSIJ7bP/doPod2Mj3wwzh3Qf3osoWLsCS1d
 ixrH29aJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaKg3zAAKCRB33NvayMhJ0alBEA
 C2NTr0NtKNc7KILPIi8JaSFgL5XqjIIFxdqNt2XXo0FHI8d8iUtbRxIQHbgaPsNpOOf6FEFkNZRUbX
 CYctfu33qeZMlp9Kn+7veVvUBU5NX9kHmMoqa1ccVsFESnKpuJDONCov7OV+5i5mmefUr0EdHsg6aJ
 Kc2VpQAE2FwkxDqminFUfXafC2V+21F3ILyYjLsDy9/t2c6l6WelR9YQIk+qVJXrHjJPpOev5/ZnDY
 33fvvXbuqArxf1xKUC0BaM2fqHHeeUMSdV5jwFcRMGVNlSK/LCNJINlOm5LYNIDdM8yt1dSJTwQw0S
 ZaXvvuerytwubDoirsGw75qIQeH8R0kZpJ4Vy0JMAegB0K+BfveBXJgR+vgwerfUbNoz/L7zijFpvj
 k5NZe2Z9Vd608HnNqX/fWq5H70zboi68C+vDzur+yL0pHf4MuARlIsX/z2mMccwI3KovMaMbl2p4wZ
 Rm1xt8w8hsK0p9eG+YfgoyD+B9mqp2AwDrCUitkwdNV7qzgmi1t9jenWMi5tk9mwAYb8oVqSPQHYfQ
 C1MmRgoid6CvCMqDbAn4Pw6ALAT1PnNM7ZmRVYo2cHNt9SXS1NAyslhMoZ9JezYKAwFQ75sMa2OjVm
 GpnzLUBnUR9wNqCMVpIhkfMtKqOwh57Bq0mO3r7zqsWBLD/BA9uqUgdGsvRA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

From: Jagadeesh Kona <quic_jkona@quicinc.com>

Videocc requires both MMCX and MXC rails to be powered ON to configure
the video PLLs on SM8550 platform. Hence add MXC power domain to videocc
node on SM8550.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index 38d139d1dd4a994287c03d064ca01d59a11ac771..d4bffcc244c98e87464cb2a4075c21f3cd368482 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -3307,8 +3307,10 @@ videocc: clock-controller@aaf0000 {
 			reg = <0 0x0aaf0000 0 0x10000>;
 			clocks = <&bi_tcxo_div2>,
 				 <&gcc GCC_VIDEO_AHB_CLK>;
-			power-domains = <&rpmhpd RPMHPD_MMCX>;
-			required-opps = <&rpmhpd_opp_low_svs>;
+			power-domains = <&rpmhpd RPMHPD_MMCX>,
+					<&rpmhpd RPMHPD_MXC>;
+			required-opps = <&rpmhpd_opp_low_svs>,
+					<&rpmhpd_opp_low_svs>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;
 			#power-domain-cells = <1>;

-- 
2.34.1


