Return-Path: <devicetree+bounces-263865-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eJR4EXCXiWlj/AQAu9opvQ
	(envelope-from <devicetree+bounces-263865-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 09:14:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CA81210CD21
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 09:14:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1908F300100D
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 08:14:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2577133BBD9;
	Mon,  9 Feb 2026 08:14:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D600B22B8BD
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 08:14:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770624878; cv=none; b=h0mRtqBhuNnOCyTgeicz3s6eUUwWdyQoKr7rhiuFX5dpkhXrbaZxMawowCqAgvV72kjuqAndbfZ90lTktBjgiiVtBWRH24hslg9DbuK6hA8BOl29DA9iNVI+QEedI3k+6S2g63amoFUPmVXsIWbiZeByNU+2BDJ+bgA38GfqZMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770624878; c=relaxed/simple;
	bh=jGnKFIqAqLu+rNpANBkHFw8kJ3LdtX3G4oazBBlCuPY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=q+Ufa7LdGJ1xKeoc9zkXyyX9a112+glGb9qvgLVUl2/jztKcYE2NAnjimOS9pFaaY49GM4xl3+Ib/jBT0/or3eyTNt2zqBpN4OlX+ry4EXnndP6RcwxTGwY4uKCoDzrM0G9S6J83nCtBFHrxqVQVRtFi1K7fuY3bhb+IaiH2uIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-8c7199e7f79so381600585a.0
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 00:14:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770624877; x=1771229677;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=l9pK4QYIZutXAE3AMWeCiy3lF4Ku+2UbgC78kdie5tY=;
        b=JKYfiMQpwShOSIZ69iEq1FScyjyL+SOzNpL+Ehg3geiRnkD9PMUNETPt0QS98WQz7a
         rQqsRiwvHsKvrL0j+0AIFbCmnv9ENKnnYpY2vDQgqN133SmiTch0mS3OmmapdrvvAgz9
         nhw8VdbvqgCpvEjZ7E4k+Stnvbj2zmT8f1+ZLv+VisyJum3xkLknq30KxCZ+tUuARKkT
         +sAGJ3ZBP8bSQC5yC4QyfUmAPDOwbjUyX/SQ/FTBZXYE2D4xG4G6KBYP8zx7rnjfaoc5
         l70mm27zZ4XFXIg2q4hy5xrpkRHyVXw3JuIuOSTMp51/rddsUtOSW2b8fZx1IDL6Qjg7
         BkVg==
X-Forwarded-Encrypted: i=1; AJvYcCUclYl01+ow/rsB9Ibb1RDxRW59pmMaScEe5gjSdI17HtQOZroNVv3pKrBqxEBxqZ0CxhLiHourA583@vger.kernel.org
X-Gm-Message-State: AOJu0Yzdu9hC0v29v5uQoCm5OKtI9Ee65JL86uHUtjuDyqI+5EyTk6mV
	ED8hbrqtgRg4Zubnd1DbnD7/dBaNSdQbE4K/1DnRgadH40mXwMsCqiec9k1Zl/pU
X-Gm-Gg: AZuq6aK5hPUQ6ZXgkDiy7NdwTG1F0c/UmqNKR0lIMB9G8ODD5dFsyjq7ih3lZ2BnU79
	jY/qRELqTYIlqo5sSobsU7IETlAwJ8aqk5RPRCcb4d3eF6tais8vRseKa/oj0Vd23i34aXNfIE/
	3LC38ETnmzvFFINJ7VJlZ+iTxyRO50yQSJzt3M527b5MshxLf9Nxf6HGMuVUord9iTtdcesQPGs
	1H/xYK08AkBLJ29FzP2qNjUgNeigRCVoMq20jjxxeXTUp54KeLzx3rIZchvLzelrxjY3cCS5WFz
	3QKNNd38yOWO2E83UsRsJMgbwQqzTkOASNKu3DATrPXvQIf7v/KHl/ajqN7lku0ejpJK+d4RWjD
	FH6H6cBgUOJjbuESzvAH352I1SvHpzhYC7ntNv2Hz/VyL13TDG7cwbjtQepHmMsNCSdKMxfcDp8
	idO7inJUlPv4JWJriF1fqXWqmA0porA+rkkwOBqrH/K1nNHY+n4gni
X-Received: by 2002:a05:620a:7102:b0:8c9:e989:9d93 with SMTP id af79cd13be357-8caf1307f55mr1446983485a.61.1770624876728;
        Mon, 09 Feb 2026 00:14:36 -0800 (PST)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com. [209.85.222.169])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8caf77f7308sm792860385a.4.2026.02.09.00.14.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Feb 2026 00:14:36 -0800 (PST)
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-8c7199e7f79so381598685a.0
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 00:14:36 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXLcnVq9zYbUcHKrFT0GSJbfhnofzxvq8TGm23oKfspc+EjqQEgD55d79l+MuCXGdvfKjpU0qgVX6md@vger.kernel.org
X-Received: by 2002:a05:6102:3747:b0:5f8:e2d3:c463 with SMTP id
 ada2fe7eead31-5fae8a3b31bmr2934943137.3.1770624379360; Mon, 09 Feb 2026
 00:06:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260203-rz-sdio-mux-v8-0-024ea405863e@solid-run.com>
 <20260203-rz-sdio-mux-v8-3-024ea405863e@solid-run.com> <b7dcb374-b79c-4e9f-ac30-2f507127cfb3@solid-run.com>
In-Reply-To: <b7dcb374-b79c-4e9f-ac30-2f507127cfb3@solid-run.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 9 Feb 2026 09:06:08 +0100
X-Gmail-Original-Message-ID: <CAMuHMdU01vwif4H6H-cYUfW0Y56fN6Anp9F4Ru7q3fveNqqoXA@mail.gmail.com>
X-Gm-Features: AZwV_QiiqRuDaFts73-z5beOOIXm-WRqeTDAQV4zcAAegTI5YGKcuRUZfqXMUrE
Message-ID: <CAMuHMdU01vwif4H6H-cYUfW0Y56fN6Anp9F4Ru7q3fveNqqoXA@mail.gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[pengutronix.de,kernel.org,linaro.org,axentia.se,iki.fi,kemnade.info,baylibre.com,atomide.com,gmail.com,ti.com,glider.be,sang-engineering.com,solid-run.com,vger.kernel.org,lists.infradead.org];
	DMARC_NA(0.00)[linux-m68k.org];
	RCPT_COUNT_TWELVE(0.00)[32];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-263865-lists,devicetree=lfdr.de];
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
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.916];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[solid-run.com:email,linux-m68k.org:email,mail.gmail.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CA81210CD21
X-Rspamd-Action: no action

Hi Josua,

On Sun, 8 Feb 2026 at 16:16, Josua Mayer <josua@solid-run.com> wrote:
> On 03/02/2026 15:01, Josua Mayer wrote:
> > Add prompt and help text for CONFIG_MULTIPLEXER to allow enabling this
> > option thorugh the kernel configuration without explicit "select" drive=
r
> > dependencies.
> >
> > Select it by default when COMPILE_TEST is set for better coverage.
> >
> > Signed-off-by: Josua Mayer <josua@solid-run.com>
> > ---
> >   drivers/mux/Kconfig | 8 +++++++-
> >   1 file changed, 7 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/mux/Kconfig b/drivers/mux/Kconfig
> > index c68132e38138..e31c46820bdf 100644
> > --- a/drivers/mux/Kconfig
> > +++ b/drivers/mux/Kconfig
> > @@ -4,7 +4,13 @@
> >   #
> >
> >   config MULTIPLEXER
> > -     tristate
> > +     tristate "Generic Multiplexer Support" if COMPILE_TEST
>
> This didn't do what I thought it would.
> It was my intention to allow enabling this through menuconfig / .config.
>
> With the syntax above menuconfig shows:
>
> =E2=94=82 Symbol: MULTIPLEXER [=3Dn]
> =E2=94=82 Type  : tristate
> =E2=94=82 Defined at drivers/mux/Kconfig:6
> =E2=94=82   Prompt: Generic Multiplexer Support
> =E2=94=82   Visible if: COMPILE_TEST [=3Dn]
>
> This means it cannot be selected.

Looks like you haven't enabled COMPILE_TEST first?

> Instead I (think I) should use
> default m if COMPILE_TEST

No, merely enabling COMPILE_TEST must not enable additional
functionality.

> Since my patch-set broke x86_64 allmodconfig and failed merge into
> linux-next,
> this presents an opportunity to change the above as well with v9.

Ulf has already applied this series to mmc/next.

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

