Return-Path: <devicetree+bounces-261005-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YNfgMsake2lWHgIAu9opvQ
	(envelope-from <devicetree+bounces-261005-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 19:19:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D43FB37F3
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 19:19:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 56B6B3010529
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 18:17:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A649B273803;
	Thu, 29 Jan 2026 18:17:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E681D9A54
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 18:17:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769710673; cv=none; b=KG7t4I0TqdP2vnYaBFh+ou54+c98MW2QDAIkJdCTrqIlkREnaCd3v+Jdk3uxzbTUv/92cpSxN4REWS8PsM6O6tQmx4w1ZD8sgPp+zcW1iJKdOgCup6kFgWlqO/913w9nwPhyRWbylrlZUPhcw9hI6hIzY/Vcz67sm8avFimX25M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769710673; c=relaxed/simple;
	bh=BmaXlCZ6264fsqvXXrjSoDhWiC9g1X99D6Z7+wsR+aY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tRyXoXGFzZ7e77+lpvGdg7DLh/lV0iIRPir6rpSrLzf1pZfzSVXMLqgBQ97yGybVh60YhpZnwiE9Hc6s+Jt5dSxIPSq6xLRv9R6dMLKCoKp2FT/3C16k1+LP2NPouosW1bmqVoJEY+OxWL0j2DH6+Zs1W2hk7E4sBFohIjQ8GTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-8c6aaf3cd62so136316485a.3
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 10:17:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769710671; x=1770315471;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4/B1720oxlP4NMLZCxNr6vg90MXZvyAsBr77z/rjaXw=;
        b=kjdOLK8SdSVdl++jslDEjFHJyVTnJr7ySpKq7zaxQya0G14/ew9LIK6hPIXGUPB33R
         ZbZKSFg3nVK009hsJpC8qizaOedaXH7slN8IEsE0R2AP8qz5BiMsg7dsWrxVgZUZvch0
         whMOnFuOzVhCQYIdA6U5JNCZwAz8/kSi+Vphe9r4slUQSUGaX+Ld2RG9hVMb9JGB63Pz
         xU2V+voNHemImhCtAdZog07+dUSw6fxYTVYtb4XVQ8dbiPDOHtiiRO02ExCJ6lAFFU/H
         T4/Psc0rhmBJOW0OOhN24StvOdqvF1imk0Gi7ui2mW0H1x9jjAlayDHb02MWAqB9bOS2
         i0nQ==
X-Forwarded-Encrypted: i=1; AJvYcCVd+/0dymZXesfIMJY0qGH+sJvMIVNQQ8V4y8Ah1qfVYZWpEIbhOF3CeDA21Wdo64QDcwLQu8sNxOPe@vger.kernel.org
X-Gm-Message-State: AOJu0YxAgsnTamjfmCwK2DsoDu0uGRYAQJxuCd5oPwQM/q1uSKfDQb7y
	yo2p49RdJMZ2HQkK39vghaXAxGQ6YbLACly2tQRkMOuM/41Kpzp6AB1RZkxQFV+a
X-Gm-Gg: AZuq6aInavKO0eyE6eXLg9hLWemedVNAd1IvWioa7UMUaTu+AyeQs0stdKTgDvfwewT
	76og3tZCQsdfqS4QX5+xpWekwzoRqjzA7mzXq1YSfi4JXFe7WY+k58iUE53UggpwD0otFW+zdPr
	nDXiTWYKshnGnzlTtX7fc6dGt9+VR7AO7exf10PJMe9UUlMDinoRwAhhQTEsq7AeCrV9crD0WdC
	YWIw84Vhqqh2wNCKaai2xhcM+SW4J2uZ+ROfTLZvzWiGV4mTXf95vGiP8GsSoKnKnMdv1MVYCLD
	tC7KAmWRaK9kg7wITzF+Y/9br5XRgtxWN01Lby62m4Oy+VaWILAUlmy4wYC5E35ma7CfK2nohwO
	sFwMY/xyDMBLrRGWJbU9NFXrToKd46CC3SxDvpWly7Qmz5SIjxqf25H2B7Ea655U9EyU/UN+2SL
	KiE9jyxV5xiUl5m7dhSFzS6TEJSAs4uOyuGSFDq5qevgq65o0y
X-Received: by 2002:a05:6123:a5:b0:560:2368:191 with SMTP id 71dfb90a1353d-566a00d510bmr11091e0c.10.1769703692442;
        Thu, 29 Jan 2026 08:21:32 -0800 (PST)
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com. [209.85.222.51])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-948723ef486sm1276119241.5.2026.01.29.08.21.32
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jan 2026 08:21:32 -0800 (PST)
Received: by mail-ua1-f51.google.com with SMTP id a1e0cc1a2514c-9413e5ee53eso717358241.0
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 08:21:32 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU12IYtSXzI92MRIuFwJNo4YPV2RAZjPEprmWHnzuxNuDDgmvRLaifVaKcfcGcKauvOhbM2Cuqyljxk@vger.kernel.org
X-Received: by 2002:a05:6102:32d2:b0:5f1:50d0:3797 with SMTP id
 ada2fe7eead31-5f723937ba5mr3352368137.43.1769703201568; Thu, 29 Jan 2026
 08:13:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260128-rz-sdio-mux-v7-0-92ebb6da0df8@solid-run.com>
 <20260128-rz-sdio-mux-v7-2-92ebb6da0df8@solid-run.com> <CAPDyKFrBuL+747QUJJUejtcvjm0V7Lt=vHwjvcMdCt_h4=sFwg@mail.gmail.com>
In-Reply-To: <CAPDyKFrBuL+747QUJJUejtcvjm0V7Lt=vHwjvcMdCt_h4=sFwg@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 29 Jan 2026 17:13:10 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXgLR9yeLa5JKNdAOtNEirJ8263bmn1zRNAnKnmf8F-Sg@mail.gmail.com>
X-Gm-Features: AZwV_Qhgryuc7jjty9iqHy9zUzs2cyLGoonPOo05F0vrabMAU0UMySZvEVLbN1w
Message-ID: <CAMuHMdXgLR9yeLa5JKNdAOtNEirJ8263bmn1zRNAnKnmf8F-Sg@mail.gmail.com>
Subject: Re: [PATCH v7 2/7] mux: Add helper functions for getting optional and
 selected mux-state
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Josua Mayer <josua@solid-run.com>, Marc Kleine-Budde <mkl@pengutronix.de>, 
	Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Peter Rosin <peda@axentia.se>, 
	Aaro Koskinen <aaro.koskinen@iki.fi>, Andreas Kemnade <andreas@kemnade.info>, 
	Kevin Hilman <khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>, 
	Tony Lindgren <tony@atomide.com>, Janusz Krzysztofik <jmkrzyszt@gmail.com>, Vignesh R <vigneshr@ti.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Yazan Shhady <yazan.shhady@solid-run.com>, Jon Nettleton <jon@solid-run.com>, 
	Mikhail Anikin <mikhail.anikin@solid-run.com>, linux-can@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, Dan Carpenter <dan.carpenter@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[solid-run.com,pengutronix.de,kernel.org,linaro.org,axentia.se,iki.fi,kemnade.info,baylibre.com,atomide.com,gmail.com,ti.com,glider.be,sang-engineering.com,vger.kernel.org,lists.infradead.org];
	TAGGED_FROM(0.00)[bounces-261005-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[33];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[solid-run.com:email,linux-m68k.org:email,linaro.org:email,mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4D43FB37F3
X-Rspamd-Action: no action

On Thu, 29 Jan 2026 at 17:06, Ulf Hansson <ulf.hansson@linaro.org> wrote:
> On Wed, 28 Jan 2026 at 15:46, Josua Mayer <josua@solid-run.com> wrote:
> >
> > In-tree phy-can-transceiver driver has already implemented a local
> > version of devm_mux_state_get_optional.
> >
> > The omap-i2c driver gets and selects an optional mux in its probe
> > function without using any helper.
> >
> > Add new helper functions covering both aforementioned use-cases:
> >
> > - mux_control_get_optional:
> >   Get a mux-control if specified in dt, return NULL otherwise.
> > - devm_mux_state_get_optional:
> >   Get a mux-state if specified in dt, return NULL otherwise.
> > - devm_mux_state_get_selected:
> >   Get and select a mux-state specified in dt, return error otherwise.
> > - devm_mux_state_get_optional_selected:
> >   Get and select a mux-state if specified in dt, return error or NULL.
> >
> > Existing mux_get helper function is changed to take an extra argument
> > indicating whether the mux is optional.
> > In this case no error is printed, and NULL returned in case of ENOENT.
> >
> > Calling code is adapted to handle NULL return case, and to pass optional
> > argument as required.
> >
> > To support automatic deselect for _selected helper, a new structure is
> > created storing an exit pointer similar to clock core which is called on
> > release.
> >
> > To facilitate code sharing between optional/mandatory/selected helpers,
> > a new internal helper function is added to handle quiet (optional) and
> > verbose (mandatory) errors, as well as storing the correct callback for
> > devm release: __devm_mux_state_get
> >
> > Due to this structure devm_mux_state_get_*_selected can no longer print
> > a useful error message when select fails. Instead callers should print
> > errors where needed.
> >
> > Commit e153fdea9db04 ("phy: can-transceiver: Re-instate "mux-states"
> > property presence check") noted that "mux_get() always prints an error
> > message in case of an error, including when the property is not present,
> > confusing the user."
> >
> > The first error message covers the case that a mux name is not matched
> > in dt. The second error message is based on of_parse_phandle_with_args
> > return value.
> >
> > In optional case no error is printed and NULL is returned.
> > This ensures that the new helper functions will not confuse the user
> > either.
> >
> > With the addition of optional helper functions it became clear that
> > drivers should compile and link even if CONFIG_MULTIPLEXER was not enabled.
> > Add stubs for all symbols exported by mux core.
> >
> > Signed-off-by: Josua Mayer <josua@solid-run.com>
> > ---
> >  drivers/mux/core.c           | 178 ++++++++++++++++++++++++++++++++++++-------
> >  include/linux/mux/consumer.h | 108 +++++++++++++++++++++++++-
> >  2 files changed, 253 insertions(+), 33 deletions(-)
> >
> > diff --git a/drivers/mux/core.c b/drivers/mux/core.c
> > index a3840fe0995f..b01ec126caaf 100644
> > --- a/drivers/mux/core.c
> > +++ b/drivers/mux/core.c
>
> [...]
>
> >  static void devm_mux_state_release(struct device *dev, void *res)
> >  {
> > -       struct mux_state *mstate = *(struct mux_state **)res;
> > +       struct devm_mux_state_state *devm_state = res;
> >
> > -       mux_state_put(mstate);
> > +       if (devm_state->exit)
> > +               devm_state->exit(devm_state->mstate);
> > +
> > +       mux_state_put(devm_state->mstate);
> >  }
> >
> >  /**
> > - * devm_mux_state_get() - Get the mux-state for a device, with resource
> > - *                       management.
> > - * @dev: The device that needs a mux-control.
> > - * @mux_name: The name identifying the mux-control.
> > + * __devm_mux_state_get() - Get the optional mux-state for a device,
> > + *                         with resource management.
> > + * @dev: The device that needs a mux-state.
> > + * @mux_name: The name identifying the mux-state.
> > + * @optional: Whether to return NULL and silence errors when mux doesn't exist.
> > + * @init: Optional function pointer for mux-state object initialisation.
> > + * @exit: Optional function pointer for mux-state object cleanup on release.
> >   *
> >   * Return: Pointer to the mux-state, or an ERR_PTR with a negative errno.
> >   */
> > -struct mux_state *devm_mux_state_get(struct device *dev,
> > -                                    const char *mux_name)
> > +static struct mux_state *__devm_mux_state_get(struct device *dev, const char *mux_name,
> > +                                             bool optional,
> > +                                             int (*init)(struct mux_state *mstate),
> > +                                             int (*exit)(struct mux_state *mstate))
> >  {
> > -       struct mux_state **ptr, *mstate;
> > +       struct devm_mux_state_state *devm_state;
> > +       struct mux_state *mstate;
> > +       int ret;
> >
> > -       ptr = devres_alloc(devm_mux_state_release, sizeof(*ptr), GFP_KERNEL);
> > -       if (!ptr)
> > +       devm_state = devres_alloc(devm_mux_state_release, sizeof(*devm_state), GFP_KERNEL);
> > +       if (!devm_state)
> >                 return ERR_PTR(-ENOMEM);
> >
> > -       mstate = mux_state_get(dev, mux_name);
> > -       if (IS_ERR(mstate)) {
> > -               devres_free(ptr);
> > -               return mstate;
> > +       mstate = mux_state_get(dev, mux_name, optional);
> > +       if (IS_ERR_OR_NULL(mstate)) {
> > +               ret = PTR_ERR(mstate);
>
> Should this be PTR_ERR_OR_ZERO?

"mux_state_get() never returns NULL"
https://lore.kernel.org/202601221036.J0kR78Uw-lkp@intel.com

>
> > +               goto err_mux_state_get;
> >         }

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

