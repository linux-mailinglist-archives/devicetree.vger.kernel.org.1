Return-Path: <devicetree+bounces-204980-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C90DB278E3
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 08:13:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 86884A283FE
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 06:13:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9589529614F;
	Fri, 15 Aug 2025 06:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="XE6Aqgot"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A604F2253FB
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 06:13:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755238402; cv=none; b=Pg9JHotS80sdud/oG8BbeBRRbe5CPCUI1v8tnuWqZW/zjUljLfP6A7VkfzlVo/14er0m+NJ9eEYhFiDlyFDiNfWaaQDXORn/toqcQW+q5piVOTIbZZFR3lQS/fGgBMgXenv7Vhf63kqQdrWZM68ajowbZ840nzsbnQg4K/I7jzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755238402; c=relaxed/simple;
	bh=vMrFQzr7OTiak+1lD6iO+FORdNYn5TfuuqQIRneeZjo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ua/byZd6NH6zLJZt/X22LQsa/bmjFBxspfZ6TucrnqA8nkttwiC0/7cmrU3o8U9U2viKctmVj1x4Nw2rFSBz9erm1qGDKAsQYMSsRfkPz4cN8rcSanIQQXJUqr0YwwIPEcq2WiVMZY8upfB6xmt1qmWz59LjxtZA5t7NBU/AN3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=XE6Aqgot; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-55ce528a0f5so1706096e87.3
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 23:13:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1755238398; x=1755843198; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TXrqAOGSKlkHkTRQ7lUZKBYVIpeSl7z2gePyrfHvoQU=;
        b=XE6Aqgot9/vP4IL3AV7sUSGvkROF2ehxGNeIsh1yCt83JXB/1HRv411+4O6wtq1gPK
         6ThjU4DjpsScxjpeW3UR03V8dOq6X74HhekBYQfE8Q+GjLz2MEfhKMz5v6L/gPFPIsJk
         xd5Vb2pOp2EQTFkcqdVVYv+bWFSlZhlSBo6KQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755238398; x=1755843198;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TXrqAOGSKlkHkTRQ7lUZKBYVIpeSl7z2gePyrfHvoQU=;
        b=LNxTio4IqIK4FHXKxD/dpnrxMQUU1GsyJyIOBIsU1HzZR5LiNO1W0Kk4TFiSKuF740
         MagtOKBWrRquDTywdNWUi+/dnBXuytWbIrjT3xlR0Fvvve4oe4d6n3FfDiDahmRLxa4v
         lri2iyqT+630IhlR5KGsf1/0Lun1za5bvret8FNqU3HW+pvccjj35Ok4NL5dFgZGCvEa
         LNTs4QvCkPDdpjYFIzb3eKrrhMvBhN4WHBuP9t0PPOgz/4WVdRaPgBlVH52B/xaW6bzk
         KMXuvR8wSJnPHVS1YL+xhhJ68RPFRaOEkcl0SfO8WrKTrLMEDcgyoJ7pq2W3QtCE5bHk
         6g6g==
X-Forwarded-Encrypted: i=1; AJvYcCXF18zv1HSNVEfNPXssyMj92wxLN7sbGY45UAC4s5/D4GyAI8YaYeBad8oBv9TmT3N+HrcX2p31kWna@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2jVHvHDQR0hWkHDkc2z06c9dAxviLrbu6q4e2x1a+5BWKWQlB
	sdv6GTMMccZgjABWwy/MQ4MHPsr7gDcenFE/k4MCzs4wIt9/iGV7WUXh41TVFFq3Wa3229zqFAr
	g7dcLhfgw8M1/l+6lFX+7Z950MMAVw7iXFQDzLGHQ
X-Gm-Gg: ASbGncsNUgvEV0BWmWxrJ6EcltRrp9MSEtmpoUqXav67GEFmG0rEjQ8UTI+yiDzvUUX
	7YMF0JKVZgMbo99FijurqqpZIUBz9trx36Mywa2hieMZgw/ua4poN8PuZ81MnJf1UxB5z56LcgZ
	HKKOK+bOQdxZEAefa0YqMQj3VrpkecZ5cAcAs+MveKnVHWaS1HB8OFxUGFqNDdhY7j9Pj0pqhjN
	xk0sEAGa8PlnUzX0R4uzFaloQ65EYuOQqV+OQ==
X-Google-Smtp-Source: AGHT+IHgien6Ta30w9thH606OXZ37uev4E3SyZFiYtbUjF+ewjbtl9wYml18XdGcJArNMrSrqAKCEoyzfxTTcxLF8kw=
X-Received: by 2002:a05:6512:401a:b0:55c:e61c:6969 with SMTP id
 2adb3069b0e04-55ceeb8e474mr204360e87.45.1755238397730; Thu, 14 Aug 2025
 23:13:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250805135447.149231-1-laura.nao@collabora.com> <20250805135447.149231-18-laura.nao@collabora.com>
In-Reply-To: <20250805135447.149231-18-laura.nao@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 15 Aug 2025 15:13:06 +0900
X-Gm-Features: Ac12FXzr5keexSM3h938Aqs72YKWpIyCvPBM6Nr2RSvEz3GKsQxqYO4KthSuqtA
Message-ID: <CAGXv+5EDxVe6k7FQM2HenDaHM1Rz7eEcQhVL1q1AqUFfr9apnA@mail.gmail.com>
Subject: Re: [PATCH v4 17/27] clk: mediatek: Add MT8196 I2C clock support
To: Laura Nao <laura.nao@collabora.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com, 
	angelogioacchino.delregno@collabora.com, p.zabel@pengutronix.de, 
	richardcochran@gmail.com, guangjie.song@mediatek.com, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, netdev@vger.kernel.org, 
	kernel@collabora.com, =?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= <nfraprado@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 5, 2025 at 10:55=E2=80=AFPM Laura Nao <laura.nao@collabora.com>=
 wrote:
>
> Add support for the MT8196 I2C clock controller, which provides clock
> gate control for I2C.
>
> Reviewed-by: N=C3=ADcolas F. R. A. Prado <nfraprado@collabora.com>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>
> Signed-off-by: Laura Nao <laura.nao@collabora.com>
> ---
>  drivers/clk/mediatek/Kconfig                  |   7 ++
>  drivers/clk/mediatek/Makefile                 |   1 +
>  .../clk/mediatek/clk-mt8196-imp_iic_wrap.c    | 117 ++++++++++++++++++
>  3 files changed, 125 insertions(+)
>  create mode 100644 drivers/clk/mediatek/clk-mt8196-imp_iic_wrap.c
>
> diff --git a/drivers/clk/mediatek/Kconfig b/drivers/clk/mediatek/Kconfig
> index c977719046a4..fe2697b64ef0 100644
> --- a/drivers/clk/mediatek/Kconfig
> +++ b/drivers/clk/mediatek/Kconfig
> @@ -1010,6 +1010,13 @@ config COMMON_CLK_MT8196
>         help
>           This driver supports MediaTek MT8196 basic clocks.
>
> +config COMMON_CLK_MT8196_IMP_IIC_WRAP
> +       tristate "Clock driver for MediaTek MT8196 imp_iic_wrap"
> +       depends on COMMON_CLK_MT8196
> +       default COMMON_CLK_MT8196
> +       help
> +         This driver supports MediaTek MT8196 i2c clocks.
> +
>  config COMMON_CLK_MT8196_PEXTPSYS
>         tristate "Clock driver for MediaTek MT8196 pextpsys"
>         depends on COMMON_CLK_MT8196
> diff --git a/drivers/clk/mediatek/Makefile b/drivers/clk/mediatek/Makefil=
e
> index 88f7d8a229c2..241e7f5e7316 100644
> --- a/drivers/clk/mediatek/Makefile
> +++ b/drivers/clk/mediatek/Makefile
> @@ -153,6 +153,7 @@ obj-$(CONFIG_COMMON_CLK_MT8195_WPESYS) +=3D clk-mt819=
5-wpe.o
>  obj-$(CONFIG_COMMON_CLK_MT8196) +=3D clk-mt8196-apmixedsys.o clk-mt8196-=
topckgen.o \
>                                    clk-mt8196-topckgen2.o clk-mt8196-vlpc=
kgen.o \
>                                    clk-mt8196-peri_ao.o
> +obj-$(CONFIG_COMMON_CLK_MT8196_IMP_IIC_WRAP) +=3D clk-mt8196-imp_iic_wra=
p.o
>  obj-$(CONFIG_COMMON_CLK_MT8196_PEXTPSYS) +=3D clk-mt8196-pextp.o
>  obj-$(CONFIG_COMMON_CLK_MT8196_UFSSYS) +=3D clk-mt8196-ufs_ao.o
>  obj-$(CONFIG_COMMON_CLK_MT8365) +=3D clk-mt8365-apmixedsys.o clk-mt8365.=
o
> diff --git a/drivers/clk/mediatek/clk-mt8196-imp_iic_wrap.c b/drivers/clk=
/mediatek/clk-mt8196-imp_iic_wrap.c
> new file mode 100644
> index 000000000000..98db1476e72c
> --- /dev/null
> +++ b/drivers/clk/mediatek/clk-mt8196-imp_iic_wrap.c
> @@ -0,0 +1,117 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) 2025 MediaTek Inc.
> + *                    Guangjie Song <guangjie.song@mediatek.com>
> + * Copyright (c) 2025 Collabora Ltd.
> + *                    Laura Nao <laura.nao@collabora.com>
> + */
> +#include <dt-bindings/clock/mediatek,mt8196-clock.h>

Nit: add line for separation.

> +#include <linux/clk-provider.h>
> +#include <linux/module.h>
> +#include <linux/of_device.h>
> +#include <linux/platform_device.h>
> +
> +#include "clk-gate.h"
> +#include "clk-mtk.h"
> +
> +static const struct mtk_gate_regs imp_cg_regs =3D {
> +       .set_ofs =3D 0xe08,
> +       .clr_ofs =3D 0xe04,
> +       .sta_ofs =3D 0xe00,
> +};
> +
> +#define GATE_IMP(_id, _name, _parent, _shift) {        \
> +               .id =3D _id,                              \
> +               .name =3D _name,                          \
> +               .parent_name =3D _parent,                 \
> +               .regs =3D &imp_cg_regs,                   \
> +               .shift =3D _shift,                        \
> +               .flags =3D CLK_OPS_PARENT_ENABLE,         \

So here it likely works because the parent for all the gates are the same,
which is the clock feeding this block.


Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

