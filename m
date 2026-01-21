Return-Path: <devicetree+bounces-257891-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OE83D7a1cGndZAAAu9opvQ
	(envelope-from <devicetree+bounces-257891-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 12:17:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id DB87D55DF9
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 12:17:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B0ED5389E1E
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 11:08:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28B124657E0;
	Wed, 21 Jan 2026 11:06:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D5A3EDAB3
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 11:06:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768993568; cv=none; b=efuimx0sxJrQMydGUSWIg3k+y0+tYDFosMRoaxSuoejSFJeOSqW/RUafeK6B/rANs3+B4QZDOHZSPLhg0KEDJiny2dXQkMp69Qty20bDegrbkYwQoQWKeTc142VU93pXTcGl8UuwqUe1X2dslE54kgwjjvKT3JSPCXrqI8Xi7Wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768993568; c=relaxed/simple;
	bh=cysOwS5g5dZRSxtVrJ3zv/VB5w+D2iLkyCuaPMhXFP4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dcqIuJppTiC814zgZ5aFEil5vxDHiaXFRJorpweVCx0Bi1wBI9+H1R80+3GNejKM6sxsF/kvv3rQ+XYbCdvDNrtd/ZyGDZ3eUHWBIcmXQUk0MSGWiGitsnpNfacZxDjYOrqS8qnmEXdbaVdqT/0+FcJ4T/VFbldY22D6UacX25s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.219.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-89473dca8aaso5049486d6.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 03:06:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768993566; x=1769598366;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VSYJm8i9wWqRvGvRTZz6VIsl7/oMewZT8tw/+hAgWzw=;
        b=fv2NpJFFl89w7TTTXcmbsBUrmydBwIsLOMkOIKKl8F4sBn+Nu/1Z07uHSKDZ6Iqkwp
         aDPWOZFbSVNsp1FZ3Me8CFYr+9ZEBMqxD53qiMDoFEkdLIfmGsiTPaiJBreut8J7x+a1
         3PAax75Rq9nqVx2EUs9Y4src/Pglaui1wJTduI8L31n3JFvLx+XlaQu+J5XNRcHdHW3j
         r6JR2FAM5ZfC9PwrcrITghQGEZPsj9mevJEKbm+KeRJo9u1M5PtHUZ0vqG1rs2Qn/kZG
         mlby9BUgNWYt/r+nSdLZR8OOcRiZxfO2chEPVZc9aSIUOIkcGFZBBW1QqwsOwWof+m4a
         KeGQ==
X-Forwarded-Encrypted: i=1; AJvYcCX6NGPuDJ9ihr+qZZxMVpAo+zUzdvPZjC1SP6iCm9u+mBECGVoTk0TDBT5C42yeTqy8UOorwFLv8/qN@vger.kernel.org
X-Gm-Message-State: AOJu0YyXZviij58XsWwaGlKrGyD9LNcOdusBFoEaWY3AU6vphbjpQA6q
	DTEnsXpcQg+Nq4J5yc9g9VDCPw3FRGnhpxVUISEjhBhDSFSiktyyjovIZVUPHBH3
X-Gm-Gg: AZuq6aLvrQWbNKuvitXWQPrfJLKMbKAkWsnvCQgOeW3he8WBlXmLJZxKyrNwo8+thbC
	gC+IL8E4Wo+lhbezA+Fy9100Tvc6DuVk6Cm0IxczKPp4OX/XNoDTOzASyYgMIgP/S+Ob/rzN5zA
	GyYY5qEB4fsXhA4Hj3EO2eGfdWmFljeVBeuIsQNKjcHo/IJFrOZNLn0InqIRdY+5rPaasdzr6ZA
	5dOKHMiP4ip5Nk7Z5ZJI7xgoBS2AccvXwUzclkuMRTAqZd4pGhGqVucjzE/XS1f5HqIcyU4kGZY
	PntifoVx9Jkh3fdMRyR7KV+Kjbhvd8bOIPOVpyt+KauZCkhK5Pa73pp+JLFYM412j6Fju1ch0HU
	wcy8RxQhevsk+D/Fs/WeEkPDV/vxzD+N2g1f9ARPJttJ6hows1QSge9/v/D+ZrC8tM7UkSRgRA+
	Q+tFSAqFA+JwTJuUIdkx68eokI0S79eoL/YoV6RZ/EEdBhp3CFsT+2
X-Received: by 2002:a05:6214:76a:b0:894:62b2:12a0 with SMTP id 6a1803df08f44-89462b214b1mr75746866d6.22.1768993565754;
        Wed, 21 Jan 2026 03:06:05 -0800 (PST)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com. [209.85.222.179])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-502a1ed2479sm110210391cf.21.2026.01.21.03.06.05
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jan 2026 03:06:05 -0800 (PST)
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-8c5386f1c9fso929548285a.1
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 03:06:05 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWewE1iUL4/wTjXyh5jEa0EQtWsDWop49csE/ahOL7S3ghW7XbUlUxD+sPan27NC0Wo/IpXdER1j7sy@vger.kernel.org
X-Received: by 2002:a05:6102:2ad6:b0:5ef:248b:d533 with SMTP id
 ada2fe7eead31-5f1a716fcbcmr6150752137.31.1768993204250; Wed, 21 Jan 2026
 03:00:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260121-rz-sdio-mux-v6-0-38aa39527928@solid-run.com> <20260121-rz-sdio-mux-v6-3-38aa39527928@solid-run.com>
In-Reply-To: <20260121-rz-sdio-mux-v6-3-38aa39527928@solid-run.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 21 Jan 2026 11:59:52 +0100
X-Gmail-Original-Message-ID: <CAMuHMdX_rKgfusHP5qVny8OZufU6VAiA6sqg1LP3T2jikSz7yQ@mail.gmail.com>
X-Gm-Features: AZwV_QifTISU05sQ0lYySqx5XyPjAzUqa1H8fmOUOfLhWhGN7rzCzfM2UGq26-s
Message-ID: <CAMuHMdX_rKgfusHP5qVny8OZufU6VAiA6sqg1LP3T2jikSz7yQ@mail.gmail.com>
Subject: Re: [PATCH v6 3/7] mux: add help text for MULTIPLEXER config option
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
	Mikhail Anikin <mikhail.anikin@solid-run.com>, linux-can@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [0.24 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257891-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	RCPT_COUNT_TWELVE(0.00)[32];
	FREEMAIL_CC(0.00)[pengutronix.de,kernel.org,linaro.org,axentia.se,iki.fi,kemnade.info,baylibre.com,atomide.com,gmail.com,ti.com,glider.be,sang-engineering.com,solid-run.com,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linux-m68k.org:email,solid-run.com:email,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: DB87D55DF9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Josua,

On Wed, 21 Jan 2026 at 11:02, Josua Mayer <josua@solid-run.com> wrote:
> Add help text for CONFIG_MULTIPLEXER to allow enabling this option
> through the kernel configuration without explicit "select" driver
> dependencies.
>
> Signed-off-by: Josua Mayer <josua@solid-run.com>

Thanks for your patch!

> --- a/drivers/mux/Kconfig
> +++ b/drivers/mux/Kconfig
> @@ -5,6 +5,14 @@
>
>  config MULTIPLEXER
>         tristate
> +       help
> +         Generic Multiplexer Support.
> +
> +         This framework is designed to abstract multiplexer handling for
> +         devices via various GPIO-, MMIO/Regmap or specific multiplexer
> +         controller chips.
> +
> +         If unsure, say no.
>
>  menu "Multiplexer drivers"
>         depends on MULTIPLEXER
>

Unfortunately it doesn't work like that. As the tristate has no prompt
specified, the user will never be asked about this.
You should use something like below:

--- a/drivers/mux/Kconfig
+++ b/drivers/mux/Kconfig
@@ -4,10 +4,8 @@
 #

 config MULTIPLEXER
-       tristate
+       tristate "Generic Multiplexer Support" if COMPILE_TEST
        help
-         Generic Multiplexer Support.
-
          This framework is designed to abstract multiplexer handling for
          devices via various GPIO-, MMIO/Regmap or specific multiplexer
          controller chips.

Sorry for not noticing before.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

