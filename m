Return-Path: <devicetree+bounces-243398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 9210EC97686
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 13:55:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3A70B345EDC
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 12:53:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DAFC30FF03;
	Mon,  1 Dec 2025 12:51:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com [209.85.221.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F177313266
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 12:51:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764593473; cv=none; b=m1PClCkZK/BhABmmbDs1Z+V9l6gf+qhDDJv+tphPwRT8nHb0NjW2SQod/+R1UgfvUuQbUlFBZyAiXRjLO7bfvNI3oq+qDP6OQ7DI6vT8Us/MaCr4w8znoisulgCNvaRpY0NTeqCliqiOegchnue1e7EVwjNw/7RdM+4djaIAXGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764593473; c=relaxed/simple;
	bh=oa0Mi/BLS5jmXiXCx7iC+Sy/f4NRdZwlxsSnB/W3n2s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iREYSQPGE0XeBYnFGqFxrdnUE97eYi77gps+O75Dj6TTaL36FuwZa/03k5Lq614h48uk5dmsDNCm48dP0eag5AB23CFyzJv2RRBoCqIGblxN6960WNaeUit+0h5rx8tJPfZ/Rt5xXy5L+31/r4KzpzmBELCFdw6ePBBxE+abOxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f174.google.com with SMTP id 71dfb90a1353d-559748bcf99so3457182e0c.3
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 04:51:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764593470; x=1765198270;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=G1BGzDLN1R1JGgXQ6CQ3taCjUV+Gm29hEf+1YCf3TZQ=;
        b=l52DxyWB5/MgcTbmQ1IdsZJWT38cVQo1xfAld91dVKdb5BqEo0VGUF2DZ/NqxL7g4V
         Q0+91WVa5U2Nymb/cCYsOk1LesjCSG1TY9fNr9xCdU35YqtzLKeDPHcWQIKkEugilv98
         8PtgtEaVuY/QO9ucP0tlhmbI8BN60RcRVvKrQWI6GknnD2bZirGydiGjeDtQ8Z853tAg
         tExwADSdEUrbWfQrbZ4lZ/Hj5iNDMYhokN+nHlkKO7608+QCMQHa1ynUw1ALUQmVJrQy
         5qszYcpWEE/tpJ06puCCm1LZe15nYExHcnKKy5ftlW5p+IBz3JwGMndL/mpDgjEcj/NP
         ch5g==
X-Forwarded-Encrypted: i=1; AJvYcCUHppDVN8epyGLDWQwzLziVd2RcNAOwJB9XJJk0AUczR0JvOpWw7w1VOboc5ZDtorjBmmtu4kVMuFAd@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+jZTgpBpC9042B/7GKZcLEtM5c0bubccUQKTE36DHI1c2MEq3
	XcIkCHq38PSR+xIsRT81FrF50Vuh24iFuDyhN4ITRQoBBGQLMR2t47R2wd9u4yiy
X-Gm-Gg: ASbGncsvoTONom/BijPCEeRpOxvp4iBjo4SNDVOh5tSTMobDvRmJ74ylSbmT4pAJsYH
	E6HvByX5db0ocBvpKs6RY9Hd8nIp6URd22Im+qHwkWGB/WXdPDtHfH7NJm8rFqqmwpEErwZsEuB
	UBcAp6tlMIOkvbHbVDl/th3cuoAcc5lCtwCMZjlqLUja8GI81oNkeBSBo777zX0skMXQUxhF15I
	v7qSO6gL5huR5IU4aataeeCPy5wqA+EGrIe7S90qwyTfaOsObBAY/XRc2z+imdBsPKdls7JPGu1
	WZjb9EyMoY8CM4xQGjhF35pCW4aYOACXZg0nELM076PBwLCYCP2pUQ2BYH1MAUiuyc9ug0ysdew
	HiWWTLkuLrkpxZ7mtCGdjNXl17ifoLwEJ42Ic0ejKNhLej+hWcMM8kEl5q+tQOZ9ifHLLDYJJES
	JJuA0petdMyoM+tGEhEveDIkITGmNmy2J24ZYjVDygx2XOP67FqErAK5s3Qxg=
X-Google-Smtp-Source: AGHT+IEEi9Qfod02X0p6PKsYsoso8eCeCHlzht3lb77rtMyIunvBgdzeWQ/PCxcuixArEdfruPRUCQ==
X-Received: by 2002:a05:6122:3c46:b0:549:f04a:6eb3 with SMTP id 71dfb90a1353d-55cd760e129mr9049595e0c.9.1764593470188;
        Mon, 01 Dec 2025 04:51:10 -0800 (PST)
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com. [209.85.222.49])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55cf518c3efsm5118527e0c.22.2025.12.01.04.51.09
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Dec 2025 04:51:09 -0800 (PST)
Received: by mail-ua1-f49.google.com with SMTP id a1e0cc1a2514c-93722262839so2552183241.2
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 04:51:09 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXf8arPSK8l6mH6LGPmd2Wz+wwT5Rw/lWB2T/FbR7rLhe/uoKA6+VBwlG70KOAI04DB0mQaRVTdtlNJ@vger.kernel.org
X-Received: by 2002:a05:6102:5088:b0:5db:d07c:21a9 with SMTP id
 ada2fe7eead31-5e224446a1cmr9883195137.35.1764593469159; Mon, 01 Dec 2025
 04:51:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <fbe6fc3657070fe2df7f0529043542b52b827449.1763116833.git.geert+renesas@glider.be>
 <dyaqe3ssrn65r5xndlwe7tlbiw2lbwvu3q3lzusfgr5mgycp6h@gfzyxk7uyva7> <CAL_JsqJ4q2=UJbuhfbvsbr2T+SRGXsPSXCLk6iXZid_qwYrN4g@mail.gmail.com>
In-Reply-To: <CAL_JsqJ4q2=UJbuhfbvsbr2T+SRGXsPSXCLk6iXZid_qwYrN4g@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 1 Dec 2025 13:50:58 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXsZwDaT8L5z9KzyX0FF4WVbvZhsGAtSK7pJ=nCr4hE4Q@mail.gmail.com>
X-Gm-Features: AWmQ_bn0levNvTNVS9RDSKOkcvi1UrTGQjZm0ie0oiFI0hrGaViWT9ykBE3XFb4
Message-ID: <CAMuHMdXsZwDaT8L5z9KzyX0FF4WVbvZhsGAtSK7pJ=nCr4hE4Q@mail.gmail.com>
Subject: Re: [PATCH v2] of/irq: Ignore interrupt parent for nodes without interrupts
To: Rob Herring <robh@kernel.org>
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>, Saravana Kannan <saravanak@google.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Samuel Holland <samuel@sholland.org>, Marc Zyngier <maz@kernel.org>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Magnus Damm <magnus.damm@gmail.com>, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob,

Thanks, I was just looking into this...

On Mon, 1 Dec 2025 at 13:09, Rob Herring <robh@kernel.org> wrote:
> On Fri, Nov 28, 2025 at 10:43=E2=80=AFAM Ioana Ciornei <ioana.ciornei@nxp=
.com> wrote:
> > On Fri, Nov 14, 2025 at 11:47:54AM +0100, Geert Uytterhoeven wrote:
> > > The Devicetree Specification states:
> > >
> > >     The root of the interrupt tree is determined when traversal of th=
e
> > >     interrupt tree reaches an interrupt controller node without an
> > >     interrupts property and thus no explicit interrupt parent.
> > >
> > > However, of_irq_init() gratuitously assumes that a node without
> > > interrupts has an actual interrupt parent if it finds an
> > > interrupt-parent property higher up in the device tree.  Hence when s=
uch
> > > a property is present (e.g. in the root node), the root interrupt
> > > controller may not be detected as such, causing a panic:
> > >
> > >     OF: of_irq_init: children remain, but no parents
> > >     Kernel panic - not syncing: No interrupt controller found.
> > >
> > > Commit e91033621d56e055 ("of/irq: Use interrupts-extended to find
> > > parent") already fixed a first part, by checking for the presence of =
an
> > > interrupts-extended property.  Fix the second part by only calling
> > > of_irq_find_parent() when an interrupts property is present.
> > >
> > > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

> > > --- a/drivers/of/irq.c
> > > +++ b/drivers/of/irq.c
> > > @@ -613,7 +613,7 @@ void __init of_irq_init(const struct of_device_id=
 *matches)
> > >                * are the same distance away from the root irq control=
ler.
> > >                */
> > >               desc->interrupt_parent =3D of_parse_phandle(np, "interr=
upts-extended", 0);
> > > -             if (!desc->interrupt_parent)
> > > +             if (!desc->interrupt_parent && of_property_present(np, =
"interrupts"))
> > >                       desc->interrupt_parent =3D of_irq_find_parent(n=
p);
> > >               if (desc->interrupt_parent =3D=3D np) {
> > >                       of_node_put(desc->interrupt_parent);

> > This change irq-ls-extirq and commit 6ba51b7b34ca ("of/irq: Handle
> > explicit interrupt parent") does not help with the issue.
> >
> > This is how the DT node in lx2160a.dtsi looks like:
>
> ls-extirq strikes again!
>
> I think something like this should fix it:
>
> diff --git a/drivers/of/irq.c b/drivers/of/irq.c
> index 2271110b5f7c..c06c74aef801 100644
> --- a/drivers/of/irq.c
> +++ b/drivers/of/irq.c
> @@ -593,7 +593,8 @@ void __init of_irq_init(const struct of_device_id *ma=
tches)
>                  * are the same distance away from the root irq controlle=
r.
>                  */
>                 desc->interrupt_parent =3D of_parse_phandle(np, "interrup=
ts-extended", 0);
> -               if (!desc->interrupt_parent && of_property_present(np, "i=
nterrupts"))
> +               if (!desc->interrupt_parent &&
> +                   (of_property_present(np, "interrupts") || of_property=
_present(np, "interrupt-map"))

That should indeed restore the previous behavior, and find again
"interrupt-parent =3D &gic" in the root node.  However, wouldn't it
be more correct to follow the approach used for interrupts-extended,
and use the first interrupt parent from the interrupt-map (which is
coincidentally &gic, too)?

>                         desc->interrupt_parent =3D of_irq_find_parent(np)=
;
>                 else if (!desc->interrupt_parent)
>                         desc->interrupt_parent =3D of_parse_phandle(np, "=
interrupt-parent", 0);
>
> But really, at some point it should be converted to a proper driver as
> there's no reason extirq needs to be initialized early.

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

