Return-Path: <devicetree+bounces-2849-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E65317ACBA7
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 21:30:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id CABDE1C203BC
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 19:30:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA4D0DDDF;
	Sun, 24 Sep 2023 19:30:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A568BDDDC
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 19:30:25 +0000 (UTC)
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CE27FB
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 12:30:24 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-9ae7383b7ecso894255266b.0
        for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 12:30:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695583822; x=1696188622; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vUUJIEhzOdAnkw/nl7YJGdSxrlSg4ACmgxiwTGYWC4I=;
        b=QxTSx7IXh0NFcgx6KxbdOZAjJ3Z45CeoYftVPZd7o0N9/36+21rlNhdsz8KCbXSK0H
         +MfnqnUGROlpOzhb/1SGCwx2/O8VlCB8TOivTOttDSvg7qzhkxf1k7XkP7dQv+ci1CKV
         Sidw1ftV3TL2bCRtjSJgE5QIDnmeXxU+N/YYF9L2nrdWSi685VxEZz3BNv+5jJM3DoKx
         669P7w5ecIJJllXWuwja4kn5SXggsUpMdF+MuAnMofyzFgGjIFL8bKNwSu6s3aPkZODB
         X2kBgLy4+HD5dENZTjJhUZU99rEKuZOV5jbKsWswZ5KhPejTnyxfK2ZQFJOpcLqm9dT3
         eTZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695583822; x=1696188622;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vUUJIEhzOdAnkw/nl7YJGdSxrlSg4ACmgxiwTGYWC4I=;
        b=MbfEFLxYE9jnSAsbpMcILZqABHEKOOr5wlOdog++c4Y42aENXZTMSEgA9wNVtNwoW5
         LeUE60vOdlXFVjugryS5z5y4nlxLJ+l0sycoV2XeDOco7HdkAcRxIDiTN5wL3k7Eg3oG
         IXDB8jZ1xRhbidUR+RFT2eH0Ar4s4N9GTzTiKLL/sj5CJPpdo4EDmL3hS/vCvXMxEHsR
         9hSLljw9nJu7GU7kPsPNYyWODelqdT4zEKSLvBkLhxeVmK/DZGySLJvsyYgnfWGHDtFh
         sFG1tiF8yDfBzG70aHdDjv3QMmVfhfop/ria1Gez4Ysc8jD8HLl3n7l857Fp4G8Clw9m
         RQQw==
X-Gm-Message-State: AOJu0YzB2Bc1aI0v4ijxUMBIuxlOMYyDubjIbze2orKGx9rj4Xjbr2Br
	K0kkQvWlpgLozzfc7fsCawY=
X-Google-Smtp-Source: AGHT+IEaddZTMihzpc2QHNrcIR7tIgm1yDtiU4v1jqmd8nqjC0yUWtZOi/JcMn+36BWmzLdGhlwYRA==
X-Received: by 2002:a05:6402:291a:b0:533:dd4d:2941 with SMTP id ee26-20020a056402291a00b00533dd4d2941mr4899478edb.16.1695583822544;
        Sun, 24 Sep 2023 12:30:22 -0700 (PDT)
Received: from jernej-laptop.localnet (82-149-12-148.dynamic.telemach.net. [82.149.12.148])
        by smtp.gmail.com with ESMTPSA id n10-20020a056402514a00b0052333e5237esm4614742edd.88.2023.09.24.12.30.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Sep 2023 12:30:22 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-sunxi@lists.linux.dev, Chris Morgan <macroalpha82@gmail.com>
Cc: devicetree@vger.kernel.org, mripard@kernel.org, uwu@icenowy.me,
 samuel@sholland.org, wens@csie.org, conor+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 andre.przywara@arm.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V5 2/4] ARM: dts: sun8i: v3s: add EHCI and OHCI to v3s dts
Date: Sun, 24 Sep 2023 21:30:21 +0200
Message-ID: <5711313.DvuYhMxLoT@jernej-laptop>
In-Reply-To: <20230921135136.97491-3-macroalpha82@gmail.com>
References:
 <20230921135136.97491-1-macroalpha82@gmail.com>
 <20230921135136.97491-3-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Dne =C4=8Detrtek, 21. september 2023 ob 15:51:34 CEST je Chris Morgan napis=
al(a):
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Add the EHCI and OHCI controller to the Allwinner v3s to support using
> USB in host mode.
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Reviewed-by: Andre Przywara <andre.przywara@arm.com>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej

> ---
>  arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi | 23 ++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
>=20
> diff --git a/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi b/arch/arm/boot/d=
ts/allwinner/sun8i-v3s.dtsi
> index c87476ea31e2..e8a04476b776 100644
> --- a/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
> +++ b/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
> @@ -319,6 +319,29 @@ usbphy: phy@1c19400 {
>  			#phy-cells =3D <1>;
>  		};
> =20
> +		ehci: usb@1c1a000 {
> +			compatible =3D "allwinner,sun8i-v3s-ehci", "generic-ehci";
> +			reg =3D <0x01c1a000 0x100>;
> +			interrupts =3D <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&ccu CLK_BUS_EHCI0>, <&ccu CLK_BUS_OHCI0>;
> +			resets =3D <&ccu RST_BUS_EHCI0>, <&ccu RST_BUS_OHCI0>;
> +			phys =3D <&usbphy 0>;
> +			phy-names =3D "usb";
> +			status =3D "disabled";
> +		};
> +
> +		ohci: usb@1c1a400 {
> +			compatible =3D "allwinner,sun8i-v3s-ohci", "generic-ohci";
> +			reg =3D <0x01c1a400 0x100>;
> +			interrupts =3D <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&ccu CLK_BUS_EHCI0>, <&ccu CLK_BUS_OHCI0>,
> +				 <&ccu CLK_USB_OHCI0>;
> +			resets =3D <&ccu RST_BUS_EHCI0>, <&ccu RST_BUS_OHCI0>;
> +			phys =3D <&usbphy 0>;
> +			phy-names =3D "usb";
> +			status =3D "disabled";
> +		};
> +
>  		ccu: clock@1c20000 {
>  			compatible =3D "allwinner,sun8i-v3s-ccu";
>  			reg =3D <0x01c20000 0x400>;
>=20





