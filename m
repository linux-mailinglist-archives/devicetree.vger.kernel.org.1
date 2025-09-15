Return-Path: <devicetree+bounces-217336-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 55134B57598
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 12:08:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C74CC1AA0A92
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 10:08:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25A542FCC16;
	Mon, 15 Sep 2025 10:06:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hzF6fvmq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB5A02FC034
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 10:06:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757930799; cv=none; b=hpMQ46A+nMsvqmlcu7cT7q+Kl+9kROyWsJid0mhAa4ZTcdPjP57vEuN92bZ6XCflpnQrmD3RtPwAP+QlTPgpjUw+KPgwCd8STtIGJbOpfX/rEPjcCIMIFrp2iHp3XLDvFXPo/WpLdeJinH7F2tzifokX8DTGjGQ9MajL7z0Rf5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757930799; c=relaxed/simple;
	bh=hJIwkiz9sypHEiHD79ZpOaAj0rAaVF4u0ldF0tcXL3c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uY1mQSQlDsxAs6iZ8uBdmOggWu6HHAP2Uk3X/HVnLP1FScd/s/BwvHlAnmE6CNrr82kPMN7xG/Sl96/1jyQhztDlFBx0N6siAtb+2m7LG+HSYbxieOPz2F3tI07U7h1xXOJLI85nCubamBlZ9JoQ24aBSOaPkIqBr76TJIZ9d6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hzF6fvmq; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3ea7af25f8aso338902f8f.0
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 03:06:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757930795; x=1758535595; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eGHFxRjJDleNewjPVp65zuO30fhwOTH80zSHnSHmwac=;
        b=hzF6fvmq27vDWGU1sWwnEn0bqwSoD/YumqTGOuCIbGO6ieR9iAe9mOITX16KuAdyZJ
         S0pVS6WVzDm2dDoUJcJYyiAo+KLBYsRN4JsSnWuqrwDlOrh4CJzTBxPhSDK8xdOs6TcA
         6Pr3aMQnzd9fBbTJJShAN7NIvbQIDn+inR5Pjg5Jotl2o/EFsSilnKrmfHyhX2vqoyPl
         Jtlz0H7tKuBF4RcQruhXT3R7DRyeO5JAdlmwfSwGxC2BKjvXRhwb+Q2a8shblJ1uvKjC
         hjgB76HRqnphp1NxtRUW5MLO03gMDDcq6CAEGNupPrK/NGuZukJdirfmrkHzJhd1upke
         Fl4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757930795; x=1758535595;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eGHFxRjJDleNewjPVp65zuO30fhwOTH80zSHnSHmwac=;
        b=CbZU0VXOtQj5fABd+FF8/F77xpnudIDSxKXVXNJ6WYYlFgkAINGJJcqOqq5DLrf7CR
         ZpRl7cVOXwgqcQhxVHUznZuHv7NEr8uazA9v8eMTTAWLs4k+7bUCiB7jQ5e6NU7fYGp+
         ZBbaDvemEjkybHkF0Jjt7heP6xHY/GZvXcs9vLxRl2piDaQnN2+fbpYGW3lNa2nmI9aI
         pVs+CWOrrtRKtINqMg5wY0Nmnut5Kug5XUunybt+1QNcS1Xg2wvRlsmjhl6U9xTAd9zl
         w2UrriEU7RmxUjuKpvQWqwuCsEzpQVPMFFqqdi3AALVCEXMHQWfHPQg2caUcjvLtWkgn
         Spuw==
X-Forwarded-Encrypted: i=1; AJvYcCXF80dd5v7h8f2sYkqb0ovJ6XPBbf2I9Qj49+DH60CPSb6EdZDd4PpNTxGRxac1zO6vsUqnpTyZTFOV@vger.kernel.org
X-Gm-Message-State: AOJu0Yxo/SYy7pjOe7VQMAS4FqRM+6H4/zBIRFqLZkhUqaXD4LSfmiTP
	aUKHG89/uSCi4/X20gDYPAdKvmiBRDxprNgdQ0QZEx0Z1SeBBWCUfWebv55eJ231QPs=
X-Gm-Gg: ASbGncuQd7BVUEMb7CbDsa7PiRucg/EoUV5JogHtF/6sMNNb8XvIA24xxgnTmvsr0X8
	a4147NZerTKia3G3nwIqC0q9wnCGtuvdoHiadMCPu9krHOZxkg4cy3Z45hyJQjAsEmi4g5DbE0u
	sVbOiayWtfnxQwbsbPXIDeQCiB3IDCKFO4z2Tt2d0tdv4ovC3EyNZYm+eDC8w8g7JQ+zkD3ptdA
	t7bQYytO8vM24hlxtDqPayxWP79ms8PVCmTFbPb7PG6cFkHZlbI4L+x3dMFfeu8Jaj2WCh5x/4D
	WpkByMOrTWoufXkcEIE5dJEJCULYB21pOXuoye9Dng/P4Ob83CMhC5cWqQukOhw//kM480aXNS8
	0MKuRkBXAPfqP8/z+OkRtSz9EcTHgWbBITRU=
X-Google-Smtp-Source: AGHT+IElgrSVID5upnr61Jr9QDLifzP3jmV2135LUHdvrrOdgcUm13X1jm52Z1V6i5ZQyQaHDlAhTA==
X-Received: by 2002:a05:6000:1884:b0:3ea:9042:e69d with SMTP id ffacd0b85a97d-3ea9042ec43mr3268023f8f.17.1757930794918;
        Mon, 15 Sep 2025 03:06:34 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:41:eee1:5042:e713:2e9a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607cd4cdsm17209127f8f.37.2025.09.15.03.06.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 03:06:34 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Mon, 15 Sep 2025 12:06:19 +0200
Subject: [PATCH v2 8/9] arm64: dts: qcom: x1e80100-dell-latitude-7455:
 Enable IRIS
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250915-x1e-iris-dt-v2-8-1f928de08fd4@linaro.org>
References: <20250915-x1e-iris-dt-v2-0-1f928de08fd4@linaro.org>
In-Reply-To: <20250915-x1e-iris-dt-v2-0-1f928de08fd4@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>, 
 Vikash Garodia <vikash.garodia@oss.qualcomm.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Alexey Klimov <alexey.klimov@linaro.org>, 
 Anthony Ruhier <aruhier@mailbox.org>, 
 Stefan Schmidt <stefan.schmidt@linaro.org>
X-Mailer: b4 0.14.2

Enable IRIS to allow using the hardware-accelerated video codecs. The
firmware is not upstream in linux-firmware yet, so users need to copy it
from Windows to qcom/x1e80100/dell/latitude-7455/qcvss8380.mbn (just like
GPU/ADSP/CDSP firmware).

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-dell-latitude-7455.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-dell-latitude-7455.dts b/arch/arm64/boot/dts/qcom/x1e80100-dell-latitude-7455.dts
index ace2a905e4430d6cd1db59e9a9fb7441f7fe0aa9..32ad9679550efce1fda1182bd874d6a3c53d8f03 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-dell-latitude-7455.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-dell-latitude-7455.dts
@@ -38,6 +38,11 @@ touchscreen@9 {
 	};
 };
 
+&iris {
+	firmware-name = "qcom/x1e80100/dell/latitude-7455/qcvss8380.mbn";
+	status = "okay";
+};
+
 &remoteproc_adsp {
 	firmware-name = "qcom/x1e80100/dell/latitude-7455/qcadsp8380.mbn",
 			"qcom/x1e80100/dell/latitude-7455/adsp_dtbs.elf";

-- 
2.50.1


