Return-Path: <devicetree+bounces-304152-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wAaxGSNbGWoLvwgAu9opvQ
	(envelope-from <devicetree+bounces-304152-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 11:23:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A955FFDFF
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 11:23:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AEC0B300980E
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 09:19:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 266ED351C13;
	Fri, 29 May 2026 09:19:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4966318BB5
	for <devicetree@vger.kernel.org>; Fri, 29 May 2026 09:19:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780046344; cv=none; b=GszjcW3QppU7sbJinX2Fh3UTIjT7GHfYKTKen8+4Bi77nEI3DXAWy7MMBIsjZA3xr6Bshc9xoK4hjH3Y3i7vO2yJdQgvxDgzdDaSXgBPY6fxGkOkax2b5SXLW1DKHFL/7kIe82kz6AT1G7Vk+csS5OC4hFYlAnewVML2xbi1wd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780046344; c=relaxed/simple;
	bh=h4zmErE+CSnSgXIlJw1Gwg48kFhxOuG8/K65OBG+DVw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=V1xiRJ9sWXq17Oo5MxE47NIbQSt+wjElP3J8E3CptawREIaOxyeY87d742E3t5RlUdNhWXI5dI/jkdx8v7LGvpJT7Li5AN7pz5lTrQ70b/1Hajvmp+GKJlTmYnj1FPGZey5UDTKim9cRK3YXSWaBxt/z+1z4AMa3jHBPHfPuC1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-5751770a178so4539583e0c.3
        for <devicetree@vger.kernel.org>; Fri, 29 May 2026 02:19:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780046342; x=1780651142;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ivARYXKiQKYoLDhrjcDm7S4LdFtEGi24pNmw3jsVVFE=;
        b=m0bRfLqO+jLuViQN8DtLadDwGei67PiEq24ZRzgCuDWmKn7Djxx1nsKKHlwLoFNWbb
         dwio9tALgrKxityPS39eEGzipISWMfbWOjy4FoqzXVOuGnC8nSDxjIxkpuQ2l/M9CHi3
         HPF6SDjRCqg6C2JWhZuEkjPwpOel/WFGE+b2cH5mg8zrpeRhWxWarj1JCuX9Q4Gncv2K
         d1XyVKPq4uZ4M/eBJBK+nO37+PJFMJL1nA4lVAotL/kiyCp8hFIAgkm6X9GuAQVkEpCE
         HOXl84Ae6bqeR0M4dNaBXzaH3X3nCexweI5i8Z5xZeQEHCPMIcqLab5tHmT/1DwnmLcY
         7kQQ==
X-Forwarded-Encrypted: i=1; AFNElJ+vzNbwd4e3eDMtnpAVWFluqP3hgEoBxrwraouPNewEGjCAoYaTL4cvZepk7EA74m8y9Hlzh/H4S03j@vger.kernel.org
X-Gm-Message-State: AOJu0Yxr6IyIWzaTICesTGw8oadldk9YCqxAUmfq6CildO8sELHhlUsF
	GnnRh1sifr3sKhAoKiT8ULyi/8DfpT1QJb+z+bsSxrSOizKIN80Oddo8cZTYyJENKm0=
X-Gm-Gg: Acq92OFhK6+PcuUZUqbFWw3JRsB+vXvg57coprAF9ecaTSeWX2DYUVMPiKKStWPHOG5
	rbJu6Xs3BUYvnd/j5OOnu6C1on9+b0Rqn6wNFH978kLHf91ColDo5Ai7U1n2sZedMQTvCHHBpjC
	72PsQAXYv4G4mrnT+6tXXk0REnZSem7P/xa114pLgDQbkYgloNb2EAz5bkHQ5OGub5nOWnX4dxe
	s9DBQy9M0wApcnLqVtwLYp2jSb85BooLnGHP+BkG8X6y+36LI9E+I2h8OpGBLHHkxmkJRGlZGxX
	KP4TPKgEFPflbM00J5CbOjrz9nj1Js9g+tFtzKsSwLkCZ/P6e/od1bFrCfrDDhmHJF8J517IGJ6
	+oqq6AiTUtL4rYnfsyNVHhZl8/XbPaHG2eccXkdYWCLa70QBggKGlTq3I05cmzRkm8UxxKuBert
	9TSnPs0gOsMwNNYTWpOyNaEhTxgqO/u+zXt8+EJ4HpcReLh2SmFhW4OYOlOPo102xUAqBZauY=
X-Received: by 2002:a05:6122:62a8:b0:56f:61d8:86d7 with SMTP id 71dfb90a1353d-599f6006993mr503515e0c.7.1780046341885;
        Fri, 29 May 2026 02:19:01 -0700 (PDT)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com. [209.85.217.48])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-599d9270c68sm942257e0c.12.2026.05.29.02.19.01
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 May 2026 02:19:01 -0700 (PDT)
Received: by mail-vs1-f48.google.com with SMTP id ada2fe7eead31-6c1f4439688so59622137.2
        for <devicetree@vger.kernel.org>; Fri, 29 May 2026 02:19:01 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ8QHxdrSMsDUpHgCaYn1oNoUxs9ucrb0XKrFgPTY746G0McxpVa0r1DvDGa5AmtARqtmn045dNbzWQH@vger.kernel.org
X-Received: by 2002:a05:6102:dc6:b0:631:b834:e05f with SMTP id
 ada2fe7eead31-6bf2a1f2866mr695136137.11.1780046340869; Fri, 29 May 2026
 02:19:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260528074615.91110-1-biju.das.jz@bp.renesas.com> <20260528074615.91110-2-biju.das.jz@bp.renesas.com>
In-Reply-To: <20260528074615.91110-2-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 29 May 2026 11:18:48 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXh1Bq8a_Axxi8ciu4q5k=WpXQOsXG6SWqQxx52NANFWQ@mail.gmail.com>
X-Gm-Features: AVHnY4JTN8tpDdc2xq2LkyYReTJcWFNGCIxnxyc8UHo-zzImDplDCBbeYGr6oKU
Message-ID: <CAMuHMdXh1Bq8a_Axxi8ciu4q5k=WpXQOsXG6SWqQxx52NANFWQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] arm64: dts: renesas: rzg3l-smarc-som: Enable versa
 clock generator
To: Biju <biju.das.au@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Biju Das <biju.das.jz@bp.renesas.com>, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,bp.renesas.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-304152-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.981];
	RCPT_COUNT_SEVEN(0.00)[10];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,renesas.com:email,linux-m68k.org:email,mail.gmail.com:mid,glider.be:email]
X-Rspamd-Queue-Id: 70A955FFDFF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 28 May 2026 at 09:46, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> The RZ/G3L SMARC SoM has versa 5P35023B clock generator to generate the
> below clocks:
>   ref: Not connected
>   se1: AUDIO_MCK (11.2896 or 12.2880 MHz)
>   se2: RZ_AUDIO_CLK_B (11.2896 MHz)
>   se3: RZ_AUDIO_CLK_C (12.2880 MHz)
>   diff{1,1B}: ET{0,1}_PHY_CLK (25 MHz)
>   diff2{2,2B}: Not connected
>
> Enable versa 5P35023B clock generator on the RZ/G3L SoM DTSI.
>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> ---
> v1->v2:
>  * Updated commit description with clocks arranged in clock output index
>    order.
>  * Dropped assigning clock rates of the unused outputs (ref and diff2).

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v7.2.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

