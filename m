Return-Path: <devicetree+bounces-278149-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iCMCG7oQvWlf6QIAu9opvQ
	(envelope-from <devicetree+bounces-278149-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 10:17:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BE64C2D7DF6
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 10:17:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6CC59301A93B
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:17:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D747C33E37C;
	Fri, 20 Mar 2026 09:17:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kJtAyw3z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D06F2DC76A
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 09:17:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.170
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773998262; cv=pass; b=OI/nJ22+G0dLeWOVWI7AEOUwOEcctUs2/JeZ9cR0C4Ov5u4hOkn7Jaz+xaTz8G2gth18nPWfwRv7MckHiaZNJAudzLlOuGX+Hj/g0ohOq10cCS9ayXeMrt3VJOgikcF/UklkG+dmQDMi0LeU0OTjsfXRVRk4xRUGmrnuSMGlBQo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773998262; c=relaxed/simple;
	bh=WI9ql83NPUaLhZG0631OEKRXHGKSR+sVAGHlOXj1Hf4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SP8m5KvUd11m1QInBaex+4+KmyjrOpXcIR+tGNee8RsH+mJuGa7UTVvoA1roibnvdTGC/s8IHhd6vSa3+BYCMaz1r1FvCssS9F4YCX+aI/gWUIPwCyw5JVu2FRJ/DiJOhavyDgK3tlaL1OPYkLYNwgSlkn4oU0VWp9d+a8ZB7kM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kJtAyw3z; arc=pass smtp.client-ip=209.85.128.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-79a8e873ca1so9965027b3.1
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 02:17:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773998258; cv=none;
        d=google.com; s=arc-20240605;
        b=jgrnYeY0rWRnLORCebWH8cZy7wPoosTMqKNVi4sASMPGpHNBBmVYE/pNCiZ9RPQd8B
         4Jm2APkeIzUeE9b8c2WiVyour8337T2g31RO+vlZdNQXbixYwLqz74YstXF8edoPIXBA
         4Y+bjz5rYphrXiXod233u7/u65vUZvN16Rba61u4LrZNbe7h9p/0BsZysC0vLcD/18Jr
         S1adbEgVILYvFea8659PsWHTKTqXzj/G9px5/CO84kt81NQavVw4e6UopASSx0GEumQt
         4NJtZauTRv9pB61NyZo2yMNUFN3fUbOo8umdwFJng5pJirfGD/1QO5daZJRgpqbizbNO
         V6Ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Dn1DESYfs8Y8xmtlvHAYp+0AU2JDUbwmb+m5abbzaxM=;
        fh=oaZiNluiaNKNDjwrQ4njQuMAeCT3k4yv4vYlo88pDuQ=;
        b=hNhKjbQjoMY8dOQGuXq5ddEwa3r85FJNLjfLcalEWqWJjT53byBxHHfJz1swX4JzN4
         jHaETcanKY/y3VK0iVRV3frf1eTSrpfNBq95EHZ4TGsexslWjvnUqpuPKXPdVW4PyFXs
         YkPNKPLTfg9pcvH1YeQRY7E9P5F+cYK57XDXMVzpKnIBYrvhooWOyWOLk9s3I0Ebm42d
         lHq2cfxPAiHil4u8lNGjOtiGAM2eYaJTdI0POn2+J/gcWpxisCoMnkKReP1/o1gE5DPb
         yx0w2DT8OBpdl4ROOgmlaufTRhICUcaQEJvjIhLrY0b7tv58aHuIiI67iQ+JfXoTXYco
         7urQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773998258; x=1774603058; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Dn1DESYfs8Y8xmtlvHAYp+0AU2JDUbwmb+m5abbzaxM=;
        b=kJtAyw3zXct7wfrYSzaq81hCnrsZtiUo+X8PgJKZBCyN4wxQ1hGzk95MSH0lXssNoz
         Dop7wEDO7g9yFx4Menkv/BcOLybYXB9QfEbfujJcVoDIigZpqnXj4C6WVm7R/gKGKJ6I
         CuwOsN9pMwrJSCKaUGKN2pZ1EnCIcHwKUmif6GXs/d1uKvytYZ6dWJoQ4ZPP26Vyj9gf
         aUBBa3uHXvykHnST1Gd0kep/3lVr7FwvBsgr93zDvyAOTauZL/L+qEdcFIRBw0rVkX73
         uNaM8hEvEB4wTeZKgoyOHM0H8ouhnpwHG9TlMirq4Z1KtDVQIndGju9EGfcVmSZ1LK22
         XFjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773998258; x=1774603058;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Dn1DESYfs8Y8xmtlvHAYp+0AU2JDUbwmb+m5abbzaxM=;
        b=Z4jEUt19gW+8UOInlekoJDpbsv+r4YhNq2GLVmERVOM+ChjmHscpPIvAux8tuSjjyj
         OuofjeGlMyq9SW4QzjWNWVpBNcjohFKjGkJo8Q5OX8aJFnINYqsWDjmPQQfb66XtU5hQ
         en2oUQlKM2eNXJNKsQPLXkOCEimfpttbf1ji8lsKhxRM4j7cs02XeASU0JD+gwQfjavK
         pRu8anSUJqbrD/tKlnLO7KL2JnUxc81kN/EPhDHXjtGFXoRgyKLQ/sFVtAckawIH5I55
         sch9Wf68mS8PTixXV9R25M5SEyMd0xLVSVZwG66Vjjsp3HTYlW3p4xi/bUAf8DyBker8
         bObQ==
X-Forwarded-Encrypted: i=1; AJvYcCWZiSYwEKdqyPirqixpc9Js1P09uWg8V9dAxXgo0C5TxzHakD314B16GoD3hJi5rqoYtOCYjmQixpqY@vger.kernel.org
X-Gm-Message-State: AOJu0YzyeShVEOuFmxN1SInTu3XFz062VFHMnlqKIfoPyxYEHTq1xRU/
	Dl1dmGSSaNQP0/j6BRmYntI4ew/cHz5qSLCrS/JruHf76RBCnF0aXxfgJRmrtcRYp5LRS8B7+of
	6qQ6NunaSs4YIXnrqOoaKjSwcPXmWUns=
X-Gm-Gg: ATEYQzwn0Z8BpwQ4p1oDjSr9NkxTvqVmYn/SEv8RPSHslGGnHGGHLmyD1ZXg+ElOJtz
	FZMq2PFIy7Q1hoAueXFUyOwNJrOlxb+YvkgreXWK17DU4DF/oyWyvkHtn5nZldxU9v4Jm3XUJ21
	uGaTYcKVAePuY2oJgfjThVlqLDs2lE6/y/r4xfKMyVS2hDFBMihLdFregna4kI75wL5cdGLwEQN
	s98G7jYO9pBriTWMNfMGDF+k+djiDDkW8LyceAozL9MENU6boavC0wtn7tr4su1/0SC3ObieuL5
	4PqKU9Q=
X-Received: by 2002:a05:690c:498f:b0:79a:43b1:1170 with SMTP id
 00721157ae682-79a81ad7827mr68711887b3.15.1773998258113; Fri, 20 Mar 2026
 02:17:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260316-orangepi-sd-card-uhs-v3-0-aefd3b7832df@gmail.com>
 <20260316-orangepi-sd-card-uhs-v3-2-aefd3b7832df@gmail.com> <182321ef-f01e-4bc8-8f23-aa85b4c70860@intel.com>
In-Reply-To: <182321ef-f01e-4bc8-8f23-aa85b4c70860@intel.com>
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Fri, 20 Mar 2026 10:17:27 +0100
X-Gm-Features: AaiRm53XBGo7zx5aFlI-GEzkiEKn7jV5Xqx3ftctiokZuyCP--kGRAQhny3pbvQ
Message-ID: <CABdCQ=ODJyeC4Lb_XFxHaxQpem0F3v=tw+5CipCHFU8T5zr8Ww@mail.gmail.com>
Subject: Re: [PATCH v3 2/7] mmc: sdhci-of-k1: add regulator and pinctrl
 voltage switching support
To: Adrian Hunter <adrian.hunter@intel.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@kernel.org>, 
	Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
	Javier Martinez Canillas <javierm@redhat.com>, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
	linux-kernel@vger.kernel.org, Anand Moon <linux.amoon@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278149-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_CC(0.00)[linaro.org,kernel.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,rootcommit.com,redhat.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.473];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ikerpedrosam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:email]
X-Rspamd-Queue-Id: BE64C2D7DF6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

El mar, 17 mar 2026 a las 12:28, Adrian Hunter
(<adrian.hunter@intel.com>) escribi=C3=B3:
>
> On 16/03/2026 16:03, Iker Pedrosa wrote:
> > Add voltage switching infrastructure for UHS-I modes by integrating bot=
h
> > regulator framework (for supply voltage control) and pinctrl state
> > switching (for pin drive strength optimization).
> >
> > - Add regulator supply parsing and voltage switching callback
> > - Add optional pinctrl state switching between "default" (3.3V) and
> >   "state_uhs" (1.8V) configurations
> > - Enable coordinated voltage and pin configuration changes for UHS mode=
s
> >
> > This provides complete voltage switching support while maintaining
> > backward compatibility when pinctrl states are not defined.
> >
> > Tested-by: Anand Moon <linux.amoon@gmail.com>
> > Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
> > ---
> >  drivers/mmc/host/sdhci-of-k1.c | 58 ++++++++++++++++++++++++++++++++++=
++++++++
> >  1 file changed, 58 insertions(+)
> >
> > diff --git a/drivers/mmc/host/sdhci-of-k1.c b/drivers/mmc/host/sdhci-of=
-k1.c
> > index 0dd06fc19b8574ae1b00f7e5d09b7d4c87d06770..01afdadcf70796704b272ee=
5a31543afd5e01188 100644
> > --- a/drivers/mmc/host/sdhci-of-k1.c
> > +++ b/drivers/mmc/host/sdhci-of-k1.c
> > @@ -16,6 +16,7 @@
> >  #include <linux/of.h>
> >  #include <linux/of_device.h>
> >  #include <linux/reset.h>
> > +#include <linux/pinctrl/consumer.h>
> >  #include <linux/platform_device.h>
> >
> >  #include "sdhci.h"
> > @@ -71,6 +72,9 @@
> >  struct spacemit_sdhci_host {
> >       struct clk *clk_core;
> >       struct clk *clk_io;
> > +     struct pinctrl *pinctrl;
> > +     struct pinctrl_state *pinctrl_default;
> > +     struct pinctrl_state *pinctrl_uhs;
> >  };
> >
> >  /* All helper functions will update clr/set while preserve rest bits *=
/
> > @@ -219,6 +223,33 @@ static void spacemit_sdhci_pre_hs400_to_hs200(stru=
ct mmc_host *mmc)
> >                              SPACEMIT_SDHC_PHY_CTRL_REG);
> >  }
> >
> > +static void spacemit_sdhci_voltage_switch(struct sdhci_host *host)
> > +{
> > +     struct sdhci_pltfm_host *pltfm_host =3D sdhci_priv(host);
> > +     struct spacemit_sdhci_host *sdhst =3D sdhci_pltfm_priv(pltfm_host=
);
> > +     struct mmc_ios *ios =3D &host->mmc->ios;
> > +     int ret;
> > +
> > +     if (!sdhst->pinctrl)
> > +             return;
> > +
> > +     if (ios->signal_voltage !=3D MMC_SIGNAL_VOLTAGE_180) {
> > +             dev_warn(mmc_dev(host->mmc), "unsupported voltage %d\n",
> > +                      ios->signal_voltage);
> > +             return;
> > +     }
>
> In V2, I put "->voltage_switch() is called only for
> ios->signal_voltage =3D=3D MMC_SIGNAL_VOLTAGE_180" by
> which I meant that it does not allow the driver to
> switch pin state back for 3.3V.
>
> So you probably need an approach similar to the original
> spacemit_sdhci_start_signal_voltage_switch() in:
>
>         https://lore.kernel.org/linux-mmc/20260302-orangepi-sd-card-uhs-v=
1-4-89c219973c0c@gmail.com/

Thank you for the feedback. I want to make sure I understand this
point correctly to avoid going in circles.

In the v2 feedback , you mentioned that "->voltage_switch() is called
only for ios->signal_voltage =3D=3D MMC_SIGNAL_VOLTAGE_180", which I
understood to mean that this callback only needs to handle switching
to 1.8V. This meant that the changes I introduced for v3 don't manage
the switching to 3.3V.

Can you clarify if I should I revert to implementing
"->start_signal_voltage_switch()" instead, which would handle both
1.8V and 3.3V cases? Or is there a way to make the
"->voltage_switch()" approach work properly for both directions?

>
> > +
> > +     if (sdhst->pinctrl_uhs) {
> > +             ret =3D pinctrl_select_state(sdhst->pinctrl, sdhst->pinct=
rl_uhs);
> > +             if (ret) {
> > +                     dev_warn(mmc_dev(host->mmc),
> > +                              "failed to select UHS pinctrl state: %d\=
n", ret);
> > +                     return;
> > +             }
> > +             dev_dbg(mmc_dev(host->mmc), "switched to UHS pinctrl stat=
e\n");
> > +     }
> > +}
> > +
> >  static inline int spacemit_sdhci_get_clocks(struct device *dev,
> >                                           struct sdhci_pltfm_host *pltf=
m_host)
> >  {
> > @@ -252,12 +283,37 @@ static inline int spacemit_sdhci_get_resets(struc=
t device *dev)
> >       return 0;
> >  }
> >
> > +static inline void spacemit_sdhci_get_pins(struct device *dev,
> > +                                         struct sdhci_pltfm_host *pltf=
m_host)
> > +{
> > +     struct spacemit_sdhci_host *sdhst =3D sdhci_pltfm_priv(pltfm_host=
);
> > +
> > +     sdhst->pinctrl =3D devm_pinctrl_get(dev);
> > +     if (IS_ERR(sdhst->pinctrl)) {
> > +             sdhst->pinctrl =3D NULL;
> > +             dev_dbg(dev, "pinctrl not available, voltage switching wi=
ll work without it\n");
> > +             return;
> > +     }
> > +
> > +     sdhst->pinctrl_default =3D pinctrl_lookup_state(sdhst->pinctrl, "=
default");
> > +     if (IS_ERR(sdhst->pinctrl_default))
> > +             sdhst->pinctrl_default =3D NULL;
> > +
> > +     sdhst->pinctrl_uhs =3D pinctrl_lookup_state(sdhst->pinctrl, "stat=
e_uhs");
> > +     if (IS_ERR(sdhst->pinctrl_uhs))
> > +             sdhst->pinctrl_uhs =3D NULL;
> > +
> > +     dev_dbg(dev, "pinctrl setup: default=3D%p, uhs=3D%p\n",
> > +             sdhst->pinctrl_default, sdhst->pinctrl_uhs);
> > +}
> > +
> >  static const struct sdhci_ops spacemit_sdhci_ops =3D {
> >       .get_max_clock          =3D spacemit_sdhci_clk_get_max_clock,
> >       .reset                  =3D spacemit_sdhci_reset,
> >       .set_bus_width          =3D sdhci_set_bus_width,
> >       .set_clock              =3D spacemit_sdhci_set_clock,
> >       .set_uhs_signaling      =3D spacemit_sdhci_set_uhs_signaling,
> > +     .voltage_switch         =3D spacemit_sdhci_voltage_switch,
> >  };
> >
> >  static const struct sdhci_pltfm_data spacemit_sdhci_k1_pdata =3D {
> > @@ -324,6 +380,8 @@ static int spacemit_sdhci_probe(struct platform_dev=
ice *pdev)
> >
> >       host->mmc->caps |=3D MMC_CAP_NEED_RSP_BUSY;
> >
> > +     spacemit_sdhci_get_pins(dev, pltfm_host);
> > +
> >       ret =3D spacemit_sdhci_get_clocks(dev, pltfm_host);
> >       if (ret)
> >               goto err_pltfm;
> >
>

