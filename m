Return-Path: <devicetree+bounces-144118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2649DA2CE77
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 21:52:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AEB017A203B
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 20:51:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FFE11ACEB5;
	Fri,  7 Feb 2025 20:51:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="KJUJr+IH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C4A41AAA10
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 20:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738961516; cv=none; b=Rb6/B/jpUqCFI7fMFQVECdL3ZzsaydLB26JOULNfjuuafmwqL/QcRkQ2nFe3UwwOTm2B5uYOkOc7HbRbw32eN9ueoWbw/53loDZFevvM896DEeHDM+qEkikPdE7e7pqxHEFG9VVahr1hW1YMo/3HDsU1tLj60feSrNK7jqigPrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738961516; c=relaxed/simple;
	bh=RQC+JVcE7oBPPVf6dUb0HAwFqj0zvfI+bVN0sQy4rEg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ja3qs4bIZkTYbuAYinay4iXAq3yLtJFrmvOhMAawVjihtDaN43/XydqGFd32zQOmIjskVFcPEa8p1bU15vapQzHReRH4n+6qEW96gmEAE4HfHQ3RVF5ijdkhLcpjxAc2htTvrJHWvuhyh/htwsfI/VCi53edP/IhqjXW6bgEONo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=KJUJr+IH; arc=none smtp.client-ip=209.85.167.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-3eb8559b6b0so1597251b6e.1
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 12:51:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738961513; x=1739566313; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pnjFJvm/loBhaRB23FVz9WTUd+LVkhO9DwWGD+NvqBM=;
        b=KJUJr+IHYSyQoTrXN/ahoQLMNW/lUDwT83LNjzSswRucUk4U5R71qrUbkT/eJ3THYy
         1FbKrGgZ1KNhDHhUD/oV/cydm4vX6Ti9v7Kn0Sk7IUh/dWih17kTtZiGZudvkrMS/+Qr
         gl31efUR/MI2Tlz71qgF0xvPFHjMJJdqZhtDvY0/JetsJOE9jWK0zV15G3xyuXJ3PwGp
         ptzExX/sUyA5FMz8Q0clV1R/w8bL4XNmSfSIpPPSemkAOH3UEoCvWW7UVyRmlKk3oJIu
         Tgw/PdDZv+6EDD8/io4j7+C9kCutAGm2d++jfIjhvtmkUL1Ltgd999qEHm0tk4nc6Szb
         8dvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738961513; x=1739566313;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pnjFJvm/loBhaRB23FVz9WTUd+LVkhO9DwWGD+NvqBM=;
        b=TMxx9Yo3e9VlLhkKANTuLu+tYIN3CpsmNQC6GaTedFq9EzcOx4pl9bS2Sqtl0RvJTA
         m9r3M5RZrcoBjERk4ksotvJjvEH8BAylBOFJyyHuzeSmJ8COKVbZwZLlwST26ar5lP7o
         oERE/o9QhmA2WbSmjyad22Ki/VzNZPXI/tteC2FObWmxJomsSvavxFgie8G1am1Yv+Cx
         3ykmSvBMl5r3g4BG0siFbs7nAxm4+IdlST8xTDzfqRROK+78kHcQrwL8/U+xgs7iiPjj
         r+3pU6b7gEMK4zj0CJKEeTFLUAqcsoUlqwpsVoOcjjGnkdrWpwHlDV6xY3QKhqCSThka
         jHIA==
X-Forwarded-Encrypted: i=1; AJvYcCXeaqICP2OJviJBYuJxstCZqBWternE+93GgNN4AY0rPnjxMiqcTx/RqEWDDLdgWcNQvxrMYBCkeEm/@vger.kernel.org
X-Gm-Message-State: AOJu0YxBcwUUhw9ANX8Mq7vEenP4HVLuXATZM8IeqobxxyMZ+Wr8/OiJ
	U9e9i9OcnX/x9gs1Lc+B/EZLrVMPReHzYlTtKOs2fHlLr5TsVqGyd2sP9rodv59QikmpR4kO3sx
	N
X-Gm-Gg: ASbGnctLrzNUDUF1MOeyLbdiYWcE9Oon3ELL2LzevpuGBE6khcRv0RUosv+dKpsPgf/
	9gy281IE3pamzvSaChTx+L7E6AvhxExK1i4sef6yNveELu6N/Q4gfC5Ag0+hG92K6T1/2AOt8f2
	N6s/TvzS+q5otMhbZERKacl8GGmuX8A7oRfgG2LhwKs+frPcSvSPNotqWysvCJM+9TMvMHJjdZM
	KvS9AVmAaHzDX4+6Sp3bg2rzjbi7JlN2s0lBkB7QOK50UC9bgarnGi8O2pDJTQhRz9A1Ra6qEzQ
	/aUL5jtaZxbckLdrliWpawmxYhW/Ib6AkWPTzma2XVKcn+fm3+kp
X-Google-Smtp-Source: AGHT+IGpl71KycImgNCiKqZctD01j5FGAIb/sziDZ4/boUvxRYPV9jOBLrmQqlA8Jq9Uj/SLiNYj8A==
X-Received: by 2002:a05:6808:2024:b0:3f1:ccc5:26cc with SMTP id 5614622812f47-3f3921e8390mr2962591b6e.6.1738961513542;
        Fri, 07 Feb 2025 12:51:53 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-726af94ec7esm992605a34.31.2025.02.07.12.51.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2025 12:51:53 -0800 (PST)
Message-ID: <e30305b0-f997-4287-b3b5-41646d169f34@baylibre.com>
Date: Fri, 7 Feb 2025 14:51:52 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v12 6/9] iio: adc: adi-axi-adc: set data format
To: Antoniu Miclaus <antoniu.miclaus@analog.com>, jic23@kernel.org,
 robh@kernel.org, conor+dt@kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pwm@vger.kernel.org
Cc: Nuno Sa <nuno.sa@analog.com>
References: <20250207140918.7814-1-antoniu.miclaus@analog.com>
 <20250207140918.7814-7-antoniu.miclaus@analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <20250207140918.7814-7-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2/7/25 8:09 AM, Antoniu Miclaus wrote:
> Add support for selecting the data format within the AXI ADC ip.
> 
> Add separate complatible string for the custom AD485X IP and implement
> the necessary changes.
> 
> Reviewed-by: Nuno Sa <nuno.sa@analog.com>
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---

...

> @@ -312,6 +324,45 @@ static int axi_adc_interface_type_get(struct iio_backend *back,
>  	return 0;
>  }
>  
> +static int axi_adc_data_size_set(struct iio_backend *back, unsigned int size)

This function only applies to AD485X so would be nice to have _ad485x_ in the
function name.


