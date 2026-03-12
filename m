Return-Path: <devicetree+bounces-274507-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GH8mOMCJsml4NQAAu9opvQ
	(envelope-from <devicetree+bounces-274507-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 10:39:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3002426FB5A
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 10:39:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B4E5B305F7DE
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 09:39:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D32E519EED3;
	Thu, 12 Mar 2026 09:39:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PRhkGwo7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C4DA3064B2
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 09:39:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.176
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773308341; cv=pass; b=bRrUtVFTVbBDNMtOq5VsBj2lKPtTyIaRfEJPKC3FDNHAaE1waYUx/aBWTsUzZAWgz9QRc3eH5P1LBNWDU17ASzTJuNvm093Va2mlh1m1t/RcYwrYUs6pz7d94Y6PeIkgzzYSRH4eNOyHa38byWq2qt1N4eCT0suPmMDYlO4Cw+A=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773308341; c=relaxed/simple;
	bh=anD1VyMEVEgbX5EIAi4s0UBnKZ1U9xE2QUYdli0kx3A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=redJbbfmXhcLv1hxAJgOx9sKX/wpJQl3ulOIlYcB1aHRkATu0o927wqBMMdN2fWoh9Pn0YwkpDsn+SMVZWZ/wjcPQNkGn5nhJ+ie27/EZuCmbBRq3NHfXjL1xqJRoPJTdqWgQijZUN62RoIQmBsbDAtw4il2yAovaUl9cyj/0KM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PRhkGwo7; arc=pass smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-79827d28fc4so7445107b3.1
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 02:39:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773308339; cv=none;
        d=google.com; s=arc-20240605;
        b=hRvR/sck/Rs+Lde29ye8MwU+U1ZKKH4FsM6sy919TmHRYiicyG3AMDu7scydma9wlw
         qkb1sA3MFk1gDLYGIRv/lY9AsilBXcTGAyhVH+DStc00fDHrB94BGUjiiqjOoX5h5JN2
         lR8ZRitl7PPIrQrQZvsK6DCyDBt+9nzunvBs0KBuF2xvA3izn7+mP+kx02j+s3tZz04f
         CEdFgLQBjU7PKALcuPdY4FEdQ0VC5egjPoehPu6Z0bBO3zVMtQlRmwblO7CaL3SHEQJc
         BIM18J/7sAQlDM1GHIERrlpkWLoZOFjNL5bcsyv4P2yYifOjpDGumb4HasgG+oBvB6Ko
         1Pmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=d645qq1RHXY2ZEXrCIAd8Z57nQOQnqeihh5RHWfjYUk=;
        fh=ilY/qVpdC8Q59cRMc4drNQmnz0xbU3PweaXN/dd51mg=;
        b=RZ8/daWf4vJRfxn1ELvYmq02V5e3frusub1eBqGmmNfdJlvcTV6Si3A4tyBkuv+QqP
         KlJ12OY5nUuOhLLb7kfF2qB6rAWmYpO934wS8rSh+OSRoUMROcRUpU3PblbDyIfBu5P7
         Ur1lpfNmvvFnBgt67qdYOozowXhrR3k0oB7+v2yjpILDJnZnZoy9dCxkSShmrL8NWMEP
         nuNgIj9KwAxauo18NHxNTkhc2TfsCUIOC/KvrQkoyEqEBh+GqT0EFjeWZpOJ4g8E1zx3
         YZzIU8bT+B+EXwZB4512n7WuxHK3Ayd1rDuB3GRGiYtChxibScG5OsJqw5aCxiji+Bes
         Ae0w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773308339; x=1773913139; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d645qq1RHXY2ZEXrCIAd8Z57nQOQnqeihh5RHWfjYUk=;
        b=PRhkGwo7GWPjBr9vitNuynWQF8r/kY/5aYYMGQZEls7s5EbCqHflLdTlkgeAeWtRd0
         62a9rYheh63mPOpJQn09CqfR7g44Qsn1BODxGQ6V0O5APzbIhQnRKzJOJ+p9Con3So1c
         Lb88vjXwCAlLobOzIrakiTP/t6hCseXCpB41WatfaSoXsrDfINAoS9zEL9iV6vph5+nl
         OMKB2nwOMhjNmIl8o6iGJCT9lySZ/3p+3e6z0hoE040YWM+2NkZu57qhGRANVezOgyT4
         SV700xPei1KXTtoeLUC/FYz+RZy8dHr32Mf/1fzQQey22CeVR6vZ8TziP7d1Qkw5lL3G
         7ExA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773308339; x=1773913139;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=d645qq1RHXY2ZEXrCIAd8Z57nQOQnqeihh5RHWfjYUk=;
        b=aOEEolvjICrSWCzbrRF5fu/o/MdqIWze6tQXjD6iGWxclgPH26Ss2zj+3iFdrYR35x
         kT8YoWlxHSiX1hcsBgCT7L3jj/coCM8h1XU8jc9UMZ8Ds5eEn4fzx7oQTbofsP+wX3+H
         OItX+6gXfAiw/dhdv72eYKCNn29gMCJ17g4YBqMMAyUHlZa1g9S3/l/bJ6vE5mjlDYhg
         E4nHoKiP6Afs6TzZlKitshzH8el6kVc50/fW7LMoFtLx36SBuoFwNlkCw2YmPa+z5u+8
         UsKECikkL28sohDl44w+mU9OGO2dFgIKckNW7HBqzyMas60f/HWYU5pj8PPuSn8WZ8so
         qbzA==
X-Forwarded-Encrypted: i=1; AJvYcCVS9FfgHJj3i0durm5/Wy8GUKt2zRezJatsJUsoAp74bpXcHbsuaUIes0Y+BFFe61WlaFCo/zUzZOJR@vger.kernel.org
X-Gm-Message-State: AOJu0Yxbxg4SCkpyybUCQV5iNb+0ZqBixM92rfH31ZGsl/n7ABrV4L9d
	cNVIG61E+A4vL3jethfR77CFTgG6IMZymJQDBY6m1Mk3ObOmcGfkVgVCo2f/vCcpJpsPyOuZscA
	BARSm7zGJOojvePmg6MZZmgRX4ZQRbfo=
X-Gm-Gg: ATEYQzzQuNxSeAcitS9oXTfZFvOD/Jz/ZP4Kmr1TYFrxhv4qgTSkFoib/4fnFsUM/q6
	DwcSNrn3ogrIcB+OSVppiZECqqg9WTICUq7VGvntLV6bgSREVWCRJmcqf28khR4qLduuLXB84hb
	JdD5bIXy5ZYR76yi3hOy2hOWoyzW9vgNT25N16339EFygA9hB+e0ouOpuyi6Y0C9bdqkWL5DBu3
	VgmqsLjAQvx8iGUZ7Sx1FOEXZ7eu+32EWhVnbFfdV0nSYoR5rFWPUE+tFepj+yoXwPdGnaXedXo
	3tcg+Lc=
X-Received: by 2002:a05:690c:6d82:b0:799:1af1:6c69 with SMTP id
 00721157ae682-7991af16fbamr45243437b3.26.1773308339300; Thu, 12 Mar 2026
 02:38:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260309-orangepi-sd-card-uhs-v2-0-5bb2b574df5d@gmail.com>
 <20260309-orangepi-sd-card-uhs-v2-2-5bb2b574df5d@gmail.com> <20260309132219-GKE302167@kernel.org>
In-Reply-To: <20260309132219-GKE302167@kernel.org>
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Thu, 12 Mar 2026 10:38:48 +0100
X-Gm-Features: AaiRm52BiCFPbC8nIFwrdrDzkLisJX7YfgLkKCTQywgdqQlIVQj3SZM1LgN_fKc
Message-ID: <CABdCQ=PpA4u+pY-pZgggHPNnDMJUVmgqofMf7O6YMrB+2aDkww@mail.gmail.com>
Subject: Re: [PATCH v2 2/7] mmc: sdhci-of-k1: add regulator and pinctrl
 voltage switching support
To: Yixun Lan <dlan@kernel.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Adrian Hunter <adrian.hunter@intel.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
	Javier Martinez Canillas <javierm@redhat.com>, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274507-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ikerpedrosam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3002426FB5A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

El lun, 9 mar 2026 a las 14:22, Yixun Lan (<dlan@kernel.org>) escribi=C3=B3=
:
>
> Hi Iker,
>
> On 12:40 Mon 09 Mar     , Iker Pedrosa wrote:
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
> > Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
> > ---
> >  drivers/mmc/host/sdhci-of-k1.c | 59 ++++++++++++++++++++++++++++++++++=
++++++++
> >  1 file changed, 59 insertions(+)
> >
> > diff --git a/drivers/mmc/host/sdhci-of-k1.c b/drivers/mmc/host/sdhci-of=
-k1.c
> > index 585c7eca6ebf253aac466dd37cef029deb63f692..8af117a8e271c04a80d8dc7=
bb5ce12075652dd7a 100644
> > --- a/drivers/mmc/host/sdhci-of-k1.c
> > +++ b/drivers/mmc/host/sdhci-of-k1.c
> > @@ -15,6 +15,7 @@
> >  #include <linux/module.h>
> >  #include <linux/of.h>
> >  #include <linux/of_device.h>
> > +#include <linux/pinctrl/consumer.h>
> >  #include <linux/platform_device.h>
> >
> >  #include "sdhci.h"
> > @@ -70,6 +71,9 @@
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
> > @@ -218,6 +222,42 @@ static void spacemit_sdhci_pre_hs400_to_hs200(stru=
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
> > +     struct pinctrl_state *state;
> > +     int ret;
> > +
> > +     /* Select appropriate pinctrl state based on signal voltage */
> > +     if (sdhst->pinctrl) {
> do a sanity check, then abort it early, the advantage is that you can get=
 rid of
> one indetation for next code..
>
>         if (!sdhst->pinctrl)
>                 return;
>

Makes sense. I'll get it ready for the next version.

>
> > +             switch (ios->signal_voltage) {
> > +             case MMC_SIGNAL_VOLTAGE_330:
> > +                     state =3D sdhst->pinctrl_default;
> > +                     break;
> > +             case MMC_SIGNAL_VOLTAGE_180:
> > +                     state =3D sdhst->pinctrl_uhs;
> > +                     break;
> > +             default:
> > +                     dev_warn(mmc_dev(host->mmc), "unsupported voltage=
 %d\n",
> > +                              ios->signal_voltage);
> > +                     return;
> > +             }
> > +
> > +             if (state) {
> > +                     ret =3D pinctrl_select_state(sdhst->pinctrl, stat=
e);
> > +                     if (ret) {
> > +                             dev_warn(mmc_dev(host->mmc),
> > +                                      "failed to select pinctrl state:=
 %d\n", ret);
> > +                             return;
> > +                     }
> > +                     dev_dbg(mmc_dev(host->mmc), "switched to %s pinct=
rl state\n",
> > +                             ios->signal_voltage =3D=3D MMC_SIGNAL_VOL=
TAGE_180 ? "UHS" : "default");
> > +             }
> > +     }
> > +}
> > +
> >  static inline int spacemit_sdhci_get_clocks(struct device *dev,
> >                                           struct sdhci_pltfm_host *pltf=
m_host)
> >  {
> > @@ -242,6 +282,7 @@ static const struct sdhci_ops spacemit_sdhci_ops =
=3D {
> >       .set_bus_width          =3D sdhci_set_bus_width,
> >       .set_clock              =3D spacemit_sdhci_set_clock,
> >       .set_uhs_signaling      =3D spacemit_sdhci_set_uhs_signaling,
> > +     .voltage_switch         =3D spacemit_sdhci_voltage_switch,
> >  };
> >
> >  static const struct sdhci_pltfm_data spacemit_sdhci_k1_pdata =3D {
> > @@ -293,6 +334,24 @@ static int spacemit_sdhci_probe(struct platform_de=
vice *pdev)
> >
> >       host->mmc->caps |=3D MMC_CAP_NEED_RSP_BUSY;
> >
> > +     sdhst =3D sdhci_pltfm_priv(pltfm_host);
> ..
> > +     sdhst->pinctrl =3D devm_pinctrl_get(dev);
> > +     if (!IS_ERR(sdhst->pinctrl)) {
> > +             sdhst->pinctrl_default =3D pinctrl_lookup_state(sdhst->pi=
nctrl, "default");
> > +             if (IS_ERR(sdhst->pinctrl_default))
> > +                     sdhst->pinctrl_default =3D NULL;
> > +
> > +             sdhst->pinctrl_uhs =3D pinctrl_lookup_state(sdhst->pinctr=
l, "state_uhs");
> > +             if (IS_ERR(sdhst->pinctrl_uhs))
> > +                     sdhst->pinctrl_uhs =3D NULL;
> > +
> > +             dev_dbg(dev, "pinctrl setup: default=3D%p, uhs=3D%p\n",
> > +                     sdhst->pinctrl_default, sdhst->pinctrl_uhs);
> > +     } else {
> > +             sdhst->pinctrl =3D NULL;
> > +             dev_dbg(dev, "pinctrl not available, voltage switching wi=
ll work without it\n");
> > +     }
> > +
> how about creating a function spacemit_sdhci_get_pins()? similar as get
> resource for clock, will more readable.

Yes, I'll do that. Thank you for the feedback.

>
> >       ret =3D spacemit_sdhci_get_clocks(dev, pltfm_host);
> >       if (ret)
> >               goto err_pltfm;
> >
> > --
> > 2.53.0
> >
>
> --
> Yixun Lan (dlan)

