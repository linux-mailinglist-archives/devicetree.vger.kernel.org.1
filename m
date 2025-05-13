Return-Path: <devicetree+bounces-176753-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D66E5AB5654
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 15:40:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 213A13BBB54
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 13:40:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA218290BCD;
	Tue, 13 May 2025 13:40:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="th3RCQuY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAD432918FE
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 13:40:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747143631; cv=none; b=XLDMiu4oA9qFIAPKl8aHQNTSV5qAVgx4X89TMiqoHdJ6v8r7xui/TNvw/azLEBc3IuJSTVklLYAhzAyUFAXZsaWKlF0yjJLtoDNDxqJL31Jiw0tjXZum2S5zeqCliShOoUAsAuUpdbygAREMNJXDSsZ9ISPSnlXlTPz6g8lH6So=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747143631; c=relaxed/simple;
	bh=BGaQ93izMEe02Cti68Vyan303ZMORdMe2po+7g1Hqbs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YuaKA9rIaVhxSEy8EU0zmGsUjUgg/RP2PJ8+mDiY9KgrnGpoUBr/e2iZF9STZDgZaFA8rkbrrM6JhqXbI4NgffSA7W9aYiG0Ut2U6Tziipw0W5nBK5mG+ASviqi+mgc1tkocFJGtQmPFNhgGWYwVFVHUBxqR55jpa/OdQATMf9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=th3RCQuY; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43cec5cd73bso38368645e9.3
        for <devicetree@vger.kernel.org>; Tue, 13 May 2025 06:40:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747143628; x=1747748428; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xEU9Mo6/UKsuuLc31/10/BvFN8LdhjlBi5jmqi672+k=;
        b=th3RCQuY7ZtXYMOkZX71S5H7omzWwsaWnSG6C4IgAt1C2gXQsO/k6Sxr2tqYWMdLas
         xHDlGaddzadiZoZQkyYkHJIHBT+G7Wx3J+yhuPeEUB1FRX98GM3RrW9vOf4CRtzp9T/B
         t4jU1nDM8AKs45Oxh83eNegOzC2tAyGT5IliFXhkj4RVC2SLrYIFVyke2m2ski1b6LNM
         gMbT9F81ycWWPMaHIP/xcWuQKWSwjRqrDNuk24LE3Eu/OVzs2B1OHVGZvsZGrilHCWVz
         ySHiDYGJRTJZ4K0euz6+wGv+2en88cFhxCbXkZX6A0AxRiaI25prJCUFp2EIfyW5KBb1
         v2pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747143628; x=1747748428;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xEU9Mo6/UKsuuLc31/10/BvFN8LdhjlBi5jmqi672+k=;
        b=mUEh8DuHueM3ks8ICOcieklMBRbR8bN9QPiM6ayUWQdQJdUz1XujV3tiVH+mSbp5bl
         GyImei/Qqs4bj0SnVNoPZ3ox83oIQfHPOq1ynvxodaXOYxOJ/rwVOqQZ9BkA4FOpSayZ
         WAqvpaN2ds9KqzXsV6FRvPJ1mzUX/b2WnDUIS+SSk6qqgdW5RlRd68002TupHFWePBOx
         Bce8IxUA1RwF8hzoRK/J4DZF6Qi13i8pv5SYi62VHbHRLVCRHUaV6TMmdtZFKEwPpHMG
         2mE2OH/OapoxKAxm+OF4oi2bP5NqDfMpTZ8ZZsqobE+KDx5baHG5d65BEMV5li3G79wY
         lh1w==
X-Forwarded-Encrypted: i=1; AJvYcCUlu+geK+nH/yP5/vxbLHcwzan6kV30fn3knv0bcxa8Mkpj72Kq4nEBSE+ATm1W+4MVdxsoEJKLEN4R@vger.kernel.org
X-Gm-Message-State: AOJu0YwGZ3ZTiMhGDaMYVlepCElMqJd5Zt6yQ5UKH0zh7BS1rU4Ei0Xd
	CU/gE5IJsyyTBF/jBS9fdeDsuHl7KFn/MOEenjj/SBv5BBm5Lhvd3BjzFBJudZE=
X-Gm-Gg: ASbGncuXuUU089Ehr1zLvYMn48wKmFX1ku1W4Twg7mHh/U6Rj+9Z96/f58jMoOTz75A
	uT4W2j/xuBLzVstOq2ekCj/lYaW6xWcpA9U/FaE6WMl0I9IiL24RYqav0bGnAZZxDmsB6HtzVa7
	ZC5THit3WpO6oa9NxtwRjW3tjUkOtAa7zW+PFW+HFBUL5423OXj0Khs/QjpxyNWNTl9L0EHfVII
	5RJj+NQYcMubiZcQOzHKr2o40g8k2zQZ3zOIyJCQ+DW6oMLPNaMi5AghVWDipk7Nx63zG9N/Ae8
	KLtHMb2iDp+KLNR4sRV3lk3m25/+b1ohlyZpAs5TnHoGIa5QdOiy+P7r5KYHSFQcnPm7skF18iH
	KhN5nmIfqijygJw==
X-Google-Smtp-Source: AGHT+IEfBwQJXAJ0BaJ2PDlgayikP86FW2WlI8LpQoXcFz5Q+W2Tz3IsJRQQT5R4meXuclvg4ooRLQ==
X-Received: by 2002:a05:600c:b85:b0:43d:fa58:700e with SMTP id 5b1f17b1804b1-442d6ddd22emr128512155e9.33.1747143628084;
        Tue, 13 May 2025 06:40:28 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442cd3b7dd5sm209294255e9.35.2025.05.13.06.40.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 May 2025 06:40:27 -0700 (PDT)
Date: Tue, 13 May 2025 15:40:25 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Alexey Charkov <alchark@gmail.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 3/4] clocksource/drivers/timer-vt8500: Add watchdog
 functionality
Message-ID: <aCNLyYtxmqqklBN8@mai.linaro.org>
References: <20250507-vt8500-timer-updates-v2-0-65e5d1b0855e@gmail.com>
 <20250507-vt8500-timer-updates-v2-3-65e5d1b0855e@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250507-vt8500-timer-updates-v2-3-65e5d1b0855e@gmail.com>

On Wed, May 07, 2025 at 10:58:32AM +0400, Alexey Charkov wrote:
> VIA/WonderMedia system timer IP can generate a watchdog reset when its
> clocksource counter matches the value in the match register 0 and
> watchdog function is enabled. For this to work, obvously the clock event
> device must use a different match register (1~3) and respective interrupt.
> 
> Check if at least two interrupts are provided by the device tree, then use
> match register 1 for system clock events and match register 0 for watchdog
> respectively.

This code falls under the watchdog umbrella not in the clocksource. It
is better to find a way to make the timer and the watchdog separated.

The timer-gxp.c is dynamically allocating a watchdog platform device
with the shared pointer to the timer counter. IMO, it is a good
example to split this up.

> Signed-off-by: Alexey Charkov <alchark@gmail.com>
> ---
>  drivers/clocksource/Kconfig        | 11 +++++++
>  drivers/clocksource/timer-vt8500.c | 61 ++++++++++++++++++++++++++++++++++----
>  2 files changed, 67 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
> index 487c8525996724fbf9c6e9726dabb478d86513b9..8f5e41ff23386d9ecb46b38603dae485db71cfc7 100644
> --- a/drivers/clocksource/Kconfig
> +++ b/drivers/clocksource/Kconfig
> @@ -181,6 +181,17 @@ config VT8500_TIMER
>  	help
>  	  Enables support for the VT8500 driver.
>  
> +config VT8500_TIMER_WATCHDOG
> +	bool "Enable VT8500 watchdog functionality"
> +	depends on VT8500_TIMER
> +	depends on WATCHDOG && WATCHDOG_CORE=y

if WATCHDOG_CORE=y then WATCHDOG=y because the first one can be
enabled only if the second one is enabled.

[ ... ]

-- 

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

