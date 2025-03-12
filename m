Return-Path: <devicetree+bounces-156897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 12284A5DCFF
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 13:45:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A5BB3189AFEA
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 12:46:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4C9324BBFA;
	Wed, 12 Mar 2025 12:45:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YDYHjuFk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3F9A2475E3
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 12:45:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741783505; cv=none; b=DgQcfD1/o5dlkj0Qnys9zzagXw9ckaqIrhu1twMRYqT3mei91A30eWA/qaWrF485XxYvuqKFYJf8/vdjTYehCpK+Y5gAwfwUswSTB9YrEN+XAvQWjm2nWIuxCQfv5xHgTUJjf43Cc6LKHL2HSyAhHFU7zQk0fUOC1kqKfq627Fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741783505; c=relaxed/simple;
	bh=82c5+SyAZDevUaqnLogVkBDbEjnSrdtRkFE66GIzvNY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BGJI5T71rGNEuM8W/O2mchgnDYrq9cHAMTdTBe86qdvlaYsIjmRbp+UAFO6tdzfUEFWMIYRfrNE0TShhXUGNofGVYB/Pg+RFAYv7KblqacHm9liSIHl8B2081Tx4g8PblCGstSImmlH+nQOoLKSwqL9i9Eoc39zxgGqQy4sqZnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YDYHjuFk; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-abc28af1ba4so95670266b.1
        for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 05:45:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741783502; x=1742388302; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KYlqU1txmzU2LkC3w1bOOIfdONbUEH9m73X+JeRSxFo=;
        b=YDYHjuFkSjwZ+JgV3V5R8b99XiJ0WcHxXw2kouP5lZf63TcdadFw4VW2c4Zmqd+FKi
         PGeHgWuhaW0wJRj9flxitNhnNuVaFpERndngWsf83C41IEe3PhcHDwnbSgfc0HIghEOf
         XS8U1aa9OPfEyEZHxvUD945JGPKlA6Lz2ajq9t36OD5usIXwGrfUbQRbQ6/CqF/nRyh9
         fdlsGq69RvZkGd8FbxZ/sKwccol7oGmsdi1ZtyQZXdeJ4yJialk4HLS1atoEbqebOkqd
         VB/1Orcj72oVAL7huoPA6nlbHOYp6e1BIaDxFExdfui6AKjQ4+x6Mq/d77lfBH1cOG94
         lOrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741783502; x=1742388302;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KYlqU1txmzU2LkC3w1bOOIfdONbUEH9m73X+JeRSxFo=;
        b=BgD/OFHks6lZmrAXQTEArGq6xJvXw5ANLAfZapX06d1UOQu379RIE9YMtRR+1VkYuH
         M1FOlNRdSHvKEym8GgJniZ7r4p+f8kQa5pdtleqXWASAfesA9Pq5219nfWwdZXqE6q7D
         B9H80dI8nc2OQLACVfF46P198nd+5nZVQMqjC2H5nk5H3DGlYi3BlmwaTWGRP3p69yz2
         z4o20tkVxxj4qxJv5cKIaAebvZfo9SCfGND17m8WPXnlBCzrhAr2dXaHoxT1M8MgwstB
         hzcIeMY3OfDmsnSyMJL/nHM91W7ArcU75SmuwVEpktEJ8T4vGUp6nP7W3z75PUJNlThY
         bx/g==
X-Forwarded-Encrypted: i=1; AJvYcCX+RIU7qa3a9mu+h21R1yg0Y19SptFun6O2qdG2PsiDe2GUuyCJ6tUqYVrZpc6aG1B4XBz5ap236yHf@vger.kernel.org
X-Gm-Message-State: AOJu0Yxb179tREZnoOKTREZp7atUEwcwFBHigJ5aBmlIo+9X+IKC049l
	AtQZa0qCj8WIm1UsAYWHVQ69rZLfgI6UA9D7RQOaAiwsrZyjCFzuy42zAU25Uzq++VSOYpdiGQc
	H
X-Gm-Gg: ASbGncu4AjrZ44+JDCZGcxScRre36/tp7AIRBDiF7QCrwj5VHTjHOrXcrc5zNJaadyw
	tJuXJqLUEkon3nwovcESd7y/bZ//8Vwa8DQTmUlD8PA9b61BZH5+uVMycsy8Xt39/rtrLmZKASF
	SI8JrJVTfRtQe1ifJGLNJIkykHhvBfq0r58bEkKe/FoL/37Vsm8Yvlo1NiC8NoDDDHZKj7RffBr
	tvNrWVJcEmL03Sg7QYpzqTPBRp2G216U/fg/mEjBu+vz8Y7CNOoTbe0BwdUKydi9SFDAfybaLVn
	E0CNT56AU/ntPN9rgaWyrf4MlA+uXe4JiDSWNMJAGQUjFZa1qw6RXyin9HY=
X-Google-Smtp-Source: AGHT+IGcaRg8XSY/1TLbiB056APc4X57IDork3OyEbHMaeffRDdtOUMpukqBcgvuQFUeqSZ8CINpLg==
X-Received: by 2002:a17:907:9285:b0:abf:733f:5c30 with SMTP id a640c23a62f3a-ac2b9c75e39mr378465866b.3.1741783501852;
        Wed, 12 Mar 2025 05:45:01 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac287653d1esm628955866b.125.2025.03.12.05.45.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Mar 2025 05:45:01 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 12 Mar 2025 13:44:48 +0100
Subject: [PATCH v3 4/4] arm64: dts: qcom: sm8750-qrd: Enable ADSP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250312-sm8750-audio-v3-4-40fbb3e53f95@linaro.org>
References: <20250312-sm8750-audio-v3-0-40fbb3e53f95@linaro.org>
In-Reply-To: <20250312-sm8750-audio-v3-0-40fbb3e53f95@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Melody Olvera <quic_molvera@quicinc.com>, 
 Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=938;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=82c5+SyAZDevUaqnLogVkBDbEjnSrdtRkFE66GIzvNY=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBn0YHFvZTeuxOp9pzzsoKnBqdNYx00ht57uBVAF
 azWGRBvmj6JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ9GBxQAKCRDBN2bmhouD
 1/6RD/wJaCUWqSjQeaVChyYTG7xw6OGieftJNTsyFBXKMwtNQgLxtB/8VY6RWsFXIbS2DHqihf1
 Dhtl6mvMpwQoZBQcu4WOjSfAjGpibxkrQkYveq+Ynsi/wo161pfqZhUhnZR/pBDOXWNQ1fywS5A
 OcvXkm5RjSfAnR4V0cu/Y6IT6XH+BsiIWapS7AvmQ64SOT5TEh45Qtgwb8V3FI4E4nFfdotkOrE
 fUhTTqCOCpAuYX6kNJE8ESaHWxEmPGeATpcVJ276n7jiJb2Qdol/G8Wvm41E3b372WL0LWHncK8
 E7WrbDdNr7PxhliocC/bSEV1tfoC8TI9x3mDO9N4Z2bjDfyMEq45kqbZk5C847NRhx2VvLmcKM5
 GpeXmR/1wJXatVA5B7xn9E1VOttzhbUUl+xHcuOWUZc2zNQakaofeUzPGyyAw7EU9aJgGY+sbLf
 S56XMD+R6XKeZ39CjEYfukpeUfhYLN1CMCMUsrXbSTZ1bwXallDjATVX1+wD+rEoeX770BqOVL5
 6G979tFoVshns4+jSSLAxnI0jjPURP8Sm6tlXhHGisvBlMN6IELt9uLBfK1JHWYUW6Jujm8qlFS
 hSRPBXQlcSKNC5vLHu7AS0jUWhsRWSJUZrYuzUi3aguVmxcq+8OQJzH9sqVOUqO8hPn6vWNhaqa
 GAHjCjTvrabTQqg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Enable ADSP on QRD8750 board.

Reviewed-by: Melody Olvera <quic_molvera@quicinc.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

Firmware release will follow up later.
---
 arch/arm64/boot/dts/qcom/sm8750-qrd.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
index f77efab0aef9bab751a947173bcdcc27df7295a8..341774bb042ff88af8acf49c2f0ef14f9994dfc9 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
@@ -782,6 +782,13 @@ &qupv3_1 {
 	status = "okay";
 };
 
+&remoteproc_adsp {
+	firmware-name = "qcom/sm8750/adsp.mbn",
+			"qcom/sm8750/adsp_dtb.mbn";
+
+	status = "okay";
+};
+
 &tlmm {
 	/* reserved for secure world */
 	gpio-reserved-ranges = <36 4>, <74 1>;

-- 
2.43.0


