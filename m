Return-Path: <devicetree+bounces-166529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CC04BA87985
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 09:55:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AB3E216B7F5
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 07:55:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 867C72586E0;
	Mon, 14 Apr 2025 07:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="f5UWmerM"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AF192580F4
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 07:55:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744617334; cv=none; b=Qh9OiLgLmlfH+AGsOFxbo7pQw944ZC+yTWETvK9jRXeHSpK43YxD/cUgt9i1ixgy0XZBo8OGVdTHxUetaM85LHb5gkLiWgMeROsCf6L9P5JF64EBgrv/nSlL2OvI9riBY5g1qrDgfdMJdQBcVBVdVYh0jrQ6W1E2y2LvhfZ5XKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744617334; c=relaxed/simple;
	bh=wjNxOzatIMQ/Kiz1EXdXpytR1voiNFIQ15IZqnNJ+ec=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=AmR3Z/zSEfUZ/c7hjy0ZvabQh0cTIGrEC9FB3PzR22S5+4IYua3AJFWzZf22cdWElSvraLcsFw033cDt1nlveHnqPnQKYd51U4z4nRaLb/TACd30pixXB0ZaGTFLs7thG5M1tct4KY6KKED2mrkyRgv5cQtbrB89/wa6apVFzUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=f5UWmerM; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1744617331;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=VyGy8TpTRsYSW6wLWDE/VjeSgPcgxN9oD2qpQCJJZhc=;
	b=f5UWmerMEIUR5oAuPwULPcZpcOUcVI9VBdR6IjoM83FK5uOQ9307ai9ntCbY9Ge5lCNyeb
	a0Dpb+t4f7kinFasljQjIod4jDmaJgYOeXovYyPr0xWjsjI/QuOTEW+rIpflKcPuN6VBug
	qb/PmvwN596A8S3Mxzw7KzeEWRKqLpw=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-2-v5TMc3Z7MOSr2EIuhWNyVA-1; Mon, 14 Apr 2025 03:55:29 -0400
X-MC-Unique: v5TMc3Z7MOSr2EIuhWNyVA-1
X-Mimecast-MFC-AGG-ID: v5TMc3Z7MOSr2EIuhWNyVA_1744617328
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-39d8e5ca9c2so2621758f8f.0
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 00:55:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744617328; x=1745222128;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VyGy8TpTRsYSW6wLWDE/VjeSgPcgxN9oD2qpQCJJZhc=;
        b=JaYhnFNiJhCkFbVH5PPTMYlKORnsPlQftFj4Z0AViSIfj/f/bZkKD305HFQVW9Osf8
         KTRXCsU+mYRNBV0xWdTHhE7Y4JTUPnm4vWjgPUBqOTcwWVdbnU3y0XBK4xMPdqXrGQNU
         FUMVM+6nh5Mvd49mDIQARkf7kPlUxAf2hpOOgoU4N5JF0Yr0aX10MAbA+Q8tgWOPopi1
         DHIuTr3A2sw3aFsY/gaP4EeEdQzAl8W5iK4zw8n8kl8D5Ox442SNzLbsRsc9RpopQXdp
         /MydFzNFsBj0lMitKAyGTOfrliFkf1pIPihGCEvkaGY2WJjYSwu41S4ArufilCpW3LFG
         6k2Q==
X-Forwarded-Encrypted: i=1; AJvYcCUaO+KBvUsLsQPr77MPI7kS8UvxUuL4g6qVNRXxzMlMQmVpKD7puILd9c7+6cleeGYB6xupnIqKO7u4@vger.kernel.org
X-Gm-Message-State: AOJu0YyPwe6T8lANfl4oWuq6A6MnBpbStbjaL2TvWsVwWXyTIFeDrTnq
	z0FzVCsiMQQV6ew3r6ZKBlkJRUmlqguydaq7d9GYvIhx+AJ+vJ8L4xxwZ5kt98rwaEvNqtzzg8h
	91YIAzyY1GUdx8vzagqX2j6Qsng1YMykYGvlfO3dPrvDcBes9Ji3Nkj2IZ7I=
X-Gm-Gg: ASbGncuczAaIcfTjUqlXtWLp1SciMiP0W9tczkGbW9HqOh+lrEn+Tuw24VT+SpuSil+
	LKTklYPa1ZPtsl7/HVLx13wIEZdlOaIMUJJUjjD7W2Dahk0g3QC8NyKjZABozeHduuOYMWfPBAc
	O5Br5OW7g1WrymugrrnPEMBGKLW6/YgFKLTVlbi2leUZYfD8Zi9Q3ZKaMcI78CD+GlQSfe0iKVL
	NMtlXjaBjiBHbmuV56o/bcLJS8WrJz9Tx6lRBfFZ/r+xDscKJmu6MrOESMMfioHK1I49T21f1jY
	hslFRlbtbdsCLOu/7WgnpONR5NFZrxV2tNHOWEw+5x0T
X-Received: by 2002:a05:6000:2586:b0:39c:e28:5f0d with SMTP id ffacd0b85a97d-39ea52171d4mr8935036f8f.25.1744617327906;
        Mon, 14 Apr 2025 00:55:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IETQUkn0hF6FLm9NcXpYwCxUXih2R9GqT9ocdhEggOG/wqrLcDmZ7Cdgh4Umo12Ue468Vucbw==
X-Received: by 2002:a05:6000:2586:b0:39c:e28:5f0d with SMTP id ffacd0b85a97d-39ea52171d4mr8935008f8f.25.1744617327462;
        Mon, 14 Apr 2025 00:55:27 -0700 (PDT)
Received: from localhost ([2a01:cb1d:968a:da00:a3a9:3006:4689:68f6])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39eaf43cdfdsm10378556f8f.61.2025.04.14.00.55.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Apr 2025 00:55:26 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Marcus Folkesson <marcus.folkesson@gmail.com>
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Thomas
 Zimmermann <tzimmrmann@suse.de>
Subject: Re: [PATCH v3 2/3] drm/st7571-i2c: add support for Sitronix ST7571
 LCD controller
In-Reply-To: <Z_oOkb2Lx3HNhnSK@gmail.com>
References: <20250408-st7571-v3-0-200693efec57@gmail.com>
 <20250408-st7571-v3-2-200693efec57@gmail.com>
 <87cydn9bkx.fsf@minerva.mail-host-address-is-not-set>
 <Z_Uin2dvmbantQU4@gmail.com>
 <87ecy1g8z8.fsf@minerva.mail-host-address-is-not-set>
 <Z_YWq4ry6Y-Jgvjq@gmail.com>
 <87bjt5fz51.fsf@minerva.mail-host-address-is-not-set>
 <Z_iwspuiYAhARS6Y@gmail.com>
 <875xjb2jeg.fsf@minerva.mail-host-address-is-not-set>
 <Z_oOkb2Lx3HNhnSK@gmail.com>
Date: Mon, 14 Apr 2025 09:55:25 +0200
Message-ID: <87v7r76utu.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Marcus Folkesson <marcus.folkesson@gmail.com> writes:

Hello Marcus,

[...]

>> >
>> > A comment for v4:
>> >
>> > I think I will go for a property in the device tree. I've implemented
>> > board entries as above, but I'm not satisfied for two reasons:
>> >
>> > 1. All other properties like display size and resolution are already
>> >    specified in the device tree. If I add entries for specific boards,
>> >    these properties will be somehow redundant and not as generic.
>> >
>> > 2. I could not find a ST7571 with a grayscale display as a off-the-shelf
>> >    product.
>> 
>> Sure, that makes sense to me.
>> 
>> Can I ask if you could still add reasonable default values that could be set
>> in the device ID .data fields ?
>> 
>> As mentioned, I've a ST7567 based LCD and a WIP driver for it. But I could
>> just drop that and use your driver, since AFAICT the expected display data
>> RAM format is exactly the same than when using monochrome for the ST7571.
>> 
>> But due the ST7567 only supporting R1, it would be silly to always have to
>> define a property in the DT node given that does not support other format.
>
> Sure!
> I've looked at the ST7567 datasheet and it seems indeed to be a very similar.
> Both in pixel format and registers are the same.
>

Thanks for confirming, that was my understanding too.

> I think specify a init-function (as those will differ) and constraints will
> be enough to handle both chips.
>
> I will prepare .data with something like this
>
> struct st7571_panel_constraints {
> 	u32 min_nlines;
> 	u32 max_nlines;
> 	u32 min_ncols;
> 	u32 max_ncols;
> 	bool support_grayscale;
> };
>
> struct st7571_panel_data {
> 	int (*init)(struct st7571_device *st7571);
> 	struct st7571_panel_constraints constraints;
> };
>
> struct st7571_panel_data st7571_data = {
> 	.init = st7571_lcd_init,
> 	.constraints = {
> 		.min_nlines = 1,
> 		.max_nlines = 128,
> 		.min_ncols = 128,
> 		.max_ncols = 128,
> 		.support_grayscale = true,
> 	},
> };
>
> static const struct of_device_id st7571_of_match[] = {
> 	{ .compatible = "sitronix,st7571", .data = &st7571_data },
> 	{},
> };
>

That's great! Exactly what I had in mind.

>
> I can add an entry for the ST7567 when everything is in place.
> The chip does not support the I2C interface, so it has to wait until

Yes, but there are designs with carrier boards that support I2C. For
example, I have  [1] and [2]. The former comes with an I2C interface
and uses the ST7567S IC variant, while the latter comes with a 4-wire
SPI interface and uses a ST7567P IC variant.

But don't worry about it. Since I've these displays and your driver now
allows for different IC families after adding the mentioned indirection
layer, it should be very trivial for me to add support for these on top.

> I've split up the driver though, which will be right after this series.
>

Nice, thanks again.

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


