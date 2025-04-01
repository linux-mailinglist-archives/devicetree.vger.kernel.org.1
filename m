Return-Path: <devicetree+bounces-162376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE1FA780F9
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 19:02:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 36AF63AC308
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 17:02:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C9F820DD43;
	Tue,  1 Apr 2025 17:02:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="KBREUhl5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6224C1EC018
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 17:02:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743526966; cv=none; b=TR8Nt22/dLH/DDrTjN8ABKFlCRTsnfDPwraHYhuxRMwZ0p6908+PpYs0CGlVJ44LggukIweSF9YBQj+vgbgcfX5V09W64pkqUnTgXmCWn81VNXM32EsFj3l98xcBmwtfwJahDTIy0P4bUwhGEr/oUsWbu2PlEsk/ZIRW3DWm5X8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743526966; c=relaxed/simple;
	bh=+yY04wqEFOM+ZYrFth/D5yZY/advkKXOD7JuGCcg5LM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Zc7B1BTDZ/n1Ob0qaTJv616UnwtEpJB9ymtqnkq4xPZX/SdQLDzEPCY1d9jH8OmfrRQRKF9GBvUJI71smSsGVSmGyIiNf/gGuhtB/e4xbgmq6V7cTcCBITpEIDxDaWL4M099GZRHleHyJ8Bw+ji/E6FBLPxvTuFRJ9MPs3cRxuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=KBREUhl5; arc=none smtp.client-ip=209.85.160.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-2c7f876b321so1658273fac.1
        for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 10:02:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1743526963; x=1744131763; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NhYpDMqUMYzUiHimtNWCc62ZJOtzgSZhsmk4Mla9PsE=;
        b=KBREUhl5LAl3P9+FDvqzWoQ1Y3//h14hlYYTWUf/A0i5onADIoTAjGvzILaZywpe3q
         JQC/V0uBjqpC2nfHtAf4kEcO/QPfCaE+q78PdszU4saGxrXveVbiTrcFefvDwjcLlALj
         osBel5ebQ4XjtnC/OJBY+UNwfCk3tGFPO7IThVVFhR8eWeld3TMUf58lewTdMi4QCzf/
         gCanSIlmg0rK/KQu60Q0VwVkWLBSDU/75WkMpi6RO9NpN0IFpATNzacxBn1DiIMbyMkt
         skK1K4N4bR6jfgzqY2AqxRVRvkEZ2zc54/9hcBVlnAYejQPn6GrMfA6iGhrlLz2+4Y3u
         cjfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743526963; x=1744131763;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NhYpDMqUMYzUiHimtNWCc62ZJOtzgSZhsmk4Mla9PsE=;
        b=RDXv55cg85AGNfWcvhR4iOzwPM96lTwxb4bl7BnL8/dx2dDkwxRFw3BGuW9Gr5xFxd
         Nf0FZ+YeaCPZamfr2Kc7ZYmZuXuG63hbd3gTqV2Obs7FROSJCH+9i0z2d4mlC4usSEz5
         Z54ILrYxt//uHxrG27Ds4AAMd00snfWEjvzXmYKMzqi48VcVikQZk6wv8r1juL6a2voc
         yMQPJRjuPfgxYpYB0Tbkd/RksYNV7c8xf4DBnMNIq/709yeL1lgCWnwKA9drbKxhjIuw
         nSa89iVntOOVojpJy5NPHN0wpIL1eixWCfd7xVaT+YzutcG4nLJb96AObC3sG9OSgJ3w
         +nAQ==
X-Forwarded-Encrypted: i=1; AJvYcCUOXpISUpciEQTYr7eXBRe2YxtqZGZvHq4g0tT0ek7a1PvFOseUyePSs1L2UZ4T/J1gtrJaHPqOfkkw@vger.kernel.org
X-Gm-Message-State: AOJu0YwiEATnesNPghKrGHdimkFgrcc4HxPH6h8ZnMuWxc8M2jehZnOC
	W0tmcUWuxhpSxHVKnDKFyRdq2ZqXgnHJIMSzJxBRQ4ozm1PAeZ72j5BfKAbkq98=
X-Gm-Gg: ASbGnctdRH2WO4qwQg64QSDJL95tI6el0mJOdpb2vARF672kxpBH5jJkXTz9SA8l0r3
	jnGUj1EVMbLhBJkLmvcTXGxItuOEpUt9vhKmt1xaPcFnv9yOLX4feZ9WU2AN+uAU/8sVQLJvCPT
	h6hPV6kNGWKBHgnn7ontPCZGc9QJRiDdIGiaqk3eVpC5WYvuLd9E5YmACk0xIQTz/Bu2yZf15TF
	gF1peJQ5XiXtquLsDEFctHxVtEdJHDyfy4yu3Mv1Tl8/QT2s2D5SaYJScMCTGXVmONEYQXoLt1b
	7iJWv8+72RghU3fZ+icvAnQ/q3QerOvXH6YaCAagQKcwdVJ3xVCWBX14dZmUdZOVuFK8vBYw+4M
	JhMYwpQ==
X-Google-Smtp-Source: AGHT+IGTSq0pqqFQI3H0pT8LDtKLGZr8SAjBhx6TdK6GcdGs7Cr91zaRzfary3Xt+Dp2mNKM4qbHyg==
X-Received: by 2002:a05:6870:548d:b0:2c1:62ba:cd7c with SMTP id 586e51a60fabf-2cbcf51167fmr7167818fac.15.1743526963436;
        Tue, 01 Apr 2025 10:02:43 -0700 (PDT)
Received: from [192.168.0.113] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2c86a4034e3sm2397020fac.9.2025.04.01.10.02.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Apr 2025 10:02:41 -0700 (PDT)
Message-ID: <c5858d5d-687a-46f1-8447-e9c9d802f87f@baylibre.com>
Date: Tue, 1 Apr 2025 12:02:40 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 14/17] iio: adc: ad7768-1: add support for
 Synchronization over SPI
To: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org
Cc: lars@metafoo.de, Michael.Hennerich@analog.com,
 marcelo.schmitt@analog.com, jic23@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linus.walleij@linaro.org,
 brgl@bgdev.pl, lgirdwood@gmail.com, broonie@kernel.org,
 marcelo.schmitt1@gmail.com, jonath4nns@gmail.com
References: <cover.1741268122.git.Jonathan.Santos@analog.com>
 <65bc11611c40d66858fb2ce5c1bbaf7e790a9f8f.1741268122.git.Jonathan.Santos@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <65bc11611c40d66858fb2ce5c1bbaf7e790a9f8f.1741268122.git.Jonathan.Santos@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 3/6/25 3:03 PM, Jonathan Santos wrote:
> The synchronization method using GPIO requires the generated pulse to be
> truly synchronous with the base MCLK signal. When it is not possible to
> do that in hardware, the datasheet recommends using synchronization over
> SPI, where the generated pulse is already synchronous with MCLK. This
> requires the SYNC_OUT pin to be connected to SYNC_IN pin.
> 
> Use trigger-sources property to enable device synchronization over SPI.
> 
> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>
> ---
...

> +static int ad7768_setup_spi_sync(struct device *dev, struct ad7768_state *st)
> +{
> +	struct fwnode_reference_args args;
> +	int ret;
> +
> +	ret = fwnode_property_get_reference_args(dev_fwnode(dev),
> +						 "trigger-sources",
> +						 "#trigger-source-cells",
> +						 0, 0, &args);

As in the DT binding patch, we may need to allow an arg here to be
able to tell the difference between /SYNC_OUT and /DRDY triggers.

Also, in reviews on previous versions of this series, Jonathan and
Conor both mentioned that it would be sensible to allow omitting
the trigger-sources property when /SYNC_OUT is connected to /SYNC_IN
if you want to consider that.

> +	if (ret)
> +		return dev_err_probe(dev, ret, "Failed to get trigger-sources reference\n");
> +
> +	/*
> +	 * Currently, the driver supports SPI-based synchronization only for
> +	 * single-device setups, where the device's own SYNC_OUT is looped back
> +	 * to its SYNC_IN. Only enable this feature if the trigger-sources
> +	 * references the current device.
> +	 */
> +	st->en_spi_sync = args.fwnode->dev == dev;
> +	fwnode_handle_put(args.fwnode);
> +
> +	return st->en_spi_sync ? 0 : -EOPNOTSUPP;
> +}

