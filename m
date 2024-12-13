Return-Path: <devicetree+bounces-130836-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA449F0FF5
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 15:58:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D89E42835FA
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 14:58:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B5711F37A0;
	Fri, 13 Dec 2024 14:54:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aJS+INke"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BDBC1F1905
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734101695; cv=none; b=W9wj+Tf4Bm1RlXnAkBmYGwL86HXo6HL652fde1jlH6zcjfWfORFGLejP04O3698pQTknOFtdY4UkqpKFB3U2gE3b6JZLZzYqHUOw0aWVRPVhBRF1ehlY8/RXXxnOasZ/5YHzknHaV9stdmk5ejEE27g3vrs97q2KUZCF+bA+rRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734101695; c=relaxed/simple;
	bh=4XlWKfnmTuQGxdgudvxQgYEWyzNKQNtSzL8TC+5d//c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fs5Q+HP9p9mdQ0EqFaCse9OZlcFnpw7LUnqkIUlfKhs/osZTLKk44nMkfCBUkMSexJ/2KNKWbnERTEaG27yd8LCPqoh28VAngZeEjkuMDRUOOdltKdnV+vpbNIsZ4cN9Rs5rdGgPmy9tI43wTG2ghNfmMjlMa5G3Gr383G4wPJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aJS+INke; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4361e82e3c3so2344895e9.0
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 06:54:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734101692; x=1734706492; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iO10RQLOSphsKOuYcR9GWLEZ5zCmIXSgPjuSN5APqZ4=;
        b=aJS+INkeWk0VpMd4rV9JoJ5EtzIZ0alQbAI4u5Br7zX95KAnaWghmW+cRZkmvcdVVL
         mpCQXel8p1hM2qVF9Zgmua2Yw7Pfj2wpZgoTZtfOqx+pbIwvy0sTLmnEE+MziadG//Qs
         k8EzM+prDcy35HTyJJblhaPJDZ61Rhw59xSm1wnc/K92dvUeDqmCvEUFZRPqu5mqdYzm
         rY35+owAtfSpnmn/tRO3AShVL6nareRMeK6lhl0wHp289VJPXzYwtZNgNW73I0Y9yLI2
         9nZcCeNeG0p6BtPwwiNuvh3iVCl3QiW+Fg9SWm1NIxY4GBC3JG+YGCyPvtnuFPuBrjOc
         SEag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734101692; x=1734706492;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iO10RQLOSphsKOuYcR9GWLEZ5zCmIXSgPjuSN5APqZ4=;
        b=mFSyXsIUQH6GPrussH4osICIEZ97AWGegrKrQokpA0+sqBwAThMYoOpBqNii+aQyhu
         IZoLLwNfHLyxuPjelTIiFFZeMcHqBkjaXA8XJkkaqA7opfH85f7k54u61nSXcqyv9MxM
         d/ZZdGz8qRwJiCEA0coGSRSz5MFZhkWRsV6xBDg4ud53SnJZ5lI/vGhtaevf40nPfr3p
         YcIc++RJBJevmSfDzc33FiOwIuFe2oEl36ZgJ+wDp8e7vq2JVwTANBf0CBiw1y9tcYsZ
         KIARawJKPfVN14lu8hIk91LB0Jx8E0cquqZoeiS1ff1u+Yo/4OXGDc7Mb/xPPlJKmlgr
         8OGA==
X-Forwarded-Encrypted: i=1; AJvYcCX77X+TrDdMGCWSR33XKe99JRDGqmu8VvOa2NSRJ5v4cbzadjOhBsf4RtSVW0X+kDYnCQvE/Ouldilm@vger.kernel.org
X-Gm-Message-State: AOJu0Yxg/r/y9MkZ4iS5a9vdItYEfa+p4U4wuTfbDKLpa3bw4c9u+2Ys
	kCIAuh+ZYKfJdzyVzby9KXkfIKFLOj9pUt1wxlDsNTMB1GYyB3oMROUz1UQDp18=
X-Gm-Gg: ASbGncv/9fqLudYg3HvPrmSyKFUATBvn/xh0KMPMx9WfKRDk9fu0X/mEWlahB6Hlb5c
	mthbDaf9gF9Eb0jcPT5xNFQ/F46m/FjSxED/m511/wUSoPmiDQzsOsgi1Wx3oV3FEFRVJUITl97
	2avXwhvPzoF+ZO/jLANd1SGxSb/ZkBvn8WyW/upEkp9HlJ7xtf3uARq4oF2dy3ncwd4EdVY4ATM
	jZkw2O0mww0itkvR/aLIdmqRE+DmGvS0rk5xksTJXPUbKQ39Ew5nXQWo1ichabomFZsuzTx
X-Google-Smtp-Source: AGHT+IFkbSFYO2tVIHGBhWsmKJwrpbF1iONLkfAHBKHALsaJ9F+2v5aak2onv6WRegZrdIFRTiXJ/w==
X-Received: by 2002:a05:600c:3b88:b0:436:1902:23b5 with SMTP id 5b1f17b1804b1-4362aaa6c13mr8919775e9.4.1734101691888;
        Fri, 13 Dec 2024 06:54:51 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436256b42c8sm51547305e9.29.2024.12.13.06.54.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Dec 2024 06:54:51 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 13 Dec 2024 15:54:07 +0100
Subject: [PATCH RFT v3 18/23] arm64: dts: qcom: sm6375: Fix CDSP memory
 base and length
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241213-dts-qcom-cdsp-mpss-base-address-v3-18-2e0036fccd8d@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1366;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=4XlWKfnmTuQGxdgudvxQgYEWyzNKQNtSzL8TC+5d//c=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnXEqXAe7QiuUxwnp8Xq0Cx8DNlbmLHHJs4DlFq
 z56lnUcBE2JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ1xKlwAKCRDBN2bmhouD
 1/1WD/0bApfHPfJtZWmqEVIefN4S6IDWERep/K6tH5g00/vHu9lndzrNZ3ZI2+fsXJrryYXZoBs
 jk3PlhtbG/mQ0yXIOHuXkbopdQSqqkRrIqSlknhSB6Z8NqLwITQfrvqQ6Q+zE7zuy3Zm4X1hsJp
 eMsHVQ1J2ALvoX78TfHxuvgxCwIF7JrjyEHFHaiFTkjFyiYhIjXTQXeF2nCtj1dRCeKGsMb4gTR
 SOaxTGFrpa8JjuZVITWd2QADOH8NBIgqC4ogDtHieZx1+gL+QulAIsf7l4N6ws/XQz8pPmr+wcY
 R4rGsO8rc4T0eIWb/Nvlppht/pR7/Zw3TN9/59jxZwXD8iAGXmk0Ez4YJ5jp/1hSLLNsxU7V3LQ
 7AoddbXRXE+3H03FLonOSWlnajE64V/iMRE24y5H+58xrXHni5WzAiN86AOObbB/vXofF9NN5cY
 JlBWiI6Z4kOw8EEPlYQdfyFMnVUsdEoJn9J5xlsTtx8B0uCHlDvAcFNmGax2KLJr07DuVAp9IU5
 0C4Qv2/B/8fHfV8vApLwraRp4GiYAj4VDvyJzf2sVZO7M1JLNrgve8mN3lFOVoKmsPYZzFaLlBQ
 a6WvC4ehtSQliUG0h1FMUOBLlPNBq0cXfBdhkV9InUUYw32H8vX/78I7ceNrj09blzPSFwGiP1G
 rLndnRS+l1hVIow==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

The address space in CDSP PAS (Peripheral Authentication Service)
remoteproc node should point to the QDSP PUB address space
(QDSP6...SS_PUB): 0x0b30_0000 with length of 0x10000.

0x0b00_0000, value used so far, is the main region of CDSP.

Correct the base address and length, which should have no functional
impact on Linux users, because PAS loader does not use this address
space at all.

Fixes: fe6fd26aeddf ("arm64: dts: qcom: sm6375: Add ADSP&CDSP")
Cc: <stable@vger.kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6375.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6375.dtsi b/arch/arm64/boot/dts/qcom/sm6375.dtsi
index 613319021238a1fec44660cd9740a980edeb3f10..bb6511cb451b1c45ed2669f208fe3ed00848b481 100644
--- a/arch/arm64/boot/dts/qcom/sm6375.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6375.dtsi
@@ -1595,9 +1595,9 @@ IPCC_MPROC_SIGNAL_GLINK_QMP
 			};
 		};
 
-		remoteproc_cdsp: remoteproc@b000000 {
+		remoteproc_cdsp: remoteproc@b300000 {
 			compatible = "qcom,sm6375-cdsp-pas";
-			reg = <0x0 0x0b000000 0x0 0x100000>;
+			reg = <0x0 0x0b300000 0x0 0x10000>;
 
 			interrupts-extended = <&intc GIC_SPI 265 IRQ_TYPE_EDGE_RISING>,
 					      <&smp2p_cdsp_in 0 IRQ_TYPE_EDGE_RISING>,

-- 
2.43.0


