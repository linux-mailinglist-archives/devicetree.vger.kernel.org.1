Return-Path: <devicetree+bounces-67417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0E48C8141
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2024 09:20:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E610428282D
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2024 07:20:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD5AE1755A;
	Fri, 17 May 2024 07:20:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="JiHkGtGC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com [209.85.166.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 527C91642B
	for <devicetree@vger.kernel.org>; Fri, 17 May 2024 07:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715930401; cv=none; b=rOD+pa6oyHvdR7iCVRZS1jhWRibHsnNaJ8YuGZiMjNeiJVtnVANpNHZDNgjJlEgIZXQQWHPsf6pHKkkHuEokjFntSdoq8exreZE1DeibcURkm6eUugKlAFKhWsKHlVQgmeW5LXQtdnpYGt+22orLbTeZVCEERSFbC6Ao30tF6q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715930401; c=relaxed/simple;
	bh=VPdVtsCdvH0FWtAzjEnwbG4aKW0bLBPevKsTmJFxsLQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=paU60yWWDvMAjBGQmDAJQ14IKfP/V85KEsNjGW9l11UzBPh/k6V4xVQsCxHCKRLzSiAzgMCJjrGX7jKNc0KxWzM9wHhuUlHc4f0i2jmRJXGg/zl6cQXs1Mx7kULRnOLlSw5kqAV9fa6EBPgkQqP1HIm35LUfM36HgaAeKPiSdJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=JiHkGtGC; arc=none smtp.client-ip=209.85.166.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-io1-f45.google.com with SMTP id ca18e2360f4ac-7d86adab5a7so12558539f.3
        for <devicetree@vger.kernel.org>; Fri, 17 May 2024 00:19:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1715930398; x=1716535198; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DARwQ7xcLW9SgOpwsz1tepc/1IVi/5Qc1nde5sSyF/U=;
        b=JiHkGtGCwSU1Vz/XfBPZPfzwKoadUiYN9oZG9igGduOUDhkcGOy/+Wv6ikiiL8TPYu
         e6qcY7KwiU7bH/bqpRCygjoMu2+FHh5RVLghvtb4XbZlJBHgtFc1IbOB+0ZLkd/PfT/k
         +1eQTY2AfMQPzIlWwjqM8KTX2Y8cr2fbASPC0keVnCJNCXT3+Q71jjRznpbhzwmoxwn1
         1fv1EV4c9v/4HE7EH0CQFORDNK9dBJtk2WX5wqidfqmMPMrlVAess3/eJAWMh6qhKFVp
         c+C1kreFBbavigdD95j6w6T7ON/prBGmuhADmawd4mlLkJqsBJ66e0uOMr7JyNqA9VmX
         KjdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715930398; x=1716535198;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DARwQ7xcLW9SgOpwsz1tepc/1IVi/5Qc1nde5sSyF/U=;
        b=V/zHh1UAeBs/c/1Q8ZeBuS07CeHOZXxiThEbLfaQHjjQXQ4mpyWNwJwg0souw+kNY6
         lRcgBfMz+3EA3VAUuGutv1TWK+V8xu4KLZrsLaL7f6ZHg3zgg+bBk3wfeNeLaJxOeZJ9
         uYoqq+WXxWYie3gIwOk3MXnNfl5IBIP40+KGPQgq+AMqtJU0yt0uZCLIP+8mJnPVdGj4
         TODCnt38Yy3bgk5N8ax5Hvf3vlquSuz3rAkdv2/xRQd/CKEC2BxGiEFkao8LVMVPCjrx
         x9gXZwZxnA9cqRaWnn9hhMPNx7FLy5CeefV+CtLXL4wkzvwS6fYHXmmkUf+x6t9P4xpV
         0bEA==
X-Forwarded-Encrypted: i=1; AJvYcCVSVLJmVOnpw3frFX6dLBlO7kQ8AVZRzrHNNcTVSKs8xH31xcgnXEmeel/byXr2fX7KWff/P/P4juV0hRTEAH9ZlixkyC2sFsj6Ig==
X-Gm-Message-State: AOJu0YykbcKRODPH/hU3DDt9RTpr+5iGpnOwD0GKHcJlZNC91dbxis9+
	kZpbhUv7DMdrqz+nEHacby0f7yFsc14r6VNDgy3oxjYEoGZ59x2FyVj+nVws6A+/4/YVOQcqUII
	Na7G0oCX80MW1kqmYrLHObqJCRt2msP0Pv2c27g==
X-Google-Smtp-Source: AGHT+IG1fjp7xxbg2syelNzLcWdSnkAmZ5HEN4zUxVFk7Uehy8tOYpkomfU3wpTuk49Q+M+PRGzHlSGJOXy2iAV7KzU=
X-Received: by 2002:a6b:7f42:0:b0:7e1:839e:5ab3 with SMTP id
 ca18e2360f4ac-7e1b51ba8a6mr2350130739f.6.1715930398577; Fri, 17 May 2024
 00:19:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1715708679.git.tjeznach@rivosinc.com> <518a4b0bf651707a9508c169fe3868e669ec2c6d.1715708679.git.tjeznach@rivosinc.com>
In-Reply-To: <518a4b0bf651707a9508c169fe3868e669ec2c6d.1715708679.git.tjeznach@rivosinc.com>
From: Zong Li <zong.li@sifive.com>
Date: Fri, 17 May 2024 15:19:48 +0800
Message-ID: <CANXhq0q60CeN7nx7ubG580HgSOmPQZgu5oJLfcUf0wRhSj-z9g@mail.gmail.com>
Subject: Re: [PATCH v5 4/7] iommu/riscv: Enable IOMMU registration and device probe.
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

On Wed, May 15, 2024 at 2:17=E2=80=AFAM Tomasz Jeznach <tjeznach@rivosinc.c=
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
> index 3c5a6b49669d..b8e0e4b62585 100644
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
> +       if (!fwspec || !fwspec->iommu_fwnode->dev || !fwspec->num_ids)
> +               return ERR_PTR(-ENODEV);
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

Reviewed-by: Zong Li <zong.li@sifive.com>

Thanks

> --
> 2.34.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

