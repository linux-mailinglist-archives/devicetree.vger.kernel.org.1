Return-Path: <devicetree+bounces-251286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 53735CF0D94
	for <lists+devicetree@lfdr.de>; Sun, 04 Jan 2026 12:48:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5141130050AC
	for <lists+devicetree@lfdr.de>; Sun,  4 Jan 2026 11:48:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87CAD285CB6;
	Sun,  4 Jan 2026 11:48:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VTRDI2LV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 630CC27F759
	for <devicetree@vger.kernel.org>; Sun,  4 Jan 2026 11:48:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767527297; cv=none; b=YCZxg/8QFe6kJlP3DO75TTSu3X9PHX92Ip638rb1nrT2BzXjd/RvRE148jZwyLPsQxJdcB1Sx1ONaNjbXLi7BLhiGra06wuiR/rSkzMSzr4QtxTCOlpRd2tvkhvnOdxz0FIH+V+FuqFA4m9+QzP7Pqrf0EvkdpfaQMV9/758z5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767527297; c=relaxed/simple;
	bh=I0lPw9M6IVwRkDiioixB1o0oDbNxBQ4cmgrqp3BqxJ0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tbImZGiTqOe2QfmgMXh5u/sO4tQe/MVNMF64Qgv1X3WBpMCBnSlaBC9B2yxVAbFNG7NopQgiEjqtRzYTuR49wOLXhnS2JPZ5SO3mvAx0JKJRabuFC/VItiI6jCI3i3gna6Znr+QPeFQuMBw9V/TXgUuqwfJ5UO4siUDkhtJ4CRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VTRDI2LV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A7AFC4AF09
	for <devicetree@vger.kernel.org>; Sun,  4 Jan 2026 11:48:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767527297;
	bh=I0lPw9M6IVwRkDiioixB1o0oDbNxBQ4cmgrqp3BqxJ0=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=VTRDI2LV3o0jW3eDCcz3JGlJcAzoTiTJMtQRDQjjL0QcvH/P06AhyP0iDs3E12a08
	 1bfxjFMZZ3CmHsPe1cS9LIXwtY+ZCnVpEbsNrpdOO0s4po/T41MHkk83TlaAGXCXW3
	 kit3OGb+YURbF08TywxCta/NnVWdLxoo2Z3s3rPpew2oo7FhFw/4buvHAyAQp8S64V
	 2UVye59DCf76EBcO+U/qZmAgqFV8OyXJ0uLCj+r7/AS+AudNccgN01p3zQQup9XHEy
	 K+d+idy47k6m7FfYb7fpEOkWSMUWCcznJUpsByww7zU6XLXZCqVl53Ardig/2qjCd8
	 enQA+A6xY/khg==
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-78d6a3c3b77so10558667b3.0
        for <devicetree@vger.kernel.org>; Sun, 04 Jan 2026 03:48:16 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVZffboVBoEDy1XmlKeAbY65z089D14MycgX7OSNjASGBTUX3NUdZughwlfH4yUP5P6P1mzUT7wXd4D@vger.kernel.org
X-Gm-Message-State: AOJu0YzuMMzWWaj24oTB1knakSjtFqpnSPP5HlVj6FIsjYwVQbPXCq3T
	wNX3lnnZllrkRaIxBZYNyHZPw+0RyVrrPpZQVSWpwplpJ/9Gcoyml2cVRVUmf/33L1s7RnGluve
	7kTV4wL8+nOecEm8ggnZuYQIkLIQ6ZGg=
X-Google-Smtp-Source: AGHT+IEH4Sm8WJaFK+x+RlCyRzWOrDqAadQrajL3EXv2yzCn2zhpj2YARFH+oUXmFDV1NIRkB+W/xitiP829rCgCnRg=
X-Received: by 2002:a05:690e:4189:b0:645:559f:d7dd with SMTP id
 956f58d0204a3-646e3398ac1mr3243278d50.14.1767527296406; Sun, 04 Jan 2026
 03:48:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251227114957.3287944-1-ye.zhang@rock-chips.com> <20251227114957.3287944-6-ye.zhang@rock-chips.com>
In-Reply-To: <20251227114957.3287944-6-ye.zhang@rock-chips.com>
From: Linus Walleij <linusw@kernel.org>
Date: Sun, 4 Jan 2026 12:48:04 +0100
X-Gmail-Original-Message-ID: <CAD++jL=fri43Q1XbMJoOUeoWJw9RwMDJLjcjO8zSbyHb7z+Dzg@mail.gmail.com>
X-Gm-Features: AQt7F2oTWlXUXjidoWo77Ak7o32fHRY2YlKW0oxaqrPEmcpXVDJKxEyAH8MVM9k
Message-ID: <CAD++jL=fri43Q1XbMJoOUeoWJw9RwMDJLjcjO8zSbyHb7z+Dzg@mail.gmail.com>
Subject: Re: [PATCH v4 5/7] dt-bindings: pinctrl: rockchip: Add rk3506 rmio support
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	tao.huang@rock-chips.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Dec 27, 2025 at 12:55=E2=80=AFPM Ye Zhang <ye.zhang@rock-chips.com>=
 wrote:

> +      rockchip,rmio-pins:
> +        $ref: /schemas/types.yaml#/definitions/uint32-matrix
> +        minItems: 1
> +        items:
> +          items:
> +            - minimum: 0
> +              description: RMIO ID (Controller index)
> +            - minimum: 0
> +              description: Pin index within the RMIO controller
> +            - minimum: 0
> +              description: Function Mux ID
> +        description:
> +          Configuration for the Rockchip Matrix I/O (RMIO) block. The fo=
rmat
> +          is <rmio_id pin_id function_id>. This acts as a secondary muxi=
ng
> +          layer when the primary 'rockchip,pins' mux is set to the RMIO
> +          function.

I think this should just use the standard pinmux =3D <>; property
with some shifting and masking.

Yours,
Linus Walleij

