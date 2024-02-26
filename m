Return-Path: <devicetree+bounces-45829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 518BC866ECA
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 10:39:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 751661C24454
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 09:39:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C8AC76C89;
	Mon, 26 Feb 2024 09:01:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cYs9vVaP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C46B1CA81
	for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 09:01:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708938097; cv=none; b=uApO/6GpgEl1HcfY6sVZJ+3LBiSO/gaD+ZAqCWEzgqGqbxhQ1uNnCopWcICkQH1UkknDqwuggqSdYF4h0OHzlE6Aqa94p/nJx1rWDjz7CUIiQX2lAnYv5XUt3fHDd/vGeGgs+AuztFZEmsZ6kygR7WwmdmwK4DJIXwJWLPG909M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708938097; c=relaxed/simple;
	bh=jqtuVKB6jVpeIk6g8OR6wf2uee7/sWQBcCvsmRCqn5A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uahca4kubAiwDTqhuQXsH1bFltHhkTpjIGoxRpSkbvdusXhICx4fakl4dgEu4FBydLvx5BwtA37PnR0ZRFUa1psgngyYJMBNy93rL5cZ+0BvV2XYK/tWrB5pEral8QBRB225qmLAjggZGTLlPy1/lcFL4Z7EELzqB3h7zlcGl98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cYs9vVaP; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5656e5754ccso3393233a12.0
        for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 01:01:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708938094; x=1709542894; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jqtuVKB6jVpeIk6g8OR6wf2uee7/sWQBcCvsmRCqn5A=;
        b=cYs9vVaPU2qw2D+tMGc8DpRP3CllhHs/WNdTgqmDJcrHqqk5wl/Nt08DiFN8mkVHHs
         I1XoYliC6hgxLo6wxuE23bmQ7cb8fiODIdH2Nvki6DvFSC8Cn/Io/nXTPGZvAR8ZKdPc
         nYzJMXmSM0us61Ljm+fA3TglOrZb12AjDnV8z6WZCL6t+mQTqd7prnl5eH3ix2+leZYp
         0gUDXQj3ztQRGe5GBzUSpTkBGWnmfzhk9e/gHtjZ/oAkagtix/UwubFCn/z80HWfRlx8
         nha85jwp7HaVMRLBJZlXjUZfAruYOuA8tDUQNXkoiQ79cmPRxiF2aVCqsnmfoFKhwxdX
         uLeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708938094; x=1709542894;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jqtuVKB6jVpeIk6g8OR6wf2uee7/sWQBcCvsmRCqn5A=;
        b=KKY6oubIFDdjOGB5rSy8aTXpBEDvm59YkTTYoFoCkzqEeU9IXTgKCm2fQXWsghOQQ5
         bS45qw5Nz7c4ZCamdENIyg0tN3MMYtALMxy014q8hnoTLAPrwnTjJtIZ5CYyEXJhr5Wf
         3J95uW7xhoBtvNxhWi94iSWONJJH/m3vyDjQPoYrxD0gvxu/tPnNDnWuI6/hsnwoREXp
         Lscw4aiAzg1LVM7+2jhePS4i48C5s1dfhRkc4eYG3RpdIPht//IZpwsFNJT/X4uWThNX
         GYGzOi0tIYJ67FF0Y7pU/dr9h60rR8jol7qtsUsglYhvTIqs52zQ7mCPVLFhvJJA7usB
         5L1A==
X-Forwarded-Encrypted: i=1; AJvYcCUu+5olIH5EIpbYtbkUMeSKKIgrwo2RY7ZgUUYynlzxpYIWcsH6+uNsfowoFf3ktjg/A7RSSVXchnlSPle3Uz2IOlwVupsN85YTHA==
X-Gm-Message-State: AOJu0YxraNoB7QmPRxQRdX1io8rDXMIABA71EHxFQgWFAxE4IbQv16EA
	cRi5wwS9PaeRgMtSxqjcR8NZvjx2VwswWJAe0XhPBk4dEi4tO0mpDEbAzKkLFLk=
X-Google-Smtp-Source: AGHT+IHYQO855QKpEJ9PKTw5O2ZHBP94gVAVsTlS0xAVc4G1TUoaOToo5rPnbogPFB2MPO+0r97JBw==
X-Received: by 2002:a17:906:a405:b0:a42:e079:f94d with SMTP id l5-20020a170906a40500b00a42e079f94dmr4095380ejz.57.1708938093715;
        Mon, 26 Feb 2024 01:01:33 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id 7-20020a170906308700b00a3e799969aesm2178043ejv.119.2024.02.26.01.01.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Feb 2024 01:01:33 -0800 (PST)
Message-ID: <91f29265-36fd-4d0e-99b1-61eaada59601@linaro.org>
Date: Mon, 26 Feb 2024 10:01:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: iio: gyroscope: bosch,bmg160: add
 spi-max-frequency binding
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>, jic23@kernel.org,
 lars@metafoo.de, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, hns@goldelico.com
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@pengutronix.de
References: <20240221174305.3423039-1-m.felsch@pengutronix.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240221174305.3423039-1-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 21/02/2024 18:43, Marco Felsch wrote:
> Make use of the common spi-peripheral-props.yaml to pull in the common
> spi device properties and limit the spi-max-frequency to 10 MHz as this
> is the max. frequency if VDDIO >= 1.62V.

The example uses i2c, so I would expect to see in commit msg explanation
which devices are SPI devices.

Also:
A nit, subject: drop second/last, redundant "binding". The "dt-bindings"
prefix is already stating that these are bindings.
See also:
https://elixir.bootlin.com/linux/v6.7-rc8/source/Documentation/devicetree/bindings/submitting-patches.rst#L18



Best regards,
Krzysztof


