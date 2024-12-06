Return-Path: <devicetree+bounces-128016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A649E742F
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 16:33:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E0A4A16A46C
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 15:33:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE09820D4FD;
	Fri,  6 Dec 2024 15:32:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UCse+AHb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A41C720CCC5
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 15:32:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733499177; cv=none; b=lTGM/gDwirHgabSz4kAkc5yBxo6vmRFUa5U/GNeDQutRm37Ihup47c4CT7MT5MXeook9vf9G2msywsHT0qRFuAI2009xHznON9HvULMSmB+9kWDIPS8gBUdri8iyeRkLz5uQPOhNj3BsZm5W3ntlnckrubZ/fZ7WxV572/MwVXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733499177; c=relaxed/simple;
	bh=PuDf73tdKDHbHnwQKtTDXx3s1+y6oHS3JD5Fye3Pvgs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BmctnPBC8UrW3lIzUB32gS5DdGFMopSoRAx3q+cDTBVFlhiNQy4n295tt1wyN7wIdXFqRxh23INtlRfjkqUpKy/GU2Hm5Szb5kgNCiTLdvkoV9pVDMROpd2NbQVJHJklj8kWuUhIejM8aRiq6DnOUArtCMdgyO2up/dAcbR5AGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UCse+AHb; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4349fe119a8so2668615e9.3
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 07:32:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733499174; x=1734103974; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f9RqT1kv6j4/9BLcMgXCVstovd0I53X/UQb6AnamVm8=;
        b=UCse+AHb80cZ31lZyV0h5pHKHr0Vp5ksAJbjSy2GpZeWyvVgg4It9y5EdRE3508eqt
         PUI4o2NFSd6faeBaa4gKtKiDdFXMKA1OuLAf6GQXJoWjdB4Ywq4FuAqkOq2cf1+lqbpw
         w8J3SmIoR8sX/QGxXd9H6N+NjclO4taR0DUUyLqQe3/LwBhAyUrr1My7cDgtIhK2HpId
         pNE8K3oJnKM1S3i0aNA0Ukts71nHOJMmqbEdKFDSXvgYYIHDDT97gOkXT09vOCr2souL
         zN7qiqBdbDrKEQPcJiXBvthSEISFsQefwZtn2/McG9EM13G7XzziW+5Qlx3WcTD31Avn
         JLmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733499174; x=1734103974;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f9RqT1kv6j4/9BLcMgXCVstovd0I53X/UQb6AnamVm8=;
        b=UcNq/euFzpG6+eFLuh0b9lr17VtmnBSTRfF26atIV6FT5O1hoFLRkgiCgg63a9ONsP
         k5SurUuulGCDtlBzpDjYWzLEDMdLfSV6q1QCU/Aowma1rul70cdbz9ZtqhD4AW9wgHT6
         UCBz5ZtvnwRq0K1nb02wY1c3HuGRkvW3sGqqFkscS5CIPln8JPd7gXIjm6/7XeDO4aUV
         /3E6FapM/Du49cS70TQPeWz/3DnX+ChEFNig3IfgxbWs1OWvhpsaFFq3/20nHjNgA+NJ
         rIJp33kZh273rqy4AGzdTo+KVA/rwBiySiYY0wtTRv9Q4GhMsH7ZFsLYrbtQMFIC4ucS
         pf3w==
X-Forwarded-Encrypted: i=1; AJvYcCW8/C9pNXNPe16U1P8ceEAJxmc2XUxfwjJnEKCBJoHlBme1FDDXwuEU/RYIxRcErilFWGQdyIS116Bx@vger.kernel.org
X-Gm-Message-State: AOJu0Yxhvmyhr+ubkfEVdhjD3rs+TsugXHC4v+zPLlpQCKicJFQyyLhz
	kTEWe3P0+S471mc12a7CMlmLGSQKih/+mATpydyGbRoKkiYQKWkV8frQcvt9wkE=
X-Gm-Gg: ASbGnctqoUAUGT/Dcym8mZ7TjkA417JBLyFW3kkzN62/jlFFiYaLf0HkEJUzXTRESgt
	y2ImfmUtauGuZsCELN+ewNskDqXzQj9dvNefI9hbUTnm8gxkrWs4AOOclYZ46s623SAEb7XxOtZ
	cZLyOWZ93Ry7W4m0CzBoGC62+YmH+fDN9q0YBWUDt0JWeIhNO/mjcw7PQgIoYmkXQIQi1MHffl2
	B3mkamFJ7h2haOX+8bse/d6xXjDLny6EwsCuQVAdUpdIwFKgxSqXaFav74QwM+cNw==
X-Google-Smtp-Source: AGHT+IET9n/x+dzv4rWeFqI9P2x4osHZdSJaVLFPGAt/xoAKJBcUav308dICS7VYHW6VblB6L2Z7zg==
X-Received: by 2002:a05:600c:5952:b0:42c:c59a:ac21 with SMTP id 5b1f17b1804b1-434e38aedbdmr2614545e9.2.1733499173787;
        Fri, 06 Dec 2024 07:32:53 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434da113580sm61158035e9.29.2024.12.06.07.32.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 07:32:53 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 06 Dec 2024 16:32:27 +0100
Subject: [PATCH 03/19] arm64: dts: qcom: sm8350: Fix MPSS memory length
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241206-dts-qcom-cdsp-mpss-base-address-v1-3-2f349e4d5a63@linaro.org>
References: <20241206-dts-qcom-cdsp-mpss-base-address-v1-0-2f349e4d5a63@linaro.org>
In-Reply-To: <20241206-dts-qcom-cdsp-mpss-base-address-v1-0-2f349e4d5a63@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1271;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=PuDf73tdKDHbHnwQKtTDXx3s1+y6oHS3JD5Fye3Pvgs=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnUxkPKfigq51kXnfKAjiuiRSJI48Y7T4rMqqUZ
 O91pPYR6o6JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ1MZDwAKCRDBN2bmhouD
 1/hsEACZ19K7JC969tpo9QdXcazO4NIrBxKlYlB3JxZL1Qk1hzZGoSf9VMzOc5xu3qOJqX/jlFB
 NVL4TjcJMdg8y42gFsJmt+ljVS3Nw55LLou1F/e6UIGeNZK7toMxDGVnBTL7cNXO3dhJz7bK9zo
 RLjbVYipkED1yuS4wFzPjd5tdnuqovAoaf+LoKtAO4kAL/m5vSSrt1ZTePQpkNQgbP9UOdleRtV
 tRG+pj8k17JEKe9pZJ7rvcz+2i7xtLd6ewiVXUCdpvXaVBWOrqlfdO/fu03dYNHtfHteZcTWTxe
 H+UnBjqtdPHVGSpvDPpLncVbK6D63N1relirhD4UHuurk9qmfJwr1NCKfu+iOVtkid+WIZ+Odaq
 3S4TcJh54TBMEy7VmX2wJHx2+dCtNSg/hBqG8xuLwMq2Farzq+pbTDoiatti4X5CoADvspm2IfY
 iOak3HTgfEof8nvU4nr31Kdhe3Av/oEvehZ0pUhHza7n6Wq7ZMXtxy0ob2caK8Qf4Wx/r8K8csm
 KmfOrGIP6R+Zx+lX/3f7BKWODqLcQDO3i7QM/tkUtHtmTwocC3wBmVx217sNWI/RSIgOEd6B6ve
 BtMOtd/dA0fHN++9h1FEcUWLgL189Kr0QTyl/L1/6QrFSz+dJISP7QSdJv69TSfT+LpPLBcJvVt
 ddoyBK7XY6GvtVA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

The address space in MPSS/Modem PAS (Peripheral Authentication Service)
remoteproc node should point to the QDSP PUB address space
(QDSP6...SS_PUB) which has a length of 0x10000.  Value of 0x4040 was
copied from older DTS, but it grew since then.

This should have no functional impact on Linux users, because PAS loader
does not use this address space at all.

Fixes: 177fcf0aeda2 ("arm64: dts: qcom: sm8350: Add remoteprocs")
Cc: <stable@vger.kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index 2a62405c0c9eff959abc4cee57753a8b1545c9bf..7d77dc528eb734a86be5f194b120b6d926f150c6 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -2214,7 +2214,7 @@ lpass_ag_noc: interconnect@3c40000 {
 
 		mpss: remoteproc@4080000 {
 			compatible = "qcom,sm8350-mpss-pas";
-			reg = <0x0 0x04080000 0x0 0x4040>;
+			reg = <0x0 0x04080000 0x0 0x10000>;
 
 			interrupts-extended = <&intc GIC_SPI 264 IRQ_TYPE_EDGE_RISING>,
 					      <&smp2p_modem_in 0 IRQ_TYPE_EDGE_RISING>,

-- 
2.43.0


