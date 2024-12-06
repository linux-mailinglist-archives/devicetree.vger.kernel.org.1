Return-Path: <devicetree+bounces-128028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E59A9E7463
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 16:36:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F3D951887D37
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 15:36:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54B1521171E;
	Fri,  6 Dec 2024 15:33:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ri9X6VHM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB6CA20FA95
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 15:33:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733499200; cv=none; b=MtWH0LQcNM6diuswM1YNUVRPeA6sI6sMAKZYFpa2zcm35kUsB76qGI8ypgdcSsfEk6RDoTaUyIGnlePreJwII8Qj7yceuAqhPXHYPGyuamdU0j4EVuSq1gttPoIZKbkwRhPBYDWC7nCsZb2WrPloads0Ydrmz7z2nt9u0YhuS7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733499200; c=relaxed/simple;
	bh=59+3c8ADDgXHQpxcM1MurA1UnTBLR3Nt2NQKVHksIFo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QlAU+osPrxp+H11OQuP1Iz7tZLaYOT9TAYm7BtyWZT0PCHF1SBWzKQY1di+xmmgd5Wk/7/JrikXQYqk73pUUfRr6GMJ421p3ehb5RYxnwjEqBbVMVeBP9igszGmqp6Bloj3x4y9FAtIa7nNRz4AMnWUMyV9gbUqhO9ZS6OVyzQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ri9X6VHM; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-385d851e7c3so120968f8f.3
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 07:33:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733499196; x=1734103996; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UhfBszLGLmYRbjyJH0+N5UbBCo7HBu2QFcO5VUZQNiA=;
        b=Ri9X6VHM8AjbW4Yufq0VJrpj6GNB+qWojuwYs5kGChgtePAXnwEkEsRUY5Mn/SAh7Q
         bZ/ZJvU4mIGTLRRgaHrb1h1pJ2qvHlpxExG6kigpSK5+8CEfsPIL6W0JpDydaWOl44ZM
         EnpnCWkjDiQbz8+Z6BjaCbKDhEkrJkbuoFQrA7KrqBecZxRUbPa9nzusLhi9pNjqE36r
         VzoolEQamNNfpUPpWuLRX36ESwwiujqaHYcf0pCmlgCH8VRXSE+DBusM/j5QS3z6Gs+g
         1cXKGwJxxOwc7l7OXr25ISYb+GE+aTXJJJgI3EfTNRfN1i404Tu2CBN4pH0h8Rb+8g09
         QdcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733499196; x=1734103996;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UhfBszLGLmYRbjyJH0+N5UbBCo7HBu2QFcO5VUZQNiA=;
        b=RU/hO2hFuFQ+/YM+9MSyc+R1+Gnw81yE589+5/MSCf1MGw6sRJProiORRKktwO6HLp
         E6HWCKsUBs2O3G6mwAhe6GvlrvYGqCBB4JWVTPTYUxVq1iCZ2FZPjv8u6hzqSB3w0bII
         Slki3yXaC+MKbrY/+w8I1nnKMjnS2VJvjc+D0rR5oSShViMYxRepuV5bNpv3eTZUHYBv
         ESvpUYtZeJfSQxnXCOOJUfPh5f5UN/aAoOHX/gT6bMY573b8Xw7MGddZpwccYXihDqq+
         ZToE9kyexQh6WGYVh542DyZOazoFsVy7Wtn77Q1qhslDL9kfAEVrcyAVkOEg4Gb0DpjW
         IIuw==
X-Forwarded-Encrypted: i=1; AJvYcCVuEkFdb/LB/w0xQINiSUi5aRIaTCQ79/SOqMhPtYbVoOrtmh+XFiARcxVb7BRuA5ePyCpBCgf1vb5m@vger.kernel.org
X-Gm-Message-State: AOJu0Yztg4VpVTvvSagEhQRULgoRYrlDyjStRsd4NNLS1/VCdIDx+OLE
	FXoEujUtqGOJwRgjgUaphtArf6o8v/VuS94c+VQhWpdHZEBVIO+ldGJJdrSXu+w=
X-Gm-Gg: ASbGncsBqVdKXYB1yLViXpRL0TQRN9Vb97I1gyKsagl1F+Hx55zbog8zQwy3qR2xHPB
	klOsibpyLWWHshLa7wM4WWPhcUWdYA6ea4v+dx99mi70jeumm8lCzGDnhXyxMUuCaZLyaVIIQ4o
	HRkOiHCtl4wj2us5PmAfXtW45G65eD7dO4Q91hhG1AhHCzluoeZwgG/4CGD7nIZiMG40IkakFsy
	ze3Bt0zkpgrhruvWxa5ZR4/Uc6Pp2hndE4KGDfsY9s2ZSjMoMn0q29f49e7TXcUbQ==
X-Google-Smtp-Source: AGHT+IEeeyirbH9lIydzw235ukCxeNUao8uYInLkz6PvOa+u5Yhzkrj8I05V2VGWeIPPxYeyRwCdtw==
X-Received: by 2002:a5d:5f4c:0:b0:385:f79d:21a2 with SMTP id ffacd0b85a97d-3862b3cdb54mr631964f8f.11.1733499196067;
        Fri, 06 Dec 2024 07:33:16 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434da113580sm61158035e9.29.2024.12.06.07.33.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 07:33:15 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 06 Dec 2024 16:32:39 +0100
Subject: [PATCH PATCH RFT 15/19] arm64: dts: qcom: sm6350: Fix ADSP memory
 length
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241206-dts-qcom-cdsp-mpss-base-address-v1-15-2f349e4d5a63@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1166;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=59+3c8ADDgXHQpxcM1MurA1UnTBLR3Nt2NQKVHksIFo=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnUxkaVPAaakS0pt9YRlGipjfVTOyTzQU1PehsA
 vv7rXCpCIyJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ1MZGgAKCRDBN2bmhouD
 13HlD/9M4rz1N4OaB+6w4mLYqYZvJw5YAkbpIXL+vWG0e9oj4Y+r+QqdQYcKaoZxcn7t7aVHBP/
 sJkux/3C1z2UZh1HE+FsE1fkbw0D6kCijMhhXtZvb3kkoiSII31YtO8EQPTzPjRglcrKpKgNmSX
 cUh9okf3SdrjcSyC9Q2WeCs+n5EEYiYvguYntPcSy0BH7e8Zvbd6p5oDhPu8qaE16ArBwtuAVI0
 E2zD72jUKXfh7tXgNJYuVpuSs5oMsFjTWV14BWrM2gUXHMxdf75kLVuVjYa7UFXL2w9jguvXhyo
 YQUNa0OAck9aflROFxjD/X/z9Lm1YYt5ZNvsPIzJmREgjLvNP6A/6pSnqbZi4YNraU90aDqcg6i
 z3NL0c0jiidneruiLwsYMZl96nniSyiis4WYpqf4E5VsHnnJtZaC2O3SF/IQDzItNHIueidCTA2
 /ANLYIMM6xdTjMypsjlJFNH7KcKHpoWF/T4BJwaMl7Vy/DFSFihCYTiY0XXm4PgA7JfLjWBd0xE
 wEO0URCRakOUjyh2AqNyuyGmGogTzGO3DtBiDPoHBLGAhO388tSM9HucorvqV1A8A6BHB88QEMH
 wFTJqMhV2VEchpIT3up2947hjNhWlElMerbJRNCSCh/1CU8SWQwozoEjCEMGuC2inaVSGtWM+ZN
 gkAlDucuyw/K30g==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

The address space in ADSP (Peripheral Authentication Service) remoteproc
node should point to the QDSP PUB address space (QDSP6...SS_PUB) which
has a length of 0x10000.

This should have no functional impact on Linux users, because PAS loader
does not use this address space at all.

Fixes: efc33c969f23 ("arm64: dts: qcom: sm6350: Add ADSP nodes")
Cc: <stable@vger.kernel.org>
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


