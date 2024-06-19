Return-Path: <devicetree+bounces-77393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DA1DD90E7EB
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 12:10:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 720821F225AF
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 10:10:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E8FE84D13;
	Wed, 19 Jun 2024 10:10:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="VDUQH5t1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A08658120D
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 10:10:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718791831; cv=none; b=qPlhHgGkuOYD2PUN8bHRTAXLJTRvjVOtRLG1f5TaRWOp8yUoWMiyN0lEBxY0bg5Bcnr7IS/KJMhj5glFhr/FWHPbh39RK9sLfn7uVsNnTV11V9avDeMSYyjwjkUUAaKr9roBWTYQQIaWGIjVSeMyuctpIiaQ9DVQ27Y3DCbQJD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718791831; c=relaxed/simple;
	bh=N45zKq2aQKCCGMd0eceleGJKTr4y8XnnRwYHdmGOExo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gdEO0dXTnD8UmKRzQ+/QOajOQ/C7cV1F+XrkPjmnqRWnHmRf5ZajXjmaiMaUD7nBa8UiuG0HY6B4ZaP1Ge009+WWoZhdWDuMveX6c9Y+sdJ76YRazesa76mrSzETurECATeBfSTyLVk1n7+UBTIPvkhq2izMB4vwkGdSc3ei6Gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=VDUQH5t1; arc=none smtp.client-ip=209.85.221.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-vk1-f170.google.com with SMTP id 71dfb90a1353d-4ef12e5658bso904083e0c.2
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 03:10:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1718791828; x=1719396628; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8ngPGc/hFtGsrMMFvI2VR8EgB+U9LeNzTYZovoR1s9s=;
        b=VDUQH5t1gvo/ncmvfTS3aD7y1bHxyrYdrYJ19VZAsl4DXeP4BdyY2hZ/xjvarO1G/6
         U5R/AjdwrDQqY0BiDZW0cB+Dz2OZaXs4t51aUHLTI5/OF6m+zMSmpyMUcmMkVh4gMQoT
         VxpV9AJ3ORMom1RMTZdZQfldd4+xnXryRi/SU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718791828; x=1719396628;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8ngPGc/hFtGsrMMFvI2VR8EgB+U9LeNzTYZovoR1s9s=;
        b=QR2QVg6JUbcwgsvcr5yR5VFvu0Q0dCfUGC3qZsx18ugLXdoWL/ZkObXfQ7dgnGTQNK
         oNNahilwzKxlfstadx0ApL67wOxicMKjH3Vf8PtwgATPERNDSFA9vrOe0V/TCIDDgq/O
         oWN0yYNMvRGf8jWy+EahBU9SSkSR8BMIY5nI65meSnRqUXKNeXyBLM/Cvx1KgT5OU5g0
         M4QXNEp7qXbK0Bsy6uYMFKXyg+ckD34rp/S8jUrAnMKkx0E5rdZfawWvdVNV8B9ZoRB4
         5E55An+JzQO8fdI4J1dJPnz5XuEU4EA57W30N8gmp7Ja1/KS5HKTi+yT7/e6tawERyF3
         bMTQ==
X-Forwarded-Encrypted: i=1; AJvYcCWsgGSmkTi+69pTZyA9k8GY+UnJOB8R5AfmOK3l1ls037Ik+KqQYXkvu4hEZ28PvZIFVR0XXZ5uSraD4+QJhzQV261LnkGSoMPZew==
X-Gm-Message-State: AOJu0YyJLvUf4dqFUjjf6xOgq5Kn/Cygy4UkDMg7KCfZcGOudp5bQBMX
	PqSroldUCNBQdCZBTu/4zRO2G7GIFjB6L/6wpzueu65cDyfouIxWfFJYja+zoX9ALgMY5BqnZAg
	=
X-Google-Smtp-Source: AGHT+IGsUeMDcVIZa/iGXTRS5j/vxuwpKZ8g56iXQoxJUXh62K80edfFu5K+H84FwborweEBU0QT9A==
X-Received: by 2002:a05:6122:45a8:b0:4e4:ee60:a60b with SMTP id 71dfb90a1353d-4ef276e8a26mr2324075e0c.3.1718791828297;
        Wed, 19 Jun 2024 03:10:28 -0700 (PDT)
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com. [209.85.222.53])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-4ed414308a5sm1920991e0c.47.2024.06.19.03.10.26
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Jun 2024 03:10:27 -0700 (PDT)
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-80b841b1b80so1636680241.0
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 03:10:26 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUt0vv2QFmxI0+ioK1Q4M5kjPmJ4tk+qmJ/EXBxgeUh5NVwkqLJ1WabtjPUQ2ObfkYV1MnHGH6EVHUFWoG2sHAeB/laJUlicVrPPg==
X-Received: by 2002:a67:f80e:0:b0:48c:397b:3996 with SMTP id
 ada2fe7eead31-48f13007867mr2130877137.8.1718791825452; Wed, 19 Jun 2024
 03:10:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240322092845.381313-1-angelogioacchino.delregno@collabora.com> <20240322092845.381313-3-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20240322092845.381313-3-angelogioacchino.delregno@collabora.com>
From: Fei Shao <fshao@chromium.org>
Date: Wed, 19 Jun 2024 18:09:47 +0800
X-Gmail-Original-Message-ID: <CAC=S1niaYZ=NNTwfSrJPdj79uG_hmqGm=cz_Sis3Zrf9octsnw@mail.gmail.com>
Message-ID: <CAC=S1niaYZ=NNTwfSrJPdj79uG_hmqGm=cz_Sis3Zrf9octsnw@mail.gmail.com>
Subject: Re: [PATCH 2/4] soc: mediatek: mtk-mutex: Add support for MT8188 VPPSYS
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-media@vger.kernel.org, mchehab@kernel.org, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	matthias.bgg@gmail.com, amergnat@baylibre.com, moudy.ho@mediatek.com, 
	hverkuil-cisco@xs4all.nl, sebastian.fricke@collabora.com, 
	u.kleine-koenig@pengutronix.de, chunkuang.hu@kernel.org, 
	p.zabel@pengutronix.de, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Angelo,

On Fri, Mar 22, 2024 at 5:29=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Add MT8188 VPPSYS0 and VPPSYS1 mutex info to driver data
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>
> ---
>  drivers/soc/mediatek/mtk-mutex.c | 41 ++++++++++++++++++++++++++++++++
>  1 file changed, 41 insertions(+)
>
> diff --git a/drivers/soc/mediatek/mtk-mutex.c b/drivers/soc/mediatek/mtk-=
mutex.c
> index 73c256d3950b..b5af1fb5847e 100644
> --- a/drivers/soc/mediatek/mtk-mutex.c
> +++ b/drivers/soc/mediatek/mtk-mutex.c
> @@ -496,6 +496,39 @@ static const unsigned int mt8188_mutex_mod[DDP_COMPO=
NENT_ID_MAX] =3D {
>         [DDP_COMPONENT_MERGE5] =3D MT8188_MUTEX_MOD_DISP1_VPP_MERGE4,
>  };
>
> +static const unsigned int mt8188_mdp_mutex_table_mod[MUTEX_MOD_IDX_MAX] =
=3D {
> +       [MUTEX_MOD_IDX_MDP_RDMA0] =3D MT8195_MUTEX_MOD_MDP_RDMA0,
> +       [MUTEX_MOD_IDX_MDP_RDMA2] =3D MT8195_MUTEX_MOD_MDP_RDMA2,
> +       [MUTEX_MOD_IDX_MDP_RDMA3] =3D MT8195_MUTEX_MOD_MDP_RDMA3,
> +       [MUTEX_MOD_IDX_MDP_FG0] =3D MT8195_MUTEX_MOD_MDP_FG0,
> +       [MUTEX_MOD_IDX_MDP_FG2] =3D MT8195_MUTEX_MOD_MDP_FG2,
> +       [MUTEX_MOD_IDX_MDP_FG3] =3D MT8195_MUTEX_MOD_MDP_FG3,
> +       [MUTEX_MOD_IDX_MDP_HDR0] =3D MT8195_MUTEX_MOD_MDP_HDR0,
> +       [MUTEX_MOD_IDX_MDP_HDR2] =3D MT8195_MUTEX_MOD_MDP_HDR2,
> +       [MUTEX_MOD_IDX_MDP_HDR3] =3D MT8195_MUTEX_MOD_MDP_HDR3,
> +       [MUTEX_MOD_IDX_MDP_AAL0] =3D MT8195_MUTEX_MOD_MDP_AAL0,
> +       [MUTEX_MOD_IDX_MDP_AAL2] =3D MT8195_MUTEX_MOD_MDP_AAL2,
> +       [MUTEX_MOD_IDX_MDP_AAL3] =3D MT8195_MUTEX_MOD_MDP_AAL3,
> +       [MUTEX_MOD_IDX_MDP_RSZ0] =3D MT8195_MUTEX_MOD_MDP_RSZ0,
> +       [MUTEX_MOD_IDX_MDP_RSZ2] =3D MT8195_MUTEX_MOD_MDP_RSZ2,
> +       [MUTEX_MOD_IDX_MDP_RSZ3] =3D MT8195_MUTEX_MOD_MDP_RSZ3,
> +       [MUTEX_MOD_IDX_MDP_MERGE2] =3D MT8195_MUTEX_MOD_MDP_MERGE2,
> +       [MUTEX_MOD_IDX_MDP_MERGE3] =3D MT8195_MUTEX_MOD_MDP_MERGE3,
> +       [MUTEX_MOD_IDX_MDP_TDSHP0] =3D MT8195_MUTEX_MOD_MDP_TDSHP0,
> +       [MUTEX_MOD_IDX_MDP_TDSHP2] =3D MT8195_MUTEX_MOD_MDP_TDSHP2,
> +       [MUTEX_MOD_IDX_MDP_TDSHP3] =3D MT8195_MUTEX_MOD_MDP_TDSHP3,
> +       [MUTEX_MOD_IDX_MDP_COLOR0] =3D MT8195_MUTEX_MOD_MDP_COLOR0,
> +       [MUTEX_MOD_IDX_MDP_COLOR2] =3D MT8195_MUTEX_MOD_MDP_COLOR2,
> +       [MUTEX_MOD_IDX_MDP_COLOR3] =3D MT8195_MUTEX_MOD_MDP_COLOR3,
> +       [MUTEX_MOD_IDX_MDP_OVL0] =3D MT8195_MUTEX_MOD_MDP_OVL0,
> +       [MUTEX_MOD_IDX_MDP_PAD0] =3D MT8195_MUTEX_MOD_MDP_PAD0,
> +       [MUTEX_MOD_IDX_MDP_PAD2] =3D MT8195_MUTEX_MOD_MDP_PAD2,
> +       [MUTEX_MOD_IDX_MDP_PAD3] =3D MT8195_MUTEX_MOD_MDP_PAD3,

I know it's too late since this is in the tree already, but I noticed
that MDP_COMP_TCC0 is added in the 4th patch but not here.
Is that expected?

Everything else looks nice, so just a record in the mailing list:
Reviewed-by: Fei Shao <fshao@chromium.org>

Regards,
Fei


> +       [MUTEX_MOD_IDX_MDP_WROT0] =3D MT8195_MUTEX_MOD_MDP_WROT0,
> +       [MUTEX_MOD_IDX_MDP_WROT2] =3D MT8195_MUTEX_MOD_MDP_WROT2,
> +       [MUTEX_MOD_IDX_MDP_WROT3] =3D MT8195_MUTEX_MOD_MDP_WROT3,
> +};
> +
>  static const unsigned int mt8192_mutex_mod[DDP_COMPONENT_ID_MAX] =3D {
>         [DDP_COMPONENT_AAL0] =3D MT8192_MUTEX_MOD_DISP_AAL0,
>         [DDP_COMPONENT_CCORR] =3D MT8192_MUTEX_MOD_DISP_CCORR0,
> @@ -735,6 +768,13 @@ static const struct mtk_mutex_data mt8188_mutex_driv=
er_data =3D {
>         .mutex_sof_reg =3D MT8183_MUTEX0_SOF0,
>  };
>
> +static const struct mtk_mutex_data mt8188_vpp_mutex_driver_data =3D {
> +       .mutex_sof =3D mt8188_mutex_sof,
> +       .mutex_mod_reg =3D MT8183_MUTEX0_MOD0,
> +       .mutex_sof_reg =3D MT8183_MUTEX0_SOF0,
> +       .mutex_table_mod =3D mt8188_mdp_mutex_table_mod,
> +};
> +
>  static const struct mtk_mutex_data mt8192_mutex_driver_data =3D {
>         .mutex_mod =3D mt8192_mutex_mod,
>         .mutex_sof =3D mt8183_mutex_sof,
> @@ -1089,6 +1129,7 @@ static const struct of_device_id mutex_driver_dt_ma=
tch[] =3D {
>         { .compatible =3D "mediatek,mt8186-disp-mutex", .data =3D &mt8186=
_mutex_driver_data },
>         { .compatible =3D "mediatek,mt8186-mdp3-mutex", .data =3D &mt8186=
_mdp_mutex_driver_data },
>         { .compatible =3D "mediatek,mt8188-disp-mutex", .data =3D &mt8188=
_mutex_driver_data },
> +       { .compatible =3D "mediatek,mt8188-vpp-mutex",  .data =3D &mt8188=
_vpp_mutex_driver_data },
>         { .compatible =3D "mediatek,mt8192-disp-mutex", .data =3D &mt8192=
_mutex_driver_data },
>         { .compatible =3D "mediatek,mt8195-disp-mutex", .data =3D &mt8195=
_mutex_driver_data },
>         { .compatible =3D "mediatek,mt8195-vpp-mutex",  .data =3D &mt8195=
_vpp_mutex_driver_data },
> --
> 2.44.0
>
>

