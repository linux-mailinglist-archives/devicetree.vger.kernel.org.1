Return-Path: <devicetree+bounces-173512-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 738A7AA892A
	for <lists+devicetree@lfdr.de>; Sun,  4 May 2025 21:48:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 341C01895FF8
	for <lists+devicetree@lfdr.de>; Sun,  4 May 2025 19:48:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FAC31AF0A7;
	Sun,  4 May 2025 19:48:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Fh8sSb0L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F571376
	for <devicetree@vger.kernel.org>; Sun,  4 May 2025 19:48:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746388117; cv=none; b=s+0KRtDomOWHYzAMdgs9K8xTttomSxlDDtz0RJ5HYQ3ClWSVHPzEixn7jjCyB/2VBw84/baNgA/aRpU7RYNpHFw9uoPPMehP5HkDDtd3aANDnesSuoywUMnxUtPx207TxrN3UeJ900YzAZo48llxY7JpiH/wTF2A0sHfxp49jVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746388117; c=relaxed/simple;
	bh=pfrGjy9sFH027sd2QmcRJbL9tHEZjXpENoMYvP42MH8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=d7MuqIDWyd65dWQ9vXX9v9XalrnvatsUA+Sm6claF/BxvPBQqN3BBUe2f9zXmErIcYCvQ4OhltTMCRIGhIC3JGU0yKN3yiQhxN5kYMlS5yX7i1Wuto7Fkm+GU2q3a/H49ryGBP+3yGHVWfasaaFEQvJqkkcUfLJ2S6vNpQF3GNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Fh8sSb0L; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-7304efb4b3bso2215687a34.0
        for <devicetree@vger.kernel.org>; Sun, 04 May 2025 12:48:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1746388114; x=1746992914; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HnwuzSuusn2LX2ZHjCLJbOjOO8seDbLw7ar5XqNTwiA=;
        b=Fh8sSb0LJbJ39shwZB3C0yk0F0+GpaaY9/z8mdPSt8KuiR2SxC/lCssB3Xbzod5AQz
         6h40Vw3UCQmlftK7WNDxjIqZi9Ppq5QCIPf3TJR+E4B9QPpq8JEBxQJaWDXnGwRzSfdk
         s1bhievPG80NBqmt61U7xh4z+azhNf38eAvryC5WeA5D2QdVW+9zc0uXoGVMg2Ug2bZD
         jNU4gawnTV1vPVKuSYwpuXMY1ddzpyAuxxfwbIjrjfKCYcy8+hEVDZwYlQ4iIzTCi9VN
         mP78/4BenX45/2s09P6HmG9ZfXxvrYepNAtTGJ7XwqFd7+rJb5K+uT/bQ0Ne+rXztz2Z
         oriw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746388114; x=1746992914;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HnwuzSuusn2LX2ZHjCLJbOjOO8seDbLw7ar5XqNTwiA=;
        b=sGFhWENcXSOedvDn4DuZV/uK7k8agIQgjoAcnMbK7eXUvcX5ddKGiiJrgN5TMEwXVE
         CDq8JqtEylp5jZEqXJ9pSD7/wdeERPEBQfL7UFWbmMfxrAUF5AE7eXphqUV+5Jso9JUH
         CTJvHhDmcpGI8bFWF7zK1Gi4cHDjzuVXcP/kBUEPt+UbD1l1y1eEPAZz/O0sxi8JULOH
         RmzZlXdOdk+8oTgmwUt1aGFwhEbVMo1fNYDpT1tI8bP95eeYO8hEyGYrBNZpgV6EsvmW
         i7I5ZjOhJTwRA5Mu20+HnjfjX5CUPbytRq8lIk8gGCSksQ+CVky4WIlWu2S1ndZ4el/k
         zALA==
X-Forwarded-Encrypted: i=1; AJvYcCUJTaxinzxY1B4KRYaST9FpGDtb9JhnTgwfuy2Non9QG97/urDAJGmg4goCLodqg480GfBTyrJePrRz@vger.kernel.org
X-Gm-Message-State: AOJu0YwE3DkAZ+dCObUH80DwAL01X4qTsAG7ElvkGjY01ks1sQ52TybE
	s3Vl/YQPnLHmUOmgJtyIzwjWnSVRbKQ55blbMkMwIJoILuzG2q85ydN95OeWOY8=
X-Gm-Gg: ASbGncseVOeseK1omAvAGISt+OgRPcXoiB3tCe9ajeyzscx9ZSr2MaV6TM48Wq51FDm
	51mOpouRmy2BIcMTzUgMp7sUx4HIt55NsTTrfmnPXTJPpXOLcmypH2SdBbJkAIuTtHDSmPazapF
	tTO1NxMj5QQJnIsFTO+XA49dih2Lnh/3sYvqoJQyVPhc5IVxjjUeQcNXBF/fy/r7Iyz/QPNxMMd
	ErBLbtcqeKGW/4L2eWPGCiuwL90mbTugDhVrc0ZcMSK7OrjCyjdRpfdlCWyr3gqfwLP3ymhq2k5
	F843ZIPJ9L8hCTKIJYbb810bEiLZijpE/miMkANATq73Oz8jEk8kljDKkrKhhP1q6ZoEiXRDzri
	qFCt6VXLnLkOns+uouserGQ1I1iuM
X-Google-Smtp-Source: AGHT+IEeWwZDLnV2kLTz5RTYpnyvvvl/iHho8ndVq67XvjTpGS5bVf4ZbtzTB68KrAEY12RnhPnaRA==
X-Received: by 2002:a05:6830:6c10:b0:72a:d54:a780 with SMTP id 46e09a7af769-731e564611bmr4217238a34.17.1746388114338;
        Sun, 04 May 2025 12:48:34 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:2ddf:83b1:4b93:16c8? ([2600:8803:e7e4:1d00:2ddf:83b1:4b93:16c8])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-731d350943bsm1249459a34.61.2025.05.04.12.48.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 May 2025 12:48:32 -0700 (PDT)
Message-ID: <357c418f-7f00-416c-937e-f6fea1c0af96@baylibre.com>
Date: Sun, 4 May 2025 14:48:32 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] Documentation: ABI: IIO: add calibconv_delay
 documentation
To: Jonathan Cameron <jic23@kernel.org>,
 Angelo Dureghello <adureghello@baylibre.com>
Cc: =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250502-wip-bl-ad7606-calibration-v2-0-174bd0af081b@baylibre.com>
 <20250502-wip-bl-ad7606-calibration-v2-1-174bd0af081b@baylibre.com>
 <20250504161603.7d1027af@jic23-huawei>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <20250504161603.7d1027af@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 5/4/25 10:16 AM, Jonathan Cameron wrote:
> On Fri, 02 May 2025 15:26:58 +0200
> Angelo Dureghello <adureghello@baylibre.com> wrote:
> 
>> From: Angelo Dureghello <adureghello@baylibre.com>
>>
>> Add new IIO calibconv_delay documentation.
>>
>> The ad7606 implements a phase calibation feature, in nanoseconds.
>> Being this a time delay, using the conv_delay suffix.
> I made a late reply to v1...
> 
> Key point being that, in the general sense this is only a calibration
> thing if it is both writeable and we are using it for filter phase correction.
> In more general terms it's just a conversion sampling time offset (and as you have
> it here in seconds).  I'm keen we define this to incorporate more general
> cases including extra read only info on sequencer timing - that can be useful
> if we have something like 
>                  _____________
> Input 0 --------|             |
> Input 1 --------| 4 in, 2 out |-----  ADC0
> Input 2 --------|  MUX        |
> Input 3 --------|_____________|-----  ADC1
> 
> That is the ability to schedule more channels across a small number of
> simultaneous sampling ADCs.  In these cases we've never had a way to
> express what was done together.  Mostly there have been obvious
> combinations (i.e. voltage and current at same time on a given wire for
> power measurement), but it would still be nice to use your new interface
> to allow us to describe what is running here (though probably not control
> it as that would be hard to do!)
> 
I'm totally on board with making this more general than just calibration, but
having worked on a couple of multiplexed simultaneous sampling ADCs like this,
I'm scratching my head a bit trying to figure out how we would be able to know
what the delay was between the conversions, at least in cases where we don't
have a hardware conversion trigger based on a clock/pwm. Generally, it is as
fast as the SPI bus can bang it out, but that isn't a fixed or predictable
amount of time.

