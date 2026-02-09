Return-Path: <devicetree+bounces-263934-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QLOwJEm0iWkUBAUAu9opvQ
	(envelope-from <devicetree+bounces-263934-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 11:17:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 88AB910E0F3
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 11:17:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DE9CE3008A55
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 10:17:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B79B2DC782;
	Mon,  9 Feb 2026 10:17:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com [209.85.221.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D541D9663
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 10:17:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770632261; cv=none; b=i+1wXlsvqJzumV3Pl0g/uhzNNsdF41t1GJp8oa2zcTNJrhjkw9/AeN06Qvt5Fy32uqnSU3mkPwN/UErbRGVZbksGSUQRVT6tu+GI9Vv7VzTi5FvsQwO822ljOvwkQcJLA0AJeEW5N7IjuIkcumUfd8Yryn3ltx6LEV0LQkII3M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770632261; c=relaxed/simple;
	bh=J73vKAZhiN3K6G/5fpGigw+8duj0Td3xLp2ybYYDes8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=u7Ie5+xvDbqI/j7vSVO/Wb6rTwv8/Yf0DtidP79/edk6I47k8KUvVGvjG4kBCRS1isYpm3eqHRppUFdtPWchzgHu47QxJCKLM5V7Hw5LX3ZcbMRrsvgVFGezV2DWXseV343UURd5H3d24C0mSKqv7veGK02791intHr+YaMWYis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-563610de035so3013397e0c.0
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 02:17:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770632260; x=1771237060;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=55b+49cOY521wvVXvsz0WcOQjNDu8cxcjrZIHfMxzy4=;
        b=qbXlrfr1p8GzcNFC2H/PGQzhsUu7vz6fSSRCSJnnZPaav7rPD4pmGzMQpWooO/mA+d
         JuQe0+KkC0MAKTkKF9/rgi33kbA/xjSsdBJCkZ8SIVYI4fM9wOSKy+vF7wF2zz3knKpi
         3bAWlMyyC2xNOT4z0dCGOhoAGqx0kkMHm4654OxcQeXUKEpXesbJNzTd+BhwImNUTgTz
         pEckfZbM7PwKxzTtCswVljoP+Z5aiFo1KV6dlM76Qj7224YRK7L7VL+qtp/2JR52Rt0H
         uluvVmETG9NMLk8D2ACQKwvg0c5N2SNe51cmDPXsXRqjjBGzMvfH0G2lLQuuVloz3+KG
         Qshw==
X-Forwarded-Encrypted: i=1; AJvYcCXRs6SQDuRczSJ2ruL2fMdv/GhsaH2YgZdRT67DHRgQvUQAbD5adZMX264PrFSbRVRYYmXoWUHrjP9e@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8I+I6NzqE8vpfgBQz4Qtx0KtFGKV9koGxVA+UPh7NOWdIH9FN
	tiU6G2HKdVNReRGTFQhuul7YtMiaD498LSdldAFZSlvOCvl34wYrBjfZeGbV5ZA/
X-Gm-Gg: AZuq6aLWXxizQkAsvpox1HRGyA/my6wHMswu9vaxMcvdYvEgfAdaNlwbcFNAwC81ZuT
	aVL9bskeE9qj85XcL/4o7Cn8GiN0iJ9u4Oz7MLSr8BoMMdm7GJbbZ6mGE+3Q8gfxvEyrSAZeUdA
	HB+Wel6po97Fn3ykDa171Ai5zJeOyKBeq8IjxI98Bc2Aue2djYlS6JjX+d+AgrFoHTwqattTZMO
	qez3cRjskUBaYAFGRCiXo0JbjGxhooRjhyiyUqMJGaoU87mzbmimIrrYENx9AhyDMjxcW/51gV8
	AN5As9pG2XqxHamLMEFNK/mTTnauLYZDwLT31FmpQsIbDIekFWQDHoYq+V7gbbIYToOMqxyW/0G
	33TB0idywc9Aepo+o/Yer6v4qTnBJoj6fI5+StEbx8qmE71SANggAFkNNnmmd1IFeqRGYVah1xJ
	9vGy2n0NCbkX3NHiVBLVMaJhCwCkcJ5n4rPgou38hSF6YJZ8/apcI5
X-Received: by 2002:a05:6122:4f98:b0:563:66ec:8fdd with SMTP id 71dfb90a1353d-56705feb566mr2845691e0c.16.1770632260094;
        Mon, 09 Feb 2026 02:17:40 -0800 (PST)
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com. [209.85.221.181])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-567072e966asm3449010e0c.4.2026.02.09.02.17.38
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Feb 2026 02:17:38 -0800 (PST)
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-563497c549cso2544901e0c.3
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 02:17:38 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVGo9mRXDX1KIdVOQIVcJ7mLvJTekIx7LZ0TCC/opDegmzW10Sm77KcCueIs5U3pqOcK/XMnr7vMUlj@vger.kernel.org
X-Received: by 2002:a05:6122:3c54:b0:566:3d03:8e1d with SMTP id
 71dfb90a1353d-56705febb0fmr2935090e0c.17.1770632257982; Mon, 09 Feb 2026
 02:17:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260203-rz-sdio-mux-v8-0-024ea405863e@solid-run.com>
 <20260203-rz-sdio-mux-v8-3-024ea405863e@solid-run.com> <b7dcb374-b79c-4e9f-ac30-2f507127cfb3@solid-run.com>
 <CAMuHMdU01vwif4H6H-cYUfW0Y56fN6Anp9F4Ru7q3fveNqqoXA@mail.gmail.com> <39f3891c-c05a-4e10-9ad4-ab3cbc6fa70e@solid-run.com>
In-Reply-To: <39f3891c-c05a-4e10-9ad4-ab3cbc6fa70e@solid-run.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 9 Feb 2026 11:17:27 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVbi=2puhk84k+FCDXqkQ9jFsy0rsseQiFCF8i=KsR1OQ@mail.gmail.com>
X-Gm-Features: AZwV_QizeLChl5bqEs0QtuubG3nlVKZbEpUJtWLc1m5RmCDOEU_VrUSeQPEZi-k
Message-ID: <CAMuHMdVbi=2puhk84k+FCDXqkQ9jFsy0rsseQiFCF8i=KsR1OQ@mail.gmail.com>
Subject: Re: [PATCH v8 3/7] mux: add help text for MULTIPLEXER config option
To: Josua Mayer <josua@solid-run.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Peter Rosin <peda@axentia.se>, Aaro Koskinen <aaro.koskinen@iki.fi>, 
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
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[pengutronix.de,kernel.org,linaro.org,axentia.se,iki.fi,kemnade.info,baylibre.com,atomide.com,gmail.com,ti.com,glider.be,sang-engineering.com,solid-run.com,vger.kernel.org,lists.infradead.org];
	DMARC_NA(0.00)[linux-m68k.org];
	RCPT_COUNT_TWELVE(0.00)[32];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-263934-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.911];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[solid-run.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,linux-m68k.org:email]
X-Rspamd-Queue-Id: 88AB910E0F3
X-Rspamd-Action: no action

Hi Josua,

On Mon, 9 Feb 2026 at 11:12, Josua Mayer <josua@solid-run.com> wrote:
> On 09/02/2026 10:06, Geert Uytterhoeven wrote:
> > On Sun, 8 Feb 2026 at 16:16, Josua Mayer <josua@solid-run.com> wrote:
> >> On 03/02/2026 15:01, Josua Mayer wrote:
> >>> Add prompt and help text for CONFIG_MULTIPLEXER to allow enabling thi=
s
> >>> option thorugh the kernel configuration without explicit "select" dri=
ver
> >>> dependencies.
> >>>
> >>> Select it by default when COMPILE_TEST is set for better coverage.
> >>>
> >>> Signed-off-by: Josua Mayer <josua@solid-run.com>
> >>> ---
> >>>    drivers/mux/Kconfig | 8 +++++++-
> >>>    1 file changed, 7 insertions(+), 1 deletion(-)
> >>>
> >>> diff --git a/drivers/mux/Kconfig b/drivers/mux/Kconfig
> >>> index c68132e38138..e31c46820bdf 100644
> >>> --- a/drivers/mux/Kconfig
> >>> +++ b/drivers/mux/Kconfig
> >>> @@ -4,7 +4,13 @@
> >>>    #
> >>>
> >>>    config MULTIPLEXER
> >>> -     tristate
> >>> +     tristate "Generic Multiplexer Support" if COMPILE_TEST
> >> This didn't do what I thought it would.
> >> It was my intention to allow enabling this through menuconfig / .confi=
g.
> >>
> >> With the syntax above menuconfig shows:
> >>
> >> =E2=94=82 Symbol: MULTIPLEXER [=3Dn]
> >> =E2=94=82 Type  : tristate
> >> =E2=94=82 Defined at drivers/mux/Kconfig:6
> >> =E2=94=82   Prompt: Generic Multiplexer Support
> >> =E2=94=82   Visible if: COMPILE_TEST [=3Dn]
> >>
> >> This means it cannot be selected.
> > Looks like you haven't enabled COMPILE_TEST first?
> Correct.
> But CONFIG_MULTIPLEXER should be visible always,
> not just when COMPILE_TEST is set.

Why should it always be visible? All users select it?

> >> Instead I (think I) should use
> >> default m if COMPILE_TEST
> > No, merely enabling COMPILE_TEST must not enable additional
> > functionality.
> >
> >> Since my patch-set broke x86_64 allmodconfig and failed merge into
> >> linux-next,
> >> this presents an opportunity to change the above as well with v9.
> > Ulf has already applied this series to mmc/next.
> What would be the process to fix the build error for x86_64 allmodconfig
> now?

Incremental patches, cfr. Ulf's response to [PATCH v9 0/7].

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

