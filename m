Return-Path: <devicetree+bounces-243742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E0C5C9BD79
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 15:47:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 01D954E268C
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 14:47:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E1DE1DF258;
	Tue,  2 Dec 2025 14:47:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="W7MBCM8H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2865518C933
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 14:47:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764686864; cv=none; b=n2f7d8jV57oxrpRC5xopDqrSi5pQD4axPQ2UUbh93sfcdp8QZayvlbt8lXoulIpYBQGJghYt0cjANCJ7rPs16Lyr//A4ooborOKKeN3X20SqVHr1/Bk2+UyOxZbAWQkIPfX6CuxkawyCF9ae4Ti/Rruet59MLZQxsCKmoHax41I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764686864; c=relaxed/simple;
	bh=j/hJMqTXwhzzvBjqIRxoO6jbaLMP06mK7nDDmR4iv0c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eqb/vDSUV5glFzU8wbWho9HPbiKHwJFXiTGNUaPeLZ0ehlexwzRp7vainnIV+r5djjqsCvSptqDjv5L65xqrzkLxMnYZYkEtHkb9KVUMK7IZtCfLVnIR+Xmfb1kerfFah3qOPXAjStSqFLryMH80hX9CAUUEY0qda4yyRrTHghw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=W7MBCM8H; arc=none smtp.client-ip=209.85.160.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-3f0ec55ce57so3456509fac.2
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 06:47:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1764686861; x=1765291661; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+tEzflJd04qeyR/h8UHFGgrO3/py5YXCxp0B1Oxmgik=;
        b=W7MBCM8HskoJBTOULvYQ7+A9nypewqtelbYCDg0f8RXTkhROdZNr53MhlIjRRfxcEy
         Nevya92JE0TePI1W8Ha45FqaSYA6ICOimIX9TmkJ5b+7Ss7NHDBZ1CYn7TMD0shlMulS
         Dc6J/QJsGVev2KHugDAkPllqPzK9rZbSvcRHH5a8zok/clCkOUd73LKxi0kfMjuCv3AF
         dMlJtXGkCViKj+cFVh3np5hmSdA2lcCJxZbuIlK0kreTmOyqX0BJes66D9cG7lbAd6Ky
         TsoSzY888Z1wpsRqljJAULHUcxKyYqz47VBg/d0zdbs43mAml6fg16GRJgXpaSYDe59m
         m6iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764686861; x=1765291661;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+tEzflJd04qeyR/h8UHFGgrO3/py5YXCxp0B1Oxmgik=;
        b=A8u9ch8XEybt4ihPv4Ndjwp0/YkWInw6T4b+HGFKEWqXmci3e1FsscE6EiqZK9dE33
         o9660PwVi4lbNsJlVJk1qg9m6oVNaNYGc8MvEo4FyDlPRSaUy3v7j5XAep6bgNKFEZU8
         JR8Ej28Ru9mirm/97cMXWJl2OCkM5i/XDhanEEEmfniPBtH3i6XWf2i0/IXJRi2NOHt3
         vcrFgl+cIIn30oVC3sMoYpvhKUfS2BwGZSyfsgXr4k/EosAX87fT3Gf7Zs6anfuUQgc7
         P5YT4W40C8l1f0nS9jgChfsf0EzR+OkhMgDTUSNKc+N9OEdPA0QY81gwwDf3CTgJWnRs
         GDMA==
X-Forwarded-Encrypted: i=1; AJvYcCVFAked3T/lDVX3DvmgGLuqQvJ4H+FGMMIWNu+o6a1MYh8gVOzlaIW6+M7pBeFt7YtO3WLxaGD8lXvO@vger.kernel.org
X-Gm-Message-State: AOJu0YxUQ7kJl/Kogq5r0ft5mL4G8Ynb8tqyz7JSNieJZIn9UQpS70Ms
	bPI7al02juRSkhewWAZlk5zSnbftt15/N1pPhxzch/Sm0CdXW8obxY/dRv4wFG539c8=
X-Gm-Gg: ASbGnct0RY08VskOU54qTtyOfEZoFKvn4LaICV6wM9fZ0gSB6fDhYW9GZ501fisGEf9
	aqWR74bE+3we0uT0OzruuHCkom8bM8ai3Gf0dkdNI6KiYNxpQIG9D73sb0Yhvi6iGtYSavFdE+b
	biQedrDVJHituLeHgxdNizPd/80RwspqsDGWB6XlrEA4qbzXvJy8hp4QDTh1qA8O3xmrb+8+c6a
	dSYAKsGVIxkcFijFBUvjv7ja0x6BmU0IFm8dyunFyG7h///rULOj27XaODAAT36J8yCB60LpvkQ
	niD5jSSwCwyBlX6dDFC3PENmnLMmMDUnXbBeZvTBzWSFIdHLw58aAjRXyYYV8sL/crIKtcjPnt6
	Gelp4l3fMwV1E2DdhvwM2X7QMqnRx10DiUWnkkXLZrOF/Q9ZVaYSSabEM0VLKBpmfr07ybZqJu+
	mPg20WraF6rlvP76wdp5RXM77zCyF/Ii4stYaEIQMqXQz5QV6tC6ras+PqbNCw
X-Google-Smtp-Source: AGHT+IFgYmrHE78K2ff5Q5D4WQZpVhHqerF4eN/B5q1CnMh5N4a8DwGM9R9To+9W7QSfdd4c5rIlbQ==
X-Received: by 2002:a05:6808:2f15:b0:44d:ae60:6606 with SMTP id 5614622812f47-451159c7a46mr20381289b6e.13.1764686861256;
        Tue, 02 Dec 2025 06:47:41 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:8f05:e265:a988:1b22? ([2600:8803:e7e4:500:8f05:e265:a988:1b22])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-659332cf153sm4138532eaf.1.2025.12.02.06.47.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Dec 2025 06:47:40 -0800 (PST)
Message-ID: <f6f66056-f508-497f-a1a3-f4d933754859@baylibre.com>
Date: Tue, 2 Dec 2025 08:47:39 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/7] spi: Support controllers with multiple data lanes
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Marcelo Schmitt <marcelo.schmitt@analog.com>,
 Michael Hennerich <michael.hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andy@kernel.org>,
 Sean Anderson <sean.anderson@linux.dev>, linux-spi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org
References: <20251201-spi-add-multi-bus-support-v3-0-34e05791de83@baylibre.com>
 <20251201-spi-add-multi-bus-support-v3-2-34e05791de83@baylibre.com>
 <aS77X7T50D8x6yZR@smile.fi.intel.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <aS77X7T50D8x6yZR@smile.fi.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/2/25 8:44 AM, Andy Shevchenko wrote:
> On Mon, Dec 01, 2025 at 08:20:40PM -0600, David Lechner wrote:
>> Add support for SPI controllers with multiple physical SPI data lanes.
>> (A data lane in this context means lines connected to a serializer, so a
>> controller with two data lanes would have two serializers in a single
>> controller).
> 
> I'm a bit confused. Does it mean the three data lanes require three
> serializers?
> 
Correct.

