Return-Path: <devicetree+bounces-254269-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 47220D16B3E
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 06:32:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BC482300B376
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 05:32:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CCC72D7DC4;
	Tue, 13 Jan 2026 05:32:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=summations-net.20230601.gappssmtp.com header.i=@summations-net.20230601.gappssmtp.com header.b="T0LX/2xk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f41.google.com (mail-yx1-f41.google.com [74.125.224.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B99AB1E834E
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 05:32:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768282329; cv=none; b=pHPN/mIyBuE0fl6HhR7IGL86ODlnySBcQEpqu/1amBUQ8o5bPHj8effMJeB1VeF8xhO4f5VVlOSGlRf+ldSn9TLj0r5NbdEXnl1IixRzK3no7CsbUe7RT0wJnnJ2k4CRSel+oWF2GgpT8UAoC61XhT7Jg+qmTohcgdbp+c3PGxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768282329; c=relaxed/simple;
	bh=NZl5a9oJSVbgl2RISi16U73Rp9GHxWVa3xTYWKGHssA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LDZje9LSJRnyWoMsNMmNmN51n6ITADccYBAdxmxA11Kw3DiU4eD3w8jr/U5v7hNWs1m0TDbC84Z3Sdd0vIVUA72lDiSUQprKD/3ebF+DfAdS2K5VGrzk8PLnMd/k6JWexpt3h03L9Aly73jdMNSkp8OBaHnJUY9I4x9BTaYajwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=summations.net; spf=pass smtp.mailfrom=summations.net; dkim=pass (2048-bit key) header.d=summations-net.20230601.gappssmtp.com header.i=@summations-net.20230601.gappssmtp.com header.b=T0LX/2xk; arc=none smtp.client-ip=74.125.224.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=summations.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=summations.net
Received: by mail-yx1-f41.google.com with SMTP id 956f58d0204a3-6466d8fd383so6907815d50.2
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 21:32:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=summations-net.20230601.gappssmtp.com; s=20230601; t=1768282327; x=1768887127; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Sy4LMdldTGwISdglwEP/iBB5uJvH/fDPeL6tN/GI50Q=;
        b=T0LX/2xkmQ3a2phC+4QiDIY/3RiGK36BDngf/31gyjRFqlcQbEjVXey5sdkd4+2UvZ
         b4XKFhRSb6vUe8JyrGGaEP33j91ts9OPquWSk87ESmSat0LzLUVlSFunsQVpARD//wQ9
         XRDysJFxDDGhkKl1D3muczxFrnRxouiekirAUml/ap/qTfklBCaQf23s2GGjyuZxBZ0j
         x5G2RrStLPRHS+xc8nkbEWiIQD5zSJYB2iXyNdEGTm9AVV7IlSHunsUX/YMtDGKUCGkZ
         BLXqM6TF86X0LvEhtXHF5fDafXnFlfMvIlA0Pa8LDmw/BfZGoUchl7FdvCTN5yQp/73p
         YlyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768282327; x=1768887127;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Sy4LMdldTGwISdglwEP/iBB5uJvH/fDPeL6tN/GI50Q=;
        b=QpiPnJGfgb9jebtvn4F7H7+ilwpH4Ei9zOPtPPSuPmB6Ok+0/R+U2sRA+2BtGz9JL1
         OkQU2WpzLC2CjU/32Ooia/scgWNzhdjuPX5LJDVJzK0jii3Cv/OTIyMHvqI8rj7eYoHR
         4Gy2yaKDCgHjlKZ5GB4pvX8SNkIpHHQnPknShjEm1MOCbL2A+oZ6i0Bmq3lULVUXtsV8
         zLIIS/iMpNPlat8GRE2mqtWSc3QkHqKf2+Fa2i11o4sEWSuRArcVhX+BzuvIbeu5rs7D
         wYeWfWVZZ8nrI2UA6z3aeinjcVfZeM0+cUx+HBlzW7VuULkR1VF2sxsii9i7XK9EnAQK
         4l1w==
X-Forwarded-Encrypted: i=1; AJvYcCWl6ysBSMmTK+QW4TMLmyoB1N5DkD05yc9+fnw1cDt90IroenvkYbAMoe/ulZHe8CCledHmeNpBPJfs@vger.kernel.org
X-Gm-Message-State: AOJu0YwcZYmAxB6MkTCLnOj+F3Vxktym1xHVoIsHERTSVq+bdDUqsQOw
	zxlIospe8GqbqDqbWIDtStd8GHRKEJkNVOwxvurRbzsXSEjfJfyzdMeDPy3mAH94Py/IN9PhcRN
	UrfTegfM7SuSuk0KQjOfLHXDlTKF2uHRLJxT+OzqQoKU=
X-Gm-Gg: AY/fxX67+HK4bTQaadZrZw/40rIe5WKdiAGHCcg21YYuaAJ9E7X5yMKj+ileULuedIL
	Vg3/NMK8g7GPJzPLC4lRQSsZKC7G9hBjtldPorTaO334SYFJpFN4RW1xykbfPgrpdGMkFkZ7In3
	NqFBKQflfaO6/Vb3HieGEoY3rQy5opynik9Og2xx+ZUzmt7rSwIxGsPSRB06XwrrSR22IxDOfJ3
	B53jPo6aq32TTekCUhbkVddZQaB4tevG3zAPXw4+Qns9xuNla48/ArYqg/qlUshuEmyj+gGrg==
X-Google-Smtp-Source: AGHT+IExqIdWS0cjfIxtkM38Mzck94Xq9kYShJuru8AXTnzNUNT6kOmvzgIPXGX80q+0JKl1Y4AKJl2QiWpSOmYRDGI=
X-Received: by 2002:a05:690e:120f:b0:641:f5bc:696c with SMTP id
 956f58d0204a3-64716c60119mr16680207d50.72.1768282326574; Mon, 12 Jan 2026
 21:32:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260106092117.3727152-1-joshua.yeong@starfivetech.com>
 <20260106092117.3727152-5-joshua.yeong@starfivetech.com> <CABdD5xmVVkQu6rYzF52V-JrsdL=NOQa9N9i8PsMgfaOh3GT-Bg@mail.gmail.com>
 <SH0PR01MB0841EF813268269C2AE59372F98E2@SH0PR01MB0841.CHNPR01.prod.partner.outlook.cn>
In-Reply-To: <SH0PR01MB0841EF813268269C2AE59372F98E2@SH0PR01MB0841.CHNPR01.prod.partner.outlook.cn>
From: Rahul Pathak <rahul@summations.net>
Date: Tue, 13 Jan 2026 11:01:55 +0530
X-Gm-Features: AZwV_QjboB7fQnipHJLOjXWMnr27h-8kUlIUc9Twa974XLrlL36DjBouoLomDys
Message-ID: <CABdD5x=T0pXWCSHL+An2Nwsaz-kbYnGga5vt0OfdCwm-o493Dw@mail.gmail.com>
Subject: Re: [PATCH 4/5] cpufreq: Add cpufreq driver for the RISC-V RPMI
 performance service group
To: Joshua Yeong <joshua.yeong@starfivetech.com>
Cc: "anup@brainfault.org" <anup@brainfault.org>, Leyfoon Tan <leyfoon.tan@starfivetech.com>, 
	"robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>, 
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "pjw@kernel.org" <pjw@kernel.org>, 
	"palmer@dabbelt.com" <palmer@dabbelt.com>, "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>, 
	"alex@ghiti.fr" <alex@ghiti.fr>, "rafael@kernel.org" <rafael@kernel.org>, 
	"viresh.kumar@linaro.org" <viresh.kumar@linaro.org>, "sboyd@kernel.org" <sboyd@kernel.org>, 
	"jms@oss.tenstorrent.com" <jms@oss.tenstorrent.com>, 
	"darshan.prajapati@einfochips.com" <darshan.prajapati@einfochips.com>, 
	"charlie@rivosinc.com" <charlie@rivosinc.com>, 
	"dfustini@oss.tenstorrent.com" <dfustini@oss.tenstorrent.com>, 
	"michal.simek@amd.com" <michal.simek@amd.com>, "cyy@cyyself.name" <cyy@cyyself.name>, 
	"jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>, 
	"andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>, 
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 13, 2026 at 8:05=E2=80=AFAM Joshua Yeong
<joshua.yeong@starfivetech.com> wrote:
>
> On Monday, January 12, 2026 6:47 PM, Rahul Pathak <rahul@summations.net> =
wrote:
>
> > > +
> > > +static int rpmi_cpufreq_probe(struct platform_device *pdev) {
> > > +       struct device *dev =3D &pdev->dev;
> > > +       struct rpmi_perf *mpxy_perf;
> > > +       struct rpmi_ctx *mpxy_ctx;
> > > +       int num_domains =3D 0;
> > > +       int ret, i;
> > > +
> > > +       mpxy_ctx =3D devm_kzalloc(&pdev->dev, sizeof(*mpxy_ctx), GFP_=
KERNEL);
> > > +       if (!mpxy_ctx)
> > > +               return -ENOMEM;
> > > +
> > > +       /* Setup mailbox client */
> > > +       mpxy_ctx->client.dev            =3D dev;
> > > +       mpxy_ctx->client.rx_callback    =3D NULL;
> > > +       mpxy_ctx->client.tx_block       =3D false;
> > > +       mpxy_ctx->client.knows_txdone   =3D true;
> > > +       mpxy_ctx->client.tx_tout        =3D 0;
> > > +
> > > +       /* Request mailbox channel */
> > > +       mpxy_ctx->chan =3D mbox_request_channel(&mpxy_ctx->client, 0)=
;
> > > +       if (IS_ERR(mpxy_ctx->chan))
> > > +               return PTR_ERR(mpxy_ctx->chan);
> > > +
> > > +       ret =3D rpmi_cpufreq_attr_setup(dev, mpxy_ctx);
> > > +       if (ret) {
> > > +               dev_err(dev, "failed to verify RPMI attribute - err:%=
d\n", ret);
> > > +               goto fail_free_channel;
> > > +       }
> > > +
> > > +       /* Get number of performance domain */
> > > +       ret =3D rpmi_perf_get_num_domains(mpxy_ctx, &num_domains);
> > > +       if (ret) {
> > > +               dev_err(dev, "invalid number of perf domains - err:%d=
\n", ret);
> > > +               goto fail_free_channel;
> > > +       }
> >
> > The domain space in RPMI performance for CPU and Device is not separate=
 and a domain can be either CPU or a Device.
> > How the driver will make sure that the domains which are returned are C=
PU only and not the device.
>
> I think we need to enhance the RPMI spec to include information for types=
 of device.
> What do you think?
>
> >

Yes

