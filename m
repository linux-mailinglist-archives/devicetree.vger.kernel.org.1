Return-Path: <devicetree+bounces-326793-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FyK0HGJQV2p3JAEAu9opvQ
	(envelope-from <devicetree+bounces-326793-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 11:18:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D523D75C5D8
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 11:18:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326793-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-326793-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 830FF3120A6C
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 09:11:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3722B3EDE5F;
	Wed, 15 Jul 2026 09:11:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com [209.85.217.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9808C3EA97E
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 09:11:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784106662; cv=none; b=SUo5/72hUM+JrQZhcKYqT/k2ll/LTJneqGM6SPtGoUSLA8SjfN+7UZSC7r9JxdB4z2CGUoSwWmvig2qCV1EgYH0gp/uwC6Mz8+X/jaaGwmW9S2FhiCKaFehJjxyrs1nF5YFgQxc3BgZ0NgaP3IQQ4EjXsDDzAbf6I33MxwBl+M0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784106662; c=relaxed/simple;
	bh=b9PpOJcb8DxhkXY45jY4YE04g6Om+Wyc4fpqhjZ75nM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AcCOpi3exLN4JmhmxGtFXrnejCaYjGcgKH5JSJJBEeTURKVy+KE6MnLkFeOZWT0iHf/uce8kjX21JfAFCXkLXOCPmIzBeMaDrWfBUtnFue2PhDSIw9Gi32YjHmrajCbUIGZRZ+QqIOLUmy3p4oSudO9rqmYZJUI1riaCEBI0CYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.42
Received: by mail-vs1-f42.google.com with SMTP id ada2fe7eead31-737de525d2eso5315541137.2
        for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 02:11:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784106659; x=1784711459;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=XLTXQ+jfU88JSGv7Lh/A+xkjnHoYFHk+Tdqt/10T0QY=;
        b=WLIhw3v4u15SSpixT3lkgllWMrbPvoo0GCuSKZs4pd5VC8y4kC4QrfBJPyjd7stkuf
         SknLYOAr06/5X975r2QoCNIIbR2mv4TqISUDcd7SJl1R2LVFLWyLNBCHPkMzkLPdQgeT
         oCEdDvq4FGO+MorhA058HhdLWfGrOeMyOaQ+gV1+3ZAYnRCjWMcAvYhimyeDe3hMk+a7
         k35ZeVGwlUTAr5Tqr7rMZ8W1qeHvdcM+LhRCHW5PtdK3KocgTuylliTDmt4dMpJhWCrN
         x5ImDauJe4JXfpYvoBQULNEZP/s0W6fMSTLx4WuzG5Ge6v8B1+hbYF6viZgArEVUSsQA
         boNQ==
X-Forwarded-Encrypted: i=1; AHgh+Rqig9wK4gJ8yc3cQHdZNCwaPA11MMQWXbq6LhG5aQOrDcemJ2r87/5WUHeuDOqjlrOKnHhniFQBpHb3@vger.kernel.org
X-Gm-Message-State: AOJu0Ywb0SzbgfZHUr736g8dAr1qsIN4rt+L8OQHlLDeIfrveqafGv8e
	xZjTI9ckmAhCAiWcMld5jYmt28+d5EsWtuXrVcdBYdX7wqg2nMTf6zIAKUpYGrlLnAY=
X-Gm-Gg: AfdE7cm9GiO95f1OzyFGjcydrBt3qgEA1fLVwQ7KCdBRyH7c0jIodWwousM4+jBDURa
	ETbQdItI6Ktxr4h1eiFobdtpzoo9yjrrAbFccds0IwQWxytZcurVCw6jMgSQIX0DV7C+1FGzu+W
	wEABsFNNC+Vf2WIHIn2vUlIKw6pDgN7UUOYOmMslPQUCVYywXQnHzCPdhsXzgeDwO4PxcvhF7d4
	IHbnTh2RwYz4OTSMpb7IHqqGOL3Tkz19zrcdVjnHgolVSZJISi9nT/AK+LUxXZfM9tlvwYuvuIV
	RqSZ3mQJnaklOWzGq/CxIbdUp3r1AlN9L5bvMI/3vIwVI1FO+IAb1JSytrj17bYMSmBr8Z4Ep9r
	GDzaWPCgMVmI/RfOf8nDaoaG20tgKv+vk8eM8XJvYXUa8L8t1XFJEJQO688WflO+8QETHM2aHK+
	3uBgPPRAyPOP4eMgs5XsDMnMycnPcLJJk1oEd9qxqqlUk06J51E1feRA==
X-Received: by 2002:a05:6102:26d5:b0:738:8022:d750 with SMTP id ada2fe7eead31-7459a0629f7mr1333941137.23.1784106659448;
        Wed, 15 Jul 2026 02:10:59 -0700 (PDT)
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com. [209.85.221.177])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-744d6dea737sm11683000137.9.2026.07.15.02.10.57
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jul 2026 02:10:58 -0700 (PDT)
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-5bdc96b0714so4099968e0c.2
        for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 02:10:57 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+Rq7FEaMK6hjeqWqginiPk+bogDuuizH9uweSYFoT5hSHXdf2ngO8xkxN0Lej/fJfypHkJIZJG7DrSag@vger.kernel.org
X-Received: by 2002:a05:6102:4425:b0:738:2a8c:736b with SMTP id
 ada2fe7eead31-7459a045858mr1258510137.20.1784106657725; Wed, 15 Jul 2026
 02:10:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1783505142.git.geert+renesas@glider.be> <23f979b0903ca11513ac339ab8b6dd40435603c5.1783505142.git.geert+renesas@glider.be>
 <CAPx+jO-=LF9CvYDrC3O_GBtfHU6GYvq524OLmTG8R1-u27oyKw@mail.gmail.com>
In-Reply-To: <CAPx+jO-=LF9CvYDrC3O_GBtfHU6GYvq524OLmTG8R1-u27oyKw@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 15 Jul 2026 11:10:46 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUAwxs50S7hwWRsSmtRagD7Gu4rodGund4k3r1x1+A5ug@mail.gmail.com>
X-Gm-Features: AUfX_myLu6xhapX4cEw1JPlcU_GnqjYP1lw1RxK8SjV_xKv0JfjeAPhzRG7BCHM
Message-ID: <CAMuHMdUAwxs50S7hwWRsSmtRagD7Gu4rodGund4k3r1x1+A5ug@mail.gmail.com>
Subject: Re: [PATCH v2 4/6] pmdomain: renesas: Add R-Car X5H MDLC driver
To: Ulf Hansson <ulf.hansson@oss.qualcomm.com>
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
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[linux-m68k.org];
	TAGGED_FROM(0.00)[bounces-326793-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ulf.hansson@oss.qualcomm.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:ulfh@kernel.org,m:p.zabel@pengutronix.de,m:wsa+renesas@sang-engineering.com,m:marek.vasut+renesas@mailbox.org,m:kuninori.morimoto.gx@renesas.com,m:devicetree@vger.kernel.org,m:linux-clk@vger.kernel.org,m:linux-pm@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:wsa@sang-engineering.com,m:marek.vasut@mailbox.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-m68k.org:email,linux-m68k.org:from_mime,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid,vger.kernel.org:from_smtp,glider.be:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D523D75C5D8

Hi Ulf,

On Tue, 14 Jul 2026 at 14:04, Ulf Hansson <ulf.hansson@oss.qualcomm.com> wr=
ote:
> On Wed, Jul 8, 2026 at 12:15=E2=80=AFPM Geert Uytterhoeven
> <geert+renesas@glider.be> wrote:
> >
> > Add a minimal Module Controller driver for the R-Car X5H (R8A78000) SoC=
.
> > For now this just supports the always-on power domains, and dummy clock=
s
> > and resets for the serial console (which is enabled by the boot loader)=
.
> >
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

> > --- /dev/null
> > +++ b/drivers/pmdomain/renesas/r8a78000-mdlc.c

> > +static struct generic_pm_domain *r8a78000_genpd_xlate(
> > +                       const struct of_phandle_args *spec, void *data)
> > +{
> > +       struct r8a78000_mdlc_priv *priv =3D container_of(data,
> > +                                       struct r8a78000_mdlc_priv, genp=
d_data);
> > +       struct device *dev =3D priv->dev;
> > +       u32 id;
> > +
> > +       if (spec->args_count !=3D 2)
> > +               return ERR_PTR(-EINVAL);
> > +
> > +       id =3D spec->args[0];
> > +
> > +       if (id >=3D R8A78000_MDLC_PD_AON) {
> > +               dev_dbg(dev,
> > +                       "Mapping HW power domain 0x%x to always-on doma=
in\n",
> > +                       id);
> > +               return r8a78000_genpd_always_on;
>
> This looks odd, but perhaps it's just a temporary mapping that you
> intend to change later, no?

The hardware has multiple always-on domains, but on the software side,
using only one is sufficient.  When needed, it can be changed later.
Other domains will be added later, in the else branch.

> > +       }
> > +
> > +       dev_err(dev, "Unknown power domain 0x%x\n", id);
> > +       return ERR_PTR(-ENOENT);
> > +}

> > +static int r8a78000_genpd_always_on_singleton(struct device *dev)
> > +{
> > +       struct generic_pm_domain *genpd;
> > +       int ret;
> > +
> > +       guard(mutex)(&r8a78000_mdlc_lock);
> > +
> > +       if (r8a78000_genpd_always_on)
> > +               return 0;
> > +
>
> I guess the mutex is used to protect the global
> r8a78000_genpd_always_on, but it looks like that isn't really needed
> based upon how things are being called during the probe.

Why would it not be needed? There are multiple instances of the MDLC
device, but only one instance of the always-on domain.

> > +       genpd =3D kzalloc_obj(*genpd);
> > +       if (!genpd)
> > +               return -ENOMEM;
> > +
> > +       genpd->name =3D "always-on";
> > +       genpd->attach_dev =3D r8a78000_mdlc_attach_dev;
> > +
> > +       ret =3D pm_genpd_init(genpd, &pm_domain_always_on_gov, false);
> > +       if (ret) {
> > +               kfree(genpd);
> > +               return dev_err_probe(dev, ret,
> > +                                    "Failed to create always-on domain=
\n");
> > +       }
> > +
> > +       r8a78000_genpd_always_on =3D genpd;
> > +       return 0;
> > +}
> > +
> > +static int r8a78000_mdlc_probe(struct platform_device *pdev)
> > +{
> > +       struct device *dev =3D &pdev->dev;
> > +       struct device_node *np =3D dev->of_node;
> > +       struct r8a78000_mdlc_priv *priv;
> > +       const struct mdlc_info *info;
> > +       struct resource *res;
> > +       int ret;
> > +
> > +       ret =3D r8a78000_genpd_always_on_singleton(dev);
> > +       if (ret)
> > +               return ret;
> > +
> > +       info =3D of_device_get_match_data(dev);
> > +       if (!info)
> > +               return -ENODEV;
> > +
> > +       priv =3D devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
> > +       if (!priv)
> > +               return -ENOMEM;
> > +
> > +       priv->dev =3D dev;
> > +       priv->np =3D np;
> > +
> > +       res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > +       if (!res)
> > +               return -ENODEV;
> > +
> > +       for (; info->base; info++) {
> > +               if (info->base =3D=3D res->start)
> > +                       break;
> > +       }
> > +
> > +       if (!info->base) {
> > +               dev_dbg(dev, "Unsupported MDLC instance 0x%pa\n", &res-=
>start);
> > +               return -ENODEV;
> > +       }
> > +
> > +       priv->mod_map =3D info->mod_map;
> > +
> > +       scoped_guard(mutex, &r8a78000_mdlc_lock) {
> > +               hlist_add_head(&priv->link, &r8a78000_mdlc_list);
> > +       }
> > +
> > +       ret =3D devm_add_action_or_reset(dev, r8a78000_mdlc_unlink, pri=
v);
> > +       if (ret)
> > +               return dev_err_probe(dev, ret, "failed to add action\n"=
);
> > +
> > +       /* Note that no actual domains are registered, just need transl=
ation */
> > +       priv->genpd_data.xlate =3D r8a78000_genpd_xlate;
> > +       ret =3D of_genpd_add_provider_onecell(np, &priv->genpd_data);
> > +       if (ret)
> > +               return dev_err_probe(dev, ret,
> > +                                    "Failed to register genpd provider=
\n");
> > +
> > +       ret =3D devm_add_action_or_reset(dev, r8a78000_genpd_del_provid=
er, np);
> > +       if (ret)
> > +               return dev_err_probe(dev, ret,
> > +                                    "failed to add unregister action\n=
");
> > +
> > +       priv->rcdev.ops =3D &r8a78000_mdlc_reset_ops;
> > +       priv->rcdev.of_node =3D np;
> > +       priv->rcdev.of_reset_n_cells =3D 1;
> > +       priv->rcdev.of_xlate =3D r8a78000_mdlc_reset_xlate;
> > +
> > +       ret =3D devm_reset_controller_register(dev, &priv->rcdev);
> > +       if (ret)
> > +               return dev_err_probe(dev, ret,
> > +                                    "Failed to register reset controll=
er\n");
> > +
>
> In some of the error paths above it looks like we end up leaking the
> data allocated for r8a78000_genpd_always_on. Perhaps clean up that
> somewhere here.

That is intentional: the always-on domain is shared by all MDLC
instances.  If one MDLC fails to probe, the MDLC instances that did
succeed still need the always-on domain.

>
> > +       return 0;
> > +}
>
> [...]
>
> In regards to the merge strategy, I intend to pick patch 2 (shared via
> the immutable dt branch) and $subject patch. Please let me know if
> there are any issues with that.

That is fine, thanks!

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

