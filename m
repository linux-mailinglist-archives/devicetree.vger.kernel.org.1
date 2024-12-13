Return-Path: <devicetree+bounces-130838-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DE39F0FFE
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 15:59:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 89B7D283927
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 14:59:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8856F1F4285;
	Fri, 13 Dec 2024 14:54:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="poC6Buqw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D8801F37D0
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 14:54:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734101698; cv=none; b=kt/2brQpgBVjivl/0t61YeLmRFC17KHEk9iSA62FulyFHhsYSunUZ8dVG848/qSpCR7b0jgK1uLvpKv2nOvmWmCvFIwr94nfwm2tlO1ePyVEAKHYn/c+TvaCFrd+6BRjG5uiE01Kh9t/T3Yk7bvkpgly53GXIVyVAPFmg0kfJmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734101698; c=relaxed/simple;
	bh=wIdFHwx0EhaJX+kJ0qWOdT5Y+JUmpE9SsVqklb7B3R8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZWloB2Xh5ae5ZsbVmaD1+Ql1i0g4OH+b/zvdr4KyG9OblLVwUPH9NNYEXnCiy9RVBe8IdI6SuMHg4sy4+mEP5zkWCy9ALTlTZDMtv6VNSyIRYGg21uUWfudqOY47gsTn+kqIm6p0Nd1QBuJnc6MZI4pyeCYQ+YFXiJE5dMtJGaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=poC6Buqw; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3862de51d38so87880f8f.1
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 06:54:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734101695; x=1734706495; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pvFQcn5ZNdpY9vmIfk/EdCA/K4kfG2a+p+0/kL98QK4=;
        b=poC6BuqwJnHmGSy79UJAxb0qr4nHduGe2Fh0EBNamHKec2SXRyzMwoFHpwWxYTRHTk
         9bSbrD0YsNZfp6wUS3ysZt9IdnmiPV2XDos4b1zPIZUXfzbsAYgsKV5tEuv5hNUSLjt0
         4ulraI/lJzlNq85qwx5hA+ojJeSnlr4dkWatUnvA4vyYfNwGrLrRSv8QTwcamLPHB0Ls
         GkETCBZnxHC7F/uJ39PdUzjch09z3fqXEplQI/ThbGOVKqha9eBtArB6aWXMF2xPggJw
         XDbSGyHeqpFXPeJNkr8ojspnWgYEQlitHNMTEyqBWsls8KpT4kRrTMCUVcBkHh4w6qDT
         KmEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734101695; x=1734706495;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pvFQcn5ZNdpY9vmIfk/EdCA/K4kfG2a+p+0/kL98QK4=;
        b=s6our19vuV+aeIDvk7rHpb6H3eDLyzKVEg6QrXpBLGG5jgcqs20QF4ZQIyPDBbDbTZ
         1leFv0dFh3EkwdmkiZ8t6CHpPqmcThYyZ6ZNsYIaQj8imgr8J3cKgD1s5ofCbAyE8wp6
         kv64lTlTXMQDZBVQ7RFcEKynldwhJRn6qAGtvmpCjh89vAHZGWJwWXxJQ27bunWYFCuT
         6E7FhmmT2t8AT8aHzDdE99v/mHDqYI2KPCOv8tAtOO5xI4L2e7UctNSU8PkCatP7j8Ma
         aX9SkoQuaIpVXVqdZ01tgQc64EhuXSdDncMsjkfziIzNUaqAjGvHN/kuiU0SvMCHmuAO
         EwTg==
X-Forwarded-Encrypted: i=1; AJvYcCUyp7Odkw9i7haRw97vFG42calwoafxPigMLN9IK4ZEkDmoVjua7+k4PzthIjEA0E0HeKpmExEVOtKb@vger.kernel.org
X-Gm-Message-State: AOJu0YzAKtEE8dBwQI+zg18hQA+/nb5VZELMJ9piCuob+1lNF+bTax6S
	NZo7gAaKBiAxRcEnCaek3EDgpI9NsnJfT0+Dyn5Qnk6EYOtF81Ge5slqTH2LXpU=
X-Gm-Gg: ASbGncsMieTCG3QC7wkcybDbLE8WFeL5j1kHEdSqJJ321ALuLZgVlQqebgHj5UaMniE
	FCOVN+xSIcs21H4vlg5ptqupfR0YM6aT8+JL5e2r9nVeV9ISopfN2KwIk3cxukv9JbOq8r3L8Gt
	meNzVnQwYUzmggrr9ycg0JSbOh+aQx1UX+Ap6kIFSFwzusfWef+rj4kMXYrp479tCNNP6e+PtvH
	6nTaHZV8ResXCsT2zE+WKg3bl/gXJJF7xIyEXUtf5/3eRj9Vl8u0Zgf3OC4ueNPCvnGFItI
X-Google-Smtp-Source: AGHT+IGGO+TcCVZ/kBfaiPiLAIZk6zInVdFjuWzKe9M0CPW+35YvCUkPoGNzLl9y2Ut3HtrEbIljuw==
X-Received: by 2002:a05:6000:2ce:b0:385:f72a:a3b1 with SMTP id ffacd0b85a97d-38880ac50d7mr825137f8f.4.1734101694819;
        Fri, 13 Dec 2024 06:54:54 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436256b42c8sm51547305e9.29.2024.12.13.06.54.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Dec 2024 06:54:54 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 13 Dec 2024 15:54:09 +0100
Subject: [PATCH v3 20/23] arm64: dts: qcom: sdx75: Fix MPSS memory length
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241213-dts-qcom-cdsp-mpss-base-address-v3-20-2e0036fccd8d@linaro.org>
References: <20241213-dts-qcom-cdsp-mpss-base-address-v3-0-2e0036fccd8d@linaro.org>
In-Reply-To: <20241213-dts-qcom-cdsp-mpss-base-address-v3-0-2e0036fccd8d@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Abel Vesa <abel.vesa@linaro.org>, Sibi Sankar <quic_sibis@quicinc.com>, 
 Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1289;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=wIdFHwx0EhaJX+kJ0qWOdT5Y+JUmpE9SsVqklb7B3R8=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnXEqZHCzmtyk+0erYcdt+toBCAIupki/2Ks3zG
 yidJywZIXaJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ1xKmQAKCRDBN2bmhouD
 18O0EACSrBQ1PXTqd0QOf+r2dze3a5VjTLqzsFsCduqvzAA7hwSjB6DL4FcZTVtssYi9THkyDIw
 lIfRbrkrmkUjSi30keX5lU/UUai3gjxnbFgeZB5oUTT4ug/vGM8kRUDCviVbKKPMqh3ur4ik7VG
 1YKYga3jAP2HoqPEYR9c5smrWG4xKvT2Q5QGs1dux4Ejmeu9VGEw9k/FvDNCSt0P4qvGWcsma6G
 LyQ6rhf3+Xb1FB2zw1hDEXOWrfoQm3hTrg4Fc2enTUniRO2dX5lo0wByoes9vdcmQyjHkjK/2lk
 WgN5KmstHmvvfdMVSQTm4mJnmAWa5CRdhITHwuhSwr1o5vVgcxcRT08tXx0Lih3Mvf+8eU4kJzz
 mD3T08AZ4672z34EWZ4evRYW8IEN18d3Ke7HzxJfcF+uEEHC/G4sA/bW/t95GsFivCMX1uhB8Mr
 90n2MtUjRmjq083npbfCxRcV8zxUC8nzovFtUtMBaRjy7ofwbqkyjGghEfpa02LAQnrP8IhGHLx
 zaciLGoHbpcIw2W6nT7rq8QFbihjzkjY+i99Ks8iVb6RNLqvdKGBin7eJi/7Mx3n7SHzllqZmr0
 bMtZcOg3rn2TTYHeumyrXYIBgAGE1aqJOf3N3uri1VO0vq8vi0RGzdWGc0H0zukHMD8+AKDbD0q
 ZOEDeOmn2Ti+6eg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

The address space in MPSS/Modem PAS (Peripheral Authentication Service)
remoteproc node should point to the QDSP PUB address space
(QDSP6...SS_PUB) which has a length of 0x10000.  Value of 0x4040 was
copied from older DTS, but it grew since then.

This should have no functional impact on Linux users, because PAS loader
does not use this address space at all.

Cc: stable@vger.kernel.org
Fixes: 41c72f36b286 ("arm64: dts: qcom: sdx75: Add remoteproc node")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v3:
New patch
---
 arch/arm64/boot/dts/qcom/sdx75.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdx75.dtsi b/arch/arm64/boot/dts/qcom/sdx75.dtsi
index 5f7e59ecf1ca6298cb252ee0654bc7eaeefbd303..a7cb6bacc4ad5551486d2ded930c1a256d27655e 100644
--- a/arch/arm64/boot/dts/qcom/sdx75.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdx75.dtsi
@@ -893,7 +893,7 @@ tcsr: syscon@1fc0000 {
 
 		remoteproc_mpss: remoteproc@4080000 {
 			compatible = "qcom,sdx75-mpss-pas";
-			reg = <0 0x04080000 0 0x4040>;
+			reg = <0 0x04080000 0 0x10000>;
 
 			interrupts-extended = <&intc GIC_SPI 250 IRQ_TYPE_EDGE_RISING>,
 					      <&smp2p_modem_in 0 IRQ_TYPE_EDGE_RISING>,

-- 
2.43.0


