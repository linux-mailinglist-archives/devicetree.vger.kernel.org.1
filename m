Return-Path: <devicetree+bounces-32399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E3482F383
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 18:52:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AB3A5285FD1
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 17:52:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4AF41CD1B;
	Tue, 16 Jan 2024 17:52:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zEBGy0AC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 620A21CD01
	for <devicetree@vger.kernel.org>; Tue, 16 Jan 2024 17:51:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705427520; cv=none; b=qz2gxwnXlE40QxztO+GjpSsG13YQ4q69MM0PpnnP0vS55mVJPvnoOcQHS+s1dEw/BGrohDt+McuTXvpxjr5sllFCiDzke5hur4fE7GDkvnTUHWk98sUTY1hwR4BiSvetdKsMhCYBzwFDwq6UQ5qIrxDzGmN1prHjhcaa2ZvN7wI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705427520; c=relaxed/simple;
	bh=2sDRBRp+27dyz+lLnzucjXQfgDv3cCd+bHegl4Kf514=;
	h=Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Google-Smtp-Source:X-Received:MIME-Version:
	 References:In-Reply-To:From:Date:Message-ID:Subject:To:Cc:
	 Content-Type:Content-Transfer-Encoding; b=DBAGKET1R7GSY843p4ncu25mgHNPmwL3CDKF2tDrDWqGPdJOweezAtOMe9W8mV3hlsnm0nt1nGLH1bLc2EcW0H406kV8H1L9BMHoHpyff37phkMVcAoHvTugZeVWDlYSebsRh8ILv0gleRkjAlR/zVsiGskWTAYjsNm4leTS/rE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zEBGy0AC; arc=none smtp.client-ip=209.85.215.170
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-5cddfe0cb64so4365057a12.0
        for <devicetree@vger.kernel.org>; Tue, 16 Jan 2024 09:51:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705427518; x=1706032318; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JLkbVRAk95ipntvmjbPNO29427ChHJt1Wds4CgPJfoc=;
        b=zEBGy0ACJFvND8Gp4XXtSyoH1DfPa2s2JTE9FOZx9DjrJAZ+W3fEUtEoRMZeO9fV3o
         vWoqziTVjrpByNLuP93DepPziNNCTviZnpjHzNRA+zWzROwjpmpea2+PRO67GDU62/Xn
         cy3jvgGydup4ISRwTqKKOH3+223ABUoSQuUDgvW3LjFYkKp9cZjxKwOZBIqmlBZJdOrE
         MATXC60KMjufrRQpseqS0MuChzKf9HhRdvpz+tk/lQlq23Qs0QD45LHNjNnbOa0QXN0W
         Ntcvfhm9WydD/MAqkW+LWCmfM9wrmELBVg1CZKfBfALhSspSiGXgIhL7XmvUqeNU4Or5
         vYIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705427518; x=1706032318;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JLkbVRAk95ipntvmjbPNO29427ChHJt1Wds4CgPJfoc=;
        b=t3140m6ViwAbIkQIvgjgn10ayPH1v8AFnyqEJUgumZKOkhh1qS0y4nQfYwfpRqt2q+
         ajpYYet4GwozINIW9fkmYsWBvwFL35pChLeAoVAGvv62X90/WxOkjdQ0pluJ7B+BE/fF
         drCfRPRkvfOhu4YlS8fBGi8Ib+n7xwqA27yTdMpYfVZz0JSc/pQMmRuXW/iUQ9SKnt5V
         gIhtjXEf3frL3zofddUojbyEESiSvx4KDpX+Cv0D+CMcQUU7Tpv7tdq+enpmby1QGn4p
         1njeBJpereQtxiTEskjM+JOrYcseq0aRIKnfZfv9Ft+wkGryPR5bJ6lZ7lNpnn/icwlO
         o8Ig==
X-Gm-Message-State: AOJu0YwvWC5WBRE7YwRJ7v4xNJb2JM9RbyBpcCoBHvhxM1SeqK+Juj6C
	o5bkllPkVoBwar/8rZ8LcrFyqE4drGPAfrqKHDaTnrHfQF0eCA==
X-Google-Smtp-Source: AGHT+IGmhFr1Xzziwh8GD2Vq3OCA1ZM67LySAGd4/+lGJnEIaSy0yYNelNXzR4oJcDfV7SY2HFly/HJIoiYFK8jnXC0=
X-Received: by 2002:a17:90b:1649:b0:28d:bec5:a5be with SMTP id
 il9-20020a17090b164900b0028dbec5a5bemr3687886pjb.68.1705427517801; Tue, 16
 Jan 2024 09:51:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240109125814.3691033-1-tudor.ambarus@linaro.org> <20240109125814.3691033-7-tudor.ambarus@linaro.org>
In-Reply-To: <20240109125814.3691033-7-tudor.ambarus@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Tue, 16 Jan 2024 11:51:46 -0600
Message-ID: <CAPLW+4mYMqZUyeSt0Ws8jcuQw2s7a2h8kqCJ2CAbVv7nV4zBTQ@mail.gmail.com>
Subject: Re: [PATCH v3 06/12] tty: serial: samsung: add gs101 earlycon support
To: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: peter.griffin@linaro.org, krzysztof.kozlowski+dt@linaro.org, 
	gregkh@linuxfoundation.org, mturquette@baylibre.com, sboyd@kernel.org, 
	robh+dt@kernel.org, conor+dt@kernel.org, andi.shyti@kernel.org, 
	alim.akhtar@samsung.com, jirislaby@kernel.org, s.nawrocki@samsung.com, 
	tomasz.figa@gmail.com, cw00.choi@samsung.com, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-serial@vger.kernel.org, andre.draszik@linaro.org, 
	kernel-team@android.com, willmcvicker@google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 9, 2024 at 7:00=E2=80=AFAM Tudor Ambarus <tudor.ambarus@linaro.=
org> wrote:
>
> The entire bus (PERIC) on which the GS101 serial resides only allows
> 32-bit register accesses. The reg-io-width dt property is disallowed
> for the "google,gs101-uart" compatible and instead the iotype is
> inferred from the compatible. Always set UPIO_MEM32 iotype for the
> gs101 earlycon.
>
> Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

> v3: collect Peter's R-b tag
> v2: update commit message
>
>  drivers/tty/serial/samsung_tty.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>
> diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsun=
g_tty.c
> index a81b61953a28..fed50423b7c1 100644
> --- a/drivers/tty/serial/samsung_tty.c
> +++ b/drivers/tty/serial/samsung_tty.c
> @@ -2812,6 +2812,17 @@ OF_EARLYCON_DECLARE(exynos4210, "samsung,exynos421=
0-uart",
>  OF_EARLYCON_DECLARE(artpec8, "axis,artpec8-uart",
>                         s5pv210_early_console_setup);
>
> +static int __init gs101_early_console_setup(struct earlycon_device *devi=
ce,
> +                                           const char *opt)
> +{
> +       /* gs101 always expects MMIO32 register accesses. */
> +       device->port.iotype =3D UPIO_MEM32;
> +
> +       return s5pv210_early_console_setup(device, opt);
> +}
> +
> +OF_EARLYCON_DECLARE(gs101, "google,gs101-uart", gs101_early_console_setu=
p);
> +
>  /* Apple S5L */
>  static int __init apple_s5l_early_console_setup(struct earlycon_device *=
device,
>                                                 const char *opt)
> --
> 2.43.0.472.g3155946c3a-goog
>
>

