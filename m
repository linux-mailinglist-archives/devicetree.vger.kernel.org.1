Return-Path: <devicetree+bounces-248397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C61B1CD24A3
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 02:04:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 51B81301D5A3
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 01:04:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 631951EB1AA;
	Sat, 20 Dec 2025 01:04:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AWDtzS4K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f43.google.com (mail-yx1-f43.google.com [74.125.224.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8B47249EB
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 01:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766192676; cv=none; b=bpuC9GWckUFw1e1ZIod8Tp0RaPf5yH6QTF9RDhe9vjoix4g6xVKtQ5AUFacZehbjYOvhGZIVMIz5/Mu/uiQkJwL7GR8Ig7qFiHRjVOY40MNUh4VNmMdPlhL1dc5/5hnJsPqLH/PUZKnuPQYf5viZLQidNftLXFa1zk4laJoUgBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766192676; c=relaxed/simple;
	bh=5nB8Ayg0KSqVD5B3LU63W8FbW3zQ+m5TUKuxdmyfZ3w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pZ7oNzTjKl/eIu6Cgz69zq+PMyfEPFvhG0S8U7vcXeiSSwWrz0m1OZp6ty4esBalmgYON85imQe9BdiAt1tTLo7B9OgODBqGTMSubglFc+8rRzb8LJOmp5rme8BRubLFYmI+gYSHe8OeKjBhkpl7hws5920l+8w0DAdmS2L/Fns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AWDtzS4K; arc=none smtp.client-ip=74.125.224.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f43.google.com with SMTP id 956f58d0204a3-640c9c85255so2373515d50.3
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 17:04:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766192673; x=1766797473; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uvfEcA4ngmwX8Z/ReyrjfSyYYOfbBzOa2QWavuhPe1g=;
        b=AWDtzS4KClzFTmkb87Tsx6ivgdfU6F+cJSj77tIJrB+cJVOi/ESo1VoA6a8bj5/KYS
         esUxbuLg93+UH9yobP3gBlqXRIDoKr5aC/O73+2DXkyw5cxWvFcvYjnUdZJ9JXVMBVk+
         5DukfQR+KnLtuKBtNrAZtBCjOSgIXuaTs6N1u7KRwtbFqJBxnVPAmvTdc/Co2zXIzNBo
         nDd22cqS1tvLQn32g5lb6Zb6O4FXNaTT2twJz5R2ZT/7/2qErrLqGjzUfh/bbfJoVgjC
         TuhebO+VmMHxGj3zpfJDqiZGkXtfh7eAfL3QAS5Ku+L/MhPnw9uE+2LNgMWbfLy5U0qH
         3yJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766192673; x=1766797473;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uvfEcA4ngmwX8Z/ReyrjfSyYYOfbBzOa2QWavuhPe1g=;
        b=jktcFG7Hnuc/3Ovvsr/JwEWK89388nhhcanKiKFgDBkzwlWT8I26vxP9yqoTfw8ait
         HAoH8v1JWmzLCN7y/3upsMW7OU+GKBEtehS5Mz9AFjUwFxUH5Lc6mXWTGaHdDs4ca+dd
         LCjFhRjCS/s4WOyvehVjKdqEPgo9qlo8lj5L/RrX34QcPmyZcRNh+RhZeJtELKLuFc1P
         8mqtRvrZOu20uZuLf8pXzkBan/lf6xe+Qr8PSri21u8MbXUZkWnkdeDxkuHAT2gakvXO
         eL0EfsRsmm/OyUmj+T/d/DPKqv9L3jSL6jOmbVCVXoqtFBIzZ9Pw6Kn6iuJYJBYRtXn5
         ZLrw==
X-Forwarded-Encrypted: i=1; AJvYcCVm+8NdTnelw9AVEX0zY+hmQeg2svUtXDisS+APNQRGL6wfE6t3ryUHNyhu1f9wJqFhS197QsXfZPmE@vger.kernel.org
X-Gm-Message-State: AOJu0YyPqJxLwVf+d1WGwSF+LbBMz6ekbilFqLRjtqpmsvkEuMyPdcWE
	V47P66TfvL/YSr2wJQxEZcY1Iq1E52qpeNh95kfnEueEHQmGYaioXN5cv9Fzi6DvWmvZb6/eLZD
	aV76uYj3dFHH0Y/vQFO0Ly6gn/hYrOOc=
X-Gm-Gg: AY/fxX43uNPtSSJYnU0txSNo3jO+OLlGEHbsFcwKhlv7icyF0rK4irbGcq1pH4imsCj
	SpHyVzpBnGbDHw1VoeorCy4GkeOF5OFSZ+KJbzBaSGQEp5G8DLo960IqXWP0vQybpf1e3/GEMg8
	gmc/mbH/rrqk8v3ULp/ilDSof+08A6hi+AFFJ+94laEJtPH5M5pZCOJ+/HBHtTgmxR/1gGDbynH
	mvbD+IC/P9kxRmyx3LjZlZ/3H/ZrmvAAvvdxTI4DOHSPHdBnt6sG+bAq1iuRa/i9mPigf1N945e
	TsAbevdhgzy14v5J0uNIYNJjPWnq
X-Google-Smtp-Source: AGHT+IEnRAac6u07uzA3LUk5jCrz4OGRvCsnGojqOSsZK7RLqvjo5JYP+wh5edVRUn03IOrbdzCAkAqdhNZxSYFsGbc=
X-Received: by 2002:a05:690e:3c9:b0:645:5467:29f3 with SMTP id
 956f58d0204a3-6466a859780mr2828699d50.39.1766192673550; Fri, 19 Dec 2025
 17:04:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251217-mt8196-shader-present-v1-0-f6f8f3aa1e93@collabora.com> <20251217-mt8196-shader-present-v1-4-f6f8f3aa1e93@collabora.com>
In-Reply-To: <20251217-mt8196-shader-present-v1-4-f6f8f3aa1e93@collabora.com>
From: Chia-I Wu <olvaffe@gmail.com>
Date: Fri, 19 Dec 2025 17:04:22 -0800
X-Gm-Features: AQt7F2pOYJ6wtBd4hNgFJlclGwmWabkkUpx6tjcAEWdTtCs7JRe062F7FH3q2go
Message-ID: <CAPaKu7TVeaEFRWBt7rF_uVUyYO72GHqFwKi7D52juPTRAk7URw@mail.gmail.com>
Subject: Re: [PATCH 4/4] pmdomain: mediatek: mtk-mfg: Expose shader_present as
 nvmem cell
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Boris Brezillon <boris.brezillon@collabora.com>, Steven Price <steven.price@arm.com>, 
	Liviu Dudau <liviu.dudau@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Chen-Yu Tsai <wenst@chromium.org>, kernel@collabora.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 17, 2025 at 9:04=E2=80=AFAM Nicolas Frattaroli
<nicolas.frattaroli@collabora.com> wrote:
>
> Implement nvmem-provider functionality in mtk-mfg-pmdomain, such that it
> can expose its GF_REG_SHADER_PRESENT value in the shared memory as an
> nvmem cell for panthor.
>
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  drivers/pmdomain/mediatek/mtk-mfg-pmdomain.c | 57 ++++++++++++++++++++++=
++++++
>  1 file changed, 57 insertions(+)
>
> diff --git a/drivers/pmdomain/mediatek/mtk-mfg-pmdomain.c b/drivers/pmdom=
ain/mediatek/mtk-mfg-pmdomain.c
> index 9bad577b3ae4..725ebc678f1b 100644
> --- a/drivers/pmdomain/mediatek/mtk-mfg-pmdomain.c
> +++ b/drivers/pmdomain/mediatek/mtk-mfg-pmdomain.c
> @@ -10,6 +10,7 @@
>  #include <linux/clk-provider.h>
>  #include <linux/container_of.h>
>  #include <linux/iopoll.h>
> +#include <linux/nvmem-provider.h>
>  #include <linux/mailbox_client.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
> @@ -872,6 +873,58 @@ static int mtk_mfg_init_clk_provider(struct mtk_mfg =
*mfg)
>         return 0;
>  }
>
> +static int mtk_mfg_read_nvmem(void *priv, unsigned int offset, void *val=
, size_t bytes)
> +{
> +       struct mtk_mfg *mfg =3D priv;
> +       u32 *buf =3D val;
> +
> +       if (bytes !=3D 4)
> +               return -EINVAL;
> +
> +       if (!mfg->shared_mem)
> +               return -ENODEV;
> +
> +       if (offset + bytes >=3D mfg->shared_mem_size)
> +               return -EINVAL;
> +
> +       *buf =3D readl(mfg->shared_mem + offset);
> +
> +       return 0;
> +}
> +
> +static int mtk_mfg_init_nvmem_provider(struct mtk_mfg *mfg)
> +{
> +       struct device *dev =3D &mfg->pdev->dev;
> +       struct nvmem_cell_info cell =3D {};
> +       struct nvmem_config config =3D {};
> +       struct nvmem_device *nvdev;
> +       int ret;
> +
> +       config.reg_read =3D mtk_mfg_read_nvmem;
> +       config.dev =3D dev;
> +       config.read_only =3D true;
> +       config.priv =3D mfg;
> +       config.size =3D 4;
> +       config.word_size =3D 4;
> +
> +       nvdev =3D devm_nvmem_register(dev, &config);
> +       of_node_put(config.of_node);
This looks like a dead line.
> +       if (IS_ERR(nvdev))
> +               return dev_err_probe(dev, PTR_ERR(nvdev), "Couldn't regis=
ter nvmem provider\n");
> +
> +       cell.name =3D "shader-present";
> +       cell.offset =3D GF_REG_SHADER_PRESENT;
> +       cell.bytes =3D 4;
> +       cell.np =3D of_get_child_by_name(dev->of_node, cell.name);
> +
> +       ret =3D nvmem_add_one_cell(nvdev, &cell);
> +       /* cell.np purposefully not put as nvmem_add_one_cell does not in=
crease refcount */
I think you still need to of_node_put on errors.
> +       if (ret)
> +               return dev_err_probe(dev, ret, "Couldn't add cell %s\n", =
cell.name);
> +
> +       return 0;
> +}
> +
>  static int mtk_mfg_probe(struct platform_device *pdev)
>  {
>         struct mtk_mfg *mfg;
> @@ -984,6 +1037,10 @@ static int mtk_mfg_probe(struct platform_device *pd=
ev)
>         if (ret)
>                 goto err_power_off;
>
> +       ret =3D mtk_mfg_init_nvmem_provider(mfg);
> +       if (ret)
> +               goto err_power_off;
> +
>         ret =3D of_genpd_add_provider_simple(dev->of_node, &mfg->pd);
>         if (ret) {
>                 dev_err_probe(dev, ret, "Failed to add pmdomain provider\=
n");
>
> --
> 2.52.0
>

