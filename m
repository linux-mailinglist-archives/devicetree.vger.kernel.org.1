Return-Path: <devicetree+bounces-233620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C5FC24187
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 10:20:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 371A85831B5
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 09:07:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3B2E32ED38;
	Fri, 31 Oct 2025 09:06:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="loiaIyIR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC91532E6B8
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 09:06:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761901564; cv=none; b=p0L5MODYhuzfh4C3jtG0Np4BrARsSlOOSHfZiJDaiMUNVB+jyo2V9mz8YYVfjawJBWfnBaknhwrHQDX2ATNXnAyVqWgqcKL/TnuhbETFpzDcWB7lA/W8o78RDurFG1sRAICFW+oL1cG1yh5/pFy+g8xcGZ4nlgfbNxVBc6WvrHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761901564; c=relaxed/simple;
	bh=HY35X0Jzske9SGqhpLiK1C62JcE5DLM53IEaMjOcCVY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mlAlIVGp4THMSMywkUHekME7Z8GHSoHMDL6C97YVRxCbPri4qktcCnuIng31jwAJ3EhAO7s1IPIIgZFVCFx21NnJ1SIVY2l6aExfwhs84y87lDYyn6obPVyEASkdoYUL7ipUTj8JB/Nsr0s8iovEWoXh/alkKrwk4TlcsiK0VJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=loiaIyIR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D895C4AF0B
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 09:06:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761901564;
	bh=HY35X0Jzske9SGqhpLiK1C62JcE5DLM53IEaMjOcCVY=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=loiaIyIRL4ulsJ+FEOYNY2/S0JaFMly4NkQGS459NSi2JDRp7vA9vd5hhO/+s7lQP
	 PDKYs9cFu3Y4+CBCIeg22y9Ur+yDODNTSL5i+QmD8p0vlURZy3XlnZDOjc2mOAxD5X
	 VDVAPczTuQaBCJPIlj9a0Az9kAhcSmQWxNcvFIUxTKIXfTrWUVuNu/OzuGtn69HfFL
	 KJLb9+41Ok1E3GdO0yLxMPmjL3lgN+fQ67PjkNROqU7hkuOspvJ/ozRFnIjDn6VMkQ
	 ZwBKrsyRrEuTxqye8yU9QRH+FwGRNNHB9h32JsCwr1RRGbtZJ4KUxO1akKXde+Yj9w
	 02c7pcoln4uUQ==
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-37a0d3d2e8aso21996011fa.0
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 02:06:04 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVMciIXj/ovC9QqYnMfG1VCEZ22Bz5r1IQfwmkQZDK3uH/YmKDyJrS41FRJlZk4pKniTY+liCl+/Cex@vger.kernel.org
X-Gm-Message-State: AOJu0YwT63ALKhEc/WkxsnfUfPJPtriDK7std0awZDkaAjg9ew0ij/k4
	HnB+VgkHWLtULmeWzt2z9tk0DOpWwRqy7X+Km2YOHXc+HILUmxjaEVsZY4zw1iuBmpKiqPHwA6N
	0OxUARktQRYYtJKswmwzOyne2khJa/Xw=
X-Google-Smtp-Source: AGHT+IHo1BDxtEcYJCNqrkX3cSbClvnLOEGhzOUXS7m3YmCBUjmZoaCOU8Y8UHOzac6EJyOFBI9H4ZUYvlMV1sk1fT0=
X-Received: by 2002:a05:651c:50f:b0:372:9fd0:8c44 with SMTP id
 38308e7fff4ca-37a18da85c2mr7825361fa.3.1761901562867; Fri, 31 Oct 2025
 02:06:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251022114527.618908-1-adriana@arista.com> <20251031084101.701159-1-adriana@arista.com>
 <20251031084101.701159-3-adriana@arista.com>
In-Reply-To: <20251031084101.701159-3-adriana@arista.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 31 Oct 2025 10:05:51 +0100
X-Gmail-Original-Message-ID: <CAMj1kXE6L2PTtYYqOC7+fQd7HoB_FJAOtF=p=u+AimhqkLzV8w@mail.gmail.com>
X-Gm-Features: AWmQ_blu14Z2p8TiOqD9ran31qq1TH0PhxjuvuYB7qcqo-ibv4LM8TnejHIrFyE
Message-ID: <CAMj1kXE6L2PTtYYqOC7+fQd7HoB_FJAOtF=p=u+AimhqkLzV8w@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] drivers: firmware: dmi_scan: Add support for
 reading SMBIOS from DT
To: adriana <adriana@arista.com>
Cc: ilias.apalodimas@linaro.org, trini@konsulko.com, robh@kernel.org, 
	krzk@kernel.org, jdelvare@suse.com, frowand.list@gmail.com, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, vasilykh@arista.com, 
	arm.ebbr-discuss@arm.com, boot-architecture@lists.linaro.org, 
	linux-efi@vger.kernel.org, uefi-discuss@lists.uefi.org, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

Hello Adriana,

On Fri, 31 Oct 2025 at 09:41, adriana <adriana@arista.com> wrote:
>
> From: Adriana Nicolae <adriana@arista.com>
>
> Signed-off-by: Adriana Nicolae <adriana@arista.com>
> ---
>  drivers/firmware/dmi_scan.c | 58 +++++++++++++++++++++++++++++++++++++
>  1 file changed, 58 insertions(+)
>
> diff --git a/drivers/firmware/dmi_scan.c b/drivers/firmware/dmi_scan.c
> index 70d39adf50dc..acc0e18b8d0f 100644
> --- a/drivers/firmware/dmi_scan.c
> +++ b/drivers/firmware/dmi_scan.c
> @@ -10,6 +10,9 @@
>  #include <linux/random.h>
>  #include <asm/dmi.h>
>  #include <linux/unaligned.h>
> +#if IS_ENABLED(CONFIG_OF)
> +#include <linux/of.h>
> +#endif
>
>  #ifndef SMBIOS_ENTRY_POINT_SCAN_START
>  #define SMBIOS_ENTRY_POINT_SCAN_START 0xF0000
> @@ -670,6 +673,54 @@ static int __init dmi_smbios3_present(const u8 *buf)
>         return 1;
>  }
>
> +#if IS_ENABLED(CONFIG_OF)
> +/**
> + * dmi_scan_from_dt - Find and parse DMI/SMBIOS tables from the Device Tree
> + *
> + * Checks if the bootloader has passed SMBIOS table addresses via the /chosen
> + * node in the Device Tree. This follows the standard kernel DT bindings and
> + * assumes a fixed 32-byte mapping for the entry point.

Not sure what 'the standard kernel DT bindings' are, or what you mean
by 'a fixed 32-byte mapping. You could just drop this sentence, I
think, or otherwise, describe that the DT property gives us the
physical address of the SMBIOS3 entrypoint structure.

> + * Returns true if a valid table is found and successfully parsed.

if a valid entry point is found

> + */
> +static bool __init dmi_scan_from_dt(void)
> +{
> +       struct device_node *chosen;
> +       const __be64 *prop;
> +       char buf[32];
> +       void __iomem *p;
> +       bool dmi_available = false;
> +       u64 addr;
> +       int len;
> +
> +       chosen = of_find_node_by_path("/chosen");
> +       if (!chosen)
> +               return false;
> +
> +       prop = of_get_property(chosen, "linux,smbios3-table", &len);
> +       if (prop && len >= sizeof(u64)) {
> +               addr = be64_to_cpup(prop);
> +
> +               p = dmi_early_remap(addr, 32);
> +               if (p == NULL)
> +                       goto out;
> +
> +               memcpy_fromio(buf, p, sizeof(buf));
> +               dmi_early_unmap(p, 32);
> +
> +               if (!dmi_smbios3_present(buf)) {
> +                       dmi_available = true;
> +                       goto out;
> +               }
> +       }
> +
> +out:
> +       of_node_put(chosen);
> +       return dmi_available;
> +}
> +#else
> +static bool __init dmi_scan_from_dt(void) { return false; }
> +#endif /* IS_ENABLED(CONFIG_OF) */
> +
>  static void __init dmi_scan_machine(void)
>  {
>         char __iomem *p, *q;
> @@ -718,6 +769,13 @@ static void __init dmi_scan_machine(void)
>                         dmi_available = 1;
>                         return;
>                 }
> +       } else if (IS_ENABLED(CONFIG_OF) && dmi_scan_from_dt()) {

Please drop the IS_ENABLED() here, and fold it into dmi_scan_from_dt(), by doing

if (!IS_ENABLED(CONFIG_OF))
    return false;

at the beginning. This removes the need to provide two different
versions of dmi_scan_from_dt().


> +               /*
> +                * If EFI is not present or failed, try getting SMBIOS
> +                * tables from the Device Tree.
> +                */
> +               dmi_available = 1;
> +               return;
>         } else if (IS_ENABLED(CONFIG_DMI_SCAN_MACHINE_NON_EFI_FALLBACK)) {
>                 p = dmi_early_remap(SMBIOS_ENTRY_POINT_SCAN_START, 0x10000);
>                 if (p == NULL)
> --
> 2.51.0
>

