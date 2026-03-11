Return-Path: <devicetree+bounces-274253-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qCslJbKhsWn4EAAAu9opvQ
	(envelope-from <devicetree+bounces-274253-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 18:09:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB2A267CC9
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 18:09:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7F3FA3008609
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:08:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F5903E3C4F;
	Wed, 11 Mar 2026 17:08:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nc8AlKWt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C3A373BE0
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 17:08:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773248922; cv=none; b=diwuULnaPwq922yWoL+awRMobAyAShDckIOi7I2oqUoaps/jNzGUvUgp7Tp7DoxNVdhHgrvQxf7JqcC1fShrB4mtp5cffP+PVOmNxUhtNtM9DnRDALCGy+LOquJ+04jmvcWTitPcPW5Pfw8QcFpGw24VXbjO/GniGc0Rjapi04U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773248922; c=relaxed/simple;
	bh=6mhnSaAg3iLefoQGg+TR62AbdmaFTj9WXmqTeVzCn+s=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hmitK7O2c5tOE2DjOQAxY4egzJRuntLfxtJGHsLwEqa1Zblt8SqxGCF9xj73F/tro7mXiT5GFlDe3cGzHuC07hxg/Wm2oQLFmqC0l25BZvPt3qLv3diEkAYgXQSmpkLi4iGRJI/wZvZxc3CqRtEN6a7TRGQPlQJugxTHXZMOB4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nc8AlKWt; arc=none smtp.client-ip=209.85.160.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-50917e02532so940211cf.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 10:08:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773248919; x=1773853719; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cuyOusyX8t2/9N8XkvP3Pzm/04mnrL2/yq15S8/jD6o=;
        b=nc8AlKWtKqYsEyQ94EoiTPpSlHFUfJhklVvy9oZxCUkrpMiESY9TjHo7gAyOfrDvLI
         cB1NNQ+yH2AI9BbR24vsBN7mGcM9tgNSfzTXjDsrcRQsaehrBP4AmMVY44MBwe2JhRjZ
         ViGSFrrGcS68sRKHSGhTb2d7jVPSvvBR83CkFyz8L5TfN/CPCTtXPadWOmvNM7m9ISws
         GDLwqSeg/7zsQH3LSAnvWr6sGMCt9aQ9/xRAa3QozzXmJhD5e43A/NE9a0eph7OG5Tuc
         E0xjCKJPmlLouvxKtmS6ufZ3kPl9k45Pb5S4QBuISJgbVkcUEUguj7YDAU411dN5vh1J
         zU2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773248919; x=1773853719;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cuyOusyX8t2/9N8XkvP3Pzm/04mnrL2/yq15S8/jD6o=;
        b=OUXJyC6mbPSIsMa48shCHaq6F5cfH+UsfbZCMglXnO7PPrYXqFHNq0aifwKSsYTMDq
         hFWBS3SzjoQa9ztNH1ELzdnkYVxb6UxZfkrdPJjEgu/wtOgMfuG7lotRwoYvpolTzQe4
         y39h1VJSYMssIGj1hDsp8wiviPy/Y20hduDIlmWAPaqTIrc/ersIhanZxuC1YNznT14/
         bQK+iyHWXR4IHSUglfW8C4vML6oOWY4OuhVtcoGTwtHFe3JQMmPZTgjoyPkaRpHCUs5t
         O1ZuL6W3QWYOzmgJGr6c4kCF9p0hbw2TXJg4AY5CcjEeVBuvNgxsvvBpU9QE/JuAu1Dh
         4kAg==
X-Forwarded-Encrypted: i=1; AJvYcCWuXIjWSRyc1mSaGZ2Hn4Mk/B7UbvHVLwAeD1hLOAhGXN4tlPte0rxXuETkr1Hg9edDM/wAirT1lz1P@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6QH6G1HfO4AsBnqER/jvYSgUyGWDnbioSUB3EWX9e648bGj2y
	dbQyCTe7+7bTi8JvYXE76FSqOCZxn/4sN7d1unZLfOlOx359Cm4llUCo
X-Gm-Gg: ATEYQzy3QV0sRcX+XbXxgeU/28TO3qPfRdzdDFXZhG1bkCc1U92ZVJrky2uaYG2l9TK
	eFW2mAFkIEBN4ITI3KgsjRj3KWayQquZpuoXXCRaQRd5WXfp6L7Pa6gWLLVhhii66/YEU1bNY8Z
	5qYVFVDWAjrrn1QZAW5mdNBHGjtW5E4nKQDzxJmQlmNpbwCeWDGX+WulyLjAYNMbiGn9rUkZC/N
	uR3YlRKjPOiD03RPW0PrIqUnokC6t3AZz9vhIO6GR1AJLSOfjm+Ui9qXWBqx+Ko0dPOsniO/nB4
	GZmD5LJJYE8eMLHLpJIhpi1ttTaXa2MlxLcCd4mxzg78yreRMuEfZ25KW2LeiHZIbIZdlkWT8m+
	sNPxR3zTKyC+fKoSJwoqPQBlL9SJhz76oz+MaeP3ov4GLoXszsnDYH8sh9Z2s5RbMEO7WHdiAyV
	unFt4pdxoH43fEi5Bv9st3uW0W0XAGRzsbz+GrhDkj6ZKehn9g5WiwVP/v+jPnggnXxCXFG06BA
	1cFnmeNFptAamvd1Aw47D2lv2Usn63b4mqbbwi0kOO16eRvzd0=
X-Received: by 2002:a05:622a:1111:b0:509:31d1:eb0 with SMTP id d75a77b69052e-5093a1d9fb5mr39796621cf.65.1773248918614;
        Wed, 11 Mar 2026 10:08:38 -0700 (PDT)
Received: from RDEALENC-L01.ad.analog.com (24.206.116.131.netskope-rdns.com. [24.206.116.131])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-5093a14791dsm16436701cf.31.2026.03.11.10.08.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 10:08:37 -0700 (PDT)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Wed, 11 Mar 2026 17:08:33 +0000
To: Nuno =?utf-8?B?U8Oh?= <noname.nuno@gmail.com>, 
	Rodrigo Alencar <455.rodrigo.alencar@gmail.com>, David Lechner <dlechner@baylibre.com>, 
	Jonathan Cameron <jic23@kernel.org>, 
	Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: rodrigo.alencar@analog.com, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH RFC 6/8] iio: frequency: ad9910: add RAM mode support
Message-ID: <bfiacew2zft2ayg72g7g2dxdnzsqxr4m63kkz326o7ybb5rbgy@hg4hs4plwj5f>
References: <20260220-ad9910-iio-driver-v1-0-3b264aa48a10@analog.com>
 <20260220-ad9910-iio-driver-v1-6-3b264aa48a10@analog.com>
 <20260301133153.7f2f8501@jic23-huawei>
 <20260307140735.5ec2e608@jic23-huawei>
 <bxcybwaz3am7nrrfcjuvkbbe7yp4vwcxwwh4dafaj5dsy622s7@m4vdam6tyaht>
 <b1187027-3ddd-43bc-a773-8b5d794e04fc@baylibre.com>
 <frn4iotwpzef7ca5yosmwllxrottjlu2rpgpbdogrydsujebf3@lwamhpkzxn65>
 <3a967f38a43933f12c98a9dfe4f1e85fa592b41b.camel@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3a967f38a43933f12c98a9dfe4f1e85fa592b41b.camel@gmail.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274253-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,baylibre.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[455rodrigoalencar@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,analog.com:email]
X-Rspamd-Queue-Id: 6FB2A267CC9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 26/03/11 04:54PM, Nuno Sá wrote:
> On Wed, 2026-03-11 at 13:11 +0000, Rodrigo Alencar wrote:
> > On 26/03/10 07:11PM, David Lechner wrote:
> > > On 3/10/26 12:40 PM, Rodrigo Alencar wrote:
> > > > On 26/03/07 02:07PM, Jonathan Cameron wrote:
> > > > > On Sun, 1 Mar 2026 13:31:53 +0000
> > > > > Jonathan Cameron <jic23@kernel.org> wrote:
> > > > > 
> > > > > > On Fri, 20 Feb 2026 16:46:10 +0000
> > > > > > Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org> wrote:
> > > > > > 
> > > > > > > From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> > > > > > > 
> > > > > > > Add RAM channel with support for profile-based control. This includes:
> > > > > > > - RAM data loading via binary sysfs attribute (ram_data);  
> > > > > > 
> > > > > > I'm not sure that's a long term viable path.  We either need
> > > > > > to figure out how to do it as firmware file load, or via an output buffer.
> > > > > > 
> > > > > > Firmware load would probably be too static and I'm not sure quite
> > > > > > how we map these to IIO output buffers.
> > > > > 
> > > > > We would have to carry it for ever which is very much not ideal.
> > > > > The firmware approach has the same issue, but can be thought of
> > > > > as defaults at boot time forever.  If no defaults then we use whatever
> > > > > we come up with as the long term solution.
> > > > 
> > > > I was thinking about the firmware approach:
> > > > - Normally a driver would request the firmware during probe and the
> > > >   filename would be pre-defined.
> > > > - Less statically, It could have an attribute that once written, it would
> > > >   request the RAM contents (e.g. under /lib/firmware/ad9910_ram.bin).
> > > >   It could be the enable attribute itself (but that would not be effective
> > > >   when the binary would not change), or a separate one (e.g. destination),
> > > >   or a new one (e.g. load_en)
> > > 
> > > Have you looked at firmware_upload_register()? It looks like it provides
> > > something along these lines.
> > 
> > Thanks! this is in fact perfect!
> > It might be ugly, but for the sake of debugging I managed to get libiio to
> > interface with this by exposing it in the debugfs.
> > 
> > 	debugfs_create_symlink("ram_loading",
> > 			       iio_get_debugfs_dentry(indio_dev),
> > 			       "/sys/class/firmware/ad9910-ram/loading");
> > 	debugfs_create_symlink("ram_data",
> > 			       iio_get_debugfs_dentry(indio_dev),
> > 			       "/sys/class/firmware/ad9910-ram/data");
> 
> Or for the sake of future proving, maybe let's make the sysfs a bit more generic. At least the path,
> 
> /sys/class/firmware/dev_name(iio_dev)/*
> 
> I guess userspace tools could work with the above to match the fw blob with the right device. Also,
> hardcoding the name as it seems you have done will be a problem if we have multiple devices, no?

You are right. I am using /sys/class/firmware/iio:deviceX:ram/* at this point.
I suppose some complex transceivers you may know about may need different fw_upload
instances for different CPUs or profiles.
I like the idea for userspace tools to expose those. For now, using symlink into
debufs is working just fine.
 
-- 
Kind regards,

Rodrigo Alencar

