Return-Path: <devicetree+bounces-169513-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E0222A972DE
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 18:37:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B8415189FB99
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 16:37:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7826F293B6C;
	Tue, 22 Apr 2025 16:37:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="t7JtO7ox"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3424290BB9
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 16:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745339830; cv=none; b=OSM0uNiaj9UBL3aH5GPsgjPXKqWtjeQvd+OWPZ2Dtiq68AB4+zr76szSmd98G0Lhoo3jZyksS3OwVZgYdnWXdY9WLKpZx/OH5yYiEaJFFKIIAe+cVRrjel2S3AfuOfXu8ZcQkcF5mGqMq1Rhn36fnqMM7E6wbuiFWjipNh/6L6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745339830; c=relaxed/simple;
	bh=nZrPMxYNkgQAw1l+m5oRrg6n8nxqvbfX20bz/ewIQt8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mCTmidq2fnhjvPno/PEmYIBPvs9Lnhx1Vfamr8wa2FEloZGcaZvJxizPRWipL4ZftN4Bz0e28APBuHFJHKDbVmKoYNgpd6gRVnTnw9H9Ss/RFAebEMK6rBhyp+eZFCGWglrYOR9yJjLfIoSsD+J1cZwlB9o7TnbgtLSrrXwZeDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=t7JtO7ox; arc=none smtp.client-ip=209.85.167.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-400b64ac5fcso2873041b6e.0
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 09:37:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1745339828; x=1745944628; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Pep2KTX2D95/sTe/gu9n1JKfRNihxNZ6pUsc7YWRGr0=;
        b=t7JtO7oxnZAPViyPe1Pa4ZJ+SS4jWY0tN0KjPhhxNyG2PbTRd/3bNy6wLFyVLebTDP
         Zf28LRCZQDP2HO/pyFDP4vTj5+/NcuFRr1UyzWBMqd+aLsy3QCO4HDFiBw/59nnCy2gv
         2nFswnoKWnShtMAUGVxDWEsEzFVBLs6yySQKOfdKKqua0m/WtTIhTwYlgTamn6K4Qp6b
         cNHJvKixgrNm0HrfSSG0q2KL+IWmtqK+1yyDBftLGIDBDrot+Sc3pGhDnojqkA/o1l96
         /xZ8bvYPqFysVj2tm8l+cHOuI8zbXQsEEH+kEm5A+1MUK/nAiZgaSbyPig3FW2LzUd8d
         Wzig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745339828; x=1745944628;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Pep2KTX2D95/sTe/gu9n1JKfRNihxNZ6pUsc7YWRGr0=;
        b=QqqAQT6x3khnmoqq2miD3LCsL3kn8E5bfQRl9AXtZHJDr//+GPTDsqbAvNKFpGNpU2
         wGNEVzZJvmx8F9qNi2qqx8BmqtzB6wrIX5fYluC0d5K9H5bBqizbirqZiYO8KX1lbDjA
         Tkad+ObpyCeYO/yzLCbxo+lNpbLso1lVy3keDpLbScDHu/nQzXq9s8z0iJjh5zEvVFKK
         Zk7NiSnRWam4ktI/fTA++yZnDCwm+NffwlOJMOJeicMMbqr3KmUhJ1INekQVsBg2kMnf
         I7EKKoAZcYfg8vehU/9P57wInYhTMIA2GdBbwBwU+MAljH/yN2/cIQ6/rLahSwlpeN0e
         RN1w==
X-Forwarded-Encrypted: i=1; AJvYcCXPWgcBNYuyL0bPVaO5AErgfpkkoejD3R8jpUmhuyhFnZxT/hb151haX67sGNYF5YM+SUkW4+bgoThE@vger.kernel.org
X-Gm-Message-State: AOJu0YyBcj+MrIYAjEEODK+hTi86MsHQqAdgagVXPlA+LtyIUWPW21kq
	0KKckpgzY/j+PH6DULngsGgJTypFNuCp5IakW71iRq0sEz3Be+gvmQltHNQYAKhjyDru9Fq3Iyz
	IO8o=
X-Gm-Gg: ASbGncsFVrwuY4K0IBXa5o44kdnTDh6EBjcTccqfbSm4Xj/u8XfRytXhf/6zRiZzSMi
	pEYUgk3MN3xJ3QHeDpoQT72h/1CV5mZdveVF8w1C1BMNZGWlYIs6dZa28FLNK9rL4iV2JJp+v1M
	NFo7BMN+7MGFYoLdy2Y0OzZo3LPWb5xFuAFXrlMmHG4o9yGlca09Pi7jpBf5xo40QrguQnpQRX9
	FN5SSa2/SnJWjD8J4PXUd/OsmFOoD+st7+XKj0ayrNYIm3+D6K7kEUpnz6cuihhMJJjUAY2SIgt
	ygLbDS21kGykwEF+XnH4ZnRAbzxlWwkBF8IkCxPoIR2PDf26V0RDC5tgxtefVYUFojsFNvIeaU3
	evWgmGTd1o0ACTpogww==
X-Google-Smtp-Source: AGHT+IEsNtQ5cBYHOB91x37Mh5K6Ezpdmm9D8utb/XIypNd8fTQbJlQwrNsui/TKQd2P0uFIbfLWhQ==
X-Received: by 2002:a05:6808:80cc:b0:3f6:aad5:eac8 with SMTP id 5614622812f47-401c0932754mr8613325b6e.6.1745339827721;
        Tue, 22 Apr 2025 09:37:07 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:c8d1:e0ed:ce8b:96a3? ([2600:8803:e7e4:1d00:c8d1:e0ed:ce8b:96a3])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-401beeea9c0sm2170837b6e.22.2025.04.22.09.37.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Apr 2025 09:37:07 -0700 (PDT)
Message-ID: <efec7563-9591-4539-a154-bf486d35df0e@baylibre.com>
Date: Tue, 22 Apr 2025 11:37:06 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/3] iio: dac: ad3530r: Add driver for AD3530R and
 AD3531R
To: Andy Shevchenko <andy@kernel.org>,
 Kim Seer Paller <kimseer.paller@analog.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen
 <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <noname.nuno@gmail.com>, =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250421-togreg-v5-0-94341574240f@analog.com>
 <20250421-togreg-v5-3-94341574240f@analog.com>
 <aAexmOU1e-7hXq6Y@smile.fi.intel.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <aAexmOU1e-7hXq6Y@smile.fi.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 4/22/25 10:11 AM, Andy Shevchenko wrote:
> On Mon, Apr 21, 2025 at 12:24:54PM +0800, Kim Seer Paller wrote:

...

> 
>> +#define AD3530R_INTERNAL_VREF_MV		2500
> 
> _mV (yes, with Volts and Amperes we use proper spelling).

When did we start doing that? No one asked me to do this in any of the new
drivers I did in the last year, so I didn't know this was a thing we should
be doing.


> 
>> +#define AD3530R_LDAC_PULSE_US			100
> 
> ...
> 
>> +	int (*input_ch_reg)(unsigned int c);
> 
> c? channel?
> 
> ...
> 
>> +	int vref_mv;
> 
> _mV
> 
> ...
> 
>> +static int ad3530r_input_ch_reg(unsigned int c)
>> +{
>> +	return 2 * c + AD3530R_INPUT_CH;
>> +}
>> +
>> +static int ad3531r_input_ch_reg(unsigned int c)
>> +{
>> +	return 2 * c + AD3531R_INPUT_CH;
>> +}
> 
> c --> channel
> 
> ...
> 
>> +static const char * const ad3530r_powerdown_modes[] = {
>> +	"1kohm_to_gnd",
> 
> kOhm
> 
>> +	"7.7kohm_to_gnd",
> 
> Ditto.
> 
>> +	"32kohm_to_gnd",
> 
> Ditto.

These are defined by sysfs ABI, so can't be changed otherwise it would break
userspace.

Comes from...
What:		/sys/bus/iio/devices/iio:deviceX/out_voltageY_powerdown_mode

> 
>> +};
> 

