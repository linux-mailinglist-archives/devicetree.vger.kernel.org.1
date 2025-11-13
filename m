Return-Path: <devicetree+bounces-238302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 14B4FC59BDF
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 20:28:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 8DCD13492B5
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 19:28:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6D6E3195EB;
	Thu, 13 Nov 2025 19:27:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 684C7310785
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 19:27:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763062079; cv=none; b=Aos9GH1/Da5qzcd9auXnb8yDB4qiVEcMZNnzUeXJcrj9VYGftJTpqcoBxABw7cLozqKXn1v2Zer+jcBIcJ31K8wDi+G4FjmQUgq9ZGnzy2SD+Woz3hZdqM1QzH74XjjdeufdFeofaajHf5oy+PfDDZpZS+ovJxmncJKpvWKS+GY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763062079; c=relaxed/simple;
	bh=/zYSzHIQGXXRW4bXCA8LFqV7xaT09/SFuXf711/dyz4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Xm25WU88KRi7OpwmdvSUpkfO5mOcfzGSZzKSHhKAHx116TSLoUi7MruX50k2/JBlVJW1iHALKR62a7gV69HrHEYwof4yrPZnbL8PsFWdI7VjY5UdlnZ6+JhXa6B8bwTNAuOABBt7gKMIW5A1gLTLDbAptsYNiW2WFFdg4EEsLoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-5de0c1fa660so412321137.1
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 11:27:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763062075; x=1763666875;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dMdRBCiOsnpuNgCxcScvg7uDy+Va+eLC4BNnAa1aJwg=;
        b=ZAlfxRGbWHIbBDufSdNwWuYml9BeGafsAT9kwMhp3EodPIYgry4XOKiuNdqmcDh0XJ
         hGMms8Y4wa0g9YpQdVRjKHbOhJeU9W+HMpdBEIUJg4ZsCnZ1axX7X22u/KSNHCtPdQUs
         S5PWE7O5A5BznbjofaMCbKCA5wZ4ph3W6UHx6neIAdE1Fnn4YwyQpHAR65svoJR5onK3
         ak5IWHv9groWQppOCpVHRe8uMWnVpZxAu0DL4N2dNT8LLFl0RZDeGVYZHLpzLlGHTHw4
         5XjMBb24Q3kaC37GrY46H5H7MFDw0avDUFrPzw4WgVIke4KzLNq7cOQtQYFvM6BL/Zwx
         fU/Q==
X-Forwarded-Encrypted: i=1; AJvYcCVNWf5bhwikVjdZZe33DSfjcFTI0P/TMtfk04iHvdepjXKs7BGsy5Y6W+fW/qOmLUjv29PPOWauCLRi@vger.kernel.org
X-Gm-Message-State: AOJu0YxwvyW4KxhwolkgDoFEzoY3a7XejEGYNWbaBLuBElF2rAjvTAbw
	75utaFkYOUvDk0lPr7anUss8mSvxKhv2JTDeabWmdBSRlpA03+TdAsoUbkiKbv6lsTA=
X-Gm-Gg: ASbGncsHFIACOEByY+/AlgCiUes29XhXF7/+NmBuNMtcWJ7SahAhZUck+Kp3S8q+sYB
	7dSy/wcSDeQUMsx2rmsgw7ioJSewZt+TCqCsroAfmCVFZ04iupj0/aLKO/8b115uQoPxLq+RIzA
	VfliwhKWTfORbzE4R+aX9O/Pv94dc/bqHH7eI1kqXXGyTD9JRdESN3u1HJF2HZehm6mRPdUa0ap
	yW9Hw3AxRPPRsXb0msNbOm5vKq3q7ceeh8goFgQLB09rQ4z9E1SQg46WWrj7+tq3vcQxHNSmLfO
	0fr1xbstUaMIvymRW+Lbb1pGvzou5+dl7Qcru6ej2HTRN5usEO8O2UzCuwzqPEnX+rAR1aQsbu3
	ZV29Lf+XDXRgAl0BgLjtikscgLBEPiFyCZPV6yDZrQVpwf7Eavylkh1pn197iHxWEW2YGJVdJ2+
	hetqTPgqxjOgJzLTf8Z1nRedkYqxXGvQpi/7Q3yA==
X-Google-Smtp-Source: AGHT+IGMCMkHDIKbgIjatZ8pp+UVBhrtv+Q2QDA+Q7j8R0raciKISBumzGlM2Lno9gjWWm1B3CRQ5g==
X-Received: by 2002:a05:6102:5808:b0:5dd:b288:e780 with SMTP id ada2fe7eead31-5dfc533e040mr609660137.0.1763062074931;
        Thu, 13 Nov 2025 11:27:54 -0800 (PST)
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com. [209.85.222.42])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5dfb729fbb3sm987526137.15.2025.11.13.11.27.54
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 11:27:54 -0800 (PST)
Received: by mail-ua1-f42.google.com with SMTP id a1e0cc1a2514c-93723104137so381595241.3
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 11:27:54 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUgw4/0rvjho7FdlX3Sr26FI7GiXeysB0+1fQqz7gWJHTpGvT+8QTlzD10G8hNuQXyx2LEhCELAXgTC@vger.kernel.org
X-Received: by 2002:a05:6102:4420:b0:5d5:f6ae:74b3 with SMTP id
 ada2fe7eead31-5dfc5b976c3mr493792137.39.1763062074252; Thu, 13 Nov 2025
 11:27:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1762773720.git.tommaso.merciai.xr@bp.renesas.com> <160371c0c5edae1fd3d66355f0b0afdb34de9387.1762773720.git.tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <160371c0c5edae1fd3d66355f0b0afdb34de9387.1762773720.git.tommaso.merciai.xr@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 13 Nov 2025 20:27:43 +0100
X-Gmail-Original-Message-ID: <CAMuHMdW3+78AL5F09PU-cENJAqma=QCTmRCSe0KzANK08QJRmA@mail.gmail.com>
X-Gm-Features: AWmQ_bkZqJFa3uvpGVKoyugpRyy1_JKWhk6NdNKCvuhef6cwYY_WpHE4vNiMjpE
Message-ID: <CAMuHMdW3+78AL5F09PU-cENJAqma=QCTmRCSe0KzANK08QJRmA@mail.gmail.com>
Subject: Re: [PATCH v3 10/21] phy: renesas: rcar-gen3-usb2: Use mux-state for
 phyrst management
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: tomm.merciai@gmail.com, linux-renesas-soc@vger.kernel.org, 
	biju.das.jz@bp.renesas.com, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Peter Rosin <peda@axentia.se>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Tommaso,

On Mon, 10 Nov 2025 at 13:10, Tommaso Merciai
<tommaso.merciai.xr@bp.renesas.com> wrote:
> Add support for selecting the phyrst mux-state using the Linux mux
> subsystem in the R-Car Gen3 USB2 PHY driver. This ensures correct hardware
> initialization and integration with systems utilizing the mux-state device
> tree property.
>
> A temporary wrapper for optional muxes is introduced until native support
> is available in the multiplexer subsystem.
>
> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>

Thanks for your patch!

> --- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> +++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c

> @@ -948,11 +949,27 @@ static int rcar_gen3_phy_usb2_vbus_regulator_register(struct rcar_gen3_chan *cha
>         return rcar_gen3_phy_usb2_vbus_regulator_get_exclusive_enable(channel, enable);
>  }
>
> +/* Temporary wrapper until the multiplexer subsystem supports optional muxes */
> +static inline struct mux_state *
> +devm_mux_state_get_optional(struct device *dev, const char *mux_name)
> +{
> +       if (!of_property_present(dev->of_node, "mux-states"))
> +               return NULL;
> +
> +       return devm_mux_state_get(dev, mux_name);
> +}
> +
> +static void rcar_gen3_phy_mux_state_deselect(void *data)
> +{
> +       mux_state_deselect(data);
> +}

If CONFIG_MULTIPLEXER is not set (e.g. shmobile_defconfig):

arm-linux-gnueabihf-ld: drivers/phy/renesas/phy-rcar-gen3-usb2.o: in
function `rcar_gen3_phy_mux_state_deselect':
phy-rcar-gen3-usb2.c:(.text+0x37c): undefined reference to `mux_state_deselect'
arm-linux-gnueabihf-ld: drivers/phy/renesas/phy-rcar-gen3-usb2.o: in
function `rcar_gen3_phy_usb2_probe':
phy-rcar-gen3-usb2.c:(.text+0x7d0): undefined reference to `devm_mux_state_get'
arm-linux-gnueabihf-ld: phy-rcar-gen3-usb2.c:(.text+0x7fc): undefined
reference to `mux_state_select_delay'

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

