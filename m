Return-Path: <devicetree+bounces-207248-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18361B2EF3B
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 09:17:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5C7D1A26A66
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 07:17:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 465AA2E9EC0;
	Thu, 21 Aug 2025 07:16:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="f7hLYs/v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AEC62E8E07
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 07:16:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755760609; cv=none; b=ULhxDo/xt0D6IYBP/Ai0jGIyvbgwR1CHA+tK8pny8xQc1UxOV2nOxVNG85RW/QybI/DE5Az32nDN4w9lXwM/7nSyacRmrA+TGa8QLOJgxVjhQiJFOfWRCg270ot5Rjaw0gPIuE8WXS39xVW+IQnARcLZm1R563lLrWM380F2ZmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755760609; c=relaxed/simple;
	bh=wo+28rzLb9E7nLBgQRSXIPSdalCHv6JNOeyFv5zLcqk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Anet/dPFEb6eDmlSXyt2f7zvouQI2w4KrVgKUPrQymzUxPHNJlxZ87ficUhCUGq6xa5hp3efsCjek6Vh8c+nq3+VSFqNtJLkrqhG/NUYyHt+9P8k6ZW0FoWJbJ8j1fiHSR1AiHnjZH+WjUkc04Gfwa7InHKov1oC64/G5SKyfJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=f7hLYs/v; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-45a1b0bde14so3298875e9.2
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 00:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755760605; x=1756365405; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A4iYMHLc4WfPh2tAiIuQ5o+Q2It/ACAsF7CETw+1bqM=;
        b=f7hLYs/vh9o0XKGiShdSixT4C0Mo60upwtAZ9nzjtolWRBuNV0bJA6Q8vVdhdB7IrF
         YdSqGsYKSYWpg1QJPFUpz2p3fcel0n8xBMmWzcgUUIgeSJ4Jb9heGkNTGF5E3djuctj3
         tJahHBwFXdmPpztlTFoKmh2qltm6MbYC5cSw16gLoTezgkJZ2a+Z24I+6o+WHQNm7DU5
         XwQkvqPXXT+EhKolUbfyytpsTc27UuJGIWWC8yVvDllb3Kj+8TwhZwfEmZWHVaOmwdLo
         1z8aLwjmQ8nKRcMLsV9c5hevWgrxMEpkbLFbWDJr+9tOh2D9u0Nclxru594ENh0PhgjX
         zqag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755760605; x=1756365405;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A4iYMHLc4WfPh2tAiIuQ5o+Q2It/ACAsF7CETw+1bqM=;
        b=PI8/dWsvWnRhzA61CNvQ+fbe47QaGqqivhW0V60pvThVJ6r8Mvw0XRsF1xvVfckAWs
         WazDqaEK8UKIIEWd0Mj3/j+2T0ss+/j1nqLmeIeRhKnxt9M3HXN1x/7pL9ohphdVNrgU
         IKFzdgSthft5TVu5a+GKw1Sem4B3VzhO+oxwXbuw3SFbp/J/hLbyXNdxjqOPKySAxR7X
         pn0ZOdMjq8/tshAHHJazD9/vGBNwBqxfoKWpvIwNNpT2YfOFlld8xCMOqbtCqET87yI1
         kjFX04P4Fc/u5Eg0FFg9N45VzbHVRZwQAynKhS6rEXGupG4C2BNkEEjT3DNn1r5TG/sP
         MXBg==
X-Forwarded-Encrypted: i=1; AJvYcCW/pfcyPxfsbhurGDFNPghaOy08rf/XdkmxdXtInuv+bjAq7w62uufm0z1jdUUHCGSy2k366ZS4nhzz@vger.kernel.org
X-Gm-Message-State: AOJu0YwRkH5M+HuszT+0npkHDHxNcfhX2SS27KAyjk1eGv0NSqKnIsEk
	6vA2M2/yAW9TcA6dixq5YdMXKLUL95v65pA+iEg9pvm5IBfjzvTozrU5G+eQ0JkNi/s=
X-Gm-Gg: ASbGnctjllk7Y5KMK3YAwEj3fNJ1Erxz6a3Y/AOiiGkP2DXKoNiTvXqrOgX2U+7LF0G
	Ra/7n3Sf6ar3uFXbsFypr6WzHi8uE/AABogO3GaN/BEryc8kAOwJnLSO7vCpDWhbKDlJb7+Zu2x
	u+CFfVn6POfNsQoKDdZE335x39nVEe3U8puuirSMvWG6KBgYLF7ykuMwnNLNN5FY9b8K2iXB5Vg
	XyatG0TboAWykPqJd9YL8vko21lXN9WZ/QCN3gYf3mgEwmYQt9JH9469zS/rOru0mh/kJPg7rnP
	ABUAMQOwCa2fMCCyMqAWQC3zdOFTKaXWFop6eHAR7249T1iuz6uEampIRvmME+NldUV6MV2vSxK
	BQzTGKdRHnLaXgDkwJM3+sLG4IvBkPHf4Ooq8U5cpFa8=
X-Google-Smtp-Source: AGHT+IFTN5FaBHcuFjtS6gPq50ktmEC49nU6Ixl0wCwR3dx0Y/oG1NSklwCNCUe2CCdnfQMG8oi51g==
X-Received: by 2002:a05:600c:4689:b0:459:e025:8c5b with SMTP id 5b1f17b1804b1-45b4d85020cmr11366555e9.30.1755760605583;
        Thu, 21 Aug 2025 00:16:45 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b4de5b52esm14411455e9.20.2025.08.21.00.16.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 00:16:45 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 21 Aug 2025 09:16:39 +0200
Subject: [PATCH 6/6] arm64: dts: qcom: sm8650: Additionally manage MXC
 power domain in camcc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250821-topic-sm8x50-upstream-pll-multi-pd-voting-dt-v1-6-a510c72da096@linaro.org>
References: <20250821-topic-sm8x50-upstream-pll-multi-pd-voting-dt-v1-0-a510c72da096@linaro.org>
In-Reply-To: <20250821-topic-sm8x50-upstream-pll-multi-pd-voting-dt-v1-0-a510c72da096@linaro.org>
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
 b=owEBbAKT/ZANAwAKAXfc29rIyEnRAcsmYgBopsfXTHMWaB4GmgoNn/oesvGn1puHFjxEkD9cnP8+
 cychFD6JAjIEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaKbH1wAKCRB33NvayMhJ0UBJD/
 iwIbnXLJfyoOtrhErUmJrfRf3rZDMcxTeX3THEYABCMZQXDVk/BIdx46pcfjjKpVNod5BtfGrzSvwp
 /iw24iZwkUoLoOMasEDdwOOdRM2fbnmlzJVG8hZsMBO808DoXSor5LYoAxmMB7I5XUIB35s4pqTPLD
 Wbls37hQn053K/PYD3jzJkKbCFEdtu8cZPd0J2wJ1qwm05fQGqTYLfW2iioWfLvKTmpnlJXCi1H2Ly
 N8D/7oHzJptzt6OkF1c95Qhjxla9uBRvRxYlHz2ADAn50Mn8uEg+HpQNoeRhxN328KsEPx6h36BnyV
 bixvgyW0Hyu/aVEwNHR0yjQSMVhB0+t3rT9yYgzYtqByytDlY5euay0SBr5DYgLDiCG6ljJv1izcXf
 HqpuRVxtyAVoJcNwZSnXkkBFTR7gTC5TBYPeStwBIcoX6Nh7V8oh2qy9aEoJYBMbWLpWsc6gKD9ukv
 a3LqvAP3YzWGQkNdmacHkBpG/nksE9SR5BpBTgdVPXpR+ECxhbV/st3/k+m1BnD8sos2Yk4MPNA4+D
 s8OfimoEibCudoqxwnYtbtbMlpZwnYBl+o46nafU+TU1TRxmepSbHdreFPjotR1yQ4b5fmln+6DlZv
 h1jDbgXM1Brorp1CeL+Odqj2qTMNfgrDpzC4270v3BOgzwisEKPNXTdgEG
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


