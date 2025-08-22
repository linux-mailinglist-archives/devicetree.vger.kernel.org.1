Return-Path: <devicetree+bounces-207926-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A1CD5B3131E
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:31:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 65B3A6080DF
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:27:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49D382F0C50;
	Fri, 22 Aug 2025 09:26:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bkDTW1Yv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9484E2EF656
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:26:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755854809; cv=none; b=VoiFxt0WXBfuXbz1AWWQ4BDA92m1/rs9y9t2NntyNZK/vbXkOy2RmuSCHfzFxaz0paZCzdwY76PNO+47cUvJKfe4fwOqnm7QAC3sOEWNpyWmQ/mQi0lsOeDO+GO+9WCugyVrrzBWPbVx7Mu5KsIjq6wQ8Pq/XcSIpU5sthGPr5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755854809; c=relaxed/simple;
	bh=wo+28rzLb9E7nLBgQRSXIPSdalCHv6JNOeyFv5zLcqk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oK20trI7I/e8U9//BKxrvRTrvhlkBuskm2I8qtnkeGzGdUKDOPVooZITmZRVrNv4x9dbRb3arISEJBbDI5hyz+uQvF8Xa2YpgOiQQPIiakJKJToC2GSUbdc9AQcsv10zNNqzf7UklIvTb51Ny60eIfBhMLbcZmjGB/pMgwkvz6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bkDTW1Yv; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3b9d41bfa35so1423122f8f.0
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 02:26:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755854804; x=1756459604; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A4iYMHLc4WfPh2tAiIuQ5o+Q2It/ACAsF7CETw+1bqM=;
        b=bkDTW1YvcK29cGzpP55tDFOXzUvgae+IgN0QGSwmRKMwel1L8ABecAuMgylvqy9K8C
         GTUWnd87XgNxp8X8zp3FnUVe4tQAsP5FG8Mvl4jauqnXNSWy2cSQ4T+tB4y6X1Lezjmd
         Cn+tpA7yQpUQnCiOlreLaXhiFYJ0AZwMlfOUow/iJtCifnH7jsANDQ3/lyQczASWe4uH
         ysKdlZrw7cStzc6xSb50azZGqpEAkCi+Z5zU1njvXAKHjb8SIC1oe1pg3KrIERnWgAhA
         aYjdI50YjMda9isvPTGpv0JgCcKRECcO6jtDE6qU8uVceUKc0Jpcj0cjI9uCypK7Sg5D
         A0aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755854804; x=1756459604;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A4iYMHLc4WfPh2tAiIuQ5o+Q2It/ACAsF7CETw+1bqM=;
        b=BoZvllP9QOx44msRX8sUR013K5Ol0yciX9iwDIKwUd5aBPn8JHiZenRl3jV6LG7uTs
         xpf+HiFFJMorUZkD0IjZsygmKCyupwqEWraHp1o4lSF5DOANVn5pJNvfD9oXeb3J1Y5Y
         CO30Afgdd3VWPyiXNNgcsOLxh/887JYn3XndULOgErIlprmmhxrgmD3GnuNJ8+iBcsrL
         D+l7XhC7HuywheJ7O9nGNyQL+B2AFFdq27FsZvgEa60CNPrBYSUUybcmJJqpQtBbfDzP
         2Ok6bPVHWivHr38UXvDk5gZUtMG0gFXNh1nnZ4lPEPlHhvWudXSlBWmoOP9CGl+PFMTd
         yR6g==
X-Forwarded-Encrypted: i=1; AJvYcCVTOmOGeTKSFHrzgEx94F/GiHrtjKtcj8YZhwNKC8Zpr+keb9IuoMyRjt3OIz8bR3CssMmvOvH7qzgj@vger.kernel.org
X-Gm-Message-State: AOJu0YyAEUkL5HSZVmDQwUAexTzxqrJnlUP2rR0VNXpfrHyVD+6LjhC/
	jrBqCqVqse7r9O3e1VlLAeII3ydGSP2Jx/LwrIErSV/0JcBBKVRfUoGH9TTuSz9KslI=
X-Gm-Gg: ASbGnctddR346NdPwBzX02B44EpzQkWZKDhBJ2GMH/hCQu8rbkT0EXrVUp99lhXdFN3
	AJWmj0BgyjEmiHPFG9j7UOGFiu52ycjKN9NPB2Vs2wIU2DuLgi8V9thRB/a3CI2ja0OjSNiPa51
	EGbpMZSFnkqPDkCRTVhq7pAMIn+y+ioHkIBKKYVp0R3kF8/hPjwkdO0smmZRelKPVbENDigJTvy
	+wzqrM3XR8x+cmGZj4Cg0ZP7/1S357+YsHXSHpSddVSFl03QGgsrsTxs+4cgzq8DMFwaMBdNd/r
	velsNAs8kVs3LB4eVkW1d/Jzh7mJ3g5N9Ol+5jHocyNsT3GJr/IigCcm748u10bEOfllBglSEVI
	N1RT6oFcC67rPBjLB4oRNzO3895ahQCKsHlIRLcUYqCpV6frVJViAlA==
X-Google-Smtp-Source: AGHT+IHWimNmhX2D+e0rAbr+oUyeChnSAW/pbGvbaUpaR6zi2utB6mY/Z10H3CaZcm5CXc2OFCrfew==
X-Received: by 2002:a5d:5f4b:0:b0:3b7:7563:9d59 with SMTP id ffacd0b85a97d-3c5dceff114mr1593265f8f.57.1755854804453;
        Fri, 22 Aug 2025 02:26:44 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3c5826751d5sm3297007f8f.14.2025.08.22.02.26.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 02:26:44 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 22 Aug 2025 11:26:38 +0200
Subject: [PATCH v2 6/6] arm64: dts: qcom: sm8650: Additionally manage MXC
 power domain in camcc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-topic-sm8x50-upstream-pll-multi-pd-voting-dt-v2-6-28f35728a146@linaro.org>
References: <20250822-topic-sm8x50-upstream-pll-multi-pd-voting-dt-v2-0-28f35728a146@linaro.org>
In-Reply-To: <20250822-topic-sm8x50-upstream-pll-multi-pd-voting-dt-v2-0-28f35728a146@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jagadeesh Kona <quic_jkona@quicinc.com>, 
 Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1186;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=ZndUBUupjU+OOdgcN5TmqiL/eMh2uIr1+LmbccinqKg=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBoqDfOCJnAzwaebLAVtkSCcABycmAsCAfOcMDIVLyn
 YLAXinaJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaKg3zgAKCRB33NvayMhJ0bqbEA
 CsT1D9Ow705PLEPkKSK32uNTf42QVbKH3pGRSRr3VOTfhNZCRpnnkRh1+1FoCjLI3ZGjG+RmZmrO0Q
 qvi/McXqk0bXsnKLoVnE5+uHivcz/qSlb7iRG/FkBMdqHjbNI+vlHIiKlB7l3sEZSWV5/3RGnXExdA
 fGwgEXVqitPMcRXA75S1EtBJl0E+8j1zL+wwmjYAgf7Cu6qT+KRgGk7ZvMv2YE9HodC743cEZxWuGg
 g6wnYm3gHXBBN175LvSn91VhNrb+UgbvtLT/LQBOxo3KKEFVgYth2qJj9rG1AkHhpX3LpksdlRquxe
 U7cklzUA64WnqwxZ95lv3gksSUK+kh/A+dGhwKKpZF9Q4YFi+FoTRKqnYNYMvUDO/zYbTrtoaBvtOX
 SlboOQ5kiQS9HsjX8WFlZoYMlVeEEC2MAYJ8BDpTCdNgmwbivA9S1RQ2I485ASdBZW1VzArproZiKO
 tI0357El2XZvb/119I6zpGj0oEUDrR/jPzubcOX7aOZnJhtHOKk9WY3hNBc+MLs3n6Uczz8JWFcm9q
 zXnaBW/6ewLiZTauMdpaud4c1Gjn9lgJYQigtrw0p+ZKGbBZg6/SiaLi/nb/SJ4HDIhyWNWw3XsQt3
 vKMIRGIRuuhBawqMsOiZDtguEXn+Vxbz3RhRduo5be8xC4/7ktBI2fC5embQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

From: Jagadeesh Kona <quic_jkona@quicinc.com>

Camcc requires both MMCX and MXC rails to be powered ON to configure
the camera PLLs on SM8650 platform. Hence add MXC power domain to
camcc node on SM8650.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 99b7c6603f284df54b0a4e0ed554817fa8ce6f35..890c4341179a471416bd63308d13b0e313188142 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -5349,7 +5349,8 @@ camcc: clock-controller@ade0000 {
 				 <&bi_tcxo_div2>,
 				 <&bi_tcxo_ao_div2>,
 				 <&sleep_clk>;
-			power-domains = <&rpmhpd RPMHPD_MMCX>;
+			power-domains = <&rpmhpd RPMHPD_MMCX>,
+					<&rpmhpd RPMHPD_MXC>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;
 			#power-domain-cells = <1>;

-- 
2.34.1


