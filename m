Return-Path: <devicetree+bounces-272216-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KMDtJHzxqmncYwEAu9opvQ
	(envelope-from <devicetree+bounces-272216-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 16:23:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD80223B3E
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 16:23:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C22023005EA1
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 15:20:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97FDA3644AF;
	Fri,  6 Mar 2026 15:20:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qJQglw1/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 530A435CB9B
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 15:20:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772810445; cv=pass; b=P6JM2EI9oKj8MEPx418Z8tDZKfX1EPDyGX1UJJzhsApHh/oawx+0KKiRRVEvwGsBP1Yd6xnTSnyks4KoQzLMr7hxdbRMxxz9ak/N/IqAfMMrs6I4zYqASDdgpzzSIP87srbPLe2dkFdDvbaiw0lcVMOXgzLYDKEwC4suJ8XyjeE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772810445; c=relaxed/simple;
	bh=KOsZndq2fxFvV5ZjjA90mg2yR7mJTcoSEakFrOShe1o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CAbNbBl6gjUeY3mcs+2azCOLa8mGLLM5FEXZDESBdopXRBH1zjZnjlf769FQGshqBsZDsw5EAiNijgA9/SNwqc+dCh3Avk77Euzf1Ra6907qd7RvcTIO0PGX1wmpRuZZELYiv6iYke0XXN1MtjQ7HviaDMn7m3bmDpwH2I4qwHQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qJQglw1/; arc=pass smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-66174cf4549so1024270a12.0
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 07:20:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772810442; cv=none;
        d=google.com; s=arc-20240605;
        b=ipk0GoRGzTyHPwJ7Esm31rZWqrG+sr3RSbCpA/6VEc4d85SUV1Mvbwlm418m19T36u
         Qd+u0gzKoUIF+J+b5pF/r8RC308JWCVIDesfwWmU2ORxXgycvtsLI47j22IqzNuiz6Q6
         9DNdP+4x26kxBLVSes9IzmfcWhRHxUDTKJTeFOH3HSYZGYAnQyC/2xAtIA7LjDPqqUpJ
         x6PYvz9sx1lwrRL0AisgXGRv2o67bWTVPHJyFZesG+CZ0J71Ti1G8L9Sh0y87MU8/VA/
         9uKD4qU+zZyu7/iVOA8K95ebTGumhCC2lXPbyCwDP63J+l4UdJIUTxW9t7Uf4LH1T62U
         sjng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=oPFMUflif2PcoprUWa7OFxGTQSn7UEMXyNiXbjIMxgc=;
        fh=pcM6fAeJLAEqZbULgZrZbcXmlK7aNn7qY/JzDBXbIGs=;
        b=QyUiwMd1tAfhbHJZIYfAKjfS/NayeOLBoRg0g4/RFAchUJqYkdlOujTHiopGuoEM+e
         eeSKo3Kd/2s5wjqYeyoO3GqWuJoP+FeX0qNZIhhqQfqnjrTOcmRGTCrjjKzJ3r0D57dk
         xnzo5e5BkayDfXLUbamRI4Cg5VKsBjrOqfZqPiWgLCXASdbgxeTr2gJvu9R3vfKdgId+
         GMk2NhReh1kBP0L0t74x+hcNgheTUQyoVV0eu+lEhkqkOZiwgXFhT+b2DmzJk3m3OV1U
         16I4vvHg4bBwJ1eoMKF0FQNtM0HwpPW/EpeGKhj69HKbOQeIGxihmDB+dB/k9wi+NvVF
         6lTw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772810442; x=1773415242; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oPFMUflif2PcoprUWa7OFxGTQSn7UEMXyNiXbjIMxgc=;
        b=qJQglw1/2i7Vrc/qxZO66X7wS1a+J79HX8FaACL138laP5SjsSG7lOtf9KOeXCH9+9
         NEAfmb3sGqhV2AUDJ1dhlIvwt0xXoEoLrvcAWR9VyXeFXQz8WTk/WRztXF5ZGQPf1yEn
         VSqQokMB0SrfvMs+K17dDWKZnQU/x2UvljL4oHWx6QtB9PAAhMycSJt2fBaKw1l4V5WC
         pMty4HWPLxUFOIpzETbAIumJujnIHPu6xFIU7DU0ok+FNFJrunfGQ515/H7frh+1Iytj
         WplKJgEthW2Q/dhpHmmvHP6cZJ5lYEn9WEpIrfDzhqjJ1jJBg5LI2k4WWmRJyWDsWNBD
         tPFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772810442; x=1773415242;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=oPFMUflif2PcoprUWa7OFxGTQSn7UEMXyNiXbjIMxgc=;
        b=HUY4idmRY/2Fz782+TtrxkHWSn3S1Kq3bhy8Arz+syg7U/xKcuMySNYgq6WpNZph9h
         X3okwGJktLe4c469Ibt3y/GWI6W4bPpVqe5vAEYeDv/xooYkUe4WNCwfWyaCbJyaMRkQ
         VMRtw2BD4ft3NMMj0QOrcxO4/DL633em1b8zxnR8o7tAQ16mH+gBj2IcdFpn1FokEJNO
         DegnIU/INM+grzVZxbRMT+WngId4tsqFG/cJTU+keD0EKF+cJF7ANQLKXDgNAQpdhDcv
         /zhtjzgzeXWpDl4a/c7Dsah+h0QBLv5tyNK0EDH6ABou3v/irqgv9QCobcOj3Xaoe/i5
         +e9Q==
X-Forwarded-Encrypted: i=1; AJvYcCV+hixDDXq7NKqZafjA3m7jBq35Mj8nSeNL5R0GB/+WpdkvdGfPUtcXiKHKnHCZt5swKjjKxN0bi0rw@vger.kernel.org
X-Gm-Message-State: AOJu0YxU2ttyk3EqO2lcYPAgn/cfZZfqcf2UfppANMQVjCJqWJg9m5H+
	p6zPdcWtWthHE87jj0CrV+kZM2OqoJfathAZJy+40pdUxggtZtCGM03LGo7IOn8vdVPNbfD8qlL
	RDy8jGN85tht3EFvnNNZELGMPOaF9XjAbQK6DxV0W7w==
X-Gm-Gg: ATEYQzwBfEciGgR+XrJq2XpH+tgsoVM9J7IWgjSS9DWquiSM8beiGgVhRoTGDup2PfG
	KRwK+3cjWYS6rlLtzAVdbyeFH9bymp++aPTgktvMNCZGHcUadc2w6UkkOjlrRQU/gGZvSk3VRMz
	bzOSojvTRCb8rPBPUG0L8CLdEYadcd36bsXqndL3uWtVhFbGvw8SY4sDF8aypgosfXcinPbubeE
	PvRRcZG5Tubty3n3wY1FRDP/7Ls4uHNnCj4TzYSVqzn2VV5DCHFQJlN7Z7C8+Ggm1vnSXeHasU8
	fb+2USTRqleWXGxlZJfFa+q2TA6T45OfYywwOJAFxQ==
X-Received: by 2002:a05:6402:719:b0:65f:76d7:d507 with SMTP id
 4fb4d7f45d1cf-66142d406c4mr2730888a12.8.1772810441112; Fri, 06 Mar 2026
 07:20:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260306-gs101-pd-v7-0-03f7c7965ba5@linaro.org> <20260306-gs101-pd-v7-7-03f7c7965ba5@linaro.org>
In-Reply-To: <20260306-gs101-pd-v7-7-03f7c7965ba5@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 6 Mar 2026 15:20:29 +0000
X-Gm-Features: AaiRm52gkTQ-LvYEyU8OUxVKlY-XzL8CHFqDj2nv7Gqx-ZbbUqON9JYJP7oOtB8
Message-ID: <CADrjBPrAK6-76u1vPUkc5BLTugHCa+Fk=Rvr9uOQDie7Avfd7w@mail.gmail.com>
Subject: Re: [PATCH v7 07/10] pmdomain: samsung: add support for google,gs101-pd
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, 
	Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 0FD80223B3E
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
	TAGGED_FROM(0.00)[bounces-272216-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,samsung.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Fri, 6 Mar 2026 at 10:29, Andr=C3=A9 Draszik <andre.draszik@linaro.org> =
wrote:
>
> On Google gs101, direct mmio register access to the PMU registers
> doesn't work and access must happen via a regmap created by the PMU
> driver instead.
>
> Add a flag to the device match data to denote this case, and obtain
> the regmap using the parent node in DT if true, while keeping to use
> the traditional direct mmio regmap otherwise.
>
> Additionally, the status is just one bit on gs101.
>
> Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

> v4:
> - add 'use_parent_regmap' flag instead of going by 'syscon' compatible
>   in parent, as it's not a given that the parent provides a syscon-
>   compatible regmap (it actually doesn't anymore after recent changes
>   on gs101)
>
> I've still kept Marek's Tested-by from v3, as legacy Exynos code
> doesn't change.
> ---
>  drivers/pmdomain/samsung/exynos-pm-domains.c | 66 +++++++++++++++++++---=
------
>  1 file changed, 46 insertions(+), 20 deletions(-)
>
> diff --git a/drivers/pmdomain/samsung/exynos-pm-domains.c b/drivers/pmdom=
ain/samsung/exynos-pm-domains.c
> index 8df46b41f9bc..2214d9f32d59 100644
> --- a/drivers/pmdomain/samsung/exynos-pm-domains.c
> +++ b/drivers/pmdomain/samsung/exynos-pm-domains.c
> @@ -12,6 +12,7 @@
>  #include <linux/err.h>
>  #include <linux/platform_device.h>
>  #include <linux/slab.h>
> +#include <linux/mfd/syscon.h>
>  #include <linux/pm_domain.h>
>  #include <linux/delay.h>
>  #include <linux/of.h>
> @@ -21,6 +22,7 @@
>  struct exynos_pm_domain_config {
>         /* Value for LOCAL_PWR_CFG and STATUS fields for each domain */
>         u32 local_pwr_cfg;
> +       bool use_parent_regmap;
>  };
>
>  /*
> @@ -93,8 +95,16 @@ static const struct exynos_pm_domain_config exynos5433=
_cfg =3D {
>         .local_pwr_cfg          =3D 0xf,
>  };
>
> +static const struct exynos_pm_domain_config gs101_cfg =3D {
> +       .local_pwr_cfg          =3D BIT(0),
> +       .use_parent_regmap      =3D true,
> +};
> +
>  static const struct of_device_id exynos_pm_domain_of_match[] =3D {
>         {
> +               .compatible =3D "google,gs101-pd",
> +               .data =3D &gs101_cfg,
> +       }, {
>                 .compatible =3D "samsung,exynos4210-pd",
>                 .data =3D &exynos4210_cfg,
>         }, {
> @@ -122,17 +132,9 @@ static int exynos_pd_probe(struct platform_device *p=
dev)
>         struct of_phandle_args child, parent;
>         struct exynos_pm_domain *pd;
>         struct resource *res;
> -       void __iomem *base;
>         unsigned int val;
>         int on, ret;
>
> -       struct regmap_config reg_config =3D {
> -               .reg_bits =3D 32,
> -               .val_bits =3D 32,
> -               .reg_stride =3D 4,
> -               .use_relaxed_mmio =3D true,
> -       };
> -
>         pm_domain_cfg =3D of_device_get_match_data(dev);
>         pd =3D devm_kzalloc(dev, sizeof(*pd), GFP_KERNEL);
>         if (!pd)
> @@ -143,25 +145,49 @@ static int exynos_pd_probe(struct platform_device *=
pdev)
>                 return -ENOMEM;
>
>         /*
> -        * The resource typically points into the address space of the PM=
U.
> +        * The resource typically points into the address space of the PM=
U and
> +        * we have to consider two cases:
> +        *   1) some implementations require a custom regmap (from PMU pa=
rent)
> +        *   2) this driver might map the same addresses as the PMU drive=
r
>          * Therefore, avoid using devm_platform_get_and_ioremap_resource(=
) and
> -        * instead use platform_get_resource() and devm_ioremap() to avoi=
d
> +        * instead use platform_get_resource() here, and below for case 1=
) use
> +        * syscon_node_to_regmap() while for case 2) use devm_ioremap() t=
o avoid
>          * conflicts due to address space overlap.
>          */
>         res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
>         if (!res)
>                 return dev_err_probe(dev, -ENXIO, "missing IO resources")=
;
>
> -       base =3D devm_ioremap(dev, res->start, resource_size(res));
> -       if (!base)
> -               return dev_err_probe(dev, -ENOMEM,
> -                                    "failed to ioremap PMU registers");
> -
> -       reg_config.max_register =3D resource_size(res) - reg_config.reg_s=
tride;
> -       pd->regmap =3D devm_regmap_init_mmio(dev, base, &reg_config);
> -       if (IS_ERR(pd->regmap))
> -               return dev_err_probe(dev, PTR_ERR(base),
> -                                    "failed to init regmap");
> +       if (pm_domain_cfg->use_parent_regmap) {
> +               pd->regmap =3D syscon_node_to_regmap(dev->parent->of_node=
);
> +               if (IS_ERR(pd->regmap))
> +                       return dev_err_probe(dev, PTR_ERR(pd->regmap),
> +                                            "failed to acquire PMU regma=
p");
> +
> +               pd->configuration_reg =3D res->start;
> +               pd->status_reg =3D res->start;
> +       } else {
> +               void __iomem *base;
> +
> +               const struct regmap_config reg_config =3D {
> +                       .reg_bits =3D 32,
> +                       .val_bits =3D 32,
> +                       .reg_stride =3D 4,
> +                       .use_relaxed_mmio =3D true,
> +                       .max_register =3D (resource_size(res)
> +                                        - reg_config.reg_stride),
> +               };
> +
> +               base =3D devm_ioremap(dev, res->start, resource_size(res)=
);
> +               if (!base)
> +                       return dev_err_probe(dev, -ENOMEM,
> +                                            "failed to ioremap PMU regis=
ters");
> +
> +               pd->regmap =3D devm_regmap_init_mmio(dev, base, &reg_conf=
ig);
> +               if (IS_ERR(pd->regmap))
> +                       return dev_err_probe(dev, PTR_ERR(base),
> +                                            "failed to init regmap");
> +       }
>
>         pd->pd.power_off =3D exynos_pd_power_off;
>         pd->pd.power_on =3D exynos_pd_power_on;
>
> --
> 2.53.0.473.g4a7958ca14-goog
>

