Return-Path: <devicetree+bounces-260285-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eFuiFgzeeWnI0QEAu9opvQ
	(envelope-from <devicetree+bounces-260285-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 10:59:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F609F249
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 10:59:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DCAD63038F5F
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:55:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3682B34D909;
	Wed, 28 Jan 2026 09:55:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="E+40Dj57"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E28834BA20
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 09:55:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769594128; cv=none; b=B73zOuWMgjiV4Q60kOFkevd5EcDTZnU2tS+o9+ky0XIt0CbNyM2r+IozRxru/vHqDNpJzNCj9AuUUJtNzTuQmY+Rc+SPJFE+g0wBSxylN4+f87I0mx9OX9TNtEgRw1Dux6YSHNe+Y+H0SaBi38qFtGbZfYQ8UK7ZEQc3noBt5R0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769594128; c=relaxed/simple;
	bh=N38H9ofcuvHeRPFG3cxDjpN7XrxCmZhZt/Nxt5wFxoc=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GJ/jRWHncq/Hpfh9mLxnDx/YBLvUrFglaq9r3uuscAMzkFAZByCSzIA/DROethpOBnKi9PibCMC2/YDG5LuZIh+blq6OLNFPDdx5b2zhM7sRb1P/FZNCFO44+gVyvLWjERORNpb7D1d6kBFnn+IhB6M11Llx1kS/LYj6/2IIrTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=E+40Dj57; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-432755545fcso4954187f8f.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 01:55:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769594125; x=1770198925; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=07mXvpuK72uwHoPVD3hAEymdnjxb4apNqwq3bNoPLnc=;
        b=E+40Dj57BAuTTgGFTC+IeSTB93lTJ2wfkVWqUG8JrlH99kiGKZdVLb2N5/jHTfDiP5
         5zuAjb+gs/fFvbWkRWj2GtUkapcqsz/CZsVXA0lmJ4Ud8R+mBuf8BztJ+Jr1uiQMQCx+
         fNfNtiY8rgdjS7ZaAsXX4ZPeuKrYe4jkuVzo2zITdCBb3k1YLz9vO6GYsAnCIk/MD9Ng
         YxyAqmccsycwKKHMovBGb40wr1iqCjkTJVIsh6BTWokghhW25U8+9U/0UYIL6lAYY0la
         XeX9k6y19ykCSksZxfEkDccDV5rT+lU+Wh662r0RYnBS65wDhgHDRq6SvOkHupguGBTW
         iV9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769594125; x=1770198925;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=07mXvpuK72uwHoPVD3hAEymdnjxb4apNqwq3bNoPLnc=;
        b=D8NFfePmu75hx2wpvEVuNYoL4hrPzqff1976owd+BUWqTgz5zRhPQXWBglI5FqY0mN
         dC97cxd6eLqbMbJlAvsJ/vcvrvgUCNpLM2B15bQ8C83VJ0BeeieO+p2aJOjUOjXLuMwy
         t1+NC4sZbGDwnVmLu69VdmbYUGekZp5B8dCGDGLssspYCFDTbzprFKQeCB0P2c2FzLNB
         bYUwB5Z/oorPeuIAqmZ3L+jDwxxz7VIEd97ajAidX95yjT4h3/p1xG4diZ/EPydNwm9Z
         V5a5TGyZABASJfhqHCHpa9ho84FAh95+rFOj4Yy45LoWlhvuRTijmTBxr0tfVhvmUAM8
         IuoA==
X-Forwarded-Encrypted: i=1; AJvYcCX/3M18G9hlQcfxAUBiK9WOh5TmlUSdrCGxscdXDsXQf+6qcPPvf/Dola5x2WGoG5wT2InhSTI1VVIg@vger.kernel.org
X-Gm-Message-State: AOJu0YxoietMf/SjpDmJZCsXGHVQ69rLB1tIygE1jr7Hbo3ibhcf+H9b
	ZkjqJnfMDhF0uz9Cw5BY171dCPUP3vwLH7NDR/1rcWxXlMSuEIUN+O8A
X-Gm-Gg: AZuq6aJ4F7iguVrWTmsEv0iliRBssaqGIATiA9uFQHXRrkF3e5++GvKMpcLSZPJaWru
	o060wRT07yxcSh+BofmvsCzNhJLKuKVkLo4TuaE1mONJvWKH7qJ894yuNsKCcoCmEBenxvgslAl
	pC1BErCxx42FvD1IlXGTjXKAoYluEOw73RTCL8WBRRsvwsty6O0AVEmyZBhl3WV/9+YEp/oWEF9
	Vhh2MEZvVIyeqPA0CbUiBJDjtgqexpNMwbp0kgQnQFrOQEXHsVtpuLbEzmoP3/og+K8fG/cWEqb
	NaCstJ5oEEUmffpMOmttgbLfG9KtI89QSn7epkec5YiPzArLl3jjKg6HO0oYH2ANCKk/tmh957q
	DXB51RPWn56vFMEVZF+g8e5jBaZjfdg8/w0nYRW8n5EskGz6wcwnNkkyj7Hvb8Ug+TP1EFfVFfG
	syQrEgdSuRVYG/Y3hK8uoyP1qGv/yWaxo6gLtc7uRsQsGfNt89Pnwibhnk0ANkpNG0AgAYOtCQT
	C7FTXEMBbpKTUM=
X-Received: by 2002:a5d:64e7:0:b0:435:b732:771b with SMTP id ffacd0b85a97d-435dd05abf9mr6442125f8f.20.1769594124549;
        Wed, 28 Jan 2026 01:55:24 -0800 (PST)
Received: from RDEALENC-L01.ad.analog.com ([24.206.116.131])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e131cfc9sm5493661f8f.21.2026.01.28.01.55.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 01:55:23 -0800 (PST)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Wed, 28 Jan 2026 09:55:16 +0000
To: Andy Shevchenko <andriy.shevchenko@intel.com>, 
	rodrigo.alencar@analog.com
Cc: linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Lars-Peter Clausen <lars@metafoo.de>, Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 4/6] iio: amplifiers: ad8366: add device tree support
Message-ID: <b6pzhwmfranyhuetv65movfqzubvbjasl6ruxiym2ehuch2hov@r56lgzgf4us5>
References: <20260126-iio-ad8366-update-v2-0-c9a4d31aeb01@analog.com>
 <20260126-iio-ad8366-update-v2-4-c9a4d31aeb01@analog.com>
 <aXksSjsyNn6if3eQ@smile.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aXksSjsyNn6if3eQ@smile.fi.intel.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260285-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E0F609F249
X-Rspamd-Action: no action

On 26/01/27 11:21PM, Andy Shevchenko wrote:
> On Mon, Jan 26, 2026 at 01:51:05PM +0000, Rodrigo Alencar via B4 Relay wrote:
> 
> > Add device-tree support by dropping the enum ID in favor of extended
> > chip info table, containing:
> > - gain_step, indicating with sign the start of the code range;
> > - num_channels, to indicate the number IIO channels;
> > - pack_code() function to describe how SPI buffer is populated;
> > 
> > With this, switch cases on the device type were dropped:
> > - probe() function adjusted accordingly;
> > - Simplified read_raw() and write_raw() callbacks;
> 
> > - mutex_lock()/mutex_unlock() replaced for guard(mutex)() to allow
> >   moving to early returns;
> 
> Shouldn't this be in a separate change? I dunno. Let Jonathan to decide.
> 

As read_raw() and write_raw() were refactored, I thought it would not be
a problem. I can drop the change... as it is not a function with many
complicated returns.

> 
> > +static size_t ad8366_pack_code(struct ad8366_state *st)
> > +{
> > +	u8 ch_a = bitrev8(st->ch[0] & 0x3F);
> > +	u8 ch_b = bitrev8(st->ch[1] & 0x3F);
> 
> GENMASK() in both cases? But I don't see why ch_a needs this at all,
> isn't the 2 LSBs are not used anyway?

Yes, I can adjust with:

u8 ch_a = bitrev8(st->ch[0]) >> 2;
u8 ch_b = bitrev8(st->ch[1]) >> 2;

st->data[0] = ch_b >> 2;
st->data[1] = (ch_b << 6) | ch_a;

so no need for masking both.

> Also missed header inclusion for this? And also perhaps sorting headers first
> to see what's there and what needs to be updated (ideally another patch to move
> to IWYU principle).

linux/bitrev.h is there, but indeed header includes are not sorted.
I will create a separate patch for that.

> 
> > +	st->data[0] = ch_b >> 4;
> > +	st->data[1] = (ch_b << 4) | (ch_a >> 2);
> > +	return 2;
> > +}

-- 
Kind regards,

Rodrigo Alencar

