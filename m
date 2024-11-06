Return-Path: <devicetree+bounces-119601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B30249BF4A5
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 18:52:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E47101C22CAF
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 17:52:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E45320696B;
	Wed,  6 Nov 2024 17:52:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="m84woleR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BEE2207A2F
	for <devicetree@vger.kernel.org>; Wed,  6 Nov 2024 17:52:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730915551; cv=none; b=ZlgJ3Z7sc4Y9KHbRgBvehjNVsKC2i8b4DMmLtAx/dgwuXnReD+DGNxqAfyIG0wFibvOcdbDWHR3AeqamE9GiwuEoICWXgRET8OeEh5Ueu8ZYMPRK4atFKAPeI2N8HjJdPFZSuNr/HgPNUvqGRt04YlVb3gyYeUDZQ60Pl4iLcLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730915551; c=relaxed/simple;
	bh=QknsfhNJpkSWvghdqGJQydIO8NDXgigr6SsR14Z15QI=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=GPweUBTpmxOXA2CK8hd4RsKYQtx1fgQJKz+obNwgh3N+VVOMeUxcZiRlGPTqW1krZtqyl+UQQIASq5Wru0E2rzVF//tCE1oIpllUEoko8pjV1AUdC5UuT41OTmHQcl5EAvXxdMs29xaM0PEYvH/DrR8l69qyCmk1jmXGbFmj3kA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=m84woleR; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-431695fa98bso591395e9.3
        for <devicetree@vger.kernel.org>; Wed, 06 Nov 2024 09:52:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1730915548; x=1731520348; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ipymvx1/6bALryF6zoyWfiFzrkoooAVpB7ONDyc7qcc=;
        b=m84woleRjYfb7Y4itCq43i2a0layn4LTdCQYuBAXCAY51PqzAZ5gWbGmUM+yC/Wfz7
         IjRBBok7Cm6ndQPQELN2KaWnN+ZGF7QsArFkYDPlMxxImMyN1mcbsqGQf7nYYG4dS3jp
         QVFlNH+kAXe9TSiy4taJFwivYIiZ2THF4HrDUgvQflnqBkp12/p7rlbNES6bcofCt5ei
         9tJ5LvDbFWTA50xeohBPnVasrKbvmVR+66WiIx14RcY4VAzBV0WbzwtiBYP8X3QJPSwe
         1svZh79ViOwvMqPKpe1dXZy6UDsf709yFuqJSXPeQyeU2oBjZuHTMi5NGPuIEXKKGWlO
         JbNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730915548; x=1731520348;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ipymvx1/6bALryF6zoyWfiFzrkoooAVpB7ONDyc7qcc=;
        b=fPwQzuQ3CBey5h6gWnxp0SShYjHoaRxmtpPttTh5oy0OPbKc2D2YAqMR13Na6cojD+
         WDrYS8VElB6CkvFCzfX/TaKOu7BuBineVIvvKJ7fVfS/qI9tA+4qMBlQEhRIBJpSP0mQ
         kbLGlSWe5vPEdKs8uPDGiesYRujtBFG1J+Hq79XFiairOuJcWH60Ej1NB+PHdJBTo7gl
         ZpT0GAjbqDXnaHVSsitpr7xQgJ12Ib3YaiAU2/cQvqs2rg06RsHX7EX/zjNVtU55dVA4
         bEySdVBRlcubMJP+9aU7erebPbfSeBXcE0Ro6koPJerwzMfm0hRaz/rXrTD8IIWHFh6M
         /X6w==
X-Forwarded-Encrypted: i=1; AJvYcCWABsQyoIHB6/mWGcaSHCM53SOX7YCCwjV2J0D/MRAjp74MA/b8jw89/nRrnenPW14/9Cd1x01IV2VE@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4mEFldum8qT2fjG/qYFHafkoSgQqTWOO5IvPVLihJQtlOaaUM
	cfdm6JXra7TSVhi1gtJ0PeUc0GkQ2r8FozM+RUXfuarZdi7/qMSX9LiFwkTpwg0=
X-Google-Smtp-Source: AGHT+IFIGPqnuhGsKt9HNzG2CjyeWY7ObH0ZmvhCUaj02z3qP4fB3YkNaT4JK7o3DTcS9aJDv9+AHg==
X-Received: by 2002:a05:600c:4583:b0:430:5760:2fe with SMTP id 5b1f17b1804b1-4319ad04fa0mr375752515e9.22.1730915547682;
        Wed, 06 Nov 2024 09:52:27 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381c10d4b82sm19841073f8f.43.2024.11.06.09.52.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Nov 2024 09:52:27 -0800 (PST)
Message-ID: <b8633534-d0b0-409e-98ce-1cb7966e98e2@tuxon.dev>
Date: Wed, 6 Nov 2024 19:52:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 00/12] Add support for sam9x7 SoC family
Content-Language: en-US
To: Varshini Rajendran <varshini.rajendran@microchip.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, tglx@linutronix.de, sre@kernel.org,
 p.zabel@pengutronix.de, mihai.sain@microchip.com,
 andrei.simion@microchip.com, dharma.b@microchip.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
References: <20240903063913.48307-1-varshini.rajendran@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240903063913.48307-1-varshini.rajendran@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 03.09.2024 09:39, Varshini Rajendran wrote:
> Varshini Rajendran (11):
>   ARM: dts: at91: sam9x7: add device tree for SoC
>   dt-bindings: arm: add sam9x75 curiosity board
>   ARM: dts: microchip: sam9x75_curiosity: add sam9x75 curiosity board

Applied to at91-dt, thanks!

