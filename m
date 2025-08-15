Return-Path: <devicetree+bounces-204943-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BEB3B276DA
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 05:38:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2B8C46858E7
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 03:37:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F356292B4B;
	Fri, 15 Aug 2025 03:37:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ly8jbZBK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6A29189BB0
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 03:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755229046; cv=none; b=n7Y9D9dY/FWiJPYQz4S4g/mfZshYK46gHoClKa+Q4GU0XMIs3Tik5Z78MiPkQrN0BB/izDBteWkPeiA+8l+KgjNHWQVAwFjVniaVxNGGn0u8+4E2X5INwKcdiSWgdXkRb31K961Z1uX90h9ffaXGgUgTpPaBHcqP4id00bSlsqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755229046; c=relaxed/simple;
	bh=4L3ftiV6FWlAevWzOXOsHn1jvQVtmTSmAaXPAKjUsfY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JLdJULAlPV3tHI/9mRi+Yt5hxATelN4RXhJFFCfEeEUC11i4Uap+wJlRD/5xrXpY8pmyMQTEHOQgPsYvcp22Z1uE0rE4wf7as7xj8q1W482GZhxw1igi6p03goR9DUNdtJw3oaeHiMJry0xAe6mp0uDqMPzaw7dXvB2m/XH8QOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ly8jbZBK; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-55cdfcc0ceaso2470607e87.1
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 20:37:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1755229041; x=1755833841; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gXv9G7c+svq4lqcz4OBGpCl+m14S/SAGU1DXHucm83E=;
        b=ly8jbZBKbz0Ch6rxHFoS+lp6qdrihVWpKpuL89Gcju9Y2JVC2W/k/RAjaXajZ13uYI
         3cgrOGdl3eoZbmKFk9GIK8ZTIGQnuX1XnSO+OE2rLjZSInurI3zGy9aFcLEYXLPL/+wo
         npi/hc38D0lzL2roC03U3e/+PVGjN/TvK6b0k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755229041; x=1755833841;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gXv9G7c+svq4lqcz4OBGpCl+m14S/SAGU1DXHucm83E=;
        b=emC32o+qNwuDSTRobPKsYIXHzF6wQJdycdcJDA91TT/iUwacORVDN4eh55bAsK8xAk
         4M3yw1x8lXZY6Re8oK916snF9SEfddBRa2fk5DIrf8C5AO6s4LUXmptl8GmaHcuDIv1F
         VRB8JIQBqOm1lYXfdlyzAlZsq6drrGfKuLQ74DscOOijv56l9pmQr7jj+497QEpu0nja
         GBtGQ4OslV1vSroM4gUpVMVJwcQQ9xOPEEUEt5XECmThbaDEysV1qfWllFN0U7JY9ghX
         RPbmPGxW/HPuUfV4E6Mf8uOquHGd/zp7vJVGYyMkl5IKyJD6zVnr7LLE3VDLqRDRX5P8
         l+mg==
X-Forwarded-Encrypted: i=1; AJvYcCUZX26NpKSCT2RvT3XBckwYNkApx3HuRDBniIO8U4Nyxae5EgfAqcI22HHhn/xtDPFBZt00GMvGMsDe@vger.kernel.org
X-Gm-Message-State: AOJu0Yzidbp0VU3zh1L7MMOJJ4WZKRZAknAYjbvtbhuiflszfT1Hkhkv
	oznBVGH+IFWKRkOmsuEnig7vKyOaOmbHqrULOnUO7o65nAPHaKBfBqj+ArOt6ZSPjk0XlePkEXa
	gsgRb1VW30Dlezh/uljYqijw6YImh8S64CF6TIi+/
X-Gm-Gg: ASbGncuRaeMlHBDHab4Q+eqlwqW8IDLEI77oafo9XM45B8GPRm75dkofcZCptGqi810
	HyRHVQAlfLTlRDmPNPlKD/f56/ODdIARjGHVdKstcP24K00ZwehgJPVtdHC+9IzKPHwGGSwaT1A
	t4SU9K4BMADC6oFj3Iqm8sk3qlcXydFDFDKUGtqXU7iwX9mtktaPLhy1iKNo1bRS8cFTElF3MGW
	WPVFaBoU0tWFL9Eqc3tPN+NDB4YsQ5z5sDQxsBkRMesnx03
X-Google-Smtp-Source: AGHT+IE49Nkw8AqkoPWjH8rrU5caEV+oXUcux5DcWnc9n4SFkD9kc07Lncn2SXp+60xyQBp5APfIrw8/0vNtRBrb6YM=
X-Received: by 2002:a05:6512:2249:b0:55c:d730:c86f with SMTP id
 2adb3069b0e04-55cee824254mr223207e87.21.1755229041062; Thu, 14 Aug 2025
 20:37:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250805135447.149231-1-laura.nao@collabora.com> <20250805135447.149231-8-laura.nao@collabora.com>
In-Reply-To: <20250805135447.149231-8-laura.nao@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 15 Aug 2025 12:37:10 +0900
X-Gm-Features: Ac12FXy4p8YRr4aG5a7_JIWdQm-9n2bHamyXaYwe_ClxduFqvhUqhAoMHloBxT8
Message-ID: <CAGXv+5HRKFrdjjXkwN6=OLtk=bK3C3mBnrDtmkEWeuxjz0pFKg@mail.gmail.com>
Subject: Re: [PATCH v4 07/27] clk: mediatek: clk-gate: Add ops for gates with
 HW voter
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
> MT8196 use a HW voter for gate enable/disable control. Voting is
> performed using set/clr regs, with a status bit used to verify the vote
> state. Add new set of gate clock operations with support for voting via
> set/clr regs.
>
> Reviewed-by: N=C3=ADcolas F. R. A. Prado <nfraprado@collabora.com>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>
> Signed-off-by: Laura Nao <laura.nao@collabora.com>
> ---
>  drivers/clk/mediatek/clk-gate.c | 77 +++++++++++++++++++++++++++++++--
>  drivers/clk/mediatek/clk-gate.h |  3 ++
>  2 files changed, 77 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/clk/mediatek/clk-gate.c b/drivers/clk/mediatek/clk-g=
ate.c
> index 0375ccad4be3..426f3a25763d 100644
> --- a/drivers/clk/mediatek/clk-gate.c
> +++ b/drivers/clk/mediatek/clk-gate.c
> @@ -5,6 +5,7 @@
>   */
>
>  #include <linux/clk-provider.h>
> +#include <linux/dev_printk.h>
>  #include <linux/mfd/syscon.h>
>  #include <linux/module.h>
>  #include <linux/printk.h>
> @@ -12,14 +13,19 @@
>  #include <linux/slab.h>
>  #include <linux/types.h>
>
> +#include "clk-mtk.h"
>  #include "clk-gate.h"
>
>  struct mtk_clk_gate {
>         struct clk_hw   hw;
>         struct regmap   *regmap;
> +       struct regmap   *regmap_hwv;
>         int             set_ofs;
>         int             clr_ofs;
>         int             sta_ofs;
> +       unsigned int    hwv_set_ofs;
> +       unsigned int    hwv_clr_ofs;
> +       unsigned int    hwv_sta_ofs;
>         u8              bit;
>  };
>
> @@ -100,6 +106,28 @@ static void mtk_cg_disable_inv(struct clk_hw *hw)
>         mtk_cg_clr_bit(hw);
>  }
>
> +static int mtk_cg_hwv_set_en(struct clk_hw *hw, bool enable)
> +{
> +       struct mtk_clk_gate *cg =3D to_mtk_clk_gate(hw);
> +       u32 val;
> +
> +       regmap_write(cg->regmap_hwv, enable ? cg->hwv_set_ofs : cg->hwv_c=
lr_ofs, BIT(cg->bit));
> +
> +       return regmap_read_poll_timeout_atomic(cg->regmap_hwv, cg->hwv_st=
a_ofs, val,
> +                                              val & BIT(cg->bit),
> +                                              0, MTK_WAIT_HWV_DONE_US);
> +}
> +
> +static int mtk_cg_hwv_enable(struct clk_hw *hw)
> +{
> +       return mtk_cg_hwv_set_en(hw, true);
> +}
> +
> +static void mtk_cg_hwv_disable(struct clk_hw *hw)
> +{
> +       mtk_cg_hwv_set_en(hw, false);
> +}
> +
>  static int mtk_cg_enable_no_setclr(struct clk_hw *hw)
>  {
>         mtk_cg_clr_bit_no_setclr(hw);
> @@ -124,6 +152,15 @@ static void mtk_cg_disable_inv_no_setclr(struct clk_=
hw *hw)
>         mtk_cg_clr_bit_no_setclr(hw);
>  }
>
> +static bool mtk_cg_uses_hwv(const struct clk_ops *ops)
> +{
> +       if (ops =3D=3D &mtk_clk_gate_hwv_ops_setclr ||
> +           ops =3D=3D &mtk_clk_gate_hwv_ops_setclr_inv)
> +               return true;
> +
> +       return false;
> +}
> +
>  const struct clk_ops mtk_clk_gate_ops_setclr =3D {
>         .is_enabled     =3D mtk_cg_bit_is_cleared,
>         .enable         =3D mtk_cg_enable,
> @@ -138,6 +175,20 @@ const struct clk_ops mtk_clk_gate_ops_setclr_inv =3D=
 {
>  };
>  EXPORT_SYMBOL_GPL(mtk_clk_gate_ops_setclr_inv);
>
> +const struct clk_ops mtk_clk_gate_hwv_ops_setclr =3D {
> +       .is_enabled     =3D mtk_cg_bit_is_cleared,
> +       .enable         =3D mtk_cg_hwv_enable,
> +       .disable        =3D mtk_cg_hwv_disable,
> +};
> +EXPORT_SYMBOL_GPL(mtk_clk_gate_hwv_ops_setclr);
> +
> +const struct clk_ops mtk_clk_gate_hwv_ops_setclr_inv =3D {
> +       .is_enabled     =3D mtk_cg_bit_is_set,
> +       .enable         =3D mtk_cg_hwv_enable,
> +       .disable        =3D mtk_cg_hwv_disable,
> +};
> +EXPORT_SYMBOL_GPL(mtk_clk_gate_hwv_ops_setclr_inv);
> +
>  const struct clk_ops mtk_clk_gate_ops_no_setclr =3D {
>         .is_enabled     =3D mtk_cg_bit_is_cleared,
>         .enable         =3D mtk_cg_enable_no_setclr,
> @@ -153,8 +204,9 @@ const struct clk_ops mtk_clk_gate_ops_no_setclr_inv =
=3D {
>  EXPORT_SYMBOL_GPL(mtk_clk_gate_ops_no_setclr_inv);
>
>  static struct clk_hw *mtk_clk_register_gate(struct device *dev,
> -                                               const struct mtk_gate *ga=
te,
> -                                               struct regmap *regmap)
> +                                           const struct mtk_gate *gate,
> +                                           struct regmap *regmap,
> +                                           struct regmap *regmap_hwv)
>  {
>         struct mtk_clk_gate *cg;
>         int ret;
> @@ -169,11 +221,22 @@ static struct clk_hw *mtk_clk_register_gate(struct =
device *dev,
>         init.parent_names =3D gate->parent_name ? &gate->parent_name : NU=
LL;
>         init.num_parents =3D gate->parent_name ? 1 : 0;
>         init.ops =3D gate->ops;
> +       if (mtk_cg_uses_hwv(init.ops) && !regmap_hwv) {
> +               dev_err(dev, "regmap not found for hardware voter clocks\=
n");
> +               return ERR_PTR(-ENXIO);

return dev_err_probe()?

I believe the same applies to the previous patch.

> +       }
>
>         cg->regmap =3D regmap;
> +       cg->regmap_hwv =3D regmap_hwv;
>         cg->set_ofs =3D gate->regs->set_ofs;
>         cg->clr_ofs =3D gate->regs->clr_ofs;
>         cg->sta_ofs =3D gate->regs->sta_ofs;
> +       if (gate->hwv_regs) {
> +               cg->hwv_set_ofs =3D gate->hwv_regs->set_ofs;
> +               cg->hwv_clr_ofs =3D gate->hwv_regs->clr_ofs;
> +               cg->hwv_sta_ofs =3D gate->hwv_regs->sta_ofs;
> +       }
> +
>         cg->bit =3D gate->shift;
>
>         cg->hw.init =3D &init;
> @@ -206,6 +269,7 @@ int mtk_clk_register_gates(struct device *dev, struct=
 device_node *node,
>         int i;
>         struct clk_hw *hw;
>         struct regmap *regmap;
> +       struct regmap *regmap_hwv;
>
>         if (!clk_data)
>                 return -ENOMEM;
> @@ -216,6 +280,13 @@ int mtk_clk_register_gates(struct device *dev, struc=
t device_node *node,
>                 return PTR_ERR(regmap);
>         }
>
> +       regmap_hwv =3D mtk_clk_get_hwv_regmap(node);
> +       if (IS_ERR(regmap_hwv)) {
> +               pr_err("Cannot find hardware voter regmap for %pOF: %pe\n=
",
> +                      node, regmap_hwv);
> +               return PTR_ERR(regmap_hwv);

return dev_err_probe();

ChenYu

> +       }
> +
>         for (i =3D 0; i < num; i++) {
>                 const struct mtk_gate *gate =3D &clks[i];
>
> @@ -225,7 +296,7 @@ int mtk_clk_register_gates(struct device *dev, struct=
 device_node *node,
>                         continue;
>                 }
>
> -               hw =3D mtk_clk_register_gate(dev, gate, regmap);
> +               hw =3D mtk_clk_register_gate(dev, gate, regmap, regmap_hw=
v);
>
>                 if (IS_ERR(hw)) {
>                         pr_err("Failed to register clk %s: %pe\n", gate->=
name,
> diff --git a/drivers/clk/mediatek/clk-gate.h b/drivers/clk/mediatek/clk-g=
ate.h
> index 1a46b4c56fc5..4f05b9855dae 100644
> --- a/drivers/clk/mediatek/clk-gate.h
> +++ b/drivers/clk/mediatek/clk-gate.h
> @@ -19,6 +19,8 @@ extern const struct clk_ops mtk_clk_gate_ops_setclr;
>  extern const struct clk_ops mtk_clk_gate_ops_setclr_inv;
>  extern const struct clk_ops mtk_clk_gate_ops_no_setclr;
>  extern const struct clk_ops mtk_clk_gate_ops_no_setclr_inv;
> +extern const struct clk_ops mtk_clk_gate_hwv_ops_setclr;
> +extern const struct clk_ops mtk_clk_gate_hwv_ops_setclr_inv;
>
>  struct mtk_gate_regs {
>         u32 sta_ofs;
> @@ -31,6 +33,7 @@ struct mtk_gate {
>         const char *name;
>         const char *parent_name;
>         const struct mtk_gate_regs *regs;
> +       const struct mtk_gate_regs *hwv_regs;
>         int shift;
>         const struct clk_ops *ops;
>         unsigned long flags;
> --
> 2.39.5
>

