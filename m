Return-Path: <devicetree+bounces-268327-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uB2pDTDmnmkCXwQAu9opvQ
	(envelope-from <devicetree+bounces-268327-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 13:08:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E70219704A
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 13:08:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 97233301945E
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 12:08:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D70B33FE33;
	Wed, 25 Feb 2026 12:08:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com [209.85.222.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B2B03ACF00
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 12:08:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772021294; cv=none; b=gy+WH/cAY4MeN0aprY+3CTnZEOvqTqSbNoO3i3dT7fzX0vsKHvInhwOwjWcFTQEolKIUraQbyaj/gDu1qdbXrt/cOXaCpLs0t3tNQA8lEC1konI/8RzKVSGC+YmRKHAgVsAjBf3riOoZIm/swVauSl54L0EqZaTVcmuqJzLaykE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772021294; c=relaxed/simple;
	bh=b7bATi+E9HIWEWXTAIwNa4451ABKjWAafWaU1v8UUAA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tXrMh7qAfjbH6dzzA4xd8XwMz5m+NRoV/G1YE2RfAzF+S5zC04KMB7nODQvR+fUXjZ75d99uFlZs/IVgYq3NVZmlFyzVaQSJfjqZVQV6puuJewPUx0ZjF6K7EBNv6BBoIT+ndRTLiwjbE5rD2qaMODU1/cLOgKfMRmR46XldogU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f54.google.com with SMTP id a1e0cc1a2514c-94ac7f22d23so1785736241.3
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 04:08:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772021291; x=1772626091;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+TQ9plTAtoqFGycuAV6Q4VO2kslCQXeQ3NGwgtKeiuo=;
        b=uBHzJNvyvk2IZeFnyRlk4n/NWM5fxxD5kAnTNWzI5IaKWLkDPdYCoUECJ9hxEFZPX/
         GgDdvKKjQ/Sou6pzJ2AcUkt1BhxT9t9fmuHnEiv/n4kRfdI4a+AR0sB6AE+EMW8epyJQ
         blKy9vMlJ4HP/WVWk9fH8Zjr7rjXPKSuA1F0HQq1gWkRI6MptmrT2t/WID+ppwpx7I4M
         PHEWjapyBLBbHQ6svc6qW688E5gSONAJHzyG9+gkqhVmnWZZUCkunzcDkdpWA9BNyyJk
         UxGlOOEnsoukKxJcuVFK7JM1FPiZTQ734lUVmeH02YlanEDm4YUDhnnr2KIPpaXJsaug
         6OBQ==
X-Forwarded-Encrypted: i=1; AJvYcCWerJjAdeDOh00M2OM/MQJnxi8Cuy5bIgZjTch2bNFrn+PLfRKKEG4mbZaTrFGN+d/IIK9QekujJPTW@vger.kernel.org
X-Gm-Message-State: AOJu0YzSDftBP+Y/7ZUo2SaEbfWenWKYF6G8aVR8e5OQPtVuhtofneVW
	ZaZPjdRGg0Aew5ZjVZpYW/ifU6g89+Ff1FfRWNEv8lgNKIPUnrDN2aqcE/IBKQ+D
X-Gm-Gg: ATEYQzwL59IAgxWkjl0r8w+pZWU/LFz9C52ZBOFqVrzpK2T0Xjj8BY91N3/3cEabKIw
	5B2jM6Ubg2Nq7/2jhpNEp7xcGkdWuLZV0G4DOvb3sdEmf9sFfPhlEZn3OrmSzDCnNi2WXL86T+J
	D79c4PkjbCCnX2UHVT3JcO9NNaewZqpuN8cGyk34LkK38BI0DHAb9yS2hG2DLI851H7bN31+WVH
	T9sNAeYeRJrFMQu04PGwE8oEDrtdbsnj2w+PvIz2SRwd1VszDpxGVqIZ1tGuR5E3Ou2/wvD3ufx
	vca2TpOeQu4Muc6I8w41i3yqukp8wtWyEUXCcf33Lm6NcwRh/uV/UCXMhD+k59A75ouJfrsmOGQ
	ttG7ZyWdUJX6CQmpy5cMpdOfndUx+jaBl2ySpopQyneYXdhOZeaCWvnzM+JRN1qzR/4ri9CkxgR
	nUfBmrKCC+sVl4auaf/9sq5lmdEp5fhxUFSaIje57Tytur76a1hS9ieA0K56DM4h0q
X-Received: by 2002:a05:6102:5124:b0:5f1:5786:219c with SMTP id ada2fe7eead31-5ff141ded84mr74951137.40.1772021291109;
        Wed, 25 Feb 2026 04:08:11 -0800 (PST)
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com. [209.85.221.174])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-94da89e129esm12365373241.5.2026.02.25.04.08.09
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Feb 2026 04:08:10 -0800 (PST)
Received: by mail-vk1-f174.google.com with SMTP id 71dfb90a1353d-56a857578a8so140815e0c.3
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 04:08:09 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUsv9us7MAwlfVIRXBSUi2hB3kl1U6UYVnNR0ieinKgdnvDfEepadaXOU37tWS2sxb55U2ksbFQTwXI@vger.kernel.org
X-Received: by 2002:a05:6122:8c27:b0:563:702b:e2a7 with SMTP id
 71dfb90a1353d-56a8bcb7a04mr108622e0c.19.1772021289726; Wed, 25 Feb 2026
 04:08:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260225-rz-sdio-mux-v10-0-1ee44f2ea112@solid-run.com> <20260225-rz-sdio-mux-v10-8-1ee44f2ea112@solid-run.com>
In-Reply-To: <20260225-rz-sdio-mux-v10-8-1ee44f2ea112@solid-run.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 25 Feb 2026 13:07:57 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUSU8Y9gj5qJ7qNE1UVhp7=HTjAxEsL6uZXPXFgwTd+7Q@mail.gmail.com>
X-Gm-Features: AaiRm538QW2lNPSmHsPdoAK0GxPwumP2I07aJZ0lsRKIlDak2p-vOeVkZ133ww0
Message-ID: <CAMuHMdUSU8Y9gj5qJ7qNE1UVhp7=HTjAxEsL6uZXPXFgwTd+7Q@mail.gmail.com>
Subject: Re: [PATCH v10 8/9] mux: add prompt and help text to
 CONFIG_MULTIPLEXER making it visible
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
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	Yazan Shhady <yazan.shhady@solid-run.com>, Jon Nettleton <jon@solid-run.com>, 
	Vladimir Oltean <olteanv@gmail.com>, Mikhail Anikin <mikhail.anikin@solid-run.com>, 
	linux-can@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org, 
	linux-i2c@vger.kernel.org, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[pengutronix.de,kernel.org,linaro.org,axentia.se,iki.fi,kemnade.info,baylibre.com,atomide.com,gmail.com,ti.com,glider.be,sang-engineering.com,renesas.com,solid-run.com,vger.kernel.org,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268327-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[34];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.984];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 9E70219704A
X-Rspamd-Action: no action

Hi Josua,

On Wed, 25 Feb 2026 at 12:35, Josua Mayer <josua@solid-run.com> wrote:
> The multiplexer subsystem was initially designed only for use by drivers
> that require muxes, and did in particular not consider optional muxes or
> to compile as a module.
>
> Over time several drivers have added a "select MULTIPLEXER" dependency,
> some of which require a mux and some consider it optional. v7.0-rc1
> shows 15 such occurrences in Kconfig files, in a variety of subsystems.
>
> Further some drivers such as gpio-mux are useful on their own (e.g.
> through device-tree idle-state property), but can not currently be
> selected through menuconfig unless another driver selecting MULTIPLEXER
> symbol was enabled first.
>
> The natural step forward to allow enabling mux core and drivers would be
> adding prompt and help text to the existing symbol.
>
> This violates the general kbuild advice to avoid selecting visible
> symbols.
>
> Alternatively addition of a wrapper symbol MUX_CORE was considered,
> which in turn would "select MULTIPLEXER". This however creates new
> issues and confusion as MULTIPLEXER and MUX_CORE need to share the same
> state, i.e. MUX_CORE in menuconfig must not be set to m while
> MULTIPLEXER was selected builtin. Further confusion occurs with Kconfig
> "depends on" relationships that could reference either MUX_CORE or
> MULTIPLEXER.
>
> It is common across the tree for subsystem symbols to be both visible
> and selected, e.g. I2C & SPI. In the same spirit multiplexer needs to
> ignore this particular kbuild rule.
>
> Add prompt and help text to the existing MULTIPLEXER symbol, making it
> visible in (menu)config without breaking existing "select MULTIPLEXER"
> occurrences in the tree.
>
> Select it by default when COMPILE_TEST is set for better coverage.
>
> Signed-off-by: Josua Mayer <josua@solid-run.com>

Thanks for your patch!

> --- a/drivers/mux/Kconfig
> +++ b/drivers/mux/Kconfig
> @@ -4,7 +4,14 @@
>  #
>
>  config MULTIPLEXER
> -       tristate
> +       tristate "Generic Multiplexer Support"
> +       default m if COMPILE_TEST

Please drop this line.  Merely enabling COMPILE_TEST should not
enable extra functionality.

> +       help
> +         This framework is designed to abstract multiplexer handling for
> +         devices via various GPIO-, MMIO/Regmap or specific multiplexer
> +         controller chips.
> +
> +         If unsure, say no.
>
>  menu "Multiplexer drivers"
>         depends on MULTIPLEXER

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

