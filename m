Return-Path: <devicetree+bounces-216976-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A297BB569D8
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 16:53:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5B7563BF662
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 14:53:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFCE7257422;
	Sun, 14 Sep 2025 14:53:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dh7Vtmgp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27CA2246BC7
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 14:53:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757861598; cv=none; b=QcAe8ATghjYK0xbMj59RxQB73hTQQR5WzuGXdNO1fryiFzoLg4Co1OrlTKE+ZJT4FZEWWBZope/pjl3jefbUpJpsBpcjCT7y/IAfBiDDFqYMmQ56H8ay4RYXg2yJonKtvGPzj14uGURvQXdcVeTuy2GEsmTvfiVxu8J1cCRufaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757861598; c=relaxed/simple;
	bh=tL6wlBCFB4vOJw5IWTJwcLT6dkp65j1Nm3PGC1bWiPI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gDtS7d+48Dx2ZsSrymSeMqXOTvEOzxJfCppWZYrYKSyySXkn6YnD2RDERHOj6LTJRe8/VDUPqA9bVlQvUrXOvVvtqn+yi2jdz4aS1VpK/Jzf33vO/s9ht/JRKGj2HrBGGYni5xf8+8WKcXaPHCfltEF9eRkgYaw8cCKF99+zYuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dh7Vtmgp; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-45e03730f83so15342855e9.0
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 07:53:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757861595; x=1758466395; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tL6wlBCFB4vOJw5IWTJwcLT6dkp65j1Nm3PGC1bWiPI=;
        b=dh7Vtmgp+nK4i/tMWmjBis28r4+GBo2spOyzcwtoKwcGthF+Dzix6hBNf1dUrjxopn
         daM9b+0ElFf68roOn9qQOSjMvpQXWS3s4n1p7FUSdPFglgZky9XHPhbeZexaNf8NWIi1
         z3aPGS2Fu8o9WEgHjAsOaawP7glfwVzG1NBlcLt77RQ7InmkWaI+jeeZg4TL5Wc3fEER
         Z20f7+iKJBKWCFxBvcz8zQg+7qTItXU4/qHodU7sgcexnNlcDnvBsjY4+xKy7VBC+Mzd
         jw8HcpX43Cb2gYJ8Xglyi6Ojw9g2D6R3FYIkHX63/N4EswKwcwFbqF9kkCqPrz1pT1hI
         jnGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757861595; x=1758466395;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tL6wlBCFB4vOJw5IWTJwcLT6dkp65j1Nm3PGC1bWiPI=;
        b=NeQjKqrIy+AFTHrUsm1IzwTlUPNO8eLIAfvm9b7pceR9HMSK8I9DLWA4j7Y/3/G0Xr
         +XbR0kIkXS9AQR71SvE8pT0WoR6XsE77/y51dY0RTBWmrC/axalGwhZkm6wSArWbLIGs
         9R3Cogf9TebwFcyO8x0WIkMk6cnDvZkl15msM5goDe5w3xzQrv7/BrsDPnDBsgrh0uQI
         AyR8LCypcJHtMgYyMd2PQtciS8+yFsOLebv+HvH1S8Yt/sjUzuw2hZLECx6faomKuDPI
         UfJUaWA/bBUMxEC8J1fWybL2on1h9X46AbbSPAxJYA9ZcczDY4zPjxa6K3BDguGfc0SF
         mqrA==
X-Forwarded-Encrypted: i=1; AJvYcCVO8Y205CyxF3SuadCVoZhClaaA1jL3a0nOlswypYMyN7zdYLpNlevC8s2JOYhFR9ZQRUQrJp9XeGVS@vger.kernel.org
X-Gm-Message-State: AOJu0YzqOE/5dH/5WIWhMZnpKaRPMn9BPXi+nspb1XdF9vewbv8WAyvb
	Vtt9IdmwKpu9qNy2BEtXxU8Mqsf6I3ZL8ODKDPM9jzgeCINaIcU7Er0V
X-Gm-Gg: ASbGnctEjROaZAaZCHVmxhW6XY5FFdTZ3oKmH3DhJA+x6J+3sIQ7dyTwELo0V4KCWIa
	Lsty23m0Z23AmGE8lEPmvfH/ppMpcfbRP2iM5tB9Vk1soiDu4yDWrMR1AhjtUIlnfyDZ7+TmF3e
	3RDSrqCLIIrVVtDCAll/IQSFyVlnwomf9iX6S+3DKCRlyFmkxCBIHdgo56vsZKiqDFTaS0km8ex
	eEiK14ql2y6D5IV8LRwOC+FojvtIhe3aP2o4Z+d/3mx/ZjZkGF6Fs/YlhxP6vPwxvNbUbCsGac/
	wZGXEZVAzU/tMQIZYb7RneI5DLGsFr9NvkdJAKB1rivcBWXjZJLn5BBBHDkq79Q1GoYxwAwelz/
	RlXwVBTOcfZ5bkuh6pwmLB5oPklb815vkF19Hiv3fXIzZvolW+/JvhIbCwNkrFP220DdbK5rY/v
	iQjS5TBeHrtKs=
X-Google-Smtp-Source: AGHT+IHu+SHSikTbZPFSm6HoLGcMUpOh+jIhu5e1VvPHaiwyPzzxrrYzsmlOktlqxwgi0m1GZNbZug==
X-Received: by 2002:a05:600c:a45:b0:45b:47e1:ef72 with SMTP id 5b1f17b1804b1-45f21221d5bmr84887375e9.37.1757861595203;
        Sun, 14 Sep 2025 07:53:15 -0700 (PDT)
Received: from [192.168.1.103] (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e03719235sm137436685e9.1.2025.09.14.07.53.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Sep 2025 07:53:14 -0700 (PDT)
Message-ID: <a7d4d219-9f10-4c46-bf89-f0105fcb4bcf@gmail.com>
Date: Sun, 14 Sep 2025 17:53:13 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 0/2] Input: add fts2ba61y touchscreen driver
To: Krzysztof Kozlowski <krzk@kernel.org>,
 =?UTF-8?Q?Eric_Gon=C3=A7alves?= <ghatto404@gmail.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Henrik Rydberg <rydberg@bitmath.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250911211910.45903-1-ghatto404@gmail.com>
 <a700b0c4-cfaa-42a5-ac87-c2bec8d9bf2a@kernel.org>
Content-Language: en-US
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
In-Reply-To: <a700b0c4-cfaa-42a5-ac87-c2bec8d9bf2a@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 9/14/25 17:47, Krzysztof Kozlowski wrote:
> On 11/09/2025 23:19, Eric Gonçalves wrote:
>> This patchset adds support for the ST-Microelectronics FTS2BA61Y,
>> a capacitive multi-touch touchscreen controller. this touchscreen
>> is used in many mobile devices, like ones from the Galaxy S22 series
>> and the Z Fold 5. Ivaylo Ivanov wrote the driver originally,
>> and I'm upstreaming it on his behalf.
>>
> RFC means patchset is not ready, so please always mention why it is not
> ready or what you expect here.

I'm not sure if naming the compatible as it is currently is correct.
The specific thing about this IC seems to be that it's flashed with
samsung-made firmware, so I need to confirm that:
- we don't want to match compatible with the IC name (the same IC may
be shipped with different fw on other devices)
- maintainers wouldn't want us to merge it with some other driver

Best regards,
Ivaylo

>
> Best regards,
> Krzysztof


