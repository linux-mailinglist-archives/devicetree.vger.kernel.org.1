Return-Path: <devicetree+bounces-66927-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 44FCC8C5AF6
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2024 20:19:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 67DAB1C2140E
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2024 18:19:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 466581802D7;
	Tue, 14 May 2024 18:19:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="isw+Pfi/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6C2A1802C7
	for <devicetree@vger.kernel.org>; Tue, 14 May 2024 18:19:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715710778; cv=none; b=dlxX4cB4Rt8h/UQeebe8Lev64lCLH1177vQOSwuCVkkXHO4nSs+cDprPUbTYjxmNRBVbFuiyRaExQhUAkhBzeqnxklA4Zrvo948dxcDRIy4NcxsUSae+b5NLpvLV5Ep0pJidcGSuBvc9dyqGkFb+DO02ND8p5DfmbDZiL2sKJN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715710778; c=relaxed/simple;
	bh=+DLHFMor8079n/BB8RkUJ/VOUShgeXzscCnjU4l20JQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SplDawEHPrDOLZiA8Mrm4ukefyiD0FEaLrhTw8ppwuxE9ZydASDthB7XbSEoTxQ6GCFljCUvxx9oo6rEr5IxXj8r8HCnrvBI4taODNTUyda5wUR9ufcL3fhb16f47/fTlFLxPqSubwpHE8oLBvvPyDgi8J9tTUwr8uOm0Tf976E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=isw+Pfi/; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-1f0537e39b3so31944045ad.3
        for <devicetree@vger.kernel.org>; Tue, 14 May 2024 11:19:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1715710776; x=1716315576; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F4yE8PHtXF9AkX0GwPOppSksjMPPZgrt95Kyo7zIpUQ=;
        b=isw+Pfi/shoQ2/8/MNwhoMiro/SiuYSp7kzRYKD0tyJU1zBzJ4TcDL25PBz8JZ46vg
         KnIkwYBI6hk27j/w7uD4KdPRMeE9QVgphgjRDBBkbBr02bLHQGocEMjt/niaYtbmMC53
         Gg0T+oZjfDAI77O3kAVs1fgwbKPTXHsUt6GV0Wd1vrQ84goCPzTSaEzryRPm+n64YoJQ
         3jYk0U7yULuy3FE6y8wIYDs7M/id7iCgX9vD71rZDPwtsuVmwa3Vl2qDv9voaQSHa3r4
         CPiE9u2hoIQAsaaLn0D+WCSYJhy1cxwGnDnWSV/RPUSBxAseGcdcHPQp0Y/wha7TqL3Z
         +cKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715710776; x=1716315576;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F4yE8PHtXF9AkX0GwPOppSksjMPPZgrt95Kyo7zIpUQ=;
        b=saqLD3gCqL/vqxzxAP34ANEzP7O7blkZdR/my5TXX6EebRHQQNhS3AlpEiYqLrL6FS
         alrZDv81rSCxkPaqlQwLYhCD3RQzLkuAGMxjPTUTIAC9a09ewdzh5mFkbf6y4v68flVE
         opoyAQ9i5HtCCfvFvN6Zlso27TIbib+P3ruv+Xk8LxxE7YkGyLUVBZV/ZH3DxcqXBv70
         odwAK4wiVOTgsaahpGuu9gYndoPDxudSSq98PibiSCbS+EcgJ6yQ3QCStl3Q4mnWtFM5
         UeRKusXg1Wh+VIYvw6PzDJdtCTkpg9RUYKR+RnWVPWSzQGPWT33VNtaqPriXa0RziXq4
         Ufsg==
X-Forwarded-Encrypted: i=1; AJvYcCVvIF/9NNJHwzQJRdPdqNGcpphvEww7fYsHu/C8uYAv1jcE6YR6+GzypljLpB8vBfw9Ud2SSKsVaWdxAi1YEUwQM6AqBzBgxn2HjQ==
X-Gm-Message-State: AOJu0YyaRX3xTPpokP4YLIHAdu1YaAvMSXYrvXIlPslY3mzdcr08Kxl/
	tTALTWqse60yO1uFjim9h8hHgag5wmOCmxVUHbQiP7gztOEkrJlhEfrOFs82vhVnsUJtAtSGxKc
	Sc7X9HNErSGYlpJAwc/SJkPBqvORBQuXf2s3Q6A==
X-Google-Smtp-Source: AGHT+IGrNPfGRNY9rxybr2+ATyOBM4sZ06JwqWI7W036mxj+C9hBk3WrEH1mxMbLyVOJaL28BsB71FX2eT5wnG5Zvgw=
X-Received: by 2002:a17:902:f70d:b0:1e5:8769:aadc with SMTP id
 d9443c01a7336-1ef43d26f24mr156761075ad.22.1715710776174; Tue, 14 May 2024
 11:19:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1714752293.git.tjeznach@rivosinc.com> <b28d4fe49c5fe4e3ece9de789cfd92cfa5b3c16c.1714752293.git.tjeznach@rivosinc.com>
 <CANXhq0q+aQ1T37j4uQi5ryUyPxBtvQkaBJ9qvS9iGwSRGaQSyQ@mail.gmail.com>
In-Reply-To: <CANXhq0q+aQ1T37j4uQi5ryUyPxBtvQkaBJ9qvS9iGwSRGaQSyQ@mail.gmail.com>
From: Tomasz Jeznach <tjeznach@rivosinc.com>
Date: Tue, 14 May 2024 11:19:25 -0700
Message-ID: <CAH2o1u5fMtKYLAzYwdKXgp2YDE7jH=b4Rm1VXFGOzojt0eUzQg@mail.gmail.com>
Subject: Re: [PATCH v4 4/7] iommu/riscv: Enable IOMMU registration and device probe.
To: Zong Li <zong.li@sifive.com>
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Anup Patel <apatel@ventanamicro.com>, devicetree@vger.kernel.org, 
	Conor Dooley <conor+dt@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>, linux@rivosinc.com, 
	linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, 
	Sebastien Boeuf <seb@rivosinc.com>, iommu@lists.linux.dev, 
	Palmer Dabbelt <palmer@dabbelt.com>, Nick Kossifidis <mick@ics.forth.gr>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-riscv@lists.infradead.org, 
	Lu Baolu <baolu.lu@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, May 13, 2024 at 10:56=E2=80=AFPM Zong Li <zong.li@sifive.com> wrote=
:
>
> On Sat, May 4, 2024 at 12:13=E2=80=AFAM Tomasz Jeznach <tjeznach@rivosinc=
.com> wrote:
> >
> > Advertise IOMMU device and its core API.
> > Only minimal implementation for single identity domain type, without
> > per-group domain protection.
> >
> > Reviewed-by: Lu Baolu <baolu.lu@linux.intel.com>
> > Signed-off-by: Tomasz Jeznach <tjeznach@rivosinc.com>
> > ---
> >  drivers/iommu/riscv/iommu.c | 66 +++++++++++++++++++++++++++++++++++++
> >  1 file changed, 66 insertions(+)
> >
> > diff --git a/drivers/iommu/riscv/iommu.c b/drivers/iommu/riscv/iommu.c
> > index 3c5a6b49669d..1f889daffb0e 100644
> > --- a/drivers/iommu/riscv/iommu.c
> > +++ b/drivers/iommu/riscv/iommu.c
> > @@ -17,6 +17,7 @@
> >  #include <linux/init.h>
> >  #include <linux/iommu.h>
> >  #include <linux/kernel.h>
> > +#include <linux/pci.h>
> >
> >  #include "iommu-bits.h"
> >  #include "iommu.h"
> > @@ -36,6 +37,60 @@ static void riscv_iommu_disable(struct riscv_iommu_d=
evice *iommu)
> >         riscv_iommu_writel(iommu, RISCV_IOMMU_REG_PQCSR, 0);
> >  }
> >
> > +static int riscv_iommu_attach_identity_domain(struct iommu_domain *iom=
mu_domain,
> > +                                             struct device *dev)
> > +{
> > +       /* Global pass-through already enabled, do nothing for now. */
> > +       return 0;
> > +}
> > +
> > +static struct iommu_domain riscv_iommu_identity_domain =3D {
> > +       .type =3D IOMMU_DOMAIN_IDENTITY,
> > +       .ops =3D &(const struct iommu_domain_ops) {
> > +               .attach_dev =3D riscv_iommu_attach_identity_domain,
> > +       }
> > +};
> > +
> > +static int riscv_iommu_device_domain_type(struct device *dev)
> > +{
> > +       return IOMMU_DOMAIN_IDENTITY;
> > +}
> > +
> > +static struct iommu_group *riscv_iommu_device_group(struct device *dev=
)
> > +{
> > +       if (dev_is_pci(dev))
> > +               return pci_device_group(dev);
> > +       return generic_device_group(dev);
> > +}
> > +
> > +static int riscv_iommu_of_xlate(struct device *dev, const struct of_ph=
andle_args *args)
> > +{
> > +       return iommu_fwspec_add_ids(dev, args->args, 1);
> > +}
> > +
> > +static struct iommu_device *riscv_iommu_probe_device(struct device *de=
v)
> > +{
> > +       struct iommu_fwspec *fwspec =3D dev_iommu_fwspec_get(dev);
> > +       struct riscv_iommu_device *iommu;
> > +
> > +       if (!fwspec->iommu_fwnode->dev || !fwspec->num_ids)
> > +               return ERR_PTR(-ENODEV);
>
> It seems to me that we might need to ensure fwspec is not NULL before
> accessing fwspec->iommu_fwnode, otherwise, it will cause NULL pointer
> dereference.
>

Thank you. Fix applied to v5.

> > +
> > +       iommu =3D dev_get_drvdata(fwspec->iommu_fwnode->dev);
> > +       if (!iommu)
> > +               return ERR_PTR(-ENODEV);
> > +
> > +       return &iommu->iommu;
> > +}
> > +
> > +static const struct iommu_ops riscv_iommu_ops =3D {
> > +       .of_xlate =3D riscv_iommu_of_xlate,
> > +       .identity_domain =3D &riscv_iommu_identity_domain,
> > +       .def_domain_type =3D riscv_iommu_device_domain_type,
> > +       .device_group =3D riscv_iommu_device_group,
> > +       .probe_device =3D riscv_iommu_probe_device,
> > +};
> > +
> >  static int riscv_iommu_init_check(struct riscv_iommu_device *iommu)
> >  {
> >         u64 ddtp;
> > @@ -71,6 +126,7 @@ static int riscv_iommu_init_check(struct riscv_iommu=
_device *iommu)
> >
> >  void riscv_iommu_remove(struct riscv_iommu_device *iommu)
> >  {
> > +       iommu_device_unregister(&iommu->iommu);
> >         iommu_device_sysfs_remove(&iommu->iommu);
> >  }
> >
> > @@ -95,5 +151,15 @@ int riscv_iommu_init(struct riscv_iommu_device *iom=
mu)
> >                 return dev_err_probe(iommu->dev, rc,
> >                                      "cannot register sysfs interface\n=
");
> >
> > +       rc =3D iommu_device_register(&iommu->iommu, &riscv_iommu_ops, i=
ommu->dev);
> > +       if (rc) {
> > +               dev_err_probe(iommu->dev, rc, "cannot register iommu in=
terface\n");
> > +               goto err_remove_sysfs;
> > +       }
> > +
> >         return 0;
> > +
> > +err_remove_sysfs:
> > +       iommu_device_sysfs_remove(&iommu->iommu);
> > +       return rc;
> >  }
> > --
> > 2.34.1
> >
> >

Best,
- Tomasz

> > _______________________________________________
> > linux-riscv mailing list
> > linux-riscv@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-riscv

