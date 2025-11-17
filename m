Return-Path: <devicetree+bounces-239570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF7AC669CA
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 01:00:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 0E51F344FF1
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 23:59:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0CA4322520;
	Mon, 17 Nov 2025 23:59:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="b+YB1CzV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C630F30DD2E
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 23:59:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763423955; cv=none; b=sAUqtzP4Y7fsBsraR8gLQ3BRwXLJjpKqxh4XvGoVkQ95Xtfk6Wa7IwR7xmpYIBxOwsYnJfjCWW2wZP0/vnZvSiGPY+4yJHJG2kA9c9m0R72dQE4qB+Z7KZD2M0kSlW0hmHWRo/bfD5UVcFVDbcQYMCm2zjJd/yj/tB6qF9fKOnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763423955; c=relaxed/simple;
	bh=1+kWPJCTC+8gKyistabB0c2BD+K2MgxptkjcPYa0fLA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kzoDTvyldzYCCidQWzlDI8alTzfl1IaXws73HvioIoVFzVVrXii2eEpQuLV5Jtodmqav4+b7+5qafZYbvYgjn5oD3M5+C7WyMRTbGTNglxC4L+fngU7JQENd5tGypGmh5vFAGp8ZB+fOKqDAeamCFqF08uGrguxXByuFeEfmb7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=b+YB1CzV; arc=none smtp.client-ip=209.85.160.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-3e0e4601faeso2079512fac.1
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 15:59:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1763423952; x=1764028752; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mA/zSuZwlQtj14wbXOMPKoaeHJe4cIIIpnXNyeurS4Q=;
        b=b+YB1CzVVkl+YdJNjrmA/4OAs+OrUbnZlUwDzGblryhQzQAIWN8IFpxez4h1QcqsLJ
         W6cKuuV+AgRU8VAprms+YOI73dCXqEHm3vvH71qJBfh0zwB0oLZ6G3uPc4/VSTzAdTbp
         XjziE9+7TMDiJ83n6Wc3lxbacEJKJ8FWYiYhxVlknXmSzQp2gD7T8r9BXCon/whtVjte
         86Q3SIdxDaO5QKdIG/+C+Pl/lLy76HrvJeurJyP9Z03iZfbxaWfDhuTV7voxjViDo5e4
         hnxwsJgwGJuCuq2d9kW7iQodALg1tN72ngik3b0tr8v/MiGgAmrgWs5sq0wMdnlITeN/
         uaVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763423952; x=1764028752;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mA/zSuZwlQtj14wbXOMPKoaeHJe4cIIIpnXNyeurS4Q=;
        b=MbS+8/EOlC+cmmf9OVUhm0SmSBEqaqRCt7MEUGaHE+zDrMsDtv3navQCbcGJ6dz9Wv
         RKVPLD1MFZUqBibx7hIwRra7s45cDuspml8h/cDeb6RgoCalAXB6zc3erWt1fLrnq/nk
         85zAOJ+1pARbqS/ICKhgel4tXx8yNGCEUWtu4w8PSSa0qDLOXw3hoUCHnGLzIaiXudi7
         5KmCOTCJEyN1hwuKEnsZHiRQp7itNMxA3XN5c383G8gBw4OjbUjjuNSQgdXBqbX1jXdf
         vwywLyBrSHbSKqu0lsifcuy/uwdZ89DpjdnGM0jsx2m+DmXWl/+uKp39dLOf5b6K2ouV
         X68g==
X-Forwarded-Encrypted: i=1; AJvYcCXmDOQAQH8WcGarnHDDhhTIQQFII42EqfwqPm6iY4DCenJpgKlpvWgguih+DircUG3QZ9F1rm/5nuWi@vger.kernel.org
X-Gm-Message-State: AOJu0YzTCKJ6IVAhkIpob/IOZCESrtbmDoCNO1nF24Zswb2uvoTBB+Bv
	Bc5XxO8g91E4Hm7BT4xdtTgw1dmV1EPilovLiCiOtOcajiw3uzB0rkZXRm8Xvz4dWvg=
X-Gm-Gg: ASbGnctnZiUCTpdjz8qZmaQWssq3q7raApf4pHc9iVhXH0pB8PjWEzHUow+ZkTa0tGZ
	YCwDRFcyBsPW0cQP0bhIFJsAkOQzeAqxonN8ijry7N2CalnVX+lkivEahzyUAMT+r1LV8taO7TI
	xVVwLQ/O6/x7jMOi6AVVT3lQWjw96N8OuddPJibzvAexLw5FI1U/bWWM2BEDijpDNxaXgCEt543
	u1AvvVXWKDXHBUfMlk0qa7ej0W+qkyEwMuxrvmXgx4983B51tfZne1aJHQCmavC6/vWMkM834x9
	aZps98DnTRoCEbUEu+UAXhxjENJcDToOiLRAXGvj6MbMY0Syoj1QhmlahPR1fAQFmUyOPB/jcbE
	/dJvrx7UBHjxqUK7FZLNLng+JAgm7FCET9alE6yQ1C4bovh0cUyiY7b93wHswozo9QwehWH/7Zy
	rEczKuKZrnmrOuMuBjlbof4t05FG7fOU8FOFgG6wEc75QW9t/Ygg==
X-Google-Smtp-Source: AGHT+IG0n4swCSKNULmdBH9IQIpxvLpbVeDw4xR3lEnLl8Z8nC7+yX/idFoGWe7M2wBNA4qpVT2OUg==
X-Received: by 2002:a05:6871:3426:b0:3ec:3ff0:a714 with SMTP id 586e51a60fabf-3ec3ff0abe6mr3097831fac.8.1763423951814;
        Mon, 17 Nov 2025 15:59:11 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:8e86:179b:44b8:cc2b? ([2600:8803:e7e4:500:8e86:179b:44b8:cc2b])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3ec5962e508sm861602fac.4.2025.11.17.15.59.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Nov 2025 15:59:10 -0800 (PST)
Message-ID: <aa2808d2-58fd-41a9-a533-86896352a485@baylibre.com>
Date: Mon, 17 Nov 2025 17:59:09 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] Documentation: ABI: adl8113: add documentation
To: Jonathan Cameron <jic23@kernel.org>,
 Antoniu Miclaus <antoniu.miclaus@analog.com>
Cc: robh@kernel.org, conor+dt@kernel.org, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>
References: <20251114115725.5660-1-antoniu.miclaus@analog.com>
 <20251114115725.5660-4-antoniu.miclaus@analog.com>
 <20251116155013.2b55af25@jic23-huawei>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20251116155013.2b55af25@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/16/25 9:50 AM, Jonathan Cameron wrote:
> On Fri, 14 Nov 2025 11:57:25 +0000
> Antoniu Miclaus <antoniu.miclaus@analog.com> wrote:
> 
>> Add ABI documentation for the ADL8113 Low Noise Amplifier,
>> covering the 4 pin-selectable operating modes.
>>
>> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> +CC all the IIO subsystem reviewers as I'm not sure how to handle
> what this device does, and would like some more opinions.
> 
> Anyone who has expertise or design experience with this sort
> of amplifier with external bypass path: how are these actually used?
> 
> The development board seems to just be suited to measurement of
> device characteristics, not representative of a design using it.
> 
>> ---
>>
>> Changes in v3:
>> - Replace "mode" attribute documentation with "signal_path" attribute
>> - Update descriptions to reflect separation of gain control (hardwaregain) and path control (signal_path)
>> - Add explanation of automatic bypass mode switching when selecting external paths
>> - Update attribute names from mode/mode_available to signal_path/signal_path_available
>> - Clarify that external paths enable connection of external components for filtering or amplification
>> ---
>>  .../testing/sysfs-bus-iio-amplifiers-adl8113  | 30 +++++++++++++++++++
>>  1 file changed, 30 insertions(+)
>>  create mode 100644 Documentation/ABI/testing/sysfs-bus-iio-amplifiers-adl8113
>>
>> diff --git a/Documentation/ABI/testing/sysfs-bus-iio-amplifiers-adl8113 b/Documentation/ABI/testing/sysfs-bus-iio-amplifiers-adl8113
>> new file mode 100644
>> index 000000000000..31fb1e6e80fc
>> --- /dev/null
>> +++ b/Documentation/ABI/testing/sysfs-bus-iio-amplifiers-adl8113
>> @@ -0,0 +1,30 @@
>> +What:		/sys/bus/iio/devices/iio:deviceX/signal_path
>> +Date:		January 2025
>> +KernelVersion:	6.14
>> +Contact:	linux-iio@vger.kernel.org
>> +Description:
>> +		This attribute controls the signal routing path for the ADL8113
>> +		Low Noise Amplifier. The supported signal paths are:
>> +
>> +		* internal - Signal passes through internal path. Can be used with
>> +		  either amplifier mode (14dB gain) or bypass mode (0dB gain).
>> +
>> +		* external_a - Signal routes from RFIN to OUT_A and from IN_A to RFOUT
>> +		  (VA=0, VB=1). External components can be connected for filtering or
>> +		  additional amplification. Automatically switches to bypass mode (0dB).
>> +
>> +		* external_b - Signal routes from RFIN to OUT_B and from IN_B to RFOUT
>> +		  (VA=1, VB=0). External components can be connected for filtering or
>> +		  additional amplification. Automatically switches to bypass mode (0dB).
> 
> I'm still not sure how to handle these external paths.  The one thing they won't be
> is truly zero gain (because that would be pointless given the internal bypass path does that).
> 
> So how are these used in practice?

Afraid I don't have any experience with this. But I would assume that the two external
bypasses each have another amplifier (or attenuator) connected to them.

> 
> Do we need to figure out how to describe the real characteristics of those paths?

It sounds like this is just a multiplexer. So a few ideas:

1. We could handle this like iio-mux.c and have 4 channels and just restrict use
   to one channel at a time. Not exactly sure how we would do that. Perhaps an
   enable attribute that is interlocked so that it will fail to enable if another
   channel is already enabled? In this case, the devicetree would need to have an
   io-channels property to get the two bypass amplifier channels and basically pass
   them through.

2. Have the devicetree specify the gain of the two external bypass amplifiers
   so that we can use the hardwaregain attribute to select between the 4 mux
   positions without needing a custom attribute. This works as long as none
   of the amplifiers have the same gain.

I'm envisioning this would be e.g. part of a range selection on some sort of
test equipment. In that case, option 2 seems the right way to go about it.



