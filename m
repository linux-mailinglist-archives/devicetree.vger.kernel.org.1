Return-Path: <devicetree+bounces-268490-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GLENH3cun2lXZQQAu9opvQ
	(envelope-from <devicetree+bounces-268490-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 18:16:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D39C919B5BD
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 18:16:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 79D7D30E80C6
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 17:14:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD1363E8C45;
	Wed, 25 Feb 2026 17:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="L4Xzuk3R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f171.google.com (mail-dy1-f171.google.com [74.125.82.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A71293D646B
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 17:14:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772039662; cv=none; b=qfVrlrCebE8EUrR0zIyiMYJqLdFD6ynCLrH7wIDWbIcwo7uTvJgErWYL8xB7jpiaCSnpiCUSqraiFdwvbpJf03R97PglyWxBPC+b3DNU0s7rXWEF9Pb5DTLHGioBIvAZMsm231SWnDe5sE6w9jHtXp8OAjCvZbAQfwGKBgot+lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772039662; c=relaxed/simple;
	bh=6+SccbS+g4a6oOmUo4VbEGkpk8iwX9aoh4LICkhKYF0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UrmShTHPWYhsvu8znetaUtANjQSR7Q41sudNm6tvq8v3ZAMLCr7o5V1xMhFZPnqD2VOcB8GyWrIsRlXb2fUjJ0PzwXxMiEO81HKL7l/Aa2wXs63Hcv6BOaQ7mL/TAhCno4+0PeWpxul3lum7q7Szv+YnbeiQ5S4xBN3vqCvwuNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=L4Xzuk3R; arc=none smtp.client-ip=74.125.82.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f171.google.com with SMTP id 5a478bee46e88-2bdc47747e2so757007eec.0
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 09:14:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772039661; x=1772644461; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=M6Fai54Ul21d21qsppL/OgbjNjE4u/Ww2JyK/Frhu5U=;
        b=L4Xzuk3R0W8s+Pr8g70rI3llz5/7izSqkAZQc4uldD1EraLNWcwrdwISNpmkpmvw4h
         WtaGX51Lap5U1vaVxY+XLLWbtABv8ptP3vjSsSCcce8hwIb3bBnoYfoJeI0cGjfFg2g+
         PYo5aynYEvIbMA639kcjMU6+adgc3xWMfjIBCSpc/CX28ItY8wiUmrnjVmlh7p9MQMrZ
         JreQ4dYn6a5eSvvY68bCQnb4XOliGSiV/D1wPUjE369FbJqz/6WnOlRQz3fYqpbBlBzT
         0SPHehj7uaCIiTV12lJMz1k7r5ATq/rqpLkF7N5GIWim24Mi0t9D58C5Wsnth8ClCcCi
         CzAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772039661; x=1772644461;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M6Fai54Ul21d21qsppL/OgbjNjE4u/Ww2JyK/Frhu5U=;
        b=c0qjDCO52iIevlJ/o9ky2jxDJjZCgLntZDXWWIPyORqSGrrOOsJLd4b5XvbF3ixHMz
         /GLUL6MRsHLmSse8SoKFxcibTb829XPQ9sOWSKwrzHO01SUs2vb2pYCtWOY1laTTmmr7
         7vAq/7tp+qViXAftX2zY0sw0Kc6lANErkJc698rMkD/pecSyTo68vupEXPI9S8K4oOzX
         K9IHdi0hz2EBotjSlEG13WCHiuauVTS0khLf8e42E8mvKG5mVLPVTWIIT5kFBgOVrzMP
         LNxTB1r8Y6u0Ps5ctsZKlireOLyYDYXeunsB0lNamCV9eHXLm32H7SNrI3ydmsficb4L
         dS2Q==
X-Forwarded-Encrypted: i=1; AJvYcCWJaCjWQSZprEKqA+B0FK4jIiy3sn7DWQBgnBiJ1zTUuXm5wsFA0dhvpgZ38iFKjL7oo9goQoxQJ3Vs@vger.kernel.org
X-Gm-Message-State: AOJu0YwM9AR999fNqBanFZyxTUi4KxhIE3nfgKstBKSMPs0cuH4fJCBu
	gEPChdI+4fKkgCEXFwhinwFJJTndEN7KEuao0ZhRlcPGViwElKUjEMic
X-Gm-Gg: ATEYQzwRhrMHD4drbjKklL75I6NkzKsRXevwtdq/MUj4eGDtL1ptblAbo1VRf1fXz7u
	nao74kAaExEZuhrQS6sqCuDrBhlDjhM8HMl/NzMWxKzZQ1lWdxihupcu1Vwb6drvnbf3p3U9fbE
	lvnF/DpAgq9lwzD8UVerRPxpJtfqUAWzY8m6js1bT61MyXjaQmCiGsPqjJSPQu0bX8JvGaOQ4CY
	JEzIt2QzwLT2pS/H7EOvpSfIivGyPaCu1jdD7fBgS0sjCkjX0zDCQGrkTm/RKVa2uVTj+2MDz9C
	JqjTfAnddOtymwJGFnRqTngsIYgnGA+Z+Mv8Nqb8ukZlfaRCXvgt5CTOLQrCwd1JBQNzIId76Fi
	mad6u5dyiMVfMrdGvIu9xybd2/P4gIfMoUgoARqn7KvqP4TcdoYcS9qS/cSgzU2YC4MOZb8V2ZA
	sudeoJhc0gNYZod+blrBR9waIjIp3nCFymI/vcSNwJz5r/ed9IH3bWuxZblKzKD5v8
X-Received: by 2002:a05:7301:d1a:b0:2bd:b2c9:851c with SMTP id 5a478bee46e88-2bdcc070e66mr620754eec.30.1772039660613;
        Wed, 25 Feb 2026 09:14:20 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:64dd:9670:711a:678e])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2bd7da4775dsm9332416eec.2.2026.02.25.09.14.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 09:14:20 -0800 (PST)
Date: Wed, 25 Feb 2026 09:14:16 -0800
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
Message-ID: <aZ8tocPCKqTXqbC0@google.com>
References: <20260225155409.612478-1-hugo@hugovil.com>
 <20260225155409.612478-5-hugo@hugovil.com>
 <aZ8fXXGMx3fk7gKs@smile.fi.intel.com>
 <20260225114155.3ee2efb002aa0f52a905f535@hugovil.com>
 <20260225115652.8beb1979df3824f7a95d22bc@hugovil.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260225115652.8beb1979df3824f7a95d22bc@hugovil.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268490-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,dimonoff.com:email,intel.com:email,hugovil.com:email]
X-Rspamd-Queue-Id: D39C919B5BD
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 11:56:52AM -0500, Hugo Villeneuve wrote:
> On Wed, 25 Feb 2026 11:41:55 -0500
> Hugo Villeneuve <hugo@hugovil.com> wrote:
> 
> > Hi Andy,
> > thank you for the review.
> > 
> > On Wed, 25 Feb 2026 18:12:13 +0200
> > Andy Shevchenko <andriy.shevchenko@intel.com> wrote:
> > 
> > > On Wed, Feb 25, 2026 at 10:54:01AM -0500, Hugo Villeneuve wrote:
> > > 
> > > > Add support for GPIO-based charlieplex keypad, allowing to control
> > > > N^2-N keys using N GPIO lines.
> > > > 
> > > > Reuse matrix keypad keymap to simplify, even if there is no concept
> > > > of rows and columns in this type of keyboard.
> > > 
> > > ...
> > > 
> > > > +/*
> > > > + *  GPIO driven charlieplex keypad driver
> > > > + *
> > > > + *  Copyright (c) 2025 Hugo Villeneuve <hvilleneuve@dimonoff.com>
> > > > + *
> > > > + *  Based on matrix_keyboard.c
> > > 
> > > A single space after asterisk is enough.
> > 
> > Ok, leftover from copy/paste from matrix_keyboard.c :)
> > 
> > > 
> > > > + */
> > > 
> > > ...
> > > 
> > > + bitops.h
> > > 
> > > > +#include <linux/delay.h>
> > > 
> > > + dev_printk.h
> > > + device/devres.h
> > > + err.h
> > > 
> > > > +#include <linux/gpio/consumer.h>
> > > > +#include <linux/input.h>
> > > > +#include <linux/input/matrix_keypad.h>
> > > 
> > > + math.h
> > 
> > Ok.
> > 
> > 
> > > 
> > > > +#include <linux/module.h>
> > > 
> > > > +#include <linux/of.h>
> > > 
> > > Is this in use? Or you wanted mod_devicetable.h for OF ID table?
> > 
> > I need only OF ID table, so will replace with mod_devicetable.h.
> 
> Hi Andy,
> finally I need <linux/of.h> for of_match_ptr()...
> 
> But I will keep <mod_devicetable.h> ...

Do we need the dependency on OF? We may include of match pointer
unconditionally and the driver could be used on ACPI systems with
PRP0001 HID.

Thanks.

-- 
Dmitry

