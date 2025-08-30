Return-Path: <devicetree+bounces-210703-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 71944B3C9BE
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 11:20:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1BED5177734
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 09:20:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A53E425D202;
	Sat, 30 Aug 2025 09:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S5RNrbR/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC4A025C6FF
	for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 09:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756545599; cv=none; b=asISsGOfPTP9yFaM5QqGxADmvmLpWRROHTVKAoNPqDxlP/jlmOYmovqdPvnVaKTMqviJMRgqIZwN0sYH9+uSSWgWHA7b2wGsFyFxZ5hiDtEfaJSjVMtT70VeLoElmcTe64RPArnBUhmvjgX3GVIhPS3znyKOGneaZsBRugdvFFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756545599; c=relaxed/simple;
	bh=va4dxn6FAG/rkvLkOTSt+fhm2FMOlsveamQ4+F7Pdck=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=sjVvuoB5pwz6U1x4BD28TPMAOnrasZiVFXfsMSxICtYviJGLtlRfOOrvuqhrOEOrXkjSmCDLY5oRlV5UTGOs1tUZlZgG0LSvjiBJffTAKziKzRxd9XeaEnVjeN5/GiR3l9+sAYIEOxY+1fAaue4cGgc7zey2psiJTmqCO6K79nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=S5RNrbR/; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3cef2c300afso296295f8f.1
        for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 02:19:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756545596; x=1757150396; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GwyiQhik7suc6gbVzjEP6jIHrXVEYERHfJGEwviQmSk=;
        b=S5RNrbR/CfjqlOJgyGUQ67MZepqHnH2xk46SBgU4gjvfMslf5v9XiwhTH7wVqzui7Z
         58HMYAuORzJeTYHDJjRPXDZ/AYmuw2kAJwds7+H4nAgGIwS8ibBx9TTR2H4GCBBOYCkF
         0R1McOE8MGIfVGz44G8YYc24EVELSZYNLOrRQ6eITXRVrnEnD/agjO+vjbKuFC5m5ILg
         txQ/7z4KRuyjbaO/HEsLM/G4vHHQiAJDAUvoMezihmg5O0IikJ50sOGE1seh81j/Kys6
         PCXDeijkoY1pZaxUGu4PL2IzywXWhjke8hjqDcXdzSdJzuTHbEI3JKCXGtfjGeE37HPm
         Mx1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756545596; x=1757150396;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GwyiQhik7suc6gbVzjEP6jIHrXVEYERHfJGEwviQmSk=;
        b=jE05dODLyeRVKZ/EcTSyC6ITBKlq2xXg3EECkrnTGeQ4IMxjVAorxfFX0pHR1+zhl0
         tMKsd8Xcwo1WOsQLiXhJz0nHNtMAkaCqEpFrLJGTCgNDO7vbVuuhVuNdfteWTxhc5PZE
         +IbW6SnNIHsHF4P+3TQPIpfLSaG3mM8Zz+c+II6Gwl8WuF59cKZnoC+kRowvAjhKSZkk
         2UTpXSob3h2NqeQLBiBAFDTC7SdOnRdM7v1mQTnzVtL72hMPxdltviouraxcC6XOgLbG
         IvkLWDmftCr3P94z5rEC+el5Pg0T9jRC6sXLwekp5zVk4wq9qzb0Don2QtWuCBGw2Z1T
         10mA==
X-Forwarded-Encrypted: i=1; AJvYcCWSxUhwakkmKcaGkHtztDcLuELswwnpCvzvZvRLgfer6pbqEy6Mk5sksYN9HwSW6IMexcfnBC5/+YAD@vger.kernel.org
X-Gm-Message-State: AOJu0Yzil95xNF1iGQeenS9vZTFw4cz+AXZmeBA3W34VV2LYf9k1KSeP
	k0aiftxWM42BhToFmb1VQQsbpzrZ1E5Cjl9tiZOU/UBDZkp/RRq/YhvAc/quuSTe8sg=
X-Gm-Gg: ASbGncsqT1CBl14iLwv+1jYGy7q/ceJYltA2ApiavUjY9GE6pLMQ0zDBX8aTj5+Olkr
	3PYIkIActPB6QxJxI9bnEP8iDIzVJnTFtxh6lQAD9qfz0mRi1Cw5QvAcgWIz6bYdvQ2SVKhhpTZ
	WBb6BOdZRgaDLPmwPDyKEmKZJenIGx9chSBXxfMazdHYk1fkmiQWKlrO3/SEPq28aUd0DUdwVqW
	wCcjDsX+mJFwICtSAVztbH9qpM7oRNFnBUVLrN68tw7m77O9MoVitmy6u+WUcLv3P1H3jQugFuq
	ZLCKcvQsArtoekx3E97uOKzCi4UrbX1QLg+EUcbMfYiggq5TKaPmakPonwiZz7nGaNFjBVkli02
	L5PB3V/SgHGasB1HG9ntGTxcza3vjZckxek7752WnFEOLj3PyZg==
X-Google-Smtp-Source: AGHT+IEqjNRxfqqCNOguFU7c3K/j2n3eHHM7h5HhcZ/u9DnUpSaUb/8k8UWDRGTaDD9Zj2mt2IJwjw==
X-Received: by 2002:a05:6000:4310:b0:3ca:4e3:6e82 with SMTP id ffacd0b85a97d-3d0fcaaaef7mr1613229f8f.11.1756545595916;
        Sat, 30 Aug 2025 02:19:55 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b8525a94bsm21186815e9.15.2025.08.30.02.19.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Aug 2025 02:19:55 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20250815070500.3275491-1-ivo.ivanov.ivanov1@gmail.com>
References: <20250815070500.3275491-1-ivo.ivanov.ivanov1@gmail.com>
Subject: Re: [PATCH v3 0/4] arm64: dts: exynos2200: introduce serial
 busses, except spi
Message-Id: <175654559458.10738.12093256253809127560.b4-ty@linaro.org>
Date: Sat, 30 Aug 2025 11:19:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Fri, 15 Aug 2025 10:04:56 +0300, Ivaylo Ivanov wrote:
> Hey, folks!
> 
> This patchset adds serial busses, implemented in usi, for exynos2200.
> It's missing spi, due to me having troubles with reads when testing.
> Serial_0/1 have not been included in the patchset, as it seems like
> they're encapsulated in usi blocks, but are the only implemented
> protocol and/or do not have a dedicated register for setting other
> protocols in a sysreg. That'd at least require patches in the usi
> driver and bindings to add support for.
> 
> [...]

Applied, thanks!

[1/4] arm64: dts: exynos2200: fix typo in hsi2c23 bus pins label
      https://git.kernel.org/krzk/linux/c/1219992e16689f4937a333c98d90cf80ba91860a
[2/4] arm64: dts: exynos2200: use 32-bit address space for /soc
      https://git.kernel.org/krzk/linux/c/ad8ea30db80f825215d071370989b8ac45298a1a
[3/4] arm64: dts: exynos2200: increase the size of all syscons
      https://git.kernel.org/krzk/linux/c/0dff00633bbc8566fed6483daddddfa0dfdcf83a
[4/4] arm64: dts: exynos2200: define all usi nodes
      https://git.kernel.org/krzk/linux/c/1bc8f09ce98ca8a56f2059c9a8fe26cc351318f0

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


