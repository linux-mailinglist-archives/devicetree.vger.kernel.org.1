Return-Path: <devicetree+bounces-66801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A7BA38C4C1E
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2024 07:56:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CB3181C212E3
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2024 05:56:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25F911BC49;
	Tue, 14 May 2024 05:56:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="W9cTRxMN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com [209.85.166.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 708C31802B
	for <devicetree@vger.kernel.org>; Tue, 14 May 2024 05:56:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715666210; cv=none; b=REuRHGTw9WwChKodqPHlSOgecLUg6t8HWb6WJG8k3NjBbkIRM2M3+Fr98MBtnCWLjvXFt7UHgjdOFZcZhUeJNF6HZk69hcZIEdRgJlj+uQVX7bAKvg6IZ1emS/C+b5Ki0y7q+RwSHZkrPXn8hB89CazCCxDoMKO3buk6LZmDsWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715666210; c=relaxed/simple;
	bh=YFv/xreV8sszgCh+v63BHFOd+heWfDqr5JVAp+/+CrQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EZNKLJnlpx1Wj1Izbx9JlLj1ZVK540uEkPLkI6pCcBNGHp/Ya7cZEMwIb4U1PeCFfblnVfAlxR4cmOn/zrMhmJQS8K9KMElDf5SYpyCBkKUShbZJJVEJYARgC5W8jup8PJIWp4UnGbAM0CVtKTmjTdJFXaLOYQ/GxTarsPnHQEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=W9cTRxMN; arc=none smtp.client-ip=209.85.166.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-io1-f51.google.com with SMTP id ca18e2360f4ac-7e1c06191d0so98540039f.1
        for <devicetree@vger.kernel.org>; Mon, 13 May 2024 22:56:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1715666206; x=1716271006; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=440oD4b9Bphk4WWjPWWaKFmIBo6vJ3VIwixVh9ybBDo=;
        b=W9cTRxMN2SszKKgjTYB3wGXbUkY4nENoC21C84mU+Rhn5TXbnEKQL7BuY7VfHjRtRn
         YnYq23spwJXjz6Z4y9Efm1beElifl7Rjbs94OmU43vRoM+Qod7Izbm0D7xeYHLFCyEHk
         LUwdOBso1zwy049q3Vevayx9zQMWlCGrCG/uFqr7rsWeKt6I5ZF0Khc7wJSuW2f7AOyC
         gKR7UfT74MGJ/uZ9lYvCatn6f5mg4w68Pac9gwwblr1fbTnkd8OqqUlkVXY1lSEfJ7j5
         keuKultVdUmohffUIWb4Wa1k9cC4A+Igetda72hAwNclTqpZ2OMlE2RDgNQJ+YFQ1kYQ
         3R7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715666206; x=1716271006;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=440oD4b9Bphk4WWjPWWaKFmIBo6vJ3VIwixVh9ybBDo=;
        b=pjCd+LkR3ddiJFE5mEMxnnGdlhSDUdyMmQiDMlvmvkO890b0YaRA9Eg97ScHZn0keG
         A3DZjw8zSfwhF1PJhLZhAnW70OTII6au9UaHSBm4ydsxKbo1d/dDt6Qkkrzzpg+wboPT
         dquAPV04ebTjA0GCriqa2OdBZpPNVNH7IZAmDoqeLJqtwkRPfZmWLs4MuPQw4o950JM2
         QGhyaOwGqBQv2oLq4K2t7b/sDeXpUmIbmKl44Xz4Qbdro+c5sdoo3ixbOTlVbTfd91Bt
         EWKSRYRTUugItawlLLu8pncRt9H6sYn3vlkArSCAWcK1gJ9FYWw1Rmm10vCa2sdTNAgN
         P7Mw==
X-Forwarded-Encrypted: i=1; AJvYcCUpcz08dKQKhkpqRvwzB8MFg5uLVFtdtdeu1/B3e8RiiVvSaklm2fiP+dLKb8ujjX2r5BdQSxEcuWLIl1audaw6B6dXXfjnCYdNDA==
X-Gm-Message-State: AOJu0YxHw0VHiGIEY1BLJVHSEjfY/pGRussR2cCCmlFT9OMXKesGgQw1
	pQvHoSwswaggzlJ/Z9gBivKDExb1SC8pAnvkbjVk+hVNBaLl05ZWzrAFeKCiPRw0Q5fnCf0qpjX
	rEU7lFgQ4ZI1kYem1S3CooDHKUBArtV3F0/48dw==
X-Google-Smtp-Source: AGHT+IF9N9dfmP7bVHVJo2ZfC3OHvLjDan409QcJv1aNsscxhoEEW8h6W1834/OEIiZpFBCIoCKO6oKWs8pWyT7uDD8=
X-Received: by 2002:a05:6602:3049:b0:7e1:d5cc:84bf with SMTP id
 ca18e2360f4ac-7e1d5cc851dmr559335339f.6.1715666206518; Mon, 13 May 2024
 22:56:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1714752293.git.tjeznach@rivosinc.com> <b28d4fe49c5fe4e3ece9de789cfd92cfa5b3c16c.1714752293.git.tjeznach@rivosinc.com>
In-Reply-To: <b28d4fe49c5fe4e3ece9de789cfd92cfa5b3c16c.1714752293.git.tjeznach@rivosinc.com>
From: Zong Li <zong.li@sifive.com>
Date: Tue, 14 May 2024 13:56:35 +0800
Message-ID: <CANXhq0q+aQ1T37j4uQi5ryUyPxBtvQkaBJ9qvS9iGwSRGaQSyQ@mail.gmail.com>
Subject: Re: [PATCH v4 4/7] iommu/riscv: Enable IOMMU registration and device probe.
To: Tomasz Jeznach <tjeznach@rivosinc.com>
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

On Sat, May 4, 2024 at 12:13=E2=80=AFAM Tomasz Jeznach <tjeznach@rivosinc.c=
om> wrote:
>
> Advertise IOMMU device and its core API.
> Only minimal implementation for single identity domain type, without
> per-group domain protection.
>
> Reviewed-by: Lu Baolu <baolu.lu@linux.intel.com>
> Signed-off-by: Tomasz Jeznach <tjeznach@rivosinc.com>
> ---
>  drivers/iommu/riscv/iommu.c | 66 +++++++++++++++++++++++++++++++++++++
>  1 file changed, 66 insertions(+)
>
> diff --git a/drivers/iommu/riscv/iommu.c b/drivers/iommu/riscv/iommu.c
> index 3c5a6b49669d..1f889daffb0e 100644
> --- a/drivers/iommu/riscv/iommu.c
> +++ b/drivers/iommu/riscv/iommu.c
> @@ -17,6 +17,7 @@
>  #include <linux/init.h>
>  #include <linux/iommu.h>
>  #include <linux/kernel.h>
> +#include <linux/pci.h>
>
>  #include "iommu-bits.h"
>  #include "iommu.h"
> @@ -36,6 +37,60 @@ static void riscv_iommu_disable(struct riscv_iommu_dev=
ice *iommu)
>         riscv_iommu_writel(iommu, RISCV_IOMMU_REG_PQCSR, 0);
>  }
>
> +static int riscv_iommu_attach_identity_domain(struct iommu_domain *iommu=
_domain,
> +                                             struct device *dev)
> +{
> +       /* Global pass-through already enabled, do nothing for now. */
> +       return 0;
> +}
> +
> +static struct iommu_domain riscv_iommu_identity_domain =3D {
> +       .type =3D IOMMU_DOMAIN_IDENTITY,
> +       .ops =3D &(const struct iommu_domain_ops) {
> +               .attach_dev =3D riscv_iommu_attach_identity_domain,
> +       }
> +};
> +
> +static int riscv_iommu_device_domain_type(struct device *dev)
> +{
> +       return IOMMU_DOMAIN_IDENTITY;
> +}
> +
> +static struct iommu_group *riscv_iommu_device_group(struct device *dev)
> +{
> +       if (dev_is_pci(dev))
> +               return pci_device_group(dev);
> +       return generic_device_group(dev);
> +}
> +
> +static int riscv_iommu_of_xlate(struct device *dev, const struct of_phan=
dle_args *args)
> +{
> +       return iommu_fwspec_add_ids(dev, args->args, 1);
> +}
> +
> +static struct iommu_device *riscv_iommu_probe_device(struct device *dev)
> +{
> +       struct iommu_fwspec *fwspec =3D dev_iommu_fwspec_get(dev);
> +       struct riscv_iommu_device *iommu;
> +
> +       if (!fwspec->iommu_fwnode->dev || !fwspec->num_ids)
> +               return ERR_PTR(-ENODEV);

It seems to me that we might need to ensure fwspec is not NULL before
accessing fwspec->iommu_fwnode, otherwise, it will cause NULL pointer
dereference.

> +
> +       iommu =3D dev_get_drvdata(fwspec->iommu_fwnode->dev);
> +       if (!iommu)
> +               return ERR_PTR(-ENODEV);
> +
> +       return &iommu->iommu;
> +}
> +
> +static const struct iommu_ops riscv_iommu_ops =3D {
> +       .of_xlate =3D riscv_iommu_of_xlate,
> +       .identity_domain =3D &riscv_iommu_identity_domain,
> +       .def_domain_type =3D riscv_iommu_device_domain_type,
> +       .device_group =3D riscv_iommu_device_group,
> +       .probe_device =3D riscv_iommu_probe_device,
> +};
> +
>  static int riscv_iommu_init_check(struct riscv_iommu_device *iommu)
>  {
>         u64 ddtp;
> @@ -71,6 +126,7 @@ static int riscv_iommu_init_check(struct riscv_iommu_d=
evice *iommu)
>
>  void riscv_iommu_remove(struct riscv_iommu_device *iommu)
>  {
> +       iommu_device_unregister(&iommu->iommu);
>         iommu_device_sysfs_remove(&iommu->iommu);
>  }
>
> @@ -95,5 +151,15 @@ int riscv_iommu_init(struct riscv_iommu_device *iommu=
)
>                 return dev_err_probe(iommu->dev, rc,
>                                      "cannot register sysfs interface\n")=
;
>
> +       rc =3D iommu_device_register(&iommu->iommu, &riscv_iommu_ops, iom=
mu->dev);
> +       if (rc) {
> +               dev_err_probe(iommu->dev, rc, "cannot register iommu inte=
rface\n");
> +               goto err_remove_sysfs;
> +       }
> +
>         return 0;
> +
> +err_remove_sysfs:
> +       iommu_device_sysfs_remove(&iommu->iommu);
> +       return rc;
>  }
> --
> 2.34.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

