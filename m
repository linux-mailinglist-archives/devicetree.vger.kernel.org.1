Return-Path: <devicetree+bounces-37806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D4C846472
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 00:30:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 32C71B2351B
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 23:30:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FC2A47F51;
	Thu,  1 Feb 2024 23:30:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HONf3GSl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5E5C47F47
	for <devicetree@vger.kernel.org>; Thu,  1 Feb 2024 23:30:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706830204; cv=none; b=NScJKo3ETAJsLSR78uG0fNenWeNO37OQjQuQ3WG8JaL5S4os4sEOtzJeVFFUhpUTbpTu2oa7lOYi1kPQLzWjLL3HgNKITUdmZXycLbJf/ap+B3SGnR44AhoOhSam2x6BWmiDQB8HX4ULrRF5Ew7g+FdcbycmPTblghdFIxqzVwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706830204; c=relaxed/simple;
	bh=2TJfqGHi00+5CKxG6QZ75dI/x7CtfwJIsax8vgnwxNs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=hc2kcn8DSCzZRj1pOGnpfnwlr+9oJBq+jTNte3AJ8q95/VkGkW4IVfHU2PA/2xpIIKu3tWI+vO0eQbi1PzxZOlcyYUkJ1nMuoaTI8iEG2t9Rh0sBpvd6c90dLLQBdYMUx7n0s6KWU24rjirHOqz41+BFUVKKow3UaLB1bdiRXG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HONf3GSl; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a2a17f3217aso216687766b.2
        for <devicetree@vger.kernel.org>; Thu, 01 Feb 2024 15:30:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706830201; x=1707435001; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FXMblYmC4slzOCLWs3RZINjmATRqfssIJI9Ew8tuxhw=;
        b=HONf3GSlImL3po74VlPPITZ/15uV9tiG1AInsrrNx9ctWNI96IFpxSwmylOId1fAoV
         Uvqf/yv5WsbayFA8RcQtqMKr6/RyDaHAcCeQAT/pJpLjmOwAN9jd3CO3QGy5ZFaq+yI7
         BSsb8SbTAlYpNQFoanMb0bHjrIlKh6DtcCj7W1gfeb5NOhjZJNawwgIH+iANdnlPKO1f
         uxLbUdcWut3QstZARyQPw7o8VxE2+7G5N6rJ5hjwsEs7wSpYFXZ2coBVpeIQmWdeoB5A
         C/dwnAjqNBel7pMBLyP+NiM/BHY7sMShsb4HJkSLZ8NA1Gr6jh7U/GEG9mOPbRfhvBn3
         9QGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706830201; x=1707435001;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FXMblYmC4slzOCLWs3RZINjmATRqfssIJI9Ew8tuxhw=;
        b=Dehuva3ijtzHYLJEVhdEiA/EJm88QMLOeGYkma5CHuQmQfPctDM2iIog+p5ceh90fl
         5nmzywwq7sNvM49YZ203euUYVjrTfK/Xs9vWysspJ0zlLd1XUqA8gng1lt1cPVydQmgq
         JBqtwdB5OPWZ00Hj97AUTbkbob5WWLVh5KZNmA9NX54QrPTSpQFLlcZ1bXyQEnC0AdQN
         n8bUGvoGCqTA93Apy3t/Zu/GsWIhmd6/QFn3oQSa3MFOvSTk8RTe/rONVgjDLujM5b1Y
         OdL6746g0cohAcStTZJhRgeEZIq3ThjwVZ1yPQzCGY4IP/jWcSOH+jg8oVZ5qqS2HPWd
         mmEg==
X-Gm-Message-State: AOJu0YwKDXH2eTtflO4fwCukXrA3hHDSQU5IN8fl4/N5ceARl8JMXRom
	BdTxIYFU/AODAQ8Q5u2Y1BGirMZijSQC1eKXYHZ3BRYn8PkUex9iUG9f1K0/2NQ=
X-Google-Smtp-Source: AGHT+IE89rlzUafniVKJfARK/V5pVdq65WMFyi8lOZgPeeysq2H22grqzfjW7XLLUlAXcUQiN1fKEA==
X-Received: by 2002:a17:906:27d6:b0:a31:117b:8b54 with SMTP id k22-20020a17090627d600b00a31117b8b54mr4527546ejc.15.1706830200983;
        Thu, 01 Feb 2024 15:30:00 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCXb9lKqDpG6XH8w6XN/ks3W3HfVaFxFFqHPmBmq+ZMwpGBsRgecwrP5Pz9ATr5mmg+lYKmS+skUipZD1hk1ipQQSz8Ycw0Ol8ZwAfPE1YEXcsK1ZT1Ad+437RMpgPhDAVa8pNqzanYVorKyeUeEXZC5mCNsV20FAmLhfTOkeudI+xfuZFMK1k6Mf7UHRUK8ETEUiXUGKSX4yon5AK7VaoRGcTIYaCbHQAxOJpbIgGfufuxnzdDGYyyLe/0YnT93IDyIppP0vEhgDqzoUE4MCpdXok3opI1MwNRl4ntBfysZOM3bNejv9TPIviU=
Received: from [10.167.154.1] (178235179129.dynamic-4-waw-k-1-3-0.vectranet.pl. [178.235.179.129])
        by smtp.gmail.com with ESMTPSA id gs15-20020a1709072d0f00b00a36f3250a9asm255100ejc.224.2024.02.01.15.29.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Feb 2024 15:30:00 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Fri, 02 Feb 2024 00:29:58 +0100
Subject: [PATCH] arm64: dts: qcom: sm6115: Fix missing interconnect-names
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240202-topic-6115_i2c-v1-1-ecfe06f5f2ef@linaro.org>
X-B4-Tracking: v=1; b=H4sIAHUpvGUC/x2NUQqDMBAFryL77YIJsVWvIqUkm21dkCiJLYJ4d
 xd/HsyDYQ4onIULDNUBmf9SZEkKpq6AJp++jBKVwTbWNTq4LasQPoxp32IJ6dmF2MXeOudBpeA
 LY8g+0aRa+s2znmvmj+x3ZXyd5wXIe1K0dQAAAA==
To: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1706830199; l=1227;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=2TJfqGHi00+5CKxG6QZ75dI/x7CtfwJIsax8vgnwxNs=;
 b=y8jedLXIup1y5cGsyvOZK7BNl21WKJQbm/EiYXVlnKmuyYBTiUeNflw7a33HpoY3T/PGV/37f
 jW8I76PWzrHA4AlS2Fk86OWC6KwWpO0PiO8Pav2c8YxtFTVNF84bIAd
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

Commit b3eaa47395b9 ("arm64: dts: qcom: sm6115: Hook up interconnects")
did indeed hook up interconnects, but apparently not interconnect-names
on I2C1, making it return -EINVAL due to an error getting icc paths..

Fix it!

Fixes: b3eaa47395b9 ("arm64: dts: qcom: sm6115: Hook up interconnects")
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index e71cbdef7784..eb93d1d57fb4 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -1305,6 +1305,9 @@ &clk_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
 						 &config_noc SLAVE_QUP_0 RPM_ALWAYS_TAG>,
 						<&system_noc MASTER_QUP_0 RPM_ALWAYS_TAG
 						 &bimc SLAVE_EBI_CH0 RPM_ALWAYS_TAG>;
+				interconnect-names = "qup-core",
+						     "qup-config",
+						     "qup-memory";
 				#address-cells = <1>;
 				#size-cells = <0>;
 				status = "disabled";

---
base-commit: 51b70ff55ed88edd19b080a524063446bcc34b62
change-id: 20240202-topic-6115_i2c-c78bd8d9244a

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>


