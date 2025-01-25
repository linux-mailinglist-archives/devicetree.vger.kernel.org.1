Return-Path: <devicetree+bounces-140899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 39695A1C2A5
	for <lists+devicetree@lfdr.de>; Sat, 25 Jan 2025 11:13:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 878957A3118
	for <lists+devicetree@lfdr.de>; Sat, 25 Jan 2025 10:12:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D0781E7C1E;
	Sat, 25 Jan 2025 10:12:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="hyzt+B3P"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5A91E0B91
	for <devicetree@vger.kernel.org>; Sat, 25 Jan 2025 10:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737799945; cv=none; b=m4v4ePn/4lFyAYAL1Dk0qNdvWne1QJgLkxeq5uNoJvJAWQvQSdVPfAXbcVG8io/vbLz02WJAiagiBaSRvvTXf2CEE7o3vw0NR2RXK9jj+XjJob5U6blS98sK8jwAyCEaKluRGNDkMi6ufPWqqEkiQOJFydiOXls35gDWm3WGevI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737799945; c=relaxed/simple;
	bh=dvQM7yJ5/mqxQUSgsCXLE4iTBDMmQzrICMlF/ow7Apk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iEA+Rc4GmEYDsGnmx9XlVH8d6sXS04vHMRCJim/yPKScEa23tebVQsKPPok6tjhcLUpAkWVJw5cqn9DDJcnNV8lPatpcqvqOWLrqiEP3dDUx+uq6uo2tZiPKO/ciFnFWNcBEn49fpbw5gn1mUwfe/iHS5Ijdu10P4j8B9AooYWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=hyzt+B3P; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1737799942;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PSWL9rPqiOXSJCvaBQbQWTuINmRs8t2K11WreHClW+E=;
	b=hyzt+B3P0HEoagYxvar/WNcKNy+kWP6uMHFRnUUdZXc+O7jCBelAAkGsnJk7g/crfGCsvu
	ga0+jZWHBrksv0R2nHguE0Wi+hblxCYOJFP8aPf+tpuuQcgoLoOLW29pm3kU+VDk34W47/
	MJkviZ/V1fn9InaTZpjmguqZA4ntcac=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-171-0ZMXE22lOLCpW1rj77ayfw-1; Sat, 25 Jan 2025 05:12:20 -0500
X-MC-Unique: 0ZMXE22lOLCpW1rj77ayfw-1
X-Mimecast-MFC-AGG-ID: 0ZMXE22lOLCpW1rj77ayfw
Received: by mail-ed1-f70.google.com with SMTP id 4fb4d7f45d1cf-5dbaaed8aeeso3327102a12.1
        for <devicetree@vger.kernel.org>; Sat, 25 Jan 2025 02:12:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737799939; x=1738404739;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PSWL9rPqiOXSJCvaBQbQWTuINmRs8t2K11WreHClW+E=;
        b=jgJE69C+BUZscet8JIJe+PozA5QVTZK3+ridbU/feHG+5DzD8u8D0e8IIQ5EtU0Bdp
         czt8P+Y2thjxVH956rJg7YCWqFkQnT+prne+Necnb5Y7l0fiM55bD/Hdlx/jADvIF4G7
         2+dC1omDRgQI/eHDJxYA0jyMc3o+AdenwEOmJn8JuL63DeHPsEnwLDmLyBBvXCTSiUju
         SuLPLSjmiAlHG+eINWKiX5hFe6FrQWktNQeL/Ly7UR1zmM5q70NL1QAZNcOCGf0LqExB
         eVVF/AGZyUxoHPpRfkMcHOvIOEmNE/iimfZpqHnh09yK1AXiRm8YhLIUF5fwKaFvTLl0
         GYNA==
X-Forwarded-Encrypted: i=1; AJvYcCW5uWTbU13lugT4FLYvI7z1mDYgPA2L69sEqQvxar40R01M7MLISpRYNDssCEegBbVrFGvq/huk10sg@vger.kernel.org
X-Gm-Message-State: AOJu0YwLniVIzKmIUanA40TxtUPOfxn5W3F7CsaaO6imD/7Q4dg6LYnB
	0VRlitxRiJAZvQ5eZxxcPYK3Ecg+QXR9QHsrCRZhGejvpcNebu6K03fldQGT9ZQBXbnbWSPcsRG
	yZGSvfvwJTfaNDe3QRZ0G2t9JR5EOFshBDkcgi8Oo/jV9s+SdIaC21L4ZeHE=
X-Gm-Gg: ASbGncvxEVcvieqk2/ifjmgJ36quYR+bXAHeGetnuLOY3dBxTHDs7BGAGdMU9OWZd+7
	pOCeFzw9nz4SZWb+CtNJYR3agfquESbQaEho/ZdMKSOlTR+31QBLdd7Fzx05ebe/xxsk1vTK8b5
	HMOL6qsvp6ZSEbVuWFil9FqH6e5Sm9FffSPNCybOJZp4W4cO6tbvop0AEdYLmXsnMWAoxaJngpu
	O6R3oRsSA5Ps8DZsXGQE0rrH1f9xo9+dYUGYuD3DsIEXrkEraV/GOdaoH3rypyOVkJb9qwtTUGU
	aELdg3L5WvAKSicyu61yckuEVrt1fE3nQzpnYTJJsHwjLxLrDJMIVl6HFfOkeEo1gL3+W5wROEE
	rvvFBW3YA4tLFvdJNyY86pbXq89AjNqWJZ8Dy3Sq3O3iz3IAl8xu+HVA=
X-Received: by 2002:a17:907:d03:b0:aa6:730c:acb with SMTP id a640c23a62f3a-ab38b0b7ee8mr3157077866b.8.1737799938829;
        Sat, 25 Jan 2025 02:12:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGJcuBOGkDjGNxbr8QJIaHN3eY85+YvITwAzZ+fw2iHcMG6hDNbv5KtHD/EJ8upWj8g6afZ+A==
X-Received: by 2002:a17:907:d03:b0:aa6:730c:acb with SMTP id a640c23a62f3a-ab38b0b7ee8mr3157071966b.8.1737799938267;
        Sat, 25 Jan 2025 02:12:18 -0800 (PST)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec? (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl. [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab675e12d50sm267718966b.10.2025.01.25.02.12.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 25 Jan 2025 02:12:16 -0800 (PST)
Message-ID: <367710fc-9c66-4cf5-9059-1df00320f1f3@redhat.com>
Date: Sat, 25 Jan 2025 11:12:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] media: ox05b1s: Add omnivision OX05B1S raw sensor
 driver
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 "sakari.ailus@linux.intel.com" <sakari.ailus@linux.intel.com>
Cc: Mirela Rabulea <mirela.rabulea@nxp.com>, mchehab@kernel.org,
 sakari.ailus@linux.intel.com, hverkuil-cisco@xs4all.nl, robh@kernel.org,
 krzk+dt@kernel.org, bryan.odonoghue@linaro.org, laurentiu.palcu@nxp.com,
 robert.chiras@nxp.com, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, LnxRevLi@nxp.com,
 kieran.bingham@ideasonboard.com, dave.stevenson@raspberrypi.com,
 mike.rudenko@gmail.com, alain.volmat@foss.st.com,
 devicetree@vger.kernel.org, conor+dt@kernel.org,
 alexander.stein@ew.tq-group.com, umang.jain@ideasonboard.com,
 zhi.mao@mediatek.com, festevam@denx.de, julien.vuillaumier@nxp.com,
 alice.yuan@nxp.com
References: <20241126155100.1263946-1-mirela.rabulea@nxp.com>
 <20241126155100.1263946-3-mirela.rabulea@nxp.com>
 <131271d3-f3be-450f-b4e1-a7efb65362f3@redhat.com>
 <20250125001437.GA19927@pendragon.ideasonboard.com>
Content-Language: en-US, nl
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20250125001437.GA19927@pendragon.ideasonboard.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Laurent,

On 25-Jan-25 1:14 AM, Laurent Pinchart wrote:
> Hi Hans,
> 
> On Fri, Jan 24, 2025 at 06:17:40PM +0100, Hans de Goede wrote:
>> On 26-Nov-24 4:50 PM, Mirela Rabulea wrote:
>>> Add a v4l2 subdevice driver for the Omnivision OX05B1S RGB-IR sensor.
>>>
>>> The Omnivision OX05B1S is a 1/2.5-Inch CMOS image sensor with an
>>> active array size of 2592 x 1944.
>>>
>>> The following features are supported for OX05B1S:
>>> - Manual exposure an gain control support
>>> - vblank/hblank control support
>>> - Supported resolution: 2592 x 1944 @ 30fps (SGRBG10)
>>>
>>> Signed-off-by: Mirela Rabulea <mirela.rabulea@nxp.com>
>>
>> Thank you for your contribution, I noticed in $subject
>> that the model-nr ends in a "S" and that you describe
>> this as a RGB-IR sensor.
>>
>> I've been working on OV01A1S support myself and one of
>> the issues is how to communicate the RGB-IR color-filter
>> to userspace.
>>
>> <snip>
>>
>> I see here:
>>
>>> +static const struct ox05b1s_sizes ox05b1s_supported_codes[] = {
>>> +	{
>>> +		.code = MEDIA_BUS_FMT_SGRBG10_1X10,
>>> +		.sizes = ox05b1s_sgrbg10_sizes,
>>> +	}, {
>>> +		/* sentinel */
>>> +	}
>>> +};
>>
>> That you are using MEDIA_BUS_FMT_SGRBG10_1X10, but that suggests
>> this sensor is using a plain Bayer color filter which is not correct.
>>
>> Here is what I have come up with:
>>
>> diff --git a/include/linux/drm_fourcc.h b/include/linux/drm_fourcc.h
>> index db679877..68ed65c5 100644
>> --- a/include/linux/drm_fourcc.h
>> +++ b/include/linux/drm_fourcc.h
>> @@ -447,6 +447,8 @@ extern "C" {
>>  #define DRM_FORMAT_SGRBG10	fourcc_code('B', 'A', '1', '0')
>>  #define DRM_FORMAT_SGBRG10	fourcc_code('G', 'B', '1', '0')
>>  #define DRM_FORMAT_SBGGR10	fourcc_code('B', 'G', '1', '0')
>> +/* Mixed 10 bit bayer + ir pixel pattern found on Omnivision ov01a1s */
>> +#define DRM_FORMAT_SIGIG_GBGR_IGIG_GRGB10 fourcc_code('O', 'V', '1', 'S')
>>  
>>  /* 12-bit Bayer formats */
>>  #define DRM_FORMAT_SRGGB12	fourcc_code('R', 'G', '1', '2')
>> diff --git a/include/linux/media-bus-format.h b/include/linux/media-bus-format.h
>> index b6acf8c8..e2938f0d 100644
>> --- a/include/linux/media-bus-format.h
>> +++ b/include/linux/media-bus-format.h
>> @@ -122,7 +122,7 @@
>>  #define MEDIA_BUS_FMT_YUV16_1X48		0x202a
>>  #define MEDIA_BUS_FMT_UYYVYY16_0_5X48		0x202b
>>  
>> -/* Bayer - next is	0x3025 */
>> +/* Bayer - next is	0x3026 */
>>  #define MEDIA_BUS_FMT_SBGGR8_1X8		0x3001
>>  #define MEDIA_BUS_FMT_SGBRG8_1X8		0x3013
>>  #define MEDIA_BUS_FMT_SGRBG8_1X8		0x3002
>> @@ -159,6 +159,8 @@
>>  #define MEDIA_BUS_FMT_SGBRG20_1X20		0x3022
>>  #define MEDIA_BUS_FMT_SGRBG20_1X20		0x3023
>>  #define MEDIA_BUS_FMT_SRGGB20_1X20		0x3024
>> +/* Mixed bayer + ir pixel pattern found on ov01a1s */
>> +#define MEDIA_BUS_FMT_SIGIG_GBGR_IGIG_GRGB10_1X10 0x3025
>>  
>>  /* JPEG compressed formats - next is	0x4002 */
>>  #define MEDIA_BUS_FMT_JPEG_1X8			0x4001
>> diff --git a/include/linux/videodev2.h b/include/linux/videodev2.h
>> index 3829c0b6..1b91ed0e 100644
>> --- a/include/linux/videodev2.h
>> +++ b/include/linux/videodev2.h
>> @@ -706,6 +706,9 @@ struct v4l2_pix_format {
>>  #define V4L2_PIX_FMT_SGBRG16 v4l2_fourcc('G', 'B', '1', '6') /* 16  GBGB.. RGRG.. */
>>  #define V4L2_PIX_FMT_SGRBG16 v4l2_fourcc('G', 'R', '1', '6') /* 16  GRGR.. BGBG.. */
>>  #define V4L2_PIX_FMT_SRGGB16 v4l2_fourcc('R', 'G', '1', '6') /* 16  RGRG.. GBGB.. */
>> +	/* 10bit mixed bayer + ir pixel pattern found on ov01a1s */
>> +#define V4L2_PIX_FMT_SIGIG_GBGR_IGIG_GRGB10  v4l2_fourcc('O', 'V', '1', 'S') /* unpacked */
>> +#define V4L2_PIX_FMT_SIGIG_GBGR_IGIG_GRGB10P v4l2_fourcc('O', 'V', '1', 'P') /* packed */
>>  
>>  /* HSV formats */
>>  #define V4L2_PIX_FMT_HSV24 v4l2_fourcc('H', 'S', 'V', '3')
>>
>> For this, note:
>>
>> 1. This is against libcamera's copy of the relevant linux headers, the paths
>> to the .h files are different in the kernel
>>
>> 2. Since I wrote this I learned that it looks like the intel driver for
>> the ov01a1s:
>>
>> https://github.com/intel/ipu6-drivers/blob/master/drivers/media/i2c/ov01a1s.c
>>
>> may have enabled horizontal-flip / mirroring by default, which means that
>> the order of each of the quads needs to be flipped.
>>
>> IMHO we need to resolve how to communicate the color-filters used on
>> these OV xxxxx"S" models to userspace. When I last discussed this with
>> Laurent, Laurent suggested using V4L2_PIX_FMT_Y10, combined with
>> a new field or v4l2-control to query the actual filter.
> 
> Yes, adding new pixel formats and media bus codes to represent CFA
> patterns won't scale. We need to switch to using controls to report
> those. Sakari is already working on a series for that.

Interesting, do you have a link to Sakari's work ?

>> The idea is to separate the depth/packing info from the filter info,
>> avoiding the possible combinatioral explosion of needing this special
>> filter with all possible deths. I gave this a quick try but at least on
>> the libcamera side there is still a lot of code assuming that both
>> depth and color-filter-type are communicated through a single fmt
>> integer. Also it seems that in practice there only is this one new
>> RGB-IR color filter used on the OV xxxxx"S" models so I think we
>> need just 1 new V4L2_PIX_FMT_ define (*).
> 
> Changes in libcamera are surely needed. There's work to be done, we'll
> do the work, and we'll solve this problem. Let's focus the effort in
> that direction.

Ok, so what does that mean for upstreaming support for omnivision
OVxxxxS sensors? Clearly advertising MEDIA_BUS_FMT_SGRBG10_1X10 is
wrong. So I guess that upstreaming this driver needs to wait until
at least the kernel API side of this is resolved?

Sensors relying on the new CFA control to communicatethe CFA type
could use a new (e.g.) MEDIA_BUS_FMT_RAW_1X10 or are we going to re-use
the monochrome (Y only) media bus fmts, so e.g. this sensor would
advertise MEDIA_BUS_FMT_Y10_1X10 and then the CFA control would provide
the actual CFA info ?

IMHO re-using the monochrome (Y only) media bus fmts seems best
to avoid needing to have to make a "RAW" copy of all of them.

This also matches with what we are already doing for IR only sensors.
AFAIK MEDIA_BUS_FMT_Y10_1X10 is currently already used for infrared
sensors, so sticking with that and adding a IR CFA option to
the CFA control to make clear this really is IR (*) seems to make
sensor for IR only sensors. At which point extending this to RGB-IR
sensors seems logical.

Regards,

Hans


*) Actually the whole spectrum the sensor is sensitive to really AFAIK



