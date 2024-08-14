Return-Path: <devicetree+bounces-93592-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 56657951919
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 12:40:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 655A11C21190
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 10:40:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 626481AE858;
	Wed, 14 Aug 2024 10:39:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KNntctkk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0491AE849
	for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 10:39:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723631977; cv=none; b=k5jNSoIr8YjAc8Tx5QEwGEiMrEscd/Jo4AQlIs4OECBQ5geI7L37acnW/M8NQBJ1UgjIZSaAwzCxO0tixYnJO7EYIKuhZm77lTtK19dKxRPM0lKUxj9Mu1a4ZZJDyKbqdOWKjMcQFRKe3m3ap9p1ylQKr6oO3TYojTvdP0IS6tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723631977; c=relaxed/simple;
	bh=++bW5wMefnS7yJM5ubwMFA3JD9os0eJ2KTHGaw/AzjQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HhuLD+7UFXg/7JY5Wv7JoRTssuaoyU3XfZeJdIPicoOliQ2FNQyxPtyjBPpf0NB7HF32q1wjYELPNW36Iiv9UeW3VNaDmdZVkpSdFPc4kAgb8sK+VNecUTiCdwR6JNSLu/ixsxwxm7N0Z/S8ol/REJjCf6zl+NYGdgpu0QYwQyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KNntctkk; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-36887ca3da2so3167220f8f.2
        for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 03:39:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723631974; x=1724236774; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=6WRMEt7FBWJjYyyscCC3U3OCHTs2LMcI2PM9S0kbD08=;
        b=KNntctkkwlaITc52JBEL6nWMWVf20j0PJzn/YgfC9WIUvuWa+5yE5hEGspKRK9xcBd
         3QqaZLOL4z2BZdxiH3ZtqcoLPL0BG8r1Ra7I1QtOfDYQLpRPQtxB97M02di5TyhWGGtd
         +4NnR7fEJ/WY1UIScaSvVEoWRKr6hmf78UYm5TW+ld0e3lp3TqAf1O/JFiDAdKtoa9IR
         2BQDbmhPLnyzRSPji0HBjpLZwJY47Dx8BxMk+7k9HoPqwlVHscbmampGOGo7NQLk4oJ2
         tI+vULF1wzqVgRd4n/9rJVJ/39lnqTu6a+M/C/2eaafsbKPoj/5zYeTjC5Z3BsdbGRlx
         uVlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723631974; x=1724236774;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6WRMEt7FBWJjYyyscCC3U3OCHTs2LMcI2PM9S0kbD08=;
        b=pjX8C2i0Kh6kWjOGZK6LgCq84rXxykOSoaPLV51o8HjL1bgYf0M5qzoVYM+XJ94gjG
         CgXtjSdHyR9RpionUEbxBxswFJ3RgDsWJX6Eqyb2UZ+6glrH7aS5ir3W9OD981M9iYno
         zXsAZnxcuyGjM07y3waInnMfz7dGd/52FbD5oEzsZHhoH9OOs9Z6lvs6WMmwO1fpcq3I
         WwqE0tst7iyw/PmHgkJpYU6i1dqiqtB9S+ZL3G+LUhqYzUPmZ+aeVwTVVD4pZaYd3swC
         EKTKothKowEIPsoxy4k6uSOFzkbr9IMUvuZIldjzpf4+Lm776K6PneltLLXLQVRK8tct
         Mf0g==
X-Forwarded-Encrypted: i=1; AJvYcCVeYvM6pdXRqM/0AKRUltMtjp7pAkhQcSd62JYhl9+w/0KCygubWQCQ9rpiY6DSsUlVK69AzNoQZJ5sU0NDQz2MfmBnPU/jalCvcg==
X-Gm-Message-State: AOJu0Yyz5eoaKwEdsZxRa9SmDtz52jEb5HlWPkW+oWe9f87qmYGkZqks
	qVNMVLCZOvH7JAC5/6fdPCjjjZma2O9owIaI/ZBvYCWzZ/o/ZVkfmh1aeWBz/+I=
X-Google-Smtp-Source: AGHT+IEsFnMkEPMABflOWSpHSTdZcGDUv5V3RMUWkg8aYLGAOnolNRBF80iFXPk0KvmcXBKPYRU9EA==
X-Received: by 2002:a5d:5012:0:b0:36b:3384:40e5 with SMTP id ffacd0b85a97d-37177786e4dmr1476575f8f.24.1723631973511;
        Wed, 14 Aug 2024 03:39:33 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.215.209])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36e4c36bcf6sm12456115f8f.17.2024.08.14.03.39.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Aug 2024 03:39:32 -0700 (PDT)
Message-ID: <1e442710-a233-4ab2-a551-f28ba6394b5b@linaro.org>
Date: Wed, 14 Aug 2024 12:39:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 1/5] dt-bindings: net: wireless: brcm4329-fmac: add
 pci14e4,449d
To: Arend van Spriel <arend.vanspriel@broadcom.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jacobe Zang <jacobe.zang@wesion.com>,
 robh@kernel.org, krzk+dt@kernel.org, heiko@sntech.de, kvalo@kernel.org,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, conor+dt@kernel.org
Cc: efectn@protonmail.com, dsimic@manjaro.org, jagan@edgeble.ai,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 arend@broadcom.com, linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 megi@xff.cz, duoming@zju.edu.cn, bhelgaas@google.com,
 minipli@grsecurity.net, brcm80211@lists.linux.dev,
 brcm80211-dev-list.pdl@broadcom.com, nick@khadas.com
References: <20240813082007.2625841-1-jacobe.zang@wesion.com>
 <20240813082007.2625841-2-jacobe.zang@wesion.com>
 <1914cb2b1a8.279b.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
 <e7401e25-7802-4dc3-9535-226f32b52be1@kernel.org>
 <062d8d4e-6d61-4f11-a9c0-1bbe1bfe0542@broadcom.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <062d8d4e-6d61-4f11-a9c0-1bbe1bfe0542@broadcom.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 14/08/2024 12:08, Arend van Spriel wrote:
> On 8/14/2024 10:53 AM, Krzysztof Kozlowski wrote:
>> On 13/08/2024 19:04, Arend Van Spriel wrote:
>>> On August 13, 2024 10:20:24 AM Jacobe Zang <jacobe.zang@wesion.com> wrote:
>>>
>>>> It's the device id used by AP6275P which is the Wi-Fi module
>>>> used by Rockchip's RK3588 evaluation board and also used in
>>>> some other RK3588 boards.
>>>
>>> Hi Kalle,
>>>
>>> There probably will be a v11, but wanted to know how this series will be
>>> handled as it involves device tree bindings, arm arch device tree spec, and
>>> brcmfmac driver code. Can it all go through wireless-next?
>>
>> No, DTS must not go via wireless-next. Please split it from the series
>> and provide lore link in changelog for bindings.
> 
> Hi Krzysztof,
> 
> Is it really important how the patches travel upstream to Linus. This 
> binding is specific to Broadcom wifi devices so there are no 
> dependencies(?). To clarify what you are asking I assume two separate 
> series:
> 
> 1) DT binding + Khadas Edge2 DTS  -> devicetree@vger.kernel.org
> 	reference to: 
> https://patch.msgid.link/20240813082007.2625841-1-jacobe.zang@wesion.com
> 
> 2) brcmfmac driver changes	  -> linux-wireless@vger.kernel.org

No. I said only DTS is separate. This was always the rule, since forever.

Documentation/devicetree/bindings/submitting-patches.rst

Best regards,
Krzysztof


