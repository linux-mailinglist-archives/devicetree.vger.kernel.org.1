Return-Path: <devicetree+bounces-84962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E60B192E566
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 13:07:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A0C4C283ACC
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 11:07:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A39D815957E;
	Thu, 11 Jul 2024 11:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gzKPQJOh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E28AA158DD4
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 11:07:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720696041; cv=none; b=LwbA8FpNAEtEWgLSZp98ByTe3XT02IW7Tj/+loLPwvaicHSL6sqPjPY060m7jSrproYh3iyTN9gRKpUvw6tW7iuu9xDGARgUz7wEHG+EJj0bxunJP2utNi0E+FXEvH4IzANRAI8c4GSZx69iarLKdk4mYRg/Ffkt7vF+umK0HVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720696041; c=relaxed/simple;
	bh=wnWDB5nejne8Pd/cb6YS18Vh8Y2+qTrhoxUlqW4sty4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bCy5p65LI0qVlfj1zmoziCfWeld7LzqWkHoGxoac7HXUPN3Q8CyABt2FT/X4aeHHfWRbKwV4KIQJgahJV6n5bK0doSOiaw5wiFVQIxKzMMB9rim1kdzbMX9mxb1iepDB1So9tl/mHKjnQdwTvNDVbfBT+JP/dksGiyqUNlQKIJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gzKPQJOh; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-52e99060b41so767726e87.2
        for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 04:07:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720696038; x=1721300838; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qYQspj63P8cbNmxsmkFzZLYMMBvuBKUGyS24iSaOQ/0=;
        b=gzKPQJOhwWyTH5sM5CSMlLQurXralCs/dpAXjrpmJjwvfQFXA1RsVw9STGueczkQhM
         Z4h57pF7xg1c4h3DM3piKXM/c3+HSJJXQtnb+xe4tbuaCTlGwWma4oOOnD8rHy1oX90N
         5klG9u33O3veS7m/WaKnWL8vPEaNgv7WoibeIBZ6m08O1qG4L9yYGPTtXiD/WLfGfkxR
         dUT8RPZfdrHjkGnX5a8POM49sOz+dJpPkl/D+FUXKAw3EBaUxXdWKHRttOJ7xaEUrBT2
         rnDWwb4aS55Qkzzdzu5ipPXhHr3T5u2gZiIL3dQQNI5lcaZwDFZq5VvSQV3mnJdlVY3A
         w5dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720696038; x=1721300838;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qYQspj63P8cbNmxsmkFzZLYMMBvuBKUGyS24iSaOQ/0=;
        b=tE67bbuShyZTqHobzBeZBJFH5Ta46k8PM38sgLsgZI+XnDKI7U4bxZGx1xGwQQqpWm
         GFgfEUMw1iGA4lzaAgIrohS3vwzumkCOZXLLRhIVa5zNAojSAQqtknZQBX1zqyN0Wh1o
         ftSFMTgZ/TdEvHq54iIdeyIr0QhdQD5yfAw4p9qFBDQR3Wqx9WTKzA8asMwbF4S0p5Sh
         t/0oBGEZfWyXZXlC15LXdkwfigbj2yWbZyepFDBQ4fvvi8ccG1hgXaIh3uaqwidmWoJE
         JNFybauV/v4QSrbnU99FKX/y5Ia2pN0nMpzP8PMWNX/LvtGqS8y9LwNTCnO2b4Zgv63V
         Um7A==
X-Forwarded-Encrypted: i=1; AJvYcCVPThiTHjmyjwAigtpSIZGjIA/0ILQivIaSNWo2mHv0OlRaChMCUDafqsFyLpQyJbwHz6KUCCSpePJC5sO8EluZQqSyXzJirXwCHA==
X-Gm-Message-State: AOJu0YyQC6UzF9FyZf5DfxLYT8ckLDBmJheUMscIeCTNh1U1qleQyNod
	pRFDJiSQUY//tToZCApI3xe/sGNvSqF1OeMgvM6BDyRB1biQiluV5jvTIMdOyzM=
X-Google-Smtp-Source: AGHT+IEmiTexL9y2JU6kpSqK/FycmvWYPZBv93UvuVGYDXAgHhf7NjFAX/K7loJT0/eeCqfQQrujig==
X-Received: by 2002:a05:6512:5c4:b0:52c:dd0c:4c57 with SMTP id 2adb3069b0e04-52eb99954bdmr4009491e87.27.1720696037889;
        Thu, 11 Jul 2024 04:07:17 -0700 (PDT)
Received: from rayyan-pc.broadband ([2a0a:ef40:ee7:2401:197d:e048:a80f:bc44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4266f6e097bsm115686685e9.6.2024.07.11.04.07.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jul 2024 04:07:15 -0700 (PDT)
From: Rayyan Ansari <rayyan.ansari@linaro.org>
To: linux-arm-msm@vger.kernel.org
Cc: Rayyan Ansari <rayyan.ansari@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v2 1/5] ARM: dts: qcom: apq8064-pins: correct error in drive-strength property
Date: Thu, 11 Jul 2024 12:01:38 +0100
Message-ID: <20240711110545.31641-3-rayyan.ansari@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240711110545.31641-2-rayyan.ansari@linaro.org>
References: <20240711110545.31641-2-rayyan.ansari@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The "drive-strength" property was incorrectly spelt as "drive-strengh".
Correct this.

Signed-off-by: Rayyan Ansari <rayyan.ansari@linaro.org>
---
v1 -> v2: split from main apq8064 patch

 arch/arm/boot/dts/qcom/qcom-apq8064-pins.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064-pins.dtsi b/arch/arm/boot/dts/qcom/qcom-apq8064-pins.dtsi
index 7c545c50847b..107fc19f1331 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8064-pins.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-apq8064-pins.dtsi
@@ -11,19 +11,19 @@ pios {
 	sdcc1_pins: sdcc1-pin-active {
 		clk {
 			pins = "sdc1_clk";
-			drive-strengh = <16>;
+			drive-strength = <16>;
 			bias-disable;
 		};
 
 		cmd {
 			pins = "sdc1_cmd";
-			drive-strengh = <10>;
+			drive-strength = <10>;
 			bias-pull-up;
 		};
 
 		data {
 			pins = "sdc1_data";
-			drive-strengh = <10>;
+			drive-strength = <10>;
 			bias-pull-up;
 		};
 	};
@@ -31,19 +31,19 @@ data {
 	sdcc3_pins: sdcc3-pin-active {
 		clk {
 			pins = "sdc3_clk";
-			drive-strengh = <8>;
+			drive-strength = <8>;
 			bias-disable;
 		};
 
 		cmd {
 			pins = "sdc3_cmd";
-			drive-strengh = <8>;
+			drive-strength = <8>;
 			bias-pull-up;
 		};
 
 		data {
 			pins = "sdc3_data";
-			drive-strengh = <8>;
+			drive-strength = <8>;
 			bias-pull-up;
 		};
 	};
-- 
2.45.2


