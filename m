Return-Path: <devicetree+bounces-269296-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kCZrJIWxoWmMvgQAu9opvQ
	(envelope-from <devicetree+bounces-269296-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 16:00:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0B11B95DD
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 16:00:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EBD4B30F025F
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 14:55:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 893F042B73C;
	Fri, 27 Feb 2026 14:55:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com [209.85.221.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85EA2429825
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772204155; cv=none; b=gRxkKZpsgG1L7MmbRUSEeYnrvcp4tr/ESB8eJf6/9FJO++PhkygFHVlwW968gwF0FRgzFt4sH6cdASRu3CI8uJbbyeH6RwgKpPgbt1L0VXy0EZgGl3o1l1xJ6emvaa1om9zSX1JUv02GpeO6D6VYDb3mJn5sTJaTgbbwjrKZF3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772204155; c=relaxed/simple;
	bh=lToFBo+bQaCa9neG/vLe3MHGOkvyleQBs1IqzhcHe1s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Zm4/dqUI2kBaeC+cfjxs9a9oGXJoLKKJ+Qa9n+LSgl1g+TRsNs060114+mYrgdisgeO/X2iqc8l8kZNLPYTc8fyj9ci/t5Cy67eMorPccpT3ZQctvjFAnKAtU/yWGkOjotJ7VEooonk+2flBFBl4Sw8qR8m3N31i5zHCmJHptbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-56a88bfd470so1582383e0c.0
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 06:55:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772204152; x=1772808952;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FUkkEiUGXuiXLmzIVFfuNzK2FaXQ+t2b+WPGwELOFZU=;
        b=HESDSaGkhDyQl1WvwoGOhxPs6/tpEmowN6NYi1R2vGa8bqeGxZXzZv/OghMAGRGE3T
         cN02z+fo3+DQCiYVCqtSPJuq3nzOCs+803L8nm5dHOMdk/zbuCdotVE2HPTdf2QTCtLZ
         p9k3yXD4Mf2I4nUzBI8vRwZSbmZllHNYyZGH9KX/pQ224aRVKVvwhbLEc+OXuHBdbtWJ
         L2EZ30Zd4pxGULw2xMswZG2oEpCzph//thAE9X3nZoXH4CERDGcnbFxHwIEjkc76Hn1h
         h+W56mQKtjxh+zsMHh69gv/eYNt0pF3xLICDvLcfZk054VafZ2JzqNPpsj7I5CttDa3j
         6a4Q==
X-Forwarded-Encrypted: i=1; AJvYcCUp9zPKZc8hlV53kU91437iNCvj8iYuwUH/dtjjrlMVUtCzIwaxPT9H4gVtEIDUoIWtcUvMba8MmLhA@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1sBT04CnEOAOznlcCJ6Cs+1s5zJy6/kYGfG4U5AMRbP/dBiJq
	xLKKGPZj4uPTpO+UF1Y4JpFCXgQCG8AdqY5ImZxkaaucbna+xr4VbCaQlbTvvOgiauk=
X-Gm-Gg: ATEYQzxjOZpaCYqX1qNWhSbsh/g/1rP+z//SBvqoVZuMnuOepX7O2l4K/q11oH7ABF3
	Db7PktDRWtmm4DSe4rH+ynRN2T7PbwgidXB4VFIbliSnRbUNLuuw49c+BW9Gy16OqeGIlYGW3mu
	38wbQFrj5q3YbJI9q5iZYzzlKcElPyYhSODvLGjXeYd466XwgPmGBFINBDi78n7PlnImnQfRrcd
	k51Dvw6VFBbO36xnVkODrOgNHpI5J0I9B91GuxgcWvVDe41H5uE6NZ9KxQTu8cAq+uYF3+5/ohh
	BOJPVxEq5/ckm4Lfy6XEpAn+sNAqGxhNq3ZQrkQZO3BcqbHEq1slmBXqoDFcjA4if+kMGadOFfr
	gbClFRnj/EWUrcXp78EgsVqf8q8Z6P4MLIycGg3d/1WFW9HvTEK07Tffr/fzK+5P11vNIkdJdE2
	o+Z9F/9qzrH3VELHxY6Ioatre1U9G7VTFRFMCqqId6kiSkhsOglL1AnKG+SKd7
X-Received: by 2002:a05:6122:6588:b0:56a:9fdc:2139 with SMTP id 71dfb90a1353d-56a9fdc255fmr2036650e0c.1.1772204152546;
        Fri, 27 Feb 2026 06:55:52 -0800 (PST)
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com. [209.85.222.41])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56a91bcc3eesm6593390e0c.8.2026.02.27.06.55.50
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Feb 2026 06:55:51 -0800 (PST)
Received: by mail-ua1-f41.google.com with SMTP id a1e0cc1a2514c-94ddffda372so2207576241.1
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 06:55:50 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU5U3fdLa7VyJPTckVMPyyhZxQ5Oct4Rai/E1wJ2016QSqpdjaIUGxtj0NG5JDdrLk+Z5LHcFCQKfBw@vger.kernel.org
X-Received: by 2002:a05:6102:f06:b0:5ff:1734:4ae7 with SMTP id
 ada2fe7eead31-5ff1cffe701mr3749937137.20.1772204150707; Fri, 27 Feb 2026
 06:55:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260128215132.1353381-1-cosmin-gabriel.tanislav.xa@renesas.com> <20260128215132.1353381-4-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20260128215132.1353381-4-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 27 Feb 2026 15:55:39 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWJh8y5zXUMtWcmYaEND=PXZUFa01xCVpKt_0X4BdztcA@mail.gmail.com>
X-Gm-Features: AaiRm53Ttbxl3AS1ZsDflKNTMNk92JmxxoblMh4cAxRt1__H5obq1pnJAwopKd8
Message-ID: <CAMuHMdWJh8y5zXUMtWcmYaEND=PXZUFa01xCVpKt_0X4BdztcA@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] arm64: dts: renesas: r9a09g087: wire up DMA
 support for SPI
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Fabrizio Castro <fabrizio.castro.jz@renesas.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-spi@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[renesas.com,kernel.org,gmail.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	TAGGED_FROM(0.00)[bounces-269296-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linux-m68k.org:email,renesas.com:email,glider.be:email]
X-Rspamd-Queue-Id: 2F0B11B95DD
X-Rspamd-Action: no action

On Wed, 28 Jan 2026 at 22:52, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> RZ/N2H (R9A09G087) has three DMA controllers that can be used by
> peripherals like SPI to offload data transfers from the CPU.
>
> Wire up the DMA channels for the SPI peripherals.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Thanks, will queue in renesas-devel for v7.1.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

