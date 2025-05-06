Return-Path: <devicetree+bounces-174195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 073B6AAC512
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 15:05:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A70A41890FF9
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 13:01:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A05B728001C;
	Tue,  6 May 2025 13:01:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="OgG4NkIe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F9C227FD75
	for <devicetree@vger.kernel.org>; Tue,  6 May 2025 13:01:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746536466; cv=none; b=pwesfeiwga9T3uxugSQFLk81THUWZ+vZ+nlwqWMPdvNdhP6F8on97nAy/mHNhaZCO3ri4mgJcmpYBayVpUGuO2w88ZGxeK6vOUGhizdK5tnvLgmQKzwfVExlTcoZuncvWNAOhU0YqKTQPlmpjOt2CLip87GJhj5X47bQCYNfKSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746536466; c=relaxed/simple;
	bh=EYIzdNUSbqL34NsMyE7Y2APXIRDyKxmi9aFbMvhERo8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u4MgS6dARIVIGSTZqZJp5u8HMdZqmKZxSAq6NZdjUFBB8l6lgtL5+xi6ANHxcgOD1yisALhtDcPkNOUKvTA3qiPBh0IpN9GjDFOLOsSo9mUXOtiu98IcypbG6FtJdOQV3yNP2q5dJ7VNCluyuaDCCzfz7PxIEbh5KJwTCvIRwus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=OgG4NkIe; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43cfdc2c8c9so24822145e9.2
        for <devicetree@vger.kernel.org>; Tue, 06 May 2025 06:01:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1746536463; x=1747141263; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5GNu47zJZYWC7rY+oMvhGzhb+HWxLrtzvrVuXSwaRas=;
        b=OgG4NkIeQV9yvJtxZ8Lw43o0/ckaX4LanHJRDpStFSM7SYnkviUWtxFkfVr1sEVDfC
         WBL8SFUUkQfBC5ytN57izGSGoRoRu3hrbiaEH8pWATkT6GZ/iwDQeUJFwfoi1Y089KMr
         euua59IZdnPMK4PcGGsh/TPybQcS5e6+3hcdUJKyrl2lzuCFs/k3l4cdBBN9mpHBu0L7
         hywvHRrlTOUO3ccH7bK6CU+aJ0fDFn5haCvFl1FwRAuh2SKEV0cB1ng8mE/F6mJ6XRD6
         faXiu1ezjMTOTb/uBwvp+94sSO2Bl1lefTm6doNiI1seQZ6gobcr7QI+YvXx49wCQ7SF
         fBoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746536463; x=1747141263;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5GNu47zJZYWC7rY+oMvhGzhb+HWxLrtzvrVuXSwaRas=;
        b=bIkCZtXYrpqp18dVIqMukkmKK0Rf1v6x/KWvSVwk1rIHxb+k8sQiTckv8MJPpAj2GV
         rdw2m92jbjDRc5cK8Aq6kg/nq4ppbrb/mImsUh/LUFnKXuA+hwmOoUyMmzf49kY1KF6U
         5mxzhB60ds4/tQgoc9toZC3JOHuGCG1EwjLuPNV8X9pbA03QIpB6ReOfdwlIThzZsQZ5
         xEF7ELn5GcOG57Gti97KL9MFnGqNA9Cd6xQtHbd0Jg2LAvCuVBfeBPrQKT28AhlZ1mjz
         r72+WClPKOAlI2X3JUp6gqpZtoX5CzLUM4Ut2q/H7/E5vdnFEy9KeOMl56snHHhamzUX
         l3pw==
X-Forwarded-Encrypted: i=1; AJvYcCXsPAInfIRtW5IRdhLFt8ZM2KivW0Fav2LBvJi4NpzldpW3QTI+Ni8CQZT18unS2lDn19euGdTgDY2S@vger.kernel.org
X-Gm-Message-State: AOJu0Ywkqc0ny42J8GXiuUG/Zr1PKpGSk0tJzMqp1yjr01EMxpssgMEn
	B7V1SLqlkF5QOFXWLR2e0X3Bruu2e4VA4bgyo9KlHRtN21MGYVe/6jdakCCjTS7tqKhLFeiAz2p
	O
X-Gm-Gg: ASbGncu/HSZ0mVhgLOCLaAiMpDXH8rRDG04fiBp3AgSFNlo4rTr8DKKZGllZlRo+ZQI
	cDd+Peii06XMJFcxG6tDYLUK33pShzYmZegFI+emJzGtbyfbrxfx8cS7N+tEgwuw/IX/hBAnxkj
	l2AaA3Dr4Tp7p2aX/kZuPV+AVn5Sfc37ksZ5nH5eQfb2z8gN0lAtKUiONbEX/K7f/EmbmVOrJOI
	ugS89i5ZTNx5b4CuVPzVE+YjVqpufQn0XnIpicIITomKjAIa0QiG7Q6HkNAJB/H81DTpCb/FB1w
	UqGVQV1GA3HsRIk0tBk1qXpk4NqvYYbChLwPjKtxkyQZKFSfgtSBA6Cw4KJGFV7cjVuwHYdXwtA
	A7+kRWok=
X-Google-Smtp-Source: AGHT+IFxpsDPUHLkbEcc8hCvw9rBmY9SPds0zPZORDrnRUntARZMdA/JmVZMURS6+lD0arIS4ak9Jg==
X-Received: by 2002:a05:600c:3513:b0:43d:7413:cb3f with SMTP id 5b1f17b1804b1-441d0fbd2f2mr24762665e9.5.1746536462594;
        Tue, 06 May 2025 06:01:02 -0700 (PDT)
Received: from archlinux (host-87-8-31-78.retail.telecomitalia.it. [87.8.31.78])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-441b2b20aa6sm217376285e9.27.2025.05.06.06.01.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 May 2025 06:01:00 -0700 (PDT)
Date: Tue, 6 May 2025 14:59:50 +0200
From: Angelo Dureghello <adureghello@baylibre.com>
To: Andy Shevchenko <andy@kernel.org>
Cc: Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 3/5] iio: adc: ad7606: add offset and phase
 calibration support
Message-ID: <k235e2mj4od3cll5wstpl4oethlkd6d6xytow4d4wzfcsxkx7y@wj7dh3zhn2sh>
References: <20250502-wip-bl-ad7606-calibration-v2-0-174bd0af081b@baylibre.com>
 <20250502-wip-bl-ad7606-calibration-v2-3-174bd0af081b@baylibre.com>
 <aBTLBvw_88hQBbns@smile.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aBTLBvw_88hQBbns@smile.fi.intel.com>

On 02.05.2025 16:39, Andy Shevchenko wrote:
> On Fri, May 02, 2025 at 03:27:00PM +0200, Angelo Dureghello wrote:
> > From: Angelo Dureghello <adureghello@baylibre.com>
> > 
> > Add support for offset and phase calibration, only for
> > devices that support software mode, that are:
> > 
> > ad7606b
> > ad7606c-16
> > ad7606c-18
> 
> ...
> 
> > +static int ad7606_get_calib_offset(struct ad7606_state *st, int ch, int *val)
> > +{
> > +	int ret;
> > +
> > +	ret = st->bops->reg_read(st, AD7606_CALIB_OFFSET(ch));
> > +	if (ret < 0)
> > +		return ret;
> > +
> > +	*val = st->chip_info->calib_offset_avail[0] +
> > +		ret * st->chip_info->calib_offset_avail[1];
> 
> Something wrong with the indentation.
> 
> > +	return 0;
> > +}
> 
> ...
> 
> > +static int ad7606_set_calib_offset(struct ad7606_state *st, int ch, int val)
> > +{
> > +	int start_val, step_val, stop_val;
> 
> All need to be signed?
> 
> > +	start_val = st->chip_info->calib_offset_avail[0];
> > +	step_val = st->chip_info->calib_offset_avail[1];
> > +	stop_val = st->chip_info->calib_offset_avail[2];
> > +
> > +	if (val < start_val || val > stop_val)
> > +		return -EINVAL;
> > +
> > +	val -= start_val;
> > +	val /= step_val;
> > +
> > +	return st->bops->reg_write(st, AD7606_CALIB_OFFSET(ch), val);
> > +}
> 
> ...
> 
> > +static int ad7606_set_calib_phase(struct ad7606_state *st, int ch, int val,
> > +				  int val2)
> > +{
> > +	int wreg, start_ns, step_ns, stop_ns;
> 
> Ditto.
> 
> > +	if (val != 0)
> > +		return -EINVAL;
> > +
> > +	start_ns = st->chip_info->calib_phase_avail[0][1];
> > +	step_ns = st->chip_info->calib_phase_avail[1][1];
> > +	stop_ns = st->chip_info->calib_phase_avail[2][1];
> > +
> > +	/*
> > +	 * ad7606b: phase dielay from 0 to 318.75 μs in steps of 1.25 μs.
> > +	 * ad7606c-16/18: phase delay from 0 µs to 255 µs in steps of 1 µs.
> > +	 */
> > +	if (val2 < start_ns || val2 > stop_ns)
> > +			return -EINVAL;
> 
> Wrong indentation. Please fix in all places where it happens.

as already said, my code is correct, 1 tab after the if, anywone knows 
why git formats the patch this way ?  

> 
> > +	wreg = val2 / step_ns;
> > +
> > +	return st->bops->reg_write(st, AD7606_CALIB_PHASE(ch), wreg);
> > +}
> 
> -- 
> With Best Regards,
> Andy Shevchenko
> 
> 

