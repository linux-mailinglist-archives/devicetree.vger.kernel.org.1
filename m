Return-Path: <devicetree+bounces-63605-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9F38B58EE
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 14:46:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3C1CC1F25337
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 12:46:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A954B7D41B;
	Mon, 29 Apr 2024 12:43:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zQYvs2zy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02CD57C0A6
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 12:43:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714394638; cv=none; b=GDK9A3F2kdsCrZkvD2ZjQ2DbBTU/l3rH3HvT0uJgVTSkQshOAkW7z3waLZ1LLGDvtrOPuDtl/tQPZa8INl3nojS6LeZVtTTrVP9PPDUvLSUEJZw0v9tNqYPLyU7l5lPZTkvsr8HvEC+umtkSKHc0UovRsCe78JukPzrJ200EJ5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714394638; c=relaxed/simple;
	bh=Zxc4rW527dKenl2Mbly1X5nJqEt90f+a5Ld5zvIb4vQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TfhH0J542y4D9Odn+sSUfSs3wTFjHI6fmwAl4OJwltdmoyYRYr8e3YAhiaJPAe4owl6bvyavwJAGsSEkOJPxLW0NVCdjpRqHReRBwXpRH2FPBrix1eGaZwYeznsuozLIdK2aJJnjaCsmh+2Lc/Smn5B8QjeZOPnKqseSQ/6BgoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zQYvs2zy; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-51967f75729so5140577e87.0
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 05:43:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714394635; x=1714999435; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5TzjAuvmddZvd7O/0VqMVZaXXIfiLHk7iuZZZQxk6yA=;
        b=zQYvs2zyA3B+kbtsnhhVQGAWD44aahJZT6fgeCpFdHvI8/T+Y010ZJ2Zx0fiuHzGIs
         boYwoq/SqXM0D14/SQIa8fFeaD9RcoYN9YrDPtPF3rVBA25/Xy0S1R4sbi0d5arHtwsY
         UAlCDwPJNlrD4Xb67lYKOyNkDZduiMbrFHUH8fOLu5MtfcIV3BTSL28sVClFsXP/a9N+
         WyDB72e96uatQ2vHwrbLaMkQaGU7sB7PlU77G+SaO20P5EkzudpRt9Fp0s+OHPHWj77w
         SuHN617eBTiVAApWcOG9RFpnuP4g9VnFrROcxVZdIEKl3A+CET98AeEXcWliTJUzsKbC
         W9mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714394635; x=1714999435;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5TzjAuvmddZvd7O/0VqMVZaXXIfiLHk7iuZZZQxk6yA=;
        b=i8kzFuI2cpJjPus4JAtw73o0768ImE1NfUx/snfpZkem3ps4Y7R/U3xpnGz1SQVAMd
         /hm5H0imzk4Xr9gPWLvVPfokugwhPzNLAC794MPRitocFh+15Zj63r/1xb4dGF7Lp2KV
         zYLXRoXMFyoKz2XmDz181aiPUJyLfmWH61OXiHWoFZAEjK6mszHqfYBYCwLtQKaGt0zO
         9NGI3X73a32Fvbeq/ImbuxbEP5zXPDZcuhC8n/o7sQhRyRBz8GeQaXoP8rYwDkCkBNCM
         Ev8xoGb1Z7AERpZ3i2/lBxpZ/A6n6vmjqQhgVwfLUurClJeykQfHBDmHH2yJjghSnJ+P
         tX8w==
X-Forwarded-Encrypted: i=1; AJvYcCVAKPgBApRir4hhA2Xi0NYMWCJ7bo48zJHqsRw3ucUMmtT1qLf7lemEO1u3ZkBL/hGFFnL4vCoMvVRIWppPmfssePQ1k+Q+6iZHOg==
X-Gm-Message-State: AOJu0Yz3sRhiVU9HkyHL638NhQNdXa2slDxPFJRqdpIcTd3YajGOa+cR
	Zx2XpCMSyvygOROBrbNgSaIwua1w1gO2vZormvH6Zc8xC8EIZy5lW+HGNWbFm4E=
X-Google-Smtp-Source: AGHT+IEdwyAHzs7xcJsghCo85/iFqaDFNwV/J1HNdGF0EYu0HLBfB7jEWrAYqM1SO7H56ilSMrbahQ==
X-Received: by 2002:ac2:4a73:0:b0:51a:b110:3214 with SMTP id q19-20020ac24a73000000b0051ab1103214mr5878301lfp.49.1714394635355;
        Mon, 29 Apr 2024 05:43:55 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h18-20020a0565123c9200b0051d94297380sm467538lfv.241.2024.04.29.05.43.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Apr 2024 05:43:55 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 29 Apr 2024 15:43:49 +0300
Subject: [PATCH 12/12] arm64: dts: qcom: x1e80100: drop wrong
 usb-role-switch properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240429-usb-link-dtsi-v1-12-87c341b55cdf@linaro.org>
References: <20240429-usb-link-dtsi-v1-0-87c341b55cdf@linaro.org>
In-Reply-To: <20240429-usb-link-dtsi-v1-0-87c341b55cdf@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1579;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=Zxc4rW527dKenl2Mbly1X5nJqEt90f+a5Ld5zvIb4vQ=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmL5X/bFJjVn7sjPOdNCH4QfmpkSI7MAalgUZXy
 Dj8oTEarPeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZi+V/wAKCRCLPIo+Aiko
 1a1TB/460MYnFM7+pfnU7+QJNXl5W8MgWVr1UKqJfZ6K7i53BEbxXKIgK6nIQGgXenGGL2EJeX5
 NajzCOFelfBGrx5oyCoQv2wWcUvQ2shkL+X4rmqeuSUF7xcfDf9MlwdPXRYDtionJ9l84c1Pxln
 VcVc/42FGzuiyZwstrqpzmvejBsV21tzPKwkSBIdpUWzE3mO/4vF+6oYeXKJXw/VrvtTyLd3Tpa
 dtlAj0aity5xHbQupBdq1fUkO/glridh/B3Mg//bqyIyQpC6KabJotFDXP6uaDuTLXD6doefVcv
 rHALFg2oWaRNAJI8eByrF7xpykia9nXFG1zwnZxKwuRtEoNw
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The usb-role-switch property doesn't make sense for the USB hosts which
are fixed to the host USB data mode. Delete usb-role-switch property
from these hosts.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 3 ---
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts | 3 ---
 2 files changed, 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
index c5c2895b37c7..7e4a13969d25 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
@@ -849,7 +849,6 @@ &usb_1_ss0 {
 
 &usb_1_ss0_dwc3 {
 	dr_mode = "host";
-	usb-role-switch;
 };
 
 &usb_1_ss1_hsphy {
@@ -871,7 +870,6 @@ &usb_1_ss1 {
 
 &usb_1_ss1_dwc3 {
 	dr_mode = "host";
-	usb-role-switch;
 };
 
 &usb_1_ss2_hsphy {
@@ -893,5 +891,4 @@ &usb_1_ss2 {
 
 &usb_1_ss2_dwc3 {
 	dr_mode = "host";
-	usb-role-switch;
 };
diff --git a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
index 2061fbe7b75a..1aebfa5f958d 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
@@ -545,7 +545,6 @@ &usb_1_ss0 {
 
 &usb_1_ss0_dwc3 {
 	dr_mode = "host";
-	usb-role-switch;
 };
 
 &usb_1_ss1_hsphy {
@@ -567,7 +566,6 @@ &usb_1_ss1 {
 
 &usb_1_ss1_dwc3 {
 	dr_mode = "host";
-	usb-role-switch;
 };
 
 &usb_1_ss2_hsphy {
@@ -589,5 +587,4 @@ &usb_1_ss2 {
 
 &usb_1_ss2_dwc3 {
 	dr_mode = "host";
-	usb-role-switch;
 };

-- 
2.39.2


