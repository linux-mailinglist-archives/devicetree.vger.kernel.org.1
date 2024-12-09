Return-Path: <devicetree+bounces-128601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D929E9186
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 12:07:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BD8B728182D
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 11:06:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0134B223700;
	Mon,  9 Dec 2024 11:03:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Vi8BMF6R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCA18221DB5
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 11:02:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733742180; cv=none; b=FzkkqQBDXJ/B+wrKhE0/p5naJqVuVHi0mRB2XEZZqFlXmc0XotToMPpEYti3uKY0RpdlhCec+zUsPY3FyIHUxuMeZKsQGnrfwUImZdzD3hmz+ozpLopRJSEcaMMkipTgFXx+dNm47YkgMdWg/nCACfJhPwink0OLYnsnHe74Yv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733742180; c=relaxed/simple;
	bh=r5/ThlmtFN/moKPu+XvaE/Ex2NY1JITsfnyJtM0ddII=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BYVPTVk8h0HalaSG9ZlvP+VeHjwIyhRUa7QWnzANpXXk5svhnaZ2SIVhQKxKIt9178ihoOyw1i/ryJ6vmDrUTrMjT51jWnf4pRzohTuLBLEoeoN1lr7QiJjyeje9wVjDV4jqjqfptruboZ9qLgZ2ZHL/MqB/mP0GaC6r6e60WKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Vi8BMF6R; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-aa6935b4f35so5804166b.0
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 03:02:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733742176; x=1734346976; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IP8yQKR1WhUpxKJPnM87mHITvQbbTzc6JOmzP4W8lII=;
        b=Vi8BMF6ReTSxh1IdBtlqJUYtaA1ps4tHURazPHhydueID5UTM4UNQgcSufuizga4gE
         dAtWXi7Wds+lC2rjdcH4VoeG8ImdVrnEgf7hBELauq+P8mBLAK7j7rogWtPqHy7w+kHx
         VFA79WYtBVfnRWg+luDkAFzR4FCUke+v0nTt3sF4anj1+gF7xB2jP5S+y3vYOBCmfOmj
         LuHedHskHjKBYN6yjJYhgV4L4Wd9F/CTUzbly4zAv/dRIfRW9TsPHHyHohE+/uDatESC
         sSGld098BKdFpDl2ukIcVAwmiynNQM+0PHx6efb09qUzYJKQfQa3SL/ZGbNmOlI/eGDU
         WDRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733742176; x=1734346976;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IP8yQKR1WhUpxKJPnM87mHITvQbbTzc6JOmzP4W8lII=;
        b=imSCdZm0sGUiiSTWT/Ded4Vypy94WaoAz/NRgALKkzLHXVkSLjIkyeDiWjR5p2hDcS
         DI9FICF9zBfgGefMvBRzc6EXeYflhLRoxLGsylilhi4W23nIw+pBlwYkPLRCVAObi7cG
         8M0SR/bWXJt2SHRLkVFhoymPAytsabrXPEVaQBzO2YyNymiGX2sNgHjhpnfKbQ4fVyXK
         EHBqOktK8AUCilPl6LSV7LItbGGBb/JzEU6C2C7D0zDsEtt6bJkQPuWMsoXWFwewosPk
         tfpM4fHx9B65NwJV3aW1ZRyCX3ECVuQu+T9npsVZgb51lVGsFjPcH2iCBZdkuUVwEcii
         x8jQ==
X-Forwarded-Encrypted: i=1; AJvYcCUBf7vMKtPI4JV0F7/JAXk+vEKFyzPbP8s/WGg005dghmt+DmAlOuPPr8TL3BRjohHNMiwj1q5ZAk4q@vger.kernel.org
X-Gm-Message-State: AOJu0YyZp3sSZiLPrMjQVOmBt2Bf2XqMd09MhUand1ylkm+djVTJ4tTP
	Xw/iu8cVTsxOQXMQXDmEUKJYAvpEGG3AqQdU+IuuII39QngWucDS1o00ntCyvVo=
X-Gm-Gg: ASbGnctWSyzTdjzMgjvys7xNBpqM4JrkTmTcpirz0MgL9NDryQMpbr3C6iTP09OSocR
	CcMofTsryKqoykQBNqGwFehfGLv90nEeeqlSS6M+QOA+qZBagR7HrxVxZ/mazeDoSuYlYvDDiHR
	+oR6SPs2nZYrhgXuufUea3DV5N+3ExX7VCMHXl/2CuaPuNRrnWxoHccOGPzHpts8RzJiOplEO23
	hxEry4a3Xcvoa+J9Mvj+pUK+ATVGXbgeSmGpF8gGoxtZ38XLya3cNmXSwaPGxJNdw==
X-Google-Smtp-Source: AGHT+IGP8iom8b2OxTi+0VyD5ACVJhObC8JwCvkhyDuCR3gfyLVoHdCsGicvgS9K0YXCAjjegLztQQ==
X-Received: by 2002:a05:6402:2812:b0:5d0:bcdd:ff9b with SMTP id 4fb4d7f45d1cf-5d3be76acb5mr3414088a12.9.1733742176022;
        Mon, 09 Dec 2024 03:02:56 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d3dd4f641bsm3348818a12.51.2024.12.09.03.02.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2024 03:02:55 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 09 Dec 2024 12:02:20 +0100
Subject: [PATCH v2 15/19] arm64: dts: qcom: sm6350: Fix ADSP memory length
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241209-dts-qcom-cdsp-mpss-base-address-v2-15-d85a3bd5cced@linaro.org>
References: <20241209-dts-qcom-cdsp-mpss-base-address-v2-0-d85a3bd5cced@linaro.org>
In-Reply-To: <20241209-dts-qcom-cdsp-mpss-base-address-v2-0-d85a3bd5cced@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1214;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=r5/ThlmtFN/moKPu+XvaE/Ex2NY1JITsfnyJtM0ddII=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnVs49lFX9xfy08AOs5f8lY73l9YA/j9k2TRBf9
 7hb2CsBDB+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ1bOPQAKCRDBN2bmhouD
 10L/D/oCQfeFgnQS7eTuQBhmCGRjKVEjSIfV6xxOiz2XN/gK6fmtrhPyhOA8JyyTD2h9475iwgJ
 025RBneq4dBZfbZQQsFaD9G4PMkW7NhWLF/TAObwQ+czWMoFgszZzEvJgEwaVfDaTYZ9jBYiHBX
 mbLNFGoTY8CBOTtJLtwO0uHbGSK7erDv2wqNyDaxSuHj2bD/iyT8PqQOIV+McF1Xmgd73/1VKYE
 wV8a2VcB5T8TcXC+WyonhPb3l3cVREcJhzS/znkffZ3w4LV6zLr0RABvnmOeNmIuw0x1CopXc5H
 nbHE1M/V04mqgobr+8ImKXRQrDbbGPJA128hMsriK7x5Pfr43j0APBco0/y4Q8tkUpcXPnk99Cr
 4sIHGh/T2kVFGzHUekpOxQJF3OrL1XNORY8bDXR/1dy3h05/bZbHS2DUXuwY5U4ZzoLqN9ZZpD3
 p1uCafetuEffmdxNVdHan0DtmEyl9ASwy3Q/x6GXpQPLrGkRxIP/xc8pbOZ63a5PuTlIvXzlRn4
 tvNyFAGU2y+l0eX9Kl1Pii6kzoYrFFGwgFfJyjzwgeXbwzEGQRJUPSad4e/W5Er7IKNVxnf5luM
 4OtHY1HwnhaAz03CM7usFlB4ZTY4zx0m1GTprRxlGMeXEPuxI4U/0/Jb0dTbG4N61KDSS2zAYtD
 F4g1+CXEh7ToKZg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

The address space in ADSP (Peripheral Authentication Service) remoteproc
node should point to the QDSP PUB address space (QDSP6...SS_PUB) which
has a length of 0x10000.

This should have no functional impact on Linux users, because PAS loader
does not use this address space at all.

Fixes: efc33c969f23 ("arm64: dts: qcom: sm6350: Add ADSP nodes")
Cc: stable@vger.kernel.org
Tested-by: Luca Weiss <luca.weiss@fairphone.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6350.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
index 8d697280249fefcc62ab0848e949b5509deb32a6..3df506c2745ea27f956ef7d7a4b5fbaf6285c428 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -1283,7 +1283,7 @@ tcsr_mutex: hwlock@1f40000 {
 
 		adsp: remoteproc@3000000 {
 			compatible = "qcom,sm6350-adsp-pas";
-			reg = <0 0x03000000 0 0x100>;
+			reg = <0x0 0x03000000 0x0 0x10000>;
 
 			interrupts-extended = <&pdc 6 IRQ_TYPE_EDGE_RISING>,
 					      <&smp2p_adsp_in 0 IRQ_TYPE_EDGE_RISING>,

-- 
2.43.0


