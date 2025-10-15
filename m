Return-Path: <devicetree+bounces-227081-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C623FBDE7BE
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 14:32:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B63EE4EABEC
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 12:32:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98E15EEDE;
	Wed, 15 Oct 2025 12:32:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8506339FCE
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 12:32:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760531560; cv=none; b=JwXSXpp5S+TC4TqmF5Ptfx+AfQ0A8RCfQolLzDBKNz9NUIYPGigvD3mE51e/kinjjDGPFdkwNVzlykfPX8XBcJgzuT7NtH0Y20TIaA5soQlHGkrt43sYK5pMLjW6oLnQVcY3ZrOXv0K+NhtYEL0TJQrlx3SNJEkd6Dx9E/ArNVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760531560; c=relaxed/simple;
	bh=F3+IvQb4W9S8ixwOF5v64ZZca7g5rM9zG365bQdRABs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=q49bByTS7/VK2pu/aUy2hA+a4/RD20ithMc+L3AXLz6zw0EUuIrijmn0SqDO3EBITFf3JifiqL07KTTWqCwO6CmP7biwcflKRdKg4ND3+GSY3178+NQM+eGHl3N+J+wL8rEB6jdXroJIkc6NQyBXmVUqKMEmSBDZb9ZBl11CqTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-59d576379b9so2529275137.1
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 05:32:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760531557; x=1761136357;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jsq/YX5JWSVdrkyLs2k0CIlbdczOCem463f+BcrDR6U=;
        b=cP/c2YbHvLA5i54dMpJmZwByncBfCi/9Hl9VQJq3XeGMVa1B663BcVDTP19dDjROff
         LDJvgmKERzRDrDWF2jJGpTk/cFSTiEyLlYIn1UJvyxey8opf0pAwQKUrHXseGs2fJhGH
         DaKbrBV+vBolp9QoZ4FR3Sfq/vpYTH8R9TUKioRDV/6k/1jOlRmPXkBY6EQG7t2E/1nD
         04zDELTjqxWbc5y/o6zaEsz2UIiW7WTTdcSwwPFcsLojRUzVs359UHodguJsx7yg08o2
         VG1K9Xamw26iT5rjrOuyVcdCbyG272d/OH71eB2+POEDrvha4d90mpb7ouq+ZtAUv/Wt
         z/FA==
X-Forwarded-Encrypted: i=1; AJvYcCWoxUweVWi+XukoGwNaXYWwZD/cCbZjV5FvDHdQ8mbODkZ46GYHjVIInrcPolHyilpXVm6/480YctbA@vger.kernel.org
X-Gm-Message-State: AOJu0YyOCZPzoaGkUPjoDlpXdcKqSBLSj/4HX2o1+M3xkS/yPZo5OM3M
	xRqa2fr6L5zdgkpgWG5RVsElOqxkKBi2kXNnWf4IhyIonkjLYoychWiL/P6F5l+G
X-Gm-Gg: ASbGncv5avi2y5ESFDZ2gk6PGa3KL6BlF9dnbhlMS+RDv3cv3UPJtr6GsLHrMhi3oeI
	iB+TH/cP5uFzptG7T1wajQQTu+KGXesmJByuyYrkFXv2pGHadrOz1sWNebWjP+9OBd2o6OnL64b
	hzakxW8/aVjuPXxkT1+i95cHbxOg91sA7CarUs9AnclzauZjYPRAvVThkoZpxmii4bkRI7KOBM2
	R17EF4dPQvaZVaHcupxohaV46MQczgXH/0a4WXc8mHzELNWoHUDnP1QmBF8s3D5FVL28FBbUaDh
	SoR9S0TezjLZlTUbATwP7xOy4CGOn0hY8s5o3/Ckdd3wpSs5nm78Bc009sGvAlli4KBrOP2GmAq
	jgscEm6RbGCYdVDr4DzN5iGICMxZL94I7OGIgcY9uzuEzzVdPCUJxqMuuW06BiAzep+1MUvRbRL
	vi+3MWqEQvVevjPA==
X-Google-Smtp-Source: AGHT+IHENP7d9QS18NGG3sc1Y9JHmhBEgVRurEkmQpl5pWZAPZbcnwsh7eGuGW9euvwot8b2L2RiRg==
X-Received: by 2002:a05:6102:2c16:b0:5d6:6e6:e097 with SMTP id ada2fe7eead31-5d606e6e0c7mr6258955137.33.1760531557067;
        Wed, 15 Oct 2025 05:32:37 -0700 (PDT)
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com. [209.85.217.53])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5d5fc4e9e4csm5430431137.0.2025.10.15.05.32.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Oct 2025 05:32:36 -0700 (PDT)
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-5d40e0106b6so2959232137.2
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 05:32:36 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVIlAod/v4RY2T+qJA9cKS2ADQZ0sPUShWgxMRgl4dMwZ2za7Yokc2rmjXzsxAO6ZS0UK+SOSEPRCU0@vger.kernel.org
X-Received: by 2002:a05:6102:2928:b0:520:3f1a:c520 with SMTP id
 ada2fe7eead31-5d5e2215305mr10260146137.7.1760531555963; Wed, 15 Oct 2025
 05:32:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251010-kakip_eth0-v1-1-0d8fdcbceb9a@ideasonboard.com>
In-Reply-To: <20251010-kakip_eth0-v1-1-0d8fdcbceb9a@ideasonboard.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 15 Oct 2025 14:32:25 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWZD1m6t8MnYTA83RV=h9G9o6M3KSZjO32rRjOpz6px+w@mail.gmail.com>
X-Gm-Features: AS18NWDeh4w0XkIwoEhkJhHpo06vBsxdw2ZvqMJlE0ZOyMbdKtJOMIMuKWhSl0Y
Message-ID: <CAMuHMdWZD1m6t8MnYTA83RV=h9G9o6M3KSZjO32rRjOpz6px+w@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r9a09g057h48-kakip: Enable eth0
To: Daniel Scally <dan.scally@ideasonboard.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Daniel,

On Fri, 10 Oct 2025 at 13:11, Daniel Scally <dan.scally@ideasonboard.com> wrote:
> Enable the eth0 node and define its phy.
>
> Signed-off-by: Daniel Scally <dan.scally@ideasonboard.com>

Thanks for your patch!

> --- a/arch/arm64/boot/dts/renesas/r9a09g057h48-kakip.dts
> +++ b/arch/arm64/boot/dts/renesas/r9a09g057h48-kakip.dts
> @@ -50,6 +51,33 @@ vqmmc_sdhi0: regulator-vccq-sdhi0 {
>         };
>  };
>
> +&eth0 {
> +       pinctrl-0 = <&eth0_pins>;
> +       pinctrl-names = "default";
> +       phy-handle = <&phy3>;
> +       phy-mode = "rgmii-id";
> +       status = "okay";
> +};
> +
> +&mdio0 {
> +       phy3: ethernet-phy@3 {
> +               compatible = "ethernet-phy-id0022.1640", "ethernet-phy-ieee802.3-c22";

The first compatible value corresponds to a Micrel KSZ9031 Ethernet
PHY, but according to the block diagram and the picture in the Kakip
H/W Quick Reference, the board has a Microchip LAN8830 instead?

The rest LGTM, but I don't have schematics to verify every detail.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

