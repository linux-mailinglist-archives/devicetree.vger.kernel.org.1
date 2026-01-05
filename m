Return-Path: <devicetree+bounces-251498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ECB7CF3BEA
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 14:19:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B45CF306B7B0
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 13:16:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48215334C13;
	Mon,  5 Jan 2026 13:10:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gnEM7kYS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93B7C335071
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 13:10:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767618628; cv=none; b=XNEKRsPqTlLKrOMXfP9/Lm/PXr5JJuiWA1H243b5ku8o+4cmI84+X0gjHPePByYkFHvow2yrC7WzV5bmVyC6vnP0C75SnDRCe2ENvXtOlmpBPHvex3SXHhCgaU+DFE/s+2Pkih8DslZg6K9XwY+QUbyosLiALZkyO9NoG/yozI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767618628; c=relaxed/simple;
	bh=Ww8aJuE+Meg0CK7fuK02354Llc9h7VxBm7pH74kj4e0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Db/LTLb1zvTO7f89JV8BMpBhj2pwGLPVOHB8CHk/zCfzPDMyrht0xR64CJbbBWqi53NkegmoJidLhikcqu3mTLe1VK1TG4mcfASraB889KBMDXzxHdOLKbWl9ChtGIni3e1YvNlS6qQhfcWbKUcMV0ACJDfcQIRTrv5vEGZshjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gnEM7kYS; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-37a415a22ecso6899151fa.0
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 05:10:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767618625; x=1768223425; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x1tgMknXPTxfI4cve9UkbbLLP6ccgRH1mmQbBmeIuqA=;
        b=gnEM7kYSTqczo9t491vFd2ggUyKuWpe/sQbMRwlXXliyOVGXUuyYzrODDBzWcaQASI
         yYEy0ejMUfYEd1Qpb1U1ji18qS/58nArAiEQVA8k3XZIEpQD2uKFxcHNKZLQuuqGYtt5
         bGwTzjxqqWv5atbkzRFgqFTgmp7asldnYsIBjsoXOE543qDwh/oxIm7Fhmcv4J7Kzgly
         x7ypC3sDxiCiLfA9F1ucdx8Yq+oyTE1BK75E7d96hKBYoxvY3J9uFrnnphmNPR3qGfsE
         xAwvko/09Mfd1raYkJA8B1GpgXxg+S6U5ffBI8Pn1AESW0IA+/3LmxFuNsT89O3KHqbf
         OYbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767618625; x=1768223425;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=x1tgMknXPTxfI4cve9UkbbLLP6ccgRH1mmQbBmeIuqA=;
        b=Qd9NA12tpZh7ulhSrJi8lYUexP+8t+ekK4jZ2BFdYkkXC818m2nm1tJ+CXsc5Fyutd
         rHs/+LhUmJjpg+771cZ1kkW95HDN9VoB+TfVIavPMgCMEq/gXo/Ni8ZCmbFccQmaSAI6
         936O2qrF54s08cOFmzOF0l8xVYGPHCsI8Z+xdAHGxvYeGoiblprb0DNbgbF/Zs5OPpZy
         xNDkztgxBFOc/0EDZAxLqL1ry+5IQ3CmAupxehyrBHcYwQIF39svkQSQlRTMXDp5O5gI
         O0/2KBYK/vGxfJ3NvN2O9Q4wCDLR7eVFcl/Y/juzPiWbLMqVHy0mS68CW+TkgE6nPaJh
         3pLw==
X-Gm-Message-State: AOJu0Yw9FueQioSyPKE44yk0a50ovqQsw1Ae2UNCmvUGxgFCyGbEyKLu
	eB82jW5CZOZs7vD/LsjEYPivlN00Fa8x8Y1de+TcMUxjQXR8py/QFapXK2K2lHCO/Mr5F+WjgDo
	j5X4/0IXjlDj9omRBJFaDeZ2qga0r6bo=
X-Gm-Gg: AY/fxX4jNkDW0mpGTQ/RFpNUDzjkQXjWQeO+Vl5yU84JnJiqxipK4b+PvUkKuY3EwDb
	aLSk5XzJThjFUgWFyJL05EuAeyrBMQf7wHd72Q5dnvAAV4SezZK7Omk4Ug6tjQo9sqTyAXgz09K
	AxFxbe6T7ewudffx8uXbF0HYu8/ivBoFD2qXQHlQMSmjNAQwD4dS2wMyWOLX8QCGek5oRI3g8EP
	WM2Mx7sI36OCaRdKfTDW/tcU+GhyQgUzmD2DdqxJZ7L/tQfHe/3YXknnHz4m3wz9YDm1t0agapp
	IzMPq03yYeLnu6kA15U2bQOg1ck=
X-Google-Smtp-Source: AGHT+IEUbLTrvsXoZiZcdhNSheDt5P3vxL7cNjh4Y4VVYLNVJEjIjtJ0okeQhPegnghE+HXm7rcA9IcQ+NuYNy7f2J8=
X-Received: by 2002:a05:651c:994:b0:37e:5208:e2d7 with SMTP id
 38308e7fff4ca-382c519671bmr30052071fa.19.1767618624495; Mon, 05 Jan 2026
 05:10:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260105102412.6674-1-stefano.r@variscite.com> <20260105102412.6674-3-stefano.r@variscite.com>
In-Reply-To: <20260105102412.6674-3-stefano.r@variscite.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 5 Jan 2026 10:10:13 -0300
X-Gm-Features: AQt7F2rgkl7-0dzR76DPCZQr4IVNxzzcw_bfa9sfWvzvQGQMX6LP6vhLo4zS6yY
Message-ID: <CAOMZO5BSoqQ70K+ihJEn2q6qh2AFKJAsgqufvW3o_fTxsfC=NA@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] arm64: dts: freescale: Add support for Variscite DART-MX95
To: Stefano Radaelli <stefano.radaelli21@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Stefano Radaelli <stefano.r@variscite.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Alexander Stein <alexander.stein@ew.tq-group.com>, 
	Dario Binacchi <dario.binacchi@amarulasolutions.com>, 
	Markus Niebel <Markus.Niebel@tq-group.com>, Primoz Fiser <primoz.fiser@norik.com>, 
	Yannic Moog <y.moog@phytec.de>, Josua Mayer <josua@solid-run.com>, 
	Francesco Dolcini <francesco.dolcini@toradex.com>, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 5, 2026 at 7:24=E2=80=AFAM Stefano Radaelli
<stefano.radaelli21@gmail.com> wrote:

> +&scmi_iomuxc {
> +       pinctrl_bt: btgrp {
> +               fsl,pins =3D <
> +                       IMX95_PAD_CCM_CLKO3__GPIO4_IO_BIT28              =
               0x31e
> +               >;
> +       };
> +
> +       pinctrl_emdio: emdiogrp{

Please add a space before {.

> +               fsl,pins =3D <
> +                       IMX95_PAD_ENET1_MDC__NETCMIX_TOP_NETC_MDC        =
               0x57e
> +                       IMX95_PAD_ENET1_MDIO__NETCMIX_TOP_NETC_MDIO      =
               0x97e
> +               >;
> +       };
> +
> +       pinctrl_phy0res: phy0resgrp{

Ditto.

