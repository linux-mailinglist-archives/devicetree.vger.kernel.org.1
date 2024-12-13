Return-Path: <devicetree+bounces-130823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D7049F0FC6
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 15:55:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B4AFD1639DF
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 14:55:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C23CB1E3DFE;
	Fri, 13 Dec 2024 14:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ylw7Rjbw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1F2A1E3787
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 14:54:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734101674; cv=none; b=bTwQjoXIL2UtCHQo8CMP36z2aPz9/Ie7+W+i+eJwAxJILpG46HhPFfvP3Y4bpF0dnc3RWTpJU8zGLjD6iH822AFvcu5TiH3TAOjTwVZUWMGc4V+1XQPxZigsdhppGl0k+SGH+rQb/kr+9iSDmhrrIwdi0TbC6rMusdonmsCUgaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734101674; c=relaxed/simple;
	bh=XAEiKnCO1r1d3Rt38gaJyxFTDUYuD0/ITOVOdeMu+YQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ChvFuqdNm/93fCoAB/ugF6J0l6+AxOUjMZG95x8w6JzT1olDzlss1PmCWp9HZWNRYp2fdZ3ZgOXY2yN1p/KIcj5ptGC8TdPTjWZblRmMJQ9HpdqKPjtjomtGIGWiRHz+svEepe1V6rsUQFOTRFQGtnoqYzhVRHJdkcNRkaKhBO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ylw7Rjbw; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-434e9e22a99so1857015e9.1
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 06:54:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734101671; x=1734706471; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dIBR65NQgnFdG5+Wr1oGSIxsxM3LOWc73QgneL07cmA=;
        b=ylw7RjbwXsMSBJhyEXGcagRiUClaPZafXfwAXzBcdyCy9jgVKW39T1kS+/3deyV9u4
         hXk0jzkEMstX4lE8taxQj+3Nudp2AakYQtxBoB2PtHNF22dPzRl8M5pyhsbRPI7LJD3n
         OJMniH9qEkIASiLZpGt3hqEHwKgH3Qhol/FiQj6fVCYGZ4D+I4pjcMTwivLv1n+0I4uy
         hIlLiAS792bH4N7FNOhWW6mceO8+hEvH9Rz9R+/cirsp4r55MOY/6yGERSQBCQWEm1yz
         1whUOTV3RQB4UctPm84gYpktfVxu0S0uTPS/NceYydEEt1smtYP7twDPutQnygilvOtt
         JlyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734101671; x=1734706471;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dIBR65NQgnFdG5+Wr1oGSIxsxM3LOWc73QgneL07cmA=;
        b=IYLSx2Tr6bL80eG0YIYAy12CDOl2QEiJlAvRdYAyfeiaE/Eb/lmtK8BYGkZbTfZHE5
         o3ebsGY6k9M84M9O5B8vNOdetlQz/rjAzoNaS8hiXr1eb9AChGSYVIve/+24abe56mFI
         hqmwQUABzRlyPGfF+68Sm1u7tSa1Cti3XDUnjxMdCpQDgoPjTxbqRM23RDIFzX7BY00i
         BVu1rIwIh2aRF91PvcfS0yzGwwEjtooou0oxqs0zQqeZH5baUko/WUKeVdM9KnNB2A9+
         ZhH3tgjMeL4UENtTSRhqnXmNfHHILpC4NpMviSWsSDX3gY0LSs5eJhQNOM1RX6Y2Ivn6
         Qozg==
X-Forwarded-Encrypted: i=1; AJvYcCXjdM50gE4XtlIHX1JDzpojbBG8AOvUGmKXnkvozfT3UKi8sE3NraASHs6Y5FOsBuNL7dHk3jmwjSV/@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1FgZEZgnUs/2MQygeSatdbgJssmZHh45KrzEsxMFWZas4cCDc
	1XhqyoabgCeawYCOsTDmA+aGY2Cbe9I4PjaurL59j1B34yK5l/g1dx6z0382dHY=
X-Gm-Gg: ASbGncsAJX/6TcwFSCoi7LAfkWXIj1V0kRVUnMKQ1FfZI1WJLI8C0ruZEzDgnJfbq0S
	UyZTN2vKLLC4jZVL9BZU3RWLIRR5gJTmpDcD6SlHHquyMU4E8uik2blWMUA/dbfVVJsBNYqxYpr
	9m0ebugrXLb+GCBDmy0HzLv9rzgLmNYrDmPwc6QYHAV7gEfXx1TlZlBxKXwHCngz27zYpfUm10H
	WQb7p/jc5ElbOTrEMDP2GWj2Y4DB4uaWf2etui+SUc9zsGepZywnbqTnNdxtytV/s8iW8nn
X-Google-Smtp-Source: AGHT+IHig/JnTEFFGqixtBJKsYK9tuq4eWeEObvfR7ChV+V/m684qCQ0Tl99jvlECfUXk+EL/mj/Uw==
X-Received: by 2002:a5d:584d:0:b0:385:e16b:72be with SMTP id ffacd0b85a97d-3888e0c249fmr818317f8f.14.1734101671068;
        Fri, 13 Dec 2024 06:54:31 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436256b42c8sm51547305e9.29.2024.12.13.06.54.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Dec 2024 06:54:30 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 13 Dec 2024 15:53:54 +0100
Subject: [PATCH v3 05/23] arm64: dts: qcom: sm8450: Fix CDSP memory length
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241213-dts-qcom-cdsp-mpss-base-address-v3-5-2e0036fccd8d@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1353;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=XAEiKnCO1r1d3Rt38gaJyxFTDUYuD0/ITOVOdeMu+YQ=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnXEqL3xeYOLNicK9EC7/9JLiByvtqRj/A2wQBD
 gN/amAddceJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ1xKiwAKCRDBN2bmhouD
 19jWD/sEtxJfvFz9eFBBGyIZtF84DnLjW1GCAwAvWBR+hwCrGxPPopgWCRIv8NeCKADocBeAMfg
 tRSdJ25Tsj8u40wAexGIIhry+00VWwHPzvg+ajD/xH2/wmbE6HXq4q3f0eHxet++PfkGBYlXOEi
 v64zVsqZ6QQdiKgDLQ/M2xg0yW0yuc/b3fwIG4N7Cljf/0PFDtf/lXx5K4KWb7HThvLmezU2vT4
 GAiURYUNGSJKxALudq8GbAqKB4h+Eet2GnrAekf5hpTen6Ang2ejUjMf1qsnT/AvGhvBUTah9p3
 +HlEeR5bOItwS3n4vqS3dfBhNebhB6ydzLE06YNJqEBY+bFzBrMmHXsaFwHjmqWdjEtu7DpIWf0
 ufDjhj0UE4dZOLSdbqKlIrLzDvkPTmm+vfezocf8E8+NfW8V1m3NWCmy662bUJ76v7/RhtWIpSg
 d8jhxG6NDj2ABTLvwpjbfHgWRV8ljUCZy2JWqE3iU6o6HjgDiPEW5IwvInq4ubZT8ywdUNoIMAG
 m07Ol6kbtL8AgFCIflhi6Jznt97e0vzqwbaSWB0JwKdXPXz4i31Sx1NLikgzDJEpbTjFPREneM6
 xPjt1DytON0XYDjPKX12jZGNScoHllffoe8e8LCh1/894I3Cz5ZDa+zQon6Ja6CB6lmWFNtkBGk
 K+qT68eBTRuaacw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

The address space in CDSP PAS (Peripheral Authentication Service)
remoteproc node should point to the QDSP PUB address space
(QDSP6...SS_PUB) which has a length of 0x10000.  Value of 0x1400000 was
copied from older DTS, but it does not look accurate at all.

This should have no functional impact on Linux users, because PAS loader
does not use this address space at all.

Fixes: 1172729576fb ("arm64: dts: qcom: sm8450: Add remoteproc enablers and instances")
Cc: stable@vger.kernel.org
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index d028079c11bdc2dd2b254f7f7d85e315a86f79bc..7a3bf847b0b9eae2094b0a8f48f6900a31b28ae4 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -2800,7 +2800,7 @@ vamacro: codec@33f0000 {
 
 		remoteproc_cdsp: remoteproc@32300000 {
 			compatible = "qcom,sm8450-cdsp-pas";
-			reg = <0 0x32300000 0 0x1400000>;
+			reg = <0 0x32300000 0 0x10000>;
 
 			interrupts-extended = <&intc GIC_SPI 578 IRQ_TYPE_EDGE_RISING>,
 					      <&smp2p_cdsp_in 0 IRQ_TYPE_EDGE_RISING>,

-- 
2.43.0


