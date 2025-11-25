Return-Path: <devicetree+bounces-242016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 99EF8C8559D
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 15:17:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2F0853B3404
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 14:17:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED77032548C;
	Tue, 25 Nov 2025 14:17:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A3E422FE0A
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 14:17:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764080248; cv=none; b=las4PeumQYoTljWSkGrUapdafnzkD0G0x1gNOrIrx3VaoAx80Q+nCGRGUnRTTb9aPG33z1CnofPoFN/vFRkYRrV6OSA7iNDTfndj0r1EXzQtc+YW4cSHOKR20/2PasSGcPWqm1Wyz7ZJl0qlrVBeQZmoStVyzEmFYoE4JZhxB/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764080248; c=relaxed/simple;
	bh=/K37xfxWHmn2q59GTOXMsRaLp0zKMUrwRq7iQbAVXlA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AEg0mp/VTkO+zM/Exg+1CfwO0yrQ+tS8uLfBMvqF0hNYkWQGdRnsw6ydvVs8q54Vleek7DoRBY+dxWIGIQwxh3z4sjC2vyyMGImtmCBJRqjuEf+zuIa8lX0tAVHS8AbsorCNCwocN43AIlR+N/SMBP/eEr7343l4ycBzepeXWD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.219.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-8826b83e405so80242156d6.0
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 06:17:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764080246; x=1764685046;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Rpqva75E+/1bzSUnB6Db17eeITC1uo8KnqBCNeKmeC8=;
        b=V65ca7BX+fbRFV0UCUGnYoKeEF1jp5QnfHq1fZT9cIWox9K/r7L/hzbIRo3HTEI3Ft
         rHMcZeZ9KM58r3227/EILnPnNO8wtW7WXpvUjQqmMxki9ux/koPNxEyekJO5F10hMWaf
         K+4C/4TeS/XinAqQlOaBsbINvq9ih75EmiLo2cZFbp5c+A8HLkex3JCKz9d62/g53Dpz
         GNr8KzNyXOPwTBQLijLaXBnap68IijCtzmlklhSVK9MLSXahN/Vg9mtQDqVdAggudDqh
         GwkVoRATwTq02TV5G16fnk+J539dKhndkA+obUWRB9Ydu1S2vgtlohrhYjAP+/WO1fhf
         vtHA==
X-Forwarded-Encrypted: i=1; AJvYcCVWjnEV0EAafYerMlczZjtq8ues6Qi0K7fuNTf5aWhOuqz7X2FhtD6H2dQQI9iR57CpBh7IORbbCKLa@vger.kernel.org
X-Gm-Message-State: AOJu0YyQsc4e7//pIru+iLDRTIM4n6lgV2YTu7DE1heCsxi9FVKBhDYr
	d43+YDU0uMMd+SjcnfLOMVK9LPRYTmV1NRbMXsL6GfNgqOAOvHyx8IDK4L70+jKPI6A=
X-Gm-Gg: ASbGncuiPBJlG3bEHIAslevBY5ZjLKhbINiLLmzNee/e1CB52eMdVCcCat5gQG0l9/t
	65oYAADQRevupbr57NIMcn+WuBpRIjXGddrecOLG58flG4a2gokimkOVB0eBv/u7xG3HL3r9kMF
	V6m0w7avOhp0YSEMyuHWW6RJiM51sFDQMuftmYQKLZr253c3m+SGwdmAes2Q4DGuFY3e/FsOtDh
	QALpPcdc40kxAaeqkdHqAcFLt3Ps8id5WrBD1BvNckYGhpHFQ7DBO3riGcaFIIg/VNOuOtJ4rKb
	kU9Ed9aD8gxReqHepl4rDjYYxghkRkQtnsx4EMFwnjHqbvi4DTRxe1XD2VBBMIu6zc4EHKV5eV0
	/Q2v4y3XWU38603p3uPAaINHwPKxsjq7bSDHAxHvluO3dczSpABPk680FWiSoO6hqJxzrzpNBmf
	PaU0CY1KWGAkM8KEPGNbjBIK/MYN4O5uNmz8LFjxk9HMKMIu6D3KHO
X-Google-Smtp-Source: AGHT+IEEdSFbVHFlP6PzHu9CGyyI520fIZZQA3NH15cy8+FPM0ZOfv+q1iT5b4UoiUzqcnxWOMgWOg==
X-Received: by 2002:a05:6214:21c8:b0:87c:836:8f21 with SMTP id 6a1803df08f44-8847c4ccfd1mr231071246d6.21.1764080245960;
        Tue, 25 Nov 2025 06:17:25 -0800 (PST)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com. [209.85.222.176])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8846e574918sm122781716d6.46.2025.11.25.06.17.25
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Nov 2025 06:17:25 -0800 (PST)
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-8b2aa1ae006so709257385a.2
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 06:17:25 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVmxdnxjzoXyHPUt7A26MYJH5OUFPb8HFN3clFVyUabyHUXiWMNxchd3x69GQYQSTQll/DqZiJzGF8w@vger.kernel.org
X-Received: by 2002:a05:6102:1484:b0:5db:d07c:218e with SMTP id
 ada2fe7eead31-5e1de4a7207mr5657352137.41.1764079835352; Tue, 25 Nov 2025
 06:10:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1763737324.git.tommaso.merciai.xr@bp.renesas.com> <89b6d61854e94966fc9781d5832b6c187c35b4de.1763737324.git.tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <89b6d61854e94966fc9781d5832b6c187c35b4de.1763737324.git.tommaso.merciai.xr@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 25 Nov 2025 15:10:22 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXBbzTeiQJQWuUnJ_rRD1Zo=1TBOzrv4WbvC7whL1=E9w@mail.gmail.com>
X-Gm-Features: AWmQ_blmZJeMsinamgGW4f3qFK-TiajCRRQHceRXLE0egHCuP5sJvvaiID97Ruk
Message-ID: <CAMuHMdXBbzTeiQJQWuUnJ_rRD1Zo=1TBOzrv4WbvC7whL1=E9w@mail.gmail.com>
Subject: Re: [PATCH v4 11/22] phy: renesas: rcar-gen3-usb2: Use mux-state for
 phyrst management
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: tomm.merciai@gmail.com, linux-renesas-soc@vger.kernel.org, 
	biju.das.jz@bp.renesas.com, Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Magnus Damm <magnus.damm@gmail.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Andi Shyti <andi.shyti@kernel.org>, 
	Jonathan Cameron <jonathan.cameron@huawei.com>, =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

Hi Tommaso,

On Fri, 21 Nov 2025 at 16:14, Tommaso Merciai
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
> @@ -938,11 +939,27 @@ static int rcar_gen3_phy_usb2_vbus_regulator_register(struct rcar_gen3_chan *cha
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
> +
>  static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
>  {
>         struct device *dev = &pdev->dev;
>         struct rcar_gen3_chan *channel;
>         struct phy_provider *provider;
> +       struct mux_state *mux_state;
>         int ret = 0, i, irq;
>
>         if (!dev->of_node) {
> @@ -1019,6 +1036,23 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
>                 phy_set_drvdata(channel->rphys[i].phy, &channel->rphys[i]);
>         }
>
> +       mux_state = devm_mux_state_get_optional(dev, NULL);
> +       if (IS_ERR(mux_state)) {
> +               if (PTR_ERR(mux_state) == -EPROBE_DEFER)
> +                       return PTR_ERR(mux_state);
> +               mux_state = NULL;

No need to set mux_state to NULL, as mux_state is not used below.

However, shouldn't you propagate all errors up?
If the mux is not present, mux_state should already be NULL,
i.e. IS_ERR(mux_state) would be false.

> +       } else {
> +               ret = mux_state_select(mux_state);

This causes a crash on R-Car Gen3 and RZ/Five, as mux_state_select()
doesn't handle NULL pointers gracefully yet.

Adding a check like

    -       } else {
    +       } else if (mux_state) {

fixes the issue.

> +               if (ret)
> +                       return dev_err_probe(dev, ret, "Failed to select USB mux\n");
> +
> +               ret = devm_add_action_or_reset(dev, rcar_gen3_phy_mux_state_deselect,
> +                                              mux_state);
> +               if (ret)
> +                       return dev_err_probe(dev, ret,
> +                                            "Failed to register USB mux state deselect\n");
> +       }
> +
>         if (channel->phy_data->no_adp_ctrl && channel->is_otg_channel) {
>                 ret = rcar_gen3_phy_usb2_vbus_regulator_register(channel);
>                 if (ret)

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

