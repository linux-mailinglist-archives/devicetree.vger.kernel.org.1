Return-Path: <devicetree+bounces-4382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CE7047B2490
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 20:01:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 7FE05282656
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 18:01:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E52B513CD;
	Thu, 28 Sep 2023 18:01:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C10786FBF
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 18:01:27 +0000 (UTC)
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B2F019E
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 11:01:25 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-5363227cc80so1334984a12.3
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 11:01:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20230601.gappssmtp.com; s=20230601; t=1695924084; x=1696528884; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uiur2uBooxXQUwnNCRFKyJNY9Mbndh5Va49ZBRlBVnE=;
        b=EQe67hE51E/a6VgfxXlBAzZCIDwxZJPDV2ZBN3AT9RwqBeUYxm8q69zZdJ0jEA/gNf
         IirJYjKSyZUgJt1PVEw7QrLXIcCxUV+PSY5zKHYzggHDxp0gvCesEyMZKaIqE3bSk0oO
         JpemQ1kLIjtcjLBQ+hM9p7gozeHe4O4tV1rVdoQBaceOU7yDyBixyslDIKOkp+6tI6zz
         5Yo1CjTihKtDAhxhT+cM+5fkC2IWNMFApqpMm77AP8NdAB38ffhHQkP6oJu8ibCr78pt
         BbkfnHJ3fZ84OxQ6HWGjHbjnjokI2oXg8vssBisDXNTinYXDkSHfXlp3Agym3+0bRDLh
         PsJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695924084; x=1696528884;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uiur2uBooxXQUwnNCRFKyJNY9Mbndh5Va49ZBRlBVnE=;
        b=jV4POulYcKUrlKLsLH7XMI8huhVaCxqziqAljNHB8n1CZ1e5/RWD8nLX2x9CiNOxyW
         Fv4RyWcpW9SqHRTOwe2WFIj3/Qc2hHc6891jhJ/wkmMyU1kZ1YyjlfL/PN5C9tws2tHS
         gpKQLGqj81UaAqbvCMvEkZDJVxIf5kCgw65u1F4fAaWGO0SCSjs25Gel3uE1CY9yLyF1
         01jwADSKRHsW4swq1iIGOa/nvjmVk2vv4IQCnlQa5AXyPyCgcaX5J0TRh6bj9Gmt9snu
         7VVvbq2fX84WZWoMRe/Tbw4DjpltJFQy0gRxFWk1HrJF4jdUkc2/a3B4dkkrKG6DfrP5
         ycXQ==
X-Gm-Message-State: AOJu0YzjlmZFF/r9QNwVVm64LhS3NfmCbYpPPQ/owjKZJa0flLJXjBl8
	RtxPtV1kpR97w6STvTXsL6JATDeMeA/fWFeTWnmV0g==
X-Google-Smtp-Source: AGHT+IGaXe8uTKz9Ra+54w7HxJaOzDdbmCsFVteQiYOGSh3tR/eEZ9h+AFAxYV1KjHvtL2mksRiQ52ceS6LkJ4KGNgY=
X-Received: by 2002:a17:906:5393:b0:9a1:f73b:90ce with SMTP id
 g19-20020a170906539300b009a1f73b90cemr1949184ejo.54.1695924083992; Thu, 28
 Sep 2023 11:01:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230926194335.1451802-1-tharvey@gateworks.com> <a3b3d647-4995-4d55-b6f9-a93119caf86e@linaro.org>
In-Reply-To: <a3b3d647-4995-4d55-b6f9-a93119caf86e@linaro.org>
From: Tim Harvey <tharvey@gateworks.com>
Date: Thu, 28 Sep 2023 11:01:11 -0700
Message-ID: <CAJ+vNU0R_zU2wh1Om9wgLp4ZREAJia5uxBCgrO7MxNmcZf7uLw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mp-venice-gw73xx: add TPM device
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, Sep 27, 2023 at 12:58=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 26/09/2023 21:43, Tim Harvey wrote:
> > Add the TPM device found on the GW73xx revision F PCB.
> >
> > Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> > ---
> >  .../boot/dts/freescale/imx8mp-venice-gw73xx.dtsi      | 11 ++++++++++-
> >  1 file changed, 10 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mp-venice-gw73xx.dtsi b/=
arch/arm64/boot/dts/freescale/imx8mp-venice-gw73xx.dtsi
> > index 48a284478468..43e5e838cefa 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mp-venice-gw73xx.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mp-venice-gw73xx.dtsi
> > @@ -95,8 +95,17 @@ reg_usdhc2_vmmc: regulator-usdhc2-vmmc {
> >  &ecspi2 {
> >       pinctrl-names =3D "default";
> >       pinctrl-0 =3D <&pinctrl_spi2>;
> > -     cs-gpios =3D <&gpio5 13 GPIO_ACTIVE_LOW>;
> > +     cs-gpios =3D <&gpio5 13 GPIO_ACTIVE_LOW>,
> > +                <&gpio1 10 GPIO_ACTIVE_LOW>;
> >       status =3D "okay";
> > +
> > +     tpm@1 {
> > +             compatible =3D "tcg,tpm_tis-spi";
> > +             #address-cells =3D <0x1>;
> > +             #size-cells =3D <0x1>;
>
> Why do you need these?
>
> > +             reg =3D <0x1>;
>
> reg is always after compatible
>
> > +             spi-max-frequency =3D <36000000>;
> > +     };
> >  };
> >
> >  &gpio4 {
>
> Best regards,
> Krzysztof
>

Krzysztof,

Thanks for the review - I will remove the unnecessary properties with a v2

Best Regards,

Tim

