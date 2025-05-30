Return-Path: <devicetree+bounces-181882-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B25BAC949E
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 19:20:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0B3C4A2370C
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 17:20:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 053B623815D;
	Fri, 30 May 2025 17:20:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="WNOPIDUV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C710F2367B3
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 17:19:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748625599; cv=none; b=Y1J9/j3WgidIJ3wH/eEiRgGLOp0O2gcZQfoxWUhXRk/P2bNbkxhr/M0fM/7u/xhCr2yN4hwuxRhLQvO2nn9nTeZtIqUFCYgsAAnRaebLVlZ2QdZOFsygTxuDN3fEvndTO6aR/XKdLo8e9JpIsmCifcQpiV3Kn9tk4RFC+vc3c4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748625599; c=relaxed/simple;
	bh=HMRcBPxFLRL8zWucCrFR6eiWaxDm26zk91Pn6r5m0SQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EaLlj0nMCC0Um39ldMZzJc8ZWqN/byR/gKEJoRvVcEe6JlkueWl0O9nJut9uYlI0DAxvJXD1GQOQDRVgakgVwuq8Snm+kqXF3fEE7S0M7QJE2eUJiMLHlbBtbikI+3kJ21RQHTBYdoblw3zu0eBoYx/7rFwtg4EMFnq2XBHji8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=WNOPIDUV; arc=none smtp.client-ip=209.85.210.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-735a6d7c5b1so1349531a34.2
        for <devicetree@vger.kernel.org>; Fri, 30 May 2025 10:19:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1748625596; x=1749230396; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hl3zg7f8gq+l5qG5ruPbpuE3dBxZAj6EU7u8jCcyDSI=;
        b=WNOPIDUVeE2YKlkm2fPv+ED5hpEx6PWHF8ZiHSCxWdwOrJ7623nA+M19KKjbcoxFep
         K+ozGP8NWQ9bLv/xYGTqMHGJNsF1We7RpJ8pPKyygIO7nMA5Sk7jn48AhHXxk72mqFxC
         Kqdcp/Pw9xMnx6cS5Xb5qbDiZVxHZ0MKAT9aCQLcvqIwwD5hpiUgYgVGTV8/A5U0YphU
         UetP+NzoM5RNdEvFLbWwRW2dfi85OSj2yYhErEo9SkYPBPKFM7M3tFCba24sV6+RADY7
         ynerLCbEJj2jrvP35cQlnPX2FwSLmy+OL85Wkzks+490s9XTZpiZQsm+HvXjAP77OHuE
         fEoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748625596; x=1749230396;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hl3zg7f8gq+l5qG5ruPbpuE3dBxZAj6EU7u8jCcyDSI=;
        b=itv7ATpxQ7fcMIGW8Xba7sl8yHPySxcWhlFQs7Wc3lMfnYV4KpKIrel+WseSiKxtno
         9QIshMSqqTma/zGp6JHs4KwWOx/45fb5gXJ0QjKoZ/dBBv6zrSCUNKTheoRTnwOZfgeI
         ixWZtuZ3RxCX2UeqMX3wdlNuKinRyoO5LpMEBg3UlhF20M8UEtqHWxCwJIoN7sRbORY/
         RV7SD/f1yP9jIFPsfqPIm0BpQPSsR72sU/0NFuHlEI4ctJN/NbSTnvcaJlw5+WctBG50
         AJPQi7wniZ80nKoYqbwW9mVewAPFUOy41m3brLG56nQUj5nEGxWnbqHRx4dwy/hcMTzZ
         DVEg==
X-Forwarded-Encrypted: i=1; AJvYcCXyagyTGKJixfXIx7VLmZflL8nF1wv5LZBn4DqcQDk/pFL0yO4x8+8Zzs0dQOd7nAxquTddik1md4gR@vger.kernel.org
X-Gm-Message-State: AOJu0Yyk9tL4cZ+t4G5oVXXOpIZU6N+qFrDiIMWsmnJs9HVFgI/nts0o
	fK+XXkBYYyQ8AbAXGQknCUhAylm+Qpzvk3b2r8yu3IWNJmC6Zprje58qEFoeebvxdd8=
X-Gm-Gg: ASbGnctxn+BxZcQQPOVUkg41oZ+JdLpbmAMwxS8iP0s8lKb8SH5QHEFrJfjuzKU6Pbg
	7VFwlh8W2Nigqys1HjNbAm87STHHEmQPo5HB/x7nVwO/vd2khy+vyU652bJ5sk5byndV+5ZADKl
	yhA6KtoE9G76GI9h5237S1SEBbSUK7Jgx+PZzQy6nzPwyDB7JJwj6jfk/P4BWIqOj1qUIuTVEjc
	NgrEy1nDAgGZOT6pjziHCdcKhY8/ipRyD4eAtH5ML/WUr4hVN96GjUHBYvkfNFVQOqo2JWa/6XJ
	pvax/JkTQPeLMspBFP5+ZNxGxlojm6y2VGjnhLfeIFasourm5hFhqnuFTukZn4RSRiX34sPowgP
	DE7f4Saq78KKtJU6+8Xx2OKasD65l
X-Google-Smtp-Source: AGHT+IFn+WqN0pov0ImkTs3JeWNX+a1ksqlo179uhSF9zJMLQZ+WbUztQFApqGLg2Obw3Fz5phANlw==
X-Received: by 2002:a05:6871:4f14:b0:2d5:2534:ac19 with SMTP id 586e51a60fabf-2e9211a87e7mr2245882fac.4.1748625595764;
        Fri, 30 May 2025 10:19:55 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:29cb:b1cd:c8f4:2777? ([2600:8803:e7e4:1d00:29cb:b1cd:c8f4:2777])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2e9067a57afsm719360fac.11.2025.05.30.10.19.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 May 2025 10:19:55 -0700 (PDT)
Message-ID: <a6693794-1c21-41df-80e7-69c4242f394f@baylibre.com>
Date: Fri, 30 May 2025 12:19:53 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 6/6] iio: adc: ad7606: add gain calibration support
To: Angelo Dureghello <adureghello@baylibre.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250526-wip-bl-ad7606-calibration-v7-0-b487022ce199@baylibre.com>
 <20250526-wip-bl-ad7606-calibration-v7-6-b487022ce199@baylibre.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250526-wip-bl-ad7606-calibration-v7-6-b487022ce199@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 5/26/25 5:03 AM, Angelo Dureghello wrote:
> From: Angelo Dureghello <adureghello@baylibre.com>
> 
> Add gain calibration support, using resistor values set on devicetree,
> values to be set accordingly with ADC external RFilter, as explained in
> the ad7606c-16 datasheet, rev0, page 37.
> 
> Usage example in the fdt yaml documentation.
> 
> Tested-by: David Lechner <dlechner@baylibre.com>
> Reviewed-by: Nuno Sá <nuno.sa@analog.com>
> Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
> ---

...

> +static int ad7606_chan_calib_gain_setup(struct iio_dev *indio_dev)
> +{
> +	struct ad7606_state *st = iio_priv(indio_dev);
> +	unsigned int num_channels = st->chip_info->num_adc_channels;
> +	struct device *dev = st->dev;
> +	int ret;
> +
> +	device_for_each_child_node_scoped(dev, child) {
> +		u32 reg, r_gain;
> +
> +		ret = fwnode_property_read_u32(child, "reg", &reg);
> +		if (ret)
> +			return ret;
> +
> +		/* Chan reg is a 1-based index. */
> +		if (reg < 1 || reg > num_channels)
> +			return ret;

Shouldn't this return -EINVAL? Otherwise, it will return success for an
out of range reg number and skip any addition child nodes.

> +
> +		r_gain = 0;
> +		ret = fwnode_property_read_u32(child, "adi,rfilter-ohms",
> +					       &r_gain);
> +		if (r_gain > AD7606_CALIB_GAIN_MAX)
> +			return -EINVAL;
> +
> +		ret = st->bops->reg_write(st, AD7606_CALIB_GAIN(reg - 1),
> +			DIV_ROUND_CLOSEST(r_gain, AD7606_CALIB_GAIN_STEP));
> +		if (ret)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> +

