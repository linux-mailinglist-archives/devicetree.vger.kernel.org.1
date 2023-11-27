Return-Path: <devicetree+bounces-19050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 617347F97D6
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 04:07:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9B9491C204F6
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 03:07:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 628021FD6;
	Mon, 27 Nov 2023 03:07:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="nfT7tdIC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BC61111
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 19:07:40 -0800 (PST)
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2c8790474d5so47334231fa.2
        for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 19:07:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1701054459; x=1701659259; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VlaRJlvg6SkH3iVCCMUur0uADxqCqngF5eSxepb74eo=;
        b=nfT7tdICMIesqGQtcjuIgaf0csctl9yePlEA6YHx+rQHLtwbpR0+mOnpP05dHEQjjK
         L7BVjxF1GtskmgBBB+guCAbgvmqv/h0BN1HJ/j3N/r4DqsqOIU82arQbx6xbunelX1Eq
         j9dR3/gjI4Vrqx2YuAMgFtMTzv3qGXM6RNntM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701054459; x=1701659259;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VlaRJlvg6SkH3iVCCMUur0uADxqCqngF5eSxepb74eo=;
        b=I1wlH/PDr+ZgfabSrKZnOHBthTDMRYR30UVFW5lp27o47d3M9wmdzCaparXt5BU+/a
         3yEd2mnVnfbLpeRw7x5yLwhy5moheIZ072LVNNTkLMmNQ54/sfB1uJBTvDsYZfRauvEy
         3gOh3XR9ND4xOKjuDMcRbckyja4V7aYguhGnCc8t74I+bSEMhf4UgP48ZujgjDrOxVy8
         wNJ+cC//b/sgLUbsxPSsOwGzJ/0/x2n7HIM4zdIBhSC+oOKXZJELtziBaVxAneZey9h4
         6MvRBIIfcEYAwmREdShRNkVxhuVAyaeen1kHjekOWHUGe5mul52oBXSsSxU0U1GY2Mdb
         pOKA==
X-Gm-Message-State: AOJu0YyOYAugQrJ38fKmRC1eodek0jmP+uKWi/MK8s32zddfU7OdFF+2
	MlS5WHgnF2KyV3zohQj01neirxVLqKOebH06YT8fEA==
X-Google-Smtp-Source: AGHT+IF6iA8pXDpSmsO5bEY3xSd26XCL631sAXkpfn6+jD0thwzCwvWTVnjzWxDvI99Qtb6aAqinHNpBcziXbA/wSss=
X-Received: by 2002:ac2:4c48:0:b0:507:b7db:1deb with SMTP id
 o8-20020ac24c48000000b00507b7db1debmr8091073lfk.38.1701054458668; Sun, 26 Nov
 2023 19:07:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230913084457.1638690-1-wenst@chromium.org>
In-Reply-To: <20230913084457.1638690-1-wenst@chromium.org>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 27 Nov 2023 11:07:27 +0800
Message-ID: <CAGXv+5E5BWzMP981Agn01XVAO=KC5CE04oOi8xWwx=DT=N61dw@mail.gmail.com>
Subject: Re: [PATCH v3] arm64: dts: mediatek: mt6358: Merge ldo_vcn33_* regulators
To: Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Matthias, Angelo,

On Wed, Sep 13, 2023 at 4:45=E2=80=AFPM Chen-Yu Tsai <wenst@chromium.org> w=
rote:
>
> The ldo_vcn33_bt and ldo_vcn33_wifi regulators are actually the same
> regulator, having the same voltage setting and output pin. There are
> simply two enable bits that are ORed together to enable the regulator.
>
> Having two regulators representing the same output pin is misleading
> from a design matching standpoint, and also error-prone in driver
> implementations.
>
> Now that the bindings have these two merged, merge them in the device
> tree as well. Neither vcn33 regulators are referenced in upstream
> device trees. As far as hardware designs go, none of the Chromebooks
> using MT8183 w/ MT6358 use this output.
>
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>

Please remember to queue this up. All the driver changes were merged in
the last cycle.

ChenYu

> ---
> This was part of the series "regulator: mt6358: Remove bogus regulators
> and improvements". Since the driver parts related to this patch have all
> been picked up, so I'm sending this separately.
>
>  arch/arm64/boot/dts/mediatek/mt6358.dtsi | 11 ++---------
>  1 file changed, 2 insertions(+), 9 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt6358.dtsi b/arch/arm64/boot/d=
ts/mediatek/mt6358.dtsi
> index 96ba8490b629..ad5e4022e06d 100644
> --- a/arch/arm64/boot/dts/mediatek/mt6358.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt6358.dtsi
> @@ -292,15 +292,8 @@ mt6358_vrf18_reg: ldo_vrf18 {
>                                 regulator-enable-ramp-delay =3D <120>;
>                         };
>
> -                       mt6358_vcn33_bt_reg: ldo_vcn33_bt {
> -                               regulator-name =3D "vcn33_bt";
> -                               regulator-min-microvolt =3D <3300000>;
> -                               regulator-max-microvolt =3D <3500000>;
> -                               regulator-enable-ramp-delay =3D <270>;
> -                       };
> -
> -                       mt6358_vcn33_wifi_reg: ldo_vcn33_wifi {
> -                               regulator-name =3D "vcn33_wifi";
> +                       mt6358_vcn33_reg: ldo_vcn33 {
> +                               regulator-name =3D "vcn33";
>                                 regulator-min-microvolt =3D <3300000>;
>                                 regulator-max-microvolt =3D <3500000>;
>                                 regulator-enable-ramp-delay =3D <270>;
> --
> 2.42.0.283.g2d96d420d3-goog
>

