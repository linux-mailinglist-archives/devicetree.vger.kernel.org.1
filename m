Return-Path: <devicetree+bounces-31516-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 97F3F82BB7A
	for <lists+devicetree@lfdr.de>; Fri, 12 Jan 2024 08:10:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BF4EC1C22BE6
	for <lists+devicetree@lfdr.de>; Fri, 12 Jan 2024 07:10:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E6285C8FE;
	Fri, 12 Jan 2024 07:10:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="VgJ57ubh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C89E05C8E5
	for <devicetree@vger.kernel.org>; Fri, 12 Jan 2024 07:10:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2cd7e429429so29450561fa.1
        for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 23:10:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1705043424; x=1705648224; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9CpLoCr6SU3NVlZhezQBUSxWV8XqfLhTOBbyUhiTFb0=;
        b=VgJ57ubhOvan13TXjAubew5opmw4/johjsTAiLLPdcYfW5AfOgAw2UQPAMFcnvLVsf
         X+bQ4fYVLhHwuKdC7ROZKhGXMfWt4gqeVAj//3avhTpWXxTIYqR4507uzwPkyApmU6xm
         CihbrUjHGyBd0nJU3DnPEFuQUcxyDL3HpW/vs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705043424; x=1705648224;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9CpLoCr6SU3NVlZhezQBUSxWV8XqfLhTOBbyUhiTFb0=;
        b=W6ixuCErbXJ71QUYwUgDCK92FW8w/7sJkeF2nSZXHcR2OGg1cidnvsZl/0ZBurWYws
         yFPVUAQQTk1Y8pq9laqtp7a+XH16DHXEvvj3PSWs2MWaENZIdsW51qw4IM6iVP03fIqE
         PXNEiRkzS8ks55yEP9mUVqlV4VbkR1ca0kfckj/NH6H48fH0ovTcpNfyhwR72nP3PcBR
         GCQR2ugQmI/HPmeLai+mKsb7M5GbBbIs8P3FulpRQ8ZaU+r6zULKLD6kDdvA7FUeHtFu
         FRDg6Z5/CiaRhpa7BT8SkG2MZdfQ+ZIfRSbIUXYYDQM3nnoj6BFLduz6Ws1jkphbYZU9
         nwRA==
X-Gm-Message-State: AOJu0Yw2iGoI7fh5rkBMT3FKipWMQz0zCrW7DzJKbfdDqJNSMRVRmJLY
	5SO47BNagwTn2Dqv6JTDtvdnLS8NNHNbrYyuzjfsHue/XCA1
X-Google-Smtp-Source: AGHT+IHlsWzk7VBDrxQbPuwhEzOa8RrYAxu50cHzpD/G4LoHP/3wdiV0QT/8BgrvtuTGNBulNk5QS1QaSxP0kKJsgCE=
X-Received: by 2002:a05:651c:170c:b0:2cc:a66d:3356 with SMTP id
 be12-20020a05651c170c00b002cca66d3356mr424298ljb.11.1705043423754; Thu, 11
 Jan 2024 23:10:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240111195335.871096-1-nfraprado@collabora.com>
In-Reply-To: <20240111195335.871096-1-nfraprado@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 12 Jan 2024 15:10:12 +0800
Message-ID: <CAGXv+5FKHX482+QjYP=jWKWz2HD=Af6x9Cahi+fc4EKNmM-MMQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mt8183: juniper: Remove CrosEC base detection node
To: =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= <nfraprado@collabora.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, kernel@collabora.com, 
	Conor Dooley <conor+dt@kernel.org>, Enric Balletbo i Serra <eballetbo@kernel.org>, 
	Ikjoon Jang <ikjn@chromium.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, Stephen Boyd <swboyd@chromium.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 12, 2024 at 3:55=E2=80=AFAM N=C3=ADcolas F. R. A. Prado
<nfraprado@collabora.com> wrote:
>
> The cbas node is used to describe base detection functionality in the
> ChromeOS EC, which is used for units that have a detachable keyboard and
> thus rely on this functionality to switch between tablet and laptop
> mode.
>
> The juniper-sku16 machine is a convertible, meaning the keyboard can be
> flipped but not detached. The detection for the keyboard getting
> flipped is handled by the driver bound to the keyboard-controller
> node in the EC.

We could do this for the whole jacuzzi family, which are all clamshell
or convertibles.

ChenYu

> Since there is no base detection in this machine, and the device backed
> by this node fails to probe and goes unused, delete the node from the
> DT.
>
> Fixes: 4fa8492d1e5b ("arm64: dts: mt8183: add cbas node under cros_ec")
> Signed-off-by: N=C3=ADcolas F. R. A. Prado <nfraprado@collabora.com>
>
> ---
>
>  .../boot/dts/mediatek/mt8183-kukui-jacuzzi-juniper-sku16.dts   | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-juniper-sk=
u16.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-juniper-sku16.d=
ts
> index 8ac6bf5b17f9..8096ca215258 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-juniper-sku16.dts
> +++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-juniper-sku16.dts
> @@ -13,3 +13,6 @@ / {
>         compatible =3D "google,juniper-sku16", "google,juniper", "mediate=
k,mt8183";
>  };
>
> +&cros_ec {
> +       /delete-node/ cbas;
> +};
> --
> 2.43.0
>
>

