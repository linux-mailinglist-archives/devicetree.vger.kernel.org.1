Return-Path: <devicetree+bounces-204950-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 99EAFB276FE
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 05:43:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 471DEAA244C
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 03:42:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8448D2BDC31;
	Fri, 15 Aug 2025 03:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="n6P0IZ3d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E6D21ABAA
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 03:42:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755229342; cv=none; b=N5TRt19mQ4LPAN4lquGaTYe5kKHxLpmv1s0THegwDaBt0VA53MuSkBXEfv0NpExJA+UU0Y2wl15UwprRX5JiDlKVFacqFod82TFHlNE6Hs1dRsC5GHPKgYMBBwlLo6DUtvhn+CavoBxU9EOa/bh94g4caN5frs9oYKeXDDFch0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755229342; c=relaxed/simple;
	bh=vsQ52WTwmO3+8ssw1w1cMYYmcVawrOSq6WzepbrpO70=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nje0F2gPXPCESwPlJeWnfbtEvgtrsJ8t7vsQBf3BudgbEQtgguO4oDABqnUr4nkbW525r54hLHAeOgwcofTyDOSSpygXy3lCnX/wYBuH9FyOlXppN49A+lrEIHmp/hcemvwW2I7ZF500C68R1V3O0YS62CxlMkXxTpQveG1Ja+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=n6P0IZ3d; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-55ce4d3b746so1993586e87.1
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 20:42:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1755229337; x=1755834137; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HLAZnsZy8mysFSYeQu/zRgcIgupbd8f4aYQXFFI2MWI=;
        b=n6P0IZ3dVwDyLuzIVnFEG9e8AzVR+RUueC+3GZKs95LqUkbTrECHkRIKM74+Q0KBfE
         IaXH4cTmi6cQ5ePzxrRKjW24eg6mn/tfbtZBy8BLLzZBU8+OA4WjUcpM/PIA114pFehW
         WCKday2Y/RZxYJoSYcI8ZSUe/4+RCpKFcy8rk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755229337; x=1755834137;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HLAZnsZy8mysFSYeQu/zRgcIgupbd8f4aYQXFFI2MWI=;
        b=Dz4fWVYdaSo1/+xMn3G8BZXzpdOssyqrVmTsn+2SZFX76+n6Lj6l9v5U1pgI4KpMeg
         7iPVdtXwNrXtlDHiWX0hk4een+t3E1KDZm3NfMbG3Yd99Zr118vMGPwE40IYnXS6Evrh
         FvcbGr2lg31T/VZTHU+QXd4naeGU2kw8LFYD7ghhfpi+TPZUo3Olq/j6ZSWForzJWeys
         HtN7d14XGc3/Y91AOZQ2TG1Rl0jRqSd8t8N1Fqnjntw44NqRexEOW3/TT1lqME2bs6dE
         hJ75KJrFc8ZKR6kcTKIFfej2JVqxbvb79WkBuFcc8ydiYUGF6DPgIpx+RezZDnb7YrAp
         BTZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWIZAMcXjJ5Cn7YK5aq+Im17bBoeZqd6+En5ybS7s3HMH/gld/hU3uYWRAp9ktEUOclILmXb1gK8dpV@vger.kernel.org
X-Gm-Message-State: AOJu0YxcJaVcLvqdl8iNG8XoLpLPpMFu0DJD41zEFQZrlR6zBt3eXexP
	28DOehAYynsVS/7geEGTCJvrQ/5Eu3cssCOryc3iFqqHpLaBbckrrNnAwmh8HinMV+5YnxvqdXC
	RS6sbOQJPG5R2Hr8CTa111v+DRPRBjqlT7as2eovj
X-Gm-Gg: ASbGnctJ/iWMOHcBKwjCNLr/x7vwmvhnOnWf516ZGJxX0b9FAja+cKj/hM7umzddjI/
	HBhn5N6GD9/mEwiIimP9YSAyOvWh14rlLHcnK0LpXNSxiZhnma7LtEdUCY05v9cFPsqbJkw/Gk3
	xtFJ7KGsVYAU+CPWDWD+pRVuPldYMUcqM3UVXibulphxASXv8H4bCkMPfdaugHJUw95TcQA3yeZ
	XoCfptdphQwVOajRii8ytYWFjFjctdZQBaEkw==
X-Google-Smtp-Source: AGHT+IG4MHT9xlQA8q+aRzeI2TOWcXJ3eWM4zAEjXRmpGzb6++EC3UVO4G2WwSWQHvNm7WXOwl7nEj1UnHJTPSq8Yys=
X-Received: by 2002:a05:6512:230a:b0:55c:d6c9:38df with SMTP id
 2adb3069b0e04-55ce62cd258mr1499674e87.21.1755229337315; Thu, 14 Aug 2025
 20:42:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250805135447.149231-1-laura.nao@collabora.com> <20250805135447.149231-7-laura.nao@collabora.com>
In-Reply-To: <20250805135447.149231-7-laura.nao@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 15 Aug 2025 12:42:06 +0900
X-Gm-Features: Ac12FXy2dCuPlbnz3eN56WS0B1sITUha0hiPx6j9G95oILsqMsxPgE4MrEBU4UM
Message-ID: <CAGXv+5GxJs03EcMt0jm-x_fDuy_RtCrnOmyJvVVgAP9O9R6E2Q@mail.gmail.com>
Subject: Re: [PATCH v4 06/27] clk: mediatek: clk-gate: Refactor
 mtk_clk_register_gate to use mtk_gate struct
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
> MT8196 uses a HW voter for gate enable/disable control, with
> set/clr/sta registers located in a separate regmap. Refactor
> mtk_clk_register_gate() to take a struct mtk_gate instead of individual
> parameters, avoiding the need to add three extra arguments to support
> HW voter register offsets.
>
> Reviewed-by: N=C3=ADcolas F. R. A. Prado <nfraprado@collabora.com>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>
> Signed-off-by: Laura Nao <laura.nao@collabora.com>
> ---
>  drivers/clk/mediatek/clk-gate.c | 35 ++++++++++++---------------------
>  1 file changed, 13 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/clk/mediatek/clk-gate.c b/drivers/clk/mediatek/clk-g=
ate.c
> index 67d9e741c5e7..0375ccad4be3 100644
> --- a/drivers/clk/mediatek/clk-gate.c
> +++ b/drivers/clk/mediatek/clk-gate.c
> @@ -152,12 +152,9 @@ const struct clk_ops mtk_clk_gate_ops_no_setclr_inv =
=3D {
>  };
>  EXPORT_SYMBOL_GPL(mtk_clk_gate_ops_no_setclr_inv);
>
> -static struct clk_hw *mtk_clk_register_gate(struct device *dev, const ch=
ar *name,
> -                                        const char *parent_name,
> -                                        struct regmap *regmap, int set_o=
fs,
> -                                        int clr_ofs, int sta_ofs, u8 bit=
,
> -                                        const struct clk_ops *ops,
> -                                        unsigned long flags)
> +static struct clk_hw *mtk_clk_register_gate(struct device *dev,
> +                                               const struct mtk_gate *ga=
te,
> +                                               struct regmap *regmap)
>  {
>         struct mtk_clk_gate *cg;
>         int ret;
> @@ -167,17 +164,17 @@ static struct clk_hw *mtk_clk_register_gate(struct =
device *dev, const char *name
>         if (!cg)
>                 return ERR_PTR(-ENOMEM);
>
> -       init.name =3D name;
> -       init.flags =3D flags | CLK_SET_RATE_PARENT;
> -       init.parent_names =3D parent_name ? &parent_name : NULL;
> -       init.num_parents =3D parent_name ? 1 : 0;
> -       init.ops =3D ops;
> +       init.name =3D gate->name;
> +       init.flags =3D gate->flags | CLK_SET_RATE_PARENT;
> +       init.parent_names =3D gate->parent_name ? &gate->parent_name : NU=
LL;
> +       init.num_parents =3D gate->parent_name ? 1 : 0;
> +       init.ops =3D gate->ops;
>
>         cg->regmap =3D regmap;
> -       cg->set_ofs =3D set_ofs;
> -       cg->clr_ofs =3D clr_ofs;
> -       cg->sta_ofs =3D sta_ofs;
> -       cg->bit =3D bit;
> +       cg->set_ofs =3D gate->regs->set_ofs;
> +       cg->clr_ofs =3D gate->regs->clr_ofs;
> +       cg->sta_ofs =3D gate->regs->sta_ofs;
> +       cg->bit =3D gate->shift;

I'd rather see |struct mtk_clk_gate| (the runtime data) gain a pointer
to the static data |struct mtk_gate| instead of doing all the copying.
This is just needless duplication.

ChenYu

>         cg->hw.init =3D &init;
>
> @@ -228,13 +225,7 @@ int mtk_clk_register_gates(struct device *dev, struc=
t device_node *node,
>                         continue;
>                 }
>
> -               hw =3D mtk_clk_register_gate(dev, gate->name, gate->paren=
t_name,
> -                                           regmap,
> -                                           gate->regs->set_ofs,
> -                                           gate->regs->clr_ofs,
> -                                           gate->regs->sta_ofs,
> -                                           gate->shift, gate->ops,
> -                                           gate->flags);
> +               hw =3D mtk_clk_register_gate(dev, gate, regmap);
>
>                 if (IS_ERR(hw)) {
>                         pr_err("Failed to register clk %s: %pe\n", gate->=
name,
> --
> 2.39.5
>

