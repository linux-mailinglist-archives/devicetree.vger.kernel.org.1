Return-Path: <devicetree+bounces-69913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 668FE8D1EDA
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 16:31:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 028E6B21863
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 14:31:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFDCE171652;
	Tue, 28 May 2024 14:30:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D941217164B
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 14:30:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716906606; cv=none; b=Urcl7Tj1gVY2dFgkb5GVuS073dXUaOhrtn18uohZM1nvaeXB5+Jkisv8tQzI86lLxwMCJ4dhceKng1zEm9J5b/a6P3RGy4dnW+JhQ2P9umX9CT5NhZrTyTMDi1YX86/S+BIB9TXc9SIMfBbsuACudoyfTrR35vm8cUmlfG4859w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716906606; c=relaxed/simple;
	bh=ZcXigMLGteqUlwYAgiaFCIQuj78vdKhQxQ8JQxQnEgU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KElryz7OlBFB1jdTAborzYs1acYgb9XDRj4F8mJFy75BQO7RQ7LZFRcfb7L5guoeeybTpuC+RrHkd/BSso/kCcrdXY3n+4zMikWbS8b+clyNGTDzwg/PGgHKwu0zuUVl2WYBoZW8maFpPUx249eKdEKjKk5j1eRXjunNefrd7YA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-529597d77b4so1132984e87.0
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 07:30:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716906601; x=1717511401;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XO/EBR7u7D1rXQA6hPAoXV3Vx8lB0mrJvpff18AScB4=;
        b=pYVa+BocYogp+1JkvcDFBhjOsnUeDAj0QzL/JKP5tjuAOGl9lWyFPRkijZAmC+lkjR
         6DxJRCEA56HDIVr1mICLtRzHLid9U4DiRXEfq/dMZxwm1buiyg+cK6HCB6TvK/zuu2ge
         pwDMAsBhucnnOAYQSpZQPtFdHzcxS5GUt1LuO25S1vFmmQ5gsmVYCbF4210KWenH7zmZ
         69bxN61jGnW2QJGEKfzq4wk3sS6ue2bti9n5tTHLds4snV4tyyULW29kZUdjxKB1ntx8
         vp2SZ3fED5Wph2CZIrBxN7KCbcEPB9fQaygs11BqQQJGHd1DAwjxOOZ2Bj5YfzNlEIy3
         +Rdw==
X-Forwarded-Encrypted: i=1; AJvYcCW4hngywzI9jvm/XmWrsTPUI8QF9tvsqZ7Fhgik5YD5+4+Y7k9arLqVLC1oxPeqGKK+15nC9Kos95ge7QNq0y4o9o0Cq56EyxuWdA==
X-Gm-Message-State: AOJu0YzSYHje57JVr69JkdMCCPKSl9JBT8MKlQmdLdLqS2bDcjQ08Zix
	5pYYoNts1SA09RbXOfFxz/HAj+ANX237jGwNxpaT8thNRq82riVtdp5MUFWz
X-Google-Smtp-Source: AGHT+IF3/cxbKBv/uJbk9gnIzpkDidZh5LLoFq4IINORPDiDNyvS+GwcsgtuFkwpZIHOMBT29kggmw==
X-Received: by 2002:a19:6b12:0:b0:522:3551:35f5 with SMTP id 2adb3069b0e04-5296410a584mr6845558e87.14.1716906600815;
        Tue, 28 May 2024 07:30:00 -0700 (PDT)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com. [209.85.208.172])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5296ee4ad66sm957623e87.101.2024.05.28.07.30.00
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 May 2024 07:30:00 -0700 (PDT)
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2e95abc7259so9926731fa.3
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 07:30:00 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXBefTtEdIgvHzKMDq84L75UVdvvoyR9/qvU9Tb+YZzkRICZ5uHAh1purhmue+ZOlc2lJnq/oM6f9Q9QQb5+6xU4ynZ6zJdFYdczg==
X-Received: by 2002:a2e:2a45:0:b0:2e9:820b:c38d with SMTP id
 38308e7fff4ca-2e9820bc6ffmr23998981fa.36.1716906600500; Tue, 28 May 2024
 07:30:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240515234852.26929-1-andre.przywara@arm.com>
In-Reply-To: <20240515234852.26929-1-andre.przywara@arm.com>
Reply-To: wens@csie.org
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 28 May 2024 22:29:48 +0800
X-Gmail-Original-Message-ID: <CAGb2v67cbMwK-FCTBHsHNw1ng1SFiNtG-+Sbjpwi=Bin9iJp4g@mail.gmail.com>
Message-ID: <CAGb2v67cbMwK-FCTBHsHNw1ng1SFiNtG-+Sbjpwi=Bin9iJp4g@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: Fix PMIC interrupt number
To: Andre Przywara <andre.przywara@arm.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Samuel Holland <samuel@sholland.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 16, 2024 at 7:50=E2=80=AFAM Andre Przywara <andre.przywara@arm.=
com> wrote:
>
> The "r_intc" interrupt controller on the A64 uses a mapping scheme, so
> the first (and only) NMI interrupt #0 appears as interrupt number 32
> (cf. the top comment in drivers/irqchip/irq-sun6i-r.c).
>
> Fix that number in the interrupts property to properly forward PMIC
> interrupts to the CPU.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> Fixes: 4d39a8eb07eb ("arm64: dts: allwinner: Add Jide Remix Mini PC suppo=
rt")

Reviewed-by: Chen-Yu Tsai <wens@csie.org>

> ---
> Hi,
>
> I didn't notice this before because I changed the interrupts property in
> the U-Boot copy of the DT, to comply with the old binding, where it is
> actually IRQ 0, and then used that DTB.
>
> Cheers,
> Andre
>
>  arch/arm64/boot/dts/allwinner/sun50i-h64-remix-mini-pc.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h64-remix-mini-pc.dts b=
/arch/arm64/boot/dts/allwinner/sun50i-h64-remix-mini-pc.dts
> index b6e3c169797f0..0dba413963776 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h64-remix-mini-pc.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h64-remix-mini-pc.dts
> @@ -191,7 +191,7 @@ axp803: pmic@3a3 {
>                 compatible =3D "x-powers,axp803";
>                 reg =3D <0x3a3>;
>                 interrupt-parent =3D <&r_intc>;
> -               interrupts =3D <GIC_SPI 0 IRQ_TYPE_LEVEL_LOW>;
> +               interrupts =3D <GIC_SPI 32 IRQ_TYPE_LEVEL_LOW>;
>                 x-powers,drive-vbus-en;
>
>                 vin1-supply =3D <&reg_vcc5v>;
> --
> 2.35.8
>
>

