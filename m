Return-Path: <devicetree+bounces-34653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D07BA83A703
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 11:41:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5FBCE1F2C817
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 10:41:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 372D417741;
	Wed, 24 Jan 2024 10:41:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mA366/0k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9B815EB0
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 10:41:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706092892; cv=none; b=X5meHMOr5M8mbqgaA6JD6sBrSl+/lFI4mWz+RyueeakUVE5527zIqOi3PqB5+seqVxZ/IQtj50WQHudKUdhUAHs95kGSSieene0JWwMOKvDZHALX8SY6aPa8YWa7Gplai7h8bedlG4r/2ad7pFb7ZBiGaFJLFCgMxbBWWwUL/v8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706092892; c=relaxed/simple;
	bh=7t/ckmKzHlheLjok9vFG6UB4uGApUEbePlDwZjvDVW8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jgwxANMNmVw5rG3RWjHoCXZ9fWEPlT+Lam8KRDA5vdFFEW0P97JTP5b5LzH9daYFWoavXg+UHbkmonQUNtfVdFBbYAyhzpqJ+dYQOnEssyrD62cu70O1NTPXVUxBMO1OyoPfuXW1RWgigDkC+mBt2nmMQBVqKS7xs/9Sz+Wj+Og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mA366/0k; arc=none smtp.client-ip=209.85.219.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-68183d4e403so30328716d6.1
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 02:41:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706092889; x=1706697689; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QiROMXXFXODb7L7UjqjyOxVrJ4ER2WDfQ75RZrjuQlI=;
        b=mA366/0ksJC0dQX2JHwhMLRJylFBdvGyv1ItB3e3OH9GbRQ9gyzGcULbpvo+xAXevb
         1eLrG/neangBb+WrW9Pvu7HqoyAJLLC/KsVVYrSWgD62/1nv+wD8sePOxT/AU3NG+G8+
         N1zzgbbJNInpCErcRWL0Q+bhIhX87F8kOGCLLZ22+ETBfXgF84wzbRfAd1KrugGWDYa3
         kwzXsYTOL0k0NhuT+o5Y3lRDB/9y6HYAH613TUUvsvn/Z4CwKM+0wbgsbW75PfaFpknX
         NItTrQC9QOUlean2GDdo+M9mV3WoCoOe6gUWlsaoxw60RDUAYXt/CxtCKIbhrG34IXnR
         tUBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706092889; x=1706697689;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QiROMXXFXODb7L7UjqjyOxVrJ4ER2WDfQ75RZrjuQlI=;
        b=GkI/gCa8oK64SfDxiKxIGs2/DLXVs/2J/wbjbYyo3vgIxg7Xuni2wXLHxmuWbhNiKU
         4wpGKK5ERyXc7Ed7Jn53witQepw+q4ns4OVN0U16/AeNl2HkN++Qv1Q4uCDdMYD/hNjM
         gcDXR5USJfz3H9XsK4pg+/9J0x3X6LWdP5m+tQF4ixCY8htdmytYzXlB7tnbYCr2PQUB
         9dKEIv7g+3H+G5n1rS1/xKkqbX/nWAfuyQE0ZN6z0WkV9l/9RDbCBIuzrIPVoBuiYkd4
         wW7g5b/XtAqzdZ8gn+raB5/9S71/YqTzWXhI1xTRmYiUej3cGAoKaSvBJnHdQVO2mWVB
         HcCQ==
X-Gm-Message-State: AOJu0YxG827INTkSh1bJ/nKKfz/Qb9LDCj8KLzgvHw2WwGnNUuPqTPkR
	NaaVs3KXU8/0h4N3yMaTA7KisZ7hPDMDuufcxj0bK8b2vgvPWyk7KNVQa/5wAV64UDZIDeeWmAH
	62tbP7BlcXP92ysc2Ypm7g/0HS8AgvFnLwMaC/Q==
X-Google-Smtp-Source: AGHT+IFdsL92eDpEceUPy/NWPdnUioo8kum7OltCPI/0zSDnxL1Kdg86w6Gpzo+sJQrbnoYeqGoisoDoMIBXSecc9ys=
X-Received: by 2002:ad4:5ce7:0:b0:686:309e:14d2 with SMTP id
 iv7-20020ad45ce7000000b00686309e14d2mr3021783qvb.119.1706092889057; Wed, 24
 Jan 2024 02:41:29 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240122225710.1952066-1-peter.griffin@linaro.org>
 <20240122225710.1952066-3-peter.griffin@linaro.org> <26b9a75c-3721-4d7a-985e-772d9f67e6d5@linaro.org>
In-Reply-To: <26b9a75c-3721-4d7a-985e-772d9f67e6d5@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Wed, 24 Jan 2024 10:41:16 +0000
Message-ID: <CADrjBPqTqe+HDN_ye41sR_yJgnUXOWwkZsQyujptPPfzg+EBeg@mail.gmail.com>
Subject: Re: [PATCH 2/9] soc: samsung: exynos-pmu: Add exynos_pmu_update/read/write
 APIs and SoC quirks
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: arnd@arndb.de, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	linux@roeck-us.net, wim@linux-watchdog.org, conor+dt@kernel.org, 
	alim.akhtar@samsung.com, jaewon02.kim@samsung.com, chanho61.park@samsung.com, 
	semen.protsenko@linaro.org, kernel-team@android.com, tudor.ambarus@linaro.org, 
	andre.draszik@linaro.org, saravanak@google.com, willmcvicker@google.com, 
	linux-fsd@tesla.com, linux-watchdog@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Krzysztof,

Thanks for the review feedback.

On Tue, 23 Jan 2024 at 11:17, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 22/01/2024 23:57, Peter Griffin wrote:
> > Newer Exynos SoCs have atomic set/clear bit hardware for PMU registers as
> > these registers can be accessed by multiple masters. Some platforms also
> > protect the PMU registers for security hardening reasons so they can't be
> > written by normal world and are only write acessible in el3 via a SMC call.
>
>
> Typo? accessible?

Will fix in v2.
>
> >
> > Add support for both of these usecases using SoC specific quirks that are
> > determined from the DT compatible string.>
> > Drivers which need to read and write PMU registers should now use these
> > new exynos_pmu_*() APIs instead of obtaining a regmap using
> > syscon_regmap_lookup_by_phandle()
> >
> > Depending on the SoC specific quirks, the exynos_pmu_*() APIs will access
> > the PMU register in the appropriate way.
> >
> > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> > ---
> >  drivers/soc/samsung/exynos-pmu.c       | 209 ++++++++++++++++++++++++-
> >  drivers/soc/samsung/exynos-pmu.h       |   4 +
> >  include/linux/soc/samsung/exynos-pmu.h |  28 ++++
> >  3 files changed, 234 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/soc/samsung/exynos-pmu.c b/drivers/soc/samsung/exynos-pmu.c
> > index 250537d7cfd6..e9e933ede568 100644
> > --- a/drivers/soc/samsung/exynos-pmu.c
> > +++ b/drivers/soc/samsung/exynos-pmu.c
> > @@ -5,6 +5,7 @@
> >  //
> >  // Exynos - CPU PMU(Power Management Unit) support
> >
> > +#include <linux/arm-smccc.h>
> >  #include <linux/of.h>
> >  #include <linux/of_address.h>
> >  #include <linux/mfd/core.h>
> > @@ -12,29 +13,204 @@
> >  #include <linux/of_platform.h>
> >  #include <linux/platform_device.h>
> >  #include <linux/delay.h>
> > +#include <linux/regmap.h>
> >
> >  #include <linux/soc/samsung/exynos-regs-pmu.h>
> >  #include <linux/soc/samsung/exynos-pmu.h>
> >
> >  #include "exynos-pmu.h"
> >
> > +/**
> > + * DOC: Quirk flags for different Exynos PMU IP-cores
> > + *
> > + * This driver supports multiple Exynos based SoCs, each of which might have a
> > + * different set of registers and features supported.
> > + *
> > + * Quirk flags described below serve the purpose of telling the driver about
> > + * mentioned SoC traits, and can be specified in driver data for each particular
> > + * supported device.
> > + *
> > + * %QUIRK_HAS_ATOMIC_BITSETHW: PMU IP has special atomic bit set/clear HW
> > + * to protect against PMU registers being accessed from multiple bus masters.
> > + *
> > + * %QUIRK_PMU_ALIVE_WRITE_SEC: PMU registers are *not* write accesible from
> > + * normal world. This is found on some SoCs as a security hardening measure. PMU
> > + * registers on these SoCs can only be written via a SMC call and registers are
> > + * checked by EL3 firmware against an allowlist before the write can procede.
> > + * Note: This quirk should only be set for platforms whose el3 firmware
> > + * implements the TENSOR_SMC_PMU_SEC_REG interface below.
> > + */
> > +
> > +#define QUIRK_HAS_ATOMIC_BITSETHW            BIT(0)
> > +#define QUIRK_PMU_ALIVE_WRITE_SEC            BIT(1)
> > +
> > +#define PMUALIVE_MASK GENMASK(14, 0)
> > +
> >  struct exynos_pmu_context {
> >       struct device *dev;
> >       const struct exynos_pmu_data *pmu_data;
> > +     struct regmap *pmureg;
> > +     void __iomem *pmu_base_addr;
> > +     phys_addr_t pmu_base_pa;
> > +     /* protect PMU reg atomic update operations */
> > +     spinlock_t update_lock;
> >  };
> >
> > -void __iomem *pmu_base_addr;
> >  static struct exynos_pmu_context *pmu_context;
> >
> > +/*
> > + * Some SoCs are configured so that PMU_ALIVE registers can only be written
> > + * from el3. As Linux needs to write some of these registers, the following
> > + * SMC register read/write/read,write,modify interface is used.
> > + *
> > + * Note: This SMC interface is known to be implemented on gs101 and derivative
> > + * SoCs.
> > + */
> > +#define TENSOR_SMC_PMU_SEC_REG                       (0x82000504)
> > +#define TENSOR_PMUREG_READ                   0
> > +#define TENSOR_PMUREG_WRITE                  1
> > +#define TENSOR_PMUREG_RMW                    2
>
> These are tensor specific...
>
> > +
> > +int set_priv_reg(phys_addr_t reg, u32 val)
>
> ...but this not...
>
> > +{
> > +     struct arm_smccc_res res;
> > +
> > +     arm_smccc_smc(TENSOR_SMC_PMU_SEC_REG,
>
> ... and this is again.
>
> Some naming should be clarified, e.g. tensor specific functions should
> have some prefix as well, e.g. tensor_writel(), tensor_cmpxchg() or
> something similar.

Noted. I will add a tensor prefix on these two functions as well in v2.

>
>
> > +                   reg,
> > +                   TENSOR_PMUREG_WRITE,
> > +                   val, 0, 0, 0, 0, &res);
> > +
> > +     if (res.a0)
> > +             pr_warn("%s(): SMC failed: %lu\n", __func__, res.a0);
> > +
> > +     return (int)res.a0;
> > +}
> > +
> > +int rmw_priv_reg(phys_addr_t reg, u32 mask, u32 val)
> > +{
> > +     struct arm_smccc_res res;
> > +
> > +     arm_smccc_smc(TENSOR_SMC_PMU_SEC_REG,
> > +                   reg,
> > +                   TENSOR_PMUREG_RMW,
> > +                   mask, val, 0, 0, 0, &res);
> > +
> > +     if (res.a0)
> > +             pr_warn("%s(): SMC failed: %lu\n", __func__, res.a0);
> > +
> > +     return (int)res.a0;
> > +}
> > +
> > +/*
> > + * For SoCs that have set/clear bit hardware (as indicated by
> > + * QUIRK_HAS_ATOMIC_BITSETHW) this function can be used when
> > + * the PMU register will be accessed by multiple masters.
> > + *
> > + * For example, to set bits 13:8 in PMU reg offset 0x3e80
> > + * exynos_pmu_set_bit_atomic(0x3e80, 0x3f00, 0x3f00);
> > + *
> > + * To clear bits 13:8 in PMU offset 0x3e80
> > + * exynos_pmu_set_bit_atomic(0x3e80, 0x0, 0x3f00);
> > + */
> > +static inline void exynos_pmu_set_bit_atomic(unsigned int offset,
> > +                                          u32 val, u32 mask)
> > +{
> > +     unsigned long flags;
> > +     unsigned int i;
> > +
> > +     spin_lock_irqsave(&pmu_context->update_lock, flags);
> > +     for (i = 0; i < 32; i++) {
> > +             if (mask & BIT(i)) {
> > +                     if (val & BIT(i)) {
> > +                             offset |= 0xc000;
> > +                             pmu_raw_writel(i, offset);
> > +                     } else {
> > +                             offset |= 0x8000;
> > +                             pmu_raw_writel(i, offset);
> > +                     }
> > +             }
> > +     }
> > +     spin_unlock_irqrestore(&pmu_context->update_lock, flags);
> > +}
> > +
> > +int exynos_pmu_update_bits(unsigned int offset, unsigned int mask,
> > +                        unsigned int val)
> > +{
> > +     if (pmu_context->pmu_data &&
> > +         pmu_context->pmu_data->quirks & QUIRK_PMU_ALIVE_WRITE_SEC)
> > +             return rmw_priv_reg(pmu_context->pmu_base_pa + offset,
> > +                                 mask, val);
> > +
> > +     return regmap_update_bits(pmu_context->pmureg, offset, mask, val);
> > +}
> > +EXPORT_SYMBOL(exynos_pmu_update_bits);
>
> You need kerneldoc for all exported functions.
>
> Also, EXPORT_SYMBOL_GPL

Will fix both in v2.

>
> > +
> >  void pmu_raw_writel(u32 val, u32 offset)
> >  {
> > -     writel_relaxed(val, pmu_base_addr + offset);
> > +     if (pmu_context->pmu_data &&
> > +         pmu_context->pmu_data->quirks & QUIRK_PMU_ALIVE_WRITE_SEC)
> > +             return (void)set_priv_reg(pmu_context->pmu_base_pa + offset,
> > +                                       val);
> > +
> > +     return writel_relaxed(val, pmu_context->pmu_base_addr + offset);
> >  }
> >
>
> ...
>
> > diff --git a/drivers/soc/samsung/exynos-pmu.h b/drivers/soc/samsung/exynos-pmu.h
> > index 1c652ffd79b4..570c6e4dc8c3 100644
> > --- a/drivers/soc/samsung/exynos-pmu.h
> > +++ b/drivers/soc/samsung/exynos-pmu.h
> > @@ -25,8 +25,12 @@ struct exynos_pmu_data {
> >       void (*pmu_init)(void);
> >       void (*powerdown_conf)(enum sys_powerdown);
> >       void (*powerdown_conf_extra)(enum sys_powerdown);
> > +     u32 quirks;
> >  };
> >
> > +int set_priv_reg(phys_addr_t reg, u32 val);
> > +int rmw_priv_reg(phys_addr_t reg, u32 mask, u32 val);
>
> Why these are in the header?

Will fix in v2.

regards,

Peter.

