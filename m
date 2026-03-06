Return-Path: <devicetree+bounces-272234-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2H85Le/0qmlGZAEAu9opvQ
	(envelope-from <devicetree+bounces-272234-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 16:38:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 74EA5223F6E
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 16:38:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A4AE53023E3C
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 15:37:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5ABED3E5EEF;
	Fri,  6 Mar 2026 15:37:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qocXAvTw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3465369210
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 15:37:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.54
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772811467; cv=pass; b=WOlY/EbmUrNwcceY7FDpAHMjos0lPb770KApqjNiI5s6KY1jruOHnpcillq9+FTU9Y1ydFtg//SxV4obcDoC3N7dEkSIn4k1nsWtvU8k8JTqA8Mat/lHxHnxh91kIVNNaL7mjagf9UIdV5UMC9GarFSOJFKlsIVFNUXUkVSh3a8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772811467; c=relaxed/simple;
	bh=O5QfSCEns9vFNerMOqIQKSl0Rgn5CUl6CHEt1vagDHg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gSfLQtVFUnHYu5pwV30Xfq7qnmIVtfgm7NiPPPaa3QBS+bbWiMgDe6jyErKetwmoxOdy3HhfsoOqeTvjeFAT1B+b/NHIjHEA0aEKgVoi54b0dfCarbz+Wstr8XUrjrZRGpjtdQiyzt887ECuW+Cku4c45iLERy9s5ma1vvPhJ3M=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qocXAvTw; arc=pass smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-6610bd5f322so4972779a12.1
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 07:37:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772811463; cv=none;
        d=google.com; s=arc-20240605;
        b=amc4yAArz0mJmEQBHu0F/detj7H1jpVYCji/fXzk1ihySehVDqhJbTsMH0eACWQPB/
         zGDxkfxd9sMCkSSdZv22B4hMmcOIcyjcw0861tBh8qus2zjmQEywCrMGH+KvVkm2OjzS
         zvMdaryktF6D84leVFA3CibpPyJBgaoCoV92jfpU3fVp+SJHWuC6ClK1RW3u9jXs2RyK
         0NGu+errOoROwOhsUGyVjJoRnz6WGJH8YGkf67q5lLM2CmqMbXOQHq3FZKFSX7UxXKxk
         VdV7JJHvFiwEaPr9fI9lW7HKTBwNRck4RkR2qs3gDh3/tUZcK2+B0FQ2TaQzfnRMK7Nv
         UNMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=mzW86KoS/dhspR9cKdWmhAx2Hdo/lWWSD+IX2JUJRiI=;
        fh=ttb7a4oh/2Dtglm3EzT3zYEhHNXXhMBqivMvoygwIg0=;
        b=GUwMfTdYtRkrj/+7fumWakiY0GIJCON0YhU7QXpjwv17GT0d3J3trLLmnNKy3RDoDm
         dm0DLNKFD93JSUUNOh70kdvaVgX7JJXBzTtriiSvuv7wi+vJipLj4Bn2pyU9+yjD4afW
         qHqgSPMcyGKBHvPxgmBNI9ZuIlkgcbdRGNktTDXC+YJPnUac8TrNxsJCwpw1aPvDn2ZI
         QxrcrJIdHzGQcO+H+8vjepbGwwZ1OBbDyiFD3zWzE/9hGhxJVIb1PKOdLjtBArcU31a/
         4KXobUs1DVes6R2sgW+YQCXrIPYJlmlPFC/SSnQKQy5DxUtQxdUQlRs2EBSWykDhdA0+
         0YxQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772811463; x=1773416263; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mzW86KoS/dhspR9cKdWmhAx2Hdo/lWWSD+IX2JUJRiI=;
        b=qocXAvTwx4GrybOIV4jnmJ4KzHKymCVX5RmNeplKcjyAbB+/W2CLOWBXj+nI/MK1Ir
         0MJ8NzKFq+AJeDX80TKMZybldC74s4qlpLkS04EzFMBMvB4jD3QBICVVdAQZhugnD6uo
         wnmAsZt4gFHkGFQ3IIPoi7BctL4KO/l335lcgkmozq01gRo3Kp03BPRS03JYjDoNygJb
         /34nvCXfqsIE8UFaL5pCzbhrMuB54ew5JmU5LjA74B4QbtQ1L80hx5YRbGHAR3VHaLQT
         +ecM+FITFilBLW76DI0WUSZeVbY4+34IIxkEe5Kgi9IoYPIGqLoClrtdBdEUasG9AUnY
         ZkSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772811463; x=1773416263;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mzW86KoS/dhspR9cKdWmhAx2Hdo/lWWSD+IX2JUJRiI=;
        b=bWohkLu9xLXY3OUhghE88bmp8Oba7R0vpbdv2NTc8VaGX4NVLNtCBmcT4/a5/s8g28
         gxnVhpO9raZJg5cgacXHeRuzATwxtt0BaCLzx0dutFH93xGBbZ4lhckXx8aF/grlw/LZ
         AOIL71P1Yf0kk7SAtcD64YR6BMgez8IbMLkRWThpc0lzRt7TCiKOqIrWcL6ewSUxSEHU
         1doSprcc4Db1ikvzX23RcHGZP3s59cBggBGBVawWUa1cB82EehkOJXRZhG9TorNpdR+U
         iFVwUHDT72PS6w40A/v/ujw+DDqfgBuW1BGOqGGy+IHY6zVmRaCuKjKdBAcyVcRjy6Qi
         IYQA==
X-Forwarded-Encrypted: i=1; AJvYcCWTa39djey73tI+92BJW/w+DzBmz3U7t945/dHArlJ/mZUGr83tWWHhIaQRycKR9zBgStS2cp1SyGBj@vger.kernel.org
X-Gm-Message-State: AOJu0YzBgXvM6A3IX/WD/sXO2SoG3qLBxMQfP7+UOy1xJulYIfKk8TgX
	97YqeXrnrUAAlSqM8Zjo5Snp3UEAc+7/X5I53MY+e9lrG9pH61+hwRTl2dhudQiArop2MY6jh93
	5oMlaMIK/f9+lzKibOsPg7gdIXm5AKndwauhs9vBJaQ==
X-Gm-Gg: ATEYQzzA2ivqubBulpLC+RDFLoxJ5NhhQPQWQqK9D2B2Q2oj7wou+5fOU3VSvJGuL4U
	ojCkJr+T+MVkK8k0gZxQBkCb3e8hQflnfL4PcCW4mz8eaXIQmYrXatngLdS5izj6J3LUhYidEn9
	mljxcuiLbwHohz32jel5Uf+OiO3aCubqqBEdmazTkU4Z1fCBt0WI8xOpOjX+5cgs3LPauhyvuDO
	hKQNOoiPbpXVED3xvpTO7C3p4r4d/z14UbfJL0gQxrbwgpiLDhWAQ+4prfQMJi2YsVNv+LRQr0Y
	MGFi0oRt8OVmHipptl4jUkZqgkPOUIzRoi7dxc7zGg==
X-Received: by 2002:a05:6402:2750:b0:660:eabc:9c70 with SMTP id
 4fb4d7f45d1cf-6619d5349a1mr1530140a12.29.1772811463197; Fri, 06 Mar 2026
 07:37:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260306-gs101-pd-v7-0-03f7c7965ba5@linaro.org> <20260306-gs101-pd-v7-9-03f7c7965ba5@linaro.org>
In-Reply-To: <20260306-gs101-pd-v7-9-03f7c7965ba5@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 6 Mar 2026 15:37:31 +0000
X-Gm-Features: AaiRm522XKmDrnyMKuFhryCYHqBWloGFwRuAIoVET18JWhRZ9yKqJQ-aQM3kXms
Message-ID: <CADrjBPrC9de5k0tv_KK6JT2bCOk1Pbrh7m6aUHgJ85DHnZy3wg@mail.gmail.com>
Subject: Re: [PATCH v7 09/10] pmdomain: samsung: implement SMC to save /
 restore TZ config
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, 
	Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 74EA5223F6E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272234-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_CC(0.00)[kernel.org,samsung.com,linaro.org,gmail.com,google.com,android.com,lists.infradead.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[peter.griffin@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-0.994];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:email,mail.gmail.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Fri, 6 Mar 2026 at 10:30, Andr=C3=A9 Draszik <andre.draszik@linaro.org> =
wrote:
>
> Newer Exynos platforms have a Distributed Trust Zone Protection Control
> (DTZPC) linked to each power domain. It controls the access permissions
> to various registers from secure and non-secure world. An SMC call is
> required to instruct the firmware that the power domain is about to be
> turned off and again once it was turned on. This allows the firmware to
> save and restore the DTZPC configuration. Without, register access to
> various registers becomes impossible from Linux (causing SError), as
> the PoR configuration doesn't allow access.
>
> Neither the requirement for the SMC call, nor its arguments appear to
> be specific to gs101, as at least Exynos E850 also uses the same as can
> be seen in [1], hence prefix the new macros simply with EXYNOS_.
>
> At least on gs101, this SMC call isn't implemented for all power
> domains (e.g. it's missing for HSI2 (UFS)), therefore we issue a test
> SMC to store the configuration during probe, and if it fails we mark a
> domain as always-on to avoid the SErrors and to avoid unnecessarily
> retrying for each domain on/off.
>
> Link: https://lore.kernel.org/all/20230308233822.31180-4-semen.protsenko@=
linaro.org/ [1]
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

>  drivers/pmdomain/samsung/exynos-pm-domains.c | 96 ++++++++++++++++++++++=
++++--
>  1 file changed, 90 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/pmdomain/samsung/exynos-pm-domains.c b/drivers/pmdom=
ain/samsung/exynos-pm-domains.c
> index 41a232b3cdaf..f59986b56213 100644
> --- a/drivers/pmdomain/samsung/exynos-pm-domains.c
> +++ b/drivers/pmdomain/samsung/exynos-pm-domains.c
> @@ -9,6 +9,7 @@
>  // conjunction with runtime-pm. Support for both device-tree and non-dev=
ice-tree
>  // based power domain support is included.
>
> +#include <linux/arm-smccc.h>
>  #include <linux/err.h>
>  #include <linux/platform_device.h>
>  #include <linux/slab.h>
> @@ -16,12 +17,19 @@
>  #include <linux/pm_domain.h>
>  #include <linux/delay.h>
>  #include <linux/of.h>
> +#include <linux/of_address.h>
>  #include <linux/pm_runtime.h>
>  #include <linux/regmap.h>
>
> +#define EXYNOS_SMC_CMD_PREPARE_PD_ONOFF                0x82000410
> +#define EXYNOS_GET_IN_PD_DOWN                  0
> +#define EXYNOS_WAKEUP_PD_DOWN                  1
> +#define EXYNOS_RUNTIME_PM_TZPC_GROUP           2
> +
>  struct exynos_pm_domain_config {
>         /* Value for LOCAL_PWR_CFG and STATUS fields for each domain */
>         u32 local_pwr_cfg;
> +       u32 smc_offset;
>         bool use_parent_regmap;
>  };
>
> @@ -32,11 +40,28 @@ struct exynos_pm_domain {
>         struct regmap *regmap;
>         struct device *dev;
>         struct generic_pm_domain pd;
> -       u32 local_pwr_cfg;
> +       const struct exynos_pm_domain_config *cfg;
>         u32 configuration_reg;
>         u32 status_reg;
> +       phys_addr_t ac_pa;
>  };
>
> +static int exynos_pd_access_controller_power(struct exynos_pm_domain *pd=
,
> +                                            bool power_on)
> +{
> +       struct arm_smccc_res res;
> +
> +       if (!pd->ac_pa || !pd->cfg->smc_offset)
> +               return 0;
> +
> +       arm_smccc_smc(EXYNOS_SMC_CMD_PREPARE_PD_ONOFF,
> +                     power_on ? EXYNOS_WAKEUP_PD_DOWN : EXYNOS_GET_IN_PD=
_DOWN,
> +                     pd->ac_pa + pd->cfg->smc_offset,
> +                     EXYNOS_RUNTIME_PM_TZPC_GROUP, 0, 0, 0, 0, &res);
> +
> +       return res.a0;
> +}
> +
>  static int exynos_pd_power(struct generic_pm_domain *domain, bool power_=
on)
>  {
>         struct exynos_pm_domain *pd;
> @@ -45,7 +70,17 @@ static int exynos_pd_power(struct generic_pm_domain *d=
omain, bool power_on)
>
>         pd =3D container_of(domain, struct exynos_pm_domain, pd);
>
> -       pwr =3D power_on ? pd->local_pwr_cfg : 0;
> +       if (!power_on) {
> +               err =3D exynos_pd_access_controller_power(pd, power_on);
> +               if (err) {
> +                       dev_err(pd->dev,
> +                               "SMC for power domain %s %sable failed: %=
d\n",
> +                               domain->name, power_on ? "en" : "dis", er=
r);
> +                       return err;
> +               }
> +       }
> +
> +       pwr =3D power_on ? pd->cfg->local_pwr_cfg : 0;
>         err =3D regmap_write(pd->regmap, pd->configuration_reg, pwr);
>         if (err) {
>                 dev_err(pd->dev,
> @@ -60,7 +95,7 @@ static int exynos_pd_power(struct generic_pm_domain *do=
main, bool power_on)
>                 unsigned int val;
>
>                 err =3D regmap_read(pd->regmap, pd->status_reg, &val);
> -               if (err || ((val & pd->local_pwr_cfg) !=3D pwr)) {
> +               if (err || ((val & pd->cfg->local_pwr_cfg) !=3D pwr)) {
>                         cpu_relax();
>                         usleep_range(80, 100);
>                         continue;
> @@ -72,9 +107,21 @@ static int exynos_pd_power(struct generic_pm_domain *=
domain, bool power_on)
>         if (!timeout && !err)
>                 /* Only return timeout if no other error also occurred. *=
/
>                 err =3D -ETIMEDOUT;
> -       if (err)
> +       if (err) {
>                 dev_err(pd->dev, "Power domain %s %sable failed: %d\n",
>                         domain->name, power_on ? "en" : "dis", err);
> +               return err;
> +       }
> +
> +       if (power_on) {
> +               err =3D exynos_pd_access_controller_power(pd, power_on);
> +               if (err) {
> +                       dev_err(pd->dev,
> +                               "SMC for power domain %s %sable failed: %=
d\n",
> +                               domain->name, power_on ? "en" : "dis", er=
r);
> +                       return err;
> +               }
> +       }
>
>         return err;
>  }
> @@ -99,6 +146,7 @@ static const struct exynos_pm_domain_config exynos5433=
_cfg =3D {
>
>  static const struct exynos_pm_domain_config gs101_cfg =3D {
>         .local_pwr_cfg          =3D BIT(0),
> +       .smc_offset             =3D 0x0204,
>         .use_parent_regmap      =3D true,
>  };
>
> @@ -126,6 +174,38 @@ static const char *exynos_get_domain_name(struct dev=
ice *dev,
>         return devm_kstrdup_const(dev, name, GFP_KERNEL);
>  }
>
> +static int exynos_pd_get_access_controller(struct exynos_pm_domain *pd)
> +{
> +       struct device_node *ac_np;
> +       struct resource ac_res;
> +       int ret;
> +
> +       ac_np =3D of_parse_phandle(pd->dev->of_node, "samsung,dtzpc", 0);
> +       if (!ac_np)
> +               return 0;
> +
> +       ret =3D of_address_to_resource(ac_np, 0, &ac_res);
> +       of_node_put(ac_np);
> +       if (ret)
> +               return dev_err_probe(pd->dev, ret,
> +                                    "failed to get access controller\n")=
;
> +
> +       pd->ac_pa =3D ac_res.start;
> +
> +       /*
> +        * For some domains, TZ save/restore might not be implemented. If=
 that
> +        * is the case, simply mark it as always on, as otherwise a power=
 cycle
> +        * will lead to lost TZ configuration, making it impossible to ac=
cess
> +        * registers from Linux afterwards.
> +        */
> +       if (exynos_pd_access_controller_power(pd, false) =3D=3D -ENOENT) =
{
> +               pd->ac_pa =3D 0;
> +               pd->pd.flags |=3D GENPD_FLAG_ALWAYS_ON;
> +       }
> +
> +       return 0;
> +}
> +
>  static int exynos_pd_probe(struct platform_device *pdev)
>  {
>         const struct exynos_pm_domain_config *pm_domain_cfg;
> @@ -195,10 +275,14 @@ static int exynos_pd_probe(struct platform_device *=
pdev)
>
>         pd->pd.power_off =3D exynos_pd_power_off;
>         pd->pd.power_on =3D exynos_pd_power_on;
> -       pd->local_pwr_cfg =3D pm_domain_cfg->local_pwr_cfg;
> +       pd->cfg =3D pm_domain_cfg;
>         pd->configuration_reg +=3D 0;
>         pd->status_reg +=3D 4;
>
> +       ret =3D exynos_pd_get_access_controller(pd);
> +       if (ret)
> +               return ret;
> +
>         /*
>          * Some Samsung platforms with bootloaders turning on the splash-=
screen
>          * and handing it over to the kernel, requires the power-domains =
to be
> @@ -212,7 +296,7 @@ static int exynos_pd_probe(struct platform_device *pd=
ev)
>         if (ret)
>                 return dev_err_probe(dev, ret, "failed to read status");
>
> -       on =3D val & pd->local_pwr_cfg;
> +       on =3D val & pd->cfg->local_pwr_cfg;
>
>         pm_genpd_init(&pd->pd, NULL, !on);
>         ret =3D of_genpd_add_provider_simple(np, &pd->pd);
>
> --
> 2.53.0.473.g4a7958ca14-goog
>

