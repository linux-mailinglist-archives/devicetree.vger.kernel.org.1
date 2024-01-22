Return-Path: <devicetree+bounces-33702-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C420A83617A
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 12:28:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7D63828D7A9
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 11:28:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 793F641210;
	Mon, 22 Jan 2024 11:15:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dAKIlpUk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D764C40BF2
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 11:15:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705922116; cv=none; b=GOgNV96yGKq1+Dr3bYlnj4YeGO/qwDZJrdYtZi8c/99PIX5/8iCz2UW1dq3AicvTAaxIsT2ohQi5HxCOP9TYu0ppflGZJEidiZedET6Gwc4UfI9uAP5W6gtjmtIh/Ps/Gvdd2gbVI9dX0CP+WNtciOWygCb2FTVZOaj4hg4HeNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705922116; c=relaxed/simple;
	bh=airGui2G4THNM+DNbxdncbidgaRzT+yLBcqr+yEOIxo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=uxozP6Fo+VDLb4bqxE1bKy4tUhAI9AKZfneBb2uMMxjVUpdAL38s9tdyb6DVHxrSY9NZPjA36Z5FzywsjcrgP17sztXHCNySgUpuG4NW0h5P1GY2mlarDnon/mhiC0qaBYMZogvuiLJXhUv46K4Jb9xHTtsaO9cNFK1BHC49cYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dAKIlpUk; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-559cef15db5so7245446a12.0
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 03:15:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705922112; x=1706526912; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cHHE/yIzAjG5ptVoS9Wcq4EbLykqNcWJXRY/7PSYcP0=;
        b=dAKIlpUkbSP9aTGM3tDQju8SsYo5Am/N87Uc5K3Z/z0PU/BMFIkbpvlviDQ+P8A0HN
         nppeHbO/6EqF4CUH8oWC1ZsqyRJfX62/HHpgtJ8YDqE8G7j1rU39K8oyXWl6PBI300rT
         l3+r0hPTfZ3oJLhJ0eY4tEggUaSFKcmZ6Oko8EiMaabjOHf7PTp+mxlM8wbW0uuOw2o9
         HHzdRy1MeU4ivBZIyCEknNXER2Jh79kvWovk0XlnBirRE1nJfAtr1xPDtbIiOt7eVjvI
         FX45izE1frbu6hJSOUogh6e1uYeU1QuNJ82Tu19657NNhwtJLAy83Ru3YIwAAcM7oGky
         3iew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705922112; x=1706526912;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cHHE/yIzAjG5ptVoS9Wcq4EbLykqNcWJXRY/7PSYcP0=;
        b=S/0kzXriqDqHhAzUYzfhPxnVKrrGnfoIKP7yxN2h4rgGM+6iPch947j9rMHZdpHilC
         q+46Q45LPsd1rP586uIaL3BTDdmMeRGoHvt10GISGk038GMVDfQ7JU1R02GseblI9ZYt
         UfyafTScOfPB3Owfb3cgbN9XS0Vj5/Mnyy8G7v8+zOjRTjw4biAS/WgyLYD84++6F+hC
         81piwbOqC1I/3X5gVM1RKEszofBiMXlNOxZ3Cn4yYqtuHF+OHArbCbI0NFQI310nCy0l
         aVJCotK1M3oX2QsigZ8d7H1mRxj8SLkBTRn7ryWX2IU9j6YNnfn0dMhmwhS2ghz69+Be
         iV0w==
X-Gm-Message-State: AOJu0Yx14TaFP4QdqXKiv5E/x7ZJplVpuxjFIrXKH1ID1afTDcs10S1f
	2tnah4frbfkyJWv5D21TUYHYRDnbNsE7OXH2laiYf3DU57u2h66h6w5d10JIrKg=
X-Google-Smtp-Source: AGHT+IFazBg/Kxcqln3E/jZS+4mozxA58v7WGcPxFMJVPmxmaRwO62vkGJUx+s2/J/k2BoqAex4U9A==
X-Received: by 2002:a17:907:771a:b0:a2f:17b0:a193 with SMTP id kw26-20020a170907771a00b00a2f17b0a193mr6125034ejc.14.1705922112040;
        Mon, 22 Jan 2024 03:15:12 -0800 (PST)
Received: from [127.0.1.1] ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id h27-20020a056402095b00b0055c643f4f8asm179422edz.32.2024.01.22.03.15.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 03:15:11 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Martin_J=C3=BCcker?= <martin.juecker@gmail.com>
Cc: robh+dt@kernel.org, conor+dt@kernel.org, alim.akhtar@samsung.com, 
 linux@armlinux.org.uk
In-Reply-To: <20231221230258.56272-1-martin.juecker@gmail.com>
References: <20231221230258.56272-1-martin.juecker@gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: exynos: add accelerometer and gyro to
 p4note
Message-Id: <170592211066.45273.10327831011421754797.b4-ty@linaro.org>
Date: Mon, 22 Jan 2024 12:15:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.4


On Fri, 22 Dec 2023 00:02:57 +0100, Martin Jücker wrote:
> Add entries for LSM330DLC accelerometer and gyro to the p4note.
> 
> 

Applied, thanks!

[1/2] ARM: dts: exynos: add accelerometer and gyro to p4note
      https://git.kernel.org/krzk/linux/c/497b447cf89b87c8fb0d0b27994258ed18ac355e
[2/2] ARM: defconfig: enable STMicroelectronics accelerometer and gyro
      https://git.kernel.org/krzk/linux/c/213b755e42e2e7127777f74d2174bb4843a9b03a

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


