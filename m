Return-Path: <devicetree+bounces-274115-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aBPmFu9usWlVvAIAu9opvQ
	(envelope-from <devicetree+bounces-274115-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:32:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7B2264961
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:32:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 863B630451FE
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:31:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C27D93290B4;
	Wed, 11 Mar 2026 13:31:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8383B31F98C
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:31:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773235904; cv=none; b=pwJoBuyqtuZNcMCEAFq3ARXvTx5omnnbw5pKmsuP/oAASYJSfXnsUj9X9Lcpb59778HwTmVbywB3CBS3xQ01TzvmNU5fxQ7HUI/5qm38+ScTDMTLKJEcbTJ8wgmAYmFXAD9n7f33L67GJR7r2xRdvnAp7jpnX8HgjhnRVlWPa7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773235904; c=relaxed/simple;
	bh=TEGOliZPIKjcYMq/SlpUhrjTFTqBozUfJkzHQj68wwc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kaYFuSNWzBrB6kELXe4nbsOTT3d4DV4L3pFI79eQw9jzwoZpjO35zjVt58ouZ+rPO5SKFoD+0Gm2qczjLq2bFJjVdcOloVuUiaZOrunxCpyfRpNv05by8i7o8ki31PusPyEj2bOYYQvLxZ4VqC3IuubhKs0Glf4rrKCypmEren4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-56b18b520e3so743769e0c.1
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 06:31:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773235902; x=1773840702;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aFGeq6M+ANIk5ThSAzANkY3DpNoGSDLWjfwUeKz6NR8=;
        b=oJnoYeFYkO9nB6cWZOm+QL1rZZDJskFShhKX3nMFf6u/QNxFTiFO6DA8mETCJqAdCG
         tfBaAA4V+gF65rKsybqX8/0PoiKxkDa4ALqr4BEIZzlhEcxwVxA6OHRwM+1mwkxtOftV
         GCQClkU8gQ7/UQ65FfiuUhzF19zJh00SQ+6DB4SwGs9qsn8Ldl1Ms2FcwX1kZKiF7bvi
         wYncRg46L1Gdw3oq8YhNw8pHTO8+pe2qN5QASSCUcKPrdMJ81S3kdEIduWI/OOU2EoKm
         UKQrK0qHb7I27h/RpxFY+zeEpEaKONPlOW1FE0hPzGBcvwU6656GCOrmxsIPC517LWCG
         yW1Q==
X-Forwarded-Encrypted: i=1; AJvYcCV8tyZEHsRMzUD4U4vsM8uxMvNZYO6Ox8h2LLonXx/spLyiYSFhUlaKZTtb8IfMmAiz8RTq/1lUkvt8@vger.kernel.org
X-Gm-Message-State: AOJu0YwFPBZ7tWIFPBt1yRifrUM2Xh4aCJdyKDHzqcAFZTTxUbjCZnzJ
	xvQrPJyGkyGgyfia6eA1/Dg6Kp9waAay25Z6tWfWvO3cpPB0ZwINvxW/ZT5tJ6CZ
X-Gm-Gg: ATEYQzx3Rttbu/v4OFsPLpdHmvZ1dsBYadKmwWKaZ56O4pKLkupBCyC3Mi6hWHnMiC3
	e2IDsGgugFkqR1jCtCaYjq0Y5y+IFNXAI1BmIpgqdYIvXFbiPs6NZa3YAsRXV42NYuwp+9t7zKB
	TMWz7cUmTyFVOGZQvmvkRa2lQGPBd/1gSp2b3udPrZ8W9Qt5KKtuL28C13SCJIVrMwSeVs1ui+/
	15+VfUpNuFyhQjCJUj+wf9AxZfafhjuHzbDnCbveJZurPj2lOPxio3lf0++par6Lgt+goLmlvir
	BzFHtIOMwow5IaEeSkB+dmJYdFUZOg4Muyu2INO4+G7TJnUNFUb4fgQPotafRuo7CSigN3EXZ4L
	DVpQHqlOr1eXyTBKkwWSuAinRJe+xtuMnN9PoJqe1/yIGqUfyfviljt2O3qUZnvxsd/ca/UEshb
	gxHAVlZM9A4cenWjFJYcC71AVdB1Gb75InMukRyPuo7HJ5Ev3qLVgNodQjG3+fH6CD
X-Received: by 2002:a05:6122:4f8a:b0:563:45d3:9b1d with SMTP id 71dfb90a1353d-56b4717bd40mr973152e0c.9.1773235902484;
        Wed, 11 Mar 2026 06:31:42 -0700 (PDT)
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com. [209.85.221.169])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-94ecfc4dd70sm529737241.2.2026.03.11.06.31.40
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 06:31:40 -0700 (PDT)
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-56b18b520e3so743659e0c.1
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 06:31:40 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVyOh9xOpRt2fvNffpDX9+nAUhit+j0hRZ4xMFnDLgXJCReEVAJ+bk0BabQ6pyvv4QMGbt0JvVIAA2n@vger.kernel.org
X-Received: by 2002:a05:6122:4f8a:b0:563:45d3:9b1d with SMTP id
 71dfb90a1353d-56b4717bd40mr972836e0c.9.1773235900498; Wed, 11 Mar 2026
 06:31:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260303233314.2928711-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20260303233314.2928711-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20260303233314.2928711-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 11 Mar 2026 14:31:29 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVUn35f6a31mFz-6ejiPkrP9kdd4BLk1xrHXeGBxvqS4Q@mail.gmail.com>
X-Gm-Features: AaiRm51uhTkJAfKsu3jlarUIceDa0BcH9ZUwy9miqlqSc85b2a-agV5l4kcTtLI
Message-ID: <CAMuHMdVUn35f6a31mFz-6ejiPkrP9kdd4BLk1xrHXeGBxvqS4Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] arm64: dts: renesas: r9a09g056: Add DMA support
 for RSPI channels
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: EF7B2264961
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,bp.renesas.com,renesas.com];
	TAGGED_FROM(0.00)[bounces-274115-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-m68k.org:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,mail.gmail.com:mid,glider.be:email]
X-Rspamd-Action: no action

On Wed, 4 Mar 2026 at 00:33, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Enable DMA support for RSPI channels.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
> v1->v2:
> - Added all the possible DMA channels

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v7.1.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

