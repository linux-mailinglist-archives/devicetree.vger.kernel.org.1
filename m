Return-Path: <devicetree+bounces-305632-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 26blHAvMHmr7VAAAu9opvQ
	(envelope-from <devicetree+bounces-305632-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 14:26:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD7562E064
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 14:26:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305632-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-305632-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6A2BB30117BF
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 12:26:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8138D3DD506;
	Tue,  2 Jun 2026 12:26:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com [209.85.217.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBECD3CC7F4
	for <devicetree@vger.kernel.org>; Tue,  2 Jun 2026 12:26:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780403167; cv=none; b=Z9gvvyFRFtsob+etHaJiWMmcVpwrlIb0+n2Qvkk/0YRPRgIjyqrf84/WJHxWqxP2bXMbGr0eOg4X9Z2FiCx9nsKzAS5L10nBeCo+NQPt3f62xt9uZaBhU35A7xGLLiIZmL0qDdrJ5jSlLVkQG173GsoO59zj+MNbon2eVW53ZgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780403167; c=relaxed/simple;
	bh=yZrsiKkWX0EECfYTapxvcjsipztJnn0uzVrHen9gyZ8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IhzFjo7K87rKqRd28K3cT9WDNBwadu+H7YrxVmHTzY/Wi2psMMJnwA3IVqnWEwrgN7qlZAqQzAI9lP7k0YblDc73ly+5ozlpF1mWPYM8F0PUboclI/z3HcjhDs7WCsqkjmhAXYOq8ceoZgM14FURWKcLwiALCOCECibwXDG1rYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.43
Received: by mail-vs1-f43.google.com with SMTP id ada2fe7eead31-6c3154fa47fso2818559137.2
        for <devicetree@vger.kernel.org>; Tue, 02 Jun 2026 05:26:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780403165; x=1781007965;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yje/uCQ3JOvtCThivl9d4zrcz9CsxYx9GC9XDEjIo+0=;
        b=scvNTxkDaGjLK1eIB3RNrG1nL8jaQ0vjq/mCKD/AUUbS83ySv42ypMZcDHg3/zZ8+T
         ns2CGPrDfE4oAUoc75wacWZHicjYeaPDov1Qkk+HcmD7fBc3ITTiUY/q0AAVskv/e9+b
         1tF9ZMPBVa7gMgVEBNf5fRnS1JRVrA+Pxx3H8y73Xsbg7WxN2BDsmBZkrKHoaabiWOeX
         4lwYBPZE94WdUSnIobI01VrEEzlfkispsuttrq+PwfCfmZfkzzomiT5GSoumhO4qK676
         dW7WpAvlElonKY7zlMJJzw65ABC+rS40mLVe7iUNohhlHslQOBkjHwkRLn+ahdBKF0FF
         8LXw==
X-Forwarded-Encrypted: i=1; AFNElJ+qH7VCZQcVGmZ9l6mI1sp5kvP9iUNNpKXNgV2wOF+zhUfKaBo+RFnt2/hxVTgN5IJY0Xyo6EthWMnc@vger.kernel.org
X-Gm-Message-State: AOJu0YwENMEIvCsfJGbjN7ElDZ8R4wB6O72Q5UF96VdHnSz4KJ6XSDJ9
	mJ0UvvObzI0UxjeNbTh8KuBpwLNaEKdgbqNgyzVzfyw6V7fdhgeZbNhDWmhIELG2fjE=
X-Gm-Gg: Acq92OGsJSGY5xORXnx9D6L1SMHbJ532vfccPUATI3a7ta0GfNBlEdzZW9gDFu9x0bX
	0/T11bhlxWG1grPvvolxDkpRfmFINof2t6NDIGCm3r989n+W0NKSDTGf0h4JXa6eZxrXx3ttycO
	nEU7vQRqKdvmHElJpCD3hAvLVPdsilNlCyQCgcJfkY7EzqJYumaRsXkr4GFvSZUCMCdlaxY0Hbg
	gbKUDG8QuJFbDIPlyRNNc+oHPr6dcp3gj5T1+D3U+hTyb75VuzTxP8CLe2gFB0GabS4SVilwCYk
	hym6SV05r8cIvX//gmKwBrUAY9KQWSPmofB9/xFdl+xc7MG/q4XC97Q3kkYy7xfQCZTewV/p4/I
	4TLb9REvv+1YHsbOOzZ1YCsvXdYU5lXQ5dNLRYGgPtWgxfAxoEs2vCCbp8FTOUfDa5uSXMvFxkk
	mzd81mx9TquWavrl5RvYwPa4alyuRUrpdDntBhPHxYArghy7hcoZj41TCTAxVn4IWSAu9X5VlYd
	to=
X-Received: by 2002:a67:e7c3:0:b0:633:d7ec:153e with SMTP id ada2fe7eead31-6c6aa012167mr7189634137.28.1780403164669;
        Tue, 02 Jun 2026 05:26:04 -0700 (PDT)
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com. [209.85.221.170])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-6c855b77fb9sm7318369137.11.2026.06.02.05.26.03
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2026 05:26:03 -0700 (PDT)
Received: by mail-vk1-f170.google.com with SMTP id 71dfb90a1353d-59aaca022easo2901249e0c.0
        for <devicetree@vger.kernel.org>; Tue, 02 Jun 2026 05:26:03 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ+ohjvisT0PLj2GGWr3nVUjBMg+5oZTAHTKQtcXqCCwSxVfi/jWjT/6ao8EFZbZ8VXLH68KX0qAQ6AT@vger.kernel.org
X-Received: by 2002:a05:6122:46a3:b0:56b:579c:82e with SMTP id
 71dfb90a1353d-59bf1a40ae2mr7324776e0c.5.1780403163126; Tue, 02 Jun 2026
 05:26:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260530080340.24715-2-wsa+renesas@sang-engineering.com>
 <CAMuHMdX8gGvjTPat-7=r3q-bXgQJU=A2DsDEPXZy6k20_JKx9w@mail.gmail.com> <ah64Y3fuO2ofgsDG@ninjato>
In-Reply-To: <ah64Y3fuO2ofgsDG@ninjato>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 2 Jun 2026 14:25:51 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWBfaxdK+Ov7xSVK+TfD0rbrOwVg-a_+mMHhU9wfE5_7g@mail.gmail.com>
X-Gm-Features: AVHnY4Ih0OfMn_vpjjCTbwfXWwgSar0-zdZtmXFYlFh9TbZJ143ij1eRV8CzZVw
Message-ID: <CAMuHMdWBfaxdK+Ov7xSVK+TfD0rbrOwVg-a_+mMHhU9wfE5_7g@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: renesas: r8a779g0: add MFIS node
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-305632-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_RECIPIENTS(0.00)[m:wsa+renesas@sang-engineering.com,m:linux-renesas-soc@vger.kernel.org,m:magnus.damm@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:wsa@sang-engineering.com,m:magnusdamm@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,mail.gmail.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sang-engineering.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0BD7562E064

Hi Wolfram,

On Tue, 2 Jun 2026 at 13:03, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> > > +               mfis: system-controller@e6260000 {
> > > +                       compatible = "renesas,r8a779g0-mfis";
> > > +                       reg = <0 0xe6260000 0 0xf000>;
> >
> > Why 0xf000 and not 0x10000?
>
> The sheet listing the memory map has a "MFI - Region 14" entry for
> 0xe626e000, but no region 15 for 0xe626f000. I thought I play safe.

Indeed...

However, according to attachment R-CarV4H_UM_018_AXI-bus_D_r1p30.xlsx,
MFI14 applies to MFIS H'E626_E000 - H'E626_FFFF, thus covers 8 KiB,
i.e. double of the other regions.

> Can change if you want...

Yes please.
Thanks!

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

