Return-Path: <devicetree+bounces-323540-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YSLhFtRuT2qCggIAu9opvQ
	(envelope-from <devicetree+bounces-323540-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 11:50:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6D072F212
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 11:50:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323540-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-323540-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 627203010607
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 09:50:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 973BA402429;
	Thu,  9 Jul 2026 09:50:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2E240243B
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 09:49:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783590601; cv=none; b=IhQXZRrkFreo9Lytjfhpo51Gw/ZbGjAAJrTvULFVHn9RXLyxUnOWE2uZhejBXiaQdzgZPxjITsdKU2gz0BFivIUlYyZd1bmlgf1L+cWicYskphmxNtlBloR6ab8E+ytgAqymf66uMqUNJ4PJ7GKAC0nVdiMO5XKJBvZvPg5tkQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783590601; c=relaxed/simple;
	bh=XyB0QJBI/ArxNnxn06+fFpma6hNeLNHAjblX5FcA1C0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Bc7ZkyarQ0pCkSN/4Tfxl4+D36EFYW5bIAOkk+8NbrI7nnWQvDq8Bo16mKGYwmk+1Zg5ICK1/PwPSg/AGUCqPhpCfHyiwoYpFLRGXkGiaFbzRVxyQHDo3VdNBSgpr4JXiWt5t4aea0n67KzDNQysg3ZgczlQIcO6CfbOoqRd+7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.176
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-5bf4fc89821so424316e0c.3
        for <devicetree@vger.kernel.org>; Thu, 09 Jul 2026 02:49:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783590595; x=1784195395;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=JBx1Lwl28bs84XHLARf2PZgvr/qdRO+0Qc3qcd6uTMQ=;
        b=mcWATqRFUYGIzAWHYHEhl1jaqsxCTZmtQ8UY9euKp+t4l89Lj8thl354CaeI5teo+r
         DW/fni3o+gMjPZgtE5seFYCv5Mkp5CMVZdDAKhvXHWeoBKI6OkeiAzSlb/urzkX3d9Le
         hPYS5w7bL0LoOMoLh56flmgLKRi4R7Up7TnAEMn4M/BDcUZWjKbEKepNrWGUugAlQeXJ
         7ZvA10IxVypcoYwiDMOTRraheQPlBWBvI0QkxcZ2OPBlKbQtSXhFcp3w0z8IT56gCSK8
         wy0XVwGdij6FVVjEHnl+/HkcOJfKgMpFz8JlSCFWzS+W6S8fXUGdPOyTCaQeB77TsenR
         3OWA==
X-Forwarded-Encrypted: i=1; AHgh+Ro5csicBQYSltLMFLp9yd6dgqUPBWAxqd8WyoRHCxHsR75RvB3llesS/rpRYjQhLiwc4+EV3Ln6SZuq@vger.kernel.org
X-Gm-Message-State: AOJu0YyNkIZ2KE5mDh9z9TzUE6bWevgfHW4YlFrVnSWOs41GYF3xUNHe
	RRZPSAP1n4FOluq+iVvnSErzM58ljBhW4qdFWIBN6FPBKRiPC8ItQMlaHrtEcKvT1E4=
X-Gm-Gg: AfdE7cmUE8VItvoS2/y5iDHDL3Rl6buIx9YbznEghX5JsHC5/QbzbCUGlUpV+KyiHbD
	cbXqDQjYWJkciayd+Hm8pQF+gmIj2mcConnHNXzaTHOhd6Ex+4vgJyo4NKy56lG7JUeFRBmVhRg
	3fNwM18YhxRSjSo7rlsTSdQjikQoNLdOmp3zOtrOd+Jm4sb7fb4OcRKR4gHO4jb3TtQbpcHuu+e
	aL7UfgMU7Wc+aqSRwn4XAyME1dalSQ/kFsSd/EZHZ2w4s17KrU5CjN1e/1Bu+TTduziYaANRnqO
	/cPhTtFKzO67J6JtcgQYi5rF+PNBO0YJdrXU8iRmKrOlj/9xTMEJIka2I14zj+iJ+460hmQa8OE
	qtdo2rFclEBQ/hO3yCu8baGi4LbIoWSaWXcwx4l1gAsuElbNxjGD9uFdN0K2dZH/iGfwyE+G//t
	d0gm+LUwu2DnrQlM7BUmDgI5PTZORKqCDrbqdL3KnsepAORgp/Fg==
X-Received: by 2002:a05:6122:8283:b0:5a4:ac74:f5ba with SMTP id 71dfb90a1353d-5bf75e9e0c1mr3478177e0c.11.1783590595087;
        Thu, 09 Jul 2026 02:49:55 -0700 (PDT)
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com. [209.85.222.49])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5bf6f66c4a5sm3154340e0c.5.2026.07.09.02.49.52
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jul 2026 02:49:54 -0700 (PDT)
Received: by mail-ua1-f49.google.com with SMTP id a1e0cc1a2514c-9673385b1efso686648241.2
        for <devicetree@vger.kernel.org>; Thu, 09 Jul 2026 02:49:52 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RoaGwGTq9fD1+R8rzsc86cT/AX6No7pzsk/3NWDnTEDvkyBzKvQ1zsuREwYAJWChoKLAHz7x71RPla6@vger.kernel.org
X-Received: by 2002:a05:6102:c54:b0:740:22ba:8a4e with SMTP id
 ada2fe7eead31-744dfed12b0mr3967593137.6.1783590592726; Thu, 09 Jul 2026
 02:49:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1783505142.git.geert+renesas@glider.be> <50f5804f00c55cd60604d00da1bf1f1dc912ba8d.1783505142.git.geert+renesas@glider.be>
 <80a31a21-9876-48a7-a9ed-baac4f87bc11@mailbox.org>
In-Reply-To: <80a31a21-9876-48a7-a9ed-baac4f87bc11@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 9 Jul 2026 11:49:40 +0200
X-Gmail-Original-Message-ID: <CAMuHMdV+nHe9kWbBv1k=b-6iixBBJbqeNY-Vq+qbT+wD2g6jUQ@mail.gmail.com>
X-Gm-Features: AUfX_mz8czD0BjSvqmftRZ_pTGys7GO-j5nSESdQS6eSA4Z7r12bLxvVFtqIaAw
Message-ID: <CAMuHMdV+nHe9kWbBv1k=b-6iixBBJbqeNY-Vq+qbT+wD2g6jUQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/6] clk: renesas: Add R-Car X5H CPG driver
To: Marek Vasut <marek.vasut@mailbox.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, Ulf Hansson <ulfh@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Marek Vasut <marek.vasut+renesas@mailbox.org>, 
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-pm@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[linux-m68k.org];
	TAGGED_FROM(0.00)[bounces-323540-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:marek.vasut@mailbox.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:ulfh@kernel.org,m:p.zabel@pengutronix.de,m:wsa+renesas@sang-engineering.com,m:marek.vasut+renesas@mailbox.org,m:kuninori.morimoto.gx@renesas.com,m:devicetree@vger.kernel.org,m:linux-clk@vger.kernel.org,m:linux-pm@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	R_DKIM_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,mail.gmail.com:mid,mailbox.org:email,linux-m68k.org:from_mime,linux-m68k.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EB6D072F212

Hi Marek,

On Wed, 8 Jul 2026 at 23:55, Marek Vasut <marek.vasut@mailbox.org> wrote:
> On 7/8/26 12:15 PM, Geert Uytterhoeven wrote:
> > +static int register_fixed_clks(struct r8a78000_cpg_priv *priv)
> > +{
> > +     struct device *dev = priv->dev;
> > +     unsigned long rate;
> > +     struct clk_hw *hw;
> > +     const char *name;
> > +
> > +     for (unsigned int i = 0; i < ARRAY_SIZE(fixed_clk_rates); i++) {
> > +             rate = fixed_clk_rates[i];
> > +             name = devm_kasprintf(dev, GFP_KERNEL, "cpg-%lu", rate);
> > +             if (!name)
> > +                     return -ENOMEM;
> > +
> > +             hw = clk_hw_register_fixed_rate(dev, name, NULL, 0, rate);
>
> Would it be viable to use devm_clk_hw_register_fixed_rate() here ?

Yes, I think so; thanks!

> > +             if (IS_ERR(hw)) {
> > +                     while (i-- > 0)
> > +                             clk_hw_unregister_fixed_rate(priv->fixed_hws[i]);
> > +                     return PTR_ERR(hw);
> > +             }
> > +
> > +             priv->fixed_hws[i] = hw;
> > +     }
> > +
> > +     return devm_add_action_or_reset(dev, unregister_fixed_clks, priv);

And then this, and unregister_fixed_clks() can go, and
r8a78000_cpg_priv.fixed_hws[] is no longer needed after probe.

> > +}

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

