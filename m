Return-Path: <devicetree+bounces-134546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E5C79FDE73
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 11:10:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 933D43A1232
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 10:10:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B602B1547E2;
	Sun, 29 Dec 2024 10:10:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yLAOF9f6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC48514659A
	for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 10:10:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735467013; cv=none; b=ZKvpGNygS/b+nDP1k+d/gB5bNtloikWEid9ueJpitNfkBkmqIHMWnNkZvPbEW0kAlDDr6bAtZaw3TITSVI85mjl1yx1n4DQi7YWMvSi/R+7WZSGivB5okUZuhotdb6PXhouoQk8omIwYJlmAqDvkf5QB1uP3SyITeRqukVQkMwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735467013; c=relaxed/simple;
	bh=1Zq6Q1SJzniluQ1Awzyy2RAk7VBFMN49Y8wa5KK6rr8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=eNx3rTdzJCp1Wb3LgxUE2R91HRqwMzIjxsWwABMz0iL4xAi3+YDiy/Qh3stie4dZk3ABc/1uDrXB2Rf/Zv0v1MKtLBllLEknct2mJnnx3hAYbMfUxud4KorVUEHUvIrayiP1BYwaxgVExWSEuMfSd8tfVAlBdZ8MrZduIQFNFcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yLAOF9f6; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4363298fff2so12029625e9.3
        for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 02:10:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735467010; x=1736071810; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tSpF+CuRXyTaTI6CZu8ly254OOzIlOn2pYHOVoIJa0M=;
        b=yLAOF9f6yR+EIbc6TR50ZD6Sz1iviaNvnhGtLhx/8sRDYus2G656+7Izf1CyivsbVS
         EraOqIh+59rGHfm/8KBCheF0wFyMGWvgvs9sYzRL7rIEQ+yhW4MIe5n75+n9l04tfpax
         BZ+J3WX1oGXKvzu5gGtQcijbh0M5F/Ipd0iNwY5CLavJMi3R1NMCWTWmU8qnNg5wpnkp
         hUmjvbaw+uguLOvvxwWjQ/cDLHqxmzl3cPf3prPd7GFMt1I44nFkrVdpr5iCYNjo458Q
         ekYeVccF31JXwQsV6jLFWp2/6lVSt6dRnrSv5cYE+9+ZI5Umph9KeRa4nE/NkJSOOrNE
         FuYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735467010; x=1736071810;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tSpF+CuRXyTaTI6CZu8ly254OOzIlOn2pYHOVoIJa0M=;
        b=dhcWbVFoeyRo39al5gmoDZvPsdH5QvrjaZnRa2TLDXC088b+aTiuvEArfeCzoZZzo6
         8qPdAj6UcrDVEGxjIkush5RK9W0GZBqBvk/draW1ll56g44q55RQMzEFPyz7rW33m76l
         yKRV6vDN9yrXyu0g28NyXu46aoZtJqdG9GlzHkUO5T8SFcKQc+o94aKlcsvHYPTMx9+R
         G3r+sp+z2gY8JMEgKh4Oska0+gPDoVUsyHD/8bk/exzg68arwkml4zwSe+FTQGgUfqYZ
         BkjU5v7/KToyzbRFMGh+52PctAE53YIm20IlwMn2H1RRTKOIN6UWv24Uzj38CNu/fhML
         RTsg==
X-Forwarded-Encrypted: i=1; AJvYcCU7/hRwsqXUDHZyneEwQC6Bg75kJlIjB9QcYqCbAtmFUCnmYdk8q85YK6mg/F1pfEgP/xrnjpgqWeje@vger.kernel.org
X-Gm-Message-State: AOJu0YyKVZrdjXStI8UThqBIgIaat3iIDJ6jI86W8pZ9U2OlK4SJUFur
	MbG+r+9/grx7j8dcFVo5FJ/LPG6fdMJDN6Gky+qFy2s4iCmyvNIYiqb5YYuKeHs=
X-Gm-Gg: ASbGncs2fZDYmc/Vvdc0GyMkfkYm79UQFmxl/1H+lUc7wB+citTmxawM7BnWQwYOC7X
	okp0WgFXQWubbMibTCF+r7bT2s6DmFSYUAx2D/6kQds9DqpkiclDtuNBgJOn8EQAdEFIIqWmGxT
	NsWJIPMEvgFovr0c/mAs9v8Tz2MU5I2sb+QJSfcolN+ZP0p4NzIzUNfcIuQ8K021eAY0TESiGlJ
	8VbIjQ/UNC/WSDep7CVFMhT/znq6BA0LLx6Nwg483VmywEbOQwwsqs8s/CvnThF9YD2Elv5
X-Google-Smtp-Source: AGHT+IGW0d/YHpnyePRkpp9wXq4qyqr1+YfE7APJGg58iLxynoeEjadgGXZSm4ML0xt0Ba0edpBXNw==
X-Received: by 2002:a05:600c:3481:b0:434:a30b:5433 with SMTP id 5b1f17b1804b1-43668b601eemr102007365e9.5.1735467010008;
        Sun, 29 Dec 2024 02:10:10 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436611ea40csm320505375e9.1.2024.12.29.02.10.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Dec 2024 02:10:08 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Artur Weber <aweber.kernel@gmail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>, alsa-devel@alsa-project.org, 
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
In-Reply-To: <20240525-midas-wm1811-gpio-jack-v4-0-f488e03bd8c7@gmail.com>
References: <20240525-midas-wm1811-gpio-jack-v4-0-f488e03bd8c7@gmail.com>
Subject: Re: (subset) [PATCH v4 0/9] ASoC: samsung: midas-audio: Add
 GPIO-based headset jack detection
Message-Id: <173546700767.10606.15963860254937329872.b4-ty@linaro.org>
Date: Sun, 29 Dec 2024 11:10:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Sat, 25 May 2024 15:28:04 +0200, Artur Weber wrote:
> Many of Samsung's Exynos 4 devices share the same midas-audio driver
> to handle the codec setup. While most of these devices, including the
> Midas itself, use the jack detection provided by the WM8994 driver,
> other devices such as the Samsung Galaxy Tab 3 8.0 (lt01) use two GPIOs
> and an ADC channel to determine jack insertion, the jack's type, and
> button presses (for headsets with volume up/down/play buttons).
> 
> [...]

Applied, thanks!

[7/9] ARM: dts: samsung: exynos4212-tab3: Fix headset mic, add jack detection
      https://git.kernel.org/krzk/linux/c/2c3c373555460b79a6a201c87230d32b211f8323
[8/9] ARM: dts: samsung: exynos4212-tab3: Add MCLK2 clock to WM1811 codec config
      https://git.kernel.org/krzk/linux/c/d15cc681ba79fdc722d4aa7a83e572850cf5f64a
[9/9] ARM: dts: samsung: exynos4212-tab3: Drop interrupt from WM1811 codec
      https://git.kernel.org/krzk/linux/c/acd33b48ce663c7e293b11cd77df7ea702ca34f6

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


