Return-Path: <devicetree+bounces-126580-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC059E1E9B
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 15:04:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 85671B3240D
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 12:40:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 016EA1E885E;
	Tue,  3 Dec 2024 12:40:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yFaBUlMN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1891E7677
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 12:40:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733229630; cv=none; b=aIIa7qzGvw5/fEPO30+qayBw1+boIK5TLkj/hAv6lKaQgGl2xWs4mmpquJZs1/Z9mZ89eDtreZlcKISI5dF60nIH51tkQ1G7MSkrqdXOQZYBTQtawPdwJjRiggSIZGY2v44ccJezViY8vv/fJgrZw7p6P9XZmLdghJ/SHe8kFw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733229630; c=relaxed/simple;
	bh=wuW9dlmQHK3i/Jcfb0eJR/IK57A7oEJMFzUPWXw07Qg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gyw2dvaj5BQ9lSF+N8Mt8Nzz0+JP8aSILPZGBRuRcpwkd4j2NLmf2u/5dfs6AegzClp9vN8BT7mzHofgE18eETExqFQNl7fnl3YaVrMLhMwSXf0AqHairdDexPWFRmLe2lSpWb9oDkyNuWhlVgjmQHIL37Yn0js+FqxW9t9Qz8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yFaBUlMN; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5d0cfb9fecaso4518875a12.2
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 04:40:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733229626; x=1733834426; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sFCCGNoly/ihHw+f0V0Z4F6JNgdV9f0RgxXs1v/pmwo=;
        b=yFaBUlMNnZAAoJ7AVCC17HlfrbiVEJSN4sYdHxbO5CkloLRsoAgm5cD4RrEG5wFuWH
         LjsNolr7AiFOX01F1+/vyUtKayG4+eYeA9nr78j5xNb94SaNahNWyNi7Hdw5pD1TmTu0
         q17eTpcj/Yc2EeK2G5b/QJdsGmjXpND3H3rheMy0YN2bKUHNrbCCRarKmBPr8ltJR0q9
         V1za+CemA03lO0wnTvOa/N5awDnvHFhJIdnZshU1GykHbtRLjHT0VtvkLrOYGJaUvY69
         e1F8SNtk1tDwrsMW5/hUOpmsuOVlWWOmoZh0PuMQr5ntLvkP2CyMnVp2ZntjD9fSold1
         LOTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733229626; x=1733834426;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sFCCGNoly/ihHw+f0V0Z4F6JNgdV9f0RgxXs1v/pmwo=;
        b=Kep4J023Zt2i5pw5BBfESYjFya/mbtmerQ9cu3W1QkfU2r4mLZblCmliB9uE9vAjxi
         sHWWqvdrmHB18GmjFdi8Q1VhxvMqiB6B6cv7HjZkpHQ5u+oLzNIwv/Aw7B0B9Zl0DcGW
         YgiiWIapsdCufhmeg72LoQvelippCGILe+cZnWARRxsei4kKd1DWegujllz19TNAnYDF
         JfT4Q6i/OzDk4ooTCjG/iGUeUbkXJETHlWo9DOK6mKA7ndJUqueTrsSJN6jpS5/SWi13
         VEASD+/X+53iOslHdl4W0SfeoK9uSXWFY6qLVRAkkZMxAfOyG1ntZYryjYTCXxqQQPDi
         J9Gw==
X-Forwarded-Encrypted: i=1; AJvYcCVdKHnfSK/05iYrBpdziEgiQFZNrBehLUCwadeN840qUFZsXI963TPP2tQaowmqp79b+o91JLCGHRet@vger.kernel.org
X-Gm-Message-State: AOJu0YxrMALPyvh/rDkhR7IzUQCdgTkgBFSsb2dWJOWu+j04xD79Zt5n
	2akqzrHgIa/8ltc54rz0NOzn+2fF6Fv2IjG8v7O5USHB8zofYzILsTQscda/a2E=
X-Gm-Gg: ASbGncv/HFdgMl2hoS7uKrY40MGDQSrNILsS5Yltcxr6VSyDz1y3tz4U5qmlVfavhh9
	XCgcIB24hIsVQ0KYKyjFXZIHemIATpF9QZ0xN+pkZYAAWbnbZkWdOP5F7ik+JMLvm/J7+wKbyQB
	YMKiPIuBFhfAgk4ptA8onjyzG+8eGPHJ05zz9fYOCYVRfDUb1J2DNd0aVWJg0E1Ryf5pJmxT7Ff
	kiR77c++SxTkfTJx7p+o50CcO4Qg/daTlUh5SzC/objoP5AJcEDAcJF0IGDkZ/3GE9d+Gr2KU3M
	Pw5tCYiu+IgjWgww1irGmXt9PdnkGqQEDA==
X-Google-Smtp-Source: AGHT+IHeM2tS5DyKwmkwrU7i8UC/H8zcEneFmZTgM0O6tCH1VZOWSZmfl7YcO9+J0m0pG/15uh5zHQ==
X-Received: by 2002:a17:906:2932:b0:aa5:1ef5:261e with SMTP id a640c23a62f3a-aa5f7d4ed45mr162940566b.17.1733229626589;
        Tue, 03 Dec 2024 04:40:26 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5998e6a4csm616809466b.106.2024.12.03.04.40.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 04:40:26 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 03 Dec 2024 12:40:25 +0000
Subject: [PATCH v2 2/5] arm64: dts: exynos: gs101: phy region for
 exynos5-usbdrd is larger
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241203-gs101-phy-lanes-orientation-dts-v2-2-1412783a6b01@linaro.org>
References: <20241203-gs101-phy-lanes-orientation-dts-v2-0-1412783a6b01@linaro.org>
In-Reply-To: <20241203-gs101-phy-lanes-orientation-dts-v2-0-1412783a6b01@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>, 
 Will Deacon <will@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

Turns out there are some additional registers in the phy region, update
the DT accordingly.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 302c5beb224a..18d4e7852a1a 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -1267,7 +1267,7 @@ cmu_hsi0: clock-controller@11000000 {
 
 		usbdrd31_phy: phy@11100000 {
 			compatible = "google,gs101-usb31drd-phy";
-			reg = <0x11100000 0x0100>,
+			reg = <0x11100000 0x0200>,
 			      <0x110f0000 0x0800>,
 			      <0x110e0000 0x2800>;
 			reg-names = "phy", "pcs", "pma";

-- 
2.47.0.338.g60cca15819-goog


