Return-Path: <devicetree+bounces-231246-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 476FAC0B98F
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 02:31:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id BAF93345251
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 01:31:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A65D23C8AE;
	Mon, 27 Oct 2025 01:31:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cXD1kv81"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A62237083C
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 01:31:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761528676; cv=none; b=M8RdUJUz0AdiJulBfWUwwJ0eybJAvje7LpOgoX3nLP4tuGPXO3FIlLR7Mn3/AduDlcnLexVzaMzAFTLz1QXn9MwPQYXDaIsNGlvHlojIcjkR7O49w5vC2GT4JyVZ4MGFalqE+wsyOVcFXG3ODSAJ1lNbd1PIOo9Or2y5U860avA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761528676; c=relaxed/simple;
	bh=exMzjzfU+bLztxdgo1IHB/OSEAXPNYJlP8uiWT0togw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZMZhLk6700ZqbPpEaO05a+BVQPQslv3JDbEyx3RHoXGS94EBr9DF0edpTiF2ttZZy1OdgvvKF7qNT5c02l4ePpttq1nhgoQj4jT6Wwc+9O7pDHiSvlHWMgeo7Q5WOa0kQunXgBEF87hYqzyl6goWfkrHzPhMump6UAcye58oJs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cXD1kv81; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-591c9934e0cso5966616e87.0
        for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 18:31:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761528673; x=1762133473; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x0mq+S0SSwJZlAF16bAHUInjGI8BPuKNwrhS742qQjU=;
        b=cXD1kv81O/i2JGP76i8USD3AfKGPHtx8OAG90+Z30kkeJPRI80heiKHxkgNEdLSpp4
         WVQRLgsjsS0ARmdxAzTHzTr3qjhHXKcrWVIHC1zjCOlK+SjbRCyo/9Qj+6VunyzYxW+0
         1wGk3yn2AszQHkdePiwAsYipqb/WHL+rFdbcr552zsr+kJ5nX4eZi5Pd/NOyGvAQKSpm
         2zX19ob4Ip7n0mg9wnY9qEK01tKi0VJhLMCsewLPYXVn/7vFDal1MOjUed5zN6adpU0C
         qs8gsirxwK4WIbTVurzQBwEcUZSGmLfKwDFg1gDWrCgf+zKUAKqtqMuQyEEwc4u6N5/Z
         UGNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761528673; x=1762133473;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x0mq+S0SSwJZlAF16bAHUInjGI8BPuKNwrhS742qQjU=;
        b=jbv7rOuCgY2hH7Xmcn7E4u3UTCkDk1eXLc3KRUL30pW1O7kIaMh/pDHpavf016gThl
         LngFJ8uGALmW27zMzNwKt4nsvuqz5WTlXAB2ax/jdWLAcareOh+bXGuTT3O6gtwK/Hof
         vyN+HcEZ8ACY4rLgsTm7EcOe1cvqsn4F0qo5Yj4oapowYVdV+k94imofAdVdsPh9kl4s
         lrEygyWUTHtBCYPxoKpHbsm+LLz6ssLYsVARl1l5j8cGydm0sPvSO0clXJbM414jNMqB
         tDRwykuc/YXVEUOICojbEteIcaC4CWkG5JV3tTr37xRj2K/SuCSsivIE9MjISQzzw9cO
         BrZg==
X-Gm-Message-State: AOJu0Yx+U7TNSCfMM/6VWTsGDD2NcNN5ToPXaKQn7jr2oVwRgCdDW9W2
	DA6troMuB8OM0hJLi5cyK2BxqbwS+6OMmLHTXYGOJdq6bIwGiMgKkQJGu24ygA6/64xf2lA47UG
	SIhKv9SWeId9ykxEiEsRLi50JLHeSZgI=
X-Gm-Gg: ASbGncuuvKUW8x98h4FO/UcV3yhuQvJy2dV6ofdSUAm4J3je+gXPT+ok3uTqwzGH9SY
	JKvIfxPEHTHzKjfT98u37Ua1f7rk8toBxFRHv4tCnpvcxzVcP3qc6h0Jpx0KmJtnpan8eJR+QxY
	jxRo/DALFytbqoIwTd4Q/0vDVs2pzbULv4Te+ZwOiI76+cADHYngPFcrTnguJ8R5JHyYGHQnJ0b
	Rh7Psbbj5bkKDZVsGbMSrlEn6PWaBp0xhbOqjYEfswzHjvobnlFVi4jX7z2V8kWArGpzv11zhAN
	9Cvr09GLrCZoxmMOu+uplhWGJB4=
X-Google-Smtp-Source: AGHT+IHF8zYNH9eypIhSI26+bPKx1nLvnQNG4yomtu1EBpIHmW05juPCXzFQHtyIUt4DQWHwS9Ulh5ysegd2cmPvh6Q=
X-Received: by 2002:a05:6512:e8d:b0:57a:311:3234 with SMTP id
 2adb3069b0e04-591d856f103mr12296255e87.55.1761528672466; Sun, 26 Oct 2025
 18:31:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251026122905.29028-1-laurent.pinchart@ideasonboard.com>
In-Reply-To: <20251026122905.29028-1-laurent.pinchart@ideasonboard.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Sun, 26 Oct 2025 22:31:01 -0300
X-Gm-Features: AWmQ_bmu-eo2lHZa39sy9y-lchMDaDzmYdTAdeuJ7Cb4yBT_ijmH0CspguIjQAw
Message-ID: <CAOMZO5B3p-mpYqmj=OgH+=pWstgjVf5xJOX8SB9GGYdA3h8nHA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mp-debix-model-a: Disable EEE for 1000T
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Andrew Lunn <andrew+netdev@lunn.ch>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, 
	Daniel Scally <dan.scally@ideasonboard.com>, 
	Kieran Bingham <kieran.bingham@ideasonboard.com>, 
	Stefan Klug <stefan.klug@ideasonboard.com>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Rob Herring <robh@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Adding Andrew in case he can help with the review.

On Sun, Oct 26, 2025 at 9:29=E2=80=AFAM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Energy Efficient Ethernet (EEE) is broken at least for 1000T on the EQOS
> (DWMAC) interface. When connected to an EEE-enabled peer, the ethernet
> devices produces an interrupts storm. Disable EEE support to fix it.
>
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
> The exact reason for the interrupt storm is unknown, and my attempts to
> diagnose it was hindered by my lack of expertise with DWMAC. As far as I
> understand, the DWMAC implements EEE support, and so does the RTL8211E
> PHY according to its datasheet. What each side does exactly is unknown
> to me. One theory I've heard to explain the issue is that the two
> implementations conflict. There is no register in the RTL8211E PHY to
> disable EEE on the PHY side while still advertising its support to the
> peer and relying on the implementation in the DWMAC (if this even makes
> sense), so disabling EEE is the only viable option.
>
> This patch is likely a workaround, but it fixes ethernet usage on the
> board, so it's in my opinion worth being merged. If someone with better
> knowledge of EEE and DWMAC, as well as an interest in getting it working
> properly on the Debix board, wants to submit additional patches to drop
> eee-broken-1000t, I will be happy to test them.
> ---
>  arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts b/arc=
h/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
> index 9422beee30b2..4aa47f71425b 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
> @@ -102,6 +102,7 @@ ethphy0: ethernet-phy@1 { /* RTL8211E */
>                         reset-gpios =3D <&gpio4 18 GPIO_ACTIVE_LOW>;
>                         reset-assert-us =3D <20>;
>                         reset-deassert-us =3D <200000>;
> +                       eee-broken-1000t;
>                 };
>         };
>  };
> --
> Regards,
>
> Laurent Pinchart
>

