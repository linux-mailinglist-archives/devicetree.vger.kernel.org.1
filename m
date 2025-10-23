Return-Path: <devicetree+bounces-230262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 38515C00F8D
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 14:05:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BF7B73A391F
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 12:05:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DFC330F535;
	Thu, 23 Oct 2025 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="uyG+8FMJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D62A830DD19
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 12:05:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761221153; cv=none; b=s/nE3GJpZU4rVy86VQKdlg1RUYeLqC7LBEY29djqeyuS89bjZllpN5KwC9EbSYWJ905KCaEahRWJTGio7pzqU//EYINmwQrgnrF8HfOUriG0k0NPd7KWFCbzBYd8ImK+RF4CJtqZjN+vDOubbQwcVlJ49isvYWqVZx/Z0ENq6rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761221153; c=relaxed/simple;
	bh=Iw/i/voACEOEUB0dl8Hwa2eGsgmSTL3oU67E/m1QVYU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=H/gB7896mWRmi+rPGaP0fsrC6qghMeQwnxmPYYBnivgEkj0nPq65/9VxwM0wma/NPLkGlaXnuB8Zf7dY4sLA6nG07OZ7ISPlEQKXg42itq/EQ9c+25rX1O60kWbcGeUw1Ui1vJEJv/4koK0LOq/v8OjkhyP3F+9DsFVZoXDva9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=uyG+8FMJ; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-426fc536b5dso554977f8f.3
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 05:05:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1761221150; x=1761825950; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K+knHP+hH8wtFXL9FrX8Adjy6J9Lu8uJnSEg3TGlm3I=;
        b=uyG+8FMJ0sbkNL3nSa3XQOzVI9s2QM7VyNyk9i5TN/UqebVdXbkmHmklYMIX3eodcS
         XBSO1VX/OK+f4qVrfG8kWhp1OaiLxPQ3tNtH0Of5rSk97HhQHfI7LUGoXsXr0OOYABxD
         Y1IePlPMCdWYddBRTEIzxzfyttWk5KNnBeUDrelBeopSGRQ0O29PV+qxrGSgqvRH1rdA
         Qe4GD8ofcIfS3+7PTbQfNzTnsAuqpKJR60NsgDuBuloKnl+3McuZP52DONiXIBux8Vfj
         /27dJ9qYsIkS2fxxLtrORNpy7X5iL4CQbYOOxvKZLV0kUTSs2ZSyK9D42ytpjKLHVqU0
         qrqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761221150; x=1761825950;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K+knHP+hH8wtFXL9FrX8Adjy6J9Lu8uJnSEg3TGlm3I=;
        b=MImKtA9FiDjO7E5FIz9kcNC1sNWGfZs58pYMGRwQwVu6c41o54NTIIjfYfT5LPZC43
         llcPJeiqqZ8p/LIBd8Or6uWBEqf2xUOyNGrkPUxyJnVYqrtXnFreWfq2WzB6x5vxLrDT
         xA8NbpaQNAGgBESyfgFgkrEZGSf2rX0SAzSR+9qr9l3NQddD+r3lmFYCt1KuZz1YbKLI
         uL2ofxhQ//540fgMV26tpYKIPNp6XfhnilHXZDbcYXVGpYfS59a9CkHVERUMXig5CAq1
         eMxl4ATnuxhefFFWI8jl8vXGuVPDXBDbJQiYHY6ytYsgCzG9tVgqwZrBJnyPPeAg1QTZ
         wN3g==
X-Forwarded-Encrypted: i=1; AJvYcCXamFi7tf64qmRgvkMAa2Zemo81cQMPNrLqb6iwtwLYh10wsVZk6ptpzkuF1tBH75vQ6JVgsxaTr6R2@vger.kernel.org
X-Gm-Message-State: AOJu0Yzj4mKha9UlxGBydSkseUFYdPEYrP8WsGPr8/5NFGymNQimTNGr
	RcHyq5Yl98UpKDSauYBQZ/jIw8opTV2zUTBlxDdngeZwUdUHtPJO9XrGJ6m4J9kcB4s=
X-Gm-Gg: ASbGnctr/RtghjQk5BQLpH6YUBkPzEYVNlzzjI3j5KKo9Ic4RgjXcaoRSpzXd/uMlX3
	IJNa8MH/m2y3ra5ZZfubIwDozZ1DwkbrnXTA6mlp27IuU6NORc8Dx09GWnMl9dYn3bGAB0ep37F
	vKTjN61uyL4T3+hDgRs6HVYcZ7OXaKsRV9xvGQwjwAR3nrgevt4H/ux/nmMEB+svXqBAcibjniR
	gjZIS4g9xcol5Q8tJ2V4crW7kSwRpVm5S0X9klOUryVR2oC1rDfWhkLY6MDQPm1CEblCu4U9mTP
	bhU+P6zB2KKTWfd6kLwW05qeCDr+4/tG4jXKC6pLRs/8FMkxYxHtIpPgHCRIxtakPqJC3bOhN1w
	m8OtJoQswu/tD4rqbOCIpj6iawGMURJaHSEDaY8AnIHzu7ykpGOecPQgnE5EMppI95CWltLIXxu
	rz4nMcPJqwsACsa/X763NurQ==
X-Google-Smtp-Source: AGHT+IHwJs8vP+ZphKLVg8Qnj866Tn55HPAEvE8rihx7f3rOB0WHPIdkAlWdTCpxtTyY9j9MwN+iRA==
X-Received: by 2002:a5d:5d10:0:b0:427:7ac:5287 with SMTP id ffacd0b85a97d-42707ac52e1mr14432699f8f.34.1761221149595;
        Thu, 23 Oct 2025 05:05:49 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:1b4:e02e:c538:6feb])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429897e763csm3719949f8f.6.2025.10.23.05.05.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 05:05:48 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Michael Walle <mwalle@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	linux-gpio@vger.kernel.org,
	Lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org,
	Sander Vanheule <sander@svanheule.net>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v6 0/8] RTL8231 GPIO expander support
Date: Thu, 23 Oct 2025 14:05:47 +0200
Message-ID: <176122114012.40841.4682534085501812836.b4-ty@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251021142407.307753-1-sander@svanheule.net>
References: <20251021142407.307753-1-sander@svanheule.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Tue, 21 Oct 2025 16:23:55 +0200, Sander Vanheule wrote:
> The RTL8231 GPIO and LED expander can be configured for use as an MDIO
> or SMI bus device. Currently only the MDIO mode is supported, although
> SMI mode support should be fairly straightforward, once an SMI bus
> driver is available.
> 
> Provided features by the RTL8231:
>   - Up to 37 GPIOs
>     - Configurable drive strength: 8mA or 4mA (currently unsupported)
>     - Input debouncing on GPIOs 31-36
>   - Up to 88 LEDs in multiple scan matrix groups
>     - On, off, or one of six toggling intervals
>     - "single-color mode": 2×36 single color LEDs + 8 bi-color LEDs
>     - "bi-color mode": (12 + 2×6) bi-color LEDs + 24 single color LEDs
>   - Up to one PWM output (currently unsupported)
>     - Fixed duty cycle, 8 selectable frequencies (1.2kHz - 4.8kHz)
> 
> [...]

Applied, thanks!

[1/8] gpio: regmap: Force writes for aliased data regs
      https://git.kernel.org/brgl/linux/c/ed2bd02d24947e36c9438bee1449d9bf87671b16
[2/8] gpio: regmap: Bypass cache for aliased inputs
      https://git.kernel.org/brgl/linux/c/3233741c0be59dd224e797deb2dd1621695ac95c

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

