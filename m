Return-Path: <devicetree+bounces-259550-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SAqJLg6Id2m9hgEAu9opvQ
	(envelope-from <devicetree+bounces-259550-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 16:28:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A608A25F
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 16:28:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1756A30027ED
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 15:28:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7867A339709;
	Mon, 26 Jan 2026 15:28:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com [209.85.217.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25112242D6A
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 15:28:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769441292; cv=none; b=mPASiwQ8PrwoolTkQT31A0vDwzaXkvpNvv9LaR6GaCNCMHoxCTimzOx8wjQjE8kLk69zLEjXVa5JZ6ftgvsv80MW8X/wnymSON6YcSbeocXHv71g9354SvOjM/PwEYOsoWXyk0SbZTLo/chZ1UoS8+0p+4IeXOdMXt7vLTz9aDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769441292; c=relaxed/simple;
	bh=nTZYFAn4zz6jIv7uFk83h22IU8Xvf0ATPw3U8GxauAE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Rm6YS93zR50JxTppIzeG9T/mbrv/Grj4g32JfbMFNWxKcif81GfCRNZqaNffvW/MZkhkzSuypY7P2JfuNM3o5hE+iCTr2+oouJ1ITqzSfCm2t1hO6FyE34RRoWH62bjNPBqn2XKIcP3IgPzJxNi6i8s6h2c07rDp+rHPapYmErA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f42.google.com with SMTP id ada2fe7eead31-5f53021703aso1555393137.3
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 07:28:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769441290; x=1770046090;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BqPSDhihrPdf4Khj2S8qKHDF644mb07LvFd5WqEIjGc=;
        b=joz8X0ma34WneBKsJ7p7F5YVKb+2QoqjMoP6/1VLjfEjhiJX2JApCCBrNANYSk1/Yf
         FDkP3zJyzCTkgNIkgvxGExKTpTKQF2WlAH2MYU1NdHGVVdncF1Nbmfdl0P9V5mdKxium
         Mq6ieX1YrMJ/jzhMsncVc4wAqf/Nq2QFOt85twmvVP4qz43cELDdZI+ER9+qGfANuEHO
         c25HsSC4WM+j3O96UZdoCrwRkFWSxib4ANvuA4Wbo/MU/RkWOVVROfWqNhkcO5Dqm7UZ
         W352nEe+On0ZskgeY2c4+1ZnAXTbx/vYnMep3ldhNuHJ+q+GxoYHUdvqKPTwoM6JWiO6
         gu6A==
X-Forwarded-Encrypted: i=1; AJvYcCVipTux7Emxl59ThptUX3dmqZm9OMcE3GncH5su+0S3P0d7ft6beiZpuTpuPg8kXhQWIFcdR9HvUyUF@vger.kernel.org
X-Gm-Message-State: AOJu0YwaMH74fueB3BbmfECwtpD4gbNQkZvKSbAb5HTIoGkMirzWu83p
	NVDlOZLpomzOO9egecRU4ArIl88ONPUTEzG9JIAmwcWADXOywKevBjqzhm5k6STf
X-Gm-Gg: AZuq6aLMF8Y4yo0YptRjpKqXaeNYwllH2HQvmdFND2G7QiLs/CQA1itQpdKAnx4uiV7
	vD3I7Q0jMRcUGLClMpRb99Z6NVhCPr50gtuIiVZXG5GRMgQOWFmTPIYIf0Lux3745qG78/8gN9C
	PWKKkC7AhxKpvwk9nbLAZBTrT74xZA6zXYtRYDLM485+e7eYwW6rUSCQBckn1Ywc8NTzmhy6STo
	vAlpEbV3MjZPINPXUIVY/ndcCxL0vT9tpps5Ep75OPDKFIIkvmhZjDIRWXb9sYpdq3MVwkdas4P
	EReoy390Z2N7BfryltISeU+IKrSwrxLWZaTBC6MFOkRPfWVsWdVy0lZiE93ZB3buIuQeDOsA/jP
	RsWjoCeO1zJMGN5YvB5USH0muQrlg6G9SuvWmb6i/DUb8ACv51eBsUb0YmvlINltx8fZMHSaC52
	hn48XkC3SzO8+AM44jR2Hm2vFe8cwnVZ3EJdP+/v8xLRa5KfD9
X-Received: by 2002:a05:6102:160e:b0:5ef:aeff:8304 with SMTP id ada2fe7eead31-5f5764f5c7fmr1257341137.33.1769441290013;
        Mon, 26 Jan 2026 07:28:10 -0800 (PST)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com. [209.85.217.48])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5f54d40ff80sm1927224137.6.2026.01.26.07.28.09
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jan 2026 07:28:09 -0800 (PST)
Received: by mail-vs1-f48.google.com with SMTP id ada2fe7eead31-5f58586fb6fso261474137.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 07:28:09 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWTSvRqzZl6eqBifmbgyTsXxryDyl1C3lmimT4oN2+/NpAKYmxdZYt1pWSZ1YaCClzDPEtFFVNwJk49@vger.kernel.org
X-Received: by 2002:a05:6102:e11:b0:5d5:f544:a88e with SMTP id
 ada2fe7eead31-5f5764f908amr1370657137.35.1769441289411; Mon, 26 Jan 2026
 07:28:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260125192706.27099-1-ovidiu.panait.rb@renesas.com> <20260125192706.27099-2-ovidiu.panait.rb@renesas.com>
In-Reply-To: <20260125192706.27099-2-ovidiu.panait.rb@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 26 Jan 2026 16:27:58 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWZKUjptQCqe_DK3C_g5d9Zhp3r3j6+dAfE1g==NH+ofw@mail.gmail.com>
X-Gm-Features: AZwV_QiV_Vg-viwqsMsGeXuhl8oqSRausfwmVq5_XCglJk6EVp0gGv8dhCY1AvE
Message-ID: <CAMuHMdWZKUjptQCqe_DK3C_g5d9Zhp3r3j6+dAfE1g==NH+ofw@mail.gmail.com>
Subject: Re: [PATCH 1/5] clk: renesas: r9a09g056: Fix ordering of module
 clocks array
To: Ovidiu Panait <ovidiu.panait.rb@renesas.com>
Cc: claudiu.beznea.uj@bp.renesas.com, alexandre.belloni@bootlin.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	magnus.damm@gmail.com, mturquette@baylibre.com, sboyd@kernel.org, 
	prabhakar.mahadev-lad.rj@bp.renesas.com, linux-rtc@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,bootlin.com,kernel.org,gmail.com,baylibre.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-259550-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,renesas.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linux-m68k.org:email]
X-Rspamd-Queue-Id: 21A608A25F
X-Rspamd-Action: no action

On Sun, 25 Jan 2026 at 20:27, Ovidiu Panait
<ovidiu.panait.rb@renesas.com> wrote:
> The r9a09g056_mod_clks array is sorted by CPG_CLKON register number and
> bit position. Move the RSPI 0/1/2 module clock entries to their correct
> position to restore the array sort order.
>
> Fixes: 1f76689d1715 ("clk: renesas: r9a09g056: Add entries for RSCIs")
> Signed-off-by: Ovidiu Panait <ovidiu.panait.rb@renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-clk for v6.21.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

