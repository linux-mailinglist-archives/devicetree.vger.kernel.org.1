Return-Path: <devicetree+bounces-85660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ADD5930FD5
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 10:31:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6E3C11C21504
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 08:31:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22D701849D7;
	Mon, 15 Jul 2024 08:30:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="GLujtTw8"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E4BA4CDEC
	for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 08:30:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721032254; cv=none; b=YZw6D9bzsTQ2WeLSM9wzFiYSsXV3yqYVcfCgoeBYyfM7C8iZeeJh0BvhawiVMJW6y9cJ01kBIf7HeNIFvaN85eqiVYWcFGNqCHqDwT0JAmJ91DxzJyucx3cGKm2hwbyBrtpXRArfoK7Nc9pOPQXp2cbmHhzSwPvwF1nqCI5PuqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721032254; c=relaxed/simple;
	bh=+1/E7nz2cgztKWaRiX5gV2VSBb3LIiu/RsBICgWkEw4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NB21jbEFXuL7X5vW0lFtUE7U3OkUYgw1dkjkQeBtFH6IvWMw8IHYfMysPzcKe/pbuOp+0LhR5tgOVA12O+Bu1C6BVVYEJrOKg7Oxa7Obwmx2xZVAEcTxdaD9FEePUzGLV0BCEKseHK7Lr1lyGLGA0I8Z2cQ1S/fiTuNyQ7Xrur8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=GLujtTw8; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1721032251;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vWXi1fxR2pAp3kgUhHC9kifjMGGJD4BLGwaCgaR3j84=;
	b=GLujtTw8vWcA9SUck/4m5gaytLyXP8WwfX5ji9EqGkvkFAzg1Z0cVD8+jmlkrI7Dux5sVs
	Guk9tWvQkvJpRI2cOIaueNvAZ3LjPMAtJejOO1mdx/xBkY26f9mzpoTiwsxuMjAtvwKZIr
	sWvMRKfzgePUYVwOvs32bAzZcikbOCQ=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-668-wKFc2elvPCiCVj6CwG7DFA-1; Mon, 15 Jul 2024 04:30:49 -0400
X-MC-Unique: wKFc2elvPCiCVj6CwG7DFA-1
Received: by mail-ej1-f69.google.com with SMTP id a640c23a62f3a-a6f571c3eefso235852966b.2
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 01:30:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721032249; x=1721637049;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vWXi1fxR2pAp3kgUhHC9kifjMGGJD4BLGwaCgaR3j84=;
        b=dwavY00PbRKFr37KlD+CsrRkGYPLn1TPmL+PGIWR/eNYidD0N/xXRv392eIFoFJL7f
         gS80KgHxiGPU/HdBBSJtK1LRqpJjGwEJEGDfZbUKI+AeAkgDpMitGwlYpwR5PcKbm2WS
         uVC+7l5l7zpdlPS8XLWPSvOoHDJvjLmo+gtCEgbrObW9L4te+0yMhcWflhF5m5XqJIHT
         k68GXJPflKRRd4b/OWQXVGvVK0c8rSIsJDK1RR6NZOwG+74Nflmic3SNPBA1ugeyTm4O
         laZmWNxuADoEAzHmaEVID5m4Q/wAqpaDIM7GpXJloohdk4UUQNEm10bJjdQi1CObKAjd
         flMw==
X-Forwarded-Encrypted: i=1; AJvYcCU+9o2DclTMzAYZmdpMs3HWlOj2DG581ByH9A8mg8+q2lfJ/vpS6Ff7a8Ek20Z+qH7k/jxlhy0cto1b+PVPPhir7qmdga68aYx7uQ==
X-Gm-Message-State: AOJu0YxPUE1geSfrcKSzGT/ncLVFwm4OtjG0h+hkME5iNMkfGp4oFSFn
	KLkvmkW3oleWoVqF1rG4+mrkq17ILjvNdOlVAe0eIyCuGA6DBs+krZl3UBAz/IgftKaOKXAWVPF
	h+4wbluVx61WXyVMjL/vXivTqvj77tSf6qnYKuJzU9ZZh8M4i1eXumUHxGsA=
X-Received: by 2002:a17:907:94c7:b0:a72:8a75:6559 with SMTP id a640c23a62f3a-a780b884495mr1463543266b.47.1721032248803;
        Mon, 15 Jul 2024 01:30:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEne3HPmwCYIiZcxI0J78LWeiGMHddXNYIBZCspIEDNUlljKwv120zbOJeXr389b8IYutZdAw==
X-Received: by 2002:a17:907:94c7:b0:a72:8a75:6559 with SMTP id a640c23a62f3a-a780b884495mr1463540266b.47.1721032248465;
        Mon, 15 Jul 2024 01:30:48 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec? (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl. [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a79bc5d00b8sm192741966b.83.2024.07.15.01.30.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jul 2024 01:30:48 -0700 (PDT)
Message-ID: <823ce598-dffd-4983-bffa-32559558235d@redhat.com>
Date: Mon, 15 Jul 2024 10:30:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] iio: accel: kxcjk-1013: Add support for KX022-1020
To: Rayyan Ansari <rayyan@ansari.sh>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-iio@vger.kernel.org
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>, Konrad Dybcio
 <konrad.dybcio@linaro.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Lars-Peter Clausen <lars@metafoo.de>, linux-kernel@vger.kernel.org,
 "Rafael J. Wysocki" <rafael@kernel.org>, Robert Yang <decatf@gmail.com>,
 Rob Herring <robh@kernel.org>, Sean Rhodes <sean@starlabs.systems>
References: <20240714173431.54332-1-rayyan@ansari.sh>
 <20240714173431.54332-3-rayyan@ansari.sh>
Content-Language: en-US, nl
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20240714173431.54332-3-rayyan@ansari.sh>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 7/14/24 7:33 PM, Rayyan Ansari wrote:
> Add compatible for the KX022-1020 accelerometer [1] using the
> KX022-1023 [2] register map as both have an identical i2c interface.
> 
> [1]: https://kionixfs.azureedge.net/en/datasheet/KX022-1020%20Specifications%20Rev%2012.0.pdf
> [2]: https://kionixfs.azureedge.net/en/datasheet/KX023-1025%20Specifications%20Rev%2012.0.pdf
> 
> Signed-off-by: Rayyan Ansari <rayyan@ansari.sh>

Thanks, patch looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans


> ---
>  drivers/iio/accel/kxcjk-1013.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/iio/accel/kxcjk-1013.c b/drivers/iio/accel/kxcjk-1013.c
> index 8280d2bef0a3..b76df8816323 100644
> --- a/drivers/iio/accel/kxcjk-1013.c
> +++ b/drivers/iio/accel/kxcjk-1013.c
> @@ -173,6 +173,7 @@ enum kx_chipset {
>  	KXCJ91008,
>  	KXTJ21009,
>  	KXTF9,
> +	KX0221020,
>  	KX0231025,
>  	KX_MAX_CHIPS /* this must be last */
>  };
> @@ -580,8 +581,8 @@ static int kxcjk1013_chip_init(struct kxcjk1013_data *data)
>  		return ret;
>  	}
>  
> -	/* On KX023, route all used interrupts to INT1 for now */
> -	if (data->chipset == KX0231025 && data->client->irq > 0) {
> +	/* On KX023 and KX022, route all used interrupts to INT1 for now */
> +	if ((data->chipset == KX0231025 || data->chipset == KX0221020) && data->client->irq > 0) {
>  		ret = i2c_smbus_write_byte_data(data->client, KX023_REG_INC4,
>  						KX023_REG_INC4_DRDY1 |
>  						KX023_REG_INC4_WUFI1);
> @@ -1507,6 +1508,7 @@ static int kxcjk1013_probe(struct i2c_client *client)
>  	case KXTF9:
>  		data->regs = &kxtf9_regs;
>  		break;
> +	case KX0221020:
>  	case KX0231025:
>  		data->regs = &kx0231025_regs;
>  		break;
> @@ -1712,6 +1714,7 @@ static const struct i2c_device_id kxcjk1013_id[] = {
>  	{"kxcj91008", KXCJ91008},
>  	{"kxtj21009", KXTJ21009},
>  	{"kxtf9",     KXTF9},
> +	{"kx022-1020", KX0221020},
>  	{"kx023-1025", KX0231025},
>  	{"SMO8500",   KXCJ91008},
>  	{}
> @@ -1724,6 +1727,7 @@ static const struct of_device_id kxcjk1013_of_match[] = {
>  	{ .compatible = "kionix,kxcj91008", },
>  	{ .compatible = "kionix,kxtj21009", },
>  	{ .compatible = "kionix,kxtf9", },
> +	{ .compatible = "kionix,kx022-1020", },
>  	{ .compatible = "kionix,kx023-1025", },
>  	{ }
>  };


