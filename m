Return-Path: <devicetree+bounces-276251-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yBMrErAbuGlYZAEAu9opvQ
	(envelope-from <devicetree+bounces-276251-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 16:03:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id CE66029BEF1
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 16:03:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 24202302B1A8
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 15:02:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E200A316199;
	Mon, 16 Mar 2026 15:02:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300A231B810
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 15:02:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773673361; cv=none; b=jUYib4Mxv2/VijRRqQX0nf2hwZMUMJavtQB2O2v/C8h3qdmTxxrjwICki2z6LFHKN2GrfObhQnUTiKml3U6Oni4PZJQN2LHVhVGeYMTDC+B8/n0rDZnIrDQtJFyobxhQasLZO+v2zbaCpMdsbkuogSKpCIfbLmJqyqbSJcUcXwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773673361; c=relaxed/simple;
	bh=zh7EYZGNDPnMnM88yRMZeCpFjFUClPEhquZR+Kx39I4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dgBQaGtEtCbDnVriQoaA7gxwXkW8K/fOtoGGM2wr5zt+6/LbP/j/yR1yGTo9FM0m3tIOE3zcBeHvod4BFwRP13RmJw1gu1OyB9BQkeX7JF8FXgmbcCtdE8/NNyUrIBZr+lEczmgmUn4YfYDvGiwmswOla9v05NTvkgv0slG07Ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-56b8804f37cso400947e0c.3
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 08:02:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773673358; x=1774278158;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cRRMaU4Pumxni9lHAShpOdBtq5a3B8lIGVSSSz8RExM=;
        b=V7ujDcxFuH1bJQKVIzwFDPXvgCCCTOmvksy8WrGTc2PNWi+amYnK08jceb7vtaRvRX
         izkUBFt/HLpe7uSt5CRFJUWMr+xT88+7AirT2wm/SLAj1kBA8TN+ePF50eiwtFaDfQiV
         ltPSe2TaIVocySCDocGJ9vflGndJ8WQH89TaugQM04o1T7V5+fL508Vf6zFxQnT4rANY
         G/GZyY4rHHLQMWgJ/0f9yOv0un7PfyG4v7eHD7VRpQjYXTGRC28e1ZB+SgnDbpMCImyg
         Jxx8s7WS+NPZEXDJxdlFMY/G+nRxIDBBqWCiFT9ZUdZfmbcuU3sX2SrLfGxuwkBCCYUd
         HgDw==
X-Forwarded-Encrypted: i=1; AJvYcCUZmTUwkmFwgSLpJK14EftDzoxKQUVXnoEGX+Yt+k6rZNCIrsMSxv4uRIimt5IoQa9OSytTOJAKcdj9@vger.kernel.org
X-Gm-Message-State: AOJu0Yxktfje/OcgqDtH8jZP7xWvulX8uHt5vkdwEgPziWW5P21nib2X
	HBhV3N1k055TKFepdUw9CCa7cIrsmfuP6P8ibCuDBeUNOWgvlIQhMyMhzkaw1+zW
X-Gm-Gg: ATEYQzxOv5d9q8AT+PL/OBvoUiSKl/TSHmtGo//UVXsZpy+8LCV2g07IHW6d5ffuwQe
	Xm9dE4DG0zB9fCkrz3yPeXz6jja5ExIzRAf2ho58w6yVkIu07AXnTgKAW5jWJWuIsedC4BuRykk
	Wt5QO8amAqzgouq7Ao2v/YeQwU2QSsNLI8H8vmuf30CjGj6f3el7y5wwNOWsMQe1ytR4BK9JlED
	QStftxFSp3GwmdqPtv+bSibogNuiLBfXaS7+TABDlYo555SfVx2JOozCIFHCFFecAkuN3h0t41Q
	iPYPsGKlFNXmT8y/4vL06UaWdvji7KO5Wpp2WyGIuMMjb7SX607jdefJC0keosUdg8KbHr2ZVrM
	BiXOPmydjcyyhRl4hkDOz/s0SmsB2XA4rpHq6Hsd2WUJBeNRX8DRld3hN+xb4iz8KFH2GI6M06a
	w3VLe9KSs3S6ENjb1ZJGRCOZ6hSe5LwxkJ+TiFgczyavnl4sLfrJDDYwNveTO9TTpK
X-Received: by 2002:a05:6122:2512:b0:56a:f542:78fb with SMTP id 71dfb90a1353d-56b6288d845mr4393700e0c.7.1773673348502;
        Mon, 16 Mar 2026 08:02:28 -0700 (PDT)
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com. [209.85.221.181])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56b4645d132sm7874475e0c.11.2026.03.16.08.02.24
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 08:02:26 -0700 (PDT)
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-56a8fdaddebso1753192e0c.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 08:02:24 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWyFGpJQ1t05hM/yW65WyXpCXdAs7asQRphaknBHcDYd9BPVmVrrojKLzYpq5FEZDg21a9bBfGmdw6d@vger.kernel.org
X-Received: by 2002:a05:6122:659e:b0:56b:8d2a:8c8f with SMTP id
 71dfb90a1353d-56b8d2a9d66mr1234792e0c.11.1773673343363; Mon, 16 Mar 2026
 08:02:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260310212927.3372410-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20260310212927.3372410-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <abgQpsArW3VrCAns@shikoro> <c3af22f6-d937-4539-8eb7-d7f0b0892ca2@kernel.org>
 <CAMuHMdWdyK6YKSrExmvzG9sPdr-xihJROAeZGLh=xAB6sObVsw@mail.gmail.com> <69524a11-95bb-4dc9-b59c-1b5a9b70ae18@kernel.org>
In-Reply-To: <69524a11-95bb-4dc9-b59c-1b5a9b70ae18@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 16 Mar 2026 16:02:11 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWTZGV72NKsHsYQ3J1EnQSGqUbSMKftOuR-vSQKG-tGBQ@mail.gmail.com>
X-Gm-Features: AaiRm50wxEIXVr4EULzN_3inwJzVzlQq8jvsLfXkufeb4_Iw3XuA9AzNN_MIMsc
Message-ID: <CAMuHMdWTZGV72NKsHsYQ3J1EnQSGqUbSMKftOuR-vSQKG-tGBQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] memory: renesas-rpc-if: Add support for RZ/T2H SoC
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Prabhakar <prabhakar.csengg@gmail.com>, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, Biju Das <biju.das.jz@bp.renesas.com>, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[sang-engineering.com,gmail.com,kernel.org,glider.be,bp.renesas.com,vger.kernel.org,renesas.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-276251-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.969];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid,linux-m68k.org:email]
X-Rspamd-Queue-Id: CE66029BEF1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Krzysztof,

On Mon, 16 Mar 2026 at 15:46, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> On 16/03/2026 15:34, Geert Uytterhoeven wrote:
> > On Mon, 16 Mar 2026 at 15:21, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >> On 16/03/2026 15:16, Wolfram Sang wrote:
> >>>> Add a new compatible string "renesas,r9a09g077-xspi" for RZ/T2H while
> >>>> reusing the existing xspi_info_r9a09g047 OF data. This allows the driver
> >>>> to bind correctly on RZ/T2H while the register differences can be handled
> >>>> in future updates as the affected configuration registers are not currently
> >>>> accessed by the driver.
> >>>
> >>> This sounds fragile to me. Can you add a comment somewhere in the driver
> >>> or headers so people wanting to use these registers will find out that
> >>> the SoCs are not compatible anymore?
> >>
> >> IMO, this patch is not needed. If you need to handle differences in
> >> registers, then you add dedicated OF data.
> >>
> >> The change here (with the bindings) is actually confusing, because
> >> effectively it says two contradictory statements:
> >> 1. Driver patch: devices are different but they are compatible in
> >> meaning of DT,
> >> 2. Bindings: devices are not compatible
> >>
> >> So you need to decide which above, but not both.
> >>
> >> Eventually provide extensive arguments in terms of how DT understands
> >> compatibility.
> >
> > I disagree.  Using the same of_data can does not mean the devices are
> > 100% compatible.  It can also mean that the devices are different, but
>
> I did not say 100% compatible. I said compatible.

Fair enough.

> >   a) The differences are not handled yet, because the extra features of
> >      one variant (or both variants)  are not yet supported by the supported by the driver
> So that's why I mentioned how DT understands compatibility. Above does
> not matter, sorry.
>
> Extra features means subset/superset.

I haven't looked at the differences between the two variants here,
but I doubt one of them is a superset of the other. Probably both are
supersets of a common subvariant that doesn't really exist ;-)

> >   b) The differences are not handled explicitly, but implicitly,
> >      or elsewhere.
> >      E.g. the different number of resets is handled implicitly through
> >      devm_reset_control_array_get_exclusive().
>
> Still not an argument in meaning of DT compatibility. Implementation
> uses the same ABI (through devm_reset_control_array_get_exclusive),
> right? So devices are compatible for Linux kernel.

Linux is not the only user of DT.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

