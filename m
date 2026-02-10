Return-Path: <devicetree+bounces-264260-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iDgGOR/limndOgAAu9opvQ
	(envelope-from <devicetree+bounces-264260-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 08:58:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C65A118148
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 08:58:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 006EA30090A9
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 07:58:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F18BB33A9C3;
	Tue, 10 Feb 2026 07:58:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAB773385A3
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 07:58:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770710301; cv=none; b=p5yeTeJVv8LenWLTY3ZccmVyi8Rcf/3yETpm5yUYBH0cm+cz3qMPB274cN2EPqb2w69EdhOQcoNxogwED/5ewtzwQVmrJclb4mL4m4aaGQiJ6LJfU/tIRD5nKstYp7tQaId6jw2W0pCdMnNC74a9Wm0ke/ZlPL6/Q8E93TmRcNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770710301; c=relaxed/simple;
	bh=ZBrn2V6Ps9nAXfcemoiQWj+7Cl/HyRPhAU9WPaB6Fxc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PjIKR2NTpIoYg6V3gfOw2fjyciOEjHokBjtRL3gsaQSJqmxqAufYrWC3ThvSmmww3nahC/QX+mPWCVKuEHsm9t5wtc1dk6Ecc3Zi52T0VQqhIXf2Rdk953Get1LJevGrVJfM1AT8CaFetACWZzXpqpbYOMD/a+wY+Yq0e1NbpbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-354bc7c2c46so1863043a91.0
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 23:58:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770710300; x=1771315100;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=za+ffUzQm9VRZ3fSQVHtfuOR3ywRY/ywHi+DZoQjMUc=;
        b=PnBHWcL9+URBr+pS30mQynZbI0QTnGJRo7bHXgAsKi4P5NKRh+ddEBrj901mI6bmAd
         J8pzUSQWDVgT+dun3GrE6KMK51k4YgmnytnoxKAJuetZkABpFZgtOMBy/tjKYaZRa70g
         Dgeuj3A0laO1gOyteuQx/UeBmiOfoZI5ixbtgsvZzPkxs7kdX/DhAgc9ciNzkWSDkBPF
         jpR0kRlLZJrcEJR6PV87bZXhUXYCRgmDJqh5XwP15gp6E1V168tdnO3yHEhrruR4hgva
         lKs9TCoeIqn63a4kDMozJJSKycJzipHx4Ew5Q89T4wEJbsLcToiWmk6lplMpdeMl8NCQ
         aUuw==
X-Forwarded-Encrypted: i=1; AJvYcCWx2+zO/Zb/m0rDnkTdti3DsTqT1TyHsC6o42H9+uEMAKf9lwJuPONUy8ajmefFwpqaoGhRYMDHBPKP@vger.kernel.org
X-Gm-Message-State: AOJu0YxsTZ0IYB4WH38kwV7IscUtE4Xjvn3aWvGOFyNGJA3JGImDF/dp
	X7i/4XugL1za/TGhxzE2n06sljXUmjF5CkGvTZeXUm3d18qSaPjOy7GrDf8RAuCY
X-Gm-Gg: AZuq6aLrsJM2rotrqp8CHJ9Mhl+NCDa9cHMoKn9Abet4Z8bVBplsC+9okB8zV8J5NfF
	9Hjorh7UNkTA2lI2Z1YenpfSMngAdvEwsDbJt0U+pZNqqQiQPcv7cLuXXVUN4Xg9c/HklJYKW8d
	Yre2fQQmcIWZD2NtaS1IqFX/N8plIDPulBKYxvK8QnBdzfTOE1Vz69NmL0THYKrdP0by0p1/KuB
	kVwVOmt/Yvkoq/Ca96j043qoNQe+rKIXGHLw6g4cf1aHv7Ci6LJXEe5jB+LAC1nBPJGVllyGBrU
	wmyvuhEznESe3gh32hNqqRBb+cUW9nGIrzQ3vxuUXxK9KSW8mAyjsUvoaNjZ0cw+xiZbfnH5XnZ
	J+WXgkOUwg+hAPiXozNMIdnG6xJv1ld6oe1xiYz92lj83Y91UtZT2Z1J7WVNpExH2NOw/DCzIqc
	xtSD5viypuLS+0huR9O71ob2jou5dwZ+snMpo1GduZX5psqu+iq5fE/1JUw8pcACg=
X-Received: by 2002:a17:90b:3508:b0:341:8b2b:43c with SMTP id 98e67ed59e1d1-35667b4b2ffmr1204305a91.18.1770710299887;
        Mon, 09 Feb 2026 23:58:19 -0800 (PST)
Received: from mail-dy1-f179.google.com (mail-dy1-f179.google.com. [74.125.82.179])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35662f6b84dsm2231553a91.10.2026.02.09.23.58.19
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Feb 2026 23:58:19 -0800 (PST)
Received: by mail-dy1-f179.google.com with SMTP id 5a478bee46e88-2b86671f87eso2033188eec.0
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 23:58:19 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWU944zBVz/jdj6pfa/unohbITtDmsu1AwzsB++N2WIprd/jPQepipAuqBotom5HWqMBQXLJCsPNgpy@vger.kernel.org
X-Received: by 2002:a05:6122:920:b0:55b:305b:4e31 with SMTP id
 71dfb90a1353d-5673dad68b3mr278879e0c.17.1770709845104; Mon, 09 Feb 2026
 23:50:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260208-rz-sdio-mux-v9-0-9a3be13c1280@solid-run.com>
 <20260208-rz-sdio-mux-v9-3-9a3be13c1280@solid-run.com> <bc5fbfc5-6f71-eeed-ad90-0c1b835e65ea@axentia.se>
 <fcef2798-1645-41fb-952e-daf3657bc231@solid-run.com> <704210e0-2e53-09f6-9f8c-3ae0c4b8e0da@axentia.se>
 <9d7bda92-e520-466a-a0be-d01686af1d56@solid-run.com> <f4d8547d-3de3-0de5-da61-3de57d9af895@axentia.se>
In-Reply-To: <f4d8547d-3de3-0de5-da61-3de57d9af895@axentia.se>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 10 Feb 2026 08:50:33 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUEZZ+p+yaQDWhVCRNEQUygR2j=HpCp5LuzFU3E=qVNXg@mail.gmail.com>
X-Gm-Features: AZwV_QjWs_kGwWtLP-4KOwLJynmxdzZD9XMo5f_JCKEF6YiXm5BZAUIGiU8_kRM
Message-ID: <CAMuHMdUEZZ+p+yaQDWhVCRNEQUygR2j=HpCp5LuzFU3E=qVNXg@mail.gmail.com>
Subject: Re: [PATCH v9 3/7] mux: add help text for MULTIPLEXER config option
To: Peter Rosin <peda@axentia.se>
Cc: Josua Mayer <josua@solid-run.com>, Marc Kleine-Budde <mkl@pengutronix.de>, 
	Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Aaro Koskinen <aaro.koskinen@iki.fi>, 
	Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
	Janusz Krzysztofik <jmkrzyszt@gmail.com>, Vignesh R <vigneshr@ti.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Yazan Shhady <yazan.shhady@solid-run.com>, Jon Nettleton <jon@solid-run.com>, 
	Mikhail Anikin <mikhail.anikin@solid-run.com>, 
	"linux-can@vger.kernel.org" <linux-can@vger.kernel.org>, 
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-omap@vger.kernel.org" <linux-omap@vger.kernel.org>, 
	"linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>, 
	"linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[solid-run.com,pengutronix.de,kernel.org,linaro.org,iki.fi,kemnade.info,baylibre.com,atomide.com,gmail.com,ti.com,glider.be,sang-engineering.com,vger.kernel.org,lists.infradead.org];
	DMARC_NA(0.00)[linux-m68k.org];
	RCPT_COUNT_TWELVE(0.00)[32];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-264260-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[axentia.se:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid,solid-run.com:email,linux-m68k.org:email]
X-Rspamd-Queue-Id: 8C65A118148
X-Rspamd-Action: no action

Hi Peter,

On Mon, 9 Feb 2026 at 14:09, Peter Rosin <peda@axentia.se> wrote:
> 2026-02-09 at 13:07, Josua Mayer wrote:
> > On 09/02/2026 13:43, Peter Rosin wrote:
> >> 2026-02-09 at 12:31, Josua Mayer wrote:
> >>> On 09/02/2026 13:10, Peter Rosin wrote:
> >>>> 2026-02-08 at 16:38, Josua Mayer wrote:
> >>>>> Add prompt and help text for CONFIG_MULTIPLEXER to allow enabling this
> >>>>> option thorugh the kernel configuration without explicit "select" driver
> >>>>> dependencies.
> >>>>>
> >>>>> Select it by default when COMPILE_TEST is set for better coverage.
> >>>>>
> >>>>> Signed-off-by: Josua Mayer <josua@solid-run.com>
> >>>>> ---
> >>>>>    drivers/mux/Kconfig | 9 ++++++++-
> >>>>>    1 file changed, 8 insertions(+), 1 deletion(-)
> >>>>>
> >>>>> diff --git a/drivers/mux/Kconfig b/drivers/mux/Kconfig
> >>>>> index c68132e38138..4f7c6bb86fc6 100644
> >>>>> --- a/drivers/mux/Kconfig
> >>>>> +++ b/drivers/mux/Kconfig
> >>>>> @@ -4,7 +4,14 @@
> >>>>>    #
> >>>>>
> >>>>>    config MULTIPLEXER
> >>>>> - tristate
> >>>>> + tristate "Generic Multiplexer Support"
> >>>>> + default m if COMPILE_TEST
> >>>>> + help
> >>>>> +   This framework is designed to abstract multiplexer handling for
> >>>>> +   devices via various GPIO-, MMIO/Regmap or specific multiplexer
> >>>>> +   controller chips.
> >>>>> +
> >>>>> +   If unsure, say no.
> >>>>>
> >>>>>    menu "Multiplexer drivers"
> >>>>>           depends on MULTIPLEXER
> >>>>>
> >>>> I'm not comfortable with making MULTIPLEXER a visible symbol. It is meant to
> >>>> be selected when needed (and there are a dozen or so instances). The kbuild
> >>>> docs has this on the subject:
> >>>>
> >>>>    "In general use select only for non-visible symbols (no prompts
> >>>>     anywhere) and for symbols with no dependencies."
> >>> The patch description didn't make the decision logic clear,
> >>> and I plan to submit a standalone patch for this after v7.0-rc1.
> >>>
> >>> Basically existing drivers using mux core used "select" to enable it,
> >>> even though the core can function standalone with device-tree.
> >>>
> >>> Some of these users (phy-can-transceiver) function perfectly
> >>> perfectly fine without mux, and use it as an optional feature.
> >>>
> >>> Likely drivers only used "select" to avoid writing helper functions,
> >>> prompt, kconfig description and stubs - which this patch-set added.
> >>>
> >>> So I will argue that some existing users relying on "select" was wrong,
> >>> and that the mux framework is generally useful on its own.
> >> When I wrote the mux sub-system it was very much intentional and by
> >> design that drivers needing a mux should select MULTIPLEXER, and that
> >> MULTIPLEXER should not be a visible symbol.
> > Need is a strong word here, and doesn't address the optional case.
>
> "Need" was the correct verb up until you needed the subsystem to be
> optional. If you need the mux subsystem to be optional, you need to
> do it in a way that does not introduce headaches.

In the other thread, Josua pointed out that there are already several
drivers that cannot be enabled if MULTIPLEXER is not selected by
something else:

drivers/mux/Kconfig:

    menu "Multiplexer drivers"
            depends on MULTIPLEXER

    config MUX_ADG792A
            tristate "Analog Devices ADG792A/ADG792G Multiplexers"
            depends on I2C

    config MUX_ADGS1408
            tristate "Analog Devices ADGS1408/ADGS1409 Multiplexers"
            depends on SPI

    config MUX_GPIO
            tristate "GPIO-controlled Multiplexer"
            depends on GPIOLIB || COMPILE_TEST

    config MUX_MMIO
            tristate "MMIO/Regmap register bitfield-controlled Multiplexer"
            depends on OF

While MUX_MMIO is selected by some/all(?) symbols that need it,
the other three are not.  Are these three really dependent on another
symbol selecting MULTIPLEXER?

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

