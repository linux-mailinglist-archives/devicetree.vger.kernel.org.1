Return-Path: <devicetree+bounces-227862-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AD668BE5342
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 21:14:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0FAC13B6F36
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 19:14:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF26A28D8D9;
	Thu, 16 Oct 2025 19:14:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hlgGxgDT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BB928934F
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 19:14:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760642092; cv=none; b=sRaE7A3CXMgMbz6qvdZRIy/VuPvWgqO6+zyNIgmxHPZoHrVzwbzjnTEjPmBdIGX8WyP57i1R/wLr42qDaZoyispeqYYeiRyMDEOnJ8O3TKbMKAfRxdODGsTaG8d8UfMxsckVjhgG91wpcscWZAMFytZZh7zbG7xAzRuvLIikV74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760642092; c=relaxed/simple;
	bh=gs2gtkYtOC38rK7GjuO0PFTzMNsj13nnhZhBvsBEHrs=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Fv9U/5o4ddKj4L60jnaaL1/35JK5/pFHy/ZkdNZbqs8KWFCCkuQ24eIytDsdMXB02PF8dxj/cUrdyxI3pTDaOMSpm11tFz4bUzidRZIV2U6LAphnizP+sol92YujRqw/jNrU+67K2St6yH+oEgyTeT37kdQnRHnosUK2Ux4IUfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hlgGxgDT; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3f0ae439bc3so572147f8f.1
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 12:14:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760642088; x=1761246888; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=aZrdvbsUZHARrwqjSB2xifq/HutkAoth/3p7P2F8JXY=;
        b=hlgGxgDTK0Ff89eQCHom4w+6FFbDDr/1fORmelQowhl0FIabCQLCciHIfP3X2usxj7
         61mwlb4cimtevLFxlWAl5Q2Rj7eBOVRJwMwSGlMec9l/xmGK5kzpffpWizslCGYcvcrL
         vE+FVTSGjIJtdojtO6A/Nb4XGwZKYsnPqLZvdJs7sQFKmyD5XIB6A9w5DGjHYcssvQWO
         Fj+kgZlrC5bFjuKyCusR5YjdjMxVlzcOutItwdATg9poCVXyDaSvOJGcp44M4sAkkvxh
         6b+fuedUQTWtuKYtVICJ4sN6ac3sTN0aIy2VeFOgYkquebkNFB3jXwuHRVuSip4Yrm+e
         PRFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760642088; x=1761246888;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aZrdvbsUZHARrwqjSB2xifq/HutkAoth/3p7P2F8JXY=;
        b=NtMYsRrd2HRjEMrbPc3REnyqJ5b2estpDtUuvQ6ZqpQfNDo9V19Fd1oScH/FVXnhe2
         HqFLA8mGhJBe5wh4nRsiqwvXFW0L65rhCZbHPhL7kasPbMauRJ3ZaGZ0zzyjuCIkSoLd
         VjBBf0UTzGo5pMKijLjP49TQKc8P4KW1ZQ78STREaxThckMdm71CZmpi9wy/OLZDTr0L
         88Q5nMtLkn09HFsfaAdRoW9CTomG2tPt4HwKoYtYbTdll5ZmG5e6MSbuYlZ6FSbjf4Vh
         0yUL3p8EypCwXKVY5OnePyM0TsuVlZAZuXADEXHdpo46ZN8myPfLe9RBidZp+P3TRK8/
         zW6Q==
X-Forwarded-Encrypted: i=1; AJvYcCWVVfpts4XxI2kM6rOspoNAkQl4BrV5DEutqFIqEPnXiUvHdKIPFXEaAjfzMOWk2b1OJTLmtNY5/2+h@vger.kernel.org
X-Gm-Message-State: AOJu0YwW6p0JXm+8okjRjdgdVFTNyhkJXHBGXlWs5EEx+EhAhjZshPfG
	vdfWqvp0t3niuj+aEKkhpKD0bOXLs8LfwbkRBBRIjAC8qmviC45fWpd1
X-Gm-Gg: ASbGncuAWoszgr8JQbKoOlPA/WiTFYyVuHvV2x5gDN/+vL+m/u/ff+Mg3o8GE563kRl
	r19cCBNXQthW302tWFGiPqfK1uVOCrcUGlQTO+ghuqw8YIW5gckx/jjvTpPCEXxgv44kaDsolm9
	pAO0+aXGfd++KalyO3b3E/yge+qJEiBfQYD6Eab4ZdtxbX2jRGKlBMVBcet9QHV/RaKrAg+vNU0
	ubu0fMzAvWEnkkpoOg6lwjM0WTQ6MlCTTXOqTk9DmM+X8URmx+YKSWJGBTVPJHwVk8OTUf0rFML
	olwNIgl1cPluH82W7d3NweKhVB/bdgT7LDBv77cjvyNpbgN3KpKuOQcKgbZX/iAKqGq1bXgHJbK
	6BHpZlBZlTCfvVhhK5tUhd3ereKLRI5fh6c06gJF0O67RhAmB1o8hxNeTNll2C5HJc3+z/2MBI/
	JLvHAa4oEHzvWXvDb5eNvd6jcGXomRllCEAoy2dUZuDTLGzYq8EDnJSOXU
X-Google-Smtp-Source: AGHT+IGzDQUbAcr6m/DJ/mVNT3hlzNep8olol6NpA1JIe9i80lJ2ED6sWYbbJQUrtZaq3gRCYYUzwQ==
X-Received: by 2002:a05:6000:24c9:b0:426:d549:5861 with SMTP id ffacd0b85a97d-42704e029bcmr917816f8f.42.1760642088185;
        Thu, 16 Oct 2025 12:14:48 -0700 (PDT)
Received: from 0.1.2.1.2.0.a.2.dynamic.cust.swisscom.net ([2a02:1210:8642:2b00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4270539be85sm1216634f8f.7.2025.10.16.12.14.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 12:14:47 -0700 (PDT)
Message-ID: <f8bdecb31664317e28fff9244507944adb7c939d.camel@gmail.com>
Subject: Re: [PATCH 3/3] ASoC: cs4271: Add support for the external mclk
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: Herve Codina <herve.codina@bootlin.com>, David Rhodes	
 <david.rhodes@cirrus.com>, Richard Fitzgerald <rf@opensource.cirrus.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Rob
 Herring <robh@kernel.org>,  Krzysztof Kozlowski	 <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela	 <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, Nikita Shubin	 <nikita.shubin@maquefel.me>,
 Axel Lin <axel.lin@ingics.com>, Brian Austin	 <brian.austin@cirrus.com>
Cc: linux-sound@vger.kernel.org, patches@opensource.cirrus.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Thomas Petazzoni
	 <thomas.petazzoni@bootlin.com>
Date: Thu, 16 Oct 2025 21:14:46 +0200
In-Reply-To: <20251016130340.1442090-4-herve.codina@bootlin.com>
References: <20251016130340.1442090-1-herve.codina@bootlin.com>
	 <20251016130340.1442090-4-herve.codina@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.0 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hello Herve,

On Thu, 2025-10-16 at 15:03 +0200, Herve Codina wrote:
> The mclk (master clock) of the cs4271 codec can be an input clock.
>=20
> In this case the connected clock needs to be enabled outside of any
> audio stream. Indeed, this clock is needed for i2c communication.
>=20
> Add support of this clock and enable it before the first i2c transfer.

what about suspend/resume, would it make sense to disable/enable the clock
there?

> Signed-off-by: Herve Codina <herve.codina@bootlin.com>
> ---
> =C2=A0sound/soc/codecs/cs4271.c | 34 +++++++++++++++++++++++++++++++---
> =C2=A01 file changed, 31 insertions(+), 3 deletions(-)
>=20
> diff --git a/sound/soc/codecs/cs4271.c b/sound/soc/codecs/cs4271.c
> index ff9c6628224c..481a2c20b7cf 100644
> --- a/sound/soc/codecs/cs4271.c
> +++ b/sound/soc/codecs/cs4271.c
> @@ -10,6 +10,7 @@
> =C2=A0 * DAPM support not implemented.
> =C2=A0 */
> =C2=A0
> +#include <linux/clk.h>
> =C2=A0#include <linux/module.h>
> =C2=A0#include <linux/slab.h>
> =C2=A0#include <linux/delay.h>
> @@ -163,6 +164,7 @@ struct cs4271_private {
> =C2=A0	/* enable soft reset workaround */
> =C2=A0	bool				enable_soft_reset;
> =C2=A0	struct regulator_bulk_data=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 supplies[=
ARRAY_SIZE(supply_names)];
> +	struct clk *clk;
> =C2=A0};
> =C2=A0
> =C2=A0static const struct snd_soc_dapm_widget cs4271_dapm_widgets[] =3D {
> @@ -567,22 +569,36 @@ static int cs4271_component_probe(struct snd_soc_co=
mponent *component)
> =C2=A0		cs4271->enable_soft_reset =3D cs4271plat->enable_soft_reset;
> =C2=A0	}
> =C2=A0
> +	ret =3D clk_prepare_enable(cs4271->clk);
> +	if (ret) {
> +		dev_err(component->dev, "Failed to enable clk: %d\n", ret);
> +		goto err_disable_regulators;
> +	}
> +
> +	/*
> +	 * Be sure to have the clock and power-supplies stable before releasing
> +	 * the reset.
> +	 */

Would "if (cs4271->clk)" make sense for the fsleep() call?

> +	fsleep(1000);
> +
> =C2=A0	/* Reset codec */
> =C2=A0	cs4271_reset(component);
> =C2=A0
> =C2=A0	ret =3D regcache_sync(cs4271->regmap);
> =C2=A0	if (ret < 0)
> -		return ret;
> +		goto err_force_reset;
> =C2=A0
> =C2=A0	ret =3D regmap_update_bits(cs4271->regmap, CS4271_MODE2,
> =C2=A0				 CS4271_MODE2_PDN | CS4271_MODE2_CPEN,
> =C2=A0				 CS4271_MODE2_PDN | CS4271_MODE2_CPEN);
> =C2=A0	if (ret < 0)
> -		return ret;
> +		goto err_force_reset;
> +
> =C2=A0	ret =3D regmap_update_bits(cs4271->regmap, CS4271_MODE2,
> =C2=A0				 CS4271_MODE2_PDN, 0);
> =C2=A0	if (ret < 0)
> -		return ret;
> +		goto err_force_reset;
> +
> =C2=A0	/* Power-up sequence requires 85 uS */
> =C2=A0	udelay(85);
> =C2=A0
> @@ -592,6 +608,13 @@ static int cs4271_component_probe(struct snd_soc_com=
ponent *component)
> =C2=A0				=C2=A0=C2=A0 CS4271_MODE2_MUTECAEQUB);
> =C2=A0
> =C2=A0	return 0;
> +
> +err_force_reset:
> +	gpiod_set_value(cs4271->reset, 1);

Is the reset line assertion really required here?

> +	clk_disable_unprepare(cs4271->clk);
> +err_disable_regulators:
> +	regulator_bulk_disable(ARRAY_SIZE(cs4271->supplies), cs4271->supplies);

Would it make sense to fix the error path regarding regulators handling
in a separate patch (especially if you decide to extend suspend/resume)?

> +	return ret;
> =C2=A0}
> =C2=A0
> =C2=A0static void cs4271_component_remove(struct snd_soc_component *compo=
nent)
> @@ -603,6 +626,7 @@ static void cs4271_component_remove(struct snd_soc_co=
mponent *component)
> =C2=A0
> =C2=A0	regcache_mark_dirty(cs4271->regmap);
> =C2=A0	regulator_bulk_disable(ARRAY_SIZE(cs4271->supplies), cs4271->suppl=
ies);
> +	clk_disable_unprepare(cs4271->clk);
> =C2=A0};
> =C2=A0
> =C2=A0static const struct snd_soc_component_driver soc_component_dev_cs42=
71 =3D {
> @@ -637,6 +661,10 @@ static int cs4271_common_probe(struct device *dev,
> =C2=A0				=C2=A0=C2=A0=C2=A0=C2=A0 "error retrieving RESET GPIO\n");
> =C2=A0	gpiod_set_consumer_name(cs4271->reset, "CS4271 Reset");
> =C2=A0
> +	cs4271->clk =3D devm_clk_get_optional(dev, "mclk");
> +	if (IS_ERR(cs4271->clk))
> +		return dev_err_probe(dev, PTR_ERR(cs4271->clk), "Failed to get mclk\n"=
);
> +
> =C2=A0	for (i =3D 0; i < ARRAY_SIZE(supply_names); i++)
> =C2=A0		cs4271->supplies[i].supply =3D supply_names[i];
> =C2=A0

--=20
Alexander Sverdlin.

