Return-Path: <devicetree+bounces-269403-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uC8bObTioWmUwwQAu9opvQ
	(envelope-from <devicetree+bounces-269403-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 19:30:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1361BBFBF
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 19:30:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2F038307E589
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 18:30:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 306F1385529;
	Fri, 27 Feb 2026 18:29:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80F223815C7
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 18:29:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772216999; cv=none; b=h3dFIBKtDkAKfd7Z1cBgWsjN2ff2tbEkeSlWDDFLca3OxDSUcT+xp1ZeirIZD+Xfvr1NyDpq0/1ulGy9Eaud+limT6JAjGShdDdPS8riirznZXKE8kW63dGOW35azlHcJfu41DOiz7HX9czmlLfA1J59t4pxWxq08/9oGFVWmQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772216999; c=relaxed/simple;
	bh=8ZyYUZqdYO9RtAGZXJ34dn6k/pDj0jGAodzQsrEhkvY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lyiSIeIa9FW829Nyz0KWQvzEYbDDxDT0jzDIt2n2r82qmOSrZJQECp7Ugo3Kp/qKP5hkh0YDSmPnyAQaOeHm0jY6qMJL3upXqfsJMSrkp2GVAn6WLCuIaStAJkt4Y3sJ1GPJxhBgvEg8Pg0ucmH5Kn3dWuqg8G1vVoU3gh2R2jU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-56a8ebde349so2059157e0c.1
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 10:29:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772216996; x=1772821796;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qcd8Oic1Sc8ZJu2YAJkZaSOQYT6Z1q9h1yoGvFgoj60=;
        b=pEcJZDYBr0ztb9WRlvDYl+uSUnSM8L3uewc27Z2L0oOOrqeMcWnU9dA7yz2fcjAWL3
         Jvpa6iAZ6pqlPBBV00um131RaYrzmjWVJGIbpcOTa9T3VDxVadpzXVvmnU2omhL4Fig8
         6TcwWlSp4pzjyPbXCoRrHwNY72rndLy3pC54KuMziuo3maCQK7FSLmtwX1SwLsaBzr8B
         AQ0NRkOibv470dMaqzfej+6iaVOxa9J3yCYadZLL/BAfx71IK+e/YjzQgYDBetDf/YAJ
         R7HOj4QFQZ+m9/egK7BPv/tFVws7Fqn5mY2FQtL+AzgtyJSCsJ/pcyriSmJWgPWl6KKR
         5u5w==
X-Forwarded-Encrypted: i=1; AJvYcCWAFTOepx5U1+BP2NUWwuHAOD4dcHguoGkobjh7RBA3Thpj0xTLwhVzFHtPKqtj8JxSEo5sjaYod+8P@vger.kernel.org
X-Gm-Message-State: AOJu0YzNcPh7LS9us8UZjCalymsAQp988+p6jULfwZyUn0Ja3ZEllYUY
	0LYE/COszUnoEFiaCZkINIic2hNEhVsqp+fjm2ZgttD9Xxn/HKUP92E4ygyONeSMv3k=
X-Gm-Gg: ATEYQzzLdl2CIb6rH+u4YiSrDYlKbkdEyX0vDzUABOnqheIe7oNtQL998fdC3cE/vCG
	DhhHGZ5LjdZrXua7+QQN53qSn5X/FNmsidrHhu+ljr9RSyW3hCTMd0QwfKsWTt+4i53pESTvCZ3
	hRegf3ISG/2RWJ+wvfB8O25vidUZW3NTzW4gFfu14kE9M3NNSFkHzfsOIQeIJag0iTCW8hu9ky6
	IRB1I+Xi6E7FlsTeblLFtfw066fJAj3/hIdJMMAc2HU8aNtmXy/hfMqSTQSj5mv0mhKGIf8RnX3
	tlEeC4CCrPX/zyHIDf6+zrQNKThUV1YrCqWG+DT3H/8fU6r8MHzh8BbScDXCgEiJsZ6Pm+LmFne
	CzZUdr2coxaT5Wk88jQOgkqdiUzWxVQ5RvvqBOoqYWpBKYZBtgvVjDcF9HTtzamK02a7VuB8yZK
	GV9ObVRGcfdDHBylNPBMXsGsrEupd6JuTnlbBYuKVICwYZWsSgtogi+SmAHpnd
X-Received: by 2002:a05:6122:8c8c:b0:537:3e57:6bdc with SMTP id 71dfb90a1353d-56aa0a8f8bcmr2085072e0c.12.1772216996399;
        Fri, 27 Feb 2026 10:29:56 -0800 (PST)
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com. [209.85.217.41])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56a9204b91esm7185678e0c.11.2026.02.27.10.29.55
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Feb 2026 10:29:55 -0800 (PST)
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-5ff07cb35efso1494433137.2
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 10:29:55 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUasp519sJS4BuQN7aFkbuQTkmFmOWlDyefUWjrJQg2UxTZDpPgVGWSkeU4vBqhAhBmPlNwe36VDPTr@vger.kernel.org
X-Received: by 2002:a05:6102:3ed6:b0:5f8:e2eb:43d with SMTP id
 ada2fe7eead31-5ff32331547mr2540585137.10.1772216995065; Fri, 27 Feb 2026
 10:29:55 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1770996493.git.tommaso.merciai.xr@bp.renesas.com>
 <53c8d9e7fde7b176e05503a72af81e74c7a8a1c1.1770996493.git.tommaso.merciai.xr@bp.renesas.com>
 <CAMuHMdVAf=GyDR95BFD0Q3Wbjo5n5vnqSsfue=7fRWxs6=Hdgg@mail.gmail.com> <aaHTMGQHZwutlBIv@tom-desktop>
In-Reply-To: <aaHTMGQHZwutlBIv@tom-desktop>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 27 Feb 2026 19:29:44 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVs1L-eRLDkGWx58WbwzjD-+yFxxNLLbrQ=kzQ7_P9y0w@mail.gmail.com>
X-Gm-Features: AaiRm50fiYKFClgCr0aKEdOOuTixihvNu690WG65tXaKE8BtTScAymOURaJQ5yg
Message-ID: <CAMuHMdVs1L-eRLDkGWx58WbwzjD-+yFxxNLLbrQ=kzQ7_P9y0w@mail.gmail.com>
Subject: Re: [PATCH v5 01/20] clk: renesas: rzv2h: Add PLLDSI clk mux support
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: tomm.merciai@gmail.com, laurent.pinchart@ideasonboard.com, 
	linux-renesas-soc@vger.kernel.org, biju.das.jz@bp.renesas.com, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,ideasonboard.com,vger.kernel.org,bp.renesas.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,glider.be,baylibre.com,lists.freedesktop.org];
	TAGGED_FROM(0.00)[bounces-269403-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.943];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-m68k.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,init.name:url,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 5D1361BBFBF
X-Rspamd-Action: no action

Hi Tommaso,

On Fri, 27 Feb 2026 at 18:24, Tommaso Merciai
<tommaso.merciai.xr@bp.renesas.com> wrote:
> On Fri, Feb 27, 2026 at 11:47:58AM +0100, Geert Uytterhoeven wrote:
> > On Fri, 13 Feb 2026 at 17:28, Tommaso Merciai
> > <tommaso.merciai.xr@bp.renesas.com> wrote:
> > > Add PLLDSI clk mux support to select PLLDSI clock from different clock
> > > sources.
> > >
> > > Introduce the DEF_PLLDSI_SMUX() macro to define these muxes and register
> > > them in the clock driver.
> > >
> > > Extend the determine_rate callback to calculate and propagate PLL
> > > parameters via rzv2h_get_pll_dtable_pars() when LVDS output is selected,
> > > using a new helper function rzv2h_cpg_plldsi_smux_lvds_determine_rate().
> > >
> > > The CLK_SMUX2_DSI{0,1}_CLK clock multiplexers select between two paths
> > > with different duty cycles:
> > >
> > > - CDIV7_DSIx_CLK (LVDS path, parent index 0): asymmetric H/L=4/3 duty (4/7)
> > > - CSDIV_DSIx (DSI/RGB path, parent index 1): symmetric 50% duty (1/2)
> > >
> > > Implement rzv2h_cpg_plldsi_smux_{get,set}_duty_cycle clock operations to
> > > allow the DRM driver to query and configure the appropriate clock path
> > > based on the required output duty cycle.
> > >
> > > Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
> >
> > Thanks for your patch!
> >
> > > --- a/drivers/clk/renesas/rzv2h-cpg.c
> > > +++ b/drivers/clk/renesas/rzv2h-cpg.c

> > > +       clk_hw_data = devm_kzalloc(priv->dev, sizeof(*clk_hw_data), GFP_KERNEL);
> > > +       if (!clk_hw_data)
> > > +               return ERR_PTR(-ENOMEM);
> > > +
> > > +       clk_hw_data->priv = priv;
> > > +
> > > +       init.name = core->name;
> > > +       init.ops = &rzv2h_cpg_plldsi_smux_ops;
> > > +       init.flags = core->flag;
> > > +       init.parent_names = core->parent_names;
> > > +       init.num_parents = core->num_parents;
> > > +
> > > +       clk_hw_data->mux.reg = priv->base + smux.offset;
> > > +
> > > +       clk_hw_data->mux.shift = smux.shift;
> > > +       clk_hw_data->mux.mask = smux.width;
> >
> > Again, smux.width is not a mask.
> > Perhaps GENMASK_U16(smux.shift - 1, 0)?
>
> Or maybe we can use:
>
>         clk_hw_data->mux.mask = clk_div_mask(smux.width);
> ?

Thanks, I forgot about clk_div_mask(), which is definitely a better
choice here.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

