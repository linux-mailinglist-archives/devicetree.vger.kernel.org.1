Return-Path: <devicetree+bounces-2589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E667AB9EE
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 21:17:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id B06DA2820B3
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 19:17:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 066AF45F69;
	Fri, 22 Sep 2023 19:17:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC7F441E32
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 19:17:06 +0000 (UTC)
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C0D6B9
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 12:17:05 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-9936b3d0286so325263566b.0
        for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 12:17:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695410224; x=1696015024; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6MP3neW5MELUVoHgdy0YszQUkkf8ooNGESUSGjReVm4=;
        b=mgLlYXXKRMti3kKQyvj4JWtrYTEqInRaZEPmVPtjapX/skUE2gt9JaZ4jh+OGTK+8o
         ZquaBUuirNbvT/tvFOhrnreldtWMwKDmzhzZQuDvH1JzRwvJKLokrouyl3b2doURJhL4
         nEWQPVSPGcQR1UiNmYwQk27rq8P4HOoKpI0ITqt0J6TicgEj99LmH85fsPO+pk4q6RrM
         fZfx95ROkuPdzsbfF2bhDZHP8ieeUKnVGWfaMxdyblWPzh13iuOYQ/oZccvVHuKbCzNC
         xaYzrVMT/ip3/YYp2/Yyue5O12YkdTWAnhdp4BpWJMAFbiyICsrLw8VlpsbOumOJCefe
         sHOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695410224; x=1696015024;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6MP3neW5MELUVoHgdy0YszQUkkf8ooNGESUSGjReVm4=;
        b=YQI7f5Ye8zRsYjFfWVv51jjDyWunKCXrRYGe/pGnBnO9BEQrI01NM1PUVQ4roQnu0X
         CWQsqIMpScOlpHig/mHH2O41Q8EODwaoYqhoI9V/IzBDcad3WAQqCJ4WR59ziai1kPoI
         goJb1NfPuHznHGkmQHgaWQIep0ogC7q1miHcAXZH8zevSLvHUPwu/0+O5uSmXFeOuMJ2
         XKuXtT7gHDoI4PZELn+nEGHTJo8h0UNOua+4+xYHmQpN5c+yNjS0QvGcEwFv0pApPWOl
         QiwU6WVv9tn0AoiLy8vKEJ9aY+1MG9JjR+zAqZWaTv2QJBDJQx+BO89TQx34nKl4SNv4
         U77w==
X-Gm-Message-State: AOJu0YzhEJNy7uiNYW5GqmiBy5m8hzTqrGhvpF0Qi1OpkFlUst5AOfRp
	dX8arefD1SSSdtFyZHvq0WvBHj2P06n07TLLATs=
X-Google-Smtp-Source: AGHT+IGHQcJZt/AecpFsk+Bn2ZqIcdDfdBSHHDkj14tIDmQDNe/cR3g0VKlnPYbXxYkicN+uQn7Hr0QDzNzBS5zb8I8=
X-Received: by 2002:a17:906:10d6:b0:9ae:375f:bf00 with SMTP id
 v22-20020a17090610d600b009ae375fbf00mr227176ejv.62.1695410223420; Fri, 22 Sep
 2023 12:17:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230916085855.28375-1-zajec5@gmail.com>
In-Reply-To: <20230916085855.28375-1-zajec5@gmail.com>
From: Vivek Unune <npcomplete13@gmail.com>
Date: Fri, 22 Sep 2023 15:16:53 -0400
Message-ID: <CAChtp76LjsxKUgebRRLN0R+zAKU_Z7pjotUFGW_EexNzbXG-6A@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: BCM5301X: Relicense Vivek's code to the GPL
 2.0+ / MIT
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Florian Fainelli <florian.fainelli@broadcom.com>, Hauke Mehrtens <hauke@hauke-m.de>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	bcm-kernel-feedback-list@broadcom.com, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

>
> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>
> Move code added by Vivek to the bcm-ns.dtsi which uses dual licensing.
> That syncs more Northstar code to be based on the same licensing schema.
>
> This code was added in the commit 37f6130ec39f ("ARM: dts: BCM5301X:
> Make USB 3.0 PHY use MDIO PHY driver").
>
> Cc: Vivek Unune <npcomplete13@gmail.com>
> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> ---
> Vivek: can you send your Acked-by for this patch, please?
> ---
>  arch/arm/boot/dts/broadcom/bcm-ns.dtsi   | 27 ++++++++++++++++++++++++
>  arch/arm/boot/dts/broadcom/bcm5301x.dtsi | 27 ------------------------
>  2 files changed, 27 insertions(+), 27 deletions(-)
>
> diff --git a/arch/arm/boot/dts/broadcom/bcm-ns.dtsi b/arch/arm/boot/dts/b=
roadcom/bcm-ns.dtsi
> index f0f3a718c413..d0d5f7e52a91 100644
> --- a/arch/arm/boot/dts/broadcom/bcm-ns.dtsi
> +++ b/arch/arm/boot/dts/broadcom/bcm-ns.dtsi
> @@ -327,6 +327,29 @@ mdio: mdio@18003000 {
>                 #address-cells =3D <1>;
>         };
>
> +       mdio-mux@18003000 {
> +               compatible =3D "mdio-mux-mmioreg", "mdio-mux";
> +               mdio-parent-bus =3D <&mdio>;
> +               #address-cells =3D <1>;
> +               #size-cells =3D <0>;
> +               reg =3D <0x18003000 0x4>;
> +               mux-mask =3D <0x200>;
> +
> +               mdio@0 {
> +                       reg =3D <0x0>;
> +                       #address-cells =3D <1>;
> +                       #size-cells =3D <0>;
> +
> +                       usb3_phy: usb3-phy@10 {
> +                               compatible =3D "brcm,ns-ax-usb3-phy";
> +                               reg =3D <0x10>;
> +                               usb3-dmp-syscon =3D <&usb3_dmp>;
> +                               #phy-cells =3D <0>;
> +                               status =3D "disabled";
> +                       };
> +               };
> +       };
> +
>         rng: rng@18004000 {
>                 compatible =3D "brcm,bcm5301x-rng";
>                 reg =3D <0x18004000 0x14>;
> @@ -467,6 +490,10 @@ nand_controller: nand-controller@18028000 {
>                 brcm,nand-has-wp;
>         };
>
> +       usb3_dmp: syscon@18105000 {
> +               reg =3D <0x18105000 0x1000>;
> +       };
> +
>         thermal-zones {
>                 cpu_thermal: cpu-thermal {
>                         polling-delay-passive =3D <0>;
> diff --git a/arch/arm/boot/dts/broadcom/bcm5301x.dtsi b/arch/arm/boot/dts=
/broadcom/bcm5301x.dtsi
> index de46dbd5b876..f06a178a9240 100644
> --- a/arch/arm/boot/dts/broadcom/bcm5301x.dtsi
> +++ b/arch/arm/boot/dts/broadcom/bcm5301x.dtsi
> @@ -62,33 +62,6 @@ periph_clk: periph_clk {
>                 };
>         };
>
> -       mdio-mux@18003000 {
> -               compatible =3D "mdio-mux-mmioreg", "mdio-mux";
> -               mdio-parent-bus =3D <&mdio>;
> -               #address-cells =3D <1>;
> -               #size-cells =3D <0>;
> -               reg =3D <0x18003000 0x4>;
> -               mux-mask =3D <0x200>;
> -
> -               mdio@0 {
> -                       reg =3D <0x0>;
> -                       #address-cells =3D <1>;
> -                       #size-cells =3D <0>;
> -
> -                       usb3_phy: usb3-phy@10 {
> -                               compatible =3D "brcm,ns-ax-usb3-phy";
> -                               reg =3D <0x10>;
> -                               usb3-dmp-syscon =3D <&usb3_dmp>;
> -                               #phy-cells =3D <0>;
> -                               status =3D "disabled";
> -                       };
> -               };
> -       };
> -
> -       usb3_dmp: syscon@18105000 {
> -               reg =3D <0x18105000 0x1000>;
> -       };
> -
>         i2c0: i2c@18009000 {
>                 compatible =3D "brcm,iproc-i2c";
>                 reg =3D <0x18009000 0x50>;
> --
> 2.35.3
>
Acked-by: Vivek Unune <npcomplete13@gmail.com>

