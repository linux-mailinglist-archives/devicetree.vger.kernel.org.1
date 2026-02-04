Return-Path: <devicetree+bounces-262509-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qOKaApHcgmnwdQMAu9opvQ
	(envelope-from <devicetree+bounces-262509-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 06:43:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A5CE2101
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 06:43:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C4B68301C153
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 05:43:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34AF234C81E;
	Wed,  4 Feb 2026 05:43:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="m/i+m9VU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3332318BB7
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 05:43:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.41
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770183800; cv=pass; b=XnYf8M7tvx1+vwjlAm7ITvGw1UH56asFJxlgV5NflHeXwFEgjxR+v4G1tcjl2tLTPOrUFVIkpiGfiB2d3/9GNQWY6F1Rdv20PDc43FFU4i9ekr+WT0XWTKLI2WP8GZwUJhqdUXDxhfgi2Oia9BP9VHWM05GnHu6tx8EcN3wUWkQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770183800; c=relaxed/simple;
	bh=zPFVPmCmcOcYnQuEuH9JJtyahErTF7xD+xn4hX31KSo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LUjISmAfq427g+AT70lU2EaXYdy5FFv0CnOWG8163YvgUHWWg1SojyjaQg8Z+W8L/03dG4Y7HmC1oyK/MMskezK9LMDF7WwfYuMnmClVyaW2LxX+y+70135m5MOfM5HRThyzCChC51ImJcJN669dIpobcgENlAr2CF8FTLtdQ2g=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m/i+m9VU; arc=pass smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-59de38466c2so8053769e87.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 21:43:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770183798; cv=none;
        d=google.com; s=arc-20240605;
        b=iXUA0SbFIECZYbaP7O0k16vkkhNFD2ECJTJnFKS9lht6wCKPgA1yOfUtNNrEWWT6FB
         VOw5BjIyHFwnXuxp2I8YHttrI/T2I2BArVDfDwELYGYZqdY+7iyOg2QOUvOUzHaMGN9j
         zGwYFRJd0tUzRnMCAsr8WpA2dwT1AG1/DvNspa8JYl/2L2fk4mklWzJPZdAJ1AO/FY2l
         0AZvYVroUjjtOXvlxSOYYFvnyz2GMczaoX81Qf06b2kuTDI7QWYbzHLTURUBD8O38m4n
         ORaLBb4NNJ9f6f63OGfeS9A9iaLK0PaO98iywN3Y8aX1JsXxdUYM0ZTptUuTFbcfmF6J
         kqlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=QSJi97R9hFG0MQsbDlpL5CHjh0FH6IDEFC8BDQFDq64=;
        fh=oxJ64cxLMRwbi0q1TGZVcwZ1/IJ+5Tma3YidXTUObeY=;
        b=iNgBJ+PBb9MXCWL9tlF04Sgy2Ec4B0xVl+xIS5eEOKVvJJR0z4T/qeSn8SPdnaU/LI
         6Ote3+O1+jMVyLzRKe40P+teq5nYchszEHTwp156McixZ1M5f97cjfGjI6rkbjCBdh1g
         JBuYPp8ZbGCPz9UqSlRRKs4yNdMVOAJjRIaDUrM2UM++R9g0C3WdYRFnejjTd45IyUiZ
         Z/6cy9FjKn8zb2Ye85wyeJhXI5QvQHEqJRlQf2QWrXRWeHljCuy1cTGWIPWoAxYTMCsQ
         4uopKUaT4l3UcvvQM9KyU9hjeY/q5RCS+gji3MbersGhcQlANzLEMAl32RTt5GbE4tGY
         htVw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770183798; x=1770788598; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QSJi97R9hFG0MQsbDlpL5CHjh0FH6IDEFC8BDQFDq64=;
        b=m/i+m9VU3rc3QIdkMcVKorNem19t4O5BGjqbYiY33fkLRKN562q2Oai8/+aDYooWij
         VqQk53VtIbZLCq5OwhRWc2oERyxVmAsI6xmp7UUht/hOUszXpHtzWtSyDV1XZV533qMn
         tfrgscD/G3aAni/KDPzaLyihp3m+2mRPt735MZSn8VfktVW2knTbS9T4TMaiRDc1gAGt
         rjX/ICh0whgVN75RQz6lCcDDAslSRkqBzFEWWM6Jjcx3z+JoUHSJ1pPfInKYtGBq3E7e
         xemAZ1bdItDyD7vIsNWSp+HcLaNAdT5zRxsIILCNrBr9O0cQ/iPhTp9/jcny78yIrcq/
         jNXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770183798; x=1770788598;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QSJi97R9hFG0MQsbDlpL5CHjh0FH6IDEFC8BDQFDq64=;
        b=PKyPvvaFfoC3gvkQHQH0glvskwoOTOwCRolY6jCZ6IVcTi4u0UubU2W4MvL6DXZrp3
         oTGJf7oVP7jSPakj8f8TVZ2ZZmYLzOd9gAUGf462jn/zGFGw1gwi9VQRQVtSkkzC4PKu
         LNLpx3m6R4p/p7++TzYnE0yc5bKj0dc2XS0/o22oFLzMVn2yHSV+dwJiuz8wHMQAEsJS
         gjYHc15cD+DZHjS5IAiIuCMarlDa7Uc35VZAn5LugAWbNg06/kbXkgmLqz94ETs2F5of
         5XbauptvHF8vKe+ZjijLgeVK52ANsIqGYK4+J0AvVOAYdx4tHcY6NkgtjpoCi0wCHgOJ
         Q3gw==
X-Forwarded-Encrypted: i=1; AJvYcCXpWljDamlaanFKFGcflIoXxpM5BM8E139avBW+X+2N/IrQbLJFBBw1lKB/X0glCvG/GNNRJx42KQah@vger.kernel.org
X-Gm-Message-State: AOJu0YzXdS6IZtufTQ+9bYJbX1dxJbrMlKRUMPp9smmaGgAKKFYCfCn6
	M+sCkCr5mGim63mq6bSLy9QLCM+wDn/c2stZaUkVZoxKL1kSlrtkh7A/NVkGbPVEV/xhpihgJR4
	DP0K4UFoNvgCN6iyDv4+tNNmSristS9E=
X-Gm-Gg: AZuq6aJzE8moRE6b6W/+ITD/hDelvCOdjxU8QBB7hbKnPSINwehVq9u5Y1/NeXxyn0G
	VLTuKAT/2qS6FfviGQz/KEBhU2IbufrmrP4hQyvK25XcgeqHxz3JuUh5mYEBICehRIAdlIfjlQB
	jlPZJrvk2UjhL2Nd7LI6412oV50sGqYBwtVntxPujjpFrjmw2QVMTYkDKuy9NK3nDBuOMZqxLQN
	myvWbuMFOJsXRueN06GduS1oLlOKEiRNb55onQAX+7BvPCTRBqphb9QO50MF7wsQgf/FrPtCfaE
	vddKEmsx1smQzT8Q7HZXyaH2vmY+JuunTJIIuk9rWpQBzErTJKSHSQZ3go4N0bXnrksW
X-Received: by 2002:a05:6512:340c:b0:59d:d551:8856 with SMTP id
 2adb3069b0e04-59e38c59155mr593281e87.48.1770183797626; Tue, 03 Feb 2026
 21:43:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1770119693.git.zhoubinbin@loongson.cn> <d7a73d1fe8a3e4e57055a15a6ec03170f0d8ca21.1770119693.git.zhoubinbin@loongson.cn>
In-Reply-To: <d7a73d1fe8a3e4e57055a15a6ec03170f0d8ca21.1770119693.git.zhoubinbin@loongson.cn>
From: Keguang Zhang <keguang.zhang@gmail.com>
Date: Wed, 4 Feb 2026 13:42:40 +0800
X-Gm-Features: AZwV_QhF-LvUnGZh1miRttDH8iCfO0e5TXYSBWWevas_BXwAX93FSFlLbvMfixs
Message-ID: <CAJhJPsVRZe_E6FsNBUa6K=GmPp3FXRrOH=yguvTY=K1cGwa62Q@mail.gmail.com>
Subject: Re: [PATCH 1/3] dmaengine: loongson: New directory for Loongson DMA
 controllers drivers
To: Binbin Zhou <zhoubinbin@loongson.cn>
Cc: Binbin Zhou <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@loongson.cn>, 
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262509-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[gmail.com,loongson.cn,kernel.org,vger.kernel.org,xen0n.name,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[keguangzhang@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 60A5CE2101
X-Rspamd-Action: no action

On Tue, Feb 3, 2026 at 8:30=E2=80=AFPM Binbin Zhou <zhoubinbin@loongson.cn>=
 wrote:
>
> Gather the Loongson DMA controllers under drivers/dma/loongson/
>
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> ---
>  MAINTAINERS                                   |  2 +-
>  drivers/dma/Kconfig                           | 25 ++---------------
>  drivers/dma/Makefile                          |  3 +-
>  drivers/dma/loongson/Kconfig                  | 28 +++++++++++++++++++
>  drivers/dma/loongson/Makefile                 |  3 ++
>  .../dma/{ =3D> loongson}/loongson1-apb-dma.c    |  4 +--
>  .../dma/{ =3D> loongson}/loongson2-apb-dma.c    |  4 +--
>  7 files changed, 39 insertions(+), 30 deletions(-)
>  create mode 100644 drivers/dma/loongson/Kconfig
>  create mode 100644 drivers/dma/loongson/Makefile
>  rename drivers/dma/{ =3D> loongson}/loongson1-apb-dma.c (99%)

The file loongson1-apb-dma.c was moved to drivers/dma/loongson/,
but the MAINTAINERS entry still refers to the old path.

>  rename drivers/dma/{ =3D> loongson}/loongson2-apb-dma.c (99%)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 5b11839cba9d..66807104af63 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -14776,7 +14776,7 @@ M:      Binbin Zhou <zhoubinbin@loongson.cn>
>  L:     dmaengine@vger.kernel.org
>  S:     Maintained
>  F:     Documentation/devicetree/bindings/dma/loongson,ls2x-apbdma.yaml
> -F:     drivers/dma/loongson2-apb-dma.c
> +F:     drivers/dma/loongson/loongson2-apb-dma.c
>
>  LOONGSON LS2X I2C DRIVER
>  M:     Binbin Zhou <zhoubinbin@loongson.cn>
> diff --git a/drivers/dma/Kconfig b/drivers/dma/Kconfig
> index 66cda7cc9f7a..1b84c5b11654 100644
> --- a/drivers/dma/Kconfig
> +++ b/drivers/dma/Kconfig
> @@ -376,29 +376,6 @@ config K3_DMA
>           Support the DMA engine for Hisilicon K3 platform
>           devices.
>
> -config LOONGSON1_APB_DMA
> -       tristate "Loongson1 APB DMA support"
> -       depends on MACH_LOONGSON32 || COMPILE_TEST
> -       select DMA_ENGINE
> -       select DMA_VIRTUAL_CHANNELS
> -       help
> -         This selects support for the APB DMA controller in Loongson1 So=
Cs,
> -         which is required by Loongson1 NAND and audio support.
> -
> -config LOONGSON2_APB_DMA
> -       tristate "Loongson2 APB DMA support"
> -       depends on LOONGARCH || COMPILE_TEST
> -       select DMA_ENGINE
> -       select DMA_VIRTUAL_CHANNELS
> -       help
> -         Support for the Loongson2 APB DMA controller driver. The
> -         DMA controller is having single DMA channel which can be
> -         configured for different peripherals like audio, nand, sdio
> -         etc which is in APB bus.
> -
> -         This DMA controller transfers data from memory to peripheral fi=
fo.
> -         It does not support memory to memory data transfer.
> -
>  config LPC18XX_DMAMUX
>         bool "NXP LPC18xx/43xx DMA MUX for PL080"
>         depends on ARCH_LPC18XX || COMPILE_TEST
> @@ -774,6 +751,8 @@ source "drivers/dma/fsl-dpaa2-qdma/Kconfig"
>
>  source "drivers/dma/lgm/Kconfig"
>
> +source "drivers/dma/loongson/Kconfig"
> +
>  source "drivers/dma/stm32/Kconfig"
>
>  # clients
> diff --git a/drivers/dma/Makefile b/drivers/dma/Makefile
> index a54d7688392b..a1c73415b79f 100644
> --- a/drivers/dma/Makefile
> +++ b/drivers/dma/Makefile
> @@ -49,8 +49,6 @@ obj-$(CONFIG_INTEL_IDMA64) +=3D idma64.o
>  obj-$(CONFIG_INTEL_IOATDMA) +=3D ioat/
>  obj-y +=3D idxd/
>  obj-$(CONFIG_K3_DMA) +=3D k3dma.o
> -obj-$(CONFIG_LOONGSON1_APB_DMA) +=3D loongson1-apb-dma.o
> -obj-$(CONFIG_LOONGSON2_APB_DMA) +=3D loongson2-apb-dma.o
>  obj-$(CONFIG_LPC18XX_DMAMUX) +=3D lpc18xx-dmamux.o
>  obj-$(CONFIG_LPC32XX_DMAMUX) +=3D lpc32xx-dmamux.o
>  obj-$(CONFIG_MILBEAUT_HDMAC) +=3D milbeaut-hdmac.o
> @@ -88,6 +86,7 @@ obj-$(CONFIG_INTEL_LDMA) +=3D lgm/
>
>  obj-y +=3D amd/
>  obj-y +=3D mediatek/
> +obj-y +=3D loongson/
>  obj-y +=3D qcom/
>  obj-y +=3D stm32/
>  obj-y +=3D ti/
> diff --git a/drivers/dma/loongson/Kconfig b/drivers/dma/loongson/Kconfig
> new file mode 100644
> index 000000000000..9dbdaef5a59f
> --- /dev/null
> +++ b/drivers/dma/loongson/Kconfig
> @@ -0,0 +1,28 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +#
> +# Loongson DMA controllers drivers
> +#
> +if MACH_LOONGSON32 || MACH_LOONGSON64 || COMPILE_TEST
> +
> +config LOONGSON1_APB_DMA
> +       tristate "Loongson1 APB DMA support"
> +       select DMA_ENGINE
> +       select DMA_VIRTUAL_CHANNELS
> +       help
> +         This selects support for the APB DMA controller in Loongson1 So=
Cs,
> +         which is required by Loongson1 NAND and audio support.
> +
> +config LOONGSON2_APB_DMA
> +       tristate "Loongson2 APB DMA support"
> +       select DMA_ENGINE
> +       select DMA_VIRTUAL_CHANNELS
> +       help
> +         Support for the Loongson2 APB DMA controller driver. The
> +         DMA controller is having single DMA channel which can be
> +         configured for different peripherals like audio, nand, sdio
> +         etc which is in APB bus.
> +
> +         This DMA controller transfers data from memory to peripheral fi=
fo.
> +         It does not support memory to memory data transfer.
> +
> +endif
> diff --git a/drivers/dma/loongson/Makefile b/drivers/dma/loongson/Makefil=
e
> new file mode 100644
> index 000000000000..6cdd08065e92
> --- /dev/null
> +++ b/drivers/dma/loongson/Makefile
> @@ -0,0 +1,3 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +obj-$(CONFIG_LOONGSON1_APB_DMA) +=3D loongson1-apb-dma.o
> +obj-$(CONFIG_LOONGSON2_APB_DMA) +=3D loongson2-apb-dma.o
> diff --git a/drivers/dma/loongson1-apb-dma.c b/drivers/dma/loongson/loong=
son1-apb-dma.c
> similarity index 99%
> rename from drivers/dma/loongson1-apb-dma.c
> rename to drivers/dma/loongson/loongson1-apb-dma.c
> index 255fe7eca212..e99247cf90c1 100644
> --- a/drivers/dma/loongson1-apb-dma.c
> +++ b/drivers/dma/loongson/loongson1-apb-dma.c
> @@ -16,8 +16,8 @@
>  #include <linux/platform_device.h>
>  #include <linux/slab.h>
>
> -#include "dmaengine.h"
> -#include "virt-dma.h"
> +#include "../dmaengine.h"
> +#include "../virt-dma.h"
>
>  /* Loongson-1 DMA Control Register */
>  #define LS1X_DMA_CTRL          0x0
> diff --git a/drivers/dma/loongson2-apb-dma.c b/drivers/dma/loongson/loong=
son2-apb-dma.c
> similarity index 99%
> rename from drivers/dma/loongson2-apb-dma.c
> rename to drivers/dma/loongson/loongson2-apb-dma.c
> index c528f02b9f84..0cb607595d04 100644
> --- a/drivers/dma/loongson2-apb-dma.c
> +++ b/drivers/dma/loongson/loongson2-apb-dma.c
> @@ -17,8 +17,8 @@
>  #include <linux/platform_device.h>
>  #include <linux/slab.h>
>
> -#include "dmaengine.h"
> -#include "virt-dma.h"
> +#include "../dmaengine.h"
> +#include "../virt-dma.h"
>
>  /* Global Configuration Register */
>  #define LDMA_ORDER_ERG         0x0
> --
> 2.47.3
>


--=20
Best regards,

Keguang Zhang

