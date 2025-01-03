Return-Path: <devicetree+bounces-135475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 94644A0103C
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 23:26:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7302516215A
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 22:26:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E84841BD9D5;
	Fri,  3 Jan 2025 22:26:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RPCszWpO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCAFC1917ED;
	Fri,  3 Jan 2025 22:26:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735943180; cv=none; b=oNJdiXNA2fUT91z37x4K3LCXdRxXz9feofqsYUZ/EqCO9Y04ekvOoLG9tSuU6tSMsLW/btL0906H1puaD6qcm/mk4O8+HT9b6jmVTDqoiHmm/6pS41DguRUBsfztJ6RQG8WWiop3QrFlOuarQJ/GMVGOeQwMdgr35+pecQ0Ykg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735943180; c=relaxed/simple;
	bh=IrLd8zArhralW9vTI3bFh+RNkr+IYx1dMXqSqZpYVIE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RzuFpT/9WVhQb2PHIiWn4UbDnIalcF1uwiODZQCs34e8UOXVuThJEXhyNh9tBclMR3V+7QqzPlzIQZt+3cqs2zYtU+QcXEZyRbtvM7kmJpdS7ImZdbYLTfg5HNf4crzfAR9ny4x6ykEP1zv6xGBSrhfm6LSDnzFAAv1MnujRhKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RPCszWpO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54F13C4AF0B;
	Fri,  3 Jan 2025 22:26:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735943180;
	bh=IrLd8zArhralW9vTI3bFh+RNkr+IYx1dMXqSqZpYVIE=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=RPCszWpOIcopr9Cu41ZYLMlo3hiNUKGdfCzWeXT9doLu7fxlDBuKCT1rt06RaYSKX
	 fZQosyqeugBHiLKeE8nAZDJ/tknLW78aTTv1QI4z3s81sWW9YuHo34TF+lHvzfspDJ
	 +c4kMjCYRmbcNYNsrhIdr0i59QAru2zD0rajCzxPPln2Z2klXoQ/EZRjkhIM9n0a7I
	 AjRmSbmwDoZsQrY8F/MN1FBPN2lrAtY2r9tbrVycOtPJsn6F2GLY0jRf2UKqV7p/nH
	 KuSu+vdMbygJrTCk1804DNZK2tHFjElDFmmmzlQ9Wf+ahxEprEhA5fq3eVsWDfB/ma
	 q/RbSboPu8ezQ==
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-e3983f8ff40so14219856276.1;
        Fri, 03 Jan 2025 14:26:20 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXoYfgjFNSCmkoHrCvoVZAfLarPyV+TqYEn9xm5w2Ro5zhivDNWqPlbvXyVJT26vlJWMMKCwdL2RdpVoLY=@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4yaMaBj4ISkuFC+T44e8cLOFGI61Ie71AuhBQ6mw+54+Bg0qN
	zk47lJ9YwxcAskfeVl1NhW++VbrKopdIIktdbLSGaPldkd7XfchnIUxRb8e1YEEuP9wpE5kGOVh
	JwprJkVMBZ37rrPaRBX5LGINyQQ==
X-Google-Smtp-Source: AGHT+IG4bhFPDx0r1HgPvYRnqehBcgPYDey2wR5zN/peYPDzxcv0TZ2Hgm79zPa+tud+5BHpvQIwwtwisuOjI4duhx8=
X-Received: by 2002:a05:690c:6c08:b0:6ef:4a57:fc7c with SMTP id
 00721157ae682-6f3f8115430mr380359427b3.16.1735943179575; Fri, 03 Jan 2025
 14:26:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250103181623.1980433-1-vincenzo.frascino@arm.com> <20250103181623.1980433-3-vincenzo.frascino@arm.com>
In-Reply-To: <20250103181623.1980433-3-vincenzo.frascino@arm.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 3 Jan 2025 16:26:08 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJ9y92aHUYhD9_YX8GKvZC-GioWbMr+gjcQiMA_XQ0RaQ@mail.gmail.com>
Message-ID: <CAL_JsqJ9y92aHUYhD9_YX8GKvZC-GioWbMr+gjcQiMA_XQ0RaQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/4] arm64: dts: morello: Add support for common functionalities
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, 
	Linus Walleij <linus.walleij@linaro.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>, 
	Sudeep Holla <sudeep.holla@arm.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 3, 2025 at 12:16=E2=80=AFPM Vincenzo Frascino
<vincenzo.frascino@arm.com> wrote:
>
> The Morello architecture is an experimental extension to Armv8.2-A,
> which extends the AArch64 state with the principles proposed in
> version 7 of the Capability Hardware Enhanced RISC Instructions
> (CHERI) ISA.
>
> The Morello Platform (soc) and the Fixed Virtual Platfom (fvp) share
> some functionalities that have conveniently been included in
> morello.dtsi to avoid duplication.

One more thing...

> +               i2c0: i2c@1c0f0000 {
> +                       compatible =3D "cdns,i2c-r1p14";
> +                       reg =3D <0x0 0x1c0f0000 0x0 0x1000>;
> +                       interrupts =3D <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
> +                       clocks =3D <&dpu_aclk>;
> +
> +                       #address-cells =3D <1>;
> +                       #size-cells =3D <0>;
> +
> +                       status =3D "disabled";
> +
> +                       hdmi_tx: hdmi-transmitter@70 {
> +                               compatible =3D "nxp,tda998x";

It is odd that you add this node here, but don't enable i2c. If this
is shared with fvp, then enable i2c here. If it isn't, then move this
to the soc/sdb .dts.

I'd rather see the FVP dts now rather than later so we can review how
you split things. It's a little odd not being soc.dtsi and board.dts,
but that's fine I think.

> +                               reg =3D <0x70>;
> +                               video-ports =3D <0x234501>;
> +                               port {
> +                                       tda998x_0_input: endpoint {
> +                                               remote-endpoint =3D <&dp_=
pl0_out0>;
> +                                       };
> +                               };
> +                       };
> +               };

