Return-Path: <devicetree+bounces-67416-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6082F8C813E
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2024 09:19:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 83D261C210B9
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2024 07:19:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB69915E97;
	Fri, 17 May 2024 07:19:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="fd/1aNK9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com [209.85.166.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55933171C8
	for <devicetree@vger.kernel.org>; Fri, 17 May 2024 07:19:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715930378; cv=none; b=HdzEcQdwHjohd/43Igsvs1RgY8OYFRjMjUzhDqJ1jJG2v2QLTxZWwK+dwO6fQT69vN3Zik1wc/Y+P7K+9IE6JbET9dzyfMBBumIHKB8bvJDrbaMmKyfJm7wIwROJ9NvSuQnSKLJn3TuOgixECIrWRGCDZ4xTf/6s5Wf7e/vm4as=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715930378; c=relaxed/simple;
	bh=/Xxu9Ef3cLJLj1XNk2MgfslA7D/hZfdoU573zfOnem4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qrjwwD5bDNgmjqr7LhdWoGE9xjBo48fUSspvMFX7Yi73/cL+H5hdROPKbrAB+ePIM2fdW+c+IIDhzd+KzYgbb4oEFeDgatKMPiugqQVA7dRIrtKguyrqaZ6T0jewY64ppn8d/6IDHhauPDH+mWD2DdGNqs+atRTU/TPptSelfrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=fd/1aNK9; arc=none smtp.client-ip=209.85.166.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-io1-f46.google.com with SMTP id ca18e2360f4ac-7e21e11f36bso12479439f.0
        for <devicetree@vger.kernel.org>; Fri, 17 May 2024 00:19:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1715930375; x=1716535175; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V7aVen2JjdJa0sSdUgXIqDPGNsprc3uyAtrqjCozIjI=;
        b=fd/1aNK97Xl2HzObHcirR3aCOvj79X+3+rzO9xrbdM82MTP+NlX16H6JPd3GKTT7Z+
         M2U5+DtjN0qqp6EJBwcN/72sZbzm4PMLf9voUswBYpbGbqpmjA1kUKJnZS8DvQSrZxFN
         k4iohPUM4RxCDL8qVKQZK/aofTppT8b1ExKh7f7Qxltx7c9Kv7QFw87V02BySURkUsIc
         BOB/aBe6YTzI4lyocMyS5eWsC2okMU8Dllr4prxSuT5X+owga0KF4dt1bNeoBzOaG93C
         WdribXAFd+wjiUqId5YeW5EkThlNbVbadOdjjkmSGJxRFYMwzASN7Kz61asibeX1kD9P
         y/nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715930375; x=1716535175;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V7aVen2JjdJa0sSdUgXIqDPGNsprc3uyAtrqjCozIjI=;
        b=E3e/47SKYH7rAoS97BH/4emHccPoDh7eXQJsxm8XstT4gqQpLK4Hg3OvuQUvKbiz/a
         uujLTLfMpNyPg9RUUbucZT3TSiJUwGgDNjETlbkukV/auXeiPvLo5Qh9gqNwQIoE3G21
         QzXel3Uyw6ov0inIL8OsmjbJ1cOF8/PKJlABnaIQm9SQGQSvxLvuiNTTzhmHy8oMOnQr
         dMXy83FkhQiLS0yKGSowYa2jXKMR904e5kOhEXprEwySRFAFp/uOYLsKspi3aBNbJvKw
         /g6ByLD1yiL3NCHuM3v3z7jaakgY5YouY3PBdKsMtucBtK0ZyBAfN6meqjv5hNCn9Gnd
         p+jg==
X-Forwarded-Encrypted: i=1; AJvYcCV2RvCcxVEV/el7tBxLHz8AFNDwEZerUOQfJ9xyXchdqUaulbdJgacOuaGxI0BMu1drIjpzB+Xth/rcLa/41CJJpMdc0dzNLMYOkQ==
X-Gm-Message-State: AOJu0YyGt9TKTUCKknSKxNKIJmwwSIqT+f4rnYd6XREDENdlLL+dmfQF
	J/9pnpXQze2olR/UJqcFTXqg5swe2PkRyYXTL28S4XlZ7bEMBTX8KV/qODm7YyQWD1vNCy6kEqR
	mK31o6SGu+TRG7jHz5NXbMuNzxV/48dWJw1PLxw==
X-Google-Smtp-Source: AGHT+IHczXxvBcPVNNBQMOuxcoPOh+F8bGITOB0Lq5QPG6xwh2K/G3FTIXDpPjFjyqLkdnzfQKqq9QbDG3M9k98y8a8=
X-Received: by 2002:a05:6602:24d7:b0:7e1:8191:f59a with SMTP id
 ca18e2360f4ac-7e1b51ba7fdmr2020005739f.5.1715930375470; Fri, 17 May 2024
 00:19:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1715708679.git.tjeznach@rivosinc.com> <6668ff51bf5b751b311ffc25946db10862dd86bd.1715708679.git.tjeznach@rivosinc.com>
In-Reply-To: <6668ff51bf5b751b311ffc25946db10862dd86bd.1715708679.git.tjeznach@rivosinc.com>
From: Zong Li <zong.li@sifive.com>
Date: Fri, 17 May 2024 15:19:24 +0800
Message-ID: <CANXhq0pS0yHAXMsPEH=NmXND-ohrpwzZ08TxS_BrZ9egzSsWfw@mail.gmail.com>
Subject: Re: [PATCH v5 5/7] iommu/riscv: Device directory management.
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
> Introduce device context allocation and device directory tree
> management including capabilities discovery sequence, as described
> in Chapter 2.1 of the RISC-V IOMMU Architecture Specification.
>
> Device directory mode will be auto detected using DDTP WARL property,
> using highest mode supported by the driver and hardware. If none
> supported can be configured, driver will fall back to global pass-through=
.
>
> First level DDTP page can be located in I/O (detected using DDTP WARL)
> and system memory.
>
> Only simple identity and blocking protection domains are supported by
> this implementation.
>
> Co-developed-by: Nick Kossifidis <mick@ics.forth.gr>
> Signed-off-by: Nick Kossifidis <mick@ics.forth.gr>
> Reviewed-by: Lu Baolu <baolu.lu@linux.intel.com>
> Signed-off-by: Tomasz Jeznach <tjeznach@rivosinc.com>
> ---
>  drivers/iommu/riscv/iommu.c | 397 +++++++++++++++++++++++++++++++++++-
>  drivers/iommu/riscv/iommu.h |   5 +
>  2 files changed, 392 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/iommu/riscv/iommu.c b/drivers/iommu/riscv/iommu.c
> index b8e0e4b62585..9ca130505c96 100644
> --- a/drivers/iommu/riscv/iommu.c
> +++ b/drivers/iommu/riscv/iommu.c
> @@ -16,15 +16,168 @@
>  #include <linux/crash_dump.h>
>  #include <linux/init.h>
>  #include <linux/iommu.h>
> +#include <linux/iopoll.h>
>  #include <linux/kernel.h>
>  #include <linux/pci.h>
>
> +#include "../iommu-pages.h"
>  #include "iommu-bits.h"
>  #include "iommu.h"
>
>  /* Timeouts in [us] */
>  #define RISCV_IOMMU_DDTP_TIMEOUT       50000
>
> +/* RISC-V IOMMU PPN <> PHYS address conversions, PHYS <=3D> PPN[53:10] *=
/
> +#define phys_to_ppn(pa)  (((pa) >> 2) & (((1ULL << 44) - 1) << 10))
> +#define ppn_to_phys(pn)         (((pn) << 2) & (((1ULL << 44) - 1) << 12=
))
> +
> +#define dev_to_iommu(dev) \
> +       iommu_get_iommu_dev(dev, struct riscv_iommu_device, iommu)
> +
> +/* Device resource-managed allocations */
> +struct riscv_iommu_devres {
> +       void *addr;
> +       int order;
> +};
> +
> +static void riscv_iommu_devres_pages_release(struct device *dev, void *r=
es)
> +{
> +       struct riscv_iommu_devres *devres =3D res;
> +
> +       iommu_free_pages(devres->addr, devres->order);
> +}
> +
> +static int riscv_iommu_devres_pages_match(struct device *dev, void *res,=
 void *p)
> +{
> +       struct riscv_iommu_devres *devres =3D res;
> +       struct riscv_iommu_devres *target =3D p;
> +
> +       return devres->addr =3D=3D target->addr;
> +}
> +
> +static void *riscv_iommu_get_pages(struct riscv_iommu_device *iommu, int=
 order)
> +{
> +       struct riscv_iommu_devres *devres;
> +       void *addr;
> +
> +       addr =3D iommu_alloc_pages_node(dev_to_node(iommu->dev),
> +                                     GFP_KERNEL_ACCOUNT, order);
> +       if (unlikely(!addr))
> +               return NULL;
> +
> +       devres =3D devres_alloc(riscv_iommu_devres_pages_release,
> +                             sizeof(struct riscv_iommu_devres), GFP_KERN=
EL);
> +
> +       if (unlikely(!devres)) {
> +               iommu_free_pages(addr, order);
> +               return NULL;
> +       }
> +
> +       devres->addr =3D addr;
> +       devres->order =3D order;
> +
> +       devres_add(iommu->dev, devres);
> +
> +       return addr;
> +}
> +
> +static void riscv_iommu_free_pages(struct riscv_iommu_device *iommu, voi=
d *addr)
> +{
> +       struct riscv_iommu_devres devres =3D { .addr =3D addr };
> +
> +       devres_release(iommu->dev, riscv_iommu_devres_pages_release,
> +                      riscv_iommu_devres_pages_match, &devres);
> +}
> +
> +/* Lookup and initialize device context info structure. */
> +static struct riscv_iommu_dc *riscv_iommu_get_dc(struct riscv_iommu_devi=
ce *iommu,
> +                                                unsigned int devid)
> +{
> +       const bool base_format =3D !(iommu->caps & RISCV_IOMMU_CAP_MSI_FL=
AT);
> +       unsigned int depth;
> +       unsigned long ddt, old, new;
> +       void *ptr;
> +       u8 ddi_bits[3] =3D { 0 };
> +       u64 *ddtp =3D NULL;
> +
> +       /* Make sure the mode is valid */
> +       if (iommu->ddt_mode < RISCV_IOMMU_DDTP_MODE_1LVL ||
> +           iommu->ddt_mode > RISCV_IOMMU_DDTP_MODE_3LVL)
> +               return NULL;
> +
> +       /*
> +        * Device id partitioning for base format:
> +        * DDI[0]: bits 0 - 6   (1st level) (7 bits)
> +        * DDI[1]: bits 7 - 15  (2nd level) (9 bits)
> +        * DDI[2]: bits 16 - 23 (3rd level) (8 bits)
> +        *
> +        * For extended format:
> +        * DDI[0]: bits 0 - 5   (1st level) (6 bits)
> +        * DDI[1]: bits 6 - 14  (2nd level) (9 bits)
> +        * DDI[2]: bits 15 - 23 (3rd level) (9 bits)
> +        */
> +       if (base_format) {
> +               ddi_bits[0] =3D 7;
> +               ddi_bits[1] =3D 7 + 9;
> +               ddi_bits[2] =3D 7 + 9 + 8;
> +       } else {
> +               ddi_bits[0] =3D 6;
> +               ddi_bits[1] =3D 6 + 9;
> +               ddi_bits[2] =3D 6 + 9 + 9;
> +       }
> +
> +       /* Make sure device id is within range */
> +       depth =3D iommu->ddt_mode - RISCV_IOMMU_DDTP_MODE_1LVL;
> +       if (devid >=3D (1 << ddi_bits[depth]))
> +               return NULL;
> +
> +       /* Get to the level of the non-leaf node that holds the device co=
ntext */
> +       for (ddtp =3D iommu->ddt_root; depth-- > 0;) {
> +               const int split =3D ddi_bits[depth];
> +               /*
> +                * Each non-leaf node is 64bits wide and on each level
> +                * nodes are indexed by DDI[depth].
> +                */
> +               ddtp +=3D (devid >> split) & 0x1FF;
> +
> +               /*
> +                * Check if this node has been populated and if not
> +                * allocate a new level and populate it.
> +                */
> +               do {
> +                       ddt =3D READ_ONCE(*(unsigned long *)ddtp);
> +                       if (ddt & RISCV_IOMMU_DDTE_VALID) {
> +                               ddtp =3D __va(ppn_to_phys(ddt));
> +                               break;
> +                       }
> +
> +                       ptr =3D riscv_iommu_get_pages(iommu, 0);
> +                       if (!ptr)
> +                               return NULL;
> +
> +                       new =3D phys_to_ppn(__pa(ptr)) | RISCV_IOMMU_DDTE=
_VALID;
> +                       old =3D cmpxchg_relaxed((unsigned long *)ddtp, dd=
t, new);
> +
> +                       if (old =3D=3D ddt) {
> +                               ddtp =3D (u64 *)ptr;
> +                               break;
> +                       }
> +
> +                       /* Race setting DDT detected, re-read and retry. =
*/
> +                       riscv_iommu_free_pages(iommu, ptr);
> +               } while (1);
> +       }
> +
> +       /*
> +        * Grab the node that matches DDI[depth], note that when using ba=
se
> +        * format the device context is 4 * 64bits, and the extended form=
at
> +        * is 8 * 64bits, hence the (3 - base_format) below.
> +        */
> +       ddtp +=3D (devid & ((64 << base_format) - 1)) << (3 - base_format=
);
> +
> +       return (struct riscv_iommu_dc *)ddtp;
> +}
> +
>  /*
>   * This is best effort IOMMU translation shutdown flow.
>   * Disable IOMMU without waiting for hardware response.
> @@ -37,10 +190,201 @@ static void riscv_iommu_disable(struct riscv_iommu_=
device *iommu)
>         riscv_iommu_writel(iommu, RISCV_IOMMU_REG_PQCSR, 0);
>  }
>
> +#define riscv_iommu_read_ddtp(iommu) ({ \
> +       u64 ddtp; \
> +       riscv_iommu_readq_timeout((iommu), RISCV_IOMMU_REG_DDTP, ddtp, \
> +                                 !(ddtp & RISCV_IOMMU_DDTP_BUSY), 10, \
> +                                 RISCV_IOMMU_DDTP_TIMEOUT); \
> +       ddtp; })
> +
> +static int riscv_iommu_iodir_alloc(struct riscv_iommu_device *iommu)
> +{
> +       u64 ddtp;
> +       unsigned int mode;
> +
> +       ddtp =3D riscv_iommu_read_ddtp(iommu);
> +       if (ddtp & RISCV_IOMMU_DDTP_BUSY)
> +               return -EBUSY;
> +
> +       /*
> +        * It is optional for the hardware to report a fixed address for =
device
> +        * directory root page when DDT.MODE is OFF or BARE.
> +        */
> +       mode =3D FIELD_GET(RISCV_IOMMU_DDTP_MODE, ddtp);
> +       if (mode =3D=3D RISCV_IOMMU_DDTP_MODE_BARE ||
> +           mode =3D=3D RISCV_IOMMU_DDTP_MODE_OFF) {
> +               /* Use WARL to discover hardware fixed DDT PPN */
> +               riscv_iommu_writeq(iommu, RISCV_IOMMU_REG_DDTP,
> +                                  FIELD_PREP(RISCV_IOMMU_DDTP_MODE, mode=
));
> +               ddtp =3D riscv_iommu_read_ddtp(iommu);
> +               if (ddtp & RISCV_IOMMU_DDTP_BUSY)
> +                       return -EBUSY;
> +
> +               iommu->ddt_phys =3D ppn_to_phys(ddtp);
> +               if (iommu->ddt_phys)
> +                       iommu->ddt_root =3D devm_ioremap(iommu->dev,
> +                                                      iommu->ddt_phys, P=
AGE_SIZE);
> +               if (iommu->ddt_root)
> +                       memset(iommu->ddt_root, 0, PAGE_SIZE);
> +       }
> +
> +       if (!iommu->ddt_root) {
> +               iommu->ddt_root =3D riscv_iommu_get_pages(iommu, 0);
> +               iommu->ddt_phys =3D __pa(iommu->ddt_root);
> +       }
> +
> +       if (!iommu->ddt_root)
> +               return -ENOMEM;
> +
> +       return 0;
> +}
> +
> +/*
> + * Discover supported DDT modes starting from requested value,
> + * configure DDTP register with accepted mode and root DDT address.
> + * Accepted iommu->ddt_mode is updated on success.
> + */
> +static int riscv_iommu_iodir_set_mode(struct riscv_iommu_device *iommu,
> +                                     unsigned int ddtp_mode)
> +{
> +       struct device *dev =3D iommu->dev;
> +       u64 ddtp, rq_ddtp;
> +       unsigned int mode, rq_mode =3D ddtp_mode;
> +
> +       ddtp =3D riscv_iommu_read_ddtp(iommu);
> +       if (ddtp & RISCV_IOMMU_DDTP_BUSY)
> +               return -EBUSY;
> +
> +       /* Disallow state transition from xLVL to xLVL. */
> +       mode =3D FIELD_GET(RISCV_IOMMU_DDTP_MODE, ddtp);
> +       if (mode !=3D RISCV_IOMMU_DDTP_MODE_BARE &&
> +           mode !=3D RISCV_IOMMU_DDTP_MODE_OFF &&
> +           rq_mode !=3D RISCV_IOMMU_DDTP_MODE_BARE &&
> +           rq_mode !=3D RISCV_IOMMU_DDTP_MODE_OFF)
> +               return -EINVAL;
> +
> +       do {
> +               rq_ddtp =3D FIELD_PREP(RISCV_IOMMU_DDTP_MODE, rq_mode);
> +               if (rq_mode > RISCV_IOMMU_DDTP_MODE_BARE)
> +                       rq_ddtp |=3D phys_to_ppn(iommu->ddt_phys);
> +
> +               riscv_iommu_writeq(iommu, RISCV_IOMMU_REG_DDTP, rq_ddtp);
> +               ddtp =3D riscv_iommu_read_ddtp(iommu);
> +               if (ddtp & RISCV_IOMMU_DDTP_BUSY) {
> +                       dev_err(dev, "timeout when setting ddtp (ddt mode=
: %u, read: %llx)\n",
> +                               rq_mode, ddtp);
> +                       return -EBUSY;
> +               }
> +
> +               /* Verify IOMMU hardware accepts new DDTP config. */
> +               mode =3D FIELD_GET(RISCV_IOMMU_DDTP_MODE, ddtp);
> +
> +               if (rq_mode =3D=3D mode)
> +                       break;
> +
> +               /* Hardware mandatory DDTP mode has not been accepted. */
> +               if (rq_mode < RISCV_IOMMU_DDTP_MODE_1LVL && rq_ddtp !=3D =
ddtp) {
> +                       dev_err(dev, "DDTP update failed hw: %llx vs %llx=
\n",
> +                               ddtp, rq_ddtp);
> +                       return -EINVAL;
> +               }
> +
> +               /*
> +                * Mode field is WARL, an IOMMU may support a subset of
> +                * directory table levels in which case if we tried to se=
t
> +                * an unsupported number of levels we'll readback either
> +                * a valid xLVL or off/bare. If we got off/bare, try agai=
n
> +                * with a smaller xLVL.
> +                */
> +               if (mode < RISCV_IOMMU_DDTP_MODE_1LVL &&
> +                   rq_mode > RISCV_IOMMU_DDTP_MODE_1LVL) {
> +                       dev_dbg(dev, "DDTP hw mode %u vs %u\n", mode, rq_=
mode);
> +                       rq_mode--;
> +                       continue;
> +               }
> +
> +               /*
> +                * We tried all supported modes and IOMMU hardware failed=
 to
> +                * accept new settings, something went very wrong since o=
ff/bare
> +                * and at least one xLVL must be supported.
> +                */
> +               dev_err(dev, "DDTP hw mode %u, failed to set %u\n",
> +                       mode, ddtp_mode);
> +               return -EINVAL;
> +       } while (1);
> +
> +       iommu->ddt_mode =3D mode;
> +       if (mode !=3D ddtp_mode)
> +               dev_dbg(dev, "DDTP hw mode %u, requested %u\n", mode, ddt=
p_mode);
> +
> +       return 0;
> +}
> +
> +#define RISCV_IOMMU_FSC_BARE 0
> +
> +/*
> + * Update IODIR for the device.
> + *
> + * During the execution of riscv_iommu_probe_device(), IODIR entries are
> + * allocated for the device's identifiers.  Device context invalidation
> + * becomes necessary only if one of the updated entries was previously
> + * marked as valid, given that invalid device context entries are not
> + * cached by the IOMMU hardware.
> + * In this implementation, updating a valid device context while the
> + * device is not quiesced might be disruptive, potentially causing
> + * interim translation faults.
> + */
> +static void riscv_iommu_iodir_update(struct riscv_iommu_device *iommu,
> +                                    struct device *dev, u64 fsc, u64 ta)
> +{
> +       struct iommu_fwspec *fwspec =3D dev_iommu_fwspec_get(dev);
> +       struct riscv_iommu_dc *dc;
> +       u64 tc;
> +       int i;
> +
> +       /* Device context invalidation ignored for now. */
> +
> +       /*
> +        * For device context with DC_TC_PDTV =3D 0, translation attribut=
es valid bit
> +        * is stored as DC_TC_V bit (both sharing the same location at BI=
T(0)).
> +        */
> +       for (i =3D 0; i < fwspec->num_ids; i++) {
> +               dc =3D riscv_iommu_get_dc(iommu, fwspec->ids[i]);
> +               tc =3D READ_ONCE(dc->tc);
> +               tc |=3D ta & RISCV_IOMMU_DC_TC_V;
> +
> +               WRITE_ONCE(dc->fsc, fsc);
> +               WRITE_ONCE(dc->ta, ta & RISCV_IOMMU_PC_TA_PSCID);
> +               /* Update device context, write TC.V as the last step. */
> +               dma_wmb();
> +               WRITE_ONCE(dc->tc, tc);
> +       }
> +}
> +
> +static int riscv_iommu_attach_blocking_domain(struct iommu_domain *iommu=
_domain,
> +                                             struct device *dev)
> +{
> +       struct riscv_iommu_device *iommu =3D dev_to_iommu(dev);
> +
> +       riscv_iommu_iodir_update(iommu, dev, RISCV_IOMMU_FSC_BARE, 0);
> +
> +       return 0;
> +}
> +
> +static struct iommu_domain riscv_iommu_blocking_domain =3D {
> +       .type =3D IOMMU_DOMAIN_BLOCKED,
> +       .ops =3D &(const struct iommu_domain_ops) {
> +               .attach_dev =3D riscv_iommu_attach_blocking_domain,
> +       }
> +};
> +
>  static int riscv_iommu_attach_identity_domain(struct iommu_domain *iommu=
_domain,
>                                               struct device *dev)
>  {
> -       /* Global pass-through already enabled, do nothing for now. */
> +       struct riscv_iommu_device *iommu =3D dev_to_iommu(dev);
> +
> +       riscv_iommu_iodir_update(iommu, dev, RISCV_IOMMU_FSC_BARE, RISCV_=
IOMMU_PC_TA_V);
> +
>         return 0;
>  }
>
> @@ -72,6 +416,9 @@ static struct iommu_device *riscv_iommu_probe_device(s=
truct device *dev)
>  {
>         struct iommu_fwspec *fwspec =3D dev_iommu_fwspec_get(dev);
>         struct riscv_iommu_device *iommu;
> +       struct riscv_iommu_dc *dc;
> +       u64 tc;
> +       int i;
>
>         if (!fwspec || !fwspec->iommu_fwnode->dev || !fwspec->num_ids)
>                 return ERR_PTR(-ENODEV);
> @@ -80,12 +427,37 @@ static struct iommu_device *riscv_iommu_probe_device=
(struct device *dev)
>         if (!iommu)
>                 return ERR_PTR(-ENODEV);
>
> +       /*
> +        * IOMMU hardware operating in fail-over BARE mode will provide
> +        * identity translation for all connected devices anyway...
> +        */
> +       if (iommu->ddt_mode <=3D RISCV_IOMMU_DDTP_MODE_BARE)
> +               return ERR_PTR(-ENODEV);
> +
> +       /*
> +        * Allocate and pre-configure device context entries in
> +        * the device directory. Do not mark the context valid yet.
> +        */
> +       tc =3D 0;
> +       if (iommu->caps & RISCV_IOMMU_CAP_AMO_HWAD)
> +               tc |=3D RISCV_IOMMU_DC_TC_SADE;
> +       for (i =3D 0; i < fwspec->num_ids; i++) {
> +               dc =3D riscv_iommu_get_dc(iommu, fwspec->ids[i]);
> +               if (!dc)
> +                       return ERR_PTR(-ENODEV);
> +               if (READ_ONCE(dc->tc) & RISCV_IOMMU_DC_TC_V)
> +                       dev_warn(dev, "already attached to IOMMU device d=
irectory\n");
> +               WRITE_ONCE(dc->tc, tc);
> +       }
> +
>         return &iommu->iommu;
>  }
>
>  static const struct iommu_ops riscv_iommu_ops =3D {
>         .of_xlate =3D riscv_iommu_of_xlate,
>         .identity_domain =3D &riscv_iommu_identity_domain,
> +       .blocked_domain =3D &riscv_iommu_blocking_domain,
> +       .release_domain =3D &riscv_iommu_blocking_domain,
>         .def_domain_type =3D riscv_iommu_device_domain_type,
>         .device_group =3D riscv_iommu_device_group,
>         .probe_device =3D riscv_iommu_probe_device,
> @@ -128,6 +500,7 @@ void riscv_iommu_remove(struct riscv_iommu_device *io=
mmu)
>  {
>         iommu_device_unregister(&iommu->iommu);
>         iommu_device_sysfs_remove(&iommu->iommu);
> +       riscv_iommu_iodir_set_mode(iommu, RISCV_IOMMU_DDTP_MODE_OFF);
>  }
>
>  int riscv_iommu_init(struct riscv_iommu_device *iommu)
> @@ -138,18 +511,20 @@ int riscv_iommu_init(struct riscv_iommu_device *iom=
mu)
>         if (rc)
>                 return dev_err_probe(iommu->dev, rc, "unexpected device s=
tate\n");
>
> -       /*
> -        * Placeholder for a complete IOMMU device initialization.  For n=
ow,
> -        * only bare minimum: enable global identity mapping mode and reg=
ister sysfs.
> -        */
> -       riscv_iommu_writeq(iommu, RISCV_IOMMU_REG_DDTP,
> -                          FIELD_PREP(RISCV_IOMMU_DDTP_MODE, RISCV_IOMMU_=
DDTP_MODE_BARE));
> +       rc =3D riscv_iommu_iodir_alloc(iommu);
> +       if (rc)
> +               return rc;
> +
> +       rc =3D riscv_iommu_iodir_set_mode(iommu, RISCV_IOMMU_DDTP_MODE_MA=
X);
> +       if (rc)
> +               return rc;
>
>         rc =3D iommu_device_sysfs_add(&iommu->iommu, NULL, NULL, "riscv-i=
ommu@%s",
>                                     dev_name(iommu->dev));
> -       if (rc)
> -               return dev_err_probe(iommu->dev, rc,
> -                                    "cannot register sysfs interface\n")=
;
> +       if (rc) {
> +               dev_err_probe(iommu->dev, rc, "cannot register sysfs inte=
rface\n");
> +               goto err_iodir_off;
> +       }
>
>         rc =3D iommu_device_register(&iommu->iommu, &riscv_iommu_ops, iom=
mu->dev);
>         if (rc) {
> @@ -161,5 +536,7 @@ int riscv_iommu_init(struct riscv_iommu_device *iommu=
)
>
>  err_remove_sysfs:
>         iommu_device_sysfs_remove(&iommu->iommu);
> +err_iodir_off:
> +       riscv_iommu_iodir_set_mode(iommu, RISCV_IOMMU_DDTP_MODE_OFF);
>         return rc;
>  }
> diff --git a/drivers/iommu/riscv/iommu.h b/drivers/iommu/riscv/iommu.h
> index 700e33dc2446..f1696926582c 100644
> --- a/drivers/iommu/riscv/iommu.h
> +++ b/drivers/iommu/riscv/iommu.h
> @@ -34,6 +34,11 @@ struct riscv_iommu_device {
>         /* available interrupt numbers, MSI or WSI */
>         unsigned int irqs[RISCV_IOMMU_INTR_COUNT];
>         unsigned int irqs_count;
> +
> +       /* device directory */
> +       unsigned int ddt_mode;
> +       dma_addr_t ddt_phys;
> +       u64 *ddt_root;
>  };
>
>  int riscv_iommu_init(struct riscv_iommu_device *iommu);

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

