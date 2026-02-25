Return-Path: <devicetree+bounces-268488-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mFDFJBgun2lXZQQAu9opvQ
	(envelope-from <devicetree+bounces-268488-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 18:15:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ED03419B570
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 18:15:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 369573023379
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 17:13:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E7A93DA7EB;
	Wed, 25 Feb 2026 17:13:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VvqhjSy4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f42.google.com (mail-dl1-f42.google.com [74.125.82.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242283A1D1C
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 17:13:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772039583; cv=none; b=OI7Je0VJabmr6qQ/rFcMcZAVReaTriuvpLLZJAkqMOjw0Fk+5VCwbQO36ez6OMyCZNWqeeJ/7uaIVjoEX1qj/m7ApamuQCdEeC7VkQ7zdwbmBrdrCoAhuQRVKRUQeOD94XH+5n/WJmV7DMYAgW0MmfHy+nIobFx1eLTlRE947kE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772039583; c=relaxed/simple;
	bh=ELCyhyC2gTSZpNqVhJedUxH106OdRf+PWAfdGW01zCA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PKgkWZBuQV1uYqyyAYWtTIoy2G736+eesjlu0WXcPEC3uIz9NCsICPBVDg0AHYKxmzJVpocLA+ZWFtYnA6XNeeAgLDxcKDvDQKb9bUXOiHfqWjYtJkK9PYFZKdvBqY9lGAzYiF4ou+OcyQvZmF6l1wWiRu5Ru6EYPH5KjzJTyjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VvqhjSy4; arc=none smtp.client-ip=74.125.82.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f42.google.com with SMTP id a92af1059eb24-12758ce1e8dso1064253c88.0
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 09:13:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772039581; x=1772644381; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jpUJEtvyUfbAfsM/AsYdfsmRudWk2usCr4zOgiJsVxI=;
        b=VvqhjSy4JzXl00stjTKaYYYCFpluU/D7KgaPPOeJ1rRzti3yFViYo48/XUfNFCXrpf
         x2/7pjUxV/uHOSOgGM2tWmIOKfwX3qm86YUraF3RoBv6k42ZR7b1UbjqfGuDKSOM1MdQ
         VCxiiacABSgUhur84hrcWjjvMkalviZe/01E8QWHFZjqluN3beki2mhVCaHd0JjxE/lc
         8VVTOJ4hfq27IdRUSaUCfcmMo1XLTQWG9VY7evhKWcdcYe+/d99Sv5v5wmWSJiveQ2vp
         h4GxH5NaPWuVAytYhoNRKuGdatxoV2EcgX2na0sumVU/ureuAt7cFxFsbD3i/7BqhFEM
         fLYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772039581; x=1772644381;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jpUJEtvyUfbAfsM/AsYdfsmRudWk2usCr4zOgiJsVxI=;
        b=GoMpdKItBBx140kwayjblwEMsI06UAK7GbTwXozlFl1kNRYBLfubUebnqV/q3e7Ls8
         Y8Yg1g+Zkrnl8+ZiIwLjlFn1c7fxcf8nrtf568OUWhgm8c9NGYMl4C6wwg1mSEqkhkk5
         pr5xVaUuCbspWs1U7fksfn8wkuNZHwoLoOKg2k4U61lfu8KP/IXiZlhooWvii+kJ8u5B
         p9RKnX/JzC4vJB8//r/SqJTDWR+sPiSbs4t+SZsC54ZVa4sgvcv0aTMwLWO5XMQAvdsC
         IbJbsWtP7UbCrhCtvfbTTGAD0+Fqc6HCG5fZgnruvdPPxNnItzq2Zygc7WFfArKs4zuN
         Swnw==
X-Forwarded-Encrypted: i=1; AJvYcCXpppvlXoUIKG9WBrW0BzTQ/bMjuBJ8kygSy+0eS6GN8vJciEEHOjVQE2i6xF76/bzYYcsw8UkwZ48+@vger.kernel.org
X-Gm-Message-State: AOJu0YwYStZ3G69tqirZzBCGTDEESXdpfIqrFaEmfCxVZmNEbp/H5EHF
	zyArs2d/SivjX+luuof3Y6ik6UujZ7/c6Ht7TIKTdGRwOJn3Q6FfEKmY
X-Gm-Gg: ATEYQzy5f8uYT3CFnBL7ijNMp5gLkBNdxB4JWkY2CehRcMxWNSE6AJsuMR3Wrht6iy8
	SIG4tT61BrYnlgQZuAKbTDv7vcYO+gIJI/xdRZ5afyIBJRw2IglnU5/qUN7xJPRzeq/sC9Ar5C4
	3ud0tBwBl6Ml2z0N2SJOYweiW8tAyZneT+1P+96JMzdD1ZDdIk2x1P3N98fevwpMi7oSiH9wknD
	VNNuAh4RiaEddLJtyK2zG3NwsRubpVUhhZlGnTudV1jdiwb4+FTOL+fAFPhQSQKJ4whcmULvApM
	ayOKoSre6ZJjFszhuOy/Iyz5644TYz5EjO7NAFJYsIl4otEisESySvXAlzq2LE8WnQBAOAv9ynL
	wqrg3TOgO2pRTfygdIm21zO9ErtbCnaA+9cZF2lrk7ltDYPKy0I9Pva3Z01sU+67jycWnKy7gA5
	M18pxkRpeqJGpyjatk6U1VVPI5wC6iI6O/f7yuXmpw7bQcZNuQaLPPu5DaxO0jdF6n
X-Received: by 2002:a05:701a:ca03:b0:127:3440:e5d5 with SMTP id a92af1059eb24-1276ad627ecmr6367928c88.21.1772039581204;
        Wed, 25 Feb 2026 09:13:01 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:64dd:9670:711a:678e])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1276af10481sm14411000c88.3.2026.02.25.09.12.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 09:13:00 -0800 (PST)
Date: Wed, 25 Feb 2026 09:12:57 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Hugo Villeneuve <hugo@hugovil.com>
Cc: Andy Shevchenko <andriy.shevchenko@intel.com>, robin@protonic.nl, 
	andy@kernel.org, geert@linux-m68k.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, hvilleneuve@dimonoff.com, mkorpershoek@kernel.org, 
	matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com, lee@kernel.org, 
	alexander.sverdlin@gmail.com, marek.vasut@gmail.com, akurz@blala.de, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-input@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Subject: Re: [PATCH v3 4/4] Input: charlieplex_keypad: add GPIO charlieplex
 keypad
Message-ID: <aZ8sjwaKk5MCSDlg@google.com>
References: <20260225155409.612478-1-hugo@hugovil.com>
 <20260225155409.612478-5-hugo@hugovil.com>
 <aZ8fXXGMx3fk7gKs@smile.fi.intel.com>
 <20260225114155.3ee2efb002aa0f52a905f535@hugovil.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260225114155.3ee2efb002aa0f52a905f535@hugovil.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268488-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[intel.com,protonic.nl,kernel.org,linux-m68k.org,dimonoff.com,gmail.com,collabora.com,blala.de,vger.kernel.org,lists.infradead.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:email,dimonoff.com:email]
X-Rspamd-Queue-Id: ED03419B570
X-Rspamd-Action: no action

Hi Hugo,

On Wed, Feb 25, 2026 at 11:41:55AM -0500, Hugo Villeneuve wrote:
> Hi Andy,
> thank you for the review.
> 
> On Wed, 25 Feb 2026 18:12:13 +0200
> Andy Shevchenko <andriy.shevchenko@intel.com> wrote:
> 
> > On Wed, Feb 25, 2026 at 10:54:01AM -0500, Hugo Villeneuve wrote:
> > 
> > > Add support for GPIO-based charlieplex keypad, allowing to control
> > > N^2-N keys using N GPIO lines.
> > > 
> > > Reuse matrix keypad keymap to simplify, even if there is no concept
> > > of rows and columns in this type of keyboard.
> > 
> > ...
> > 
> > > +/*
> > > + *  GPIO driven charlieplex keypad driver
> > > + *
> > > + *  Copyright (c) 2025 Hugo Villeneuve <hvilleneuve@dimonoff.com>
> > > + *
> > > + *  Based on matrix_keyboard.c
> > 
> > A single space after asterisk is enough.
> 
> Ok, leftover from copy/paste from matrix_keyboard.c :)
> 
> > 
> > > + */
> > 
> > ...
> > 
> > + bitops.h
> > 
> > > +#include <linux/delay.h>
> > 
> > + dev_printk.h
> > + device/devres.h
> > + err.h
> > 
> > > +#include <linux/gpio/consumer.h>
> > > +#include <linux/input.h>
> > > +#include <linux/input/matrix_keypad.h>
> > 
> > + math.h
> 
> Ok.
> 
> 
> > 
> > > +#include <linux/module.h>
> > 
> > > +#include <linux/of.h>
> > 
> > Is this in use? Or you wanted mod_devicetable.h for OF ID table?
> 
> I need only OF ID table, so will replace with mod_devicetable.h.
> 
> 
> > 
> > > +#include <linux/platform_device.h>
> > > +#include <linux/property.h>
> > > +#include <linux/types.h>
> > 
> > ...
> > 
> > > +	for (code = 0, oline = 0; oline < keypad->nlines; oline++) {
> > > +		DECLARE_BITMAP(values, MATRIX_MAX_ROWS);
> > > +		int iline;
> > 
> > > +		int rc;
> > 
> > I think Dmitry prefers 'error' name for this kind of variables.
> 
> I hate using "error", can be so misleading :)
> 
> I would prefer to use "rc" everywhere, but if Dmitry chimes in and
> specifies "error" or "err", then so it will be.

Yes, I prefer err or error for variables that carry error code or 0.
This allows to write

	error = action(...);
	if (error) {
		// handle it
	}

which is very clear IMO.


> > > +
> > > +	err = input_register_device(keypad->input_dev);
> > > +	if (err)
> > > +		return err;
> > 
> > > +	platform_set_drvdata(pdev, keypad);
> > 
> > Is this needed?
> 
> No, will remove it, and replace last lines with:
> 
>    return input_register_device(keypad->input_dev);

Please use

	err = input_register_device(...);
	if (err)
		return err;

	return 0;

It clearly differentiates error an normal paths, shows that function
returns 0 and not anything else on success, and allows to reorder
or add additional actions easily.

Thanks.

-- 
Dmitry

