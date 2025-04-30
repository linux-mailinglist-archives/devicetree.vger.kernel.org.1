Return-Path: <devicetree+bounces-172552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C55AA53BF
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 20:33:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BAE927A855D
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 18:32:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5324264F9F;
	Wed, 30 Apr 2025 18:33:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="kTPTEtlx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C403220DD52
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 18:33:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746038020; cv=none; b=qG769gfd1Unn28+G4M/Zrq6f9hCCtBkCoNI5LYFdmKFrvL2FwXwXNiTgvVjKDi/Tf+84pjN1bw/IDAmEyli/eCvB5PLS572Kr+6kPRpRbdHYNKaPk4hOz6FTpgveVJ3uCrz7rNw1kS7tZ/38vQouiUgKM1QapnQ9swiR9PW9g5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746038020; c=relaxed/simple;
	bh=nvBULGbN7c+mQ9lJkUnAGdBDY74gyxKHw/37B/Drwe4=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=Jx+KNrooHfnIK4b2fdYmgmL8vjiHdm9G0pM2kl4jRAHD+Xj0v+FMQxFvrnknmGH33K5zupTsPTRvwAtLInfcpg++KQwLOErh8sy1JyzauynbkYKVrG9EZsHftJyeP354AO9u69XTwmkyg3FJgQvSuruoQZBobh8W+L4uyRDDot4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=kTPTEtlx; arc=none smtp.client-ip=209.85.210.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-72fffa03ac6so100867a34.3
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 11:33:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1746038018; x=1746642818; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bhh7Yy/ML2gRa+hVqpAWpNr84ikftSdkLJWeAvX4C2I=;
        b=kTPTEtlxgS+c2o1ZOeWyZ7bIJ82T5Obia2zwW5HTjcNMXxgvvtpvVOJy+DL2b2UZ9/
         o5Sp0B/Bhq3cXXOk0zVeilPqjzBjOgFhU8i104lybOHYxJlGQl6/drbHxvK5flLjtCOV
         SswRIm9aCWkRyZYDlFId+QspXpyVQ45620PZdhNCTnIudVn+SMS2RPJnrMU4jwQv3gyn
         Gb/r6W7kbB4TP4VatM19Vaj8h7wRjFY5UuzQF4/opFeJR43BoI1odBi2tla5+rNe3NmR
         e2rgmHpwlGctMAqZ7OUiVwwncORQw6fkYo40KmEnW+59Vmfa+wWXyQ7B8/GBB5xnC+yb
         rgww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746038018; x=1746642818;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bhh7Yy/ML2gRa+hVqpAWpNr84ikftSdkLJWeAvX4C2I=;
        b=gtj6N5bayhtes7fYGlav/uuoRuwX5JbTt4LMhwQOK0ncoK3PM6hsqYWsPRGqAoEv+i
         9fs4X3T+zWy1qIb4Ek2xOH4cWo6w9gIWOKbqoPFPp8zr133FnIEvLc/14GkjkQFFJ7p+
         2gFnfDhQCURH72hl2WqtXvcLXw9J4Wx/LRK+OIrBWQNQH4SLAjyLo5YIqNhg4ZwvuAs1
         Ru8Ch+Q3ExUGsmK8vgR+XystKOyquYKsvBGm7ASqwXAsZknsGCLGxQBjgeKLB9oD6xlp
         2oIAFXsJUF2VtzIztwoZphY+FUNCtDIxpjrsYxo8/T16WmT31nwitD4k3qs4TsGOJV5y
         jSNQ==
X-Forwarded-Encrypted: i=1; AJvYcCXHtOKf3gRy5XXymvqz89eMvFF1QJRKEaspa2jFC2SCuWioKrSgLz++Ji5u4xw+/A7ExUYCF9ns811B@vger.kernel.org
X-Gm-Message-State: AOJu0YzueeNZLJOt3ZEMnBsKVWiPXwe6f9KlfAyC9eXTnwtalXd3jr7C
	hPtgDNABfzjGfzjp9OnirgP11/D/2d9dPrmxPxfSzoSXu78U2Rz5KaYyuv9fIjg=
X-Gm-Gg: ASbGnctYEGd8LJptwWOluPAnlBhILnQK2Cal2IziuVN3yz3e4rjrAWphM0hHiIfpEcI
	MV+ngKEwWmCZhaQ+vye43aVKNTD0LdJuAt5Q5xFEMHSAk0YkUgGCXhvx8ZNesXwcXczYvPnW8aN
	T3jLb+yBIHS5NLyl6ke4gqbPYVcdjZpURvflJ3gl0q7imofiYZz2NyLvsfw5nIZ6/bhIZxi7o98
	RM6xzp/RsKGoZIYLMOb/HM3dT6CR52QNc7idNz3e4wCwXcGTJU6bgkIPjjMTYFEpiLnRv6ODC8s
	2sIfdruQTllsRSyluf6mKyKzvZZwKlSFAWZmNLKTEET1/8IN/0HqUdpE/MiIYvckxGs7a0TIh2G
	w+13dTd6/+oN9YunScV5b/pwLZA==
X-Google-Smtp-Source: AGHT+IHbIjYVljXLsdKYQQWRQpAy+l9KRVU1cV2K69m6KCRFTLwRAoGzT6npWbnEi3pF5FVxdEM+oQ==
X-Received: by 2002:a05:6830:2aa2:b0:72c:320b:fc8c with SMTP id 46e09a7af769-731c0a7c762mr3169245a34.21.1746038017706;
        Wed, 30 Apr 2025 11:33:37 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:359a:f1e:f988:206a? ([2600:8803:e7e4:1d00:359a:f1e:f988:206a])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7308b312cb2sm992682a34.60.2025.04.30.11.33.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Apr 2025 11:33:37 -0700 (PDT)
Message-ID: <b4598086-e188-4dca-b060-0dd82fc79c02@baylibre.com>
Date: Wed, 30 Apr 2025 13:33:35 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] iio: adc: ad7606: add offset and phase calibration
 support
From: David Lechner <dlechner@baylibre.com>
To: =?UTF-8?Q?Nuno_S=C3=A1?= <noname.nuno@gmail.com>,
 Angelo Dureghello <adureghello@baylibre.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250429-wip-bl-ad7606-calibration-v1-0-eb4d4821b172@baylibre.com>
 <20250429-wip-bl-ad7606-calibration-v1-3-eb4d4821b172@baylibre.com>
 <d273fa78cb3986da5249bd800dd25c4c0bcfde7e.camel@gmail.com>
 <9c02b2bd-dabf-4818-8adf-83c9127946d1@baylibre.com>
Content-Language: en-US
In-Reply-To: <9c02b2bd-dabf-4818-8adf-83c9127946d1@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 4/30/25 11:14 AM, David Lechner wrote:
> On 4/30/25 10:36 AM, Nuno Sá wrote:
>> On Tue, 2025-04-29 at 15:06 +0200, Angelo Dureghello wrote:
>>> From: Angelo Dureghello <adureghello@baylibre.com>
>>>
>>>

...

>>> +
>>> +	val += start_val;
>>
>> Shouldn't this be val -= start_val?
>>
>> I also don't think we have any strict rules in the ABI for units for these kind
>> of interfaces so using "raw" values is easier. But FWIW, I think we could have
>> this in mv (would naturally depend on scale) 
>>
>> - Nuno Sá
>>
> 
> From testing, it seems to be working as expected for me, so I think this is
> correct. The register value is not signed. 0x80 is no offset.
> 

Heh, you are actually quite right. Even though it working correctly, it is
because the value that gets written to the register is val & 0xFF, so adding
or subtracting here basically has the same effect. But subtracting is the more
logical way to do it. (I tested it that way too just to be 100% sure.)

