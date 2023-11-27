Return-Path: <devicetree+bounces-19054-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AFF07F980E
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 04:56:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 926DD280D4D
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 03:56:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D32746A0;
	Mon, 27 Nov 2023 03:56:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Ss7Z75Iu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7339112F
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 19:56:39 -0800 (PST)
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2c5087d19a6so41782811fa.0
        for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 19:56:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1701057397; x=1701662197; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OdQ/Y6CJ/tXJPIZwoVwtxZbsYvh8pLzEZAF/c5I9cSM=;
        b=Ss7Z75Iu8nS3R3dp9wf+Z4+DWB7pM3CP7CKOxkm7U7dVfISOSzDtHhfPUjIrJ+q+mF
         zKKaqm7Z2nncDL/Lc1+dYYBWmeHapyCLgpvY+uI144fQHvwVsU1YJxdmloS6Iw1b5AoI
         olBF6MT1csIEiELI+M6vlnYf1CR+Dgctr3WWU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701057397; x=1701662197;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OdQ/Y6CJ/tXJPIZwoVwtxZbsYvh8pLzEZAF/c5I9cSM=;
        b=HWK9k9CUxqJIGcntraGn96y0HEvl0yYAYlr7LfHK6FceKKOE9DT52xgFwL/570fI3C
         x1a6qnyxfN6WzBu9kN++lt4rpJjfn9raAc4ul589/xdiOzKlcy0ws/3SUuiWHN/0XTZ9
         F9GEfy9M9ll3ffOXHAIsuleHndXqAphzmXe0PgvFz1hMBdvsmLQwznIZW0ya2oAQKW4Y
         ENzGOtxh9V9jSboaUWNf6p9VlOfxR+lRIOwRiWLG7gmaHT/0G4dBeiy8618I/sgvE2n2
         PPZJlYBOODS/5CZOOBqRTrWPr2seZxfZWaG6uVvYDW4H68PErGyogIXHbB4k5LaI5TdE
         m/wQ==
X-Gm-Message-State: AOJu0YwvoEiIefMPqqJl5Sel9dC3r68HOOFqF24iMV5K+OALjkeU7AeT
	ay7JueyPi5IB22Ocd1W6W5ZqlvYyEkvtpaTeqNfVMQ==
X-Google-Smtp-Source: AGHT+IH2iG08bIzEYYLAosPnZIOh4c7YPh9mfzAUPfhoifHONl5nCDKLKbiU6DKmkAdHGe0GNyiN+vKEshOsCkQVOrw=
X-Received: by 2002:a05:6512:3d94:b0:507:9a66:3577 with SMTP id
 k20-20020a0565123d9400b005079a663577mr4725984lfv.5.1701057397494; Sun, 26 Nov
 2023 19:56:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231012230237.2676469-1-wenst@chromium.org> <20231012230237.2676469-8-wenst@chromium.org>
 <bbc99c85-750e-4736-9320-cf9471fe4c92@collabora.com>
In-Reply-To: <bbc99c85-750e-4736-9320-cf9471fe4c92@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 27 Nov 2023 11:56:26 +0800
Message-ID: <CAGXv+5EiopM2wdccvh5_p9+67DAZnCpEhLeXUfm=3ih2hFZU3g@mail.gmail.com>
Subject: Re: [PATCH 7/9] arm64: dts: mediatek: Introduce MT8186 Steelix
To: Eugen Hristev <eugen.hristev@collabora.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 16, 2023 at 4:36=E2=80=AFPM Eugen Hristev
<eugen.hristev@collabora.com> wrote:
>
> On 10/13/23 02:02, Chen-Yu Tsai wrote:
> > The MT8186 Steelix, also known as the Lenovo 300e Yoga Chromebook Gen 4=
,
> > is a convertible device based on a common design of the same name. The
> > device comes in different variants. Of them, whether a world facing
> > camera is integrated is the only differentiating factor between the
> > two device trees added. The different SKU IDs describe this alone.
> >
> > The other device difference is the touchpad component used. This is
> > simply handled by having both possible components described in the
> > device tree, and letting the implementation figure out which one is
> > actually available. The system bootloader / firmware does not
> > differentiate this in that they share the same SKU IDs.
> >
> > Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> > ---
> >   arch/arm64/boot/dts/mediatek/Makefile         |   2 +
> >   .../mt8186-corsola-steelix-sku131072.dts      |  18 ++
> >   .../mt8186-corsola-steelix-sku131073.dts      |  18 ++
> >   .../dts/mediatek/mt8186-corsola-steelix.dtsi  | 197 +++++++++++++++++=
+
> >   4 files changed, 235 insertions(+)
> >   create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-steeli=
x-sku131072.dts
> >   create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-steeli=
x-sku131073.dts
> >   create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-steeli=
x.dtsi
> >

[...]

> > diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola-steelix.dtsi b=
/arch/arm64/boot/dts/mediatek/mt8186-corsola-steelix.dtsi
> > new file mode 100644
> > index 000000000000..8488f2f9dc4d
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola-steelix.dtsi
> > @@ -0,0 +1,197 @@

[...]

> > +&i2c2 {
> > +     i2c-scl-internal-delay-ns =3D <22000>;
> > +
> > +     /* second source component */
> > +     touchpad@2c {
> > +             compatible =3D "hid-over-i2c";
> > +             reg =3D <0x2c>;
> > +             hid-descr-addr =3D <0x20>;
> > +             interrupts-extended =3D <&pio 11 IRQ_TYPE_LEVEL_LOW>;
> > +             pinctrl-names =3D "default";
> > +             pinctrl-0 =3D <&trackpad_pin>;
> > +             vdd-supply =3D <&pp3300_s3>;
> > +             wakeup-source;
> > +     };
>
> Hi Chen-Yu,
>
> This is not okay, the `trackpad_pin` is shared with touchpad@15 , and if
> drivers are probed in parallel , this can lead to a conflict on this pin
> (GPIO11)

You're right. I've moved it under i2c2 for now, as we do for other platform=
s
with second source components.

This should hopefully be cleaned up once we have a hardware prober.

ChenYu

