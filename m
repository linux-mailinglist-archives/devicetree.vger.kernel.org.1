Return-Path: <devicetree+bounces-111489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 06AA399F004
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 16:48:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2AF711C22238
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 14:48:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D8611B21B9;
	Tue, 15 Oct 2024 14:48:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="2ssUReZW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96DA11AF0D5
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 14:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729003704; cv=none; b=A3MtCdEUyDmHLAEds9zfjv9IEZj8YhAjJWMYEqTtpD1ERcUiENKN1qP/6bAMpExgfjP+MjLgNPohksX23ro4EY0NkNlAmlu69BkLex2sndmwARVGWbcfFSIs+wtzFXEFZyDWpSynuVR7LLyDPL9zAo+Edh/oHiBpuVHxbOKKHJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729003704; c=relaxed/simple;
	bh=1ZKbFqq5xIztMsJdbLYu9Ok3agkULQ0nUqv7argX3yc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TdYRA3xB5Lc1YANDojgNWXs33qxuWemvzyt4AUj8aVdJEtSynYhutMxZ4V/dhB7wbF2kb1vOvQkJ6/5g60pYh3w1LMAm90wOSDUBQQs+DAPqP3OoIqkbIdgvJN/x/TqSiAxQgUXs+36Bi0cRvdBH702pmWcgq2Fmwtd96iY7BSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=2ssUReZW; arc=none smtp.client-ip=209.85.210.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-716a6e6d5a3so3721291a34.2
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 07:48:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729003701; x=1729608501; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KUVW0w4TahcLd/Tf8bTFKOH/+gu9J1Ctw2P3JJAhxMU=;
        b=2ssUReZWojhEj+Ek7OgVqglakTyup8dshveg5Ky1T4DQZZSFTRv+ojSxlj4dYuiRHw
         9sh9TN2im4S35nrIbr0ByQF0O8Y46iwo0CG+AjlLinz8XpovI8DO7H5aFLMUzWi7S3zp
         Y+t9jyJRkKvKRVdq9mwkRtRisTPt71Xr37gIBQJNVd0YYp1rRaqyFllKOCQvOwCRYD8C
         OJTu0VE+f70KcoO9NmDphtgzttZCk/uQZcQFqOoC/SK47IMROyDmh6AutHMRoZf/4E7O
         vgf9kY35EiCposQ/1Qypuf7i7x0zPwMQUphIFT2POWvgsFdbuUfjbMo3Ogq/KRFEjvLw
         HMAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729003701; x=1729608501;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KUVW0w4TahcLd/Tf8bTFKOH/+gu9J1Ctw2P3JJAhxMU=;
        b=mJT5xOafwy/YH20o0u4SK+qZffH8Tf1LAiTTBE0KN+1M/Y3ErAfw3b45T/UddxUI0z
         Huf0KJzBARtQXgOq52asJJcodAMCnBamFE19vn4Sqb4zQkTpF6EJ31jAbfKGwmofyNKj
         RrVJESXBz2W9U5slB7tSGidXe3R5QKpaDKXwJrh3YBHpGvGXvuJ4/G5oFtbgA/xwz5fI
         5PvzNDvui22AIGyZlRDuvFiFRuzXgWlTaxHWxQWrl9lPu7G/JdpcHIgLf/r4TSJeYk2m
         wIG31msjLjUydgo6LwMhTXZqkuALla1K3ea88OlGPjYBETWaFb/6JTEzdLC7L2VVxKIq
         WqRQ==
X-Forwarded-Encrypted: i=1; AJvYcCVTYRf36o1tbeqGJDjKTCUrffTvaLBp0QVN7Du175eDoObvTX5K/5Ao/HAwkMS9RmuPkZboMQcFHyfR@vger.kernel.org
X-Gm-Message-State: AOJu0YxgifMsip89D+Ib160vEIknYnbiTM0ee7a086Qu0Kdzb16PRdeg
	dFp2X35rnq+zAnJVMUIdqgRhxQTcM6Qnj7D57X1OjDaFBk9OsBADGonHI4Ysuao=
X-Google-Smtp-Source: AGHT+IHF1LHG4GcRViICSmBgqiP8SHfhXVmF8tDnJrqAqe6yocnsYDdQLqSDrYOeyZh9hqhH5NspiQ==
X-Received: by 2002:a05:6830:3482:b0:710:f3cb:5b85 with SMTP id 46e09a7af769-7180342d344mr774702a34.6.1729003701442;
        Tue, 15 Oct 2024 07:48:21 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5eb4ee121bfsm266967eaf.28.2024.10.15.07.48.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Oct 2024 07:48:20 -0700 (PDT)
Message-ID: <f1f7f187-f1d4-4d81-9187-ac238c0ca964@baylibre.com>
Date: Tue, 15 Oct 2024 09:48:19 -0500
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
 <549566b00524c0230a6a970b74a38dbe58e2589d.camel@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <549566b00524c0230a6a970b74a38dbe58e2589d.camel@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 10/15/24 2:15 AM, Nuno Sá wrote:
> On Mon, 2024-10-14 at 12:08 +0200, Angelo Dureghello wrote:
>> From: Angelo Dureghello <adureghello@baylibre.com>

...

>> +	} else {
>> +		err = ad3552r_qspi_update_reg_bits(st,
>> +					AD3552R_REG_ADDR_INTERFACE_CONFIG_A,
>> +					AD3552R_MASK_SOFTWARE_RESET,
>> +					AD3552R_MASK_SOFTWARE_RESET, 1);
>> +		if (err)
>> +			return err;
>> +	}
>> +	msleep(100);
> 
> nit: fsleep()
> 

fsleep() is microseconds, but we really do want milliseconds here.
Datasheet t_18 is 100 ms. (Internally, fsleep() calls msleep()
for anything over 20 ms anyway so makes more sense to just call
msleep() directly and avoid 3 extra 0s.)


