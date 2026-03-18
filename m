Return-Path: <devicetree+bounces-277043-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gJGVEoJlumklWAIAu9opvQ
	(envelope-from <devicetree+bounces-277043-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:42:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B63842B8448
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:42:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9DAC0301487F
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 08:42:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6308238A292;
	Wed, 18 Mar 2026 08:42:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com [209.85.222.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B06A388E4F
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:41:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773823324; cv=none; b=jkFvsy67kyOdXD0h88yAKQBlZqql7WkmcN/aftAMgsYbBIEJwb1DDrbIyW0INyXSS4qqLkvkpDoYU29IrSsSCaRvXdU4WEeaApnRXu9wFw6tvjt1xOwikytU4V7zLj27dlcFSwUrzpgV9x7+HGENjWAwZmQ/thlEVKIcRxBCBeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773823324; c=relaxed/simple;
	bh=1Q3Co6bxbshrYxrPl4jn/U2T1xBX3gjFWpDnRI8lYDQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ewec244T/xrlcf6QxBq9+mnAOGFbwTQqbXQui+rJjhC8XaAlZ6jG2tnxNc7rpC+uvctLkTXfmWyhDBeS22I0bdoliLIE49+aNCRsqB+02A74dDiQkj9QY2OVg4KrqQ5C5F1A3+InmIbDjqc77yZpIa8+vps4pL71Hi/j8hGav1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f51.google.com with SMTP id a1e0cc1a2514c-94de664b541so1815708241.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 01:41:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773823318; x=1774428118;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tqPUDw6RZ7tI/8SbuWaBeZ31o+A7cvn/glmx6dclWwI=;
        b=KmAV0OF93hbAeH/lO9uJD2zBHb1Vyk5wdouosQn4L7eDltIHsanvrXYyMd7R3LX0es
         knOSeU+cuJoUcpr1xohUDXiuDLzi2tEkGN1tx36rFtKfiwupeMJ4i4ngxdWTKwkWYBQy
         sLfUUFnpm9lDovWNIXyjkO2UO79y4aSjC8ttwCR1QWFG04rJv+MtLhRSkqH+DwqAxWlS
         +kEkB+8PTBzf5hCoTURTHcWCXzWuoSWab6F4LtJRLQ7tfsIy+Cios+/+xEbow0XjrhOK
         2EtlCzWPJN2cTnhXQQaueQAaOY7czfa9+rH1MvSwIMw2t5YeeT5Sc250YJKuTfjicYmC
         mPrg==
X-Forwarded-Encrypted: i=1; AJvYcCUdvKxIapvyGFD7V6OTtRN/zCeoAdw5B7pcJyPdhIzpKbqinEke9CbYw0ksRJCaBYKCFvRITt7S6TPH@vger.kernel.org
X-Gm-Message-State: AOJu0YwAMwIXtTmVa2pGHELe4pHWSdJKHaf9uYtjKnYR3KQHagy4GHz9
	RTSc+Eh/Kc8ELKVVLrPbcNAO5IrFVoRTjV0Vqg3uB+NteRFi0eHxh22i7BLwgksY820=
X-Gm-Gg: ATEYQzwEsc6ml+KYzUadpR+NSQGg3Vh9B+4W1VpwQXu5fCJwGdwapuor18+qAuU3xTx
	8vu2a+0Ztooiq3a1KP2vQFyNJ2jJqJY3YUWw6atFEiV/tFK0HBstc9uG7GC4UeZ3XcGIQmIEaDQ
	XWlvp8FHD5I2VvcfKGL+KVd4dMmB2b4Ejnlyq3GK7WCCVKuyXkAsOWDCe3CYlyn1cYXpg5PthW7
	S5PYlmyJKO+LcHgQEVQ7uCTp+IkzmMmb+2XLYkdxlACtJRqD6Db4F1hPT6F+W9ocbJoeTeepQBe
	zY8hbA7A/dn9QNn6wtrDA16l8hnUM8a5O3Coy+5QBrDTgYkuWndtt+GFoN6hpeec3TDspkHz/Mf
	ry0jNJDn4yzv1xPsqp6kXly0Gtj2wCffD6Y90ZelkBqw9nWqcKwvJ+QorZ+id1WMCEKUanM+1kV
	zzA78qvCu8kEu37Y94pFIZMQwPUSf62qEoJrb7jynoHq/wmW9XGBGgT9m/5ajn
X-Received: by 2002:a05:6102:5123:b0:5ff:2569:cff1 with SMTP id ada2fe7eead31-6027d159d7fmr1258986137.15.1773823317799;
        Wed, 18 Mar 2026 01:41:57 -0700 (PDT)
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com. [209.85.222.48])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-9510328f67dsm1068422241.4.2026.03.18.01.41.55
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 01:41:56 -0700 (PDT)
Received: by mail-ua1-f48.google.com with SMTP id a1e0cc1a2514c-950cc286d86so955560241.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 01:41:55 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUv7QoXCTcUZRw2kN1coXUOza2yiOmzKP1nbvQkP1A7SvBNFytEcWZ3fACkeHgvdRSLEewLxHVBYjwh@vger.kernel.org
X-Received: by 2002:a05:6102:5087:b0:5ff:e39d:9f9b with SMTP id
 ada2fe7eead31-6027d159e7fmr1126209137.16.1773823315107; Wed, 18 Mar 2026
 01:41:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260316154159.1.I0a4d03104ecd5103df3d76f66c8d21b1d15a2e38@changeid>
 <abkCPU3rxHI49N4_@shikoro> <abkD-VLprcbbEbB1@ashevche-desk.local>
In-Reply-To: <abkD-VLprcbbEbB1@ashevche-desk.local>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 18 Mar 2026 09:41:44 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVX4tfko8iv-EdwO-bBcwCd+cPkb9aP8qJbcM1F4zdz4g@mail.gmail.com>
X-Gm-Features: AaiRm52_MgNfiAr79FL-62Ac0xXnTx-AfzVYThIE_IN0tF6AadQcPRzCkdJNUOc
Message-ID: <CAMuHMdVX4tfko8iv-EdwO-bBcwCd+cPkb9aP8qJbcM1F4zdz4g@mail.gmail.com>
Subject: Re: [PATCH] device property: Make modifications of fwnode "flags"
 thread safe
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Douglas Anderson <dianders@chromium.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Rafael J . Wysocki" <rafael@kernel.org>, Danilo Krummrich <dakr@kernel.org>, stable@vger.kernel.org, 
	Andrew Lunn <andrew@lunn.ch>, Daniel Scally <djrscally@gmail.com>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Fabio Estevam <festevam@gmail.com>, Frank Li <Frank.Li@nxp.com>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Jakub Kicinski <kuba@kernel.org>, Len Brown <lenb@kernel.org>, Mark Brown <broonie@kernel.org>, 
	Paolo Abeni <pabeni@redhat.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
	Russell King <linux@armlinux.org.uk>, Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Saravana Kannan <saravanak@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	devicetree@vger.kernel.org, driver-core@lists.linux.dev, imx@lists.linux.dev, 
	linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-spi@vger.kernel.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[sang-engineering.com,chromium.org,linuxfoundation.org,kernel.org,vger.kernel.org,lunn.ch,gmail.com,davemloft.net,google.com,nxp.com,linux.intel.com,redhat.com,pengutronix.de,armlinux.org.uk,lists.linux.dev,lists.infradead.org];
	TAGGED_FROM(0.00)[bounces-277043-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[34];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.884];
	TAGGED_RCPT(0.00)[devicetree,renesas];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,intel.com:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: B63842B8448
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Andy,

On Tue, 17 Mar 2026 at 08:34, Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
> On Tue, Mar 17, 2026 at 08:26:53AM +0100, Wolfram Sang wrote:
>
> ...
>
> > Thanks for tackling this issue! I agree it should be fixed, just
> > wondered about one thing:
> >
> > > While flags are often modified while under the "fwnode_link_lock",
> > > this is not universally true.
> >
> > Is it a possibility to use the lock in all code paths instead?
> > Because...
> >
> > >     struct list_head consumers;
> > > -   u8 flags;
> > > +   unsigned long flags;
> >
> > ... this change costs some memory on every system. Maybe it can be
> > avoided?
>
> How much memory does it cost? On most 64-bit architectures is +4 bytes,
> rarely +0 bytes, on m68k it might be +2bytes. On 32-bit it most likely
> +0 bytes. I expect that 64-bit machines will cope with this bump.

On all architectures with natural alignment of pointers and longs,
it won't cost a thing: struct list_head contains pointers, so the
struct must be padded to a multiple of 4 or 8 bytes anyway.
On m68k[*],  it will cost 2 bytes, as the existing padding is just a
single byte.

[*] Iff m68k ever switches to 32-bit alignment, there won't be an
    additional cost due to the change of flags here, but of course
    there would be a cost all over the place.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

