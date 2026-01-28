Return-Path: <devicetree+bounces-260303-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eD0GHNrjeWl60wEAu9opvQ
	(envelope-from <devicetree+bounces-260303-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:24:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E5CA59F655
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:24:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 12763300D96B
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 10:24:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 962AF2FBDFF;
	Wed, 28 Jan 2026 10:24:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="X7B+5XjG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 023E32DF706
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 10:24:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769595849; cv=none; b=ap2dE6oDije9jxGHSTv92/IDdA20T4ygJ4h9+4EwYmmLDviA+gDG21F5g4RsvqpZgW5nHSQRk/pur2LAd85yRvb3kxvIuGUS1W+hhgkbP5YTiZU+iO/sqAsailD7IOmmb4XR4fLMhkOD5FF9xjYc3nmQg1RHsZosp3TORBmJWME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769595849; c=relaxed/simple;
	bh=IAuO3hZmjWwJidDrBK/ocDP5eyCa0LwHoRRJa6AHUhw=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HN8QKDrcoXeGWFFmfOROdFs4T2/RFcnL5bq6Fn0BNqTQ5asHEJ5hlRymxaaq4PmVBelLtlrA7YYpirFRkTTqA2UdKpclvW2wfnPIqscw5NPk2oBlWksa00wi+559enVnhrbJUJNHpzM4a7sJhwzd2e26rwFXLD+Q8RsAtVe9egE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=X7B+5XjG; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4801bc32725so51182205e9.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 02:24:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769595846; x=1770200646; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2K2glf1WnKZAPsmypQA7tsSM/kM81tZ2AhTOrY90KiM=;
        b=X7B+5XjG75R7H5Y81fYY/ZjBnyyoRo7svYk5QWYN+CEO/KEkKz0aium590j8gAh0zk
         blUuLMUlB7oZV0OEwN230dzsu3r529UGidfGnqdJB7Gi+QPYop+hIZOBoejQvSyN2RnG
         Z3ebA/+VpkyVQa73T5erjx1K1pTw69QkoIzpmsO6jfsmjY0DYyzvHYoXXsbVrE/pa9E2
         bSqsnGeChUhxgEuEj6wh9PYYwJPp91PTqUBSAtq0ON73ki0HYbJZbcU9eWmyvG1o1eXC
         maqSBjbqUaPSxVUGeJqCDIkKvzJKBah21Fjg4N82x9EEa3N/4g0RtCJhrfy4lg0uPS3T
         aI/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769595846; x=1770200646;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2K2glf1WnKZAPsmypQA7tsSM/kM81tZ2AhTOrY90KiM=;
        b=irUE5cd0ofO6yd6P6rE0O08PdE85mxAOU1UfYMhBhveNnMBUC/q8SdHZXjFUDIDkBi
         EWH8VX4Jb65S6eEWIG3Zql+SlZHPNn3zDVZmmwUtjXI7d49vHPfMTTR0kMqJuzUh0fl+
         KKwl8i72TQGGho3oNj0+96BRJK5CswAusplj5yi25pXZ0DgqfEFePElCj9uvx8OIpSb9
         r+YlK3j+w0wVuZV7tn67f9E3ow2hR1IfpdnjL+SxPEVvQy/zwGJqh97XOr0AaQw7I4mE
         Vxbm/PuqVDEzJwHmHfUpVxyYJVDizUFPpjb5x+rcYbKn9HOSSgkD/7G6alrb46ud9nXX
         xI5g==
X-Forwarded-Encrypted: i=1; AJvYcCWIdrPpLlm8rr/mZo6Rib2W7kLMXKMtmqirNDV2ZYzBavAZF9FKBOitf92zvdLb6qpe8pJRVUQ5nIt+@vger.kernel.org
X-Gm-Message-State: AOJu0YwwtRRgfBDhJgvbvBh/zmTeWtVm7DIEn/xk94tj1312UCGj8ljz
	74qtdNO25aKF8OPyBkp9AxdftNzzJL5Ne9Xy2JGEMFbJw4fPkDAiMrAj
X-Gm-Gg: AZuq6aK1DKV3CKFs3MKSdimmNaUt0FmCfk1p/TqsflTh/1+xE5mN2M31mkVq/puGIs1
	2bENTc/B05SaARdy1g4FJ0PpJMdR3NFA2qIHdtJmKJxDQie1WGfvgnBm/24ESAYcb8xd6eyX5bg
	/pskcx2eoQQo1slS65S4vTAVElxpvARxZYF5e+S0HC3NHUFKU6jBS1OnAdcE/1cNj3Ikh99JrFN
	+Flpz66I/HuxgKMOwbvj/DHs2zNtQwPw90F/sSaG91wPtIALh2ZStU2l9i+GvlqJTK8q53Vj1Dj
	MDGGhQkZULQub5GRGh9SPewM7J5WZYF/2fO1PSAdumkAEmJ+x7O5q0hEhVZqUNYCUEPCrgv46Jz
	ByCIstXjSfWfgzVqsuN2B3AknCe132hI/ocucTtSYFC7lqT0kRnw+augNvBbly6yDtV+w8wm7Tg
	QKx79VGmvsZKuJnO5OSI2QzigDMWtF2SQzTZyV+6sP5JgkdnbmyUTi9bi9kjTpH755vimWYUvOJ
	a82
X-Received: by 2002:a05:600c:6092:b0:47d:586e:2fea with SMTP id 5b1f17b1804b1-48069c3a7abmr60068075e9.15.1769595846225;
        Wed, 28 Jan 2026 02:24:06 -0800 (PST)
Received: from RDEALENC-L01.ad.analog.com ([24.206.116.131])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4806cdeafffsm54409255e9.7.2026.01.28.02.24.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 02:24:05 -0800 (PST)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Wed, 28 Jan 2026 10:23:58 +0000
To: Andy Shevchenko <andriy.shevchenko@intel.com>, 
	Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
Cc: rodrigo.alencar@analog.com, linux-kernel@vger.kernel.org, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, 
	Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 4/6] iio: amplifiers: ad8366: add device tree support
Message-ID: <knzaphyzfuh4fihlftzh3jhjxbjrdjqezqsd7rc33pmtc4anxi@2uhqhizyfsed>
References: <20260126-iio-ad8366-update-v2-0-c9a4d31aeb01@analog.com>
 <20260126-iio-ad8366-update-v2-4-c9a4d31aeb01@analog.com>
 <aXksSjsyNn6if3eQ@smile.fi.intel.com>
 <b6pzhwmfranyhuetv65movfqzubvbjasl6ruxiym2ehuch2hov@r56lgzgf4us5>
 <aXngRcVMj18tryGT@smile.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aXngRcVMj18tryGT@smile.fi.intel.com>
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
	TAGGED_FROM(0.00)[bounces-260303-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[intel.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[455rodrigoalencar@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E5CA59F655
X-Rspamd-Action: no action

On 26/01/28 12:09PM, Andy Shevchenko wrote:
> On Wed, Jan 28, 2026 at 09:55:16AM +0000, Rodrigo Alencar wrote:
> > On 26/01/27 11:21PM, Andy Shevchenko wrote:
> > > On Mon, Jan 26, 2026 at 01:51:05PM +0000, Rodrigo Alencar via B4 Relay wrote:
> 
> ...
> 
> > > > +static size_t ad8366_pack_code(struct ad8366_state *st)
> > > > +{
> > > > +	u8 ch_a = bitrev8(st->ch[0] & 0x3F);
> > > > +	u8 ch_b = bitrev8(st->ch[1] & 0x3F);
> > > 
> > > GENMASK() in both cases? But I don't see why ch_a needs this at all,
> > > isn't the 2 LSBs are not used anyway?
> > 
> > Yes, I can adjust with:
> > 
> > u8 ch_a = bitrev8(st->ch[0]) >> 2;
> > u8 ch_b = bitrev8(st->ch[1]) >> 2;
> > 
> > st->data[0] = ch_b >> 2;
> > st->data[1] = (ch_b << 6) | ch_a;
> > 
> > so no need for masking both.
> 
> This is better, but let's think a bit more. The data we put seems to be
> __be12 (yeah, we don't have the exact type for that) and can be put slightly
> differently.
> 
> So, something like
> 
> 	put_unaligned_be16((ch_b << 6) | ch_a, &st->deta[0]);
> 
> should be better, no? (Note, you would need linux/unaligned.h).

ok, ch_b would have to be u16 and ch_a could be too (for consistency)

-- 
Kind regards,

Rodrigo Alencar

