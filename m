Return-Path: <devicetree+bounces-68069-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E92B8CAB68
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 12:02:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 51DDF1C21523
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 10:02:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88E3A657A7;
	Tue, 21 May 2024 10:02:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UF3u+hhL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1E595473D
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 10:01:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716285720; cv=none; b=CZ1mMTqDz5nbRpOeoQ0gQLeHcwtLiVj5g7LYUcJzFwPb4yrDqskAygvjQ0NoiPYKzPFO/8upsZXvEzL8DoocSZKSRbGHufQexj+bymnANjByS/uQ2BeDMa75vmGigMtHky0suMDXmxxKAXv0wEw6BXXFbaaq/BDoD6nGIFH4v+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716285720; c=relaxed/simple;
	bh=cMDoLL6QBfIieTZE2r7W+c1QqtEbw5d3Use77tBA+tM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=N4TmwDI3pmHH21ql4K6IElpX8fDSA7tJ8KilOcOxQioiTM8pdvm8z8hxB6NuY0+vz3CWu0a8NHfGI243Ui7cB1vJ8qwg2rMZRtrX7cExCMpiZG+JmZxF9aG6XtTx0hEG5h1PSJIekicbdRPnQ+NkmXccOkzunCCK6n/TMf8vU58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UF3u+hhL; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-1eecc71311eso102880115ad.3
        for <devicetree@vger.kernel.org>; Tue, 21 May 2024 03:01:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716285718; x=1716890518; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=AP264UOFD4ja8oEQ5wju53drQLAuhDOSUhP1BJZIxXs=;
        b=UF3u+hhLYRikE89tsXCmfKVgV/hKvSb8hwCXq0grcsG0sgAujFCfu94H29niT/ygO3
         wkRt0WCcu/jln1Ji0dcLXbsfeDn4gdutOOPsCusAF+X2C+VdBAo4bc5uBjRAHLuSbSEa
         YuT+D6lqebZUYxjjWq/y2+G6hPnr5ru3VxTYpovuDJK4KK7ZoDRBzH05Hfe+YM/H4/g1
         np53kRXndtk9hCHSINkRKYOnWjDKWPuJBT/We0lpWY4VPT8beGOQsJPZhuVDZQ59nlnp
         fIT6q+xS6/SAxk0sHmYwhw2uMcKkpaLT0rbvPYPACNLxUPgSASp5LsxBTv/qw2V9grHB
         spRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716285718; x=1716890518;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AP264UOFD4ja8oEQ5wju53drQLAuhDOSUhP1BJZIxXs=;
        b=hzjNEDRKomzdghbp0ewctaixSfkcleUgVPG2/lXdFqAdyGNjWrwO0kwFVzMuD+JE7K
         Ebj4fIsvYdeLWwVWIjv2UM+mMqbgG5nP6byFI1A6hmTw4pGYHaKuV12QPCHKUpAv4igh
         rcve8AdTDdk0e3O9Faj9I9Su7GnBYGq03ZdC1LXPsec4HV/2jGJuoSahRVFg0CLJRb3L
         6E5iXklBlOPe5g4tmXrx2Cs+T2V2TjCvHpYOcacuDKNc3YK0eeh34SIenoCCyAI7RvkE
         G37JrHV7u8wU/MyCyyeKoOfE5obOgVKNRCgr31bYgZYpDmNFRrJi5vwvYCpAvpGFs/Uw
         CjlA==
X-Forwarded-Encrypted: i=1; AJvYcCVMWDDJ+tF3UZKsBvjEyesEzwz/Qqv9bsZz02IOPqGqB6akqi6RPVOboet32vDoNXqh1z+1A7KQ4hwH2uk/NrIKYMwOSePBidMGTQ==
X-Gm-Message-State: AOJu0YynFQZrhkEh09MSn3WracQ/77rKCyLN5zQX9Afykx5ok8dQsW53
	jOOy3ph8UbXsgp0y3WpNNSht4oSlLGFVDcHIErj4anPYZna+sjCwF35o8R4KQqRHh8AALpXi7or
	OFb61pZqiiDhTOfrddtD3wyS2Ngb0RD4fCyXFSw==
X-Google-Smtp-Source: AGHT+IFLV6Ih5Po58Qeu/ruxeTvEOzzP2jHq7OedvNxHeTeh97UqoWhaqnmVJ2Inx3Bhjzw38Tp+nqw7nVFufe1uQ2c=
X-Received: by 2002:a17:90a:d58c:b0:2bb:b23e:14cc with SMTP id
 98e67ed59e1d1-2bbb23e4f03mr15657587a91.42.1716285718303; Tue, 21 May 2024
 03:01:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240521-qcom-firmware-name-v1-0-99a6d32b1e5e@linaro.org>
 <20240521-qcom-firmware-name-v1-1-99a6d32b1e5e@linaro.org> <a45b53f3-b2a5-4094-af5a-1281e0f94d2f@linaro.org>
In-Reply-To: <a45b53f3-b2a5-4094-af5a-1281e0f94d2f@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 21 May 2024 13:01:45 +0300
Message-ID: <CAA8EJprxYsoug0ipRHTmX45vaFLzJCUF0dQWOc=QLs4y6uZ1rA@mail.gmail.com>
Subject: Re: [PATCH 01/12] soc: qcom: add firmware name helper
To: neil.armstrong@linaro.org
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Loic Poulain <loic.poulain@linaro.org>, Kalle Valo <kvalo@kernel.org>, 
	Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, wcn36xx@lists.infradead.org, 
	linux-wireless@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
	devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"

On Tue, 21 May 2024 at 12:52, <neil.armstrong@linaro.org> wrote:
>
> On 21/05/2024 11:45, Dmitry Baryshkov wrote:
> > Qualcomm platforms have different sets of the firmware files, which
> > differ from platform to platform (and from board to board, due to the
> > embedded signatures). Rather than listing all the firmware files,
> > including full paths, in the DT, provide a way to determine firmware
> > path based on the root DT node compatible.
>
> Ok this looks quite over-engineered but necessary to handle the legacy,
> but I really think we should add a way to look for a board-specific path
> first and fallback to those SoC specific paths.

Again, CONFIG_FW_LOADER_USER_HELPER => delays.

>
> Neil
>
> >
> > Suggested-by: Arnd Bergmann <arnd@arndb.de>
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >   drivers/soc/qcom/Kconfig           |  5 +++
> >   drivers/soc/qcom/Makefile          |  1 +
> >   drivers/soc/qcom/qcom_fw_helper.c  | 86 ++++++++++++++++++++++++++++++++++++++
> >   include/linux/soc/qcom/fw_helper.h | 10 +++++
> >   4 files changed, 102 insertions(+)
> >
> > diff --git a/drivers/soc/qcom/Kconfig b/drivers/soc/qcom/Kconfig
> > index 5af33b0e3470..b663774d65f8 100644
> > --- a/drivers/soc/qcom/Kconfig
> > +++ b/drivers/soc/qcom/Kconfig
> > @@ -62,6 +62,11 @@ config QCOM_MDT_LOADER
> >       tristate
> >       select QCOM_SCM
> >
> > +config QCOM_FW_HELPER
> > +     tristate "NONE FW HELPER"
> > +     help
> > +       Helpers to return platform-specific location for the firmware files.
> > +
> >   config QCOM_OCMEM
> >       tristate "Qualcomm On Chip Memory (OCMEM) driver"
> >       depends on ARCH_QCOM
> > diff --git a/drivers/soc/qcom/Makefile b/drivers/soc/qcom/Makefile
> > index ca0bece0dfff..e612bee5b955 100644
> > --- a/drivers/soc/qcom/Makefile
> > +++ b/drivers/soc/qcom/Makefile
> > @@ -6,6 +6,7 @@ obj-$(CONFIG_QCOM_GENI_SE) += qcom-geni-se.o
> >   obj-$(CONFIG_QCOM_COMMAND_DB) += cmd-db.o
> >   obj-$(CONFIG_QCOM_GSBI)     +=      qcom_gsbi.o
> >   obj-$(CONFIG_QCOM_MDT_LOADER)       += mdt_loader.o
> > +obj-$(CONFIG_QCOM_FW_HELPER) += qcom_fw_helper.o
> >   obj-$(CONFIG_QCOM_OCMEM)    += ocmem.o
> >   obj-$(CONFIG_QCOM_PDR_HELPERS)      += pdr_interface.o
> >   obj-$(CONFIG_QCOM_PMIC_GLINK)       += pmic_glink.o
> > diff --git a/drivers/soc/qcom/qcom_fw_helper.c b/drivers/soc/qcom/qcom_fw_helper.c
> > new file mode 100644
> > index 000000000000..13123c2514b8
> > --- /dev/null
> > +++ b/drivers/soc/qcom/qcom_fw_helper.c
> > @@ -0,0 +1,86 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * Qualcomm Firmware loading data
> > + *
> > + * Copyright (C) 2024 Linaro Ltd
> > + */
> > +
> > +#include <linux/cleanup.h>
> > +#include <linux/device.h>
> > +#include <linux/mutex.h>
> > +#include <linux/of.h>
> > +#include <linux/soc/qcom/fw_helper.h>
> > +
> > +static DEFINE_MUTEX(qcom_fw_mutex);
> > +static const char *fw_path;
> > +
> > +static const struct of_device_id qcom_fw_paths[] = {
> > +     /* device-specific entries */
> > +     { .compatible = "thundercomm,db845c", .data = "qcom/sdm845/Thundercomm/db845c", },
> > +     { .compatible = "qcom,qrb5165-rb5", .data = "qcom/sm8250/Thundercomm/RB5", },
> > +     /* SoC default entries */
> > +     { .compatible = "qcom,apq8016", .data = "qcom/apq8016", },
> > +     { .compatible = "qcom,apq8096", .data = "qcom/apq8096", },
> > +     { .compatible = "qcom,sdm845", .data = "qcom/sdm845", },
> > +     { .compatible = "qcom,sm8250", .data = "qcom/sm8250", },
> > +     { .compatible = "qcom,sm8350", .data = "qcom/sm8350", },
> > +     { .compatible = "qcom,sm8450", .data = "qcom/sm8450", },
> > +     { .compatible = "qcom,sm8550", .data = "qcom/sm8550", },
> > +     { .compatible = "qcom,sm8650", .data = "qcom/sm8650", },
> > +     {},
> > +};
> > +
> > +static int qcom_fw_ensure_init(void)
> > +{
> > +     const struct of_device_id *match;
> > +     struct device_node *root;
> > +
> > +     if (fw_path)
> > +             return 0;
> > +
> > +     root = of_find_node_by_path("/");
> > +     if (!root)
> > +             return -ENODEV;
> > +
> > +     match = of_match_node(qcom_fw_paths, root);
> > +     of_node_put(root);
> > +     if (!match || !match->data) {
> > +             pr_notice("Platform not supported by qcom_fw_helper\n");
> > +             return -ENODEV;
> > +     }
> > +
> > +     fw_path = match->data;
> > +
> > +     return 0;
> > +}
> > +
> > +const char *qcom_get_board_fw(const char *firmware)
> > +{
> > +     if (strchr(firmware, '/'))
> > +             return kstrdup(firmware, GFP_KERNEL);
> > +
> > +     scoped_guard(mutex, &qcom_fw_mutex) {
> > +             if (!qcom_fw_ensure_init())
> > +                     return kasprintf(GFP_KERNEL, "%s/%s", fw_path, firmware);
> > +     }
> > +
> > +     return kstrdup(firmware, GFP_KERNEL);
> > +}
> > +EXPORT_SYMBOL_GPL(qcom_get_board_fw);
> > +
> > +const char *devm_qcom_get_board_fw(struct device *dev, const char *firmware)
> > +{
> > +     if (strchr(firmware, '/'))
> > +             return devm_kstrdup(dev, firmware, GFP_KERNEL);
> > +
> > +     scoped_guard(mutex, &qcom_fw_mutex) {
> > +             if (!qcom_fw_ensure_init())
> > +                     return devm_kasprintf(dev, GFP_KERNEL, "%s/%s", fw_path, firmware);
> > +     }
> > +
> > +     return devm_kstrdup(dev, firmware, GFP_KERNEL);
> > +}
> > +EXPORT_SYMBOL_GPL(devm_qcom_get_board_fw);
> > +
> > +MODULE_DESCRIPTION("Firmware helpers for Qualcomm devices");
> > +MODULE_LICENSE("GPL");
> > diff --git a/include/linux/soc/qcom/fw_helper.h b/include/linux/soc/qcom/fw_helper.h
> > new file mode 100644
> > index 000000000000..755645386bba
> > --- /dev/null
> > +++ b/include/linux/soc/qcom/fw_helper.h
> > @@ -0,0 +1,10 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +#ifndef __QCOM_FW_HELPER_H__
> > +#define __QCOM_FW_HELPER_H__
> > +
> > +struct device;
> > +
> > +const char *qcom_get_board_fw(const char *firmware);
> > +const char *devm_qcom_get_board_fw(struct device *dev, const char *firmware);
> > +
> > +#endif
> >
>


-- 
With best wishes
Dmitry

