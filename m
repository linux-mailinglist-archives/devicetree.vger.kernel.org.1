Return-Path: <devicetree+bounces-172741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A37AAA626A
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 19:38:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C5FA11BC1E02
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 17:38:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6705A21D3FD;
	Thu,  1 May 2025 17:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="N7mPn4l7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE1C121C19C
	for <devicetree@vger.kernel.org>; Thu,  1 May 2025 17:37:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746121061; cv=none; b=cj6jDjde1HiPnQAU+WpQd3rBZT2Shqj1hn8vykYja7PPXJ1lH3F2BmXEQru0p8yiQ8R2kIs0msrOnunHaxSAc4Q7D+u03BAthFhcqcLzunp/2KcIXH0F1UcY5wXppact4EmRelx+j0M8C7kZTZFfTmy207LJgbzZVNbRnaCmRR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746121061; c=relaxed/simple;
	bh=n7tCVA/I1yo/yeD9ArRPIlTYK7DJ9Nd3uEq/KLJZuL0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=syubdfgJwfpgZc+UUHTynfyRnNHSJupwSC1P6SAScYHrBA1jV0YRIP5Kch8v4opxCcR3yJ6pVwhsYan1L9JfQ4KSO0h35nWRIYdCNqymO26JMk5h8+lWYHQ/hp8FsVckfqWXuYG0gvaGn8chaU83EAU24ywYZDlhUIoRa0Md5hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=N7mPn4l7; arc=none smtp.client-ip=209.85.167.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-3fe83c8cbdbso382502b6e.3
        for <devicetree@vger.kernel.org>; Thu, 01 May 2025 10:37:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1746121058; x=1746725858; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HWEnf44P8DmPGIbqKOpgVenjN4nZrTylxIuWPEPPN/w=;
        b=N7mPn4l7STX/UPle6TPdABRDCEfgJmCpTTKhpY78WZuotpiwfoee3HSbF+8wk3+KFc
         hNEr9H8XBnLLa9IqE20WgxdrrBXeb96ACL6oqjpMw/8WS4lYdv6LEdSAV6VK0i44/P1c
         mAYVkU3fwHZ9UhhGLfwS8xo/UcfJRMDeFa1tq2WHB3yT+mTLMOt34rA6igfHpAP4FwAC
         exA0CDbX3ehrrWd887v2fjPWYG7p4ndNz0eeE5naBwCC7agxiqD6t78UfmQWxZc67XsX
         klGvrDR8x0hXunQRw6EVHtrzI56TrYCSlepHPo2mFmclzhaCTJTv98F9sJwMicM6Z2li
         AtMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746121058; x=1746725858;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HWEnf44P8DmPGIbqKOpgVenjN4nZrTylxIuWPEPPN/w=;
        b=e+e7m0HP6s3X3GUvRpEiyvSFECnhVpucjysTed/7zcn8oItkzQGLUxlx6XngXmAKUW
         ttoRCc3J0SlMjOVviXbT3/dVK51IzCNaji4al45D7Wamb6VVnPwsQEbHc9UCn3Pl9daH
         ip+3pyq+MiyWnQVq0JoByOr9+VfUrKm/qJw85TudXxVHv9lQEPotsntWXJ4+E5LXZLTE
         5NaunYQx8uAEeGAA9UzwG2lapw053ysOMlvw/FqWjE/nmbi0V0AwIpnN0kdhVCRkZ8x7
         Y4caZu7zXwkWa3MV4w0OE/E9w17wJDpnYrsvtecpYij1x6XqFpu5DnOZBO7oKx9eNOv/
         m5QQ==
X-Forwarded-Encrypted: i=1; AJvYcCXKRykMmfZh4Uu5lmIK9p8cZs5tzdpgFkW59xIHRIfgFHLxYUs0zWXgf/sPFyUxxSZsZKLaJZ2bwldo@vger.kernel.org
X-Gm-Message-State: AOJu0Yxo934Dx/CCsBv5mVu2oE6Qn/5x8KRqawA1Qkkq5bNLLOYVtOlo
	yMsWyPwel6am7iU5fYu70tMLONBV/J4reUg5j4deNKOMi7uFjaZvXscIVyEUavw=
X-Gm-Gg: ASbGncu01byhOq+CoR89JtAUnrJprR7zb3h3TMOXFapcToNwvmR37PAyQmMB9t1/k7X
	KH8NvI8kNZanAKG69KUSpYlwIwQ7O5vTn2A5syATFLDRA+TkHA+ripr1dTHVk2klr8GnUbgkllV
	n+g0bLt52+KunFaAtG2UeUZLi1LZH36xb0iAY+iONj2QO0oUCqEhGWlkgjALPTMtxJ1dJHRF84o
	2bRTMuk7rdrLnJAh0VtxXy98n202vz85vS8DK3k6V8d+pY7v1KFJ4CaxE+3ruvars4tDAPyV58N
	Br4t04yCKN4oYA0b5WpAwEjC5OhHIO9zamt62CCpARxrxpVDeDnn6+OxR3tNNc13GBUBGF9X1VS
	KBHvKh4SxwSrHUplxKRoWTbob1IG3
X-Google-Smtp-Source: AGHT+IGL20gyAz4SH3A+Gml/P6GxXPU0D/byhQ6Ec8A6G16T781jbJMjfC13eZXdeAWXzY911EFxnw==
X-Received: by 2002:a05:6808:1b9b:b0:3fe:aedb:19ea with SMTP id 5614622812f47-4034147912amr63106b6e.25.1746121057884;
        Thu, 01 May 2025 10:37:37 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:b1ed:e5d7:8ea6:40e0? ([2600:8803:e7e4:1d00:b1ed:e5d7:8ea6:40e0])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-607e7cab6cdsm194276eaf.6.2025.05.01.10.37.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 May 2025 10:37:37 -0700 (PDT)
Message-ID: <213ae3d3-b6d1-4808-9af3-36a8cc1f1335@baylibre.com>
Date: Thu, 1 May 2025 12:37:35 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 2/5] iio: adc: Kconfig: add Kconfig entry for TI
 ADS1262 driver
To: Sayyad Abid <sayyad.abid16@gmail.com>, linux-iio@vger.kernel.org
Cc: jic23@kernel.org, lars@metafoo.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, nuno.sa@analog.com, javier.carrasco.cruz@gmail.com,
 olivier.moysan@foss.st.com, gstols@baylibre.com, tgamblin@baylibre.com,
 alisadariana@gmail.com, eblanc@baylibre.com, antoniu.miclaus@analog.com,
 andriy.shevchenko@linux.intel.com, stefan.popa@analog.com,
 ramona.gradinariu@analog.com, herve.codina@bootlin.com,
 tobias.sperling@softing.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250501100043.325423-1-sayyad.abid16@gmail.com>
 <20250501100043.325423-3-sayyad.abid16@gmail.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <20250501100043.325423-3-sayyad.abid16@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 5/1/25 5:00 AM, Sayyad Abid wrote:
> Adds the Kconfig option `CONFIG_TI_ADS1262` under the IIO ADC menu.
> This allows users to select the TI ADS1262 driver for compilation
> during kernel configuration.
> 
> Signed-off-by: Sayyad Abid <sayyad.abid16@gmail.com>
> ---
This can be in the same patch as the driver. Same with the makefile - it doesn't
need to be a separate patch.

