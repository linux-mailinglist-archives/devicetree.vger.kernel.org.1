Return-Path: <devicetree+bounces-80311-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1617D9185A9
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 17:25:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 37A3F1C20C9C
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 15:25:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8FA318A954;
	Wed, 26 Jun 2024 15:25:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="JtRiJvfF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4A7B18A932
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 15:25:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719415527; cv=none; b=c3sO9Zf9jl0n8z2PINAJ/fiCrbte3Oh2zQ26JkNbAFiPW2s95+YxMuzKtJB3iBuDWovd4Sj4dKC+Vq4o+O/tzPNl/uDgkEvxvFlvVKpySVXRsqVqBvCFpIvsoa7FLZ5Ihm3j1wRQPQMSkaBwdR/UiD/4jwPGbl6BjuqSJEl+7Fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719415527; c=relaxed/simple;
	bh=umlihgSUXnzSSZGg4spXpqKzRRJXrqMC0mS+1LiMxLQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=c1QqrRORJqVvHnoAx6Ts+KskPqo2rgPCuHAaBseIkSRdu5HDQY6KUs0sn3wxDup+X3MLts+XIGGEuSx/+D8TKCyK6mbgatKZ3uTmWnLPHquexvW8etWyKn35kM2GL1bH5oPLMZT+fgP8NJiOcWrYgHLVK19I3U/0PBAAr5kBLcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=JtRiJvfF; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2ec5779b423so47215091fa.0
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 08:25:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1719415523; x=1720020323; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jyKD6+vikV1/wAJbOLNPIJj/Y9Bre6A/4gFocVUvwIw=;
        b=JtRiJvfFx6I5hLNTZyQhQASMC4fn/netvnG6vmrFPB8IebQazNOzzLp88TTXi1UrDn
         LdxHb35SIycWhw+L3CTcSsCS4vUK4dT7QhbU+YLSLmR8/0OUm/UDK61tPowPKKA8bqOk
         X1lxVhrimtZfHePqJ74JX8Vayk4YUfX6Bt4qEvkG5k9Q3ZAhXxvKxIw2wX+E/QDmgUsk
         AgFEUWcmOO/egDCgMoWdwfwU0lP5buO5jw4cM1mjSzgGh5xPvjNQ0xZIHqsF/cBiqHMy
         70+9klF4oHx4o4POTjlInvnlFrN8K/BMZnmZKc56L1r4wnJxrO1NCj1d8zoEUPu8uwNr
         5TAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719415523; x=1720020323;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jyKD6+vikV1/wAJbOLNPIJj/Y9Bre6A/4gFocVUvwIw=;
        b=PE94SP4vDL8v/D6vyrs4dbJF5lnQcXwhOs6KUGzmLXfe7fDwopSaVcIyz2yyoOfCcZ
         mtxs+zE2qVlVoOPwhUKO0vl5P5kXqcLZk7RtAseddmtGEDS3j8l5Ld4uVmSChkpA1uRz
         HE6GljSErdSakxVTNPQZTISKsF1nBLwXU/7fPDfpCc+fL2LRb/PrHXC/8w+0F+wkdyuC
         AlcFQLLu5HuOiZdX99cvrbMSo+RvAFOveRMxR2ttP1AVAd7acZx7w5d8KFaiX56wDbBQ
         Vm9ev+0sePAR14LPA6jeX9tRFkVaEH/xJaSfhaRuAp5YjAcSZWlrCaWczHv2ytM+JP8w
         pQPA==
X-Forwarded-Encrypted: i=1; AJvYcCWRzu0aQ6/G6//SA2HQx5XizB20ZjzluXO+pznrvvdUy/ZX25bWAQQqZLUV5GzOiy3Q07OYcHXN7SCENIo3uZhghfzRB5b0/FZEpw==
X-Gm-Message-State: AOJu0Yw8XiHRB7msMsr01tEGDTmvYNLPlujrL8ItcgeMXxxjT4Ag5BWH
	T7CFUhn4VBLypJo7wbqJTV0Tn54cOC59H84ZYv1B/bRvjhtuGdsZuIFJhWs1xYSC8oQEg/8gnJJ
	aFyvUb1fgbndq70wfZe3cxC1LVkBf11Ct+mk7Jg==
X-Google-Smtp-Source: AGHT+IFnlu9DjxfEr+XEfch15VlVNHLC8owpJhjJQqqLeoUoHbbc4Q5ui/P5yT84lY0TzxCt3rcp5QpGIHsOfL5zI2A=
X-Received: by 2002:a2e:9d8f:0:b0:2ec:3dd4:75f9 with SMTP id
 38308e7fff4ca-2ec5936fa45mr71482071fa.35.1719415522920; Wed, 26 Jun 2024
 08:25:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240626-qps615-v1-0-2ade7bd91e02@quicinc.com> <20240626-qps615-v1-7-2ade7bd91e02@quicinc.com>
In-Reply-To: <20240626-qps615-v1-7-2ade7bd91e02@quicinc.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 26 Jun 2024 17:25:12 +0200
Message-ID: <CAMRc=MdFj+jmhae1=SzeSXJzYJ+13PFtyn14=EotCcY_0EEu_w@mail.gmail.com>
Subject: Re: [PATCH RFC 7/7] pci: pwrctl: Add power control driver for qps615
To: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Jingoo Han <jingoohan1@gmail.com>, quic_vbadigan@quicinc.com, quic_skananth@quicinc.com, 
	quic_nitegupt@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 26, 2024 at 2:38=E2=80=AFPM Krishna chaitanya chundru
<quic_krichai@quicinc.com> wrote:
>
> QPS615 switch needs to configured after powering on and before
> PCIe link was up.
>
> As the PCIe controller driver already enables the PCIe link training
> at the host side, stop the link training.
> Otherwise the moment we turn on the switch it will participate in
> the link training and link may come before switch is configured through
> i2c.
>
> The switch can be configured different ways like changing de-emphasis
> settings of the switch, disabling unused ports etc and these settings
> can vary from board to board, for that reason the sequence is taken
> from the firmware file which contains the address of the slave, to addres=
s
> and data to be written to the switch. The driver reads the firmware file
> and parses them to apply those configurations to the switch.
>
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> ---
>  drivers/pci/pwrctl/Kconfig             |   7 +
>  drivers/pci/pwrctl/Makefile            |   1 +
>  drivers/pci/pwrctl/pci-pwrctl-qps615.c | 278 +++++++++++++++++++++++++++=
++++++
>  3 files changed, 286 insertions(+)
>
> diff --git a/drivers/pci/pwrctl/Kconfig b/drivers/pci/pwrctl/Kconfig
> index f1b824955d4b..a419b250006d 100644
> --- a/drivers/pci/pwrctl/Kconfig
> +++ b/drivers/pci/pwrctl/Kconfig
> @@ -14,4 +14,11 @@ config PCI_PWRCTL_PWRSEQ
>           Enable support for the PCI power control driver for device
>           drivers using the Power Sequencing subsystem.
>
> +config PCI_PWRCTL_QPS615
> +       tristate "PCI Power Control driver for QPS615"
> +       select PCI_PWRCTL
> +       help
> +         Enable support for the PCI power control driver for QPS615 and
> +         configures it.
> +
>  endmenu
> diff --git a/drivers/pci/pwrctl/Makefile b/drivers/pci/pwrctl/Makefile
> index d308aae4800c..ac563a70c023 100644
> --- a/drivers/pci/pwrctl/Makefile
> +++ b/drivers/pci/pwrctl/Makefile
> @@ -4,3 +4,4 @@ obj-$(CONFIG_PCI_PWRCTL)                +=3D pci-pwrctl-c=
ore.o
>  pci-pwrctl-core-y                      :=3D core.o
>
>  obj-$(CONFIG_PCI_PWRCTL_PWRSEQ)                +=3D pci-pwrctl-pwrseq.o
> +obj-$(CONFIG_PCI_PWRCTL_QPS615)                +=3D pci-pwrctl-qps615.o
> diff --git a/drivers/pci/pwrctl/pci-pwrctl-qps615.c b/drivers/pci/pwrctl/=
pci-pwrctl-qps615.c
> new file mode 100644
> index 000000000000..1f2caf5d7da2
> --- /dev/null
> +++ b/drivers/pci/pwrctl/pci-pwrctl-qps615.c
> @@ -0,0 +1,278 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) 2023 Qualcomm Innovation Center, Inc. All rights reserv=
ed.

2024?

> + */
> +
> +#include <linux/device.h>
> +#include <linux/firmware.h>
> +#include <linux/i2c.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/pci-pwrctl.h>
> +#include <linux/platform_device.h>
> +#include <linux/regulator/consumer.h>
> +#include <linux/string.h>
> +#include <linux/types.h>
> +
> +#include "../pci.h"
> +
> +struct qcom_qps615_pwrctl_i2c_setting {
> +       u32 slv_addr;
> +       u32 reg_addr;
> +       u32 val;
> +};
> +
> +struct qcom_qps615_pwrctl_ctx {
> +       struct i2c_adapter *adapter;
> +       struct pci_pwrctl pwrctl;
> +       struct device_link *link;
> +       struct regulator *vdd;
> +};
> +
> +/* write 32-bit value to 24 bit register */
> +static int qps615_switch_i2c_write(struct qcom_qps615_pwrctl_ctx *ctx, u=
32 slv_addr, u32 reg_addr,

Break the line after "*ctx" unless you have a good reason for long lines?

> +                                  u32 reg_val)
> +{
> +       struct i2c_msg msg;
> +       u8 msg_buf[7];
> +       int ret;
> +
> +       msg.addr =3D slv_addr;
> +       msg.len =3D 7;
> +       msg.flags =3D 0;
> +
> +       /* Big Endian for reg addr */
> +       msg_buf[0] =3D (u8)(reg_addr >> 16);
> +       msg_buf[1] =3D (u8)(reg_addr >> 8);
> +       msg_buf[2] =3D (u8)reg_addr;
> +
> +       /* Little Endian for reg val */
> +       msg_buf[3] =3D (u8)(reg_val);
> +       msg_buf[4] =3D (u8)(reg_val >> 8);
> +       msg_buf[5] =3D (u8)(reg_val >> 16);
> +       msg_buf[6] =3D (u8)(reg_val >> 24);
> +
> +       msg.buf =3D msg_buf;
> +       ret =3D i2c_transfer(ctx->adapter, &msg, 1);
> +       return ret =3D=3D 1 ? 0 : ret;
> +}
> +
> +/* read 32 bit value from 24 bit reg addr */
> +static int qps615_switch_i2c_read(struct qcom_qps615_pwrctl_ctx *ctx, u3=
2 slv_addr, u32 reg_addr,
> +                                 u32 *reg_val)
> +{
> +       u8 wr_data[3], rd_data[4] =3D {0};
> +       struct i2c_msg msg[2];
> +       int ret;
> +
> +       msg[0].addr =3D slv_addr;
> +       msg[0].len =3D 3;
> +       msg[0].flags =3D 0;
> +
> +       /* Big Endian for reg addr */
> +       wr_data[0] =3D (u8)(reg_addr >> 16);
> +       wr_data[1] =3D (u8)(reg_addr >> 8);
> +       wr_data[2] =3D (u8)reg_addr;
> +
> +       msg[0].buf =3D wr_data;
> +
> +       msg[1].addr =3D slv_addr;
> +       msg[1].len =3D 4;
> +       msg[1].flags =3D I2C_M_RD;
> +
> +       msg[1].buf =3D rd_data;
> +
> +       ret =3D i2c_transfer(ctx->adapter, &msg[0], 2);
> +       if (ret !=3D 2)
> +               return ret;
> +
> +       *reg_val =3D (rd_data[3] << 24) | (rd_data[2] << 16) | (rd_data[1=
] << 8) | rd_data[0];
> +
> +       return 0;
> +}
> +
> +static int qcom_qps615_pwrctl_init(struct qcom_qps615_pwrctl_ctx *ctx)
> +{
> +       struct device *dev =3D ctx->pwrctl.dev;
> +       struct qcom_qps615_pwrctl_i2c_setting *set;
> +       const struct firmware *fw;
> +       const u8 *pos, *eof;
> +       int ret;
> +       u32 val;
> +
> +       ret =3D request_firmware(&fw, "qcom/qps615.bin", dev);
> +       if (ret < 0) {
> +               dev_err(dev, "firmware loading failed with ret %d\n", ret=
);
> +               return ret;
> +       }
> +
> +       if (!fw) {
> +               ret =3D -EINVAL;
> +               goto err;
> +       }
> +
> +       pos =3D fw->data;
> +       eof =3D fw->data + fw->size;
> +
> +       while (pos < (fw->data + fw->size)) {
> +               set =3D (struct qcom_qps615_pwrctl_i2c_setting *)pos;
> +
> +               ret =3D qps615_switch_i2c_write(ctx, set->slv_addr, set->=
reg_addr, set->val);
> +               if (ret) {
> +                       dev_err(dev,
> +                               "I2c write failed for slv addr:%x at addr=
%x with val %x ret %d\n",
> +                               set->slv_addr, set->reg_addr, set->val, r=
et);
> +                       goto err;
> +               }
> +
> +               ret =3D qps615_switch_i2c_read(ctx,  set->slv_addr, set->=
reg_addr, &val);
> +               if (ret) {
> +                       dev_err(dev, "I2c read failed for slv addr:%x at =
addr%x ret %d\n",
> +                               set->slv_addr, set->reg_addr, ret);
> +                       goto err;
> +               }
> +
> +               if (set->val !=3D val) {
> +                       dev_err(dev,
> +                               "I2c read's mismatch for slv:%x at addr%x=
 exp%d got%d\n",
> +                               set->slv_addr, set->reg_addr, set->val, v=
al);
> +                       goto err;
> +               }
> +               pos +=3D sizeof(struct qcom_qps615_pwrctl_i2c_setting);
> +       }
> +
> +err:
> +       release_firmware(fw);
> +
> +       return ret;
> +}
> +
> +static int qcom_qps615_power_on(struct qcom_qps615_pwrctl_ctx *ctx)
> +{
> +       int ret;
> +
> +       ret =3D regulator_enable(ctx->vdd);
> +       if (ret) {
> +               dev_err(ctx->pwrctl.dev, "cannot enable vdda regulator\n"=
);

Use dev_err_probe() here and wherever applicable.

> +               return ret;
> +       }
> +
> +       ret =3D qcom_qps615_pwrctl_init(ctx);
> +       if (ret)
> +               regulator_disable(ctx->vdd);
> +
> +       return ret;
> +}
> +
> +static int qcom_qps615_power_off(struct qcom_qps615_pwrctl_ctx *ctx)
> +{
> +       return regulator_disable(ctx->vdd);
> +}
> +
> +static int qcom_qps615_pwrctl_probe(struct platform_device *pdev)
> +{
> +       struct device *dev =3D &pdev->dev;
> +       struct device_node *node =3D pdev->dev.of_node;
> +       struct qcom_qps615_pwrctl_ctx *ctx;
> +       struct device_node *adapter_node;
> +       struct pci_host_bridge *bridge;
> +       struct i2c_adapter *adapter;
> +       struct pci_bus *bus;
> +
> +       bus =3D pci_find_bus(of_get_pci_domain_nr(dev->parent->of_node), =
0);
> +       if (!bus)
> +               return -ENODEV;
> +
> +       bridge =3D pci_find_host_bridge(bus);
> +
> +       ctx =3D devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
> +       if (!ctx)
> +               return -ENOMEM;
> +
> +       adapter_node =3D of_parse_phandle(node, "switch-i2c-cntrl", 0);
> +       if (adapter_node) {
> +               adapter =3D of_get_i2c_adapter_by_node(adapter_node);
> +               __free(adapter_node);

How did this even compile??! I think you meant:

struct device_node *adapter_node __free(device_node) =3D ... ?

Bart

> +               if (!adapter)
> +                       return dev_err_probe(dev, -EPROBE_DEFER,
> +                                            "failed to parse switch-i2c-=
cntrl\n");
> +       }
> +
> +       ctx->pwrctl.dev =3D dev;
> +       ctx->adapter =3D adapter;
> +       ctx->vdd =3D devm_regulator_get(dev, "vdd");
> +       if (IS_ERR(ctx->vdd))
> +               return dev_err_probe(dev, PTR_ERR(ctx->vdd),
> +                                    "failed to get vdd regulator\n");
> +
> +       ctx->link =3D device_link_add(&bridge->dev, dev, DL_FLAG_AUTOREMO=
VE_CONSUMER);
> +
> +       platform_set_drvdata(pdev, ctx);
> +
> +       bridge->ops->stop_link(bus);
> +       qcom_qps615_power_on(ctx);
> +       bridge->ops->start_link(bus);
> +
> +       return devm_pci_pwrctl_device_set_ready(dev, &ctx->pwrctl);
> +}
> +
> +static const struct of_device_id qcom_qps615_pwrctl_of_match[] =3D {
> +       {
> +               .compatible =3D "pci1179,0623",
> +       },
> +       { }
> +};
> +MODULE_DEVICE_TABLE(of, qcom_qps615_pwrctl_of_match);
> +
> +static int pci_pwrctl_suspend_noirq(struct device *dev)
> +{
> +       struct pci_bus *bus =3D pci_find_bus(of_get_pci_domain_nr(dev->pa=
rent->of_node), 0);
> +       struct pci_host_bridge *bridge =3D pci_find_host_bridge(bus);
> +       struct qcom_qps615_pwrctl_ctx *ctx =3D dev_get_drvdata(dev);
> +
> +       bridge->ops->stop_link(bus);
> +       qcom_qps615_power_off(ctx);
> +
> +       return 0;
> +}
> +
> +static int pci_pwrctl_resume_noirq(struct device *dev)
> +{
> +       struct pci_bus *bus =3D pci_find_bus(of_get_pci_domain_nr(dev->pa=
rent->of_node), 0);
> +       struct pci_host_bridge *bridge =3D pci_find_host_bridge(bus);
> +       struct qcom_qps615_pwrctl_ctx *ctx =3D dev_get_drvdata(dev);
> +
> +       qcom_qps615_power_on(ctx);
> +       bridge->ops->start_link(bus);
> +
> +       return 0;
> +}
> +
> +static void qcom_qps615_pwrctl_remove(struct platform_device *pdev)
> +{
> +       struct device *dev =3D &pdev->dev;
> +       struct qcom_qps615_pwrctl_ctx *ctx =3D dev_get_drvdata(dev);
> +
> +       device_link_del(ctx->link);
> +       pci_pwrctl_suspend_noirq(dev);
> +}
> +
> +static const struct dev_pm_ops pci_pwrctl_pm_ops =3D {
> +       NOIRQ_SYSTEM_SLEEP_PM_OPS(pci_pwrctl_suspend_noirq, pci_pwrctl_re=
sume_noirq)
> +};
> +
> +static struct platform_driver qcom_qps615_pwrctl_driver =3D {
> +       .driver =3D {
> +               .name =3D "pwrctl-qps615",
> +               .of_match_table =3D qcom_qps615_pwrctl_of_match,
> +               .pm =3D &pci_pwrctl_pm_ops,
> +       },
> +       .probe =3D qcom_qps615_pwrctl_probe,
> +       .remove_new =3D qcom_qps615_pwrctl_remove,
> +};
> +module_platform_driver(qcom_qps615_pwrctl_driver);
> +
> +MODULE_AUTHOR("Krishna chaitanya chundru <quic_krichai@quicinc.com>");
> +MODULE_DESCRIPTION("Qualcomm QPS615 power control driver");
> +MODULE_LICENSE("GPL");
>
> --
> 2.42.0
>

