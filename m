Return-Path: <devicetree+bounces-39279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC5C84BFD4
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 23:08:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F05291C245C2
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 22:08:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 941971BDDC;
	Tue,  6 Feb 2024 22:08:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UprBqNNI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F7F11BC27
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 22:08:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707257284; cv=none; b=DMbH2AsTM7XhSx0cYtfqyOvPbP4UutZbP0rkZ8aJBLjiU4y/+iVbewXJkX1KS8X9Jhj+5s87Upn2PIt9J2wrZnD/vYB2MxoGU0yesJFZCU7o6oe92vbYChNzhQVtd3TKVY8iQGagRDeFG+kThYzGSl0R2uPwPvH4G9EUL8IF9q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707257284; c=relaxed/simple;
	bh=hPRKZZi51+g9WyrFbpjZHxRsBlS9q9w80JuKXIOV1/Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=g/WpzztTZ+SgbCkNDxHwUknWQJp4TbUmyHfkgMAPZr5GHgCN/JYIalUaZvnILad/5WNzSuFdOU6Qif7TDRiwlqdbRGtpl4vWaP9wSvWu9OGQRy6IgD+3FgXKYW4t8vendpSTBwEFp+aAWf84fHJFCyfkIp3+UzuloHzypaBhgEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UprBqNNI; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-40fe3244bc6so9793975e9.1
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 14:08:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707257281; x=1707862081; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6S7GIcAXLkk0GXMtKnA5dQyOGyD0dPq3C40hd8i8kB4=;
        b=UprBqNNIfMpNX8jRZNj94XLLOxbfNuywlzWx+oXa/D5HK8chTNAU9QAC5f+qX2WT+H
         rxMbZfjGvtn+G6s4ji66xxPeh7hvbgLJejxW7ezy7/cIzu3nh4TO0GFljMdbnnsblKDJ
         vGvxhgcf1ZlHX90tonJJM0eKMEIJ8U9Fxyn7LV+/pdlabA7iDV0B+oGbcxvZVEvZrmEY
         AbHBnliqzrHZJM89dLofTS1XyChHuAeofsN5+5kgy2qR6RVnyKNUBaarHLIchKzRNREK
         Ebw0Q/ekK6PDApAd1UFsV7cpJvAio5xoxguD2ireyesuQ11c700xCNeFjJYZSyqTJ/zV
         +34Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707257281; x=1707862081;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6S7GIcAXLkk0GXMtKnA5dQyOGyD0dPq3C40hd8i8kB4=;
        b=R9npHmpjbc0jyq+vcSHf4TwUoPjideduTUHadXZ+y1YSHZ1/aHmUe/0Kb6Ak0nR6jA
         KShDdRttQBXXVkvt9+QNiSaGNFT09SIQjNCA6MtjAmyRVqSs99W5H50JvAB2PThMpS4g
         oAFKIDXPXWLnl5R7D3oO/TuqLOi3+GgU6ckm08zFvY77x9f4dvH2vA65h+NeaoyikxUE
         JPoQ6B0PTQJLd1sotcOcne9G6ODvUo9lnbMAjnfNtIrVDS8PYLOgHuGwWLj5Bylmz90a
         9WVKgS8HeUtgw7jO3SkcwUTpSisPW5wI1V3Cr299Zm08OJbpgkewGGcTHbBYWHdjIfdt
         epYw==
X-Gm-Message-State: AOJu0YwRfRiPkV/cxQNXuJ6CLoyzFy2glKE45zos5Y/JpIq6ohKRVUgk
	nppoXxla9pdYTI1dBw/XlayrnPZWrmQamPY4+DGgF5QZIEkyk7smhP6/MJdnF2E=
X-Google-Smtp-Source: AGHT+IE6l3thIi4hpMOqS++/EuJvHVBlAwLuAS3oY/A7a81wn22o6S8uE3i5NJaFbMm2iIgdVEoeZw==
X-Received: by 2002:a05:600c:1e0c:b0:40f:dd70:14a with SMTP id ay12-20020a05600c1e0c00b0040fdd70014amr3005772wmb.39.1707257280720;
        Tue, 06 Feb 2024 14:08:00 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWTTC0mvHQlth3Wng+Dt5SWRdYHn0dUHP3OOfpzCbI9TBUb/n5ij1do9/CxVtK9T/8s+MVC/8vKwwC6PzEUulPXLsB2GNazpOlQ9d7FGwfkuwe0MmuWWL7s6viPBkBAm9QFU0NJD3AVSjMQH5RyO1gS3ue6iY/sTx22A/Vla0GB+c76eJHzL/3o6T1T5CyZQgdpX1XbHiDj+ESB4pTjYzKL9ROblfxKs51HN+eCPIDLLMeqy37texL+5RhYnpONLgRdJMNElVWiRmdJy79qwpjuqgDKz3vD3ZzwXDAD1GRxxvJxOkscY+dake8rxlMVRpchRUYsB0wWDvtdqoSzgkbQPuK+y4PZlOmOnmPSD67Eb9th9CX+AKbv2aw6Fg5U
Received: from [192.168.43.244] ([213.215.212.194])
        by smtp.googlemail.com with ESMTPSA id s9-20020a05600c45c900b0040fb44a9288sm3226578wmo.48.2024.02.06.14.07.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Feb 2024 14:08:00 -0800 (PST)
Message-ID: <bffe2a23-d3fc-499d-825a-e2fd3c7a9d7f@linaro.org>
Date: Tue, 6 Feb 2024 22:07:59 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] nvmem: core: Read into buffers larger than data
Content-Language: en-US
To: Markus Schneider-Pargmann <msp@baylibre.com>, Nishanth Menon <nm@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>
Cc: Andrew Davis <afd@ti.com>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240206143711.2410135-1-msp@baylibre.com>
 <20240206143711.2410135-2-msp@baylibre.com>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <20240206143711.2410135-2-msp@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 06/02/2024 14:37, Markus Schneider-Pargmann wrote:
> The actual size that nvmem is using internally on a specific platform
> with a specific devicetree may not be known in the consumer code. The
> maximum size may be available at the same time.
> 
> Allow the use of larger buffers in nvmem_cell_read_common() by setting
> buffers that are too large to zero before copying into them.
> 
Can you explain why can we not use nvmem_cell_read() ?



there is an other thread to add get_size
https://www.spinics.net/lists/kernel/msg5075254.html

> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> ---
>   drivers/nvmem/core.c | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
> index 980123fb4dde..6fa061ede605 100644
> --- a/drivers/nvmem/core.c
> +++ b/drivers/nvmem/core.c
> @@ -1806,12 +1806,14 @@ static int nvmem_cell_read_common(struct device *dev, const char *cell_id,
>   		nvmem_cell_put(cell);
>   		return PTR_ERR(buf);
>   	}
> -	if (len != count) {
> +	if (len > count) {
>   		kfree(buf);
>   		nvmem_cell_put(cell);
>   		return -EINVAL;
> +	} else if (len < count) {
> +		memset(val + len, 0, count - len);
no please.. this really does not belong here.

--srini
>   	}
> -	memcpy(val, buf, count);
> +	memcpy(val, buf, len);
>   	kfree(buf);
>   	nvmem_cell_put(cell);
>   

