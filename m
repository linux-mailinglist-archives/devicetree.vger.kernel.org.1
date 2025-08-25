Return-Path: <devicetree+bounces-208909-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D596BB33A67
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 11:16:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C91D03A5702
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 09:15:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0FD12D0C8C;
	Mon, 25 Aug 2025 09:14:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HNHr2Pag"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BA9F2D0C7B
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 09:13:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756113241; cv=none; b=ngKYlRsfm2pZcSBZxTSvyLxCukbR5jw3rOqnYukgPWK7l3NU30Spgthnq1HBD9BrFE+9vL1BrOqlSqsoJlOV7wwJTZYXBhf9vVeda7Qd7G5f1XE5Cplb4Rjg8rld9+6jDfzHKz9z7AqHNJHC5J+XlvC/VTbe1KDkDXBnQAFZJzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756113241; c=relaxed/simple;
	bh=XOAv6hQX72JTJoOiv3v9g2pt29fiKlNO0ZbSfNVbdcc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Sc5IF5t964fh78JNuu8j95ua3Pv3zQwNVXW7zHQFPTzWs3S/QSH9h3EajeJJulKdF/Hjd8SWjh7gm21aXfw2pqbu7nt+nFWFdN7BhKqQ4r2N7NXL6Qp9g0GGJ5yKoixWchMUzXlNLYutjdS0FaW+TNf8mDRovpDJZP45jDt3pCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HNHr2Pag; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-333f7ebc44dso40647901fa.0
        for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 02:13:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756113238; x=1756718038; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cP0weFM2+mVOhYEbkmdk331UXDeERciVJHGW33WlzMM=;
        b=HNHr2PagF+9eI2s+AkQZ+9SEM/lcRSwGz04ABnWz1/KmZFIyE0epujdc5uChztzoyf
         +g/vmnQBt0ykNmNQTCAj3LiDBvH8FJxaBQpvf57Sz5uK83+zdO4QFZeyqpNg/WKU/jJw
         vmOXvTDnSsOAvzsnr2f7sFyqKv41TJ+BJcA8BqwoGNmf2DNZt0zPM16kQp3vmvf1Sfbe
         z9PG5KqdPWW7ZOwaCAqwpaNtr28kctxT382yRtn677tW9bGdc6ukaAYtR6+kh5ME9s/1
         mrbOIdEdzd5XszZTpNQk5MqlZ/XtX3/H4Nj0lzXeezkfZHs9Mj0kNDBxaVMKawV+MiI1
         Hq4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756113238; x=1756718038;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cP0weFM2+mVOhYEbkmdk331UXDeERciVJHGW33WlzMM=;
        b=Q5uZFeEtzYp8u4BttKTcSBlAcRCD/R0DapXX0bzoO7T0BhNvPHMw9Wz/k+6Mpo1OLv
         kOfLfRvREm17RcSOOCnK2ZN/qoLFDs+era7MSct9CN9Wqk1ZrwDuD4D/iGO1HqULOw2n
         Uq0PBOGbqMvW5oIKXnTX2CpRfEFyCVq+39kj3sDrZwoMqSlMz5vlucWnMvIGmT2VXUxE
         eRxW2LpTdp9uGvYikzOjuJDdyT4Mpy9RAN/G1kct+g1OOx0LEDT/rDtBsxBXxu8dj39T
         C0TEtmEACK3+uhP75thfwb/UlnAb8z4ffOf72HPuiFIWLm0Wm6mHkizitmBa2bMFN5rj
         ARSA==
X-Forwarded-Encrypted: i=1; AJvYcCVXddiDZRb6KDvzhy6lrE32NOUTngdwfkyJpRVqre5WiTtQtO7bLFlcI7+CZDjggj02rc9LWAqnlx34@vger.kernel.org
X-Gm-Message-State: AOJu0YwpURN3s09T7v2jxP2IxNy/fQwWhxKvKSVydXdjTfO5gYoLLZV8
	sIk5Uq4v8Wn2kVV2MWGl9T/n2P/jxQfvfx5kn/LGPMy3Yz+sUCf+SoOcRBvP5NqJbtRPhnlqnqE
	jg1fXph/iQ9Fi56y1/R1GNvxvcwVv+9XYgvdbABfR5A==
X-Gm-Gg: ASbGncsDKlRhVEENV9h1TYi4qTsWEpaXU8yJMh1FqNSH9TLLHlJw4iQhYcpFKZwZr34
	+bsLDFjAHf80+YJJhIGFj8HXE2pXEdsG+OISa2/nxSKpnEoJ6gsGBQj0t+dUsNR81IjZQU+1fb4
	7ED2yigsKVCw423QEM7vsJ0v1ypxPFn1rl0N/hDJ6MfvFXxvOvo2P2Q+wwZ+i100Cn45xv/b3Bp
	cjnnzYldgD2HlptiA==
X-Google-Smtp-Source: AGHT+IHKuGX2jcjK7CW2YUAF7pKBQi7lJi+f3JtU7wjskayoF+TL/YdXsZFZxfIG1onC6ArpMYTltcHn/C0yATQLfLE=
X-Received: by 2002:a05:651c:2141:b0:336:5d7d:f034 with SMTP id
 38308e7fff4ca-3365d7df730mr16346691fa.1.1756113237446; Mon, 25 Aug 2025
 02:13:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250820164946.3782702-1-Frank.Li@nxp.com>
In-Reply-To: <20250820164946.3782702-1-Frank.Li@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 25 Aug 2025 11:13:46 +0200
X-Gm-Features: Ac12FXxQ7gXxoDsxZV2IH90hiejwNDEjwFXUKgIGdSa3W_TRCsJ2jdxesORaDrc
Message-ID: <CACRpkdYCWymgFYenTbw5TzH+De103pwf35Bq_WjCkCPJ999Xng@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] dt-bindings: gpio: Move fsl,mxs-pinctrl.txt into gpio-mxs.yaml
To: Frank Li <Frank.Li@nxp.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Dong Aisheng <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>, 
	NXP S32 Linux Team <s32@nxp.com>, "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	"open list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <imx@lists.linux.dev>, 
	"moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 20, 2025 at 6:50=E2=80=AFPM Frank Li <Frank.Li@nxp.com> wrote:

> Move mxs-pinctrl part into gpio-mxs.yaml and add pinctrl examples to fix
> below CHECK_DTB warning:
>
> arch/arm/boot/dts/nxp/mxs/imx28-xea.dtb: pinctrl@80018000 (fsl,imx28-pinc=
trl):
>    'auart0-2pins@0', 'auart0@0',  ... 'usb1@1' do not match any of the re=
gexes: 'gpio@[0-9]+$', 'pinctrl-[0-9]+'
>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

(...)
>  .../devicetree/bindings/gpio/gpio-mxs.yaml    |  80 ++++++++++-
>  .../bindings/pinctrl/fsl,mxs-pinctrl.txt      | 127 ------------------

GPIO bindings mostly affected, so I think Bartosz want to apply
this one. (Else tell me!)

Yours,
Linus Walleij

