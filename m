Return-Path: <devicetree+bounces-277712-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IPGZHZTWu2k4owIAu9opvQ
	(envelope-from <devicetree+bounces-277712-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:57:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 77FC92C9D1C
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:57:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 703F13003720
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 10:57:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DE143A9616;
	Thu, 19 Mar 2026 10:57:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Mq04JdJV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f52.google.com (mail-yx1-f52.google.com [74.125.224.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1E553612FC
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 10:57:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.224.52
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773917839; cv=pass; b=C9IzD/vX1rNIiSaTkarnEUP7k022Z5/U+W2Z+2KH1iRpOmB16wrtZk0Gc8/wivLCCF8UhZ/wzgPNwp7ASuZCBe7sZFWwarRSm3WyuUHr8LuLfqqawEinVF1rNgvyMcnCKRxCwOw5xSUv9uijWOAqBbLORivMw7dC5IZc3iqKBVM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773917839; c=relaxed/simple;
	bh=YFPAVEbhAx3XtP4OCiYxoMpY2py2GDgQJRj6J8GhHF0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kaPkXYzewZLasyezKfSLvA2J2NlPSQJGVPKA9IJBH+LXDu06JX0eVbHJ0i9zRezQ/DRPtRSm1jwNzPz3Kp5D36ZADpXSlvnTtSeCpGDuglLFW8OCTv2IT2WvUxGUgw5VbnB0sWcnpq9IhFAQio2NJ1LznvObQJsSL8O6+Qe5VI8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Mq04JdJV; arc=pass smtp.client-ip=74.125.224.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f52.google.com with SMTP id 956f58d0204a3-64e9f79cae8so425075d50.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 03:57:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773917837; cv=none;
        d=google.com; s=arc-20240605;
        b=JKZeRDqmIZjFhrslRd3JCCJ3mKBng0fmP9jXLzfkz/03Ga+8HFXUAjacp8B1xxIa34
         oalPvN3Vxv7yfxpUSpdz1lihzVonRz+XyfePlP0w6wyNe9G6ZL6+X2WIkXU9LTgMmfbY
         kByK7PpDZuRVcs/Ug4CaxxaPnr4hEIUZ6bvsleMF0I337Gyx2yG/R1XVlCTgLKxmxtzK
         +KI0Btha0wLIkRqBuipGb9Bw2jWq3izCiyehWlFXBYcN5cY0GlOxuEiURljXhfZ5IGf6
         PlQ7P4/mvK5iQgj4evv8/92Yh8/cbIa9o8sPcCNOd7YgTSYSaXQZ8668vaNTYnquRLuX
         8FVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=2Y2y/RwBdkzoJubItdybq6OxUp3cxRf7Wsr1KNbZFdw=;
        fh=pCFh0gmfMSuXHQhgCu3EL3kacODpIcsz44DMZaZRPJ4=;
        b=FQu/DepXHAEHeJ4Nxd+v1KpQ+2RsTA37B8auJtMhMSA6Ztkk56O+RzCjEku2cpH6wI
         ClA/lpwY9wNR3iwkxGZzuizsC7l4XCdR+Mv5fOfQ4vk25NFj8qZs6I1FKsgcffx4eqPe
         bq/5a7g1E2AcKzZzFBVVMFN5A7Jk2YKp25fTn4qChEjYDpeqNjgZiyQI9rtlgVEa4O7H
         VnZiOY2sjgDO6urizvJQWoz8pU/DiHGj9lIxvM5ZDctyEVpW8IlgpNcdtoD6mrY+H06e
         cbb1XKTw5GmeXlBsydMoDDGeLy+LnvZfmT596jcYnNe68kO3tTerXD1VY3XkrUGoERfc
         dBzw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773917837; x=1774522637; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2Y2y/RwBdkzoJubItdybq6OxUp3cxRf7Wsr1KNbZFdw=;
        b=Mq04JdJVGoAcMhChfbAmu1GZMawUFnWKUsqJOkxxGFvJ9JveeN8x/cYWU7JjEdUD2L
         LwgVqTWWET4YQOW8wLvuu6hvCOmNNTwf/Qb9hfoC5270ThIlkdOp7ayO6PaLCVoLGQkY
         Z/PwttZhXU46XGZ241WN5bgrqd8SCkYXRoXKHm7Ro3TYMmjPED+5mWnN5ews9KR9WeR9
         x2VuN8ytkWnk7YTZDtIY30i3A5chWARex+rQbv+Hu6YRiZ6CAuMN22eKvOtsf7J4BCGS
         van0D4rA3abw1MPqc1gPy94QpLW8iDm8lk4GmAEQW1EC4o2q69RgGgnYwrsSWBjxunhR
         CEaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773917837; x=1774522637;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2Y2y/RwBdkzoJubItdybq6OxUp3cxRf7Wsr1KNbZFdw=;
        b=siSPJA3jWPKpWVqnHOFS7QQ07VirGQtpkIch7kQvBTG8vaj33+2K4Dv0097ihnOhnw
         WnpZ6zDlaBS8L4U0yGeZxylhlczlYSRAjjwyXR9knWMLm84qIBA1ptRH/05g50tdmJFH
         oMAMwqoSTiPwbbTmCLdMbNF2nZgcJq96WeASJjQoWhvl46bFYAWSopxnzxgMaUuW9EiJ
         KFvv5S69Om/V6uCjkfCEOS3kmdWZR0QbHFmn+6DPQpLqDTahNYH17wh8I41LEDvcEseU
         YyKu7r8rb0C+GYEC2lSFWqd/Iax+IXmgT0zuTJzYXFmCGAw9rV7cqiM07zSxLy9oBgEb
         nW5w==
X-Forwarded-Encrypted: i=1; AJvYcCVUIvIcbEdtR+NYy1zbqyLSUMv6hIFSNjSwFJa9kYMq+Z4u2pXoPHAypmK52LjY1YzcfQOIHh6QEH0R@vger.kernel.org
X-Gm-Message-State: AOJu0YyigTFAHGVruYkONmimuzls3r9+BR0TSvBY3pHxkKG9e4HTavhv
	qBN41LhVgSGgg6CqzDfTuv7Ca5w4JctW+7PRvnNyEVtFElLeMuNdrjMx1bgEemZbixqj1gatUsM
	rJa355+UjJXbk5BriZOEkmnAnLeFoytw=
X-Gm-Gg: ATEYQzykr/FP1yJZ0g76bdlZkuef73+M9vKSUGaA7Dyc87roUT4PWJZF6arpFd44PAr
	DaRvb/JutxNm6THTp1VCZv16z+apFZrWKKCFexusy17EucgtdYg2XDGAQOSjgTkI5ztNam9BEju
	F3exuOG6nxhJf0l+sagKna45WDo1Q0/MM804XZ/uMlVCsYyCyc9sj7FMQWDdJTJjnl6AA71voy2
	SGjtZdrkIiz0PzDKG/NUFwkAuqEEACf7VtXySXg5OM1Iy9b3hAPJREXQ/7Sp99CfbWChM+coU52
	ogutZEcX
X-Received: by 2002:a53:acd3:0:10b0:64c:b7c9:dffd with SMTP id
 956f58d0204a3-64e915e8daamr5846442d50.58.1773917836798; Thu, 19 Mar 2026
 03:57:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260318193538.246853-1-visitorckw@gmail.com> <20260318193538.246853-3-visitorckw@gmail.com>
In-Reply-To: <20260318193538.246853-3-visitorckw@gmail.com>
From: Tomer Maimon <tmaimon77@gmail.com>
Date: Thu, 19 Mar 2026 12:57:04 +0200
X-Gm-Features: AaiRm53rvDmQUT5KJXSzT_dt1jC1YV7jFfq4QfNKoPbw45Vjy844uk6y9AHfZJg
Message-ID: <CAP6Zq1gJOrEii97X2XjXexZeEQ5SN4F-wW334BN7SOrGbiVQxg@mail.gmail.com>
Subject: Re: [PATCH 2/3] nvmem: npcm-otp: Add Nuvoton NPCM OTP driver
To: Kuan-Wei Chiu <visitorckw@gmail.com>
Cc: andrew@codeconstruct.com.au, avifishman70@gmail.com, tali.perry1@gmail.com, 
	srini@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	venture@google.com, yuenn@google.com, benjaminfair@google.com, 
	jserv@ccns.ncku.edu.tw, eleanor15x@gmail.com, 
	linux-arm-kernel@lists.infradead.org, openbmc@lists.ozlabs.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277712-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.415];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tmaimon77@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[codeconstruct.com.au,gmail.com,kernel.org,google.com,ccns.ncku.edu.tw,lists.infradead.org,lists.ozlabs.org,vger.kernel.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,config.name:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,config.dev:url]
X-Rspamd-Queue-Id: 77FC92C9D1C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Kuan-Wei,

Thanks for the upstream Nuvoton OTP driver.

On Wed, 18 Mar 2026 at 21:36, Kuan-Wei Chiu <visitorckw@gmail.com> wrote:
>
> Add a new NVMEM driver for the OTP memory controllers found on Nuvoton
> NPCM SoCs.
>
> This OTP is read-only and manages two independent arrays: Key Storage
> and Fuse Array, which contain cryptographic keys, hardware strapping,
> and calibration data.
>
> Each array provides 1024 bytes of storage.
>
> It can be accessed by writing the target address and a read command
> to the control registers, and then polling a status register until
> the data is ready. Concurrent accesses are protected by a mutex.
>
> Signed-off-by: Kuan-Wei Chiu <visitorckw@gmail.com>
> ---
>  MAINTAINERS              |   7 +++
>  drivers/nvmem/Kconfig    |  10 +++
>  drivers/nvmem/Makefile   |   2 +
>  drivers/nvmem/npcm-otp.c | 129 +++++++++++++++++++++++++++++++++++++++
>  4 files changed, 148 insertions(+)
>  create mode 100644 drivers/nvmem/npcm-otp.c
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 61bf550fd37c..e391e2bcb5f6 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -18894,6 +18894,13 @@ F:     drivers/nubus/
>  F:     include/linux/nubus.h
>  F:     include/uapi/linux/nubus.h
>
> +NUVOTON NPCM OTP NVMEM DRIVER
> +M:     Kuan-Wei Chiu <visitorckw@gmail.com>
> +L:     linux-arm-kernel@lists.infradead.org (moderated for non-subscribe=
rs)
> +S:     Maintained
> +F:     Documentation/devicetree/bindings/nvmem/nuvoton,npcm750-otp.yaml
> +F:     drivers/nvmem/npcm-otp.c
> +
>  NUVOTON NCT6694 MFD DRIVER
>  M:     Ming Yu <tmyu0@nuvoton.com>
>  S:     Supported
> diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
> index 74ddbd0f79b0..5d065b7448ff 100644
> --- a/drivers/nvmem/Kconfig
> +++ b/drivers/nvmem/Kconfig
> @@ -483,4 +483,14 @@ config NVMEM_QORIQ_EFUSE
>           This driver can also be built as a module. If so, the module
>           will be called nvmem_qoriq_efuse.
>
> +config NVMEM_NPCM_OTP
> +       tristate "Nuvoton NPCM7xx OTP Controller"
> +       depends on ARCH_NPCM || COMPILE_TEST
> +       help
> +         This option enables support for the OTP (One-Time Programmable)
> +         controller found on Nuvoton NPCM7xx BMCs.
> +
> +         This driver can also be built as a module. If so, the module
> +         will be called npcm-otp.
> +
>  endif
> diff --git a/drivers/nvmem/Makefile b/drivers/nvmem/Makefile
> index 7252b8ec88d4..63c23b304d64 100644
> --- a/drivers/nvmem/Makefile
> +++ b/drivers/nvmem/Makefile
> @@ -95,3 +95,5 @@ obj-$(CONFIG_NVMEM_ZYNQMP)            +=3D nvmem_zynqmp=
_nvmem.o
>  nvmem_zynqmp_nvmem-y                   :=3D zynqmp_nvmem.o
>  obj-$(CONFIG_NVMEM_QORIQ_EFUSE)                +=3D nvmem-qoriq-efuse.o
>  nvmem-qoriq-efuse-y                    :=3D qoriq-efuse.o
> +obj-$(CONFIG_NVMEM_NPCM_OTP)           +=3D nvmem-npcm-otp.o
> +nvmem-npcm-otp-y                       :=3D npcm-otp.o
> diff --git a/drivers/nvmem/npcm-otp.c b/drivers/nvmem/npcm-otp.c
> new file mode 100644
> index 000000000000..abe4bab66c06
> --- /dev/null
> +++ b/drivers/nvmem/npcm-otp.c
> @@ -0,0 +1,129 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Nuvoton NPCM7xx OTP (One-Time Programmable) NVMEM driver
> + *
> + * Copyright (C) 2026 Kuan-Wei Chiu <visitorckw@gmail.com>
> + */
> +
> +#include <linux/delay.h>
> +#include <linux/io.h>
> +#include <linux/iopoll.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/module.h>
> +#include <linux/mutex.h>
> +#include <linux/nvmem-provider.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +
> +/* Register offsets and bitmasks */
> +#define NPCM_OTP_FST           0x00
> +#define NPCM_OTP_FADDR         0x04
> +#define NPCM_OTP_FDATA         0x08
> +#define NPCM_OTP_FCTL          0x14
> +
> +#define FST_RDY                        BIT(0)
> +#define FST_RDST               BIT(1)
> +#define FCTL_READ_CMD          0x02
> +
> +/* OTP total capacity is 8192 bits (1024 Bytes) */
> +#define NPCM_OTP_SIZE          1024
> +
> +struct npcm_otp {
> +       void __iomem *base;
> +       struct mutex lock; /* protects concurrent OTP accesses */
> +};
> +
> +static int npcm_otp_read_byte(struct npcm_otp *otp, unsigned int offset,=
 u8 *val)
> +{
> +       u32 fst;
> +       int ret;
> +
> +       writel(offset, otp->base + NPCM_OTP_FADDR);
> +       writel(FCTL_READ_CMD, otp->base + NPCM_OTP_FCTL);
> +
> +       ret =3D readl_poll_timeout(otp->base + NPCM_OTP_FST, fst,
> +                                (fst & FST_RDY), 10, 10000);
> +       if (ret)
> +               return ret;
> +
> +       *val =3D (u8)(readl(otp->base + NPCM_OTP_FDATA) & 0xFF);
> +
> +       /* Clear the status bit to prepare for the next read */
> +       writel(FST_RDST, otp->base + NPCM_OTP_FST);
> +
> +       return 0;
> +}
> +
> +static int npcm_otp_read(void *context, unsigned int offset,
> +                        void *val, size_t bytes)
> +{
> +       struct npcm_otp *otp =3D context;
> +       u8 *buf =3D val;
> +       int ret =3D 0;
> +       size_t i;
> +
> +       mutex_lock(&otp->lock);
> +
> +       for (i =3D 0; i < bytes; i++) {
> +               ret =3D npcm_otp_read_byte(otp, offset + i, &buf[i]);
> +               if (ret)
> +                       break;
> +       }
> +
> +       mutex_unlock(&otp->lock);
> +
> +       return ret;
> +}
> +
> +static int npcm_otp_probe(struct platform_device *pdev)
> +{
> +       struct device *dev =3D &pdev->dev;
> +       struct npcm_otp *otp;
> +       struct nvmem_config config =3D { 0 };
> +       struct nvmem_device *nvmem;
> +
> +       otp =3D devm_kzalloc(dev, sizeof(*otp), GFP_KERNEL);
> +       if (!otp)
> +               return -ENOMEM;
> +
> +       otp->base =3D devm_platform_ioremap_resource(pdev, 0);
> +       if (IS_ERR(otp->base))
> +               return PTR_ERR(otp->base);
Since the driver already opens and manages the OTP registers, it
should also be responsible for handling the OTP index.
The NPCM AES driver can make use of keys stored in OTP.
We would be happy to help add support for OTP=E2=80=91stored keys to the
upstream driver.
If you=E2=80=99d like, we can set up a meeting to discuss how this can be i=
mplemented.
> +
> +       mutex_init(&otp->lock);
> +
> +       config.dev =3D dev;
> +       config.name =3D dev_name(dev);
> +       config.read_only =3D true;
> +       config.word_size =3D 1;
> +       config.stride =3D 1;
> +       config.reg_read =3D npcm_otp_read;
> +       config.priv =3D otp;
> +       config.size =3D NPCM_OTP_SIZE;
Suggest setting the size according to the BMC SoC,
The NPCM7xx has 2 8Kbyte OTP, and the NPCM8xx 64KB size.OPT
> +
> +       nvmem =3D devm_nvmem_register(dev, &config);
> +       if (IS_ERR(nvmem))
> +               return dev_err_probe(dev, PTR_ERR(nvmem), "Failed to regi=
ster nvmem\n");
> +
> +       return 0;
> +}
> +
> +static const struct of_device_id npcm_otp_dt_ids[] =3D {
> +       { .compatible =3D "nuvoton,npcm750-key-storage" },
> +       { .compatible =3D "nuvoton,npcm750-fuse-array" },
> +       { }
> +};
> +MODULE_DEVICE_TABLE(of, npcm_otp_dt_ids);
> +
> +static struct platform_driver npcm_otp_driver =3D {
> +       .probe          =3D npcm_otp_probe,
> +       .driver         =3D {
> +               .name   =3D "npcm-otp",
> +               .of_match_table =3D npcm_otp_dt_ids,
> +       },
> +};
> +module_platform_driver(npcm_otp_driver);
> +
> +MODULE_AUTHOR("Kuan-Wei Chiu <visitorckw@gmail.com>");
> +MODULE_DESCRIPTION("Nuvoton NPCM7xx OTP NVMEM driver");
> +MODULE_LICENSE("GPL");
> --
> 2.53.0.851.ga537e3e6e9-goog
>

Thanks,

Tomer

