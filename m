Return-Path: <devicetree+bounces-318678-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FoAmGuwjRWrY7goAu9opvQ
	(envelope-from <devicetree+bounces-318678-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 16:27:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 08AC56EEBBE
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 16:27:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318678-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-318678-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 874C030A3E0B
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 14:08:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8B0B29DB9A;
	Wed,  1 Jul 2026 14:08:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com [209.85.222.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193E02459E1
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 14:08:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782914928; cv=none; b=Mz6TUrWmvPYYQbmX+2BMekqfqDEvoAUIodnKH2OPIYd4xtRfjcC8/2FWvErBWOKUSDGmYsCn3JG2Yw109CNZ4sPczi56wYbLMyBOiVDpDJSbRs+0TxoqYyzALGC7JKONOW/y4USc60JW3AzYM9k2bN0LgQ+B98dJX5DAfoFOoiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782914928; c=relaxed/simple;
	bh=kNtTO1INuRHYWt6yzqLSNxzy+LAJmIkn/k6NL9upXHw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=T6hNaw7Juw+9vWh7axnFgg7Qdz8inPm+pXnOcmvvJ02/8y9AdWwLejuSKqzmNBR6P4bvcvRoGulN53gBelQRGwPIzzRmwCSLzXc84GSWDXZOtzvw2vVOVeSPS67SGkK9Epdrkyi/uXNumM5pQx0QEINu4CoSQMlp1HOsO4cQGPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.49
Received: by mail-ua1-f49.google.com with SMTP id a1e0cc1a2514c-9696369925aso238200241.0
        for <devicetree@vger.kernel.org>; Wed, 01 Jul 2026 07:08:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782914926; x=1783519726;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RFL0tXfq6K363hDxIcn9nBKOJixuNA4hvLi7p3y+LRk=;
        b=W30hMaP0J9pJ6wXKqmaUfGI/DqAUAzrKuFA0qUV3aeTg6l/kgN0NQyuno+A+2597Cl
         PLIyvFB04XLYcp2UzrUdnMoP5Ze5H40nGyN5fOc7DKVwbrAUGioApVNSnUig8oq+Zhyp
         AokmYSPE9ek6nG0SM3eBIxR6GvtN/qqiLt1KzpR2LhMwZ+DErDpAPSNcQ9UC0MFJlq75
         b+IW+ExWxC2AqeQ41n9dw3LG8SZwGhL67F3c//Zwq8SQqcW5q4uwQ52z4LFKuF7p+LAV
         /ewF7NyyTtoRwUkvNukgqUGPp15zRQAv9kBHSnbIltfzcl0f6sCEAJk7wQo51iM/k4iM
         ZeDQ==
X-Forwarded-Encrypted: i=1; AHgh+RoNFiwya4C8djJK3hzfmtegpLlOGfTbufHEkW78XQgAzlIJvMOyPp3pINsANzkKZXCaFm4uwo25D2H+@vger.kernel.org
X-Gm-Message-State: AOJu0YydBGjiBLN7KO2aitOVVCd7ae+Ck0xMP5sG2Sec9zOVEGAevwYE
	ssIC3j9M2IDnU8JXxkwfMtU8lfGI5wPjuyAYmMUhViMRWvLNkR3QZlBSRLUOz+eAHNY=
X-Gm-Gg: AfdE7ckr+k4DiV1ZvFiGAbtBs3FuJqKpHSzKvd0WhenSnDfyzzh6xbwqXFn8uuAOX65
	D1vSEn7x6Dej/WhdOWyv+U23jaMrVxc1rgUTZ04fWMWFLu0FLNINIjDBkPiZ3/hVSteMyxaTUwm
	R0KubGiRX/Zp3DLyynRQ4tukB2h6gLU88wvMcx1vdU35rBI3d3btCHfipPNQPiZg9jqYz0NUgry
	runpqNx+BlwC0Q5Q9IvzuNqfrSY3heJIIKXyVzA5E2/9/32qkiK9Y05Vo4JPbj1kN0LI9Blgyv4
	STgHogAHCre4RqZZXWKhemVup58Nkz2Qpm9yMNV+Cxa2DsDH5ZDe4NuEO12xLv0Y3s7fxdHPa/w
	mcLXmNTFQjsdx9Ui1g8K4yY1mX87bo2DnSz29ZqJ85rd/kCBPV7nc2r3aduAtSEWxgieqMHTxrw
	beABEPyAdytgUbPER4hrsVV5WGCY0zqWenLqA7cFjo4PcUaJVp9dVSOykqqHEr
X-Received: by 2002:a05:6102:3047:b0:728:53be:7c87 with SMTP id ada2fe7eead31-73da96bd48cmr695764137.7.1782914925866;
        Wed, 01 Jul 2026 07:08:45 -0700 (PDT)
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com. [209.85.217.53])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-96966904ec6sm2252802241.13.2026.07.01.07.08.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jul 2026 07:08:45 -0700 (PDT)
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-7389cff36bdso175657137.1
        for <devicetree@vger.kernel.org>; Wed, 01 Jul 2026 07:08:45 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RqVLRmodL645P9Rx2M4o/T95GltAg5bXa/udLKvKpuVUlF5hXlLnvng3Tr97Bq8JWR+vK0wprd2bOov@vger.kernel.org
X-Received: by 2002:a05:6102:3581:b0:738:befe:8f7e with SMTP id
 ada2fe7eead31-73da98ca868mr783407137.11.1782914925090; Wed, 01 Jul 2026
 07:08:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260602204707.1920839-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20260602204707.1920839-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20260602204707.1920839-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 1 Jul 2026 16:08:33 +0200
X-Gmail-Original-Message-ID: <CAMuHMdX9S18T8fou_pGGYFGPbMSLohfJp=QS-LTHA0rFbL6zpQ@mail.gmail.com>
X-Gm-Features: AVVi8CdfZF1yWLhCxDdc26YNvQVH2ivJvmcjIMBdE0JNnn5HxaUZcvezjp7UyKc
Message-ID: <CAMuHMdX9S18T8fou_pGGYFGPbMSLohfJp=QS-LTHA0rFbL6zpQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: renesas: r9a09g057: Add PCIe nodes
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,bp.renesas.com,renesas.com];
	TAGGED_FROM(0.00)[bounces-318678-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_RECIPIENTS(0.00)[m:prabhakar.csengg@gmail.com,m:magnus.damm@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-renesas-soc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:biju.das.jz@bp.renesas.com,m:fabrizio.castro.jz@renesas.com,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:prabhakarcsengg@gmail.com,m:magnusdamm@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-m68k.org:from_mime,linux-m68k.org:email,renesas.com:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mail.gmail.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 08AC56EEBBE

Hi Prabhakar,

On Tue, 2 Jun 2026 at 22:47, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add PCIe nodes to Renesas RZ/V2H(P) ("R9A09G057") SoC DTSI.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Thanks for your patch!

> --- a/arch/arm64/boot/dts/renesas/r9a09g057.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r9a09g057.dtsi
> @@ -1025,6 +1025,146 @@ rsci9: serial@12803000 {
>                         status = "disabled";
>                 };
>
> +               pcie0: pcie@13400000 {
> +                       compatible = "renesas,r9a09g057-pcie";
> +                       reg = <0 0x13400000 0 0x10000>;
> +                       ranges = <0x02000000 0 0x30000000 0 0x30000000 0 0x8000000>,

(kast cell) 0x08000000, for better alignment with the next line?

> +                                <0x43000000 4 0x40000000 4 0x40000000 6 0x00000000>;
> +                       dma-ranges = <0x42000000 0 0x40000000 0 0x40000000 4 0x00000000>;

Sashiko wonders if the first cell should be 0x43000000, as the window
is 16 GiB large, i.e. larger than 4 GiB.  I don't know...
If Sashiko is right:
  - RZ/G3E is also wrong.
  - Should there be a second line for the 32-bit window, covering all
    low 4 GiB RAM?

> +               pcie1: pcie@13410000 {
> +                       compatible = "renesas,r9a09g057-pcie";
> +                       reg = <0 0x13410000 0 0x10000>;
> +                       ranges = <0x02000000 0 0x38000000 0 0x38000000 0 0x8000000>,

0x0 and 0x080000000, for better alignment with the next line?

> +                                <0x43000000 0xa 0x40000000 0xa 0x40000000 5 0xc0000000>;
> +                       dma-ranges = <0x42000000 0 0x40000000 0 0x40000000 4 0x00000000>;

Same as above.

The rest LGTM.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

