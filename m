Return-Path: <devicetree+bounces-85791-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2492C93169D
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 16:24:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D20A5282C1E
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 14:24:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5382818EA6D;
	Mon, 15 Jul 2024 14:24:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RoFgjCmw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8055D18E77F
	for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 14:24:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721053446; cv=none; b=NjClZ56zPVCtAFUg/oRddprf2INz4IVC6TJnJAWd4sYTu3ffFs/Fe+tHvuto8zcIgCojkY1c815SO/XO0pdYpYGwcveuyNFlvuZJU0/bRjTRo1xMLORfLgOKlZDsF8IGWqRuFlHkiWwHtqD/hf8Ge8AzclTcgYe3yL8fFDqESD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721053446; c=relaxed/simple;
	bh=Rjam2vQWsxCraW0wNegKMsFMG+0/dxFdT4OKFWEudw0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=mnk2saf0J+sz9HYuIUcsDgBC5GZONbAPZ6F+iCB2VZmSmV89MNzT1SLYf4pjL2pZjKDgngqv3/oR782F6GU5MZLGBnksUwKScWz4nUDK+pXLeHwaOXxfckkjCSNVsxMBxV0ag5IY0UYMAyqFGY1ZyfA6z/B5WqsaKoZ/aiXIxWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RoFgjCmw; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-52e9f863c46so4793345e87.1
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 07:24:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721053443; x=1721658243; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RijGCxBpU/20eTgX8w5EWz2Np+mE3ZehIOkNrUlzOf8=;
        b=RoFgjCmwShqmxMva1ywmaAlnfO64R2OWquCvowesqVSFRtvghbUUF7swpSWUGxML5w
         zcLd2CXd9IwWx6m7pGI92eilf6/c7gdbjGfphFlitYVl/HLOxwIMKZuxn2Yuu2nbRm/D
         sgUIjVqVMYOhSHDoP5gbltXrwludcltZNieu6mCRaAzMbp/vi/LVM0Z881msF417dDJx
         /H8FVM3PrzeTjrbXUcAQ1LnqW2lZ7/bHk2LcNdxqFMUBmurg1GVsxQSXmIK1GHRZ2fOe
         A/RUb3bpkVzwxwPIWcU8pFQr1rxw1kc7zj7B0ZEdcAYnOybWAxEcmJEtcmgnnIYYjgz9
         eIAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721053443; x=1721658243;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RijGCxBpU/20eTgX8w5EWz2Np+mE3ZehIOkNrUlzOf8=;
        b=sKO6BaNp1jOXTMRqxuRwSk7SFVKXdrME/7YoYjoqbCKO8Lqxk8S+Jlhjm2+wXKMa1q
         RSMmus3hoLYTbmo4FH4GOKISponVIyuPfGRkon8xIIMLjURGnb/od18PoJau4BpNridv
         aMeHVVcT7cTZRYVil8uHkanUazvEHpl1Iz2iZSgdJ7K6uH8czSKfVJLMOB+yL4eyNdbQ
         +/f3ITpKsyJQ6g6uEnP3mWSOVwzAT48xzTSB8P/wROmtko8bKNj40Xf4HokIp092fTXK
         grjeM31uoFv8yqM+ZEkaDiGFv905bJwt3hL7uThht5J03s3OI+JEmLyTdMeJdBwci1cA
         wDQQ==
X-Forwarded-Encrypted: i=1; AJvYcCUYQxDPG+QgrPRZn+vHdgSxSO6QuVrPpKLKkpScpQvsINV/AjPhk3sXJCneo6zc5Gq/bozI/vDImcZFDhkXpIh9eMsP4IgXX/MTKQ==
X-Gm-Message-State: AOJu0Yx2VNaKcKAaFx9k3EdUUTuFA1iIJgykGexmnGweTIMYeBnrQMxY
	gBmCFb7ze/bL/IbDzkARNqZcJdXYMEXnvedWIFCnQSPshvS1ssZckb4XZOk73uA=
X-Google-Smtp-Source: AGHT+IFchQkPEHwndbUwAL9gdsBfPbmzhgk5e7MFzHKayuR6nJ+LPNq8AzDb9tlnu0Bxr7rwCi4rUg==
X-Received: by 2002:a05:6512:318a:b0:52e:7444:162e with SMTP id 2adb3069b0e04-52eb99d1527mr15119472e87.55.1721053441686;
        Mon, 15 Jul 2024 07:24:01 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ed25391f5sm866142e87.253.2024.07.15.07.24.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 07:24:01 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 15 Jul 2024 17:23:58 +0300
Subject: [PATCH] arm64: dts: qcom: disable GPU on x1e80100 by default
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240715-x1e8-zap-name-v1-1-b66df09d0b65@linaro.org>
X-B4-Tracking: v=1; b=H4sIAP0wlWYC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDc0NT3QrDVAvdqsQC3bzE3FRd8yTjZHNLI2MTEwNDJaCegqLUtMwKsHn
 RsbW1AAmuerdfAAAA
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1379;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=Rjam2vQWsxCraW0wNegKMsFMG+0/dxFdT4OKFWEudw0=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmlTEAUfju/mfOxtRQkU7cvELo8Kj95k8DuHSyV
 gCdP3xPsmyJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZpUxAAAKCRCLPIo+Aiko
 1ZAXB/kBxfqSwjWu4p5hbny9N2u17MLJHUiy+dz3txgMXiyT2K3g2fN8tiL+oZQ1P4Atn0QXP6V
 8k/aA7lx9bwePWEinWa3qllYu7HJ5IqeDYND+IjfR2qhuJgSgqJWNdlD8Bqtjx0c34O1o3M6NsR
 3laP3jklCJpETf6EY4DVpCoNlTeMjSCjwUKv6driuCi+X+xPtRaJ5fSalmm9qPduH4YkamPiZaB
 tkgDH7Ym0lHeTDQ3XScujGjGN0xUUjJOs0ySPWik0ecnjhVbZWjdwtttaxUso84MMJcZf5rpShj
 bFhlkS0h8a0jLVVq7IcdI+jC8j/GqBfG06sLNFOTXNWC1cho
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The GPU on X1E80100 requires ZAP 'shader' file to be useful. Since the
file is signed by the OEM keys and might be not available by default,
disable the GPU node and drop the firmware name from the x1e80100.dtsi
file. Devices not being fused to use OEM keys can specify generic
location at `qcom/x1e80100/gen70500_zap.mbn` while enabling the GPU.

Fixes: 721e38301b79 ("arm64: dts: qcom: x1e80100: Add gpu support")
Cc: Akhil P Oommen <quic_akhilpo@quicinc.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 7bca5fcd7d52..8df90d01eba8 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -3155,9 +3155,10 @@ gpu: gpu@3d00000 {
 			interconnects = <&gem_noc MASTER_GFX3D 0 &mc_virt SLAVE_EBI1 0>;
 			interconnect-names = "gfx-mem";
 
+			status = "disabled";
+
 			zap-shader {
 				memory-region = <&gpu_microcode_mem>;
-				firmware-name = "qcom/gen70500_zap.mbn";
 			};
 
 			gpu_opp_table: opp-table {

---
base-commit: 3fe121b622825ff8cc995a1e6b026181c48188db
change-id: 20240715-x1e8-zap-name-7b3c79234401

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


