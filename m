Return-Path: <devicetree+bounces-244932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C5847CAA4E1
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 12:12:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0C32730B8E76
	for <lists+devicetree@lfdr.de>; Sat,  6 Dec 2025 11:11:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 920F92F260E;
	Sat,  6 Dec 2025 11:11:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="QEpcormi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2187A2046BA
	for <devicetree@vger.kernel.org>; Sat,  6 Dec 2025 11:11:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765019512; cv=none; b=GFsGBwYlulK9kBRhqKvoNW1zuNIO0WoX1/1ChNEyZFXVwF2++8M0u+LJbrD/CXhpGdo7cnYlMDjkAwqN6kyOKmzNyiQuTcNWKrunNBxEMA/EkMQFBG0eaQv1NAeB5UM4htxDgdt4kKHGPHBoQMYQs5kvFHyNVNJ8NEFA1jdWzyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765019512; c=relaxed/simple;
	bh=i6DFH1owewNhW67SaCjr52SMT9liSY8pPxcicJCPwkg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SbCbfDm8HF3MiDrX9vvPLtrqN2eMW+bHzK4NfQD4+ftftKop+4KIRcGBw1RJr5X0oQmX7Scg+QkwPoaM8+Rhy8LmCEu9pBrjWKW2DY5GiDbEFSgA93KrpyJC6mNkskj3pj9JQX1/25m77MiRwQ/9DQuIq+n76A60Y9WoSgPhozI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=QEpcormi; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-477aa218f20so20002035e9.0
        for <devicetree@vger.kernel.org>; Sat, 06 Dec 2025 03:11:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1765019508; x=1765624308; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kA4dYuB49zNcflG5vvLKKvtHOONzwthyiF/LnUsNAAo=;
        b=QEpcormiRUQoWpOAd9BKXD8tVp1JKrmxelxLLiHPMmoMhrXelQfwXGLFzjkyb6L8JM
         E7+AHRcMxNk9TCR9wE1usq5zOtI/zY+laCb5i1711Bq3nFSMht6PInpXVH2zu0/qX7Je
         ADreAEEJBMv6n3sJtb2y19MAD4OHufDYP4jS+PXmmwk6Vytm9hVQoQf1/mk1dcA2GIBy
         1wVoshSzXVFqE/S9TQ6uepyaRjcFZOotLPa2Ku/T7VRRwcFbSk2ZjGMRi9WeaJ8Bjf2m
         f1VosxKI1ZlrwarYeaaXai3flwCv6QJLpgznhSvac/WvqQYD24xStPpTQ7ECG+y6BmRj
         oW/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765019508; x=1765624308;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kA4dYuB49zNcflG5vvLKKvtHOONzwthyiF/LnUsNAAo=;
        b=gDCOtbTVYGejMRDSUtHUIivyttT/3jHbzQbGPOw9+b1kZG9B09HV/n2KqHd9LWPSvk
         DTQMSHStZ0C5/Uk7sQ2tDl0KDyNmmmOUxkyZcHHQauUn2PPRDrb6OajqHX62oqdxDufX
         2JKAW5f4G3b5lgxScJyNJqCrhjhJF8vohcjCbdHf58eWedZYhuMAf3EWJBMFFpQSIWOp
         C/IZWT9FEemoAnFZX3pNjH4TcceY4on7epi+cEwQi9PkpR63hL5hbnN753bcKEU0TY+D
         Sm79eiSZwWE7jq1iVfs4Y9TFmb2CZJrqKIZo0uw33lIucx0/4QfZAFOpmuk4Ynam+V3I
         oKyw==
X-Forwarded-Encrypted: i=1; AJvYcCUtbh4wZRUFgjDhRcxS0xG8vt2sBlm4lhhUd6g5XBGugDR8xUeWR+OUJ3Jz2u2PSMmkkhMLFG1vxSQN@vger.kernel.org
X-Gm-Message-State: AOJu0Ywx5jqz9DhbUlpnHBdIyMl05wa3C5jcRc+YVurbws8cpHwUYK2X
	OjMpRA9N+OXwRM1GpS7IwzimK1tetNkcjWnfotwwWqdspaAPC4ZJ+NWpZs0LLqzAQWvh4pMgAaq
	mgeGq
X-Gm-Gg: ASbGncudhDjgq0ENUDH2i0j/oc7FO0HOqYoPAn0KFloDlfhwdDH2LIyVII/VGoxWvM5
	FOdf984duwbXAPD4rWa1eU5JTEdg5J7JbsCHaO6A4A8GcNlAye4s0a6RHpuWRbcKP7RMAishgNk
	iZGlFDw+apsVQ24Moz91mNq5+adiC+W3ZpLN2RRQJtNzo+g22mfDkSON7mggnoY/BkBufNhG1zW
	a2pS52gyqeZiIoe5PHQr6/KbJPtiBN79Ki0toQtDrDSUPHHGhBPahvu2aT3Q2JLd6oNS6QNMIAD
	4Y0Llq7T0MeCa5fAxBEVsMbJqtZjlOlAau4gLRdC9BD2rILRuQ732zwB95fh8LJ1esmqhPUFszf
	9Ti+7e61c9ncVDvb7vyLzXZrxv/Lz7P1Z1uzfl90jgK6e8vkeNoZuOvtQS9+1HM5StgdVemBmr6
	naJv2rKT3SiMgsrMFcMMM=
X-Google-Smtp-Source: AGHT+IEXAY0hNz2eOSoL0Hv03FAjM8+tLdCbApP/CpVTsWfXGDNXQB9mZEeEHfi46Teq/N/IO2sImA==
X-Received: by 2002:a05:600c:621b:b0:477:55c9:c3ea with SMTP id 5b1f17b1804b1-47939e50ce2mr25774055e9.35.1765019508463;
        Sat, 06 Dec 2025 03:11:48 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.134])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-479311fbaf4sm124579745e9.15.2025.12.06.03.11.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 Dec 2025 03:11:47 -0800 (PST)
Message-ID: <ae7dd616-f09f-4729-a15c-411d964461d6@tuxon.dev>
Date: Sat, 6 Dec 2025 13:11:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/3] clk: microchip: drop POLARFIRE from
 ARCH_MICROCHIP_POLARFIRE
To: Conor Dooley <conor@kernel.org>, linux-kernel@vger.kernel.org
Cc: Conor Dooley <conor.dooley@microchip.com>,
 Daire McNamara <daire.mcnamara@microchip.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-riscv@lists.infradead.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org
References: <20251117-shadow-police-56aba5d855a3@spud>
 <20251117-bulgur-wildfire-a8c5a2b417dc@spud>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20251117-bulgur-wildfire-a8c5a2b417dc@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Conor,

On 11/17/25 17:35, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> This driver is used by non-polarfire devices now, and the ARCH_MICROCHIP
> symbol has been defined for some time on RISCV so drop it without any
> functional change.
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  drivers/clk/microchip/Kconfig | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/clk/microchip/Kconfig b/drivers/clk/microchip/Kconfig
> index cab9a909893b..a0ef14310417 100644
> --- a/drivers/clk/microchip/Kconfig
> +++ b/drivers/clk/microchip/Kconfig
> @@ -5,8 +5,8 @@ config COMMON_CLK_PIC32
>  
>  config MCHP_CLK_MPFS
>  	bool "Clk driver for PolarFire SoC"
> -	depends on ARCH_MICROCHIP_POLARFIRE || COMPILE_TEST
> -	default ARCH_MICROCHIP_POLARFIRE
> +	depends on ARCH_MICROCHIP || COMPILE_TEST
> +	default y
>  	depends on MFD_SYSCON
>  	select AUXILIARY_BUS
>  	select COMMON_CLK_DIVIDER_REGMAP

This doesn't apply on top of the current at91-next. Maybe rebase it once
6.19-rc1 is out.

Thank you,
Claudiu


