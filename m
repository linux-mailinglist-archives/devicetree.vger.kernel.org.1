Return-Path: <devicetree+bounces-222475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE291BA95FF
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 15:41:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 383E07A566D
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 13:39:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E0C03064A4;
	Mon, 29 Sep 2025 13:40:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com [209.85.217.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D47B2D0610
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 13:40:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759153258; cv=none; b=VshzafOos1cZj4H5IRcZtYUBt5WEHJd6J7V6RFNmSouA2i6iEe34m41C/utFJhOPmXwfjNt2x+dBjsjPvfIgwwOb0m/3Qn5jdwj/5DcgVX95KqxCFSUVGftCiiImTtefGgZGXONHp2dNI5xaVFS4iT3xCqsNw3E6nG0QFE7riXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759153258; c=relaxed/simple;
	bh=Tp/+PM9+Sy05Cjhgu9npI9TL9LauZ+N9nnhGZhAvrvk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=po7if5yA/cjJ6uZ07dRMj90lOWYz64jAYh8yoTAvJJrQqx85TjWefnCzDV/NGSH7d/T+sCyWSS/g2EpaV4IQ9Yf0V2IqgZHZtT7YHRkdpg7NPvmo+M9jXfdDpxz4F4cLnLEtLzq6FXvHJd4wQYm0vOqQnJcWqdFIHMB2B4mub14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-55784771e9dso2398222137.1
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:40:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759153256; x=1759758056;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qm08KR5H4STadXUKbamNIFJgAtOHPpWf/WM5mQqKzbo=;
        b=YKsQDQZKBkvQelpcwEnhqjBb1myk1iH6Z1FRT5tcuAjvedj+ijATE1irTUxohRlXKi
         J3BaSg5QzFl6qF4e9/IWGHcT+qqnQRCeTKgnDHGKubNGwsm3WsHxAebHSyEROujr4u65
         ineRoJDQYAihTAREi11CpUqvd+cTljjgTyxca3ews0Qtx1L3Tdc1A9HGQMs4dyvtb6WL
         H/eYa5oe+83/EfGfE9qlw09h2QcJO0/QQhqwP8l9CGQoOIRUnLDzlQJHqWwHG8MAjjc5
         nQgb6def7r6quYavzIsbxmEcSjbLx5xI8WJBNTEGwLuLd+riUmd/VSpW/a+/F2Raawui
         RHaA==
X-Forwarded-Encrypted: i=1; AJvYcCV+bqlbH2BR5rUsjQEA4vHICkI4Ke3Y/aA2ZVVT2huF81Q1v8MnVfguNnk1NKxzreIT5vx4a7DUwoAF@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5QjMX69zAHuh9Isy9saeIspxDxGNXdMK0cGKals+5G5g/IFVP
	qQ1Btb0bba6H4u8lxSKKzRm0+WsqFasg/C3DfQ71jSXZtbQhY2HW+pRyDg5Xqohf
X-Gm-Gg: ASbGncsI2xBRPhWegdVg5ZTaHbGwNuVgAx4YpnHK1muShYtJXoDlDWnSwrSTWzQP8ln
	qbyfVptWq3TyvtJY6xqLJ4BScxSL84t6KORn9eSFWb839SIU3Jg+lyaxtburqvIVbnWeVnj8AFf
	bN7IO65chjmgRG2sOnQxtxkXZ3wBZdedQPU8gTJvzTL5PtRTgmkpjLJths67m2J0QW9oGAJsWFa
	MHZuzYVTFzu8s1xj7xDiShIbmfkC/kWY6jBYJxcouBGTOOuMn7gCy9e9T97A9GnOoSIQ5+56Qxs
	G/zbzvLqd2JEJACmYMeo8qvzwUlLNDeSigmC4k/zX/Cdr9ImxXp3zDtsjEQ7NR10b9mELRAmX2I
	LDjPrnGrwR/zAVrWf5MDsoqvc77WyTtYUomzTJFU491VmthrVRRnXnfeMXdicN7Vclw/rhnMi51
	k=
X-Google-Smtp-Source: AGHT+IEvybHIQ8i2fq6+B1mx7HZDgvK7NybNwk3T6wppqQzfd2XKvbnDfMt9AZr3g70CBRHcUMlfLQ==
X-Received: by 2002:a05:6102:26d6:b0:535:af8c:ba68 with SMTP id ada2fe7eead31-5acd453a83dmr5613230137.33.1759153255559;
        Mon, 29 Sep 2025 06:40:55 -0700 (PDT)
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com. [209.85.221.179])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ae3182cbf0sm3374669137.7.2025.09.29.06.40.54
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 06:40:54 -0700 (PDT)
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-54bbaca0ee5so581588e0c.3
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:40:54 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWagDdfKxgKdc4g8n8v5lsFvg2S3qYAEbbx/X9UfqnJPIlIC6ww2ApMX7hmTCT66QtXVjIYhzth/Y6z@vger.kernel.org
X-Received: by 2002:a05:6122:512:b0:539:1dbf:3148 with SMTP id
 71dfb90a1353d-54bea190110mr5792338e0c.2.1759153254117; Mon, 29 Sep 2025
 06:40:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250929093616.17679-2-wsa+renesas@sang-engineering.com>
In-Reply-To: <20250929093616.17679-2-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 29 Sep 2025 15:40:43 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWrMB5ZdRgX0BwLJeOgJPecxm_kw2J=RcFegdZgtHwtYA@mail.gmail.com>
X-Gm-Features: AS18NWBeAgZ5zJOTSMBe1yfaG4XRAU4Ts8CPoXs-R5ZbYP7bbF2osO6h6YMQhPw
Message-ID: <CAMuHMdWrMB5ZdRgX0BwLJeOgJPecxm_kw2J=RcFegdZgtHwtYA@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: renesas: gose: remove superfluous port property
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, 
	=?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
Content-Type: text/plain; charset="UTF-8"

Hi Wolfram,

CC Niklas

On Mon, 29 Sept 2025 at 11:36, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> 'bus-width' is defined for the corresponding vin input port already. No
> need to declare it in the output port again. Fixes:
>
> arch/arm/boot/dts/renesas/r8a7793-gose.dtb: composite-in@20 (adi,adv7180cp): ports:port@3:endpoint: Unevaluated properties are not allowed ('bus-width' was unexpected)
>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Thanks for your patch!

> --- a/arch/arm/boot/dts/renesas/r8a7793-gose.dts
> +++ b/arch/arm/boot/dts/renesas/r8a7793-gose.dts
> @@ -373,7 +373,6 @@ adv7180_in: endpoint {
>                                 port@3 {
>                                         reg = <3>;
>                                         adv7180_out: endpoint {
> -                                               bus-width = <8>;
>                                                 remote-endpoint = <&vin1ep>;
>                                         };
>                                 };

I think r8a7791-koelsch.dts has the same issue, but currently it is
not flagged by dtbs_check because adi,adv7180 uses slightly different
and less modern DT bindings than adi,adv7180cp.
However, according to the schematics both Koelsch and Gose use
ADV7180WBCP32Z, so r8a7791-koelsch.dts should use adi,adv7180cp, too?

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

