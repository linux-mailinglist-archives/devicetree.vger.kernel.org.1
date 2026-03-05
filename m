Return-Path: <devicetree+bounces-271602-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aNtSN/yaqWm7AgEAu9opvQ
	(envelope-from <devicetree+bounces-271602-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 16:02:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA5C21415F
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 16:02:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 448003103BB5
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 14:57:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B7863B4EB8;
	Thu,  5 Mar 2026 14:57:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com [209.85.221.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC7812EBB86
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 14:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772722654; cv=none; b=LkQeVzEx16sP4/Upc0bVZF0l2mxGt+aXALAcFFRRa32wQoEs0P7tc0pMfFjF7O+t+gI6enc/Rzahqn1qNFouQuc6H77QCU1/l64zKZGlsr/6YmDnQ0BUek/vl/ovoD6H5zGaKmb0gjmiIMq8hW72BMu7RzSGrOSYo1mZbIlBtDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772722654; c=relaxed/simple;
	bh=Pe/zMDtVeqDupHBRn2OXYvPIzkzrvWK116YkgoB7+zA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=E8UN9ZglpRCLWCbEsWR4Nqpnwi30fyd1HCWuQottl78QWJgqJwxxDPmE0jpT6eUe7dX3Ckuw05iBxGGBgB0qoJKNPwP9EBVn7cgNQVjkbJPJzd5Q6jIDtmaZfoAtHe96eLJlNiXwe16vrOyCaGNuQhYMuzCY7bnIuNG2i7Iau4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-5637886c92aso4410425e0c.0
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 06:57:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772722653; x=1773327453;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3dcuFR60hveY60fAZyf/s5PIgNTW95vthRXdXlHvp0c=;
        b=jUrZNhguJ9P0Nw8WYsO89HF6mreXg3QKXNwNsRvP5tXbuGdBshmpElNAjNwQq7CD2j
         Krxk4TA0pApGiLTABE+SdrAg86Fg/xcN0XZtzL0QtsE5dK9XokUqdfQ+IrKWgjMGe1Za
         xoitpFgfaafrnWewjAe7delF8Z8RpK/XFyxz/HlWr4nl9oEDEmihQ3xv6Hr/xW7nR76B
         uZW7QEYI9CHbVvam415ZaxGqd6HuV4bfXUQgQp5PizTTggu2eEkatHsFd2mr0nWMmbYa
         Ockv2+CPO8qTPytU3h99qJAPu+Yat1F4B6rnelxQob6L4BcVW6mfptlGXZQmCSY+ZROn
         V4rA==
X-Forwarded-Encrypted: i=1; AJvYcCWuUTkUCICnLvf3D7PrnHeEj7+7bqUvhTduHyCIkhrYU9wU9/7yLsnAf9Rn/O3m/3Ju+BptNQLGqQA0@vger.kernel.org
X-Gm-Message-State: AOJu0YyqPj2gZSUvc5jV+NUqFua/agMpyLQI1y8gxfj9TZWGVEEsvIZh
	jORtKO0BomaWNL6wpzyyS1ObMiv4ORXQhfgVKgXan4eDHMxy9gbgtawS/FdYkkQccGc=
X-Gm-Gg: ATEYQzwk022opIJkpcfBkYgs5gK2RAabQTB+zMQGRmAYoVOc+oHM2hENZBUR8Dq0cA2
	D/qBOZ1dABAnNTzmr0uwN+4GizNWiiAfO+JjbfgP3M1Sx5UWlhfq2UibhiW2iWhMZKldh6UKrQy
	wAH20MMkVtAcsZThbOv1FQez0H7z/Fsi4h/yHfyh11kpBqsw9XL8CXQZr7MDrS56JGtA+soJgfx
	CKj5rSQqxmKobhLpsCsUPq0WZQofzbo9ZtS95uJ0CkpjQkgvjyfylkE1DoqChlZ1RXQd1jxjhaJ
	2iY6jhhvFjokVFnUD5E1DjgZEJGBtK53BeSMjfhQho2NXDPFNKlsbEpZ0gQfX3p0hsnZfKu9UR0
	GcoEyOeWAaFpXmRPGe8wd33jhp8sbmcYNdf1ocTs4Un4sg7N2P2bR0m1rEd3bA/O54kkyogjIIN
	Qn7doZpqFTD3vAa56oGrbqY/+wliWDxK1/aZJuRQsJQgHgW3dPTOETX+qwF4h+
X-Received: by 2002:a05:6122:d12:b0:563:746c:a32b with SMTP id 71dfb90a1353d-56ae77cd258mr2580739e0c.15.1772722652625;
        Thu, 05 Mar 2026 06:57:32 -0800 (PST)
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com. [209.85.222.54])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56a9229a4d4sm26982297e0c.19.2026.03.05.06.57.32
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 06:57:32 -0800 (PST)
Received: by mail-ua1-f54.google.com with SMTP id a1e0cc1a2514c-94dddb3c3f0so2145938241.2
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 06:57:32 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVi4CzFiIMbT717VUStxHJZDVIFMzUOKmfZec02nI757MNVSrrh/snhhrQrtoZ/Up9+GfpcX13EJOoz@vger.kernel.org
X-Received: by 2002:a05:6102:3047:b0:5f5:459f:9860 with SMTP id
 ada2fe7eead31-5ffaafc5884mr3178458137.28.1772722651999; Thu, 05 Mar 2026
 06:57:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260203103031.247435-1-biju.das.jz@bp.renesas.com>
 <20260203103031.247435-8-biju.das.jz@bp.renesas.com> <CAMuHMdW20h=D9Tk5T=6rxNanEiON1ZL35CJ6cqzrX12UeDcdPg@mail.gmail.com>
In-Reply-To: <CAMuHMdW20h=D9Tk5T=6rxNanEiON1ZL35CJ6cqzrX12UeDcdPg@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 5 Mar 2026 15:57:20 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVsv-T-Vjd4yNK2k_pP_YQfw82UvFvYf9ynxMaQJQYxQQ@mail.gmail.com>
X-Gm-Features: AaiRm50jZ7a-mlXjMP6hSbGsppnnjJS_CDX5Y2PRok5fzeGTQCHReypSkXL-uwc
Message-ID: <CAMuHMdVsv-T-Vjd4yNK2k_pP_YQfw82UvFvYf9ynxMaQJQYxQQ@mail.gmail.com>
Subject: Re: [PATCH v3 07/10] arm64: dts: renesas: Add initial DTSI for RZ/G3L SoC
To: Biju <biju.das.au@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Biju Das <biju.das.jz@bp.renesas.com>, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: 8AA5C21415F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,bp.renesas.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	TAGGED_FROM(0.00)[bounces-271602-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.612];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

Hi Biju,

On Thu, 5 Mar 2026 at 15:54, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> On Tue, 3 Feb 2026 at 11:30, Biju <biju.das.au@gmail.com> wrote:
> > From: Biju Das <biju.das.jz@bp.renesas.com>
> >
> > Add the initial DTSI for the RZ/G3L SoC.
> > The files in this commit have the following meaning:
> >   - r9a08g046.dtsi:    RZ/G3L family SoC common parts
> >   - r9a08g046l48.dtsi: RZ/G3L R0A08G046L{46,48} SoC specific parts

r9a08g046l48.dtsi does not apply to R0A08G046L46, as it uses the
wrong compatible value?

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

