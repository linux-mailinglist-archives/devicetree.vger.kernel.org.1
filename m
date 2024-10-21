Return-Path: <devicetree+bounces-113840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E04119A8FD1
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 21:31:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 53E34B219D1
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 19:31:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B5FC1CF5FF;
	Mon, 21 Oct 2024 19:31:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="QfyNN+2I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14126146A66
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 19:31:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729539082; cv=none; b=tP4nxbNTYhjHWDULbhNN3NPyw9PBytxMikeXzGMzXjZUYbiVl21ixN9qW/BICUsJ83QNcZ3ryfFmwqShPtb2VduH8HtnwsdNJ+en9Et9RfRMv5VC7nOqoo3G4I5cIiWDwI3OEYJO320lNXeV+35udIh7BaMdf4sOy7LQ1yCEzb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729539082; c=relaxed/simple;
	bh=3EWgHc592+Mga34PVRoNecbdBz5HVaYwI+iMGjqCWmY=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=rW2zrcx5oXKVLR+lqUgWC/Y3sqnaIv08Wtr5bdcUZach7GubNYJpmZg1lIPjt7oU7ZSVnrXL2V+pIrl2CtBHUdp1c6b1jcXI+h9ts76fWjQf9lAuqdMy3swODBWDs70THPFra6OaaBzybIxJSnClE+3acqr432T9MV3WGaUJ0RU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=QfyNN+2I; arc=none smtp.client-ip=209.85.160.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-288916b7fceso2408453fac.3
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 12:31:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729539079; x=1730143879; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=p0/WpS2qRb6CVWNPpC7YhTrCcU9WXqsS6VwTJB//wjI=;
        b=QfyNN+2Ie2+WZELmNMIq0J5aCsmiWWpcHFpETNguYEhDIkmYKCrb/8/fPfWC9Rt0HS
         BlFMESGVT25sfIxcfp/oFpt5xUdDYaW9Fpju6udZ30RTPC+zZFBf5WrwOKUJ6l1EtkWm
         9UaYCs6g1m8g2IiXMtGCljTVkcn0UueL4SwDKXM5sD0otsnGCDgkN+GD780BHet743Qj
         RyJi4wT6LKVm5kbrP97E0g0cSOFtDJuFWePO9Ohgns/VA1n3Xv/6KCKBrfrNhWoIDGeZ
         E9AvgZyM4zqX2OpReyy8dpiqEkNyDuduohC/FF43zpZDXFwWri0zKiKJ+RgTZuBTdw/I
         FdFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729539079; x=1730143879;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=p0/WpS2qRb6CVWNPpC7YhTrCcU9WXqsS6VwTJB//wjI=;
        b=AC34wuK/hbIS7AG4gCKpuZA7exEGK7IJY/tUlgznGfPcb0otvOMZ4+rXQPciO6mJsF
         5Yor15Yxh4wnKiVY9Jo+nRpi4ovigyZi+lPh47WiSbpv/18wj0u1788rpDK6GbUwUgbC
         NJPsZTDHvLz3dPfvE+StvWAaZ6o+gXjB+/w9qJ9yBRf0Mm3ZbjDkra8UxFcUoaQGUVTz
         ZK7Kk5ySxKc3691HDPn5jLPSzu1Hd+vQUqjjmboYwUctGodKjE8hcvrsU5Pdw0CtdAWm
         wME71mQ0FzBs1Age+rLl98OfIxsbPw9qlT1n+4q9CuL/KdzeO1NsvVCE/JmpD+KsP9IU
         oQTA==
X-Forwarded-Encrypted: i=1; AJvYcCWYp+A1zp54JHTlYYnwhp51qa3eToEXUXLmZcBjj5+rk8xm5mzMzE7CCT/TRtX7Gvxju2nhhn6fykM9@vger.kernel.org
X-Gm-Message-State: AOJu0Yxpdj9ndrPZFAWBMy+ADcoS4fgA6yCG3KTKyTrLV4xVhWV+GfYN
	OI1jaUAZK8p3/9IbT9/xYqGupNLknXXUFX2oIJHdHW3DDQcP1AF6YwEALLU3EHs=
X-Google-Smtp-Source: AGHT+IEyOxjwwUrsOEmDwkwJPBUJStAekQGUL3vnae7jaD5J0VYvQNUnrEgaW0zebq3M2e+WlBTxRw==
X-Received: by 2002:a05:6870:6488:b0:28c:8476:dd76 with SMTP id 586e51a60fabf-28cb00ff030mr178834fac.29.1729539079102;
        Mon, 21 Oct 2024 12:31:19 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-28c792046ebsm1268246fac.11.2024.10.21.12.31.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Oct 2024 12:31:17 -0700 (PDT)
Message-ID: <1dbc8e19-d6fd-42dd-b116-f08c408b6a5c@baylibre.com>
Date: Mon, 21 Oct 2024 14:31:15 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] iio: adc: ad7606: fix issue/quirk with find_closest()
 for oversampling
From: David Lechner <dlechner@baylibre.com>
To: Alexandru Ardelean <aardelean@baylibre.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc: jic23@kernel.org, krzk+dt@kernel.org, robh@kernel.org, lars@metafoo.de,
 michael.hennerich@analog.com, gstols@baylibre.com
References: <20241021130221.1469099-1-aardelean@baylibre.com>
 <20241021130221.1469099-3-aardelean@baylibre.com>
 <2842cbb5-680e-483a-af62-4c08e7818a85@baylibre.com>
Content-Language: en-US
In-Reply-To: <2842cbb5-680e-483a-af62-4c08e7818a85@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/21/24 2:03 PM, David Lechner wrote:
> On 10/21/24 8:02 AM, Alexandru Ardelean wrote:
>> There's a small issue with setting oversampling-ratio that seems to have
>> been there since the driver was in staging.
>> Trying to set an oversampling value of '2' will set an oversampling value
>> of '1'. This is because find_closest() does an average + rounding of 1 + 2,
>> and we get '1'.
>>
>> This is the only issue with find_closest(), at least in this setup. The
>> other values (above 2) work reasonably well. Setting 3, rounds to 2, so a
>> quick fix is to round 'val' to 3 (if userspace provides 2).
> 
> This sounds like a bug in find_closest() instead of in this driver.
> 
> If there is an exact match in the list, it seems reasonable to expect
> that the exact match is returned by find_closest().
> 

Likely also affected by this bug since they have values 1, 2 in the list:

* rtq6056_adc_set_average()
* si1133_scale_to_swgain()


