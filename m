Return-Path: <devicetree+bounces-122641-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A469D195E
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 20:57:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6AC3FB2337C
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 19:57:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C0061E572D;
	Mon, 18 Nov 2024 19:57:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="HLW1cliL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com [209.85.161.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C3CA1E570B
	for <devicetree@vger.kernel.org>; Mon, 18 Nov 2024 19:57:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731959830; cv=none; b=q9F2RGUOfBneNVDlumANBxAANZMW9ZlQE3nzN0j0n0qgAsSXPTP3m8FQEu3pFnCzgpwGTuR3jiKPGQP7LJnBq7GazwmiF1eVT2rQUYuHcmAY+9IUUgVov8SS6mzjoea1NQp2HqwZ+6iHIooR9KpW00CIw5s4cTr+Zg20o8/y41g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731959830; c=relaxed/simple;
	bh=C3yvYvgaYqHUASV6J8b58Cin5xvUMyMbEuA9GZfTzY8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WoGwLtkF3gUjUGIs84btQJMmKCpwpxbm6yfaJrgwubUwBOZWIzvXpSWjDW6FQTkz2PIs1iWKnMFT+n96znIgoCMcPoROE2oTgue5jxfKxm7ZvOAlXv3PK0/eBvDgTl2W3FIv/UxMBV3A+cEIxc9aNWnIalMqP88Ca8s0TpZ12vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=HLW1cliL; arc=none smtp.client-ip=209.85.161.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f46.google.com with SMTP id 006d021491bc7-5eb70a779baso2324633eaf.1
        for <devicetree@vger.kernel.org>; Mon, 18 Nov 2024 11:57:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1731959826; x=1732564626; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WpUyZvuIqoP+1REy1b0f27OiKQUxfmn+lI7QAkmm/bc=;
        b=HLW1cliLAleXC0tByReogt14ePO6yc2ynZoDWPcAkapgQPTy4xQI7Aw46W4zeM5x6g
         AF50e8jJiio8s1LYWBwITxOqBPtVwD0vQ5dR/8ffzwQqaFMGfO6EHnZJWUzkhhBPZfty
         pE+cpLrXImTHtekUBIaMjVAfSzWdx465TWCas1SZjwkJTzXHWf96JVI0BqErLF85bUhq
         i0pt8iSAzMTPwqjOj/psvl7H6CljblyaFbuUucqVJuhvYBA4olU7rJH//tQly57T3Sw8
         y0mL7z/kesy0Krl8Nz+2ZRD/FYubh0HllnITXtqA7V4Ku9L+CYtPc4PiKeMBB4Zh64SE
         +Ixg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731959826; x=1732564626;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WpUyZvuIqoP+1REy1b0f27OiKQUxfmn+lI7QAkmm/bc=;
        b=KZ0raVfmJ+brN/kHPEuEND1Dr1+u7QcpjVXsOmqUDjFzefhvQbO7tAqq3xM4Yg/E0z
         FOrm9afinDXlv4/TW0L/pdHys9mGEt73mYLXaQFpFC+G/fO3VPVxOA70vaMqi+rfg/pJ
         FwrCoEsgED/LQuQMviLd8E6uI/59h7i31JdCS0LJ9xK7WIcpGMW1Pnp3csl3dzStqoiC
         TiAx837l6SiB+ErAsqLJRMfX4bsO7E4dzYMZaBUmvZzSV79rkqm1nCEpWamPMwmVo7Cd
         UNinD/70TWl5uGTqGeKkvBJqxSv2ZHEd9FLGQ6R9487kvJ9aMBeSTl6MYX57jQgOaIJC
         kA8g==
X-Forwarded-Encrypted: i=1; AJvYcCVZ0PN9BcRC8h3FEW6AnUV6ZRW368R/ZC6eBpQ35k7p0Aw1eRdxjryvTjnds/Uida02QTg13i6ubBVu@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4jeQl4DCktR6XTzJA6NdDGgXlL0uD2mIm+mcNQKjlzEPu2yt6
	Lgnz8iogSAkBVKRBzXBwrqbTJq3xsEOJ+vDtsuMBJwIDVZdUmfBEqexADSVts+U=
X-Google-Smtp-Source: AGHT+IHQm8AvqbRlq+Us9nwiXv4QXlkWwfjqJbIZ5ekm5NvDdp7rFZJFhnT0J5xgIqNqiBjstaFupA==
X-Received: by 2002:a05:6820:4c17:b0:5c4:144b:1ff9 with SMTP id 006d021491bc7-5eeab41f3ecmr10418542eaf.5.1731959826665;
        Mon, 18 Nov 2024 11:57:06 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5eeabd520c4sm3043554eaf.27.2024.11.18.11.57.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Nov 2024 11:57:05 -0800 (PST)
Message-ID: <74ae05a9-6fff-4088-a46c-0a68a5b64614@baylibre.com>
Date: Mon, 18 Nov 2024 13:57:03 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] iio: adc: ad4000: Use device specific timing for
 SPI transfers
To: Marcelo Schmitt <marcelo.schmitt@analog.com>, lars@metafoo.de,
 Michael.Hennerich@analog.com, jic23@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, marcelo.schmitt1@gmail.com
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <cover.1731953012.git.marcelo.schmitt@analog.com>
 <284478615dd32deff29e4e10815cb49fa7d3b5d0.1731953012.git.marcelo.schmitt@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <284478615dd32deff29e4e10815cb49fa7d3b5d0.1731953012.git.marcelo.schmitt@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/18/24 12:53 PM, Marcelo Schmitt wrote:
> The SPI transfers for AD4020, AD4021, and AD4022 have slightly different
> timing specifications. Use device specific timing constraints to set SPI
> transfer parameters. While tweaking time constraints, remove time related
> defines including unused AD4000_TQUIET1_NS.
> 
> Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
> ---

...

> +/*
> + * Same timing specifications for all of AD4000, AD4001, ..., AD4008, AD4010,
> + * ADAQ4001, and ADAQ4003.
> + */
> +static const struct ad4000_time_spec ad4000_t_spec = AD4000_TSPEC(320, 60);
> +
> +/* AD4020, AD4021, AD4022 */
> +static const struct ad4000_time_spec ad4020_t_spec = AD4000_TSPEC(350, 60);

I actually liked the way you did it in v1 better. This makes it harder to
see which number is which.


