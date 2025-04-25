Return-Path: <devicetree+bounces-170842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B2AAA9C82E
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 13:54:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C86DC9A553E
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 11:53:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C44F24EAA3;
	Fri, 25 Apr 2025 11:53:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="bubWXRCY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5559D24A06D
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 11:53:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745582038; cv=none; b=gWVZ1OaMZRCarqk+GhqGEs78kj7deHH2yoy82dbLnev4xC/IyQsg8qpcFb8mjZ0mlpqVvnubdBTmqS+kKOtyY70FjlzGZQou7mdcCDLd1bFhrdu9CAVVmHM3ZWiZ+5MDT7Hvwe7MydMFCGwTxRwcZYnLUP2EZ9AqqS/SknHMtvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745582038; c=relaxed/simple;
	bh=IngzkbFYDjc7fzC8Ve0Clm88ktm5CuABxv1jFdJ+raM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uqcxsSBiV1qEv7XhwznqgDIjfCI9BGb4AtiSITpO0vFyY1/WFopEJMqwMjW+9R+2FsUsTsSDZ0ZA77piU/0VY289+saKuXvJo9wCaXFqArhrviDzzoNu0OkPX1wLXtcoIs5UxMPmyTozwmui1ZP9a66hD8vhDhRLXEaL4SQMQIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=bubWXRCY; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5e6c18e2c7dso4006761a12.3
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 04:53:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1745582034; x=1746186834; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PZlycJTtKna9Dc90PkCHXWdnUH/ryxREv5nieSE18Ic=;
        b=bubWXRCYVHS50nbRrpZ/PmbT1QKoHXekrFW2j3hBkq6NdTvATjRpT2uLbJ6a+mz6el
         eQtuwpABK11x/X5kOln81u0Kgtru0e7T5YWjeMJt0+PeCGQk9alUMnnCQRSn1voYKA9M
         waUZ9jHpHW7bY2fmRFmJPXobb1VeR5r8B3t7rVmMrihSHCi/T2kr4Xbigy4xyyTJ/ljf
         YeKdNC+7gbA2uXAjFMAeHckQJnGx8mK08u8vjFqVfgsuKApTojaAXIOS6x3Od749OWkh
         KRhJwTwQ+yNrLRX9LijcC1/61kpeemP1tzNXqOH/DU1TD/VPP69eiuyZk80WMlORetkD
         hPEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745582034; x=1746186834;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PZlycJTtKna9Dc90PkCHXWdnUH/ryxREv5nieSE18Ic=;
        b=PzlmR3al2efgvEmErOeQ6yXlspECSLJqs/vQD/YVhGWGXqajbpmpWoqqMboQRxWK/E
         p3q1/+J06XytS97pCi6EACiG2bUKS5qrL3lIPGktXFJV3oeBcrUaEBstEM8VQyZ4adr7
         q71UZ4foNUEbe6/5XR1sh8kgGNThb29vt8puhXVtuW/pw91lnLF04zPGVYfxDu1+u3dt
         urrwxS0jdQ7NRul5dNtomMQw4XbBB5YWCHVuWSctWZoeNrRLhG3U29PIh4UHC0YTOzig
         C+KBp6TCpUCbxzt8gtNUfmB3lDtl1e7/IdIGM0Przh2Hg8L360Jl1MlH8h1KYHmSXHm6
         GPiQ==
X-Forwarded-Encrypted: i=1; AJvYcCUL7jijYyj51SeY0/FYKcuihR1AQR4jEr1MujGaZNLszxO9zqK1oN8BSyOYFtvaOY8MOE7HLxXPhNmq@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+GtyDJhQ5X2kPXlg9kiGglRjaV9Hr3ykdudzWW75HV1l6SIiQ
	VAKt8HIkstR700LoEHYQkUFPe3Sy+tbei7lS7kjUu3kA/uy93JHejRbW/NCjnuY=
X-Gm-Gg: ASbGncvC040fnPnw/q1QMtmlT4gEMOovMUZf2Uc1W2EoEUCS5nycQ7LgdeFC2W2cnse
	WQEoyEB2oagEBeVBICVUADeRnOXtPwKxm09nCxsAZ2ZGmMra3zqKjwkBDT3e4a95+ssJfbMdUti
	I9a3BPM1mvaO6AayF3J9lWCM+gM8+gBGqSXX0a/dsOBH0zF4GrJ35PzEmZx8XZRd6Y0dHC5oqZc
	FEivLb0iwbxWLtGDXKqho3xBnXCl/c7KgFchx0CldY1cWovI0hgI2/NmVy02FH0fpG56ixq0kML
	RFF556+ZwTAkJkmjc1bHPZjs7HVz6KDGot08LZy2e2uO2kcbVw9WndfzHwz++N/HSFomOl7uczd
	F+j9bQGmDhJmYL/4fx+/AAkOKkQOQhioLQyvSoDQtv6ABI24xGlBxRiHF
X-Google-Smtp-Source: AGHT+IF+6VfkmfiBlwrXoh8cImg1rfKXlySdKmrFh1035IBp8Dn3xkJmmZNnuhY+ZvhM46jiLP1lhA==
X-Received: by 2002:a17:907:8693:b0:acb:b0f4:bc77 with SMTP id a640c23a62f3a-ace713efb5dmr193451466b.57.1745582034612;
        Fri, 25 Apr 2025 04:53:54 -0700 (PDT)
Received: from [100.64.0.4] (2a02-8388-6584-6400-d322-7350-96d2-429d.cable.dynamic.v6.surfer.at. [2a02:8388:6584:6400:d322:7350:96d2:429d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e41bc36sm126081566b.33.2025.04.25.04.53.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 04:53:54 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 25 Apr 2025 13:53:42 +0200
Subject: [PATCH 03/11] arm64: dts: qcom: msm8953: Use q6asm defines for reg
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250425-q6asmdai-defines-v1-3-28308e2ce7d4@fairphone.com>
References: <20250425-q6asmdai-defines-v1-0-28308e2ce7d4@fairphone.com>
In-Reply-To: <20250425-q6asmdai-defines-v1-0-28308e2ce7d4@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

Use the MSM_FRONTEND_DAI_MULTIMEDIA* defines to make the code more
readable. No functional change intended.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/msm8953.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8953.dtsi b/arch/arm64/boot/dts/qcom/msm8953.dtsi
index 4793a60fa946195d3220b6c44dec170d443f56db..28fef68f7348b7f59256ab1ec9370241612d254d 100644
--- a/arch/arm64/boot/dts/qcom/msm8953.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8953.dtsi
@@ -1933,19 +1933,19 @@ q6asmdai: dais {
 							#sound-dai-cells = <1>;
 
 							dai@0 {
-								reg = <0>;
+								reg = <MSM_FRONTEND_DAI_MULTIMEDIA1>;
 								direction = <Q6ASM_DAI_RX>;
 							};
 							dai@1 {
-								reg = <1>;
+								reg = <MSM_FRONTEND_DAI_MULTIMEDIA2>;
 								direction = <Q6ASM_DAI_TX>;
 							};
 							dai@2 {
-								reg = <2>;
+								reg = <MSM_FRONTEND_DAI_MULTIMEDIA3>;
 								direction = <Q6ASM_DAI_RX>;
 							};
 							dai@3 {
-								reg = <3>;
+								reg = <MSM_FRONTEND_DAI_MULTIMEDIA4>;
 								direction = <Q6ASM_DAI_RX>;
 								is-compress-dai;
 							};

-- 
2.49.0


