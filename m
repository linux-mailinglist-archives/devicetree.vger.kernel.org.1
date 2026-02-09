Return-Path: <devicetree+bounces-263959-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CJt5ECe/iWneBQUAu9opvQ
	(envelope-from <devicetree+bounces-263959-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 12:04:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 935F110E7F7
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 12:04:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DCF7030036DB
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 11:03:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D8C936AB6A;
	Mon,  9 Feb 2026 11:03:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com [209.85.221.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF8E236828A
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 11:03:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770635029; cv=none; b=a//o1R6OfR9so50RjoPVOKmWRWUJWDeoET/508Zr4srbv0GyItbeeWaEin45j+obzkD7v0Rfi6Lopb6JLDpLGsOJhEH/70cXInoxikUqnBCOK9vLF0BXY40i8/rphwTOkUSP9KuJ7+N1C8w+EMCD+bfhnJmoNMrw7XhmXCLiSy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770635029; c=relaxed/simple;
	bh=sC1KLy2SPQ43D9OQaLHsL9GAH/uPG9wpQURfezxkw+M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oOUfxAcDESBYyp84XKhDlkkw+dYRMRkAVaKdTbHkHAKJ8KGHpsC5Fg/Nal8Gyrrm8XZyWmDuf3gLBQz/W78SGn84wLfUHTBVwhF6kMz+HznIvaUeZlKgU3NwRwFEAtl3/jcoh9zNFlLiI99HmJwWOM4NkY5jEHDUuTRMsLNP14g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-563610de035so3041391e0c.0
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 03:03:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770635028; x=1771239828;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CFhQGFBF0i+66a0TJna2Rm6FRsUIJ3sMEDyWqu3+t6g=;
        b=sKo78SBkL/iLI55yydpW9cSOd3W4U3FK1zyRdZnkgBAgzpnjNZXHLmoDoE3OSvKtpM
         5qv0rInMJka+FQ5hSOF1q8KTwv2iOCvcJaQH5k+2NELIesnNyydi9iMeKaUkLh/4S7gO
         FsKQcG5fRsyZq6E6Bh3J1AQKvLCqXw4ggzUGCKhGAqlkacAF7b6NtupVDThNkjqVFHHj
         P9k8kHJbNnqDFgjYE2VublDbiKZQspgp91Oifsyvhu2KhAxXq0OB2nQhF8eQsvqQcv63
         BUETUbjiiADkCvO8XzYacBfav39TtCxT14CgLm1Esbx9O4gNxkbXctYNOSNrNk7y71tc
         83nw==
X-Forwarded-Encrypted: i=1; AJvYcCWkanzOWT7UzdSU9aDrppnBrTHw1UF7NlVJqfy5tHFAIf5D93AkcC+FbDWiSUpc5nPOQnYcJWmR4HCI@vger.kernel.org
X-Gm-Message-State: AOJu0YyJZ8pheV8BBtibP+GIMdPG9BTFDFR2fdIvsw9Ws/8cbfmo4Ufk
	SqUC7K0ueq1eH9xN/EkTiRWmKfK5cQZu3YYyEqHcP5RauJuCHpYDdAC/mhYE8sh9
X-Gm-Gg: AZuq6aLGa5Lmae6+UTfZCGScNJuycH/BjJ4jVz6Eh3UXy15NhP/0Xh9SpPahxOfeXzF
	XrEYw/OZBLagpfFnimZSbo1yd1fhKUqSI0OBruzYO1ikeED0Ffp4xWD9LWj4QSqpKEU8QC39LU1
	YB8eafT35f8pg0ou1FaKEScUhQ2CHUBfHRDHMxi/tAeDic+s9O1jz+mwdwQiAYa+G/goG+ADVO3
	pOJB3fYHaeNDYKlPjIXHrFYCC+1WuYM4jNvlghjbZgvqTvn+9LZcqJRhGltb5ghz/j9AsSw2sEP
	Z1UnnHWFz+6s7JyDR42MHMHgqQFXp9z2kfD+29zUyYm4zw0wTtNw2yB21ulbfD/PsQ0q0l9MJlK
	xCbbmY7zSO/KmoV8m9SQ+jIBv2O89ebzINI0mg2wsn8pe/h777L/iHh/QleBHf2xfmNux0wLOrv
	gv4k04TJwO7snkCpcW/URAjE65PP02Y5maisvBIiCthwIslFlh3ecP7qiSm8k=
X-Received: by 2002:a05:6122:4f98:b0:563:66ec:8fdd with SMTP id 71dfb90a1353d-56705feb566mr2875767e0c.16.1770635027808;
        Mon, 09 Feb 2026 03:03:47 -0800 (PST)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com. [209.85.222.47])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5670719c5f5sm3899386e0c.0.2026.02.09.03.03.46
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Feb 2026 03:03:47 -0800 (PST)
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-94acf9ce1b7so672884241.2
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 03:03:46 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUvwLnsdU6tFGEAzYyaq0MfAsakSHFxvImyR9fcU/onEnlsArCPAqGoohenCqs9k/fpSgjZxXJQlydW@vger.kernel.org
X-Received: by 2002:a05:6102:f10:b0:5ef:ac78:3c77 with SMTP id
 ada2fe7eead31-5fae8aafb2dmr2699695137.18.1770635026255; Mon, 09 Feb 2026
 03:03:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260203-rz-sdio-mux-v8-0-024ea405863e@solid-run.com>
 <20260203-rz-sdio-mux-v8-3-024ea405863e@solid-run.com> <b7dcb374-b79c-4e9f-ac30-2f507127cfb3@solid-run.com>
 <CAMuHMdU01vwif4H6H-cYUfW0Y56fN6Anp9F4Ru7q3fveNqqoXA@mail.gmail.com>
 <39f3891c-c05a-4e10-9ad4-ab3cbc6fa70e@solid-run.com> <CAMuHMdVbi=2puhk84k+FCDXqkQ9jFsy0rsseQiFCF8i=KsR1OQ@mail.gmail.com>
 <1a4288f2-ee5c-494f-9fbe-ea3a90a16014@solid-run.com>
In-Reply-To: <1a4288f2-ee5c-494f-9fbe-ea3a90a16014@solid-run.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 9 Feb 2026 12:03:34 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWa6o19+oX=-Hkpx+tEsnJ39vyi91FwbU+YHJqv=QsPkA@mail.gmail.com>
X-Gm-Features: AZwV_QiXoAPXWcsFJ5cXmi5LxanLCRJoL8Hmi_xM0cWtiaFZbVoUaSfpkEx2uEE
Message-ID: <CAMuHMdWa6o19+oX=-Hkpx+tEsnJ39vyi91FwbU+YHJqv=QsPkA@mail.gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[pengutronix.de,kernel.org,linaro.org,axentia.se,iki.fi,kemnade.info,baylibre.com,atomide.com,gmail.com,ti.com,glider.be,sang-engineering.com,solid-run.com,vger.kernel.org,lists.infradead.org];
	DMARC_NA(0.00)[linux-m68k.org];
	RCPT_COUNT_TWELVE(0.00)[32];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-263959-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.915];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[solid-run.com:email,mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 935F110E7F7
X-Rspamd-Action: no action

Hi Josua,

On Mon, 9 Feb 2026 at 11:47, Josua Mayer <josua@solid-run.com> wrote:
> On 09/02/2026 12:17, Geert Uytterhoeven wrote:
> > On Mon, 9 Feb 2026 at 11:12, Josua Mayer <josua@solid-run.com> wrote:
> >> On 09/02/2026 10:06, Geert Uytterhoeven wrote:
> >>> On Sun, 8 Feb 2026 at 16:16, Josua Mayer <josua@solid-run.com> wrote:
> >>>> On 03/02/2026 15:01, Josua Mayer wrote:
> >>>>> Add prompt and help text for CONFIG_MULTIPLEXER to allow enabling t=
his
> >>>>> option thorugh the kernel configuration without explicit "select" d=
river
> >>>>> dependencies.
> >>>>>
> >>>>> Select it by default when COMPILE_TEST is set for better coverage.
> >>>>>
> >>>>> Signed-off-by: Josua Mayer <josua@solid-run.com>
> >>>>> ---
> >>>>>     drivers/mux/Kconfig | 8 +++++++-
> >>>>>     1 file changed, 7 insertions(+), 1 deletion(-)
> >>>>>
> >>>>> diff --git a/drivers/mux/Kconfig b/drivers/mux/Kconfig
> >>>>> index c68132e38138..e31c46820bdf 100644
> >>>>> --- a/drivers/mux/Kconfig
> >>>>> +++ b/drivers/mux/Kconfig
> >>>>> @@ -4,7 +4,13 @@
> >>>>>     #
> >>>>>
> >>>>>     config MULTIPLEXER
> >>>>> -     tristate
> >>>>> +     tristate "Generic Multiplexer Support" if COMPILE_TEST
> >>>> This didn't do what I thought it would.
> >>>> It was my intention to allow enabling this through menuconfig / .con=
fig.
> >>>>
> >>>> With the syntax above menuconfig shows:
> >>>>
> >>>> =E2=94=82 Symbol: MULTIPLEXER [=3Dn]
> >>>> =E2=94=82 Type  : tristate
> >>>> =E2=94=82 Defined at drivers/mux/Kconfig:6
> >>>> =E2=94=82   Prompt: Generic Multiplexer Support
> >>>> =E2=94=82   Visible if: COMPILE_TEST [=3Dn]
> >>>>
> >>>> This means it cannot be selected.
> >>> Looks like you haven't enabled COMPILE_TEST first?
> >> Correct.
> >> But CONFIG_MULTIPLEXER should be visible always,
> >> not just when COMPILE_TEST is set.
> > Why should it always be visible? All users select it?
>
> This is not relevant for v7 now and can be handled later.
>
> It was discussed previously that drivers supporting optional muxes
> do not need to "select" MULTIPLEXER through Kconfig,
> E.g. the renesas sdhi driver.
>
> However other drivers are already selecting it even though the mux
> is optional, see e.g. phy-can-transceiver.
>
> In order to support muxes in renesas sdhi driver e.g., users must choose =
to
> enable both the renesas driver, and multiplexer subsystem via the
> configuration.
>
> The mux core standalone also supports a limited use-case without other
> driver
> interactions, setting idle-state e.g.:
>
> mux-controller {
>      compatible =3D "gpio-mux";
>      #mux-control-cells =3D <0>;
>      mux-gpios =3D <&tca6416_u20 0 GPIO_ACTIVE_HIGH>;
>      idle-state =3D <0>;
> };
>
> So it can be generally useful for a user to enable CONFIG_MULTIPLEXER.

Then please say so in the patch description.

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

