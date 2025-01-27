Return-Path: <devicetree+bounces-141226-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 59308A200C8
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 23:43:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A042E3A2F0D
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 22:43:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E38F1DC04A;
	Mon, 27 Jan 2025 22:43:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Ig2stEPc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D519018FC7B
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 22:43:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738017817; cv=none; b=J6oojgUlHFLunaGg+eaF2gFJF/gqXfLzujmmcwdn/ZxzBwuT3ihrCOHbALGM3z021U1XyGF4akWCPGVaz5csgJBYChLvYZtQpeU5TkQn5CSzAarn3DPc7n6y6J5AXvl2hoTNAjnNW86uLa0pXV2yeGiRP0C1/iqh3yPmUygT5C8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738017817; c=relaxed/simple;
	bh=nZ2PZDxOYffw3fIxkBpzrvJAhv3ukfRuhS6Z4PMFvig=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IGXmfvtKKn0fmr6hafFYVCxCdC40B+bYDqzyCQ8DS0UL2Ttjj2Gx9OBCYijSbOLJagD0Kizbtkns4msznnjUAjrkbal/X/zLSZOOCOJR4yR2E4AkRK/i/NlSGxoY2Z2hrV4rF0mLYqLA3M2YNGN2dufe9dHfCIzViOoz4GBOiYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Ig2stEPc; arc=none smtp.client-ip=209.85.210.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-71df1f45b0cso2979291a34.1
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 14:43:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738017814; x=1738622614; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zDNkNEpdnFoXUQ60eecA3sCT3Ukoe3YW3y86FzhMNSo=;
        b=Ig2stEPc9y/b0cYNyCeJ1D0sqpPQRAj7i6f5MyzXZW13sMPKsqyIWXnPux262JI6zE
         1AGzynUI3ATgrkag5Ji/XEkZ7P8SxGK9LNfU0Jopw10ndGo1YYDGoy3LpCFjbLHfo708
         3rf8FqyK1ZQ41NIsJPSmo6jeF7CSAoYWHIs4kONzVVR7t9j3ihx0yV3E8rbhhnzheFJh
         +UTyPItc/nHOT2PxjzeFg+2nrx9iHHfWnSbBFWaSEH49T5Ra6XGCgJm287RWcPwZWoTE
         0mpHSiPqWSSPG6R8Y2twkwQjaxx8buNeKe7kwhmJaVlcOtW7yP0cT24GvwIk8g33rVCg
         NkeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738017814; x=1738622614;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zDNkNEpdnFoXUQ60eecA3sCT3Ukoe3YW3y86FzhMNSo=;
        b=OqhreHvILMXltPoaRSqoKYzbt5T4+O7h8mSkPkrk+F+q+w+4TxZBcNML0etXsg3tDP
         ePC+z1COYvCHbASYwDu0hrMlPTkaavpEM/aGSU0I6Fq3/U5P66G7QXLRNrs9YDmMYh4S
         3x7fSGXJiOJW35EXRzYGStAb2tu4TJMm5lfLo1rs9nZyEU+0wu53rtvkGMzN2zun7Qwe
         Zw60LJiSs41Wr12x5n+gVKW8orjGCGbjnO7VxMy+rTdGTzcEWchqmlrIDDSCFb4EIVNz
         QJQejyEGryaVprZKfoUJ7mBmFozZJlWlg4VAwoVQQAmkpDhIL3E/ct5GXhi7+tEwg6Ox
         xELQ==
X-Forwarded-Encrypted: i=1; AJvYcCVJy9JvbZT35JM3B5Cs33w8isM6sI4nqHCz7tJ1Q1mefUQOUUpIGhweFlNOAIQU2dwsVoKugL3Pc91u@vger.kernel.org
X-Gm-Message-State: AOJu0Yyb8e2QgfBWGmcA2XlKiZGcRxVeOJFV20inixiMXgpdVTLKBQHp
	+VGih6wHvplpWRMefB31ndvuoFHa6ynFMkQxEDmP+xYMNk8ApPyaYZ30WfYj7rs=
X-Gm-Gg: ASbGncvOChW769qC/2a7kiQlSPSicY1Mbdulk2PYeNB9XxWOpq3sWKoVKAWnA4QUbD7
	PoUeTuqYUF9sn0BhrrMWsVFKrjR8Djve/kkp9MlBY9hUsd7ufP/oPCkGI6u6WKq18FSi/meTgh9
	ywnaBrx38S0pkH4PpfPDOKaAHhuAD/U6A9WReOTpKrMxdQoF66Ym1pcBgHOmmOAfIqO3PKkednA
	PIdZeVoe0BGOcZ6p3bPIMgU9qlC9qn919disQXnnWxD/cRnmxuueE66lMBaOCuX8XEGAzWjVt7J
	ro5B2/CEr0Hy8jBwKWUlZ5j8s+rckAv83UXnpNmphA==
X-Google-Smtp-Source: AGHT+IGG0EIXQSanj4mI6ftrrsuaTgRbSOGy3aZ/Tc95s25rH1GouqvtWdjuyaKysgGDS1S+BnO9aA==
X-Received: by 2002:a05:6830:6184:b0:71d:ef3a:815c with SMTP id 46e09a7af769-72648bd192amr693896a34.4.1738017813886;
        Mon, 27 Jan 2025 14:43:33 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-724ecda4c98sm2540532a34.7.2025.01.27.14.43.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2025 14:43:32 -0800 (PST)
Message-ID: <3f3bf49e-0797-48e4-a2a9-25b9ad79c174@baylibre.com>
Date: Mon, 27 Jan 2025 16:43:31 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 08/16] iio: adc: ad7768-1: Add reset gpio
To: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Sergiu Cuciurean <sergiu.cuciurean@analog.com>, lars@metafoo.de,
 Michael.Hennerich@analog.com, marcelo.schmitt@analog.com, jic23@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 jonath4nns@gmail.com, marcelo.schmitt1@gmail.com
References: <cover.1737985435.git.Jonathan.Santos@analog.com>
 <722340b0efff3ed22a763ce6581c96ca403316d8.1737985435.git.Jonathan.Santos@analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <722340b0efff3ed22a763ce6581c96ca403316d8.1737985435.git.Jonathan.Santos@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 1/27/25 9:12 AM, Jonathan Santos wrote:
> From: Sergiu Cuciurean <sergiu.cuciurean@analog.com>
> 
> Depending on the controller, the default state of a gpio can vary. This
> change excludes the probability that the dafult state of the ADC reset
> gpio will be HIGH if it will be passed as reference in the devicetree.
> 
> Signed-off-by: Sergiu Cuciurean <sergiu.cuciurean@analog.com>

Since you (Jonathan Santos) are the one submitting these patches, you should
add your Signed-off-by: here on the last line since you are the last one
touching the patch. And if you feel you made significant changes on top of
Sergiu's original patch, could could even add a Co-developed-by: line before
that.

More info: https://www.kernel.org/doc/html/latest/process/submitting-patches.html#sign-your-work-the-developer-s-certificate-of-origin

> ---
> v2 Changes:
> * Replaced usleep_range() for fsleep() and gpiod_direction_output() for 
>   gpiod_set_value_cansleep().
> * Reset via SPI register is performed if the Reset GPIO is not defined. 
> ---
Reviewed-by: David Lechner <dlechner@baylibre.com>


