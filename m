Return-Path: <devicetree+bounces-154267-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DBAAA4F867
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 09:04:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AB86A7A479A
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 08:03:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85E941E570E;
	Wed,  5 Mar 2025 08:04:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xPFWHDQ6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97B978837
	for <devicetree@vger.kernel.org>; Wed,  5 Mar 2025 08:04:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741161860; cv=none; b=Hotbl9+abKMmZ3koGuk4MI63jtVqogLyW5coFPauXM30l/jekD4A9SydVYIRWZ6KDxUokEuUe/UoGdsQJcSkdff8v+rOwzxlax2IE39r/TkXc3br1Ol6rqK2R+9lGaBuirQyJ39qlml9D5upp4kADzrblEpacG3GG8fy/DpBjec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741161860; c=relaxed/simple;
	bh=nwxBqhBj63GsgjlQZRz1t/wShEjjjKEbXH9bVs9ZDNE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HMKasEsGeVjOfvDXk/d8mRTIsMFoI3RnGbs5QqW+snj8Q7zenjDTmxGNCmhuwIyRLdhFPxBi/4J8PwIJleJPphf4noO4bfxJ3yoNicZWqWef+Df5TftWVvvwNWcxwFTX9EQUxwHO3dGq62QhImVAg6dacO/eLmZQyPTjW422NPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xPFWHDQ6; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-30613802a6bso68524211fa.1
        for <devicetree@vger.kernel.org>; Wed, 05 Mar 2025 00:04:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741161856; x=1741766656; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a9335U4BYdb3Rpl+HkVOVk0Hdu7mYIBHGPUHbDc6Yk8=;
        b=xPFWHDQ6Y03SIDMx7TJKIsgpHSPUWuc0g3gJ0gX0M+JBrzPmxODxMSYgHBo0BePN/U
         3BnghMV9bHJ9atDJGGeFyT/dXKzHMGjDpnDCrLSrZ6Xdps1GTxT/VItmw096MwIOs6L1
         ks5WqHDnzFJdxKsQ9xC7wf9Iqkx6zXMRiF8aJEP33/aety2d+y0EUzSpgGpfS5AnOxON
         xlA4xroeUnvGvT1qhePkhbaP2oeqadxK1DKW1Nu5cKhiXulYkHEW5mF37uJ9zaX4IXNM
         Vr3+poNZ+swih+Iej/SdTd5cumjLYrPVWHzI+1apuUEWFZ236JsggZelTCvCaA7kNth9
         Usww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741161856; x=1741766656;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a9335U4BYdb3Rpl+HkVOVk0Hdu7mYIBHGPUHbDc6Yk8=;
        b=ujHFiboxL/u8QITQSQYtnbLTQ8jSuHsX7POwNE2cva4uzf+/zfIgkEzwp2ZXvNr561
         GZ/CynLIGZuTh9/F9mFpd5Jug6cSJ/+X5FWwDbdGbFVQxcw3HOHB0fDDJRjNr3CzCQvo
         5B5bQAToWSBsLE7Fsiz9LsXFgMXiZnWwi/wMi8nqbLZGcLz3PNa+nUggJmA9uWRIglU9
         Qa8vIBt7E+D+AgWXHLlFbb+2YWsypvd98NtpuPxZWc+HrwOk8jPtZVmYnnogn25p59mt
         LQ/pTKfWvvB7jVvaLRIxpOkLzRgVuMRINamAsOjN6RWwvLeaw7onXrHAG3NxxK77dgYD
         OoTQ==
X-Forwarded-Encrypted: i=1; AJvYcCX7/LS1/nd/OICTIYwaBrdPZhyx8KAh3w2guSbJL+Qtqk/7MCPcpEzwnMlASa97XMu+h1XO8WkkcdfR@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0KNDh6XCb7WHAji+AnfEA/hlUsWujPNCnM3AnDL02cxny/wwb
	GB/8189DkJrIZJ60DxWuVZ0p2OY8aWau6rd2+zpEewr17zTPnKP1/yv+U0BJoG8xULg4UCNMwYi
	nWUmvaVBLiUQLmqGZEdPaPw5O66zrYJ8NiaCGrg==
X-Gm-Gg: ASbGncv9j9nn+l1qhPd61L6/wU3nWhvnKxGUf+T+nVKhWWlspv4kPmxs+B1I1vW1t2n
	AlYwmqBYo/h4Mw8rnqfGCTzvboHpSi8yFuEw+FpYoQuJIZ6P0rWSR2SqLnYGtX5rO2HgXgSUOyN
	McHbys0GGNb0QaRiO/bYp0kICM8A==
X-Google-Smtp-Source: AGHT+IHxONNXRxXY/9SA/ScuPloLBavDa3lTwDH5EUDUvtRMl6Gewl1QIgssFE88vQwX5zwh5iaHK2NYlKSskUdQiJc=
X-Received: by 2002:a05:651c:2128:b0:30b:bba5:abfc with SMTP id
 38308e7fff4ca-30bd7a427d0mr8296691fa.9.1741161856549; Wed, 05 Mar 2025
 00:04:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250303-bcm21664-pinctrl-v3-0-5f8b80e4ab51@gmail.com>
In-Reply-To: <20250303-bcm21664-pinctrl-v3-0-5f8b80e4ab51@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 5 Mar 2025 09:04:05 +0100
X-Gm-Features: AQ5f1Jr_36wy4P6iO_K8_dKn2UUlLFsUGnWdDx_V_chS6C1Pbzndlez70ok7ggU
Message-ID: <CACRpkdYTsym-YqV8CQh7up57q_R2ZGSnsCD8FiYSpQnS5CaFig@mail.gmail.com>
Subject: Re: [PATCH v3 0/6] pinctrl: bcm281xx: Add support for BCM21664 pinmux
To: Artur Weber <aweber.kernel@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Florian Fainelli <florian.fainelli@broadcom.com>, 
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, 
	Stanislav Jakubek <stano.jakubek@gmail.com>, ~postmarketos/upstreaming@lists.sr.ht
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 3, 2025 at 9:54=E2=80=AFPM Artur Weber <aweber.kernel@gmail.com=
> wrote:

> BCM21664 is another chip from the Kona line of Broadcom SoCs, and
> its pinmux shares a lot of similarities with the BCM281xx pinmux.
>
> Add support for the BCM21664 pinmux controller to the BCM281xx driver.
>
> This also enables pinmux support for the BCM23550, which has an
> identical pinmux config to the BCM21664 (hence they can share a
> single compatible, brcm,bcm21664-pinctrl).
>
> While we're at it - fix a bug that affected higher registers in the
> BCM281XX driver and replace bare "unsigned" with "unsigned int" to
> comply with checkpatch requirements.
>
> Signed-off-by: Artur Weber <aweber.kernel@gmail.com>
(...)
> Artur Weber (6):
>       dt-bindings: pinctrl: Add bindings for BCM21664 pin controller
>       pinctrl: bcm281xx: Use "unsigned int" instead of bare "unsigned"
>       pinctrl: bcm281xx: Provide pinctrl device info as OF platform data
>       pinctrl: bcm281xx: Add support for BCM21664 pinmux

Bindings are ACKed and not much other feedback so:

I applied these 4 patches, I had to rebase the one dependent on the
fix a bit and then Torvalds can fix that up in the merge window.

>       ARM: dts: bcm2166x-common: Add pinctrl node
>       ARM: dts: bcm2166x: Add bcm2166x-pinctrl DTSI

Please funnel these two through the SoC tree!

Yours,
Linus Walleij

