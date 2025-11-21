Return-Path: <devicetree+bounces-241277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 52951C7BDBD
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 23:32:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0C5773A67C0
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 22:32:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD0F82777FC;
	Fri, 21 Nov 2025 22:32:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="YBRdluUS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 632EC23909C
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 22:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763764355; cv=none; b=kfPgML/X7J1owcw3RybMfWhiaBR6RTZm1bRIy7w19zybEtPOp3HuKW7J08R9CjTm2cW+3bZHK3GUIIRSNgj6UwxLCw7CGfzfxGBz+BkOWIcwtVofewO6Uv3KvWbS4WrinYndagtjXGtsfyF2pmEZXWhWduWTa/6oXuQN8X0amIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763764355; c=relaxed/simple;
	bh=yCaJpFEp9FE+/fCtlSlffQKThHPF+iZGETI3PTIVyco=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XUiu9YhUxDqP5oT0UH9mB/rsJP8Uwurz0qv8idmMlSUJ5xTESQtDZuyxuhuuejliI7MISjUGIam3blzEohWAgEtUsshUl5CpsBHwFQIjwgJNyfbL2U3m/9f0UG+Trw+S5XBRf4CinsOD06AqdYLvh2WCdVwoR0++tCegB6WZE7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=YBRdluUS; arc=none smtp.client-ip=209.85.160.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-3ebd1b07919so594479fac.0
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:32:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1763764352; x=1764369152; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pSYijzg5CEc2E6+C/AUpQILvxjP1MN4jnIIv1fwDbxA=;
        b=YBRdluUSEAnhgazOC9QyECm2l2HK8oEYZOZ8GoHcp6sm4BUDP5OCZx965989c6TytM
         zMc/QFe/NpXaLNWD5V+MJwZilAndxZomHCEzeO+BZqN3H7yKuoiyysqOefZULf3YR2bo
         5qOm85M9aSjjEDgIFXNzwe7eB+qI0n5I4etohx2+SD+0Io1VGPKAwwu989yYNO9yWBqV
         Qu2Nnm9YgtPMo9oNEnrJrreV9M6x0gnmYc+Pe+3qgDp0kyZque1NSJhiGqlGPXF2+AYL
         RrCempDvKq0B1jFDuJbx3C66i27srVLj4lM8HpIBb05Xq7tt42V2JP0pMHzcljWNSeCi
         FFcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763764352; x=1764369152;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pSYijzg5CEc2E6+C/AUpQILvxjP1MN4jnIIv1fwDbxA=;
        b=dI3OdQrOJzF+3E+xHs/etYTHrUZc4GSbZfabFnMxkOx/1BqdsWzhZUt36u/U0FMIGw
         3IPTxlWEhJlG4XCmkCymNYEt4SFnRfYbu+Tlo/7eU216yLaTwdtzZsAlraf97OZvLygO
         hJjEW0RBtfmVC/s5z6206pHKPuVRdgYB6WVVumYlmYOWFExmeKEA9io3nnQdb98NH379
         LmD+stQCAMn1X4kr3U6WLW9afJVXZrDRsA3IomSCuGh/59wl5HSyMlaFjgel+BCWZecO
         gz8a08DaaPysyRE3Utcvumz3H5JSTT1SET/yKsk9DPeH4c+IDaVbtCYljB2Sv2f/2RAt
         R1SQ==
X-Forwarded-Encrypted: i=1; AJvYcCUw8/0LY2Tsu4OpshIh1YyZ6O9aMDT3cEJD8ZwzqW0Kpufns+UpjoAV+vfzmY8nSVRgqTKBXMSojFEE@vger.kernel.org
X-Gm-Message-State: AOJu0YynsPLKajXSa8YcTMO1sZh4VmSJSr6pxxqDzeAKfS3NUkRqrA5C
	MUSc4LyQA6hzBenwwv/ZvJraUlpRofSAJ1w5UQYgF+YG7fhUkaZr4RISLAY9Ezyf1Rc=
X-Gm-Gg: ASbGnct4fGy+FdsXHiMPgtytJ89jqReOdBLI+TZdED6e7c4DjZzwD34RnWQ43PI8cts
	MzorLLikCWwhv5LDq+h/wf6p24pzaBlw2eRjTYSbU2/bqSHrHKQMimN5sVbPeD1FvLZM4JCztG9
	9Ori9fnSZabtF+UClertqjbyzVCpQ5ulx+KxVGXeRhT46f4I9Dx3yc5o/cGcxE8NyUaSoY8Q/rg
	XtRBgVQSQsBPzzvpGPjpghi65yJktrCAYkuCzXDRrcGOWwAFUCM2xvbc+xkVmi6t/03GKOSMsmB
	HURjbD7lHG8xnD4so51M8lHazUlTHY1e3XGK1zXSlCuD0iSQL3QwNKEXWU0ZHJQDgrW8L5j7/G9
	H2P5qstK7L2qUZ7svNDj9c4STtmvs1F4LP/BHfkqjrSDu5SGKmga+xdQSpIXmuSAeizi9ALYVhm
	nqbVxrP9E751NzxwxHG8SonhNe43D5DkFJs9errxDR0tZ+/K1471SWO7j+GpNC
X-Google-Smtp-Source: AGHT+IEBcoh/hheC34kEJ5SMlQT7J1zDk1fRi/rNlhKfDoHMzhq3M6R6ET9DH16T8Jf4Y/+MZSJDTQ==
X-Received: by 2002:a05:6808:4fd1:b0:441:cf96:934f with SMTP id 5614622812f47-45115adf96cmr1439824b6e.47.1763764352531;
        Fri, 21 Nov 2025 14:32:32 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:e782:93d8:7c2f:f9df? ([2600:8803:e7e4:500:e782:93d8:7c2f:f9df])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-450fff8d592sm2073533b6e.12.2025.11.21.14.32.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 14:32:32 -0800 (PST)
Message-ID: <05fae891-a4e6-439d-97da-6259370f68b5@baylibre.com>
Date: Fri, 21 Nov 2025 16:32:30 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] iio: Add support for TI ADS1X18 ADCs
To: Kurt Borja <kuurtb@gmail.com>, Jonathan Cameron <jic23@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Tobias Sperling <tobias.sperling@softing.com>
Cc: =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>
References: <20251121-ads1x18-v1-0-86db080fc9a4@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20251121-ads1x18-v1-0-86db080fc9a4@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/21/25 11:16 AM, Kurt Borja wrote:
> Hi,
> 
> This series adds a new driver for TI ADS1X18 SPI devices.
> 
> This is my first time contributing to the IIO subsystem and making
> dt-bindings documentation, so (don't) go easy on me :p.

I actually had these parts on my radar, so happy to help you out.
Unfortunately, I don't have the hardware for testing though.

The first thing I was going to do was check the existing drivers
to make sure that there isn't one already that has a compatible
register layout. I have a feeling we won't find one, but would be
good to mention that in the cover to justify adding a new driver.

There are a couple of similar TI ADCs on the mailing list right
now, but they are IMHO just slightly too different to share a
driver, but would be good to look at just to make things are
consistent on a high level.

> 
> As explained in Patch 2 changelog, the DRDY interrupt line is shared
> with the MOSI pin. This awkward quirk is also found on some Analog
> Devices sigma-delta SPI ADCs, so the interrupt and trigger design is
> inspired by those.

Yup, that seems to be the best way we know how to handle this.


