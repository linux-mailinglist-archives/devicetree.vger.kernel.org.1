Return-Path: <devicetree+bounces-277894-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SMAFOBckvGkptQIAu9opvQ
	(envelope-from <devicetree+bounces-277894-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 17:28:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B712CECCE
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 17:28:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5C39132AC269
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 16:17:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 172283ECBDC;
	Thu, 19 Mar 2026 16:17:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dk1YoV1b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E33393ECBCE
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 16:17:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773937070; cv=none; b=pZ88qDqjqb9LlSxptpsEvmKgzUM0CLjURHtbWMlMGb6OZ2R3YWEoqEbvV4RMNPoM7ruUCMQxg2Vcva03aZQcG5tJvw4RHHGBFq6/D3dxCsnLWexX8kMQzpsApP7ZzP/t7g1rJamrqWaVmJwTjpL4w84IxymHHgl/KGyvzW21zEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773937070; c=relaxed/simple;
	bh=jFL2P8NHXXTs8mwfUKiRAyG4v1DyLMB7WNZYJAvCoMg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KYXhlZdtCy5VXteeSXItC0L2fBNj1FnhzdCQHvrE9lkx1aRfTgngEBrBx8B0pYCncPIvF7OPn1pOJXcvmm2zYAv81DJSMQAl8OTeLz599FXBow4+vEG2Noc+J3l3a+70XXA1uWiX0ce4/heCe7DlloYEgdi1Ad8fPBQj4JkRLcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dk1YoV1b; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2addb31945aso6203865ad.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 09:17:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773937064; x=1774541864; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UOzJPTVd2K0ObveD8TmPHZd5icUhrVuBV8d7L+Wyo2o=;
        b=dk1YoV1bJ/X7W3tIofkuBgnxwXsvGqZUdmgOgrtnDOq7YbO6CutUBQNnCnjR3zEfl7
         BCfkkqkOOXUlW/dNNA3G19HD/T1CFBQgB0fxz6dHAcLDSImqvwc21eU4CmW/mUwX1vjl
         /sq+MEIHmG47AR6L9mts1YLTwLjCN1n1gV1wk3SF7Q0jM4K/w97I12IWkGmysjEO5u16
         OZJyaTw9p4BUuultRbKR+HEGHTh0UtHUSnwgLINHsfRpwYxfFCQmduwJrfVx6LTxdzeh
         FgIcJBjB+19SpGxbdAIiuDHbkzVIkab8XkGCMWx18OcAEBoOyt+mCaqB9mztl1Kmpwq3
         R6ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773937064; x=1774541864;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UOzJPTVd2K0ObveD8TmPHZd5icUhrVuBV8d7L+Wyo2o=;
        b=NCcv+1IZh1LNXY0T+OPKjPdt2fnelJBznc3om4M7/QEu+HvdUWPI30CPlrBbnK9z5A
         FifK94uNJKFnr75i+zmfBGADH67i/5TXy4n8m8L7nGUeyoBIm6NHJoyRQJyIDKXl/L8D
         UecP6076abDOOvuFsVVlDQOBR5Zg+0pt+jHAVC/LENvgJhzQCrUdypY1M5H70ScMfuBZ
         zMvrs3sGf3Z80OKDrskgYUroTiJ7vkW/vJPkdiQo9ESMtGSzvWjSFJlTAbMMIt3KUeld
         fJbsL0jBWLbH2COyvG+yroY0CNpwvHE2no051dOl5FruZDy1ZVSvkO04/eCItzeGDjq9
         jyPQ==
X-Forwarded-Encrypted: i=1; AJvYcCW4HtGGPvXu/A+cMBK3OGfnDJMYX0In/RyuvlqCA7G0scmcxkVZcXObeWkdMTz6i4UKV6YICq7N82wj@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5OKPn5deqdwq7K7oE1d3Utae8H42u0bD5fL3ISLMF8+e98YOL
	0POwYyyXX3C8KoUvZ6H0CYlNmzfWPAXMKOLZjH4ilxbRbNg6p4hXzqiRrW6OVsQs
X-Gm-Gg: ATEYQzyCtgYapmaP/5qxH4W75GQ9kzPou9UEupnBUV7cup769Idff3pXwiJ8sGNjLyc
	sx7tpvBBRsI40J+rro7ae03v7DupTBRkED8g3yFQ0+Z7FI7w3gSRx4DrZhMryv/L+OSv8WZjXyq
	QIgvVUmtzgjkymHjq/u4M1acV+Ogq5Xn3k8rinH+89+c760qPDPCWU4WYuNSqX+tFW8MbrkTFHI
	+CMaqTxtkNB8SayGhN6ykQ42oxZm5WfYvE82U/53QKsiJo+qJNwJrJGxldhq5yY1RG9QNzRJmnq
	03xOkJEtoPyCyxWbZz35/e07uSkMaJ0JEtMjKbDCpnmdkkM6ZC6oabPOJX5dA/8C+H3L7AqdBWL
	AUzyfQXL9BTnOd3Hw/intqOoiwZjUd7Xg6k0RrRf9IqHYfecumiYsB0TyJ4g/BK3V2Epzks60dy
	ERFwt57C7k/vA5Vf1+MAJQ3TIn1iLYxhwTPw==
X-Received: by 2002:a17:902:e752:b0:2b0:686a:d470 with SMTP id d9443c01a7336-2b06e3941f5mr79049735ad.23.1773937063958;
        Thu, 19 Mar 2026 09:17:43 -0700 (PDT)
Received: from google.com ([2402:7500:a44:85b:69b:67cd:27b7:b4b9])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b06e41990dsm86350305ad.3.2026.03.19.09.17.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 09:17:43 -0700 (PDT)
Date: Fri, 20 Mar 2026 00:17:37 +0800
From: Kuan-Wei Chiu <visitorckw@gmail.com>
To: Tomer Maimon <tmaimon77@gmail.com>
Cc: andrew@codeconstruct.com.au, avifishman70@gmail.com,
	tali.perry1@gmail.com, srini@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, venture@google.com,
	yuenn@google.com, benjaminfair@google.com, jserv@ccns.ncku.edu.tw,
	eleanor15x@gmail.com, linux-arm-kernel@lists.infradead.org,
	openbmc@lists.ozlabs.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] nvmem: npcm-otp: Add Nuvoton NPCM OTP driver
Message-ID: <abwhoY0vlmgQ0J1P@google.com>
References: <20260318193538.246853-1-visitorckw@gmail.com>
 <20260318193538.246853-3-visitorckw@gmail.com>
 <CAP6Zq1gJOrEii97X2XjXexZeEQ5SN4F-wW334BN7SOrGbiVQxg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAP6Zq1gJOrEii97X2XjXexZeEQ5SN4F-wW334BN7SOrGbiVQxg@mail.gmail.com>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277894-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[codeconstruct.com.au,gmail.com,kernel.org,google.com,ccns.ncku.edu.tw,lists.infradead.org,lists.ozlabs.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[visitorckw@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.787];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,config.name:url,config.dev:url,nuvoton.com:email]
X-Rspamd-Queue-Id: 76B712CECCE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Tomer,

On Thu, Mar 19, 2026 at 12:57:04PM +0200, Tomer Maimon wrote:
> Hi Kuan-Wei,
> 
> Thanks for the upstream Nuvoton OTP driver.
> 
> On Wed, 18 Mar 2026 at 21:36, Kuan-Wei Chiu <visitorckw@gmail.com> wrote:
> >
> > Add a new NVMEM driver for the OTP memory controllers found on Nuvoton
> > NPCM SoCs.
> >
> > This OTP is read-only and manages two independent arrays: Key Storage
> > and Fuse Array, which contain cryptographic keys, hardware strapping,
> > and calibration data.
> >
> > Each array provides 1024 bytes of storage.
> >
> > It can be accessed by writing the target address and a read command
> > to the control registers, and then polling a status register until
> > the data is ready. Concurrent accesses are protected by a mutex.
> >
> > Signed-off-by: Kuan-Wei Chiu <visitorckw@gmail.com>
> > ---
> >  MAINTAINERS              |   7 +++
> >  drivers/nvmem/Kconfig    |  10 +++
> >  drivers/nvmem/Makefile   |   2 +
> >  drivers/nvmem/npcm-otp.c | 129 +++++++++++++++++++++++++++++++++++++++
> >  4 files changed, 148 insertions(+)
> >  create mode 100644 drivers/nvmem/npcm-otp.c
> >
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 61bf550fd37c..e391e2bcb5f6 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -18894,6 +18894,13 @@ F:     drivers/nubus/
> >  F:     include/linux/nubus.h
> >  F:     include/uapi/linux/nubus.h
> >
> > +NUVOTON NPCM OTP NVMEM DRIVER
> > +M:     Kuan-Wei Chiu <visitorckw@gmail.com>
> > +L:     linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
> > +S:     Maintained
> > +F:     Documentation/devicetree/bindings/nvmem/nuvoton,npcm750-otp.yaml
> > +F:     drivers/nvmem/npcm-otp.c
> > +
> >  NUVOTON NCT6694 MFD DRIVER
> >  M:     Ming Yu <tmyu0@nuvoton.com>
> >  S:     Supported
> > diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
> > index 74ddbd0f79b0..5d065b7448ff 100644
> > --- a/drivers/nvmem/Kconfig
> > +++ b/drivers/nvmem/Kconfig
> > @@ -483,4 +483,14 @@ config NVMEM_QORIQ_EFUSE
> >           This driver can also be built as a module. If so, the module
> >           will be called nvmem_qoriq_efuse.
> >
> > +config NVMEM_NPCM_OTP
> > +       tristate "Nuvoton NPCM7xx OTP Controller"
> > +       depends on ARCH_NPCM || COMPILE_TEST
> > +       help
> > +         This option enables support for the OTP (One-Time Programmable)
> > +         controller found on Nuvoton NPCM7xx BMCs.
> > +
> > +         This driver can also be built as a module. If so, the module
> > +         will be called npcm-otp.
> > +
> >  endif
> > diff --git a/drivers/nvmem/Makefile b/drivers/nvmem/Makefile
> > index 7252b8ec88d4..63c23b304d64 100644
> > --- a/drivers/nvmem/Makefile
> > +++ b/drivers/nvmem/Makefile
> > @@ -95,3 +95,5 @@ obj-$(CONFIG_NVMEM_ZYNQMP)            += nvmem_zynqmp_nvmem.o
> >  nvmem_zynqmp_nvmem-y                   := zynqmp_nvmem.o
> >  obj-$(CONFIG_NVMEM_QORIQ_EFUSE)                += nvmem-qoriq-efuse.o
> >  nvmem-qoriq-efuse-y                    := qoriq-efuse.o
> > +obj-$(CONFIG_NVMEM_NPCM_OTP)           += nvmem-npcm-otp.o
> > +nvmem-npcm-otp-y                       := npcm-otp.o
> > diff --git a/drivers/nvmem/npcm-otp.c b/drivers/nvmem/npcm-otp.c
> > new file mode 100644
> > index 000000000000..abe4bab66c06
> > --- /dev/null
> > +++ b/drivers/nvmem/npcm-otp.c
> > @@ -0,0 +1,129 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * Nuvoton NPCM7xx OTP (One-Time Programmable) NVMEM driver
> > + *
> > + * Copyright (C) 2026 Kuan-Wei Chiu <visitorckw@gmail.com>
> > + */
> > +
> > +#include <linux/delay.h>
> > +#include <linux/io.h>
> > +#include <linux/iopoll.h>
> > +#include <linux/mod_devicetable.h>
> > +#include <linux/module.h>
> > +#include <linux/mutex.h>
> > +#include <linux/nvmem-provider.h>
> > +#include <linux/of.h>
> > +#include <linux/platform_device.h>
> > +
> > +/* Register offsets and bitmasks */
> > +#define NPCM_OTP_FST           0x00
> > +#define NPCM_OTP_FADDR         0x04
> > +#define NPCM_OTP_FDATA         0x08
> > +#define NPCM_OTP_FCTL          0x14
> > +
> > +#define FST_RDY                        BIT(0)
> > +#define FST_RDST               BIT(1)
> > +#define FCTL_READ_CMD          0x02
> > +
> > +/* OTP total capacity is 8192 bits (1024 Bytes) */
> > +#define NPCM_OTP_SIZE          1024
> > +
> > +struct npcm_otp {
> > +       void __iomem *base;
> > +       struct mutex lock; /* protects concurrent OTP accesses */
> > +};
> > +
> > +static int npcm_otp_read_byte(struct npcm_otp *otp, unsigned int offset, u8 *val)
> > +{
> > +       u32 fst;
> > +       int ret;
> > +
> > +       writel(offset, otp->base + NPCM_OTP_FADDR);
> > +       writel(FCTL_READ_CMD, otp->base + NPCM_OTP_FCTL);
> > +
> > +       ret = readl_poll_timeout(otp->base + NPCM_OTP_FST, fst,
> > +                                (fst & FST_RDY), 10, 10000);
> > +       if (ret)
> > +               return ret;
> > +
> > +       *val = (u8)(readl(otp->base + NPCM_OTP_FDATA) & 0xFF);
> > +
> > +       /* Clear the status bit to prepare for the next read */
> > +       writel(FST_RDST, otp->base + NPCM_OTP_FST);
> > +
> > +       return 0;
> > +}
> > +
> > +static int npcm_otp_read(void *context, unsigned int offset,
> > +                        void *val, size_t bytes)
> > +{
> > +       struct npcm_otp *otp = context;
> > +       u8 *buf = val;
> > +       int ret = 0;
> > +       size_t i;
> > +
> > +       mutex_lock(&otp->lock);
> > +
> > +       for (i = 0; i < bytes; i++) {
> > +               ret = npcm_otp_read_byte(otp, offset + i, &buf[i]);
> > +               if (ret)
> > +                       break;
> > +       }
> > +
> > +       mutex_unlock(&otp->lock);
> > +
> > +       return ret;
> > +}
> > +
> > +static int npcm_otp_probe(struct platform_device *pdev)
> > +{
> > +       struct device *dev = &pdev->dev;
> > +       struct npcm_otp *otp;
> > +       struct nvmem_config config = { 0 };
> > +       struct nvmem_device *nvmem;
> > +
> > +       otp = devm_kzalloc(dev, sizeof(*otp), GFP_KERNEL);
> > +       if (!otp)
> > +               return -ENOMEM;
> > +
> > +       otp->base = devm_platform_ioremap_resource(pdev, 0);
> > +       if (IS_ERR(otp->base))
> > +               return PTR_ERR(otp->base);
> Since the driver already opens and manages the OTP registers, it
> should also be responsible for handling the OTP index.
> The NPCM AES driver can make use of keys stored in OTP.
> We would be happy to help add support for OTP‑stored keys to the
> upstream driver.
> If you’d like, we can set up a meeting to discuss how this can be implemented.

I would be very happy to collaborate. :)

Regarding scheduling a meeting, I will be traveling abroad from 03/22
to 04/01 with very limited and unstable network access, so I would
prefer to avoid that window. We can coordinate the exact date and time
off-list.

Regards,
Kuan-Wei

> > +
> > +       mutex_init(&otp->lock);
> > +
> > +       config.dev = dev;
> > +       config.name = dev_name(dev);
> > +       config.read_only = true;
> > +       config.word_size = 1;
> > +       config.stride = 1;
> > +       config.reg_read = npcm_otp_read;
> > +       config.priv = otp;
> > +       config.size = NPCM_OTP_SIZE;
> Suggest setting the size according to the BMC SoC,
> The NPCM7xx has 2 8Kbyte OTP, and the NPCM8xx 64KB size.OPT
> > +
> > +       nvmem = devm_nvmem_register(dev, &config);
> > +       if (IS_ERR(nvmem))
> > +               return dev_err_probe(dev, PTR_ERR(nvmem), "Failed to register nvmem\n");
> > +
> > +       return 0;
> > +}
> > +
> > +static const struct of_device_id npcm_otp_dt_ids[] = {
> > +       { .compatible = "nuvoton,npcm750-key-storage" },
> > +       { .compatible = "nuvoton,npcm750-fuse-array" },
> > +       { }
> > +};
> > +MODULE_DEVICE_TABLE(of, npcm_otp_dt_ids);
> > +
> > +static struct platform_driver npcm_otp_driver = {
> > +       .probe          = npcm_otp_probe,
> > +       .driver         = {
> > +               .name   = "npcm-otp",
> > +               .of_match_table = npcm_otp_dt_ids,
> > +       },
> > +};
> > +module_platform_driver(npcm_otp_driver);
> > +
> > +MODULE_AUTHOR("Kuan-Wei Chiu <visitorckw@gmail.com>");
> > +MODULE_DESCRIPTION("Nuvoton NPCM7xx OTP NVMEM driver");
> > +MODULE_LICENSE("GPL");
> > --
> > 2.53.0.851.ga537e3e6e9-goog
> >
> 
> Thanks,
> 
> Tomer

