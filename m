Return-Path: <devicetree+bounces-277262-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yMj+EJqwumkTawIAu9opvQ
	(envelope-from <devicetree+bounces-277262-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:03:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A3C2BC8E8
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:03:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5899F31BE520
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:56:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AA863DDDB8;
	Wed, 18 Mar 2026 13:52:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com [209.85.221.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5CAD3DDDAE
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 13:52:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773841948; cv=none; b=UqqPQY05wejMs9QlEcPu8IwFffp7sz7xWPGDTphY+ALjpW9ewh0L+YjZE4+MO2yEXe3J8npkn4XP3x4RdzMDB+EZx6y2vaJfb5r119yAKv7KX4Hifrrw+o79wwl7QWAMl5tFj+KrXV7XghqpSQjXNqCC8D2lkhezdGq4h0W48uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773841948; c=relaxed/simple;
	bh=VvPyw3/O/xKZX2505H+Dl8z0ionjRva9BuUKbRPtbg0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qOdEb+CbFiJuUKlOSRsCzzlfgOEJg0NVF8U4RiUo0NXwC56Bc0kx0J5oPRAL6vATx5dhDNp10UcJSqB05RxPoLrLeyrkg1pBD9RGwp9DaJ6KewjnmCJ+gxq1qoEnztH/1W1C2wR8C43YncV+FSNtE79i8GeLbjp/z6IQbi/7Aco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f174.google.com with SMTP id 71dfb90a1353d-56a9a7e762bso6565807e0c.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 06:52:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773841946; x=1774446746;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eVjeoA1etH+hCJ5IQzsv0kISF9CTMqVLM5Ygk2CcxlI=;
        b=smMnWAbja1qYsk6gcQvKI/BoJJXgUbbmzlOrFw8jeO4IhIARmMALEXIjkXjD/TYDxn
         BqpNqVQKjB25TZT1YHtKV+eG6EjvnjY86IKuxG9U24pdWBiLYoTHIed3D9mkU6EN97y1
         dNByD8MTQxIxZVUh8QXwQNL2DAnKrseaaN1z35JI5zrKJaY37Xxq/vLHO3QL578sQu/q
         c81T8LYPemMtrz1AGDNAQidtvmpTcCuLEaVJPTYnB+22E2qbgrETifFRn50OAxVLD1Dl
         6l4V5DKxymz/sAJaLiWDYazYW1kc+G6XkP9JL3+L4cuxfcgIYjkDNWRAiUyWuc8Dlstp
         xJfA==
X-Forwarded-Encrypted: i=1; AJvYcCU4iNZEVnQyv1OSZWx47n9wYKIoBhMVHm1y4qQGRVsZZ75obIq/+cpmYTnGj9psnxn6hnSTLbic7Pq7@vger.kernel.org
X-Gm-Message-State: AOJu0YzKDAWajRkYJhxWM3Wj6QF8TarJy+5XZQY9MewQr3R/46V5nJ40
	0NoMWzwvfRHzOvFQfYun1zvf5A1zsKLv0AoAiXBoOkShf3zgAa0X8SLgaYOOtGPCwh0=
X-Gm-Gg: ATEYQzz+26sTxGTwBP393vTyRJBmhz5M740j2LCwzHuVEZNThyNSDXvE4fC1sQiz27d
	ru52AB9rsuj9L8MWwbIa6MTlcsxZFu1/DKgbyQYd/7LfjiHlYwV28o9kr2l9bQtFEhB0CB8xFIS
	+0rt3VArOVRcdwZ1yMkTc+AUiAHOJY3mGCzdCIG9mrPOL5pMXABrKhKpiGeKbXoM36iAOvf5ULU
	ucbKY59KRSZplrlnwP0SchoAfIY42aaVIYhMLjARi3KXKNhtlH41kbEmsjTO7Iodd/TIYXO5d3m
	acYCNsnvFKV2PQaoXGRp0QcYto5ZjMNMOhnR1QtTayTl06C51Rs+b4SL7ltpgHVLzXdUN1BG6NM
	ubLqFOW2KvFANRT1P0uR9l0zmTu/o8wmn5Az6s8WByZEUMlhqclrJwGB9926jifSQz4k9qvUfLk
	e8HnJc+EJSvPiRyoPxah33lWft8V5reur/iTNma9yTPzgaRG8pfhuJcnYzm+zG
X-Received: by 2002:a05:6122:2890:b0:566:2fc9:6c89 with SMTP id 71dfb90a1353d-56ba717c317mr2015084e0c.10.1773841945776;
        Wed, 18 Mar 2026 06:52:25 -0700 (PDT)
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com. [209.85.217.50])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56ba6e30ec6sm1742446e0c.1.2026.03.18.06.52.25
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 06:52:25 -0700 (PDT)
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-6027a750ad0so555266137.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 06:52:25 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVJqPBnD7KdCqMmWHLsLXwnl0Bt0C+jxYcsj9GRx/RCwkj1J9ArW26rCDo/TtKDx2RZvi78Rn9kSB9V@vger.kernel.org
X-Received: by 2002:a67:cb17:0:b0:602:833b:841a with SMTP id
 ada2fe7eead31-602833b98c4mr811205137.6.1773841945049; Wed, 18 Mar 2026
 06:52:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260123225957.1007089-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20260123225957.1007089-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20260123225957.1007089-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 18 Mar 2026 14:52:13 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWE5di=vGLn+tFnvxfpPA6d5UfSz-H4EpQkmnDcLtVmLQ@mail.gmail.com>
X-Gm-Features: AaiRm51I7W7lNX8hnA02lvuJDWHSKD7th69-7NU3QCowjJj7nvrZbNkhKo3YL_w
Message-ID: <CAMuHMdWE5di=vGLn+tFnvxfpPA6d5UfSz-H4EpQkmnDcLtVmLQ@mail.gmail.com>
Subject: Re: [PATCH 3/4] arm64: dts: renesas: r9a09g087m44-rzn2h-evk: Clarify
 SD0 power jumper setup
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,bp.renesas.com,renesas.com];
	TAGGED_FROM(0.00)[bounces-277262-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[linux-m68k.org];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.996];
	RCPT_COUNT_SEVEN(0.00)[11];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linux-m68k.org:email,mail.gmail.com:mid,renesas.com:email,glider.be:email]
X-Rspamd-Queue-Id: A3A3C2BC8E8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, 24 Jan 2026 at 00:00, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Document the required JP23 jumper positions for supplying SD0 when
> selecting between the onboard eMMC and the SD card slot.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v7.1.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

