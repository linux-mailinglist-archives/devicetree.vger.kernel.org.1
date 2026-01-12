Return-Path: <devicetree+bounces-253892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 64EB2D126CD
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 12:59:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7672B307894F
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 11:58:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3C9935770B;
	Mon, 12 Jan 2026 11:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b="l3OGzIUN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5883570D1
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 11:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768219133; cv=none; b=dHfYclm15Dds0EarH5sCVNzs/EXUAJ0iCT2Bbj4JmqmBuoIIS6XMJBGmUmIo/pyXlD466GY1Tdx+1FBmSDS/tM4rG2rpdcWBq6y0pRdI5E5Swe8lAGUogmWQ1t4OAgomMmZNDZpoANgwrbHSYvQ7X4yG1AKG0UIx4pOyr2aXJog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768219133; c=relaxed/simple;
	bh=lAO33T1KFMqFpJot8ObRF3j6h3bz9TaOzcEeSel5n4M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TMRVGYY5kOojMh1l/nsZ2J98KPPxEgPAFtT37q7NZuBG2W6gKKK0OAt3/3KN4q+Q1s3TfBMkuvnZU2YByonfFHpIcy76NtjuB/Gu33CGVUOlSYDufaBfjE76Sht9o1luonen06yTNdyzUrkJiAwNMy1gB9/RyoTSs7h5cD784pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org; spf=none smtp.mailfrom=brainfault.org; dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b=l3OGzIUN; arc=none smtp.client-ip=209.85.160.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=brainfault.org
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-3ffbfebae12so1939077fac.2
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 03:58:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20230601.gappssmtp.com; s=20230601; t=1768219131; x=1768823931; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/STUq3tlNYx1CRPqYo/MSQ91muzU5RYxKWjoD/GoBRc=;
        b=l3OGzIUNKhjHJigxQGv0u0n/pGgC0LeyF5T3bcPEnij4UBPH6UDD8kLP8f2z9bXITB
         OcGiZNv0Nzjh+EREf2NKZYcwRFnHPgZVWuv60M525kqlBkjFgPlLT1idGyJcFYupXgKm
         atlqKCBeHvL6IQTa0XShEERKdwQ2ykwZtVNrZ2J56mF2XbhokHL1IF+bCryn8A9dO6wR
         Z1TSROdBVOivCYzHz6RJ1VIRNvgckUqEEXbWzegqS4rNg85G7OwSaOcrSsgEkXBpVMmC
         J4VeCzsmy2Jj9K9aFTH50SpcCxoWttPlQlRITxxz2kvKs/uIBG1K9yIWfy6nArDHarfy
         foaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768219131; x=1768823931;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/STUq3tlNYx1CRPqYo/MSQ91muzU5RYxKWjoD/GoBRc=;
        b=b82/Yu+RCRUoccBm9JTOCXAjWLmpTF+nMawYpQlXVrwCgQFMHPEoPjOl4lnRyBQPWt
         vI+ybKMFIxix4PWVJ0ojdLXRyiC6IfypNvZ2LaP/sETSTguiwqw3DEAX0Ygawbw2ESQ2
         Kt4D2zO3o78thlHt94ceGcb4lkFk9G19AlO1it/8CwtxuccBj2JOYq//2j/j/4MHxQT0
         w7ZnzUZliATvsnsVfbwuIo10gmSwqEjQ7TlNf1TAmPuaXp3A6Kx+l+bzUsHjr3AmOd5X
         tp8YGvrycJntgZSv+IH2yLSBH9B4WN66p5rHTEGDkwYo0IsWMgKCwDEdsdrlx79cXrID
         +NRw==
X-Forwarded-Encrypted: i=1; AJvYcCU0AzsWQowk7EoKZU4szOpqlUxcfV2uEhDi4DD6IvR0nR2tu04bAdabz/2ue+jNjITzdOlvZG913EhY@vger.kernel.org
X-Gm-Message-State: AOJu0YzH1Qku+o2vY2U+kEkW+W184IjQYqohpWu+jPsP0PZjwZ0N5+H4
	si/81YXLQ+EbPnQMlD5tCahALFoOWsBzbPKiEspMY4YgdXQVddwZwHGypR8ABY89IVGS9KQXCSA
	4T2rOXNI1oW5rDPvGA9+ZsxvEs6F1HPF2lkqvtno+Ew==
X-Gm-Gg: AY/fxX7f1Nn3klhNUOyCS/o6+4mUVDnrElmwbwJAezyIOR5Fyk+b4kMmaro3jehbq3q
	+Dt41FSBfISY9vt4UZKg7lBMJ1NMEIF5ZkRkVmu6mSim/8TQi9sBDqkn0E767o283DH7Pex9LyV
	CcUcvFonALpbhNjq0DknzYUM3Sc+hjhitS0PbV4wjmCL4C67/O0cUVXvBda5ECUJT+i/vPSWBo6
	HmMzJRmrXVsENJNNRcxQFx9sS35c2Hj7WmdmLuHUNnjbC4mu3JvQIdL6DkDRjtVXChK1M/Ra/u1
	N/vQikY44Dbvl05JtrzQVJ/02cWXRe26hVhsHpV0SiAGHTfhMQA/rXwDcw==
X-Google-Smtp-Source: AGHT+IF39t3pEDBTDiz8rtvG2ug4qMAL7z0aOTj1Od1tfioVHcOSk11OADaheOvt4o4y6lBRYQlM3myJcoiNTwzaEUw=
X-Received: by 2002:a05:6820:625:b0:65f:6705:3f83 with SMTP id
 006d021491bc7-65f6705421amr5066461eaf.28.1768219130936; Mon, 12 Jan 2026
 03:58:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260106092117.3727152-1-joshua.yeong@starfivetech.com>
 <20260106092117.3727152-5-joshua.yeong@starfivetech.com> <CABdD5xmVVkQu6rYzF52V-JrsdL=NOQa9N9i8PsMgfaOh3GT-Bg@mail.gmail.com>
In-Reply-To: <CABdD5xmVVkQu6rYzF52V-JrsdL=NOQa9N9i8PsMgfaOh3GT-Bg@mail.gmail.com>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 12 Jan 2026 17:28:39 +0530
X-Gm-Features: AZwV_QiG8kGYWz6U6xcjoWbaLPAqYlKLwNkT660rcNE0-IopoQC27BXEnEP-0xA
Message-ID: <CAAhSdy17NphDM=bgyvM-eNA9DAGku6p56HSXv5hgZh5VmMfE7Q@mail.gmail.com>
Subject: Re: [PATCH 4/5] cpufreq: Add cpufreq driver for the RISC-V RPMI
 performance service group
To: Rahul Pathak <rahul@summations.net>
Cc: Joshua Yeong <joshua.yeong@starfivetech.com>, leyfoon.tan@starfivetech.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, pjw@kernel.org, 
	palmer@dabbelt.com, aou@eecs.berkeley.edu, alex@ghiti.fr, rafael@kernel.org, 
	viresh.kumar@linaro.org, sboyd@kernel.org, jms@oss.tenstorrent.com, 
	darshan.prajapati@einfochips.com, charlie@rivosinc.com, 
	dfustini@oss.tenstorrent.com, michal.simek@amd.com, cyy@cyyself.name, 
	jassisinghbrar@gmail.com, andriy.shevchenko@linux.intel.com, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 12, 2026 at 4:18=E2=80=AFPM Rahul Pathak <rahul@summations.net>=
 wrote:
>
> > +
> > +static int rpmi_cpufreq_probe(struct platform_device *pdev)
> > +{
> > +       struct device *dev =3D &pdev->dev;
> > +       struct rpmi_perf *mpxy_perf;
> > +       struct rpmi_ctx *mpxy_ctx;
> > +       int num_domains =3D 0;
> > +       int ret, i;
> > +
> > +       mpxy_ctx =3D devm_kzalloc(&pdev->dev, sizeof(*mpxy_ctx), GFP_KE=
RNEL);
> > +       if (!mpxy_ctx)
> > +               return -ENOMEM;
> > +
> > +       /* Setup mailbox client */
> > +       mpxy_ctx->client.dev            =3D dev;
> > +       mpxy_ctx->client.rx_callback    =3D NULL;
> > +       mpxy_ctx->client.tx_block       =3D false;
> > +       mpxy_ctx->client.knows_txdone   =3D true;
> > +       mpxy_ctx->client.tx_tout        =3D 0;
> > +
> > +       /* Request mailbox channel */
> > +       mpxy_ctx->chan =3D mbox_request_channel(&mpxy_ctx->client, 0);
> > +       if (IS_ERR(mpxy_ctx->chan))
> > +               return PTR_ERR(mpxy_ctx->chan);
> > +
> > +       ret =3D rpmi_cpufreq_attr_setup(dev, mpxy_ctx);
> > +       if (ret) {
> > +               dev_err(dev, "failed to verify RPMI attribute - err:%d\=
n", ret);
> > +               goto fail_free_channel;
> > +       }
> > +
> > +       /* Get number of performance domain */
> > +       ret =3D rpmi_perf_get_num_domains(mpxy_ctx, &num_domains);
> > +       if (ret) {
> > +               dev_err(dev, "invalid number of perf domains - err:%d\n=
", ret);
> > +               goto fail_free_channel;
> > +       }
>
> The domain space in RPMI performance for CPU and Device
> is not separate and a domain can be either CPU or a Device.
> How the driver will make sure that the domains which are returned
> are CPU only and not the device.
>
> > +MODULE_DEVICE_TABLE(of, rpmi_cpufreq_of_match);
> > +
> > +static struct platform_driver rpmi_cpufreq_platdrv =3D {
> > +       .driver =3D {
> > +               .name =3D "riscv-rpmi-performance",
> > +               .of_match_table =3D rpmi_cpufreq_of_match,
> > +       },
> > +       .probe =3D rpmi_cpufreq_probe,
> > +       .remove =3D rpmi_cpufreq_remove,
> > +};
> > +
> > +module_platform_driver(rpmi_cpufreq_platdrv);
> > +
> > +MODULE_AUTHOR("Joshua Yeong <joshua.yeong@starfivetech.com>");
> > +MODULE_DESCRIPTION("CPUFreq Driver based on SBI MPXY extension");
>
> NIT: CPUFreq driver based on SBI MPXY extension and RPMI protocol   -
> something like this

Currently, the mailbox controller is based on SBI MPXY but in
the future mailbox controller for some other RPMI transport can
also show up.

In reality, the driver is only RPMI based since it uses mailbox APIs.

Regards,
Anup

