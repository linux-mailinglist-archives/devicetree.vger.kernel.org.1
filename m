Return-Path: <devicetree+bounces-162194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F846A77604
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 10:12:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 29CC03A9DFE
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 08:12:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE3921E9904;
	Tue,  1 Apr 2025 08:12:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="RKI6eCLQ"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328421E8855
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 08:12:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743495161; cv=none; b=rnPRF0oIzLTVIlRe05Oa3EZTYgciZwEF4p0G9Kgka1TRcujlCKErAPt9yJ268fwLWCjyuTsraNr0qENX9YZDlx8qV7CDw7sIwUnxdaD1OTwybgi4XmdKFJ7kMvedTcOjiBRyNYMl9pOVu75tw0TLAy16tYvOYVFjvegb8Pxw5xE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743495161; c=relaxed/simple;
	bh=PS2Sdb9Q6APRHIqkC9t7Ru11wjylMIVzx8bP3kMRQz4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qxAMx+PB7dNep+pWAar/xyLA3/d5h02h1uRPLoY0xbkk/ZimMlJs8tDdTiom1DQ3oiScqSPk8XJJ/7ZPN8AZoT2szYFLGMcFZL81Qo3bsPkLOawOMl+/T9warI1iksaz1aXNRfbVCJq9PbpqVbu4fd0mpcEjugMj0bkdSx8eRxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=RKI6eCLQ; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1743495159;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GASTRkZgNEq8ywrAyVO6ME8QzSZbSDWDx62+D68AoZQ=;
	b=RKI6eCLQW8ubHOQW7ooTMjdUjqJBp/VbCugqf8T46GZhnjcWPRaViN5lKbLnZhWt+G1YZL
	hZKg7JTIH3ZvvPvMgq5Q9UUyIAC1eDRwZ5YdqNgMFxxK8JgJG+zVBHf6gHwyvnTktHWeUR
	q7uW2D5oFCNHShXZ/bler/LPPC7BekU=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-387-p-VC8MkVPOyL1FLQCZCMpw-1; Tue, 01 Apr 2025 04:12:37 -0400
X-MC-Unique: p-VC8MkVPOyL1FLQCZCMpw-1
X-Mimecast-MFC-AGG-ID: p-VC8MkVPOyL1FLQCZCMpw_1743495157
Received: by mail-ej1-f72.google.com with SMTP id a640c23a62f3a-ab39f65dc10so450824666b.1
        for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 01:12:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743495157; x=1744099957;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GASTRkZgNEq8ywrAyVO6ME8QzSZbSDWDx62+D68AoZQ=;
        b=fU85tHa9T0al8+BX4eC6nLTFP6qqM/cLiZlNvE0y8MJEljHxBmb1t//lkxyKyc83HM
         3fvfO5ewrzAbuUdNpWXm2lbTjcV7tzyXEHVZTVhF1mNk+crRDzFPId93kcjuRkEVbiPC
         TVHYOYFghgRpmAxeS+K2/fohOQl1RAfV3B6dD3j13MQNvM5MzKoy6DhfbhPy2ltZdYR+
         UQDQpGSxCQrirGJUCNYH7qHaDfm80FP63stdfC4KFVD9a9A1AvmOglsJJ5hiDNC52ngg
         tjFGo6tcTYJaDLhlrmbwlJnACSkbijyA1mMWbJlvcXmv4umNm/HHBk3RKxGEJHnV7SXS
         cWoQ==
X-Forwarded-Encrypted: i=1; AJvYcCWEqgUMqyKrUh9s2sDw7EXhW2ZiiqT6V4VjmmWbRLdOz5WZ+fevG6VmHaxoKZUVQNmBGwKnZ2SFhGkt@vger.kernel.org
X-Gm-Message-State: AOJu0Yzen0YnzEs6O4OU+5ZOtVStiDlIACht6qBHfmY1u+MC+pNw4ejn
	K133T15/FeFnGJ+yeoe43MaRMXFjWM79fR1xEa3AB+HTnFArJmfObDhvLTeSvHLBImfOQJNAXhc
	gTXZ8HHL0QV7un1cjg4IDdvcqX5QuFsJBRKlVJ/J3dK5S012om7ws5R3tFUg=
X-Gm-Gg: ASbGncst/+ifq6SOjd9XCLv9grPRKQeD4PPHQsv4kzyV7kVe1iGSfgIvdOmSiYysEBi
	jOQF08884VyfWnl35xmTFP9vm9/HAU1qhDV1LMzUbVdJDkGU5UbWog3/DYsLe9jUWXOfePFPNJ+
	lMqCqqwPLvp/EPu8BG6eyo+88SiThxsCuSlbL4254SmEXluwvka87Ke9J8coycidlVh3KtX4AJw
	9quX8mLSJ+nhjKsX8bF6OfK0J7SyOx3frQygwHNc0iHECFjYte+FSg/zI6pnzTdvUG5m0ISl298
	ZVfoOSPJmXWxQdlMod8C8LBKS/kUz8OVP3SVFD2sSLrLiCQbJq/7k6vl2uoI2Iq4jHgRkqs1odK
	g5+S4h4Iokcb1MiZlLN1Ata3WK+IiYPXVLs1G3zfTh1EkcKRLz7SnRZozmEW7i7iptg==
X-Received: by 2002:a05:6402:4310:b0:5e6:1353:1319 with SMTP id 4fb4d7f45d1cf-5edfce9881amr9817991a12.12.1743495156745;
        Tue, 01 Apr 2025 01:12:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG6luXrvYzdujvkcKPyEJpEUzJF03r0BacXFA3SpTp0Ue2HkS05barJl28QJGj7RKl2zsVeHQ==
X-Received: by 2002:a05:6402:4310:b0:5e6:1353:1319 with SMTP id 4fb4d7f45d1cf-5edfce9881amr9817964a12.12.1743495156332;
        Tue, 01 Apr 2025 01:12:36 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec? (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl. [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5edc16f213dsm6809339a12.44.2025.04.01.01.12.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Apr 2025 01:12:35 -0700 (PDT)
Message-ID: <5fd2253f-0acb-4c95-b3bb-e7e065c92dd5@redhat.com>
Date: Tue, 1 Apr 2025 10:12:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] media: i2c: ov02e10: add OV02E10 image sensor
 driver
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
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
Content-Language: en-US, nl
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <47dd7daa-cce4-4ad0-ab57-4c76304b0aa6@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi Bryan, Sakari,

On 1-Apr-25 2:34 AM, Bryan O'Donoghue wrote:
> On 27/03/2025 07:36, Sakari Ailus wrote:
>>> +static u64 to_pixel_rate(u32 f_index)
>>> +{
>>> +    u64 pixel_rate = link_freq_menu_items[f_index] * 2 * OV02E10_DATA_LANES;
>>> +
>>> +    do_div(pixel_rate, OV02E10_RGB_DEPTH);
>> The pixel rate control is for the pixel rate on the pixel array, not on the
>> CSI-2 interface. Without binning or sub-sampling these may the same still,
>> but this only works in special cases really.
> 
> Hmm computer says no, I don't think I have understood this comment..
> 
> Looking at other drivers, I'd say the above pattern is pretty common - taking ov8856 as an example that's pretty much equivalent logic to the above, ov08x40 does something similar.
> 
> =>
> 
> pixel_rate == link_freq * 2 * #oflanes / RGB_DEPTH
>            => 360MHz * 2 * 2 / 10
>            => 360000000 * 2 * 2 / 10
>            => 144000000
> 
> If I'm understanding you though you mean the pixel rate for the control V4L2_CID_PIXEL_RATE expressed here should be the resolution * the FPS / bits_per_pixel

I have to agree with Bryan here that the pixelrate typically is const
and directly derived from the link-frequency. Even the
__v4l2_get_link_freq_ctrl() helper from drivers/media/v4l2-core/v4l2-common.c
assumes this.

binning / subsampling does not change anything wrt the pixelrate it
just means that either the blanking becomes much bigger keeping
vts / hts the same, or that the FPS becomes much higher.

It is not like the sensor is sending an empty pixel on the CSI
link every other pixel when binning, since there is no such
thing as an empty pixel. So the sensor must go faster when doing
horizontal binning to keep the CSI link filled effectively
doubling the FPS, or requiring a much larger hblank after having
taken only half the time sending pixels.

(and the same applies to vts when vertical binning)

> pixel_rate = wdith x height x fps / bpp
>            => 1928 * 1088 * 30 / 10
>            => 6292992
> 
> i.e. the pixel rate not related to the CSI2 link frequency ?

No the pixel-rate control includes vblank + hblank "pixels"
and is in pixels/sec so no dividing by bpp, iow it is:

vts * hts * fps

and this must match

link_freq * 2 * #oflanes / RGB_DEPTH

Regards,

Hans



