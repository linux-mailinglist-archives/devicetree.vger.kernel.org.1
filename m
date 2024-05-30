Return-Path: <devicetree+bounces-70992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 286678D549C
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 23:28:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D8847283EEE
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 21:28:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA011181BB5;
	Thu, 30 May 2024 21:28:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="s8A23BzC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3DC017F4E0
	for <devicetree@vger.kernel.org>; Thu, 30 May 2024 21:28:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717104524; cv=none; b=SAK0YdApcg4VIfLxKZt2vitVQfe5n0YRvN/7do+mfucGx6Ilcb8wb4TArMktfwP2aIg5zHtbGn1VogSYNlLju1n6gA8fi6fOsq+0ImTEhVZ22lfLWrLiagvy3x1VShLOOMft9i1c+kNHrECRfE4a/hZ/K8BBWTIDJ5PJ0sYJUTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717104524; c=relaxed/simple;
	bh=Ii7nPjT0HmoX2dUUMXPsYijPQrI71xY9z4qksdC7z3g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RYS/3ja6PN9fhB5hq1O+kgmC7KIkhbtS+WnxSgb+7hpWgsRC1OkLR+2tqs26Vxeb8BCdmEt3zgOp+YQUFmjAlGDBvKFbAgtLMHbU/uVNKq5n64xN1QqM6L6NxwGrjxmpfqnh376h3BtMbJ4gpq0oKzeP0sIZIAwnf3BQ50gKoaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=s8A23BzC; arc=none smtp.client-ip=209.85.160.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-25075eeb9f6so418371fac.2
        for <devicetree@vger.kernel.org>; Thu, 30 May 2024 14:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1717104522; x=1717709322; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Bxfjwug/dQL/Cf5WKmB4JuVx0NDgqX9YNiFkWriBjgo=;
        b=s8A23BzC7yuazz2Me5ucQDCLJPfEDfvCHqjMbYN+CvkuCDJJ4P3joHQzGNDup82Tp9
         V9lGsZYZk7Bqtqt8Vt6B6TsVlkBQV8sAXNSj9n9pjkQtXk/OJcJ0YlxwKNz7vF7kyal1
         ZEuJiAxATJxZVjXbPwp7qDc90OoTRqGLgK7CrX9SRhsaNDHkPXaKxhqsEuu1osF1Xn7N
         78aEaS8LBITsRXIecGizcMOeGHxCE5GtlL/65Kn0PV+5TuBLBu1h2+83D7x1PpvloV9x
         yvAGvNZqWAZBxeuzslMjE2afk0McgAiJSRoxmbzt5hVxujcTGg9wH4M/QIfx6w5nl27W
         gjpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717104522; x=1717709322;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Bxfjwug/dQL/Cf5WKmB4JuVx0NDgqX9YNiFkWriBjgo=;
        b=w0zejBUM43/0IAT/Ey9euuytcPBKUe2oLA2fEsCStAUHWIzaLrtiX1GfPMjFAzMNKC
         G3T5VrcVnJnHGR2i5X874whWpgzIUXqN4a8yapOkx308drNRfmNia7F7AdQPFB/GG0By
         SifnZ3YknPRJ21O6FW1DlJe4q4jMZuJPBX0qJAMtBz7gaoP+Qv4b8u5KKYueHEeVjfQ4
         uqHrfAWiKFIKdvxuVkyg+8x7XPw8WRkUbcrrTHf0fYRYb5TBM7NWLqcTc/hCIm0FGKA2
         /l/8ldkstThi5Kz7M/JmITmr2Ty1l+h2H8Gnlv+ia6EcoVswz9q6XAbF04zfw6c4sfJu
         Ou6Q==
X-Forwarded-Encrypted: i=1; AJvYcCWeaixMuXWOaOdddtFfSukcaCe/DIOWjm6LngOUc0XG63RaH2wwXaWfMVVVRHoHpS3iAZyHwjDL3m9UwT4VbfHDBM1rfeFT4jMm7A==
X-Gm-Message-State: AOJu0YxlqSeVgU9roALScKSkrz5qduVfoJgU/QhL/B4Rmqadw8mJxZi4
	bs6ncvSBslcwGGWmyUVuxOpga+al2FNteLbS/AFaR5I+BIEzdJBV4wdkTNT4mdA=
X-Google-Smtp-Source: AGHT+IGlxaKYIaXhK/Smv+yYJPqvwJWLXND+ndxDhnDRKKX2HZHHL5Z+IK5YwfmGlG8vu3NhMR93Xg==
X-Received: by 2002:a05:6870:9711:b0:23f:eea9:ae74 with SMTP id 586e51a60fabf-2508bfb57a5mr107949fac.46.1717104521838;
        Thu, 30 May 2024 14:28:41 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-25084ee758fsm135492fac.7.2024.05.30.14.28.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 May 2024 14:28:39 -0700 (PDT)
Message-ID: <8ba46ea7-ad57-4ade-9a77-fc605710c14f@baylibre.com>
Date: Thu, 30 May 2024 16:28:38 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v2 1/8] spi: dt-bindings: spi-peripheral-props: add
 spi-offloads property
To: Conor Dooley <conor@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <noname.nuno@gmail.com>
Cc: Mark Brown <broonie@kernel.org>, Jonathan Cameron <jic23@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Michael Hennerich <Michael.Hennerich@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>, David Jander <david@protonic.nl>,
 Martin Sperl <kernel@martin.sperl.org>, linux-spi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org
References: <20240514-aspire-ascension-449556da3615@spud>
 <CAMknhBFFpEGcMoLo5gsC11Syv+CwUM0mnq1yDMUzL1uutUtB+Q@mail.gmail.com>
 <20240516-rudder-reburial-dcf300504c0a@spud>
 <CAMknhBF_s0btus4yqPe-T=F3z7Asi9KkRGsGr7FHDFi=k4EQjw@mail.gmail.com>
 <20240519-abreast-haziness-096a57ef57d3@spud>
 <CAMknhBHvEse2FyDoBXR1PvymGpSGq8dotKfm+8XH+0+k+xKtQw@mail.gmail.com>
 <20240522-gullible-ibuprofen-cf9111c25f6f@spud>
 <5ad0b5782434eaf4cf565cffb0e4c14b7414ae38.camel@gmail.com>
 <20240526-peculiar-panama-badda4f02336@spud>
 <10991373cb9603803df63d8236c475807f6dde68.camel@gmail.com>
 <20240530-petunia-genre-2731493dbd0f@spud>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20240530-petunia-genre-2731493dbd0f@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 5/30/24 2:18 PM, Conor Dooley wrote:

> 
> If only we had another user... I suppose you lads are the market leader
> in these kinds of devices. If I did happen to know if Microchip was
> working on anything similar (which I don't, I work on FPGAs not these
> kinds of devices) I couldn't even tell you. I suppose I could ask around
> and see. Do you know if TI is doing anything along these lines?
> 
I think the most popular use case for the performance improvements made
possible with a SPI offload unrelated to ADCs/DACs is for CAN controllers
(e.g. the discussion from David Jander a few years ago).

I think one of my colleagues was working on one in the last year that we
might still have lying around. But I don't know what we could use as the
SPI controller that would have offload support. 

I suppose we could make something using e.g. the PRU in a BeagleBone, but
that would take lots of engineering resources and we could design it to fit
whatever interface we want, so I'm not sure that really helps much. If we
could find an off-the-shelf SPI controller with offload capabilities that
would be helpful, but I don't know of any.



