Return-Path: <devicetree+bounces-273676-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KKHeFoBXsGlciQIAu9opvQ
	(envelope-from <devicetree+bounces-273676-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 18:40:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC48255BDD
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 18:40:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3B5933006012
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 17:40:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81AC93D47C1;
	Tue, 10 Mar 2026 17:40:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K7aJXea8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA1D3D47B7
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 17:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773164409; cv=none; b=uKDDHFeHdNWtEOpKr8MhMpivcYKMkJXGO/5gr/HtevZh+anQBDBo6u+VAA3p5846+rW+4UQ3no44GlgZOuxbn3P5RPbBVngt4GpWP9OmEeulWFMQtXvFMfsMHmSf6LgiFhUVq7yl4QFYFaPnacGQRIMxJJlLDEqZ2JID84qmxK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773164409; c=relaxed/simple;
	bh=LMn4qc23kZmbtO9digNXmsXytqt9CbR3rzjyfJC2Ql0=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W+JtKRuaGxFBa2exjOz+tpw1WtT73yEdn6uHVGAUYuTXKrbzDSrXY00yghkwsvC59I0HHLlCFSXQ0z4HuInT/95ROhAE8hNL3ZTGpcCUp9HSwkk3htTJjKMbQ8qJ35KlkEqFoud4KPCepe1XGGNs2xCtHHJ/kKZSyheiq7FXco4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=K7aJXea8; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-48541edecf9so16236875e9.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773164406; x=1773769206; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EVxfFQImu4rmagtSPHzZv/3zF1+zO2gFWp3OTxNGBHA=;
        b=K7aJXea8If+YmJ0ry7pmff0RAVnaMIwnX02e/Vfra+1Ny0UiqmUI8W8aLSfG+QdR8Q
         /JGdPB8v7pxNQj42O5cDI4ArIcGWtfb/Pr81iuGdulgXW6hmnDCE71qTBBMMH6Lwy2c9
         HWowPS7eChTmNDybIAdCiWGK8biY774/JbAygQYAMTed09PDuUmTnoqU1Ihho/FHbup0
         49+t+Q5XI8Tbz946KC7liLv4ZXJi/4Vk/+/A4rWXXcerJC7OKfWW2Gg4MAGVSizCSiR+
         HgOCy1zuuf3MmBQ59RqKwg7aKRBcYfoSefDw7q1ikKBjFZq333Iyyg0yppg3L1nqOiUp
         fQIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773164406; x=1773769206;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EVxfFQImu4rmagtSPHzZv/3zF1+zO2gFWp3OTxNGBHA=;
        b=K+EzAaPxhXyCcIX1qTkp6+l6uGRWBSVXMCi8SLTz8/m6JU8aydrh+h5bygeCnnCNZ+
         x2RjsCi75MmbYTiIkhdi3GYM/5KuWf8kRBBVCwlve9nZCwHJBFJBmNp8K7ODIEPTHQa8
         pSGqWf1zRyFj8qNsCBgLo4Jag4TjsrRVWRhqM/jtE9RGywq6CLlJipwy4JlcYbF8D2ap
         b4gWGoUh7g3A4CWY8sTXjmkiJuQNGmnhZ3BUUdzRpc/ZFhwlvYO54d7+4sdAg5D+mpWQ
         VUmrafPTaGyFkg3zTmEQZ5uGhKe+im7/p1+opfKw3sEhcc2XrZlFELCKNPxgx2aYFW9J
         x3kA==
X-Forwarded-Encrypted: i=1; AJvYcCUSwowiwn4592svsuGAYbua9k8lBPaWIvPGmAPh70fN8hMDtKZCN+oIlloD3YYGMgcdZ1/vbziWfVq9@vger.kernel.org
X-Gm-Message-State: AOJu0YxjxyBAoIcsrfKlhTql8phxjoBlVmNLzmSHhqSQ1K1JUdLgXX3f
	ZUn4JlIh8M1swv8lrZjZBrW/m6G22CTyLBzLeSqtmHxRbYteYQXqJycc
X-Gm-Gg: ATEYQzxJYtkRYRQo9m/b1xLVHJLdmHT3EZri0i+376vMgtAlrQN3/8W5I28uVlAASmG
	fyoLsHRSomT2ImlCm2u7tdtI68XWLk8tVBMX3Q5zTARggEwrlUt+sCYahG+T/qiu55lM+azIz71
	M8FzLZZ84hCV7ZzVaGmsyaH52Knv2YMRVHCVPFnzMuk2C3PpVw2JVn6U1NR+SEGtgKU5Hr/tG30
	O942CXSHqvzu5DUx17eocPHoDMqfAszZeOAQOAKc6kBfJzG9UVHs9awGNt1Qc2F7Sl3jkDz45jH
	gjHW9K6oEF+7Unhkb2ZK0fXVeb9IafGTTQysa1sUcDE3w8JTogbaawjv69V/QdvzESEmgu6FmT+
	/ZRJw0VjoMOriAkyXJyYGBVnwUJmwXu3UMfm0c6nV0F+PnRVR1shDLzi2JeNtJQy3z0NlXHZugV
	OTUGNiM3U4vYYNStlgqxWXOkYw0NEKleP4UXqwFZqsF75Fz9c9DVsWqvgZNHBIJjrpQqlkka40I
	bhs7qrcgY9J3YCVMwi6CESoEC1w3IeLl76u2Kk3TYV26QvCSqw=
X-Received: by 2002:a05:600c:3e11:b0:485:3a22:69b9 with SMTP id 5b1f17b1804b1-4853a226f66mr135265105e9.29.1773164406109;
        Tue, 10 Mar 2026 10:40:06 -0700 (PDT)
Received: from RDEALENC-L01.ad.analog.com (24.206.116.103.netskope-rdns.com. [24.206.116.103])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541ad1e4esm93793475e9.8.2026.03.10.10.40.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 10:40:05 -0700 (PDT)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Tue, 10 Mar 2026 17:40:00 +0000
To: Jonathan Cameron <jic23@kernel.org>, 
	Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: rodrigo.alencar@analog.com, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	David Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH RFC 6/8] iio: frequency: ad9910: add RAM mode support
Message-ID: <bxcybwaz3am7nrrfcjuvkbbe7yp4vwcxwwh4dafaj5dsy622s7@m4vdam6tyaht>
References: <20260220-ad9910-iio-driver-v1-0-3b264aa48a10@analog.com>
 <20260220-ad9910-iio-driver-v1-6-3b264aa48a10@analog.com>
 <20260301133153.7f2f8501@jic23-huawei>
 <20260307140735.5ec2e608@jic23-huawei>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260307140735.5ec2e608@jic23-huawei>
X-Rspamd-Queue-Id: 5CC48255BDD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273676-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[455rodrigoalencar@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

On 26/03/07 02:07PM, Jonathan Cameron wrote:
> On Sun, 1 Mar 2026 13:31:53 +0000
> Jonathan Cameron <jic23@kernel.org> wrote:
> 
> > On Fri, 20 Feb 2026 16:46:10 +0000
> > Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org> wrote:
> > 
> > > From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> > > 
> > > Add RAM channel with support for profile-based control. This includes:
> > > - RAM data loading via binary sysfs attribute (ram_data);  
> > 
> > I'm not sure that's a long term viable path.  We either need
> > to figure out how to do it as firmware file load, or via an output buffer.
> > 
> > Firmware load would probably be too static and I'm not sure quite
> > how we map these to IIO output buffers.
> 
> We would have to carry it for ever which is very much not ideal.
> The firmware approach has the same issue, but can be thought of
> as defaults at boot time forever.  If no defaults then we use whatever
> we come up with as the long term solution.

I was thinking about the firmware approach:
- Normally a driver would request the firmware during probe and the
  filename would be pre-defined.
- Less statically, It could have an attribute that once written, it would
  request the RAM contents (e.g. under /lib/firmware/ad9910_ram.bin).
  It could be the enable attribute itself (but that would not be effective
  when the binary would not change), or a separate one (e.g. destination),
  or a new one (e.g. load_en)
- Alternatively  we can also have an attribute (like 'filename') that once written,
  loads a firmware file under /lib/firmware/<value-of-filename>.bin 

I am currently using libiio to write the sysfs binary attribute. Thus,
the downside of the firmware approach is that I would have to use something
else when changing a firmware file remotely (as libiio would not support this).
 
Also, the buffer approach has its problems, mostly because triggered buffers
are not really designed for multi-buffer support, even though it could work
along side the DMA engine one (that I am using with the parallel port).
Additionally, userspace tools are not yet ready for multi-buffer support.
Also, an IIO buffer might give a sense of data streaming capabilities,
not a one-shot load that I need here.

-- 
Kind regards,

Rodrigo Alencar

