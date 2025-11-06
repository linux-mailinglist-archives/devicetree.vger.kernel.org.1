Return-Path: <devicetree+bounces-235806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 140E9C3D0CF
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 19:18:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 8BFAB35249D
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 18:18:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1C50350A02;
	Thu,  6 Nov 2025 18:18:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="EsYWlP1A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BDC434DCD6
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 18:18:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762453118; cv=none; b=Avt/p0/3fPpPtH65RxzREDgyFvD2VcluPHgDRibtMbw5azBWNc3+JMUQLigD2QCcAe+/23OXjrQSi5cP26S/owSwywddpGu4a1sW0WiMVoZ7P9KpSvb2L2OaJSXNMplvTpvqqzb8FJkQyKwyzpiAeLhxXnbQW3HdjI4e3JEdZZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762453118; c=relaxed/simple;
	bh=oMS8T+OT/9Nui4b46aIksLQJ0N9ZjMFuDvzZmhiJqww=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Z3LVRt/fa6zuax9RCoF69ItInWGcWwokQxraW+qM8n9enpFZBIathFGpGx0HKJ6wIbFMBREAMleyxhNEm7ZVbaM9x7gTduDESa4cizODZV2wiM38F61DckFQzG6/TuyVdhIepWKmA02Yxcl/3vH2OwgKeq4d4SwSdiKCds5cQgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=EsYWlP1A; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-afcb7ae6ed0so214869466b.3
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 10:18:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1762453115; x=1763057915; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0FN9+63BCY6a91Sh11P8wg56sTIKFRq6Ev4z9/iG60s=;
        b=EsYWlP1ADJyWJPFJt8M1pGT5r7dFof4P7To9cSsuwzhEt2ALxkPkUrN63ZeXMIOXs1
         Pvy5q9FeRTMhGbGov7O2U6XLQT5ZlY0G5RvtiIiSY8vMsLL0Sv9QTfr4NHwszUCiXs+t
         VRjQXFXylzOjljIjiiL8cp/bY1l4meidbZoS8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762453115; x=1763057915;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0FN9+63BCY6a91Sh11P8wg56sTIKFRq6Ev4z9/iG60s=;
        b=tp3UBodhZKvcBhyY8tIj7UokAiJ9dWTKB/LFU19FbhtjSvYZzm3leyvpCnQXP11eqd
         rXCk6PsreBVl+cpnHdJtmARuTNhj4aJZkKpn1y3CdQZYbDx9pdA8QdCiUHQDrEhK2Q8K
         rl/kKGCDpj7QCPRCotLnECysMlTqdspzU80ER9WRin+/j4BShq8bXojJFVykLn5MjC51
         iz5aaz0H6g7J7VLgT/1P0vMROIn2NPHjCSdeZDdHmRQfotYyww5sL2IkGNeHgg1lr5on
         x7qZdyBchf1j6iRPkkmonTJmlk/n7C59pabwJOr9bs9e26QkQiv5h4IdavlylRBWQWgD
         MymQ==
X-Forwarded-Encrypted: i=1; AJvYcCXkTOJbioVqDmwgpLXO7Qnc0ASQ6a0YrZKSTA6SUWBbrq6aKY0QyY8x169vRO4OrlUoD68CiTgmyB/i@vger.kernel.org
X-Gm-Message-State: AOJu0YxRww/S/LNGjkY5sNzKrWZaeUqKxIg1t3rhSaZ0byawFoz10Uw8
	2MKRelmjQtT1htjpNBWtfFykkncP8eUAYDJNau9HNhCkbxg6vPMIVEZhPEodB1SA4kUQvtV933t
	q4ifL1yRj2id3agdw8NgHRLRqZFQRWN0Pz1XC+BN6
X-Gm-Gg: ASbGncv9D43BKpoKYmmoR6T0TjAyvIDzfPnHq5HH8G+bWMcax2Ht3BRPQv0aqHgs3mk
	ostDQHukjVtyBNcVBsjk3K8FF8ErcQhDhj8TP7S9O7HZLj4gBi45Jy+16jDXUy0Kz4l7wmwSgkX
	K/2KTCnK9saCdY7xTy0DSZPpljDH3OvCBXkZMEP+vc6VT+/P0jhTAo69fGEMLUt0byyKnHDHQiU
	vLiBtw+TKfpQbMrwf8rx3HaHNjD0h5d4JsShlkRNS63//ON2BCCMtD6CGX0CK/r3j6rUv5jvd99
	al8=
X-Google-Smtp-Source: AGHT+IEP/nwzlykeSLaebiXJLfmr7cwOpqfsasygiy3POXKTjyaWp0Ppxd+0Gxo3zqPuZbdRPhQDcPYGjLKAO0sPWyQ=
X-Received: by 2002:a17:907:3c91:b0:b33:b8bc:d1da with SMTP id
 a640c23a62f3a-b72c08e023emr12144066b.1.1762453115425; Thu, 06 Nov 2025
 10:18:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251013203331.398517-1-jthies@google.com> <20251013203331.398517-4-jthies@google.com>
In-Reply-To: <20251013203331.398517-4-jthies@google.com>
From: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
Date: Thu, 6 Nov 2025 10:18:22 -0800
X-Gm-Features: AWmQ_blOKtSWKrioiTuTVnOpd2P7YQAJP4q98Q_uCp-RggagsBRvuHIuk3LHNVM
Message-ID: <CANFp7mV0FjZ-4OB8uMeVfyQn_BAMhnhYs-w+ABzupoiiywN1Gg@mail.gmail.com>
Subject: Re: [PATCH v4 3/3] mfd: cros_ec: Don't add cros_ec_ucsi if it is
 defined in OF or ACPI
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
> On devices with a UCSI PPM in the EC, check for cros_ec_ucsi to be
> defined in the OF device tree or an ACPI node. If it is defined by
> either OF or ACPI, it does not need to be added as a subdevice of
> cros_ec_dev mfd. cros_ec_ucsi will load from the OF or ACPI node.
>
> Signed-off-by: Jameson Thies <jthies@google.com>
> Reviewed-by: Benson Leung <bleung@chromium.org>
> ---
>  drivers/mfd/cros_ec_dev.c | 23 ++++++++++++++++++-----
>  1 file changed, 18 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/mfd/cros_ec_dev.c b/drivers/mfd/cros_ec_dev.c
> index dc80a272726b..1928c2ea2b8f 100644
> --- a/drivers/mfd/cros_ec_dev.c
> +++ b/drivers/mfd/cros_ec_dev.c
> @@ -5,6 +5,7 @@
>   * Copyright (C) 2014 Google, Inc.
>   */
>
> +#include <linux/acpi.h>
>  #include <linux/dmi.h>
>  #include <linux/kconfig.h>
>  #include <linux/mfd/core.h>
> @@ -131,11 +132,6 @@ static const struct cros_feature_to_cells cros_subde=
vices[] =3D {
>                 .mfd_cells      =3D cros_ec_rtc_cells,
>                 .num_cells      =3D ARRAY_SIZE(cros_ec_rtc_cells),
>         },
> -       {
> -               .id             =3D EC_FEATURE_UCSI_PPM,
> -               .mfd_cells      =3D cros_ec_ucsi_cells,
> -               .num_cells      =3D ARRAY_SIZE(cros_ec_ucsi_cells),
> -       },
>         {
>                 .id             =3D EC_FEATURE_HANG_DETECT,
>                 .mfd_cells      =3D cros_ec_wdt_cells,
> @@ -264,6 +260,23 @@ static int ec_device_probe(struct platform_device *p=
dev)
>                 }
>         }
>
> +       /*
> +        * FW nodes can load cros_ec_ucsi, but early PDC devices did not =
define
> +        * the required nodes. On PDC systems without FW nodes for cros_e=
c_ucsi,
> +        * the driver should be added as an mfd subdevice.
> +        */
> +       if (cros_ec_check_features(ec, EC_FEATURE_USB_PD) &&
> +           cros_ec_check_features(ec, EC_FEATURE_UCSI_PPM) &&
> +           !acpi_dev_found("GOOG0021") &&
> +           !of_find_compatible_node(NULL, NULL, "google,cros-ec-ucsi")) =
{
> +               retval =3D mfd_add_hotplug_devices(ec->dev,
> +                                                cros_ec_ucsi_cells,
> +                                                ARRAY_SIZE(cros_ec_ucsi_=
cells));
> +
> +               if (retval)
> +                       dev_warn(ec->dev, "failed to add cros_ec_ucsi: %d=
\n", retval);
> +       }
> +
>         /*
>          * UCSI provides power supply information so we don't need to sep=
arately
>          * load the cros_usbpd_charger driver.
> --
> 2.51.0.858.gf9c4a03a3a-goog
>

Reviewed-by: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>

