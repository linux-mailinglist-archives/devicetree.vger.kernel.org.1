Return-Path: <devicetree+bounces-162301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 27440A77C37
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 15:36:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1D2907A2FB0
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 13:34:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE53E204C39;
	Tue,  1 Apr 2025 13:34:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="gEEI45fi"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35725204C21
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 13:34:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743514487; cv=none; b=MpXZTj7rgN6qt069ouORqUbrlbNyvAqbIe9tXQjMJoCVehuom62d2r6yGUB4HjsQApW40o75qXpjKyb4fuH5/p7Af34Txrcrd3rmCVlWfdZw+rKiDMlkGZlFWkdBY/M1rr4OVHedklEjjmw1I3gq3VnEpCpiBdGjOehDebgnoQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743514487; c=relaxed/simple;
	bh=QuCzUjUOshwjUX4J/+q/WQAOdCCMqucsOFnCotlLctY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DvwBF9Yyjz9PiXu0AJId4qIcnG1UOiJkQ2gTR7Ly5AhOw6cgXL9HELqNMw3Ufe8hWnFJnWJH6itLo4fZSOjuHhbzLI0I4fKS58YPoMfrLipC7U/fc/rq4ipY53ZopYrCuq99ZkApsafgpjrBTzusX0dApZZAUY4Y5T0FvcuTyHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=gEEI45fi; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1743514484;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5+voR8HB3cFzC8hIZVmJtHdmZr9+pgk6E3+WKAMDtKw=;
	b=gEEI45fiRDbYUx7DMFbVexz455v0mg1eSq0xfjGY4K7EjQN73w/ZsKJxPCvsoQLCWr/tyU
	2sit8USmnIjYK2LpzxZb75aV3MtV/QVtemZF+2IJialztdKg9bQOeGavJIvVP8ibRRpBCD
	3+Loc+dBRKB08QyDtrQKFXNpHIEDp1Y=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-551-j9-O--blOAGHtVXFVTlNwA-1; Tue, 01 Apr 2025 09:34:42 -0400
X-MC-Unique: j9-O--blOAGHtVXFVTlNwA-1
X-Mimecast-MFC-AGG-ID: j9-O--blOAGHtVXFVTlNwA_1743514482
Received: by mail-ej1-f71.google.com with SMTP id a640c23a62f3a-ac710ace217so397317066b.1
        for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 06:34:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743514481; x=1744119281;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5+voR8HB3cFzC8hIZVmJtHdmZr9+pgk6E3+WKAMDtKw=;
        b=r57qjUnig3KDcv6sBu528nBIXtjBmXqwX5yE7CRcc+yExofqCXRZ2qH+iLS11PhLjX
         KG8NkZLuUuvbOr9833aZn/ThZ/Ih0HejksGS4iKaCC7ZJ5lWcWdoiVRqC8G9HtfQ/6PS
         OC7ySBQsMJIvmqgIwW0mXlGI64ng+EEkI62nUqRFRhNAp7dKA5LfSvh8bZn8Hp4rM3AF
         5EJ7Y/9MhRZW21CVLb1F/lVYAyFhY0SBaSk/0NfA/975AOrgXZB/nYMS/ms3v55smiSK
         TPoA1mDD0vYk2wdQOkZOCMhME5W4nPK85UO5cTwzbvJMGl5AJcn3tWIjbHJjk0k8v59v
         R/wQ==
X-Forwarded-Encrypted: i=1; AJvYcCU6UsWX8WmFiCVszFl3EODquF1JLaYgobq/kQPL21B/rzBAf81NEu/bUvLkX3q6IDNukoBoiQNAczJx@vger.kernel.org
X-Gm-Message-State: AOJu0YwFBlx8SLSC3oSl/+cms+Q3QdidLtpmz9ohatDcVaMorhJLtIG1
	uOBYIjY55yJqRZp3gXanjilm/rDUwzlJ519n9K/HEXtM9D7Xk+sc/XPRA0BviNwyNfQr63v93fA
	qBl3CN9i4Qxwz3UKXn/I6a7tC19sQzPxnjvedsiusVZm1vKjKdYgHIPFi0Hs=
X-Gm-Gg: ASbGncvJ2ttTeuJi5cH8Dq8NzTqF5eC+mqPXxIP2C0ZWZA7sujd/q7CVJsdEwpvpyMY
	6fmtgpVi3hj9QQvdcQZbffwLgVoR0EH/ue2vHpTcEh3kHQEQo7aA5j4hRTL10vasaW8YI0uWcn+
	Mx3JSkUvWolMtJGwoOCLyvb5YXdq7xd0Tpsufn44p1hgVj5/OxNq8zF4NdovopVG7GEIAKdPRjb
	UfJJMcY4PABp9Ua5eQCEts1GN7S9WnzJI7moO64pPTAPwgiLuF4ZhPUzRlWzXqjMfcrBbgOlzZT
	vnft2nGF73QyMkXdoY7mEZpqHp6n9xmvF/N+2fBYEnm6z9NY852GOvnGmyAwY9UejiEhqGe+6S5
	C0/5txlBgDCWv0WHaKL6bTzAeFpDiI2CCZZUO3m+6YZ3MEgyyJGi3Yyl7Q6KNPrbbUA==
X-Received: by 2002:a17:907:6095:b0:ac2:a50a:51ad with SMTP id a640c23a62f3a-ac738a3fb66mr1367134866b.14.1743514481487;
        Tue, 01 Apr 2025 06:34:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEWc/PMTpv7KpTgLIObE3nweU3U3wlOcyKWQ2itqUjsaX7REIskVKPaI0rm24NIXU4h/zTp4w==
X-Received: by 2002:a17:907:6095:b0:ac2:a50a:51ad with SMTP id a640c23a62f3a-ac738a3fb66mr1367131766b.14.1743514481009;
        Tue, 01 Apr 2025 06:34:41 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec? (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl. [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac718f7159bsm767945766b.0.2025.04.01.06.34.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Apr 2025 06:34:40 -0700 (PDT)
Message-ID: <6cf8d6db-c24e-461b-bd7d-a3dad25e4945@redhat.com>
Date: Tue, 1 Apr 2025 15:34:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] media: i2c: ov02e10: add OV02E10 image sensor
 driver
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
 Hans de Goede <hansg@kernel.org>, Jingjing Xiong <jingjing.xiong@intel.com>,
 Hao Yao <hao.yao@intel.com>, Jim Lai <jim.lai@intel.com>,
 You-Sheng Yang <vicamo.yang@canonical.com>,
 Alan Stern <stern@rowland.harvard.edu>, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org
References: <20250325-b4-media-comitters-next-25-03-13-ov02e10-v2-0-4d933ac8cff6@linaro.org>
 <20250325-b4-media-comitters-next-25-03-13-ov02e10-v2-2-4d933ac8cff6@linaro.org>
 <Z-UAFkshOgeytfB4@kekkonen.localdomain>
 <47dd7daa-cce4-4ad0-ab57-4c76304b0aa6@linaro.org>
 <5fd2253f-0acb-4c95-b3bb-e7e065c92dd5@redhat.com>
 <Z-u09dfEYfjqKhDQ@kekkonen.localdomain>
Content-Language: en-US, nl
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <Z-u09dfEYfjqKhDQ@kekkonen.localdomain>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi Sakari,

On 1-Apr-25 11:42 AM, Sakari Ailus wrote:
> Hi Hans, Bryan,
> 
> On Tue, Apr 01, 2025 at 10:12:35AM +0200, Hans de Goede wrote:
>> Hi Bryan, Sakari,
>>
>> On 1-Apr-25 2:34 AM, Bryan O'Donoghue wrote:
>>> On 27/03/2025 07:36, Sakari Ailus wrote:
>>>>> +static u64 to_pixel_rate(u32 f_index)
>>>>> +{
>>>>> +    u64 pixel_rate = link_freq_menu_items[f_index] * 2 * OV02E10_DATA_LANES;
>>>>> +
>>>>> +    do_div(pixel_rate, OV02E10_RGB_DEPTH);
>>>> The pixel rate control is for the pixel rate on the pixel array, not on the
>>>> CSI-2 interface. Without binning or sub-sampling these may the same still,
>>>> but this only works in special cases really.
>>>
>>> Hmm computer says no, I don't think I have understood this comment..
>>>
>>> Looking at other drivers, I'd say the above pattern is pretty common - taking ov8856 as an example that's pretty much equivalent logic to the above, ov08x40 does something similar.
>>>
>>> =>
>>>
>>> pixel_rate == link_freq * 2 * #oflanes / RGB_DEPTH
>>>            => 360MHz * 2 * 2 / 10
>>>            => 360000000 * 2 * 2 / 10
>>>            => 144000000
>>>
>>> If I'm understanding you though you mean the pixel rate for the control V4L2_CID_PIXEL_RATE expressed here should be the resolution * the FPS / bits_per_pixel
>>
>> I have to agree with Bryan here that the pixelrate typically is const
>> and directly derived from the link-frequency. Even the
>> __v4l2_get_link_freq_ctrl() helper from drivers/media/v4l2-core/v4l2-common.c
>> assumes this.
> 
> That is there to support old drivers that don't use the LINK_FREQ control.
> All new ones do.
> 
>>
>> binning / subsampling does not change anything wrt the pixelrate it
>> just means that either the blanking becomes much bigger keeping
>> vts / hts the same, or that the FPS becomes much higher.
>>
>> It is not like the sensor is sending an empty pixel on the CSI
>> link every other pixel when binning, since there is no such
>> thing as an empty pixel. So the sensor must go faster when doing
>> horizontal binning to keep the CSI link filled effectively
>> doubling the FPS, or requiring a much larger hblank after having
>> taken only half the time sending pixels.
> 
> Please see
> <URL:https://hverkuil.home.xs4all.nl/spec/userspace-api/drivers/camera-sensor.html#raw-camera-sensors>
> and
> <URL:https://hverkuil.home.xs4all.nl/spec/userspace-api/v4l/ext-ctrls-image-process.html#image-process-control-ids>.
> 
> As noted, this may be correct if the sensor doesn't use binning or
> sub-sampling, but conceptually pixel rate on the pixel array and on the
> CSI-2 bus are different. The PIXEL_RATE control is for the former albeit in
> the past some drivers have presumably used it for the latter as well.

Ok, so here is what is written there:

"V4L2_CID_PIXEL_RATE (64-bit integer)

    Pixel sampling rate in the device’s pixel array. This control is read-only and its unit is pixels / second.

    Some devices use horizontal and vertical blanking to configure the frame rate. The frame rate can be calculated from the pixel rate, analogue crop rectangle as well as horizontal and vertical blanking. The pixel rate control may be present in a different sub-device than the blanking controls and the analogue crop rectangle configuration.

    The configuration of the frame rate is performed by selecting the desired horizontal and vertical blanking. The unit of this control is Hz."

So when not bin-/skip-/averag-ing this matches with my understanding
which is that:

FPS = pixelrate / ((mode.width + hblank) * (mode.height + vblank))

and also pixelrate = link_freq * 2 * #oflanes / RGB_DEPTH.

Since the ov02e10 driver does not do bin-/skip-/avera-ging,
this definitely is correct for the ov02e10, so I don't really
think there is an issue with the ov02e10 driver here.

I've been assuming in drivers which do do binning like the ov2680
that this also holds true when binning. But what I'm hearing
you say here is that the reported pixelrate should change when
binning?

I see how the calculation of the FPS should change, reading
the V4L2 API using mode.width / mode.height is wrong and instead
the analog crop should be used which is e.g. (2 * mode.width) x
(2 * mode.height) when doing binning and I can see how this is
sensible because this way when just disabling/enabling binning
without changing the blanks the fps does not change.

Except that we don't have a proper API to select binning and
instead is done transparently by drivers like the ov2680 driver ...

And I believe that e.g. libcamera atm simply implements:

FPS = pixelrate / ((mode.width + hblank) * (mode.height + vblank))

and thus assumes that the driver updates the hblank / vblank
values it reports by adding width/height to the reported value
to compensate for binning but I might be mistaken there.

This also begs the question what a driver with arbitrary mode
support like the ov2680 driver should do on a set_fmt() call
where fmt.width / height don't match (either 1:1 or 1:2)
with the analog crop. Should the driver then update the analog
crop? ATM for modes smaller then the current analog crop,
the ov2680 code simply adds extra in driver cropping on top of
the selection API crop, without updating the selection API crop.
Since the driver clamps the max accepted fmt width/height to
the crop updating the selection API crop would be troublesome
and break non selection API users when they want to switch back
to a higher resolution mode ...

I don't think we really have properly specified (as in written down)
how all this is supposed to work, especially as soon as binning comes
into play. I think discussing all possible corner cases and trying
to hammer out how this all is supposed to fit together would be
a good summit for the media maintainers summit in Nice ?

Eitherway I believe that the current code in ov02e10 is fine as
is for now since the ov02e10 driver only supports a single fixed
mode with no binning.

BTW the last sentence of the control description clearly needs work,
framerate indeed is in Hz, but framerate is indirectly controlled through
setting the blanking times, which are in pixels not Hz, so that last
sentence is confusing.

Regards,

Hans




> 
>>
>> (and the same applies to vts when vertical binning)
>>
>>> pixel_rate = wdith x height x fps / bpp
>>>            => 1928 * 1088 * 30 / 10
>>>            => 6292992
>>>
>>> i.e. the pixel rate not related to the CSI2 link frequency ?
>>
>> No the pixel-rate control includes vblank + hblank "pixels"
>> and is in pixels/sec so no dividing by bpp, iow it is:
>>
>> vts * hts * fps
>>
>> and this must match
>>
>> link_freq * 2 * #oflanes / RGB_DEPTH
> 


