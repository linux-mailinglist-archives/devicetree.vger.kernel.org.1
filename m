Return-Path: <devicetree+bounces-235804-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7787CC3D0BA
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 19:17:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E176D18997AD
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 18:18:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 951042E7650;
	Thu,  6 Nov 2025 18:17:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="K1GSH3TH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C37182E62D4
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 18:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762453056; cv=none; b=hoImq1Od5csJYMfFN1Mx9BhSrVnPz57tDZNQxcx3GOGRZRL9pUH91chv7QWv/9WmrWbA+kFvd/lIYXLVLDDJSKBpbbaXdcLSuWlRPkGjEZTdFMZiY93p0nIwcMBC9IHWQAn5+oMMf1ju1LQ2T+whdXx/HLlZnI1Bl5a/dIfoBB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762453056; c=relaxed/simple;
	bh=+EDHG6jC3dR9djMGzxaDhYnGnavUlqsN9UCm8KOuNUs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aFtbeXNtYWqO5V3cvaFSUcDxJ8ju8iNwL1AKflKGTO+ebCynrmBHoRz/Rvn0EjsYKm7oNh+yZe6dmSMGXrd5h6qjc9UahOxDXJ7nxpvxctR1xaoawG0qatUETzxI70CFY9CBLNaP8vAYpr6aNBz+vDYGtIayl3LmUR0S0QiJBWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=K1GSH3TH; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-340c1c05feeso1298758a91.1
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 10:17:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1762453054; x=1763057854; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q5F+Z9IhhsywZTDYjJqeTgWl/deiC3wHlce6TFxmwAk=;
        b=K1GSH3THNzeYJuf3xxh6d0UBHaNHIu3WwWWJGAFxQQLFkOfnZnfCCeBOIdka3njaU/
         pbO8Vv5/NgeyRUeF6280hgKQG/c8fbhzhgvbHSQZTv25b2e7Z4HhUeb1EHRSFCw4nbny
         kbHIFXT77S7wSIyY7PLRrT4LFNEXG0W2vfe1s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762453054; x=1763057854;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=q5F+Z9IhhsywZTDYjJqeTgWl/deiC3wHlce6TFxmwAk=;
        b=xHl4lst2s5jXBWV7xzkVQsBGBmWtDfIzhHHbJWiFvhWgg5jc1IKCKf0frRepn3/9ew
         bDRfzMaGNuTtmb8xTtZiVJIW7Z5EcABtaM1uFKZaBaL4zWfcX/0pRka0HpjGzEzKpcUn
         BX4nDAyZ/xLPbjZjpISQx2UmxAVYpMqwd8XHhlZaw8VdBbnSY/EV+lA8fYZWqJeSYALg
         nr46BsbzdCU8+wKmCAoJ8eAlo1aNvdKTc8fil4pOF1rguhpb5FJY6Fy8cgwodXYpWfKB
         3f4bC/HzyU60dHaU+OGq2TXYPICqByrywBhS4TAbH/pgZK3+RbR1V1EzavDpbhesNEyK
         nZtg==
X-Forwarded-Encrypted: i=1; AJvYcCWUF4NhiTz15YZmBJV0oNde+SGvrWCxg8xtaZQnTzXDnscFav3I7R7u1GQMvU8jjL5AgWHeD0SxlTOG@vger.kernel.org
X-Gm-Message-State: AOJu0YwL1k8czSPO6Oyw/XzGSF+0NWQfBTb5n91d76sq+qFyHiozM/A+
	26hkPG7+lB7Z2l/reUKQDJ0so02ApueDRJ/CYTe0xoJMPGgr1SBqUcwCP5J5jk1UVbUHtDbij0S
	0TB1xAFRItx1YeeZVxxIt0aDiPyY31Z3rkHjHerZs
X-Gm-Gg: ASbGncsNS5gil99MQUp/juhClYfOVhU5PbQWyhznn1hFSHnZ8v+wOv92g1UlE8BhhTM
	i4wcUAlslQMnYbzUNwjoZKQiQEy4U5jPukSmYz+bS6Tk0g0Hdkuj8DantGLEU6b+CigYzHSl7wO
	WRwkmFLJBlI08Fnv4NP60Vf3RyU53MmoJiQ3V8V1b3Z8bC5cVJiOChjIPbWp4VzdE7w+lCoJVth
	MaupcBrIHrjVdAbJ27oBEMWgjNc163aOhZSR/3f001MiSnuLRz54Wc8MU/fR7I6lNcI
X-Google-Smtp-Source: AGHT+IFn6PXjJHldODS9KPqz+43IEKzySmCOy8+pWSyHAUSQQolRbTp/qwgRR6qDsxBJoBB7XlBLo11zLmP3uDqvHJ4=
X-Received: by 2002:a17:90b:2e07:b0:340:48f2:5e2d with SMTP id
 98e67ed59e1d1-3434c4eaf75mr131609a91.9.1762453054072; Thu, 06 Nov 2025
 10:17:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251013203331.398517-1-jthies@google.com> <20251013203331.398517-3-jthies@google.com>
In-Reply-To: <20251013203331.398517-3-jthies@google.com>
From: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
Date: Thu, 6 Nov 2025 10:17:22 -0800
X-Gm-Features: AWmQ_blB4FOIIKSVgccXNEhWQ1KfEoxR1FTLnGkjSWTXpx8IGMHNb4ruYVitNo4
Message-ID: <CANFp7mUq7=8Sw2VHabjiESMTNLqR0DRQUWkQN3OTfTTMfWOx6A@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] usb: typec: cros_ec_ucsi: Load driver from OF and
 ACPI definitions
To: Jameson Thies <jthies@google.com>
Cc: dmitry.baryshkov@oss.qualcomm.com, akuchynski@chromium.org, 
	krzk+dt@kernel.org, robh@kernel.org, bleung@chromium.org, 
	heikki.krogerus@linux.intel.com, ukaszb@chromium.org, tzungbi@kernel.org, 
	devicetree@vger.kernel.org, chrome-platform@lists.linux.dev, 
	linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 13, 2025 at 1:34=E2=80=AFPM Jameson Thies <jthies@google.com> w=
rote:
>
> Add support for cros_ec_ucsi to load based on "google,cros-ec-ucsi"
> compatible devices and "GOOG0021" ACPI nodes.
>
> Signed-off-by: Jameson Thies <jthies@google.com>
> Reviewed-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
> Reviewed-by: Benson Leung <bleung@chromium.org>
> ---
>  drivers/usb/typec/ucsi/cros_ec_ucsi.c | 26 ++++++++++++++++++++++++--
>  1 file changed, 24 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/usb/typec/ucsi/cros_ec_ucsi.c b/drivers/usb/typec/uc=
si/cros_ec_ucsi.c
> index eed2a7d0ebc6..0c19ba84d11c 100644
> --- a/drivers/usb/typec/ucsi/cros_ec_ucsi.c
> +++ b/drivers/usb/typec/ucsi/cros_ec_ucsi.c
> @@ -5,11 +5,13 @@
>   * Copyright 2024 Google LLC.
>   */
>
> +#include <linux/acpi.h>
>  #include <linux/container_of.h>
>  #include <linux/dev_printk.h>
>  #include <linux/jiffies.h>
>  #include <linux/mod_devicetable.h>
>  #include <linux/module.h>
> +#include <linux/of.h>
>  #include <linux/platform_data/cros_ec_commands.h>
>  #include <linux/platform_data/cros_usbpd_notify.h>
>  #include <linux/platform_data/cros_ec_proto.h>
> @@ -235,7 +237,6 @@ static void cros_ucsi_destroy(struct cros_ucsi_data *=
udata)
>  static int cros_ucsi_probe(struct platform_device *pdev)
>  {
>         struct device *dev =3D &pdev->dev;
> -       struct cros_ec_dev *ec_data =3D dev_get_drvdata(dev->parent);
>         struct cros_ucsi_data *udata;
>         int ret;
>
> @@ -243,9 +244,16 @@ static int cros_ucsi_probe(struct platform_device *p=
dev)
>         if (!udata)
>                 return -ENOMEM;
>
> +       /* ACPI and OF FW nodes for cros_ec_ucsi are children of the Chro=
meOS EC. If the
> +        * cros_ec_ucsi device has an ACPI or OF FW node, its parent is t=
he ChromeOS EC device.
> +        * Platforms without a FW node for cros_ec_ucsi may add it as a s=
ubdevice of cros_ec_dev.
> +        */
>         udata->dev =3D dev;
> +       if (is_acpi_device_node(dev->fwnode) || is_of_node(dev->fwnode))
> +               udata->ec =3D dev_get_drvdata(dev->parent);
> +       else
> +               udata->ec =3D ((struct cros_ec_dev *)dev_get_drvdata(dev-=
>parent))->ec_dev;
>
> -       udata->ec =3D ec_data->ec_dev;
>         if (!udata->ec)
>                 return dev_err_probe(dev, -ENODEV, "couldn't find parent =
EC device\n");
>
> @@ -326,10 +334,24 @@ static const struct platform_device_id cros_ucsi_id=
[] =3D {
>  };
>  MODULE_DEVICE_TABLE(platform, cros_ucsi_id);
>
> +static const struct acpi_device_id cros_ec_ucsi_acpi_device_ids[] =3D {
> +       { "GOOG0021", 0 },
> +       { }
> +};
> +MODULE_DEVICE_TABLE(acpi, cros_ec_ucsi_acpi_device_ids);
> +
> +static const struct of_device_id cros_ucsi_of_match[] =3D {
> +       { .compatible =3D "google,cros-ec-ucsi", },
> +       {}
> +};
> +MODULE_DEVICE_TABLE(of, cros_ucsi_of_match);
> +
>  static struct platform_driver cros_ucsi_driver =3D {
>         .driver =3D {
>                 .name =3D KBUILD_MODNAME,
>                 .pm =3D &cros_ucsi_pm_ops,
> +               .acpi_match_table =3D cros_ec_ucsi_acpi_device_ids,
> +               .of_match_table =3D cros_ucsi_of_match,
>         },
>         .id_table =3D cros_ucsi_id,
>         .probe =3D cros_ucsi_probe,
> --
> 2.51.0.858.gf9c4a03a3a-goog
>

Reviewed-by: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>

