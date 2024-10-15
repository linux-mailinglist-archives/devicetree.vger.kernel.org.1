Return-Path: <devicetree+bounces-111483-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA1699EFC0
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 16:38:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AEA9EB22769
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 14:38:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFC7C1C4A12;
	Tue, 15 Oct 2024 14:38:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="kcl1rTj4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E62821C4A03
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 14:38:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729003112; cv=none; b=WzsThH5RjOjeny6nsRwI4gDgiGC6K4AGXvsoaEPOQIWnriZreCZL974v+0H5+grZz3PkjgAuir5dOLpPx/WUxhGO9G9pnZf2kF048vk/UIlUPPKXAcZTi909k+xp2W3NWX0BaTBKz+Vglce/zmWbZ+RZcf4yD7mfraDnBe2hRmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729003112; c=relaxed/simple;
	bh=bGe7uxhpHxu3eQgZOBMZ7RzPKw8tYLJ/1ZxNYAJpONU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gqEIV04OaikkMS7MMiOmK70LJXr6nNbJFBh+axbcDuGckKKaTPnIPW/BJzexxIXZoKsXTomOzgkk7KB8/VR28SSGaryDSY1TT6YeFUlxkZf27QROX2S7uRfSa9KskTi01nTrjIv2fcsWtS1rANgyBueQ1g+7gtUXVPCDNR9ALig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=kcl1rTj4; arc=none smtp.client-ip=209.85.160.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-28896d9d9deso1404485fac.2
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 07:38:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729003110; x=1729607910; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5hi7zBVgndnwQX01Ty7toic/X9giPub3nHqkgUw6waY=;
        b=kcl1rTj42Lf8UGTs41fBak5rW/mxBOstjXlyPR1nB41+kGRlpU6uYQldP2kOPrb7r9
         f/ImFCpACHkdFw3rv8wm3+qhy/Vio1HF4EfOObzVNQyqedhFNmnzBEJwFgLPEkPb95/Y
         Hdtrd5ztv3tV/lr1Sha+ccoZIxVbPpjDX1nsvCtfV9Xd2etW5IsxEX203aurunCyrBOL
         DeB5oWscSPD3iepbmxGD8EUpK2mJaa1O1c/IeWVWHEjbVvdLMnxMkHJ18fWMNwdQ01BR
         lF6X6L6bbZFaitUbqb3a2pcwMMTQjTuuaOPuTM+8NL/Mq82MjzrX96qKalBluGGdZv9/
         vIAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729003110; x=1729607910;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5hi7zBVgndnwQX01Ty7toic/X9giPub3nHqkgUw6waY=;
        b=XCd8IdbHPWAzCWS6Xm7TMr04FvjW3m9A8bnrk3tTqn7JZFIY6uPFwiaXLPG2lIMCEp
         xRkbxEfBqr6rZGOezKR0490I9p9Kg0otwkIkiTvTMMwjHpZbnJHzLJtA6kcfDFBqQAQw
         XPviLK+jLljE+Tnbpslo6LS4TMATp8wyrJKGypB0fZEmBahg5MLbeSjYxFYV/LCzW7SJ
         iHu/cPexl3u/ROP+ILXRZGLFYOFlfAbtOnd9IduNvNEA+bDCET6/fzJHD2uITLbesgVb
         h/on+EpcABptumFd42zsD+10kXyHyoVoCm7tFlq7+S9GufwibnVC4bWJDJ1wtZtbN3AB
         K1+A==
X-Forwarded-Encrypted: i=1; AJvYcCVj3H3j51Y46MlzYbxnUp4SrBd65JZ1Rcs83Z2LBSvNiSBBO3TNEIEWjOM+tWo/NHMqqr61eakUMsNS@vger.kernel.org
X-Gm-Message-State: AOJu0Yywwg2ciVPNsIQ/ilxvV3jPw/D4EuSe7hV6QIIkwOaBDf/b27PH
	FJF4YfXgHkA24K79vtJFk8tH6KEK9h2t9tySUjCiy0UQMXH3K+Rnq1IMI5PgeHo=
X-Google-Smtp-Source: AGHT+IEMDvIg4Vgn+F1odN9xEZUpKQI2xdDrhvjJ0fLjwowbOOIHO+Da7a7B2ILJwx9yw0/uZSU7VA==
X-Received: by 2002:a05:6871:4418:b0:277:ef62:e6a7 with SMTP id 586e51a60fabf-2886df8f33emr11046308fac.37.1729003110044;
        Tue, 15 Oct 2024 07:38:30 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-288dae4f062sm312861fac.56.2024.10.15.07.38.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Oct 2024 07:38:28 -0700 (PDT)
Message-ID: <2815c8b0-e2ad-47cb-b5aa-00297cf57899@baylibre.com>
Date: Tue, 15 Oct 2024 09:38:27 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 7/8] iio: dac: ad3552r: add high-speed platform driver
To: =?UTF-8?Q?Nuno_S=C3=A1?= <noname.nuno@gmail.com>,
 Angelo Dureghello <adureghello@baylibre.com>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Olivier Moysan <olivier.moysan@foss.st.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>
References: <20241014-wip-bl-ad3552r-axi-v0-iio-testing-v6-0-eeef0c1e0e56@baylibre.com>
 <20241014-wip-bl-ad3552r-axi-v0-iio-testing-v6-7-eeef0c1e0e56@baylibre.com>
 <c3d55f78-5a54-49f8-b6a1-4ed0f24f8666@baylibre.com>
 <8642bdb546c6046e8fe1d20ef4c93e70c95c6f71.camel@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <8642bdb546c6046e8fe1d20ef4c93e70c95c6f71.camel@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 10/15/24 1:37 AM, Nuno Sá wrote:
> On Mon, 2024-10-14 at 16:15 -0500, David Lechner wrote:
>> On 10/14/24 5:08 AM, Angelo Dureghello wrote:
>>> From: Angelo Dureghello <adureghello@baylibre.com>
>>>
>>> Add High Speed ad3552r platform driver.
>>>
>>
>> ...
>>
>>> +static int ad3552r_hs_read_raw(struct iio_dev *indio_dev,
>>> +			       struct iio_chan_spec const *chan,
>>> +			       int *val, int *val2, long mask)
>>> +{
>>> +	struct ad3552r_hs_state *st = iio_priv(indio_dev);
>>> +	int ret;
>>> +
>>> +	switch (mask) {
>>> +	case IIO_CHAN_INFO_SAMP_FREQ: {
>>> +		int sclk;
>>> +
>>> +		ret = iio_backend_read_raw(st->back, chan, &sclk, 0,
>>> +					   IIO_CHAN_INFO_FREQUENCY);
>>
>> FWIW, this still seems like an odd way to get the stream mode SCLK
>> rate from the backend to me. How does the backend know that we want
>> the stream mode clock rate and not some other frequency value? 
> 
> In this case the backend has a dedicated compatible so sky is the limit :). But yeah,
> I'm also not extremely happy with IIO_CHAN_INFO_FREQUENCY. But what do you have in
> mind? Using the sampling frequency INFO or a dedicated OP?
> 

It think it would be most straightforward to have something
like a iio_backend_get_data_stream_clock_rate() callback since
that is what we are getting.

Re: the other recent discussions about getting too many
callbacks. Instead of a dedicated function like this, we
could make a set of generic functions:

iio_backend_{g,s}et_property_{s,u}(8, 16, 32, 64}()

that take an enum parameter for the property. This way,
for each new property, we just have to add an enum member
instead of creating a get/set callback pair.

Unrelated to this particular case, but taking the idea even
farther, we could also do the same with enable/disable
functions. We talked before about cutting the number of
callbacks in half by using a bool parameter instead of
separate enable/disable callbacks. But we could cut it down
even more by having an enum parameter for the thing we are
enabling/disabling.



