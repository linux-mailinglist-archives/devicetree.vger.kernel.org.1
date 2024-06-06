Return-Path: <devicetree+bounces-73141-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D16E8FE189
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 10:50:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EB3C1B26BD2
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 08:50:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE3391494B6;
	Thu,  6 Jun 2024 08:48:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="o5WrCbs8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D02651420DF
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 08:48:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717663709; cv=none; b=ePNoyGczxH64rnGyo4hWojcSCiK1fhUBw+iKUF1I6Wsh70gRTP8zt9uIUOCNbfP7Q5mBG3WQhYPYFjwe1d2hfzlN4XlMvzTM7YU05XyNw2kkjjgTVqOlwzB1Z+xmpBAQ74wN2EAE914YXa2UFXcrXq5RJcuVOH7gtX9qNmyefIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717663709; c=relaxed/simple;
	bh=CB2bPtaDpU75ktGs22gfMyRNjffoEcH2n3mjNBAk7PQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=e5kQ0Dmgp+R+zR+9140BaD0RWWyX+4HxhMh9YqEXBMOSw5njw5mzK4xaXpQC4e7D7jzTqhmW83parUxuxZc0/t/aJ/UbM2tLKi4CvoYE85KofK7f6pONRj72pjxl4RhIJ+9KlNVAAmgHDfHHAuNmnYqTtGSqyEO9YAO4Cr69DEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=o5WrCbs8; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2eacd7e7b38so7722881fa.2
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2024 01:48:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717663706; x=1718268506; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pUKn7nRoMeLL5mqRvKldIOdmuSCawvGpeoUFhl6OTCA=;
        b=o5WrCbs8CxpDdI5oJFm19jSk25q+kzxOIyRaZamnj/4404iyJTVJewG6iqDLctpbFl
         EcnU1/4ZFwDW0xR9rZ3cQP/k1CFTfMWxfakdOJ2rA5APQ0kHcIWiGk6X/1VjV+B51jtk
         jMsg5n4U955t0gUCIb7D/T6AbK2zssFoyeZTBZswmhKjg3l6spNd0wO8GVJytj48E+tH
         dih/jYnGXYuoXChWQtRS4bvwacGdiVMrH6mCjtkQ4KKBH1t3jgMnUlnou2cs8gkDNQu5
         HvwTZMmXtQiu2CLMqt/N4UhEPVBhM/aPvNfv5JnXth07/I1obkEYWVZh3RPFs9KTN4jG
         FlLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717663706; x=1718268506;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pUKn7nRoMeLL5mqRvKldIOdmuSCawvGpeoUFhl6OTCA=;
        b=FqpgcN3BD2O5VgmP65u2SpGdKpKVF2ljwDQb97M6bcwsyhxeUV/tm/PP2cjahiTKC/
         gNpRWDwPojoIlYpKgURVkFBWaj2btN1jqfP38Abh7jODW6SO2jVMq3R/qUhc+IdhFbLA
         P7Dk05Tor50VMt76pUyPwnGPELlJSmPwofWPWTzG7SVem1t4W7BG9W5Cx5I/ij+7jZG7
         xCGRUufIQiT/yxUcEEE22osUdk/BaYGf9O6UEoCf7WqsSHbHmSPf+Jt6zbxJxEH6lmEs
         hMznQ82xjvOZlG26XWWzCRXtV0C9vyJyg/BtIx4p1Z9XCAEka/0zCDGBVzhOaeQRGhk6
         y5+w==
X-Gm-Message-State: AOJu0YxUEBw20Ggb+ybEcQsJ7ehn5QUICac+stKjBaBQw2sAVODghh74
	lrEmGcOuYgdHxjyFBUUJ/Dqgurfn5vTtvHwXpdTBoSej5Dy29BBSlenZ9+c9WWM=
X-Google-Smtp-Source: AGHT+IHrdV+x4TijqSa/FABtkOHGZVw6OnDi1dAynF+1M0R/1Oxx2xSnUnffhNF9+XNMmeVoZm9OrQ==
X-Received: by 2002:a05:6512:3da8:b0:52b:b4d7:ba55 with SMTP id 2adb3069b0e04-52bb4d7bb5bmr912193e87.29.1717663705942;
        Thu, 06 Jun 2024 01:48:25 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4215c2c690dsm14227445e9.34.2024.06.06.01.48.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jun 2024 01:48:25 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 06 Jun 2024 10:48:19 +0200
Subject: [PATCH 12/12] arm64: dts: amlogic: gxbb-odroidc2: fix invalid
 reset-gpio property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240606-topic-amlogic-upstream-bindings-fixes-dts-v1-12-62e812729541@linaro.org>
References: <20240606-topic-amlogic-upstream-bindings-fixes-dts-v1-0-62e812729541@linaro.org>
In-Reply-To: <20240606-topic-amlogic-upstream-bindings-fixes-dts-v1-0-62e812729541@linaro.org>
To: Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=866;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=CB2bPtaDpU75ktGs22gfMyRNjffoEcH2n3mjNBAk7PQ=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmYXfO/q9TsnRTODhpmyAtqQzWilWXGX5QAleIeFCi
 DdjYcruJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZmF3zgAKCRB33NvayMhJ0UsFD/
 972tFQmlu+yOj3Y3cb41aRStMfvlb1KNBydlDb4519AfovBO9UKgEg2eC9x0DxUYuocvuaqshslDMu
 8Jl48g6wGafXwyIuemsdnD5bdnKFrJnSgztIo/j010AMW2FrNTOHm30iN0HkTB9Jzv2eZyvhTSXmZM
 mlxpjEmqTRRhiyhSJbFjio3EqeGnaf79jtlqEq/cx9voSEOxsNDPo21Ru3+H0Le1mIWs350NhJzVzf
 UHUZQmFk/d5Nwy+k8iab+mCWwk2/OvVEtnPROWR2xDj5xxorBA5qwGMqofLtRTBLvZu1/hfBplDJpy
 taK5Fc6sNCBVvw2L3lt4jZ4NdbkEzzTCl5/pawmpls13eIBzKPcKS8oclR86HbkxIubZoZN4YiKsaj
 1QPPDrPJdKvFqUzfJLA+zosKqFEJkTfEfA5U/sWRBY+2fJXZf1XAeZBl62cWAL0P/Bez22+1bLTtsj
 G89uXpy2VhYLqEv6eMlYmoWfWsTF1tfZEBno75A5KLWczU7IFPJ7t+GcDH0do3wZjeL+RBF1O96SxH
 vvpvBnec20o1WZs+DWereAy8ZUeLZI8KOAJdeedPPeTMGATc9rqMufHW4+949yUW/IasisYiCLk+gn
 gan55yYYfRzcbVROlstDGHRL8OAlgGP/Yce3Usl5+SJO9AppT+agJHTwgDRg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

This fixes the following:
hub@1: 'reset-gpio' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/usb/genesys,gl850g.yaml#

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
index d4e5c960d4cd..cafbd5f5b913 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
@@ -411,6 +411,6 @@ hub@1 {
 		compatible = "usb5e3,610";
 		reg = <1>;
 		vdd-supply = <&p5v0>;
-		reset-gpio = <&gpio_ao GPIOAO_4 GPIO_ACTIVE_LOW>;
+		reset-gpios = <&gpio_ao GPIOAO_4 GPIO_ACTIVE_LOW>;
 	};
 };

-- 
2.34.1


