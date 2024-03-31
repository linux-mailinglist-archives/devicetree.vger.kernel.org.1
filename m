Return-Path: <devicetree+bounces-54877-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E27892E81
	for <lists+devicetree@lfdr.de>; Sun, 31 Mar 2024 05:49:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 137B52824A4
	for <lists+devicetree@lfdr.de>; Sun, 31 Mar 2024 03:49:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CAA115D1;
	Sun, 31 Mar 2024 03:49:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WhyFsoHb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47EFA8F5C
	for <devicetree@vger.kernel.org>; Sun, 31 Mar 2024 03:49:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711856943; cv=none; b=baRHpOerk/I4CVI2t1QOkWNiK4s4O0sW8hWwiYf9TyklAFh5HQEG8g8zOfAubrWH41mzpPPHi8ens+I+NKmhWQltafRX0St74ohnRfE7+ftQzrmNaMHxvMSrv+z7/g7Zw6c7CUs83fwxPxWvjVNX8NiF9h+wvk6/gka9WGeKKo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711856943; c=relaxed/simple;
	bh=+m4KcknPtPtiYtZonTjzGx6OYYK5R2lRlFqksVKoy6E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gJ4J9UVNTZ2q72FpJ/V0tBaocR0tr7j35okIVq0byLt15CXMHSRtXo9YtKP6IckBuuyw6zCzKJ9OEcK5R/qbH85aqsuUmg32N3AhoRz03O5YLY5/hE11EE66V4QfQxrUUYtX0WH5BSdr0aYf2AVxbe/sQoWvyoQyCoPmTJhlbjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WhyFsoHb; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-515a81928a1so4996532e87.3
        for <devicetree@vger.kernel.org>; Sat, 30 Mar 2024 20:49:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711856939; x=1712461739; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QA39XfS6kFKT4ejZVfv3YPVU/6vd+JV/fWoR8cy3Hug=;
        b=WhyFsoHbqDQ7/eCixkXhH4SQOq9Y0LERVTtGi6VPLyb6Aq5poUmKPuI9t//n+mFEDw
         wzFMONQm6miJnby0YglF25X843f0yrw5FHnO9Egtd/+VKdvE+0afIwU4CkJYmfcL0jGz
         P5PxgE3gsLPNMzpxjChk+QxxxNnc1H0L/3+lKVM25tciq8RnwxZ0g5YCjCOy7PUS7xfm
         aDz15HppcXvHYeNUhgfmgcBhWwHgb8eHq18BRAZDaIRyyLj/lcYXIfpBb8W1UIInRpTy
         7nD6p+zQy0R9KwuGP2LoXzwZ2coAPmssaoPbkc8C63TWgPjQ4f4bbdXniOYlK29YXXRE
         caag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711856939; x=1712461739;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QA39XfS6kFKT4ejZVfv3YPVU/6vd+JV/fWoR8cy3Hug=;
        b=ApuUWYM86QWNmuKZpdPxbCAdOX4ebtDnyshdUl/YoQPCy9fDfPRRDtvz/T3oWyw5w2
         /3vzSnD3vVm0reeybjkrRPmAbF+Q+WfSR1+zrOsHDab6wPQ+Y4jPX5XirJ6h12g3tetG
         2XA/uWWJr1qgbbGx/NGPmZdXiS1hDgytmqvsCus5tz4vb3TYx4kgNvFhyqKlcm0Q05aL
         YVARkcU8OhFR9ZzaLISogHt7n+QuHdiMbOOuez7gzZfg7q5yU0NobffJ2QUwROcjjutz
         IwcsXTs9UftJKuQrrSR53a2l3XvxYdFTV2wH0TXUo3Nn0Wyof7a5ZVlkX+H6Y6vl4o+m
         RUPg==
X-Forwarded-Encrypted: i=1; AJvYcCXcv6mBpnUfHtIwMJfrrT1a09A99XRgxUMc+8hJHGERTG/mnyNSg2qfHIIB7Gjf2owfWbtsQqGbnNUcDyasHKK2m8Lm7Y0mbDHEQw==
X-Gm-Message-State: AOJu0YyyfwoOLmPV445np/+NcAPLJC/TwbzqqesTmLqoy8/NIh99EgF8
	cmF4ncKsOhtUnJru8qfBkamM038KASE1V1HiLeGwXydmIcek7HBVX+IFZTi1Fhc=
X-Google-Smtp-Source: AGHT+IGSdefNnL48D3eBdlwTmsQLOovE8Wlg8ZbjSA1Gw+Fji1zWPLMzzWF++RtT1H6iclnJrX22RA==
X-Received: by 2002:a05:6512:3d8e:b0:516:a13c:da5b with SMTP id k14-20020a0565123d8e00b00516a13cda5bmr2170657lfv.65.1711856939344;
        Sat, 30 Mar 2024 20:48:59 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id k9-20020ac257c9000000b00515ce9f4a2bsm762980lfo.35.2024.03.30.20.48.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Mar 2024 20:48:58 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 31 Mar 2024 06:48:57 +0300
Subject: [PATCH v2 7/7] arm64: dts: qcom: sm8150-hdk: rename Type-C HS
 endpoints
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240331-typec-fix-sm8250-v2-7-857acb6bd88e@linaro.org>
References: <20240331-typec-fix-sm8250-v2-0-857acb6bd88e@linaro.org>
In-Reply-To: <20240331-typec-fix-sm8250-v2-0-857acb6bd88e@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=948;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=+m4KcknPtPtiYtZonTjzGx6OYYK5R2lRlFqksVKoy6E=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmCN0lpGsRcs88ocPowhrJ7L1MXDJ8Nd/yzqLpz
 YP0S3kelvGJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZgjdJQAKCRCLPIo+Aiko
 1WS1B/0UJJ+q6jp6DmjaNxuD67We0M8FXv0OqWuz3+dUqEbt5hh3+WWDEncBZWIIMg4qmwwBM+5
 WxRjipNxGZ8SFqH3Ldmt1d+zW4NVQkKrGdLVtcft7KXGdGPR7Sl0HQoBI2AUXUT0GdCJZfCh7ly
 1ZPOBYAIUQ34GuRpzREZiZp/xdwNDXQ8CUDKUR2Fq7d4t2ilOpaFtEKhDnDRxGav4e2NQ3pveHc
 AWcQoZRvP1uptTGZrTSgXOgcmyKsnGQCUek5Pkl7xlDyP/ZgpzNMQB36WqNRK8Oaasawoi/vf2s
 m21i0X6PdA7SJMDwic/ExivvKhs8dKOyWVFhT7J88rpTNdKg
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Follow other Qualcomm platforms and rename pm8150b_role_switch_in to
pm8150_hs_in. Corresponding port is described as HS port rather than
role switching.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150-hdk.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150-hdk.dts b/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
index de670b407ef1..857ccc5de085 100644
--- a/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
@@ -556,7 +556,7 @@ ports {
 
 			port@0 {
 				reg = <0>;
-				pm8150b_role_switch_in: endpoint {
+				pm8150b_hs_in: endpoint {
 					remote-endpoint = <&usb_1_dwc3_hs>;
 				};
 			};
@@ -703,7 +703,7 @@ &usb_1_dwc3 {
 };
 
 &usb_1_dwc3_hs {
-	remote-endpoint = <&pm8150b_role_switch_in>;
+	remote-endpoint = <&pm8150b_hs_in>;
 };
 
 &usb_1_dwc3_ss {

-- 
2.39.2


