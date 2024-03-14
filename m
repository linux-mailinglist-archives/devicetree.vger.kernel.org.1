Return-Path: <devicetree+bounces-50367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5277C87B629
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 02:43:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D32171F230E9
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 01:43:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35B855664;
	Thu, 14 Mar 2024 01:43:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jEVAuGmB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4204A08
	for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 01:42:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710380580; cv=none; b=fu+cuJ0t8kYm6kTAlKF4kC0ejESH3pDGqZnDRbWb3wnLSjznSixDVNi8qeQSWwDy05yXWg+1E4HqrS497sjKfcoBqRSxRfIPsWw+RkiwPsAk+rY6/fiGjFF+4wj9tJwFEBuIBpJcHbTz4cgsHGvuGsCJoKkdgg4u7ckCMCWBgeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710380580; c=relaxed/simple;
	bh=NCbRPyy/FdLlcqkBOIjAKKi3BV52LrCXLidMnDIC+Ho=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HByhSKdnKh8vs+7+5pNu4iDpr2X7jZZf/Fj/ZIa6P4axnp+fO3v9MGgQHVdryzpkkOgNjaBdVOzNJkiFg4I7RCKkE4eyb41vTaXzNgm/0je8pgzM/HoXv//ummwzJ7z1Y5V9uAZvPg2ll+OtOMsYQiUypGb/blG68VTCPFKxaRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jEVAuGmB; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-513a08f2263so609772e87.3
        for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 18:42:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710380576; x=1710985376; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6+9RWAYjA8ygVoq0ay6FEIeqqipzUA4ps1XV9ulpwdI=;
        b=jEVAuGmBfAot5iK07yN65Ckrr2sBu7gR5XtR/TzO1bKofmzC10vOZOyfSEXCd0giMn
         vvmNVW/mkPeZ9r97BCFeEVjOMbL+mjwa7hH9IIJX8f7a1QcmI+OphZwYemF5Gmxhdol3
         w6LVW1jLNpkEzyzyZn4L738y3j0Bx1hWuB3ASKKPwaTAL5sJrUYvbBB7hDNqmr8ZZIud
         NdvGjCtjeaxh52yElFhY/ZlCL6jE8JIYpBHMeAKKElRp1/fdOyZ1Opo0TXA+gq/cKFM4
         nL55j+DaThno6gOu7ew7QwgdHIg141HVPJ1cOkcIlnn89BTV7m52NUO1lfQTTZsa95zH
         uZfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710380576; x=1710985376;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6+9RWAYjA8ygVoq0ay6FEIeqqipzUA4ps1XV9ulpwdI=;
        b=MGkkShTj3aMh954GML1xgZJG79OisiAtAvL02tXG3cOcJFdIA9KaLTdt9V18Q0u02l
         uPW0gmKW4OoQMjUTUePISasC7GTjPPGku1JIzkD5t3h9DMUoMRYIn9hr40lnrFUygK8D
         p74uY2eaUT7x8H5z0WEP3zwALW9m6B7k6jRO8wr2yxASaRr7Qt2Nufmudf9J+CxPKTqt
         phwamZqu6GlNl503lyK3+07jqUoP4/dB/MMOGAXUBmGKtM8kjMPVL+6Epi9S0jS3JRhN
         y6sv4g+hBpw6vZSq+09yju/ZwarGv/1GbDsH/ag33m0g/hHjVnbTim6j9h46XUqqqcw6
         vNFA==
X-Forwarded-Encrypted: i=1; AJvYcCUet0AhvQAFbz0+ffcWmtqcXk0n4+EFWYX+pegkxo+UfMdyjGFxj4aNEpf45bA3eazat1kK3XPy58i1xiLju0vpucTYGarYMM4vew==
X-Gm-Message-State: AOJu0YxNaJL9auPH3CccQv15zUgudW3lhidhr6Ur5dgyNyg4TrhB9GSA
	BDuS/pYn3MgMp8xe6aF6wcYYB/HHbUX2nQ4ILyoSXd1VlZJX1plZU/v/UF8qWDg=
X-Google-Smtp-Source: AGHT+IHfPIKl9+LyGs+RoKuOHTMEOQx5iXaxQTEWL9DnBdP+b2+MoU9VFSdIC9jftTSrojmDzeR3Kw==
X-Received: by 2002:a05:6512:311a:b0:513:5b16:b469 with SMTP id n26-20020a056512311a00b005135b16b469mr150295lfb.23.1710380576548;
        Wed, 13 Mar 2024 18:42:56 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id u16-20020ac243d0000000b005131e4804f9sm66566lfl.190.2024.03.13.18.42.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Mar 2024 18:42:55 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 14 Mar 2024 03:42:49 +0200
Subject: [PATCH v2 2/2] arm64: dts: qcom: msm8916: drop dtbTool-specific
 compatibles
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240314-msm8916-drop-compats-v2-2-5a4b40f832d3@linaro.org>
References: <20240314-msm8916-drop-compats-v2-0-5a4b40f832d3@linaro.org>
In-Reply-To: <20240314-msm8916-drop-compats-v2-0-5a4b40f832d3@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Stephan Gerhold <stephan@gerhold.net>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1553;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=NCbRPyy/FdLlcqkBOIjAKKi3BV52LrCXLidMnDIC+Ho=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBl8lYd6yzv20vkzoNUyYd8P0SvL+2vV1J0fBKTK
 rB1M7RefvyJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZfJWHQAKCRCLPIo+Aiko
 1Z0rB/9hxtR5R65VKKQ+pt18d4VmejLCPeYIkrVvedUuXOo83lwluLQ2PfJWg9NnzogJZZnroQV
 /5bUBFN0IUAqCZY3f+is/nyJPuh2KiseHfNATfBSDshKgdzBjsyPBa3X4urBt/4Idq4smx7nUca
 2DrAiEt6dOHkSATXpF96yTB5CvSX090+and0RPuK6Lr87XiNCQeICxnZXTcSHWlfrugwvZwDIgK
 HJ69CrVye1lZQCF+F3yvLJ2THDB1e8J6zR7jyk3Rx1NQXEGYgexTV8t/eUoOHQfZVKcV+f+pMj2
 BunxouOcb7Tqgh9x5Mgo3utGwKjhCOk5aqOH8rHF4I9cmuOV
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Drop two board compatibles that were used by the skales dtbTool to index
device tree blobs. It was required to boot those devices with the
original bootloader, however all users should have switched to the
lk2nd bootloader by now.

Suggested-by: Stephan Gerhold <stephan@gerhold.net>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts | 2 +-
 arch/arm64/boot/dts/qcom/msm8916-mtp.dts             | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts b/arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts
index 3a3e794c022f..7f0c2c1b8a94 100644
--- a/arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts
+++ b/arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts
@@ -12,7 +12,7 @@
 
 / {
 	model = "Longcheer L8150";
-	compatible = "longcheer,l8150", "qcom,msm8916-v1-qrd/9-v1", "qcom,msm8916";
+	compatible = "longcheer,l8150", "qcom,msm8916";
 	chassis-type = "handset";
 
 	aliases {
diff --git a/arch/arm64/boot/dts/qcom/msm8916-mtp.dts b/arch/arm64/boot/dts/qcom/msm8916-mtp.dts
index ac527a3a0826..c11a845e91bb 100644
--- a/arch/arm64/boot/dts/qcom/msm8916-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/msm8916-mtp.dts
@@ -9,7 +9,7 @@
 
 / {
 	model = "Qualcomm Technologies, Inc. MSM 8916 MTP";
-	compatible = "qcom,msm8916-mtp", "qcom,msm8916-mtp/1", "qcom,msm8916";
+	compatible = "qcom,msm8916-mtp", "qcom,msm8916";
 	chassis-type = "handset";
 
 	aliases {

-- 
2.39.2


