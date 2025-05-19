Return-Path: <devicetree+bounces-178555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D401ABC21A
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 17:18:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 530FC4A2E54
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 15:17:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EB12286891;
	Mon, 19 May 2025 15:16:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="PZhlAbj9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com [209.85.161.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E462328643E
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 15:16:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747667815; cv=none; b=fkgiNowfJWb1zNitQOim2X6Nt1ef/HDsmdiQ320zghdEYXPx2xdClIFj6sGzCJDO6/WIlqg6ghe/99/+Z1S1Pc1bxI3WqdYBiQ+tKGgkZYbPIggCpodRe8sBHk77Gzaa96jNroUUB/RNHUDNEre0LCV1FyUSL2gRktqpTgFvI6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747667815; c=relaxed/simple;
	bh=PDzZ1P1yWg+XkiFO2hZgTshq3CQ2YwSCHmY/IiLp4cw=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=UAKij5DeU5PlztgSUbwFxl09iTeiLduoCMYqNlWVCLoz+JTs4VE4POP/afRRNgeoHF7DJirLR/RtRp/lzu9lcUvIgUSrr9Z/tLlJgGMddX4YVGMSdZ9XtkI6Df5WvqlTz04CSpFdiXd9VOfydTzZyeIrrFVnvxw7dDNj70giHiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=PZhlAbj9; arc=none smtp.client-ip=209.85.161.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f46.google.com with SMTP id 006d021491bc7-60634f82c77so1299433eaf.1
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 08:16:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1747667813; x=1748272613; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Ls1NLWaG7mKMxoaQ03EnBMu7MOLjXKiH9mRh6OqI8xk=;
        b=PZhlAbj9XdlQ+ZWfNtuqw2nx4/z0pi3327NzV3X7SeU4/ZcA5volZ+kj6ZY4ih3igS
         yPYgaguqZZ5q3yab6o+43O/AmKgmWc7IJRKe2vEemShmqpwxEwBqQJ2vBINeov+wQK9P
         GO+sJuDZ9XykmnNxivADUAyLK/78myRvA1/xYbYI2/sPI22su1engcEKQ/uZegf9G4YK
         hE9+mfDewgKfWSPo17vS1UYhR/wd9ihS+qMAUR5qMUK+b1+0vIVCUFXaLa7peXz4Jw36
         q2JPiVVEXwfWlil3EMnd7kg0JU5IhCVh7Ftj64g/9xVapNsdZrAoF2knlIiWkLebsP8d
         swLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747667813; x=1748272613;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ls1NLWaG7mKMxoaQ03EnBMu7MOLjXKiH9mRh6OqI8xk=;
        b=hQX2eJVsCRMpJThe8Z5ufG44nNEmC6C2HFmeP6B+QoOCtnL6TbMy3aSpsNZdhUf1KU
         2qH8AZIOfB6es1ykwEDRhkc2x/opkzdR2vbd4SY/cLfwmMAMDj2IbUQmzaf/4IqkOHR6
         YLIw/R6F3LBfw7Ap5mNZuNt7eSElHsqZZXMQgbXZGJ0BHRJkL0pnxhJH49LL3LSI6Y9S
         fxlYlEIXmpLKeFOvwglOzb3b4X3KiB3ZsQl366fEImGb/c7r0uPBcwCrlk2UhRsGrJce
         wTPcWsdw23CsSSfQp9MR+fJQ0kvZpVKWMyP+BWv992BTf3nRa4cMD8KBfgEdjxRHHhcZ
         dmKQ==
X-Forwarded-Encrypted: i=1; AJvYcCWgjurF1dB//9ngNjlvCX5XBMzVBawa8EGUZlGpn3O7XjazNXBhOiO6tGGNJLMZtHBx1NlJdh3HQQCj@vger.kernel.org
X-Gm-Message-State: AOJu0YxFa953mXc9CyBq9SVsA2Ke8RMRK5T14Oqj3wNvx2S4wNBpKYhi
	uqkI13dGGa4sJFQc3J3ZUbJVlMB+w+w3FriCzAdrwoxNFtpm/GLo1Nw9WmDJUSTHzxs=
X-Gm-Gg: ASbGncuBaiRymHMxNLC867j9WfGkp+F6/CpAo0WQ4X+ePiYUCB1kLy47PHdn+FH3ErS
	j5SHLz/bHu4X7qBVTX20SkEeUseO3ufL+/mcXDg6ZOJQQAmyBfeUszOGXkMt0K00/5bTjZWUerj
	kLOg5tBgfb1IQN76Z0AZGxO8h3Guxje4PzVZ6nzP5wShHawF1aMacyzMywCixEZJQ2C4VG78yDo
	CfO+VCLNpMPlzMCXzVnl3uO08uzuFKwgd5H6DDG4hzIwFflPTT4oPOYM+td35Pg+nr/rxtRFJqO
	xRNrJyrL2ty6pQIiPcUlVv7KkgI4C1e/UzL8+03rF+Wq36eIQ9wY/ZQCuvUHICEgmTeElDbXvYU
	W0HnHI+gvfex198y0jGzugOqNEOlrtxMEAT+1
X-Google-Smtp-Source: AGHT+IGrr7JqsWk7yzixXETOAT3kkODRr/vioemwEunpOKJE8L7wTEMGjjVZ4Ec2n8rsdrQ80Lfp9A==
X-Received: by 2002:a05:6871:d08a:b0:2d8:957a:5176 with SMTP id 586e51a60fabf-2e3c8186ff6mr7690014fac.5.1747667812956;
        Mon, 19 May 2025 08:16:52 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:a628:91ca:eb5:d6f5? ([2600:8803:e7e4:1d00:a628:91ca:eb5:d6f5])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2e3c075bdfdsm1792167fac.25.2025.05.19.08.16.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 May 2025 08:16:52 -0700 (PDT)
Message-ID: <bd9dd280-0baa-4b03-b286-f16ae848a772@baylibre.com>
Date: Mon, 19 May 2025 10:16:50 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/6] dt-bindings: iio: adc: add ad7405
To: Pop Ioan Daniel <pop.ioan-daniel@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Sergiu Cuciurean <sergiu.cuciurean@analog.com>,
 Dragos Bogdan <dragos.bogdan@analog.com>,
 Antoniu Miclaus <antoniu.miclaus@analog.com>,
 Olivier Moysan <olivier.moysan@foss.st.com>,
 Javier Carrasco <javier.carrasco.cruz@gmail.com>,
 Matti Vaittinen <mazziesaccount@gmail.com>,
 Tobias Sperling <tobias.sperling@softing.com>,
 Marcelo Schmitt <marcelo.schmitt@analog.com>,
 Alisa-Dariana Roman <alisadariana@gmail.com>,
 Ramona Alexandra Nechita <ramona.nechita@analog.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250519140220.81489-1-pop.ioan-daniel@analog.com>
 <20250519140220.81489-5-pop.ioan-daniel@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250519140220.81489-5-pop.ioan-daniel@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 5/19/25 9:02 AM, Pop Ioan Daniel wrote:
> Add devicetree bindings for ad7405/adum770x family.
> 
> Signed-off-by: Pop Ioan Daniel <pop.ioan-daniel@analog.com>
> ---

This patch got a Reviewed-by tag in v3, so that should have been picked
up (or give an explanation why it wasn't if there was a reason for this).

Also, Jonathan had some questions about the clock that didn't get answered.

> It's definitely wired to the ADC as a clock but it's also (I think) either
> wired up to the IP we map to the backend (from software point of view)
> or generated by that.

Yes, the clock is a standalone IP block that is connected to both the backend
and the ADC. There are some diagrams in the link below.

https://analogdevicesinc.github.io/hdl/projects/ad7405_fmc/index.html

