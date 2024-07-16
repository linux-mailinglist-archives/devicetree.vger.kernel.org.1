Return-Path: <devicetree+bounces-86060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2EF932431
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 12:35:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6D7371C22E19
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 10:35:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63FDE199224;
	Tue, 16 Jul 2024 10:35:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XzpAVsza"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 922861990D6
	for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 10:35:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721126114; cv=none; b=MSopryMSXxZ+VmIEYycPQ98rPtZNfsYR9sTvOvxaDHVp8vS/KIqb3wfVicrqz7Z5JYUkhwDalMl39xUFko3R93hE4+RB/DPyE/o/3xH0PNxP9P+hRhdgfbj8LAkQPQddxlkh782J2RktMQymc43J8SQhW6LnWHXmeNOWKR/vh4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721126114; c=relaxed/simple;
	bh=bfCH8and0eCwiNx1UPmuC/ofW1D0oXAEWmEsWNK2XYU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=P4Fyp6SfzOACrBsGlUCnjA+MoHXjNGEbABlBbibIFie1s2t5qpNCr9wh1og+MoYWUPsQU6CserWp3gjSOPWkR7qEqnV1HUsKFoatEDKx9O00hQzgwfeFCnW/LKvKHHaklu7WZDd2WaLmwwSC+/9rNvuL1SQ1tE1J4O9XNFBuWcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XzpAVsza; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-52ea5dc3c66so8610666e87.3
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 03:35:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721126110; x=1721730910; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=glaL1NwucAvvOF+fsdv/caKhQoNYoSfHGDOwMp1a1Rs=;
        b=XzpAVszapSb4H1kUr7mUK3fSUYlzp3cixW1Lw3V2rZv0Hx44o4Xa9ei1isppVGVluR
         PxwsrG5vr1g7Z4IzA8SAIQGfZ7jGez1vYuUg4ZPTVXDhG8G1AgxS3lU6alRKvQ0DRuep
         ngUGxrlvbEhMMNJIu8W19vHUaTG6rxK63QSxpz4fp3iYC46i24cggWdvnka1uo1IprIa
         ovY2uscJoS8d6rIinu2niJJ3A3AgFLvSRtyK0F89cxXQ6WEocIMX2ZJOoDHiB8ZUnfAH
         WTSaCVRrH/2tMtjgcWANRFW1nKnTrzJUQrclsN7A2FjFpXfGhl8z+XgrKCY0W8Ma/RAU
         TrgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721126110; x=1721730910;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=glaL1NwucAvvOF+fsdv/caKhQoNYoSfHGDOwMp1a1Rs=;
        b=UrbfviC9kdrRT1v3zzl79oGkc3KjM7v0gaId/YyeqvYoYwS69gWLAx6j/OtsFG4ke8
         1KuamDCxp2dihl9MTFcKy9Ssi6FAhACNjidhGspWV4s214rjKUH/Ke62+Fk3WmJo73N9
         G2/Z0HpCCS4xjeCyN1zz8AkWKv8/i0NAu1MA0WFm1uQEvcnhMnh9qEqBuipC4kdAV1n0
         edWgRejjTOxO8wOQONwoGLfwkHvHQziPJUvKiERKePpHez/ug5tarVqTlMb9CYbydXhU
         KlND3m5rGVqdeY4c385gLbJdnaArn9GwqktRfE+A0PuCGQ7di7HCixA5/xqGnJvkvr2J
         72Gw==
X-Forwarded-Encrypted: i=1; AJvYcCUzhrzEXv3RoIRvBT9kfCFC+fX6R7lPaQihPImb6JHwvxXga6PINyryjbljc81frLwJencX9g+hUAEMi1wjV2LpTa9mKW/HRX9r7g==
X-Gm-Message-State: AOJu0YzvKJ9XZCXtdwDlmQpTK5IGBB7TFy6GTia5nHVVBt5waii70Quu
	9S7PhWBTeSKFA08Q6Ml0aHBcWiJpq4LfVP84clcooI/1E+GEz3ISK4+550ENtZ0=
X-Google-Smtp-Source: AGHT+IF/FYTXOKFpO/Y/dd8V/daSVJZBtL/wBmD7Ccmrac1MynmYXdqAUgFGPZ4mHCUKx38XS2OJbw==
X-Received: by 2002:a05:6512:3e0d:b0:52e:936e:a237 with SMTP id 2adb3069b0e04-52edef1e994mr1301018e87.16.1721126110428;
        Tue, 16 Jul 2024 03:35:10 -0700 (PDT)
Received: from [192.168.105.194] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a79bc5b7eb4sm294039766b.60.2024.07.16.03.35.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jul 2024 03:35:10 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Tue, 16 Jul 2024 12:35:04 +0200
Subject: [PATCH 2/2] arm64: dts: qcom: x1e80100: Update C4/C5
 residency/exit numbers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240716-topic-h_bits-v1-2-f6c5d3ff982c@linaro.org>
References: <20240716-topic-h_bits-v1-0-f6c5d3ff982c@linaro.org>
In-Reply-To: <20240716-topic-h_bits-v1-0-f6c5d3ff982c@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Akhil P Oommen <quic_akhilpo@quicinc.com>, 
 Sibi Sankar <quic_sibis@quicinc.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, Abel Vesa <abel.vesa@linaro.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1721126104; l=1137;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=bfCH8and0eCwiNx1UPmuC/ofW1D0oXAEWmEsWNK2XYU=;
 b=seaZkneu+YvqlDp0QXFYgUyISOmkiDpU6GX4/CSMyUiwyVBHJ9wxhy5YPcWiNJApmdUUSrpuW
 uYpgXySxt7LAzZXrkIdcLQOBNOdDCa+5uIkJwpJ2rnVEUu4gUlldZ6E
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

Update the numbers based on the information found in the DSDT.

Fixes: af16b00578a7 ("arm64: dts: qcom: Add base X1E80100 dtsi and the QCP dts")
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 47bb26a66b2e..120bc418c444 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -278,8 +278,8 @@ CLUSTER_C4: cpu-sleep-0 {
 				idle-state-name = "ret";
 				arm,psci-suspend-param = <0x00000004>;
 				entry-latency-us = <180>;
-				exit-latency-us = <320>;
-				min-residency-us = <1000>;
+				exit-latency-us = <500>;
+				min-residency-us = <600>;
 			};
 		};
 
@@ -298,7 +298,7 @@ CLUSTER_CL5: cluster-sleep-1 {
 				idle-state-name = "ret-pll-off";
 				arm,psci-suspend-param = <0x01000054>;
 				entry-latency-us = <2200>;
-				exit-latency-us = <2500>;
+				exit-latency-us = <4000>;
 				min-residency-us = <7000>;
 			};
 		};

-- 
2.45.2


