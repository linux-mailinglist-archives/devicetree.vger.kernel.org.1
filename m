Return-Path: <devicetree+bounces-282033-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sJTkES/byGnhrgUAu9opvQ
	(envelope-from <devicetree+bounces-282033-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 29 Mar 2026 09:56:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 671FF351288
	for <lists+devicetree@lfdr.de>; Sun, 29 Mar 2026 09:56:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0274C301FA5C
	for <lists+devicetree@lfdr.de>; Sun, 29 Mar 2026 07:56:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D3092D47E4;
	Sun, 29 Mar 2026 07:56:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R2HhQq+0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09B7828FFF6
	for <devicetree@vger.kernel.org>; Sun, 29 Mar 2026 07:56:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774770987; cv=none; b=dVQ9Zjcv5wu0V85F/jE3GzxgN7E27586rJlJhGPROBDeDlBnU94mWJcFln8Qr1fWvVNJ63ZrQ42akyFOE87BlU2TRKvQcLz/ydPQvKAHwDeIlyFWaO1hzei+Y9m4q46X1LWA6IHeVZAN/O2PJDcTvnEihPzxFknCwAVA4dsZgUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774770987; c=relaxed/simple;
	bh=NXkO1BKIOyiirGfmId7kEdTa6tS6egLCtvOXPPxBnMY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gkpOyVPiExg59gi+/tQPoDz8lBP9n1/0IO/U3kzGVIjW8KvBBlsziIvF3SnV0vtUU0vcC/wBjyp340lnRPtUi5j4/BlXeDFCVqd/rOUYzI3rIjGaBdv3TUvyXyLKPfcoxSowcY8msAVP+dc26gCvVdHYy7Zs2banWBdndqNm8Y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R2HhQq+0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B01F8C116C6
	for <devicetree@vger.kernel.org>; Sun, 29 Mar 2026 07:56:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774770986;
	bh=NXkO1BKIOyiirGfmId7kEdTa6tS6egLCtvOXPPxBnMY=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=R2HhQq+016fcpCRIW8zdQ0HauTKnwjFOWDOpiPxZ0WXQBBbyfTQW3FUPqpXXI9Oy5
	 VtAO2d83xAkqNt7Ee5gX3q985bACYSFYYxw84stvuDp6WhAYUx+iSArS8HMN6z2x8y
	 nr6aBjnxht82iQk2c4eXgOadJndzq6HElWcvooZ32IciqLT1rsDb4NGgCkGHFs3gcK
	 sIZDZAbYI+cKTSR/LnYMFyxba+OPKsbo1ESN+fDpKklulAvrPB43b3jB0D+GNC6fr2
	 FF/jikh8Za867TrBvmLdneQ1Zt6jL07GMPj9xNXYTgSmCzAHaX6zEovkwTkcIWnFR3
	 g71no7e2M6Y9w==
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-38bcda08c76so28001601fa.0
        for <devicetree@vger.kernel.org>; Sun, 29 Mar 2026 00:56:26 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUj4Mw0Ge7LvBAMf7MRX5e1h3nCDuc3FKQaNk9+en/scac8VLo0CwiDCxMla3wAaPz0Iq3quVibUCa8@vger.kernel.org
X-Gm-Message-State: AOJu0YxdANJ6Avmd4oYh4FvHDG3LROCgaAuyA+7vf9wLWv/8Of8yfeYz
	Zu72nJSs/qmFAMEhHLBRMjVnYSeV4T7+AqRJiWx7yjSY/tcySnAc8gzLjMzvbwfPnGcKQHEuU5U
	+kXXViA7rgYYXSOGoY6GtsOlCYIARSXA=
X-Received: by 2002:a2e:bea8:0:b0:38b:d89b:e285 with SMTP id
 38308e7fff4ca-38c731b8b78mr24317401fa.4.1774770985099; Sun, 29 Mar 2026
 00:56:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260310-a733-clk-v1-0-36b4e9b24457@pigmoral.tech> <20260310-a733-clk-v1-2-36b4e9b24457@pigmoral.tech>
In-Reply-To: <20260310-a733-clk-v1-2-36b4e9b24457@pigmoral.tech>
Reply-To: wens@kernel.org
From: Chen-Yu Tsai <wens@kernel.org>
Date: Sun, 29 Mar 2026 15:56:12 +0800
X-Gmail-Original-Message-ID: <CAGb2v65ycixbX7YS_rC6pyh-zMP6QvHqc6qdXjH4e0xpaqX=CQ@mail.gmail.com>
X-Gm-Features: AQROBzBv23a5U8YFwC6JrpXv9HxCxK3WuA_W9E6K5Up_sT7yzO6F5aKFcWx7Jy8
Message-ID: <CAGb2v65ycixbX7YS_rC6pyh-zMP6QvHqc6qdXjH4e0xpaqX=CQ@mail.gmail.com>
Subject: Re: [PATCH RFC 2/8] clk: sunxi-ng: sdm: Add dual patterns support
To: Junhui Liu <junhui.liu@pigmoral.tech>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Richard Cochran <richardcochran@gmail.com>, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-282033-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[baylibre.com,kernel.org,gmail.com,sholland.org,pengutronix.de,dabbelt.com,eecs.berkeley.edu,ghiti.fr,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wens@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	HAS_REPLYTO(0.00)[wens@kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,pigmoral.tech:email]
X-Rspamd-Queue-Id: 671FF351288
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 10, 2026 at 4:42=E2=80=AFPM Junhui Liu <junhui.liu@pigmoral.tec=
h> wrote:
>
> On newer Allwinner platforms like the A733, the Sigma-Delta Modulation
> (SDM) control logic is more complex. The SDM enable bit, which was
> previously located in the PLL register, is now moved to a second
> pattern register (PATTERN1).
>
> To support this, rename the existing "tuning" members to "pattern0" to
> align with the datasheet, and introduce the _SUNXI_CCU_SDM_DUAL_PAT
> macro to provide pattern1 register support. Related operations are also
> updated.
>
> Signed-off-by: Junhui Liu <junhui.liu@pigmoral.tech>
> ---
>  drivers/clk/sunxi-ng/ccu_sdm.c | 51 +++++++++++++++++++++++++++++-------=
------
>  drivers/clk/sunxi-ng/ccu_sdm.h | 32 +++++++++++++++++---------
>  2 files changed, 57 insertions(+), 26 deletions(-)
>
> diff --git a/drivers/clk/sunxi-ng/ccu_sdm.c b/drivers/clk/sunxi-ng/ccu_sd=
m.c
> index c564e5f9e610..204e25feaa36 100644
> --- a/drivers/clk/sunxi-ng/ccu_sdm.c
> +++ b/drivers/clk/sunxi-ng/ccu_sdm.c
> @@ -18,7 +18,10 @@ bool ccu_sdm_helper_is_enabled(struct ccu_common *comm=
on,
>         if (sdm->enable && !(readl(common->base + common->reg) & sdm->ena=
ble))
>                 return false;
>
> -       return !!(readl(common->base + sdm->tuning_reg) & sdm->tuning_ena=
ble);
> +       if (sdm->pat1_enable && !(readl(common->base + sdm->pat1_reg) & s=
dm->pat1_enable))
> +               return false;
> +
> +       return !!(readl(common->base + sdm->pat0_reg) & sdm->pat0_enable)=
;
>  }
>  EXPORT_SYMBOL_NS_GPL(ccu_sdm_helper_is_enabled, "SUNXI_CCU");
>
> @@ -37,18 +40,27 @@ void ccu_sdm_helper_enable(struct ccu_common *common,
>         for (i =3D 0; i < sdm->table_size; i++)
>                 if (sdm->table[i].rate =3D=3D rate)
>                         writel(sdm->table[i].pattern,
> -                              common->base + sdm->tuning_reg);
> +                              common->base + sdm->pat0_reg);
>
>         /* Make sure SDM is enabled */
>         spin_lock_irqsave(common->lock, flags);
> -       reg =3D readl(common->base + sdm->tuning_reg);
> -       writel(reg | sdm->tuning_enable, common->base + sdm->tuning_reg);
> +       reg =3D readl(common->base + sdm->pat0_reg);
> +       writel(reg | sdm->pat0_enable, common->base + sdm->pat0_reg);
>         spin_unlock_irqrestore(common->lock, flags);
>
> -       spin_lock_irqsave(common->lock, flags);
> -       reg =3D readl(common->base + common->reg);
> -       writel(reg | sdm->enable, common->base + common->reg);
> -       spin_unlock_irqrestore(common->lock, flags);
> +       if (sdm->enable) {
> +               spin_lock_irqsave(common->lock, flags);
> +               reg =3D readl(common->base + common->reg);
> +               writel(reg | sdm->enable, common->base + common->reg);
> +               spin_unlock_irqrestore(common->lock, flags);
> +       }
> +
> +       if (sdm->pat1_enable) {
> +               spin_lock_irqsave(common->lock, flags);
> +               reg =3D readl(common->base + sdm->pat1_reg);
> +               writel(reg | sdm->pat1_enable, common->base + sdm->pat1_r=
eg);
> +               spin_unlock_irqrestore(common->lock, flags);
> +       }
>  }
>  EXPORT_SYMBOL_NS_GPL(ccu_sdm_helper_enable, "SUNXI_CCU");
>
> @@ -61,14 +73,23 @@ void ccu_sdm_helper_disable(struct ccu_common *common=
,
>         if (!(common->features & CCU_FEATURE_SIGMA_DELTA_MOD))
>                 return;
>
> -       spin_lock_irqsave(common->lock, flags);
> -       reg =3D readl(common->base + common->reg);
> -       writel(reg & ~sdm->enable, common->base + common->reg);
> -       spin_unlock_irqrestore(common->lock, flags);
> +       if (sdm->enable) {
> +               spin_lock_irqsave(common->lock, flags);
> +               reg =3D readl(common->base + common->reg);
> +               writel(reg & ~sdm->enable, common->base + common->reg);
> +               spin_unlock_irqrestore(common->lock, flags);
> +       }
> +
> +       if (sdm->pat1_enable) {
> +               spin_lock_irqsave(common->lock, flags);
> +               reg =3D readl(common->base + sdm->pat1_reg);
> +               writel(reg & ~sdm->pat1_enable, common->base + sdm->pat1_=
reg);
> +               spin_unlock_irqrestore(common->lock, flags);
> +       }
>
>         spin_lock_irqsave(common->lock, flags);
> -       reg =3D readl(common->base + sdm->tuning_reg);
> -       writel(reg & ~sdm->tuning_enable, common->base + sdm->tuning_reg)=
;
> +       reg =3D readl(common->base + sdm->pat0_reg);
> +       writel(reg & ~sdm->pat0_enable, common->base + sdm->pat0_reg);
>         spin_unlock_irqrestore(common->lock, flags);
>  }
>  EXPORT_SYMBOL_NS_GPL(ccu_sdm_helper_disable, "SUNXI_CCU");
> @@ -123,7 +144,7 @@ unsigned long ccu_sdm_helper_read_rate(struct ccu_com=
mon *common,
>         pr_debug("%s: clock is sigma-delta modulated\n",
>                  clk_hw_get_name(&common->hw));
>
> -       reg =3D readl(common->base + sdm->tuning_reg);
> +       reg =3D readl(common->base + sdm->pat0_reg);
>
>         pr_debug("%s: pattern reg is 0x%x",
>                  clk_hw_get_name(&common->hw), reg);
> diff --git a/drivers/clk/sunxi-ng/ccu_sdm.h b/drivers/clk/sunxi-ng/ccu_sd=
m.h
> index c1a7159b89c3..c289be28e1b4 100644
> --- a/drivers/clk/sunxi-ng/ccu_sdm.h
> +++ b/drivers/clk/sunxi-ng/ccu_sdm.h
> @@ -33,21 +33,31 @@ struct ccu_sdm_internal {
>         u32             table_size;
>         /* early SoCs don't have the SDM enable bit in the PLL register *=
/
>         u32             enable;
> -       /* second enable bit in tuning register */
> -       u32             tuning_enable;
> -       u16             tuning_reg;
> +       /* second enable bit in pattern0 register */
> +       u32             pat0_enable;
> +       u16             pat0_reg;
> +       /* on some platforms, the sdm enable bit in pattern1 register */
> +       u32             pat1_enable;
> +       u16             pat1_reg;
>  };
>
> -#define _SUNXI_CCU_SDM(_table, _enable,                        \
> -                      _reg, _reg_enable)               \
> -       {                                               \
> -               .table          =3D _table,               \
> -               .table_size     =3D ARRAY_SIZE(_table),   \
> -               .enable         =3D _enable,              \
> -               .tuning_enable  =3D _reg_enable,          \
> -               .tuning_reg     =3D _reg,                 \
> +#define __SUNXI_CCU_SDM(_table, _enable, _pat0, _pat0_enable, _pat1, _pa=
t1_enable)     \
> +       {                                                               \
> +               .table                  =3D _table,                      =
 \
> +               .table_size             =3D ARRAY_SIZE(_table),          =
 \
> +               .enable                 =3D _enable,                     =
 \
> +               .pat0_enable            =3D _pat0_enable,                =
 \
> +               .pat0_reg               =3D _pat0,                       =
 \
> +               .pat1_enable            =3D _pat1_enable,                =
 \
> +               .pat1_reg               =3D _pat1,                       =
 \
>         }
>
> +#define _SUNXI_CCU_SDM(_table, _enable, _pat0, _pat0_enable)   \
> +       __SUNXI_CCU_SDM(_table, _enable, _pat0, _pat0_enable, 0, 0)
> +
> +#define _SUNXI_CCU_SDM_DUAL_PAT(_table, _pat0, _pat0_enable, _pat1, _pat=
1_enable)      \
> +       __SUNXI_CCU_SDM(_table, 0, _pat0, _pat0_enable, _pat1, _pat1_enab=
le)
> +

Don't introduce an intermediate macro that looks _almost_ the same as the
macro the driver is actually supposed to use.

Just declare _SUNXI_CCU_SDM_DUAL_PAT() to expand to the full entry, and
_SUNXI_CCU_SDM() to _SUNXI_CCU_SDM_DUAL_PAT() with the last two parameters
as zero. That takes less lines.


ChenYu

>  bool ccu_sdm_helper_is_enabled(struct ccu_common *common,
>                                struct ccu_sdm_internal *sdm);
>  void ccu_sdm_helper_enable(struct ccu_common *common,
>
> --
> 2.52.0
>
>

