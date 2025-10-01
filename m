Return-Path: <devicetree+bounces-223000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D519BB031B
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 13:37:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1FBC17B1852
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 11:35:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 092C12C324F;
	Wed,  1 Oct 2025 11:37:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="F52lhUAZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382BE2522BE
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 11:37:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759318625; cv=none; b=Lm6t1wyg9SOgITx5ofIsxGhU76EZ1J52mU4BEPsDgPNs850CV2ARjckYK9pZdN2PBSo3O02Pg0IYDbmksmPtUVFX4dQgIBFLbuZj+xr6uN1vGLZEKo4r8x+iYA5e+z9NbCol3spuLID8PlYO2STEhQw7Zwk3QCj61+d53EdV+ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759318625; c=relaxed/simple;
	bh=Oh9tqT4BXfVxU9Z6FlbTpMfqC65Bh6cRSDairEHuhx4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ozELNZH+h/wYBNki2QW8BPeankV6AiBSFLM9mv1VwDe8jxpblRjaIovB5y4O9BdPu+VuYPMApXpkstY62Wa+59ffFFcyHelCSPoRdf0FNLNbXBHxvoWl0XRvqJ3NpA+19V2VrrPmIzT2iU7NExAN/+MF9dWrbszR4R5LemIntqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=F52lhUAZ; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-57e03279bfeso1361665e87.0
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 04:37:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759318622; x=1759923422; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yA7aQRihrsbAM2bYPKB7h4TTWbFXDP3J7TuvZ5SMQX0=;
        b=F52lhUAZ+z3M7IW9S/RJjHdbesG/xia29zuhJ/Dor9J5s2Uu2X5IGHj0Sy6w6mBN+H
         l5qnojNbC2u1RZtkAASw9SwEDXzhThAwby3leLMlMfBVSzSmcIMtPwmWohOWJuaD33Pe
         uiYo4KOJlVgHZctsF0j07FOfeQ1ktRfNNO7kJTJkAL1KJaQOJHY2H3Mx6QWk85qhqSGQ
         Hl9bf8TyYLlibhj7QnrvJW6vBGxG69NDUUIaZg4pAAVjQU5um9wzLAyCRpOH35dh50H3
         R7DPjFPp9TpaeUVJ2LVMKR09ltSyu+S2fL88smi4G18IWlRfp+qJH1Z9u+vSgiKgO6pd
         7A/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759318622; x=1759923422;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yA7aQRihrsbAM2bYPKB7h4TTWbFXDP3J7TuvZ5SMQX0=;
        b=dPx2F/zPixTUN5z4A0TQVyUwAsNq0ZRbo+qD1F4cVanXDTB5q1W7HO9mwtHDhBeuYz
         lKB495KrNuYOLHVW2+5Lo3Bh5ZDmSjYG8Z6/A2m8UU2TVjRiR+Ql00WZVhuyTkpf/2v1
         3/CjAUbVHrKPQfgPfoIu9wU8xceOmkM1JKr+JN/Sd/X7BaGSC56i6M6m2c89oG569X2x
         3XCq3Ev40osXJRwNHM9IZYYHY0VuDbmz7rmD0farmUaQWE6e9SBJzNfAIll+YKPDfuGq
         zSFJwG2Pzz7Wpje/StFqROsddAG6gFxnvJGtbNAvz7LUCPfbg2bKCdY2/yO1pyu9yMJC
         pE8w==
X-Forwarded-Encrypted: i=1; AJvYcCWA1tZimu0e71RIK9yu4zbBkUQJPfGg1oQk4kdrx1qd19fSbha4PblF9OLBLYoJiHD0RJncjEONe4Mr@vger.kernel.org
X-Gm-Message-State: AOJu0YyD4tPcmMh9ko81cmjfU0u2j8JA3EYzE86isediNGz8H88IqeCy
	2bNu9e0U9Bfv8TfTsiwDZ3Uj+qKt+WAfJpHjCxd9u5YCqgdDw+qYoXD+EDLh5263ZqhqguOjN1X
	IYmnm+zVd8rrfxEyDiBwmpuqHvr5pg1OWsIkIF30t1A==
X-Gm-Gg: ASbGnctM1vcFiDpz5/BRR1UHW4DCLyOP0V9lRdNYIOF+nrpIhhV97remD9Yuv7GEaa5
	zytqUxo4FZlRhYmDHFCbcjy3OAW3iLfeXAvPwQROK17xbtqCtRu3v5TYjicKy/ZMXOpCM7AqUYv
	QqU2gBCYQOQm187WXcT32qqYf5dB2/moElBj7+YLBaR3dQztNLrCx/IfxySghJDonxttMX92ria
	ryyhuJ3AXFT/m8dwfpOnScxI1X7u9Q=
X-Google-Smtp-Source: AGHT+IEZ39wDf5y2+FoKl/S9Pd1gyU4eNs2R/nqxRPqYxaEmOIsx03SIZ7rGxTx1idd5o96eAnjGrysxostm2ToXY7o=
X-Received: by 2002:a05:6512:3b88:b0:585:1a9b:8b9a with SMTP id
 2adb3069b0e04-5897c348c2dmr2779744e87.9.1759318622276; Wed, 01 Oct 2025
 04:37:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250926-manpower-glacial-e9756c82b427@spud> <20250926-unshackle-jury-79f701f97e94@spud>
 <CACRpkdZ5RCcaNJB_3ufAgpDtdJBKfOVrMbJVAQWaVSOkY0-XNQ@mail.gmail.com>
In-Reply-To: <CACRpkdZ5RCcaNJB_3ufAgpDtdJBKfOVrMbJVAQWaVSOkY0-XNQ@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 1 Oct 2025 13:36:49 +0200
X-Gm-Features: AS18NWA9lQqxjLhryh6mWRwM5YU-v3y1Ej1S_ygRo7gjKky6YWFY61RMFP-QRag
Message-ID: <CACRpkdZo=c0BnSLm=FKRMNYKEaPAHBgtfhD9txhPofts4ApDkw@mail.gmail.com>
Subject: Re: [RFC 3/5] pinctrl: add polarfire soc iomux0 pinmux driver
To: Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 1, 2025 at 1:34=E2=80=AFPM Linus Walleij <linus.walleij@linaro.=
org> wrote:
> On Fri, Sep 26, 2025 at 4:33=E2=80=AFPM Conor Dooley <conor@kernel.org> w=
rote:
>
> > +static const struct pinctrl_pin_desc mpfs_iomux0_pinctrl_pins[] =3D {
> > +       PINCTRL_PIN(0, "spi0"),
> > +       PINCTRL_PIN(1, "spi1"),
> > +       PINCTRL_PIN(2, "i2c0"),
> > +       PINCTRL_PIN(3, "i2c1"),
> > +       PINCTRL_PIN(4, "can0"),
> > +       PINCTRL_PIN(5, "can1"),
> > +       PINCTRL_PIN(6, "qspi"),
> > +       PINCTRL_PIN(7, "uart0"),
> > +       PINCTRL_PIN(8, "uart1"),
> > +       PINCTRL_PIN(9, "uart2"),
> > +       PINCTRL_PIN(10, "uart3"),
> > +       PINCTRL_PIN(11, "uart4"),
> > +       PINCTRL_PIN(12, "mdio0"),
> > +       PINCTRL_PIN(13, "mdio1"),
>
> This looks like it is abusing the API. These things do not look like
> "pins" at all, rather these are all groups, right?

Or maybe they are rather functions. Like there is a function spi0
that can be mapped to a set of pins such as spi0_grp =3D <1, 2, 3, 4...>

I recommend a refresher with
https://docs.kernel.org/driver-api/pin-control.html
and work from there, and avoid looking too much at other
drivers that don't necessarily do the right thing.

Yours,
Linus Walleij

