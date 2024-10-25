Return-Path: <devicetree+bounces-115694-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 278819B0607
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 16:42:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 593811C20EEC
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 14:42:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 969CF1FB8AD;
	Fri, 25 Oct 2024 14:42:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com [209.85.166.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ECAC7082E
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 14:42:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729867360; cv=none; b=fclgo5vdTScnMT5VfBoXq2lLn6og8jXF3GGFBF1R+y+SR3SCspEOsPmArdufHCxTcz+Y/sDKJu9+ZHx7kiGkzP2yYcGEuv28bpKdi5TcZo0cmFCJHSxBLKZNZEGoRBziN0z+WEyVspb8y2ZRQxWuMODuelFB7ph0+QbysUc0m0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729867360; c=relaxed/simple;
	bh=n95HD8E2k6r9Hlxwi+aauSNeb77zvut1Fqom0wTaSv4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AlAMEwBw4lczZHedS+VbvJY2H+K3yJ4t47d1HkYvX9u7WERrkAgWB4YRAxg77CzqsR9VMiRbmK6iFA+FnGenAvqEK4Caext9MjpPr5ejB7mwtJXhD3L3V6eSaKc9k6NIHZ53tL+tpk11PQmLG9FuzSBFwpyjKNaTOOX7EWabR1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.166.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-io1-f52.google.com with SMTP id ca18e2360f4ac-83a9ca86049so84261839f.0
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 07:42:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729867354; x=1730472154;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Vzo4e/k7vyxD+TY11vnCaJqkkqd2B+yShJL3uWcZknQ=;
        b=aL5Pjp3H1Z8o6VmOBot00Hehqp7VZv3tMIAwsbisr8d4LDjJSftSsxaS4Zo2E3MQtC
         hgYXCwVwmG1tXMfeHo0Us/9i8NFHWLlEx6H5YiFYXkGHGR6e1//hq66vzCvAQwYy++a8
         SZeatNeVunfO2V/2QZJ0HUBN2PkzQbKQdb6YUBbgY0o5fznT9LyBNoBlaQV9d0EEjYTY
         D18/07vDeHyvtw+sosraAQ7QIqOqzLmrCqKfvnTB8YMuV88LXIPstR+tTctCpFYZzSeK
         Ky5x+Q1EfgvSM+pOhtEPG2uqgFKV1ZsByL2lvySw96jZJor9RAWJ2vwKjELOhFm6QpT8
         jcQg==
X-Forwarded-Encrypted: i=1; AJvYcCWeQ7xyuoGzeeBuQjtac5yA5N+f4WcV15lDhDrsEmWYuKuPqldqNKzlZf0VjkELN1rTG5MfOL8zpgj9@vger.kernel.org
X-Gm-Message-State: AOJu0YzBD6U06qIF4uF3caQK9+6b/QpM/QivSmb8xlokxtStSu4MieTq
	7duQdUgW6KkSpuOIFzUtCK7pNugQBpv8NKy7KDzd8nIIVFZAQETMYIuRmejL
X-Google-Smtp-Source: AGHT+IFM6/jEPxokc18n5sEBvvAEhJXYRmfWfYj1IYPXuHKVaFyETgaI2nzxJU6/kNJvbGGzCSUT3A==
X-Received: by 2002:a05:6602:6d18:b0:83a:a9e9:6dc9 with SMTP id ca18e2360f4ac-83b041955e4mr668532839f.12.1729867354208;
        Fri, 25 Oct 2024 07:42:34 -0700 (PDT)
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com. [209.85.166.42])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-83b13853dd1sm24855439f.43.2024.10.25.07.42.30
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2024 07:42:30 -0700 (PDT)
Received: by mail-io1-f42.google.com with SMTP id ca18e2360f4ac-83a9ca86049so84257639f.0
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 07:42:30 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXIgS9Yhix6l+uS4CQS+HPgg8MhnpVwP/vqu73KvIpRQJuXvDFnh3nQt7mOHMuTATBEgCUuN19xm/Od@vger.kernel.org
X-Received: by 2002:a05:6602:1490:b0:837:f951:38ce with SMTP id
 ca18e2360f4ac-83b040307c1mr597475039f.8.1729867350576; Fri, 25 Oct 2024
 07:42:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241007222916.19013-1-andre.przywara@arm.com>
In-Reply-To: <20241007222916.19013-1-andre.przywara@arm.com>
Reply-To: wens@csie.org
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 25 Oct 2024 22:42:14 +0800
X-Gmail-Original-Message-ID: <CAGb2v65oHDkNG4dp3+Zh-wmMTMvRnBNPGLiGi68WGXzSR+64=g@mail.gmail.com>
Message-ID: <CAGb2v65oHDkNG4dp3+Zh-wmMTMvRnBNPGLiGi68WGXzSR+64=g@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: cubieboard4: Fix DCDC5 regulator constraints
To: Andre Przywara <andre.przywara@arm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 8, 2024 at 6:30=E2=80=AFAM Andre Przywara <andre.przywara@arm.c=
om> wrote:
>
> The DCDC5 voltage rail in the X-Powers AXP809 PMIC has a resolution of
> 50mV, so the currently enforced limits of 1.475 and 1.525 volts cannot
> be set, when the existing regulator value is beyond this range.
>
> This will lead to the whole regulator driver to give up and fail
> probing, which in turn will hang the system, as essential devices depend
> on the PMIC.
> In this case a bug in U-Boot set the voltage to 1.75V (meant for DCDC4),
> and the AXP driver's attempt to correct this lead to this error:
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> [    4.447653] axp20x-rsb sunxi-rsb-3a3: AXP20X driver loaded
> [    4.450066] vcc-dram: Bringing 1750000uV into 1575000-1575000uV
> [    4.460272] vcc-dram: failed to apply 1575000-1575000uV constraint: -E=
INVAL
> [    4.474788] axp20x-regulator axp20x-regulator.0: Failed to register dc=
dc5
> [    4.482276] axp20x-regulator axp20x-regulator.0: probe with driver axp=
20x-regulator failed with error -22
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> Set the limits to values that can be programmed, so any correction will
> be successful.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Maybe

Fixes: 1e1dea72651b ("ARM: dts: sun9i: cubieboard4: Add AXP809 PMIC
device node and regulators")

What do you think? I can add it when applying.

ChenYu

> ---
>  arch/arm/boot/dts/allwinner/sun9i-a80-cubieboard4.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/boot/dts/allwinner/sun9i-a80-cubieboard4.dts b/arch=
/arm/boot/dts/allwinner/sun9i-a80-cubieboard4.dts
> index c8ca8cb7f5c94..52ad95a2063aa 100644
> --- a/arch/arm/boot/dts/allwinner/sun9i-a80-cubieboard4.dts
> +++ b/arch/arm/boot/dts/allwinner/sun9i-a80-cubieboard4.dts
> @@ -280,8 +280,8 @@ reg_dcdc4: dcdc4 {
>
>                         reg_dcdc5: dcdc5 {
>                                 regulator-always-on;
> -                               regulator-min-microvolt =3D <1425000>;
> -                               regulator-max-microvolt =3D <1575000>;
> +                               regulator-min-microvolt =3D <1450000>;
> +                               regulator-max-microvolt =3D <1550000>;
>                                 regulator-name =3D "vcc-dram";
>                         };
>
> --
> 2.46.2
>

