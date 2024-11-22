Return-Path: <devicetree+bounces-123822-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 393849D61F1
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 17:18:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AE673B267BD
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 16:18:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37F931DE8BE;
	Fri, 22 Nov 2024 16:18:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="wZ2AA+x8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1904D6A009
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 16:18:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732292290; cv=none; b=OaDhh2WIzvHBpa9gUmY12sTSwRuoQOHlIq636rXq2W9x35RTJ8dR7nocz8MzARaoCQgTYaiVynQk2pbO8UYfe96uac7srlHWpIcLoQevvVitBGTQbbhhATKKJabd6D2ROTQwxptiWFprkL29Ftyarox8tqd4PngMelxnFUiQSbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732292290; c=relaxed/simple;
	bh=rexPzapk+Rg2VTV0qv871lIyDvoZDWWKOjY6JqmxBrI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=e34fCljO0j4RUqjYD/UQgT1y9sRvnsv/4chFL9FhI9LEHqA61eURAM125FEWPOMtFOuh9m91U5Y8CRM4SMVwV4S/q5gYO7vSd8ZKtIhQwGuvKgz+ayn9YGzwtdFGxSKGic5dH/DcFOf9M0Nc+ysen2Rv47Oz2f8oYdTZfZKzuHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=wZ2AA+x8; arc=none smtp.client-ip=209.85.167.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f178.google.com with SMTP id 5614622812f47-3e5ffbc6acbso1413770b6e.3
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 08:18:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732292287; x=1732897087; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=X1bAKNkP9XXiMwnTgBVKSeoGNJ6SNI49RJOyDjGTN1w=;
        b=wZ2AA+x8rP0CETbNpYTKPUA9+REbhbJGRPD5bJ57aXp4r+9LeVudNAdHjTaVghcMw/
         4ofP/aGLUBcVFsm3IXMN4C+YS4/Rs0m2aSBwy8RGQEaLusvDJJJR29y2tzrTECDH/Tka
         EvAea9qQ298hlZ1X3mauBsvYFKLyI1HTrct9o8SAXfWTKJpYKhbIcdS8NKr4RNvUDL6J
         QCRdESQVd+/BRQCHpUzN9hSzXlDXARpPua1zrWdWJa2HzbOCmcO0A8lluYsk9PFwi9jN
         HA0jhoObIGni0uomABdkQAbyZgc3+4GA7XqBM4QDAT5QnmgJHWb8Z6PbRak6rh7hNH7J
         Ya5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732292287; x=1732897087;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X1bAKNkP9XXiMwnTgBVKSeoGNJ6SNI49RJOyDjGTN1w=;
        b=gIQmMX4vi7o6Db1Ldpwrnqb6QffV6gAy96zs2WRkx1DY1efGeMkdwoV0kLty4SYOmi
         23ocje0YiIXFOV15N4MWd6lKuyceGoK6RRwMd+uJUAlv7aCz8Qb0Lim47gDbIoIHi1v6
         u44ikH12K2hk/TlSrwEOKiwOm9q4ASAOT6HVAVO6MTcyuB0JvXgZtUYZy539AqkqdgXx
         Eaflnn+qGxkxI6SpA6eZ+L5VcGU3ZJsUuOySXhqazCfKErZwJ0BKZJVewLL7qHVqT/aM
         jKjwtYx85YuMuZYiixt+Eu9dspygfbKsgExV5r8C/2Ka+4OaCDwWuMYT2jVTQ5tpGwu8
         rEQQ==
X-Forwarded-Encrypted: i=1; AJvYcCWeyPcmlJZPi4KVhAjmU55BIVuZJgEdKa3BS7AM88AcrDyAKzcu3917jradDLzZS7Ylscu2IEILPMsi@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7xSAbOsdtO711ly0+McebwKT7qb6DLJyY3dvsJMFo2VCvlz45
	zKR2KIoUFd4XWpLa18ds0oKIGdBn+wvH6Fb4F58vuC/fjm4YR7e7KY3lA+slLbI=
X-Gm-Gg: ASbGncu/TBtze+Udx/v5wxHPgyDcLKA3NA+nD76nz7kRpqx5lTBWzmMUlelTuGFMfar
	SWDyidKHd1aR3A+4FjQeTiLTAik/Q3fKq4j6xH2P2TzHXj6jLT05BxCmVFSj1L5z9yQ4hvyO3i9
	/bTlq8IvYYf6qz6has7mlKzepHF2AXMkvIpGvK1CggVln3Z5/QPMoPm9aLgo5kX0sLsHidjdKMR
	4NfT36rNq3EJhhF+LUtdtCC4L5ewaU0uh3zCrNtPAkSh7R76BeVIV0LUyh/td5y6Tsd26Tp6QZW
	CiniXNRw6hk=
X-Google-Smtp-Source: AGHT+IE8tkqfA5AS4Ys8aob8/MeBb4r3ZF0BLMQ+ZwyGxybE8lxhWM8VgwA4DMq7kUH4YvScnYP/mg==
X-Received: by 2002:a05:6808:f93:b0:3e5:d8b9:fcff with SMTP id 5614622812f47-3e915b82a92mr4461620b6e.42.1732292287218;
        Fri, 22 Nov 2024 08:18:07 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3e91500f931sm426643b6e.51.2024.11.22.08.18.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Nov 2024 08:18:05 -0800 (PST)
Message-ID: <a9991353-0fd0-4936-98de-a0f8352c838d@baylibre.com>
Date: Fri, 22 Nov 2024 10:18:03 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 01/10] iio: adc: ad7124: Don't create more channels
 than the driver can handle
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen
 <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>,
 Alexandru Ardelean <aardelean@baylibre.com>,
 Alisa-Dariana Roman <alisa.roman@analog.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Conor Dooley <conor+dt@kernel.org>,
 Dumitru Ceclan <dumitru.ceclan@analog.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Nuno Sa <nuno.sa@analog.com>,
 Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org
References: <20241122113322.242875-12-u.kleine-koenig@baylibre.com>
 <20241122113322.242875-13-u.kleine-koenig@baylibre.com>
 <afbb5d4d-8715-4544-b372-be23811eebd0@baylibre.com>
 <rcn6gtf2kuxxtw2xs5z374lkzst3eozgyrkdcofa6m5jxzfvne@wye2z6qoni42>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <rcn6gtf2kuxxtw2xs5z374lkzst3eozgyrkdcofa6m5jxzfvne@wye2z6qoni42>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 11/22/24 9:54 AM, Uwe Kleine-König wrote:
> On Fri, Nov 22, 2024 at 09:14:18AM -0600, David Lechner wrote:
>> On 11/22/24 5:33 AM, Uwe Kleine-König wrote:
>>> The ad7124-4 and ad7124-8 both support 16 channel registers and assigns
>>> each channel defined in dt statically such a register. While the driver
>>> could be a bit more clever about this, it currently isn't and specifying
>>> more than 16 channels yields broken behaviour. So just refuse to bind in
>>> this situation.
>>
>> The ad7124-4 datasheet I am looking at says that it only has registers
>> CONFIG_0 to CONFIG_7, so do we need to limit those chips to 8 channels?
> 
> These could be reused for different channels if the settings match. I'm
> unsure what happens if the 16 channels use more than 8 different
> configs and you want to bulk read them. Single channel use should work
> fine I think. If that is a problem I might have to extend this series of
> fixes, but this is something orthogonal to this patch I think.
> 
> Best regards
> Uwe

Oh, oops, you are right. I was mixing up _channel_ registers and
_config_ registers.

