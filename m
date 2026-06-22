Return-Path: <devicetree+bounces-314444-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id caOwI/04OWpKowcAu9opvQ
	(envelope-from <devicetree+bounces-314444-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 15:30:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E1E6AFDC7
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 15:30:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314444-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-314444-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8197C303D738
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 13:30:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A3E23B14B1;
	Mon, 22 Jun 2026 13:30:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3AA33AFAF9
	for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 13:30:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782135009; cv=none; b=p6F6B/HobzyDMFgMm6Z25valjC/KjDMC1E/udLQWrKJ7kwu48ReAXbYjcUqJs2wAiI5KcUxR+OFAlHAZcVqYlS2nGdymmFjKB226RHvSJFTUmuQOSBgQtMPM8HUAJb5g1MiSwWPYyfycS47YORgEoWdmTMHU32mzy157bBVsC3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782135009; c=relaxed/simple;
	bh=RB/U9/SqXO4toFyXQ7ljED/ZYf6SNtmo00cb3STVjcg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mR73g2H8/SZUSznVOQO+kzi666dTU1ouGyZFY6WbRJGXi1KQrxQ8BX3kCWQitrQAKHul5S4ITW5vYuIXrsL1oAgKdhd2ON3Kl1MrjrPNZoODwIfZ7blW+GMeaHGUtonsYesyDSb5OpQ+BTzRe+WMbBoT4FOqdBUUD2dbbY0+Cuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.208.45
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-68852b58d87so7492182a12.3
        for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 06:30:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782135006; x=1782739806;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bLj3JU4PUcmcPvY1doGuWfaGgGmqLxqiegHMVeBGupc=;
        b=aDV7PviagxxsAAUHOiG8wRPp/BZIM1hLloT3fq1orJw8Bq6sSOlJSP50Tb8FzyE4to
         /tx15wtjmkgl9rKsjQR5ZlMQDgPktru6U3UFLrLjyxkLFQGddbS/PjH4j7/zGlWtGH8n
         S9HsehaddqnQRgpF8ExsoNlf5A9Ik90/ymZCSp5qrpJYBuDcQ2xDkjQ0VkiY2OcZMtty
         eqhpq8LoTu0h9YFZcHBfOhl2yZmdu8Cd1TE6rUtlUz11z/uw13ZCjZR5+SiuZYvrSeER
         AvoLzLHAijwnzibZDcPGpRA0RDYAFj1giRh9qz1lfLCymS2LCghkXtg+1En6ATXu2Cpu
         hvng==
X-Forwarded-Encrypted: i=1; AFNElJ8NiUUImRsri47P6UptvlOMEjmVMhsg4jT8hvHRmSsjfMsQKqvPHbqbmPnD7frA90E3PAxmMei51F1q@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4VcKYmkMo/JPtdK7Mig52TkTr1G4WEivYHo0e3MDHi8t59HmI
	Ff3fjhsMReULCapiw6nwPvdP2PVbHP3m6vYuSa8nqK/7C1OQeNaJOE6hz3EOKT9M7aI=
X-Gm-Gg: AfdE7cmlW6I3ZguG+W2RCqRcth5YbiZMqo0Uo2vflu539jLbrVv3TWh1B+HHsNCBbMt
	XFMF4k3+lr/wqzrcwsTE3/o5jm8No1wEdYkaT6WUCFEUzAlB4SZKn7y5AyXmXCBfPFHhDViJi5w
	uVGQAvTspap3v1viTZF2jFOEggo8j6R97BbGVt63f4eNjXOs8TrWju0Coynn8QrW2MlnvpS5v2W
	eZ7dSAQugq5wRMeJPIFV/yAtpv/ubFndgHSPMpOGXJzUanItEPlC23WuUiCF8U+92rjjX+safxN
	0d0CfTcKH3Pv2/5sJGdD4MFvOCGHt5+bu1EsvXMe7yQJpNaymh3hQaRDXx+307bFOqGbP+eQnZX
	ODx9HJJm0yxVjhqn9Q7mdALYIDkirZaMDEVxTNxqkYuZ5p6Vw+KagVNYRk/KxF0iwdaIbSOQdMI
	oSViczEMBAhWBWmPvxEtl6WeWMwVKdZjj0kbJA8iFjQtBHDqnt8g==
X-Received: by 2002:a17:907:e8c:b0:c03:edb3:43d7 with SMTP id a640c23a62f3a-c098dcdc528mr748023866b.47.1782135005779;
        Mon, 22 Jun 2026 06:30:05 -0700 (PDT)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com. [209.85.218.54])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c0c5e4a14d4sm363755366b.7.2026.06.22.06.30.03
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2026 06:30:03 -0700 (PDT)
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-c0be5e548a4so355781066b.3
        for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 06:30:03 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ+I8iMw1Wu3ssRyV1dWx8k5qg/aMsUB1rPpbdWMRmZrL3qDQwXZPjC8ZnLU+uvGKqwGAKoftGH0GKNi@vger.kernel.org
X-Received: by 2002:a17:907:9d17:b0:c0d:2bb6:26cb with SMTP id
 a640c23a62f3a-c0d2bb629cemr396196266b.15.1782135002916; Mon, 22 Jun 2026
 06:30:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260619083951.3777556-1-john.madieu.xa@bp.renesas.com>
 <20260619083951.3777556-2-john.madieu.xa@bp.renesas.com> <CAMuHMdVVm8CjeBthANW7BCJ2+4jByCfVamwe-NGPb1YzZQy_bg@mail.gmail.com>
In-Reply-To: <CAMuHMdVVm8CjeBthANW7BCJ2+4jByCfVamwe-NGPb1YzZQy_bg@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 22 Jun 2026 15:29:49 +0200
X-Gmail-Original-Message-ID: <CAMuHMdW_4nHapRC6Pno5EErpfWUkx=qq9pttqmwcePF+SRNAhw@mail.gmail.com>
X-Gm-Features: AVVi8Cfx65bGnizwOElRTBPHTkl7a9_9NO5GiORsLyjcgM_By7PVjIynR8HUnPg
Message-ID: <CAMuHMdW_4nHapRC6Pno5EErpfWUkx=qq9pttqmwcePF+SRNAhw@mail.gmail.com>
Subject: Re: [PATCH v6 1/4] arm64: dts: renesas: r9a09g047: Add RZ/G3E Sound support
To: John Madieu <john.madieu.xa@bp.renesas.com>
Cc: magnus.damm@gmail.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	john.madieu@gmail.com, biju.das.jz@bp.renesas.com
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-314444-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,bp.renesas.com];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_RECIPIENTS(0.00)[m:john.madieu.xa@bp.renesas.com,m:magnus.damm@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-renesas-soc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:john.madieu@gmail.com,m:biju.das.jz@bp.renesas.com,m:magnusdamm@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:johnmadieu@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-m68k.org:from_mime,linux-m68k.org:email,vger.kernel.org:from_smtp,renesas.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,glider.be:email,mail.gmail.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D8E1E6AFDC7

On Mon, 22 Jun 2026 at 12:19, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> On Fri, 19 Jun 2026 at 10:40, John Madieu <john.madieu.xa@bp.renesas.com> wrote:
> > Add the snd_rzg3e node for the RZ/G3E SoC with all sub-components:
> >
> > - SSI (Serial Sound Interface) units 0-9
> > - SSIU (Serial Sound Interface Unit) units 0-27
> > - SRC (Sample Rate Converter) units 0-9
> > - CTU (Channel Transfer Unit) units 0-7
> > - DVC (Digital Volume Control) units 0-1
> > - MIX (Mixer) units 0-1
> >
> > Sub-node names follow the new RZ/G3E sound binding: unprefixed
> > 'ssi', 'ssiu', 'src', 'dvc', 'mix', 'ctu' wrapper nodes instead of
> > the legacy 'rcar_sound,xxx' R-Car prefix.
> >
> > Wire up all 5 DMA controllers (dmac0-dmac4) for each audio sub-node
> > with repeated channel names, so that the DMA core can pick the first
> > available controller.
> >
> > Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>
> > ---
> >
> > Chqnges:
> >
> > v6: No changes.
>
> So same stylistic issues as v5.
> No need to resend just for this (every resend consumes review time on
> my side), I may fix it while applying.

The rest LGTM, so
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v7.3 with the style issues fixed.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

