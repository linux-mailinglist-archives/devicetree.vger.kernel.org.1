Return-Path: <devicetree+bounces-211609-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F2AB3FA7E
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 11:34:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 605E13A7699
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 09:34:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C90B2EB862;
	Tue,  2 Sep 2025 09:33:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CewS50UV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D60E2EBB8C
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 09:33:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756805630; cv=none; b=C1sj/7/TA2jbXAjN+t4IOEIgAbUYPDpORItN0QGkQloe9fzVrUh8+HF7TD0H1RQFHvYSxUaa3OKbveX1JLkrncNICir4sOjllg9zQ3fq7aY9XkMLhsPw1aJHvzdhvR5WsdU2ybC1vIcFITMeWeI9v22VPKUFzQz1JzVuOaQHJAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756805630; c=relaxed/simple;
	bh=mvGqDwKlRv+JLy+LbTVpv4wS0+iUVp2Rrkv66kH/6hY=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=nvXswUUDTobE3ZV0Wb0LNEB8T9tSQjiu/KbfXkzaL5wo1qouOh9w8jBIIwgnia9WKaS/A3GMFBi+Ptv9MDkwSs+spgBDPFnxapt7+aiiaz5excUKzIEILHB5mnIVLROj9sP8OnrkkfERw8lZWihGDuXonbQuR3QECPAdvoI1JTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CewS50UV; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-5607f21c62dso167367e87.1
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 02:33:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756805626; x=1757410426; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2WXdsrQ3eI1ThGeTVe6WVTbSehctD5BTu1VZHdzBLQo=;
        b=CewS50UV1T3cS61SoPcmWd1r94SwkbrUUzc4UHG3EbJ64JY4I+98sX3H7H2gqW1GYK
         FHvxXtMdiuVbf7Co2FK0By+awiGyYsJSx3aVRHRm9c86jK19t5fPq89vWHGeASz5ha/I
         p4195UyUxvwtoFzU2k19F1eplqQUo4z95HhP4UmekPPu1z44oe0QzI/lSvskqnzm4Y1D
         sIDO0srqm2q/pLoknXSBVhd8qSPblbd+ETzuPPt933j3N1QqbmGDWgsXu5DRVwRR53Bh
         LPH6KAH9NZ1INIWMWhYbrpuc0Yhaq6uLRiyPAGMBH79ZiBWG7blwKyaMvjgjRkrg5F1e
         /jHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756805626; x=1757410426;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2WXdsrQ3eI1ThGeTVe6WVTbSehctD5BTu1VZHdzBLQo=;
        b=s/7dnWVEyhlcEjVo48FtwuDRESYqSDasWhFM3QlwcT3DvgRv8tnP1VKCkEL/V2nNQ2
         E4Byx439I2M6z1EsgrZMMaDOdhodjVlbr/7nSFV+ggR3qhpAHeiSSYKYBFhoTfTFHt+n
         505c4OziAPC65nKd8TsGt5vwscUYJLgAQ+cGb0cueGf67INgY1fnpkHX/JYrmkCo6Gym
         hu9bb99xXwORsBDWysv55GLX3DgY7wpAgd4wWRsO8BIJ7v/MnMLGj6eayzsinJlywS0M
         GoiR+H1KiFB8W0zIzukE6iFiF2yrO9HMe/+clSHLlHqmAou2R7P9aqg1YZ6oqyrYrrGw
         hhSA==
X-Forwarded-Encrypted: i=1; AJvYcCUkyIA8MBPeRbhGpP699pE+eGRELj1DCKqE8RNbhMzRoBZkteZfADc0+30W4vxGyTcvTqb36MBzn/q4@vger.kernel.org
X-Gm-Message-State: AOJu0Ywobi5vPgFgpFzox4gIKCBGul6YhfrqAs/BgITTYYqg0636zTm6
	Jzy+mxEJizXVEDNFIxRNu2jZ+J8s6hn4LSoDOuPTrmVcIOzlgNhSFDz51WrSKdlIxQnhIDUlFDw
	6u4MW
X-Gm-Gg: ASbGncvdqYqLAKZCMoEW3DV06wYzmSf95Gghr9FXZWCRY7BZ9g8B9nNj6CF5MceeARH
	xDWsW9lNSmycTgusoJxqJG9qt6O1UBz2LZMylmhOLzOqAAsuBmrOki36//Z2/fBh8LjWTib6DmF
	3gMWYQmQ+GAP7m246MjxMhTkV1jWFRgCjzLny4nSo0FMyC816JPiZqahgsj3hHHPRAr//XHKFVs
	meaMpbxpdPM3xdEs7Iqo/mevBzqnQLtsosPfpaOiUHMI81pSfiSHyv9+iTTaGR8GeKfX36YfLyy
	VVHIrDrCizRHJofuRFVS4cUM8vo0uxn7JYA9Kb/+eUsFf2UMJIs76QawfIEGdMtEJXv9x1SWsG6
	upnia4Ibx/f31RzTBLIhGgRd4FJzg3mJBXgBgiCJ62tuXeSAIlwtTwbCyS2p4w6ZwYWnS8wFnJn
	+/JlQi7Q1cKmk=
X-Google-Smtp-Source: AGHT+IH0R88JtERWcmI/1sAbpj3SOL9TJiYlxb8qzg+wBv99Po12IEWWWiRt+cg5/FROnX2xs4xX1A==
X-Received: by 2002:a05:6512:2313:b0:55f:5298:47f3 with SMTP id 2adb3069b0e04-55f6affea28mr2184148e87.3.1756805626438;
        Tue, 02 Sep 2025 02:33:46 -0700 (PDT)
Received: from [192.168.1.100] (88-112-128-43.elisa-laajakaista.fi. [88.112.128.43])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-560826d67c9sm570966e87.40.2025.09.02.02.33.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Sep 2025 02:33:46 -0700 (PDT)
Message-ID: <da59038d-edd6-4444-861f-adb65b040d0e@linaro.org>
Date: Tue, 2 Sep 2025 12:33:40 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/2] media: i2c: Add OmniVision OG0VE1B image sensor
 driver
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@kernel.org>,
 Tarang Raval <tarang.raval@siliconsignals.io>
References: <20250829144242.236732-1-vladimir.zapolskiy@linaro.org>
In-Reply-To: <20250829144242.236732-1-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Sakari.

On 8/29/25 17:42, Vladimir Zapolskiy wrote:
> OmniVision OG0VE1B is a monochrome image sensor, which produces frames
> in 8/10-bit raw output format and supports 640x480, 400x400, 200x200
> and 100x100 output image resolution modes.
> 
> At the moment the only supported resolution in the device driver is
> 640x480@120fps (Y8).
> 
> The driver version is based on top of media/master, which contains
> a new devm_v4l2_sensor_clk_get() helper function.

I'm not very well familiar with the linux-media processes, let me ask
you about an expected interpretation of a "Superseded" patch status,
which is assigned to this driver and another OV6211 one.

Is there anything else expected to be done on my side?

Thank you in advance.

> 
> Output of v4l2-compliance tool from v4l-utils-1.20.0:
> 
> ----8<----
> v4l2-compliance SHA: not available, 64 bits, 64-bit time_t
> 
> Compliance test for device /dev/v4l-subdev30:
> 
> Required ioctls:
> 
> Allow for multiple opens:
> 	test second /dev/v4l-subdev28 open: OK
> 	test for unlimited opens: OK
> 	test invalid ioctls: OK
> 
> Debug ioctls:
> 	test VIDIOC_LOG_STATUS: OK (Not Supported)
> 
> Input ioctls:
> 	test VIDIOC_G/S_TUNER/ENUM_FREQ_BANDS: OK (Not Supported)
> 	test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
> 	test VIDIOC_S_HW_FREQ_SEEK: OK (Not Supported)
> 	test VIDIOC_ENUMAUDIO: OK (Not Supported)
> 	test VIDIOC_G/S/ENUMINPUT: OK (Not Supported)
> 	test VIDIOC_G/S_AUDIO: OK (Not Supported)
> 	Inputs: 0 Audio Inputs: 0 Tuners: 0
> 
> Output ioctls:
> 	test VIDIOC_G/S_MODULATOR: OK (Not Supported)
> 	test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
> 	test VIDIOC_ENUMAUDOUT: OK (Not Supported)
> 	test VIDIOC_G/S/ENUMOUTPUT: OK (Not Supported)
> 	test VIDIOC_G/S_AUDOUT: OK (Not Supported)
> 	Outputs: 0 Audio Outputs: 0 Modulators: 0
> 
> Input/Output configuration ioctls:
> 	test VIDIOC_ENUM/G/S/QUERY_STD: OK (Not Supported)
> 	test VIDIOC_ENUM/G/S/QUERY_DV_TIMINGS: OK (Not Supported)
> 	test VIDIOC_DV_TIMINGS_CAP: OK (Not Supported)
> 	test VIDIOC_G/S_EDID: OK (Not Supported)
> 
> Control ioctls:
> 	test VIDIOC_QUERY_EXT_CTRL/QUERYMENU: OK
> 	test VIDIOC_QUERYCTRL: OK
> 	test VIDIOC_G/S_CTRL: OK
> 	test VIDIOC_G/S/TRY_EXT_CTRLS: OK
> 	test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: OK
> 	test VIDIOC_G/S_JPEGCOMP: OK (Not Supported)
> 	Standard Controls: 10 Private Controls: 0
> 
> Format ioctls:
> 	test VIDIOC_ENUM_FMT/FRAMESIZES/FRAMEINTERVALS: OK (Not Supported)
> 	test VIDIOC_G/S_PARM: OK (Not Supported)
> 	test VIDIOC_G_FBUF: OK (Not Supported)
> 	test VIDIOC_G_FMT: OK (Not Supported)
> 	test VIDIOC_TRY_FMT: OK (Not Supported)
> 	test VIDIOC_S_FMT: OK (Not Supported)
> 	test VIDIOC_G_SLICED_VBI_CAP: OK (Not Supported)
> 	test Cropping: OK (Not Supported)
> 	test Composing: OK (Not Supported)
> 	test Scaling: OK (Not Supported)
> 
> Codec ioctls:
> 	test VIDIOC_(TRY_)ENCODER_CMD: OK (Not Supported)
> 	test VIDIOC_G_ENC_INDEX: OK (Not Supported)
> 	test VIDIOC_(TRY_)DECODER_CMD: OK (Not Supported)
> 
> Buffer ioctls:
> 	test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: OK (Not Supported)
> 	test VIDIOC_EXPBUF: OK (Not Supported)
> 	test Requests: OK (Not Supported)
> 
> Total for device /dev/v4l-subdev30: 41, Succeeded: 41, Failed: 0, Warnings: 0
> ----8<----
> 
> Link to v1 of the OG0VE1B camera sensor device driver:
> - https://lore.kernel.org/all/20250820224646.130270-1-vladimir.zapolskiy@linaro.org/
> 
> Changes from v1 to v2:
> * added Reviewed-by: tag to the device tree binding part (Rob),
> * removed unnecessary explicit setting of og0ve1b->sd.dev (Tarang),
> * switched to regulator bulk operations (Sakari comment for ov6211),
> * minor non-function changes.
> 
> Vladimir Zapolskiy (2):
>    dt-bindings: media: i2c: Add OmniVision OG0VE1B camera sensor
>    media: i2c: Add OmniVision OG0VE1B camera sensor
> 
>   .../bindings/media/i2c/ovti,og0ve1b.yaml      |  97 +++
>   MAINTAINERS                                   |   8 +
>   drivers/media/i2c/Kconfig                     |  10 +
>   drivers/media/i2c/Makefile                    |   1 +
>   drivers/media/i2c/og0ve1b.c                   | 816 ++++++++++++++++++
>   5 files changed, 932 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,og0ve1b.yaml
>   create mode 100644 drivers/media/i2c/og0ve1b.c
> 

-- 
Best wishes,
Vladimir

