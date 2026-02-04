Return-Path: <devicetree+bounces-262520-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +CCaM+zkgmnXeAMAu9opvQ
	(envelope-from <devicetree+bounces-262520-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 07:19:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C7FBE245B
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 07:19:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 297813034CBB
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 06:19:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AFE037D106;
	Wed,  4 Feb 2026 06:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JLFq7wQd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1DDC37C113
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 06:19:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.46
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770185961; cv=pass; b=fP4YZGgKq8qknE4K2y3c8nFW1PEU9hkSpwkMkJcWjDgseeEmBL9pw2cdj9TobGuo8TT2ITyLYNgV2WVsTybBicz/EFrtW6Dp+G3WgFmcKXFi6rp/ZIUThFo50uI3CjMkIolWq7EX/Ah/Ru1VRWjFgOh/F11V+zwDPA5m+W5EjSI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770185961; c=relaxed/simple;
	bh=bVfEmi98HwWlqMY00MAf1kHEVmJ1Wh37awqfJ88Gffo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Q5c0iWDcI4C91hrOqtid2ZWb6V1B2SKWHVUwSDHLN0zI4xkqVrForFjCq/4QKvxh3LUXKTJOx1ppH1Mh2YpaJ2I1qsksGtpRvBbnt5ae1mdf8QeouLfV913OxhvyfmbIoy1Fn2fI7PSSP3QN3bU7bFOAS+u67NX/4AevzN3UCr0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JLFq7wQd; arc=pass smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b8850aa5b56so1027964766b.2
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 22:19:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770185959; cv=none;
        d=google.com; s=arc-20240605;
        b=T6mslI7ycYzWI8oC3XVth74VKooQ85PCv5HjgW7nT81fdcTC5EkYKU5ZzUt9dgU7RL
         Gse1+C0XRE+woAGAZokIf9FKmsgAJ8Wd4h8Lu/ThHJ+MB+bJ58XsSayIYAgbFolZXFWA
         Oh4XxSpWGXHzSREzRDgIptv+Ujd4OYRuhPSFyHE/ngengsOb/j24QvF4lEUoLhFArtNR
         gB7ykBM32cM2A/0P7PTiloYrZJBgUz20GYERKBFYHS8HTNI7W45Y4BhkFAvtoFSzBVm2
         dV2w0onTSW+LohOEEpMVVcnlowizFySG3FHiqns8CvSEE1STBKRDVTR2CMMA7z/hkZ/i
         BtSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=NVIVEenpiD1PXgrX2ztAIdmNemiB1u7jQRnU016vEfg=;
        fh=AtsUwj6C3uLXL9ur4t1c+9IynBW0gkDcMGn7V3sBfAQ=;
        b=OufYSxDXpJDlEvOr7MjuaLfuyQCfXIPprko4j5YbigMsWJTNudsWVudGj82kKYS7vn
         Fl62s5KbmoTTtjyZvsaIz4usf65zGTAIPqfph7uZLfHsm8bf+moT+YEadoWQvWp+5CVD
         EsvJRlyXww+ZTUjcpWmtjCxOA232Sak2pp2wglnDZC+eLs/H6i5aUdqBHPF370Animsj
         wXB3Ji2LZBwKyOjFATm9KXLL0/fhp5gFlG+JqcKdvG7bGm0K+HihCWsqMJzBRxEi64g2
         7pHhMmNdobm/x686tJfdi7XzCVTNDVPEXq33zyFrGaSUKgXnLpMh5P4sA+yWuJONITlo
         FsIw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770185959; x=1770790759; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NVIVEenpiD1PXgrX2ztAIdmNemiB1u7jQRnU016vEfg=;
        b=JLFq7wQdxNdpP8kzQ4tBif5/LAtpfwwkacefSVsoW7afRbwn9BDHPdgy/i9Mc+NjFm
         NfFzsuQbET/+8cMXyfVGbPuX7bDao0u5lOAQj128suvh2BsqNIKjrUN60hiMPfQv9j1N
         0/BNkGGOFklfeVBjRqRH5MTmmUABFuvCJbcWiNq+/0PN8Ip2xB+qPOEzdubjMH2omzTT
         c6MPwH9AAmidRjUaxC3qMI2o7DM+VGt7gSRlYmLFPNzt68gUgHFjihk29KLXuZx9POle
         0onFTcfZTcbLA8vTkKuKyZc4yiH4Kd8iTsMWlJ8uWr2yIWeCZ8AgPQOVULiOrbSwoueF
         PpPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770185959; x=1770790759;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NVIVEenpiD1PXgrX2ztAIdmNemiB1u7jQRnU016vEfg=;
        b=MUxINGnlZsHZcqQUR42NQCBN+gB0nSREePriLIpbE19I3kQXpa4U7qCHGnROvS2jxn
         Y8ifu4TqSwzHZ0920JP0E37HJ7chQA/SBsWvXXYTmn7J660v/FsGcsQchBoWl61Vk6uu
         tMVxUKwz8m6MH8hgAS+kYWsfBc9LllW1PqwWSc36Cy6qblaiXISzLDgHVY1eR8tNf//p
         j9qI/WzQKALn1rAGnM3ThP3iUaUCj7T5fwIIQUpNyTNoDNZnsT446QPYfV4VlotYCj96
         TemAmrI6KYuUh4TlUdXuEJGWSIeGBM7hx6EYeLGhkOaH9SYhVDbnOk/nH0RDYuAkMVjz
         Ceiw==
X-Forwarded-Encrypted: i=1; AJvYcCU5n9DuJiOv7/sAEM79gY0u9IdgcmUJSRrdXRKtkbQeVj9nS3MbpS5bKLmfgwOEP3FmVHXWQgxMEcsH@vger.kernel.org
X-Gm-Message-State: AOJu0YwOtPxmpQBaVLLGCM5Y8qNU6DxI2ZecGxcmWM++s1vxKodkgUhS
	l5MGYHB1XpQwt4TcYCuyGD+aN1zgQXC/0DLSCZilclVUZNz+q4olTHCvB7Mv6KjVZpAzk3jrPhM
	ucq0MABCBxb4+va4u4n+Maj0mhXiAtwY=
X-Gm-Gg: AZuq6aJlzZmffvPwcAT4cZOURDpji5LovIR5MuqdGTxXbQjPCc0f3n2/n9OALj7v5Rt
	a5fkhM4Yn2aPT/8BHY/W3d7Fk93yIDu8EUSQnVSAQ5iBIlJsejm7igV/1sX74lb8WpW1N+F6zZw
	htnXli7e38p9zNaObuZxX5YAXnTlVfmQF33eljG4Y7Ef5cr6BsJFW53dSz3Xh+DlSxyedHZ0YkW
	D0bwyRe29vBPL+XR2xtYWDcvs3Zsejc6L22PLHy6kXVfs4uy9QfRztwAYlBu/lzQikdCkM=
X-Received: by 2002:a17:907:6d27:b0:b87:3174:9bbe with SMTP id
 a640c23a62f3a-b8e9f544c5bmr119028966b.61.1770185958835; Tue, 03 Feb 2026
 22:19:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1770119693.git.zhoubinbin@loongson.cn> <d7a73d1fe8a3e4e57055a15a6ec03170f0d8ca21.1770119693.git.zhoubinbin@loongson.cn>
 <CAJhJPsVRZe_E6FsNBUa6K=GmPp3FXRrOH=yguvTY=K1cGwa62Q@mail.gmail.com>
In-Reply-To: <CAJhJPsVRZe_E6FsNBUa6K=GmPp3FXRrOH=yguvTY=K1cGwa62Q@mail.gmail.com>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Wed, 4 Feb 2026 14:19:06 +0800
X-Gm-Features: AZwV_QjF3YyiqoE0PKGT64ezLZ8uAEjt6J21_QDxrbC7oBPA-19LzeMuSNLcgVs
Message-ID: <CAMpQs4JM43ePsYAA0GVeKc5_WJL1TWSm-K2RKXcYJjttR6k6-w@mail.gmail.com>
Subject: Re: [PATCH 1/3] dmaengine: loongson: New directory for Loongson DMA
 controllers drivers
To: Keguang Zhang <keguang.zhang@gmail.com>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, dmaengine@vger.kernel.org, 
	Xiaochuang Mao <maoxiaochuan@loongson.cn>, Huacai Chen <chenhuacai@kernel.org>, 
	Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262520-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zhoubbaaron@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,loongson.cn:email]
X-Rspamd-Queue-Id: 4C7FBE245B
X-Rspamd-Action: no action

Hi Keguang:

On Wed, Feb 4, 2026 at 1:43=E2=80=AFPM Keguang Zhang <keguang.zhang@gmail.c=
om> wrote:
>
> On Tue, Feb 3, 2026 at 8:30=E2=80=AFPM Binbin Zhou <zhoubinbin@loongson.c=
n> wrote:
> >
> > Gather the Loongson DMA controllers under drivers/dma/loongson/
> >
> > Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> > ---
> >  MAINTAINERS                                   |  2 +-
> >  drivers/dma/Kconfig                           | 25 ++---------------
> >  drivers/dma/Makefile                          |  3 +-
> >  drivers/dma/loongson/Kconfig                  | 28 +++++++++++++++++++
> >  drivers/dma/loongson/Makefile                 |  3 ++
> >  .../dma/{ =3D> loongson}/loongson1-apb-dma.c    |  4 +--
> >  .../dma/{ =3D> loongson}/loongson2-apb-dma.c    |  4 +--
> >  7 files changed, 39 insertions(+), 30 deletions(-)
> >  create mode 100644 drivers/dma/loongson/Kconfig
> >  create mode 100644 drivers/dma/loongson/Makefile
> >  rename drivers/dma/{ =3D> loongson}/loongson1-apb-dma.c (99%)
>
> The file loongson1-apb-dma.c was moved to drivers/dma/loongson/,
> but the MAINTAINERS entry still refers to the old path.

In the MAINTAINERS, the loongson1 driver filename is matched using the
wildcard `*`. This move operation appears to have no effect.

As follows:

MIPS/LOONGSON1 ARCHITECTURE
M:      Keguang Zhang <keguang.zhang@gmail.com>
L:      linux-mips@vger.kernel.org
S:      Maintained
F:      Documentation/devicetree/bindings/*/loongson,ls1*.yaml
F:      arch/mips/boot/dts/loongson/loongson1*
F:      arch/mips/configs/loongson1_defconfig
F:      arch/mips/loongson32/
F:      drivers/*/*loongson1*
F:      drivers/mtd/nand/raw/loongson-nand-controller.c
F:      drivers/net/ethernet/stmicro/stmmac/dwmac-loongson1.c
F:      sound/soc/loongson/loongson1_ac97.c

>
> >  rename drivers/dma/{ =3D> loongson}/loongson2-apb-dma.c (99%)
> >
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 5b11839cba9d..66807104af63 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -14776,7 +14776,7 @@ M:      Binbin Zhou <zhoubinbin@loongson.cn>
> >  L:     dmaengine@vger.kernel.org
> >  S:     Maintained
> >  F:     Documentation/devicetree/bindings/dma/loongson,ls2x-apbdma.yaml
> > -F:     drivers/dma/loongson2-apb-dma.c
> > +F:     drivers/dma/loongson/loongson2-apb-dma.c
> >
> >  LOONGSON LS2X I2C DRIVER
> >  M:     Binbin Zhou <zhoubinbin@loongson.cn>
> > diff --git a/drivers/dma/Kconfig b/drivers/dma/Kconfig
> > index 66cda7cc9f7a..1b84c5b11654 100644
> > --- a/drivers/dma/Kconfig
> > +++ b/drivers/dma/Kconfig
> > @@ -376,29 +376,6 @@ config K3_DMA
> >           Support the DMA engine for Hisilicon K3 platform
> >           devices.
> >
> > -config LOONGSON1_APB_DMA
> > -       tristate "Loongson1 APB DMA support"
> > -       depends on MACH_LOONGSON32 || COMPILE_TEST
> > -       select DMA_ENGINE
> > -       select DMA_VIRTUAL_CHANNELS
> > -       help
> > -         This selects support for the APB DMA controller in Loongson1 =
SoCs,
> > -         which is required by Loongson1 NAND and audio support.
> > -
> > -config LOONGSON2_APB_DMA
> > -       tristate "Loongson2 APB DMA support"
> > -       depends on LOONGARCH || COMPILE_TEST
> > -       select DMA_ENGINE
> > -       select DMA_VIRTUAL_CHANNELS
> > -       help
> > -         Support for the Loongson2 APB DMA controller driver. The
> > -         DMA controller is having single DMA channel which can be
> > -         configured for different peripherals like audio, nand, sdio
> > -         etc which is in APB bus.
> > -
> > -         This DMA controller transfers data from memory to peripheral =
fifo.
> > -         It does not support memory to memory data transfer.
> > -
> >  config LPC18XX_DMAMUX
> >         bool "NXP LPC18xx/43xx DMA MUX for PL080"
> >         depends on ARCH_LPC18XX || COMPILE_TEST
> > @@ -774,6 +751,8 @@ source "drivers/dma/fsl-dpaa2-qdma/Kconfig"
> >
> >  source "drivers/dma/lgm/Kconfig"
> >
> > +source "drivers/dma/loongson/Kconfig"
> > +
> >  source "drivers/dma/stm32/Kconfig"
> >
> >  # clients
> > diff --git a/drivers/dma/Makefile b/drivers/dma/Makefile
> > index a54d7688392b..a1c73415b79f 100644
> > --- a/drivers/dma/Makefile
> > +++ b/drivers/dma/Makefile
> > @@ -49,8 +49,6 @@ obj-$(CONFIG_INTEL_IDMA64) +=3D idma64.o
> >  obj-$(CONFIG_INTEL_IOATDMA) +=3D ioat/
> >  obj-y +=3D idxd/
> >  obj-$(CONFIG_K3_DMA) +=3D k3dma.o
> > -obj-$(CONFIG_LOONGSON1_APB_DMA) +=3D loongson1-apb-dma.o
> > -obj-$(CONFIG_LOONGSON2_APB_DMA) +=3D loongson2-apb-dma.o
> >  obj-$(CONFIG_LPC18XX_DMAMUX) +=3D lpc18xx-dmamux.o
> >  obj-$(CONFIG_LPC32XX_DMAMUX) +=3D lpc32xx-dmamux.o
> >  obj-$(CONFIG_MILBEAUT_HDMAC) +=3D milbeaut-hdmac.o
> > @@ -88,6 +86,7 @@ obj-$(CONFIG_INTEL_LDMA) +=3D lgm/
> >
> >  obj-y +=3D amd/
> >  obj-y +=3D mediatek/
> > +obj-y +=3D loongson/
> >  obj-y +=3D qcom/
> >  obj-y +=3D stm32/
> >  obj-y +=3D ti/
> > diff --git a/drivers/dma/loongson/Kconfig b/drivers/dma/loongson/Kconfi=
g
> > new file mode 100644
> > index 000000000000..9dbdaef5a59f
> > --- /dev/null
> > +++ b/drivers/dma/loongson/Kconfig
> > @@ -0,0 +1,28 @@
> > +# SPDX-License-Identifier: GPL-2.0-only
> > +#
> > +# Loongson DMA controllers drivers
> > +#
> > +if MACH_LOONGSON32 || MACH_LOONGSON64 || COMPILE_TEST
> > +
> > +config LOONGSON1_APB_DMA
> > +       tristate "Loongson1 APB DMA support"
> > +       select DMA_ENGINE
> > +       select DMA_VIRTUAL_CHANNELS
> > +       help
> > +         This selects support for the APB DMA controller in Loongson1 =
SoCs,
> > +         which is required by Loongson1 NAND and audio support.
> > +
> > +config LOONGSON2_APB_DMA
> > +       tristate "Loongson2 APB DMA support"
> > +       select DMA_ENGINE
> > +       select DMA_VIRTUAL_CHANNELS
> > +       help
> > +         Support for the Loongson2 APB DMA controller driver. The
> > +         DMA controller is having single DMA channel which can be
> > +         configured for different peripherals like audio, nand, sdio
> > +         etc which is in APB bus.
> > +
> > +         This DMA controller transfers data from memory to peripheral =
fifo.
> > +         It does not support memory to memory data transfer.
> > +
> > +endif
> > diff --git a/drivers/dma/loongson/Makefile b/drivers/dma/loongson/Makef=
ile
> > new file mode 100644
> > index 000000000000..6cdd08065e92
> > --- /dev/null
> > +++ b/drivers/dma/loongson/Makefile
> > @@ -0,0 +1,3 @@
> > +# SPDX-License-Identifier: GPL-2.0-only
> > +obj-$(CONFIG_LOONGSON1_APB_DMA) +=3D loongson1-apb-dma.o
> > +obj-$(CONFIG_LOONGSON2_APB_DMA) +=3D loongson2-apb-dma.o
> > diff --git a/drivers/dma/loongson1-apb-dma.c b/drivers/dma/loongson/loo=
ngson1-apb-dma.c
> > similarity index 99%
> > rename from drivers/dma/loongson1-apb-dma.c
> > rename to drivers/dma/loongson/loongson1-apb-dma.c
> > index 255fe7eca212..e99247cf90c1 100644
> > --- a/drivers/dma/loongson1-apb-dma.c
> > +++ b/drivers/dma/loongson/loongson1-apb-dma.c
> > @@ -16,8 +16,8 @@
> >  #include <linux/platform_device.h>
> >  #include <linux/slab.h>
> >
> > -#include "dmaengine.h"
> > -#include "virt-dma.h"
> > +#include "../dmaengine.h"
> > +#include "../virt-dma.h"
> >
> >  /* Loongson-1 DMA Control Register */
> >  #define LS1X_DMA_CTRL          0x0
> > diff --git a/drivers/dma/loongson2-apb-dma.c b/drivers/dma/loongson/loo=
ngson2-apb-dma.c
> > similarity index 99%
> > rename from drivers/dma/loongson2-apb-dma.c
> > rename to drivers/dma/loongson/loongson2-apb-dma.c
> > index c528f02b9f84..0cb607595d04 100644
> > --- a/drivers/dma/loongson2-apb-dma.c
> > +++ b/drivers/dma/loongson/loongson2-apb-dma.c
> > @@ -17,8 +17,8 @@
> >  #include <linux/platform_device.h>
> >  #include <linux/slab.h>
> >
> > -#include "dmaengine.h"
> > -#include "virt-dma.h"
> > +#include "../dmaengine.h"
> > +#include "../virt-dma.h"
> >
> >  /* Global Configuration Register */
> >  #define LDMA_ORDER_ERG         0x0
> > --
> > 2.47.3
> >
>
>
> --
> Best regards,
>
> Keguang Zhang

--=20
Thanks.
Binbin

