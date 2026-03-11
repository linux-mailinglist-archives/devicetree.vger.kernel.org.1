Return-Path: <devicetree+bounces-274090-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UBy9NUJrsWkuvAIAu9opvQ
	(envelope-from <devicetree+bounces-274090-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:16:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6B226446E
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:16:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9FD083008D2B
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:11:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A7992FFDE1;
	Wed, 11 Mar 2026 13:11:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PR25Bubt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6DAA2FFDD6
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:11:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773234702; cv=none; b=D9OQV0Qez09Tpyng9/0vFYLkn3iOP9FxgE2KX22s/2tHPYo7pfyugfLROFV3AAqNmOkWyAsvdiLi6xm82plczA6TabPs1N3omml1ZBNqXDmcgqISb9OYaYcvuFm8w4AmwK+1dtMhqRqvG+H4MKph3DMG8DGmu+HSDUj6XNQ3LAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773234702; c=relaxed/simple;
	bh=K9qy72R7O75ja+5FY0n9soMVsULH8HxP54HOwOuSKew=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EquTsOJFXv0Sk+QYaPCq/Mp9UotOh3OkZdGFPlGAfxzuUSGLf25hXueCNgi0bgluX0F0fiL0CMUu08Lv18lF0l/3udNg+AukhU9lKdCGKsGUm50W33S/5gRx6Bvxp//dnyk+YU57kplUEEAI7pH4wsmKcTX6F5nYkNcOcpR3kwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PR25Bubt; arc=none smtp.client-ip=209.85.219.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-899e85736e2so9067476d6.1
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 06:11:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773234700; x=1773839500; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3+xjwlHf+QPiwLCHoffflVQHwDNAbTHRgVpez7H6bQ0=;
        b=PR25BubtCDsoYZ4CSZ7OIOfwD3Ba2MBAZE8vXaKa1Rx1yI5LtK7FCOPNSWUV4rdtpG
         acuPqBOFb76AfYFO/2ob/dcPY6Dl4fx3dGi8AFuzvksqcxKEP0prZqNKUlGBzh46+Ua+
         IzpZUMdhTmvU1Z6LUOQ7APCFGgXFDgd4Fza9VRALGHfG4cKvr6ULYcBc3DtyOaLVmvto
         WjcNNW7z1aOTLBGptO9Cfb8eo4VCIVPF8wXZeMVTr3n5CSrsfgsWSQP7+oxC7Ruc2esu
         XU16JBz/56qn0c0658OLzUbp9FQZnU/Komtj96VqGkG89dYlGya94Y1o6DYBEJnOqzBl
         q1fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773234700; x=1773839500;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3+xjwlHf+QPiwLCHoffflVQHwDNAbTHRgVpez7H6bQ0=;
        b=VfJ8a04auEHMC+IaatES8UxBeXfZ7ndoLxbrqUmqxz4BTMIJ36xuNvw4beJWye6GdZ
         EX96tuEe0ecj8d/LqYPtZo6yyCzOTK0palRRn5upxzV/n3AM5E0DyskTVygnwgHK6CnX
         mK10O/ODne8NDVMsnQbEp0IXxTjt3fMS/LAusu7tn1Tdn2AQZrP2GOzM0kzFP4LnkiZR
         6oP5UeiJn0SEsR11g/LYkhzu4LalBkXT5zeGFBUubY3xDoMHtLranTR57XVNyzkKtBjW
         m/Tu1AUzygSOxM3eJjEsfqm51qaeagJSgC8bKHIvvR2LpyrofRRqhSYlZtwn89qa/rqG
         XcQw==
X-Forwarded-Encrypted: i=1; AJvYcCWHayhRXkX50+o4N25Iu1yaX9vORUZJHH12/RaFxc0DkscXCXhcQ0IEWnX751DFc7BcTntd1J3oGyF2@vger.kernel.org
X-Gm-Message-State: AOJu0YygfUg24qNsjfhyUmhMal8Ut8KZhgM36kP6xcl2kr/tJDheRcWU
	ON0T5z52LuuDXszGkz2fsERpvjXt7lsRy7ra2dei/p0cg8kkNX39xmGb
X-Gm-Gg: ATEYQzywfSaxk1smctRTWbo1Y2HQIW+eBi2cKjrbGWSx1geL2CvQywOrU/4vN0j/kF2
	jka3CWIL4j5VBZnqdvf77TGcbp2bmOYNtZEnkbJkdTT84goCSCcl74YI5RG+P7X8lpdrnseK8aE
	NsQ2gD8B+2AmDP74JUSIdE1XZimMevfx6vAe2eyAFNiF+lciedQeCAbiFHTlsx/8XwBUXcqvUmf
	2X+88P5+Xgy06tHnZ2t1p1J+Ar8Y85nORVGCNpCPwWx73pglQW3PIdcpucBVC1yAaovgGSnKhC1
	TIdV50ok5uur/cgoNafBc0RqmN0YhLMhEObMZVhdr/gtqeOs9BwA/y3abJojGlui9jXJkMcSGrT
	oKwE+vRTwjcuWG4vu7ofWGo2b9JggugyMHDJ6X4W1uJKZNmpjvWplfm2czOLvYfsUQ/7139ZZes
	8ZqznQklscMzLmPn01faEHx4EGF8k2X17y+1EYb7VFLf+dqag1kwyJJJJD/YUeR8mYxtviyFY37
	KjzbzEdGxYMEDERUgnh87cx2RVg5h/IN0LzggEV36Z0UlqZB7k=
X-Received: by 2002:a05:6214:76b:b0:899:f22a:7d79 with SMTP id 6a1803df08f44-89a57c42ca4mr82636016d6.16.1773234699762;
        Wed, 11 Mar 2026 06:11:39 -0700 (PDT)
Received: from RDEALENC-L01.ad.analog.com (24.206.116.131.netskope-rdns.com. [24.206.116.131])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89a65bed6ffsm13621686d6.16.2026.03.11.06.11.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 06:11:38 -0700 (PDT)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Wed, 11 Mar 2026 13:11:31 +0000
To: David Lechner <dlechner@baylibre.com>, 
	Rodrigo Alencar <455.rodrigo.alencar@gmail.com>, Jonathan Cameron <jic23@kernel.org>, 
	Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: rodrigo.alencar@analog.com, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH RFC 6/8] iio: frequency: ad9910: add RAM mode support
Message-ID: <frn4iotwpzef7ca5yosmwllxrottjlu2rpgpbdogrydsujebf3@lwamhpkzxn65>
References: <20260220-ad9910-iio-driver-v1-0-3b264aa48a10@analog.com>
 <20260220-ad9910-iio-driver-v1-6-3b264aa48a10@analog.com>
 <20260301133153.7f2f8501@jic23-huawei>
 <20260307140735.5ec2e608@jic23-huawei>
 <bxcybwaz3am7nrrfcjuvkbbe7yp4vwcxwwh4dafaj5dsy622s7@m4vdam6tyaht>
 <b1187027-3ddd-43bc-a773-8b5d794e04fc@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b1187027-3ddd-43bc-a773-8b5d794e04fc@baylibre.com>
X-Rspamd-Queue-Id: 3E6B226446E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274090-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[baylibre.com,gmail.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

On 26/03/10 07:11PM, David Lechner wrote:
> On 3/10/26 12:40 PM, Rodrigo Alencar wrote:
> > On 26/03/07 02:07PM, Jonathan Cameron wrote:
> >> On Sun, 1 Mar 2026 13:31:53 +0000
> >> Jonathan Cameron <jic23@kernel.org> wrote:
> >>
> >>> On Fri, 20 Feb 2026 16:46:10 +0000
> >>> Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org> wrote:
> >>>
> >>>> From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> >>>>
> >>>> Add RAM channel with support for profile-based control. This includes:
> >>>> - RAM data loading via binary sysfs attribute (ram_data);  
> >>>
> >>> I'm not sure that's a long term viable path.  We either need
> >>> to figure out how to do it as firmware file load, or via an output buffer.
> >>>
> >>> Firmware load would probably be too static and I'm not sure quite
> >>> how we map these to IIO output buffers.
> >>
> >> We would have to carry it for ever which is very much not ideal.
> >> The firmware approach has the same issue, but can be thought of
> >> as defaults at boot time forever.  If no defaults then we use whatever
> >> we come up with as the long term solution.
> > 
> > I was thinking about the firmware approach:
> > - Normally a driver would request the firmware during probe and the
> >   filename would be pre-defined.
> > - Less statically, It could have an attribute that once written, it would
> >   request the RAM contents (e.g. under /lib/firmware/ad9910_ram.bin).
> >   It could be the enable attribute itself (but that would not be effective
> >   when the binary would not change), or a separate one (e.g. destination),
> >   or a new one (e.g. load_en)
> 
> Have you looked at firmware_upload_register()? It looks like it provides
> something along these lines.

Thanks! this is in fact perfect!
It might be ugly, but for the sake of debugging I managed to get libiio to
interface with this by exposing it in the debugfs.

	debugfs_create_symlink("ram_loading",
			       iio_get_debugfs_dentry(indio_dev),
			       "/sys/class/firmware/ad9910-ram/loading");
	debugfs_create_symlink("ram_data",
			       iio_get_debugfs_dentry(indio_dev),
			       "/sys/class/firmware/ad9910-ram/data");

-- 
Kind regards,

Rodrigo Alencar

