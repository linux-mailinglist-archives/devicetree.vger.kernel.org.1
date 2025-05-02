Return-Path: <devicetree+bounces-173149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D20ECAA7992
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 20:54:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 698F77A6F9B
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 18:53:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21A3B1E5B71;
	Fri,  2 May 2025 18:54:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="YzMBEKTq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8CD210A1F
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 18:54:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746212084; cv=none; b=XkmoKGywhrosW6TazLkXD76737RPPRvlxbBfgkf+/6UYqaBTy627IiJgm6e6apeilbIxSBk6oBm+SL6Igg3z1qbrzSIcxTMK9q8IdndvyYrGzN9Sjhv+hSP1P/Ht/3W5H8wQrt2flmZKLrrT62wIJDn5p8L0hrYwqZn6PJADAJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746212084; c=relaxed/simple;
	bh=etET4InrPZFfLVNbBfsGBvrQq/2AsRr7XUB0q5olziI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eiNc0ZMbVwyskIgzI1kGxhCwkD/HiFstH/V+jSeI+ue0VnnWkBgYfAuheBzAuabcB6K9qNa/ivHqS/sGxFPaDPP0soJ7g/19mdyeRE+u6U02TfFW+5JPMLaln3iTvBBaZub2hYhwqAXL47zJnDWIORkosPLQx9D6ZRQagdCsOdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=YzMBEKTq; arc=none smtp.client-ip=209.85.167.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-3f6a92f234dso1790117b6e.3
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 11:54:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1746212080; x=1746816880; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=o0v5QJaDLKj7eiDa88mbshkSyU/5sC59jCX11a9PYWo=;
        b=YzMBEKTqsD+BZdkWxkpGJMWWMKyilOR4Zmp3PXghZcy3XnI1GKivB83PUGRJ7JJfcP
         WBizkXiGkNBXB7WekDSMLfDGYiIqramxd+gveNRfYU8lIt+9wfqHtri86ltsaH3h2bRt
         32xNhvkfGaGekAGuvbxA6mQFwa95xYDKoUv6FxiwcLRMmqlLq4crT3diNsOQ8gfZ2NEa
         Ha2y12XNj1bnuinvNCLjEIvR/CEpA1GVlLjXPvk4qFzk1ugTo6Z23C3eaEfsMXxFig7u
         Sv7ADOTvUbSSOiMMIwQpRGRuCBVOX55zVE0RFuZLwVaZ6BbvU0sgECkOMYkcjGMlHt2z
         ZyNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746212080; x=1746816880;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o0v5QJaDLKj7eiDa88mbshkSyU/5sC59jCX11a9PYWo=;
        b=ux2ss+bMkaMm3YVGMc3LywUE6XslJYB+os31ZnRNR4qMJSGfaDTuxd8W7Bn3OSBXgm
         NckbaK8cgsW+NO82Xpa+7AgE2VEwJhMANJ3vJ9S7gif+dbqlazOnbnFIRkJ8/na8e1O4
         rmGQjhn2afwwLuAV33Gq5JM9mWydDC85z7Lg7+fO3cJ0u/xgYlEQMXEgvYMjqa7FrHN5
         Mwm3sVQAKZ1hPefBxX3UK06uP4kVesrcVD6Etpg5suo6mKFB1qNB2xFX5+XCxPB1EQoh
         EPFkcRIWqTzIFdvx8+OgMs/yky1pUUa4ow0mZvtMIGpkZy3P2VjMAle89+8egRN6QyUM
         TFZg==
X-Forwarded-Encrypted: i=1; AJvYcCVhi/WDL1v91Qi+yFJSzLidlBpjc2ldkhszrmWs2H/nqzFfwPK/vUjfZtUxyvNJHk4ewsSs+0KcGGzz@vger.kernel.org
X-Gm-Message-State: AOJu0YwydxJidl1XOm8InNtkuY7//JX4Zuj2kjsTf2pcC2vv7VDeNVZz
	WOw4fC3AhfgA41V9RmMAuQQXfcd8dx+vsqJ4o2sMvs0/saf82yPqN0zn4p6nopUJhBYn5hF9yqg
	R
X-Gm-Gg: ASbGncvAXVp1p2lDrnjhKh4itoiMKQ/eJZHvbRtolSLLJQjDXfMj8Oe1mY4Xg+bZkbg
	mBrtLm+wJK1oHoCHVbay+gRYrMLrZBTjkBZPfKRm7JUylnO6Mv4UJapTCH205lWYzuxTw1FPQDL
	Djb0/vv6ASrultQIjUxkgTXd1YiUi4wVTatdODJPkBOFfaDzBME5h0jPHdJk2VgjnYXYv9lAkK9
	GavCT7dLGz5T2S2ki0TFb4NeEzFj/8i+iBnZK8BwjkLvEvjwVJLRvO/KTr12XODyKZHl6wAjXFH
	8WfIGlJNaH5xFK/6zJy92djLIwavYGhoS0JiKrWUn4X0VJAVPmmlokYyuYMSSoTA/4A9Z/7TG/w
	NGxokTD4lCo3a1RYArIHXli+Qv/ls
X-Google-Smtp-Source: AGHT+IGg3NfrHCT9rWDG9WuCsQU3jADp64M+/PiypBGRCbX4Dd8LSeFbkh4aztyl1pAXJ+UtiOQbLg==
X-Received: by 2002:a05:6808:2e4c:b0:3fc:1f7b:c3b3 with SMTP id 5614622812f47-4034148814dmr2250631b6e.33.1746212079887;
        Fri, 02 May 2025 11:54:39 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:4489:d382:ca90:f531? ([2600:8803:e7e4:1d00:4489:d382:ca90:f531])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4033dae382fsm685964b6e.21.2025.05.02.11.54.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 May 2025 11:54:38 -0700 (PDT)
Message-ID: <8ff3f1da-f868-4c7e-9123-00a3c54904d5@baylibre.com>
Date: Fri, 2 May 2025 13:54:37 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/5] dt-bindings: iio: adc: adi,ad7606: add gain
 calibration support
To: Angelo Dureghello <adureghello@baylibre.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250502-wip-bl-ad7606-calibration-v2-0-174bd0af081b@baylibre.com>
 <20250502-wip-bl-ad7606-calibration-v2-4-174bd0af081b@baylibre.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <20250502-wip-bl-ad7606-calibration-v2-4-174bd0af081b@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 5/2/25 8:27 AM, Angelo Dureghello wrote:
> From: Angelo Dureghello <adureghello@baylibre.com>
> 
> Add gain calibration support by a per-channel resistor value.
> 
> Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
> ---
>  .../devicetree/bindings/iio/adc/adi,ad7606.yaml    | 29 ++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
> index 29f12d650442b8ff2eb455306ce59a0e87867ddd..d4b8ea51f60be367e79a4db18d932cbca9c7dc91 100644
> --- a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
> @@ -204,6 +204,15 @@ patternProperties:
>            considered a bipolar differential channel. Otherwise it is bipolar
>            single-ended.
>  
> +      adi,rfilter-ohms:
> +        description:
> +          For ADCs that supports gain calibration, this property must be set to
> +          the value of the external RFilter resistor. Proper gain error
> +          correction is applied based on this value.
> +        default: 0
> +        minimum: 0
> +        maximum: 65536
> +
Max should be 64512.

