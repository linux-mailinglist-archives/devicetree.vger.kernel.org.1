Return-Path: <devicetree+bounces-57009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D82A89B5F3
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 04:34:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5F1091C2109E
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 02:34:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1544EDF;
	Mon,  8 Apr 2024 02:34:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Tg7ICZWU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA2FE4C99
	for <devicetree@vger.kernel.org>; Mon,  8 Apr 2024 02:34:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712543648; cv=none; b=pPnYvh23/CYxf4Zfw7QcDiT4EMqDEtZtNsrI3Xrxa8ZtE5F59+nJHpj1erxpq7e9+XJFFcxlisPIqYj6zUkSDIFz0XhsMl7L4DDwDJsZJaYQWtnSNbIY6Pw0g5LtV7Wq7Gb1mF/0mxG3jmcmNFgBxqXHuur3Zpv0Sq97RNwxqS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712543648; c=relaxed/simple;
	bh=ACDX9UzrbGqFhCF5KLJs22fVKRsQhdGkigM5kxbDOXk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dLr2vk1c/yvue3YnrQecCWHJtaj1YckKWUy/f7dckq+27c4MSqp3W0TQyBxL6Lzyy70zZbb1VkmuGB4kt97YYvzWUr5ytFetR13HCRiLU6PrfI3nT85Moeu6UJ4XRukV+EynvqUcdnKrq72jw1GWhbw+3Mw4Uy099rYoKO9hDLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Tg7ICZWU; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2d895138ce6so2147031fa.0
        for <devicetree@vger.kernel.org>; Sun, 07 Apr 2024 19:34:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712543645; x=1713148445; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v8fT6Gbci0qUXzI+tVhQnGd6IaJYXtCzzGcVOEtNpI0=;
        b=Tg7ICZWU2qsBYXI2ZGbDGqADwlTx3/HkYSX9hMPHc2J5YJ4M1AwJp+OF2ZIXi0GcqI
         r5zWVeO/q+0byerIJjLbIpQ9DK6QQsxVwPWYlZOcX+pZxEk4178MUDTWI6hCMZn4GlYL
         XwGkHfTCSVB2Xp29OqJCnvhHbCdjFPruQjm4R1BWDhWbbpdh0GcH8lKGlUzlsxuHphU0
         qCK2YmhfQU8BDMBwnTGLdiPpix4O7mgSeE+Y7aLtWpK+P9ySINMnU8Q6fyVB6AHkqGIy
         K4c8+5TLSeOrgRPLPohGxqnJZDnyov557R1NbODJkAQGENkMosebolROePqLag/Wpoms
         8Z3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712543645; x=1713148445;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v8fT6Gbci0qUXzI+tVhQnGd6IaJYXtCzzGcVOEtNpI0=;
        b=ddDrjVRvBacM4NfS43kBi3JzgGnEJvvTsO9yQq+5q/Y/zQWEETKCB3QDTfdMZpdXa0
         l3hdwFRzyuyjftAX1dVDCpl6M/Cv2W/WEZqlExE+mWAbQhdgTkgGU0nGVuTqPljoMZtG
         yAFdMLFvFiwkOvrn82bg68YmQXUHFGL9KLMEw3vtGywXpu1aXykbEsEy7lE6ovteN0o1
         f48r3DZVKn37NiW/jBz7v5zBbTiXMKOHMXo7W1HZQ31qXF3iJhNQQbKt0J7f+wh9eiiU
         e/w8MZSz5/OXFsfBkRrzoXJ0cV/bD080HCDTa7xYSI+D4dTxmyzxIowIml4N8bad/Q9+
         23VQ==
X-Forwarded-Encrypted: i=1; AJvYcCWxLDdGuQzweo5nQ4kS5dO7x9BvG+dBWzmb2ClHyJlkJnQYmUB6SuOdb/rmXGOPXw2wmlFO4VQezX+0NPSlEcfgaG78PAzlne8ToA==
X-Gm-Message-State: AOJu0YxiO6xdgWNPTdVQwuV8SL1y8VW1A6okOf4I5dnEL79VAgeersm6
	G8/DiIu5U1GQwSqpFEzm9+OVpJZxaFU278Qouuf1DgjJ7U+1z7vrzAzhi5/OMZ8=
X-Google-Smtp-Source: AGHT+IHrI6SZm3Bbb2zoGlXcnWKoeuFaIjqWT66Hnqq3rMbOfHUiwqus07OJeF71R1qU8PyvWgO0wQ==
X-Received: by 2002:a05:6512:3e17:b0:516:c764:b3e7 with SMTP id i23-20020a0565123e1700b00516c764b3e7mr6222577lfv.9.1712543645120;
        Sun, 07 Apr 2024 19:34:05 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h5-20020a0565123c8500b00516d58590e1sm943673lfv.250.2024.04.07.19.34.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Apr 2024 19:34:04 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 08 Apr 2024 05:33:59 +0300
Subject: [PATCH 1/4] arm64: dts: qcom: sm8350-hdk: add USB-C orientation
 GPIO
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240408-hdk-orientation-gpios-v1-1-8064ba43e52a@linaro.org>
References: <20240408-hdk-orientation-gpios-v1-0-8064ba43e52a@linaro.org>
In-Reply-To: <20240408-hdk-orientation-gpios-v1-0-8064ba43e52a@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=788;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=ACDX9UzrbGqFhCF5KLJs22fVKRsQhdGkigM5kxbDOXk=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ5pw+OxprjlWa+8ZaEge5N+fsP/s3ePZk02Yrd88T3hV/
 KZx2cbyTkZjFgZGLgZZMUUWn4KWqTGbksM+7JhaDzOIlQlkCgMXpwBMJP0MB8Omj1KHud+I+e30
 EBGbJvN/fublv6pRnCsP8B1dulDIU6/dPPmV64/itbVM7LnLHpkfC1AUuNl+sHdNpBfnjAusjNu
 q9vzuvtcmK7SW/8Pqoj1fpI+wFu5YeGSa5uzbDJUldYWZHxw7ml71Zc4oK72pXLvaRm99b/iZGf
 nN/aat2mLG8S51CcqvRA40N6cwhgh+cGR43eS09JDeTZ6c+ILb2zOkZye5PmWaW8+0+o9zWYbNh
 rsmNcaWu0vmKBW1en4R66wK2OY6+2eoRTHH3T8KbJ0bfU4+cv/65OQNr7Z2hsmbPkm843Tdo8np
 qrpixocPpiuEGxW/sWpbFU3nW3FSeGLv6vJv7lE/dWSKAQ==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Define the USB-C orientation GPIO so that the USB-C port orientation is
known without having to resort to the altmode notifications.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350-hdk.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
index b43d264ed42b..4c25ab2f5670 100644
--- a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
@@ -42,6 +42,7 @@ pmic-glink {
 		compatible = "qcom,sm8350-pmic-glink", "qcom,pmic-glink";
 		#address-cells = <1>;
 		#size-cells = <0>;
+		orientation-gpios = <&tlmm 81 GPIO_ACTIVE_HIGH>;
 
 		connector@0 {
 			compatible = "usb-c-connector";

-- 
2.39.2


