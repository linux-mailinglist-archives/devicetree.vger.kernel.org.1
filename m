Return-Path: <devicetree+bounces-191115-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C2FF7AEDF31
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 15:34:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6303316F6C2
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 13:34:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6865428B3F6;
	Mon, 30 Jun 2025 13:34:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="v8diNR3H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BA26286D70
	for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 13:34:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751290444; cv=none; b=U1yJjZFgEbhAcTajSh+h20suUjL+kazA/NDIgQyRKL3DhAKeYgUxdKNK+hdEWzF6/DO/UbL/VspYUgX61xEc9otvsmDFMHh2tvqNx2r9g0xEZQY36ZRLz9+Sz+00l7LgUjH14ExDfaYkQITojTXQaFONxfOMAsmfmd+33rJk63Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751290444; c=relaxed/simple;
	bh=+OYEUNuuqfT76DUEXC9cb8th/BNnZVNtFEhDcL9FgBU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bpM/zy0cI7qLPBDSVAR6mJr2804YRFcuNgYwXOnbu/03lArw6HPIFsYtuG2vhd3M3txyYLYssufcXijPpDvTZGG9zUuuZhqQ0DBuM1HB3YV+ryaVrK1gvkAeRji2aqGpUmCOszgqWViGQG+P3FUQ9rUoyHQ0jOLlfENjLlns8js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=v8diNR3H; arc=none smtp.client-ip=209.85.167.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f177.google.com with SMTP id 5614622812f47-40b1f402deaso2655884b6e.3
        for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 06:34:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1751290442; x=1751895242; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0BiiBnavNW6W4WxDDv13yLMK/TA99VJbY73iccUOu8o=;
        b=v8diNR3HsU3PDvWM/sNs4zmM8sIO1GHPl+Ku3+XOFYDi8aWK/kcRyCACuKux2Splt/
         bm0uq4yaKt5qeSApXvNk/KJgsZxS+pfLZ7lE1TGp6tE9h54VYaM9x1tbPfi++3X5u5Xk
         kml4V/8LJG1vWB01KONJQkbluOkF7X7IlwI/w9Z5zey+QgdDnxNwLxeesGecs32FVOZ1
         WAzI0BZPJlSQStnAbYoSduibF1GWOQhUh7qPOKfdydr2Y3unto86xIXRvas7P+y0aOKu
         zvAQmlNwNKBYEuXHtmR5b5NdVTldXG+Fl7T9/5B1s/GYvulieNz+IGpR6BDbHi4M05WC
         y8Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751290442; x=1751895242;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0BiiBnavNW6W4WxDDv13yLMK/TA99VJbY73iccUOu8o=;
        b=ar77uAmqrWj2iSd+aXbldJvYZWjDkrJlGkUt8ILsuUjDyNM+aTosJUi//vGoS9sD8j
         4f0njXPV0q7/B3K52Wmic8Uclkrl1JcfFDwf2zHiDXcwHYqMwXeytNTZuiixNqeJozop
         yHBLsRE3xHraUVmlMcgwVOm/HBYEho+ySsDurKNXCQpVC7KeM/MOhasqmgSzvmaKXAba
         LlIJtXSCsyrrsXtR09FC/ZmCtv435+MMxZH6lq86Pq1GacvjvUGIzfernPgy8c6bK5d0
         XW/KVU9AusBvPjhl+1iqkjM03eBhNvHR5HoG5mou0GugXf5aOxC+YrIZDvAskYngK+7z
         RI/Q==
X-Forwarded-Encrypted: i=1; AJvYcCUJCpk/FU168ZqMxdIvUEtFi1AgLIkoi/dbw3zh42uic+oJOUZ/7yCW7mWsplg/ET1l9IapTdlI2T0g@vger.kernel.org
X-Gm-Message-State: AOJu0YyELbJYvhljEcaG+HoKO+Jm9zKIbFmIpdUpsBS/9X/PRrjgeh2c
	fhRdhYW4iSpJPzP3dHDDplpk2hZCVAdQ5uCDCSdVrIrUBGNYjBPt5/Ar0l3YWN5cnfI=
X-Gm-Gg: ASbGncu5BZkIpoOulRvO94BdgfEM2im5dpN80/plij5XY4n9uCH143qS4CJMS/NyYkj
	RtgJI8L4lMmLTbpah4RI+0DGzeQn22y3mgBcLl5TEBvtzVS9omZPssJhDUdZdHN845Oenia8Gp+
	c2X9ECQYhD7haK+2St51lPqOCSRWQFr91q4EUZOLXHCe4Iff8Yt4X+Qe+zts4pvBf9fubL37aC4
	Q9HBY9i2zrjEcuskyYajNcCAWRlPuEy2H1HHG5hV8JIDwCHNSeO6UYCVhr52gTfKysMPJp1Ac3X
	uBmd6RJMtKveH1LTQJ8s3IAAZdjORB1YKf/4aHNupT5obOgyeebD1g+n2DgdlE+tbjAktVCZ0q4
	mUpEJCAb92OkvOJCMxHLs+c4bt579qLgO9vxn0aI=
X-Google-Smtp-Source: AGHT+IHwwHp/hPBSXiWOFPICfvksDPCGUtg2Iq6Zl8mO+cjrCNlALoXBQc3229XEU/HYM2O/8w7obg==
X-Received: by 2002:a05:6808:80c9:b0:3fe:af08:65b5 with SMTP id 5614622812f47-40b33ea62f0mr11211317b6e.37.1751290441614;
        Mon, 30 Jun 2025 06:34:01 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:4876:5a0d:2fea:6208? ([2600:8803:e7e4:1d00:4876:5a0d:2fea:6208])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-611b8474dadsm1077151eaf.5.2025.06.30.06.33.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Jun 2025 06:34:01 -0700 (PDT)
Message-ID: <e4c7296d-6afe-4edb-b26f-44218e660a80@baylibre.com>
Date: Mon, 30 Jun 2025 08:33:59 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 04/11] iio: adc: ad_sigma_delta: use BITS_TO_BYTES()
 macro
To: Andy Shevchenko <andriy.shevchenko@intel.com>,
 Jonathan Cameron <jic23@kernel.org>
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-spi@vger.kernel.org
References: <20250627-iio-adc-ad7173-add-spi-offload-support-v2-0-f49c55599113@baylibre.com>
 <20250627-iio-adc-ad7173-add-spi-offload-support-v2-4-f49c55599113@baylibre.com>
 <20250628155643.7c18e023@jic23-huawei> <aGJR_YyW5tCMjxUD@smile.fi.intel.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <aGJR_YyW5tCMjxUD@smile.fi.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 6/30/25 3:59 AM, Andy Shevchenko wrote:
> On Sat, Jun 28, 2025 at 03:56:43PM +0100, Jonathan Cameron wrote:
>> On Fri, 27 Jun 2025 18:40:00 -0500
>> David Lechner <dlechner@baylibre.com> wrote:
> 
> ...
> 
>>> -	samples_buf_size = ALIGN(slot * indio_dev->channels[0].scan_type.storagebits / 8, 8);
>>> +	samples_buf_size = ALIGN(slot * BITS_TO_BYTES(scan_type->storagebits), 8);
>>
>> Ah. You do it here. Fair enough and no problem wrt to patch 1 then.
> 
> Hmm... Should the second 8 be something like sizeof(unsigned long lone) for
> semantic distinguishing with 8-bit bytes?
> 

Yeah, I considered to use sizeof(s64) to match the next line, but it
it seems like a separate change, so in the end I decided against doing
it in this patch and it seems too small of a thing for a separate patch.

