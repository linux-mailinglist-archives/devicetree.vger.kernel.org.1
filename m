Return-Path: <devicetree+bounces-254351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 384C3D17828
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:10:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8F2223026282
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:05:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 545C930ACF2;
	Tue, 13 Jan 2026 09:05:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZAORsajj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f43.google.com (mail-dl1-f43.google.com [74.125.82.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1C50346FB3
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:04:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768295101; cv=none; b=XhQl7Wn57RaDcn/FELBGxaumx0XSJ6LIdudpFZK6fMgK2q7k8FW6EyzE4qdEeU+zWCiJj/5jDrruJCoSMOoE0YyGJBugDNFfYUvrbp3gb+NXB/IvoPmqf1n1lpWk0q0HviupBuR4lM7WxmntrTjLUvLvK/3uKy6vis0RU56iY2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768295101; c=relaxed/simple;
	bh=7UftW7AxgAgJS4Mb3DiWtQZF+1LauWyB2nHqcsVo2YI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HpdLqzAoXObVOQkPaB2c76QHUVH9LOtGpmKarLv9cWW7IFTsjIw2U3u/PjGuklJzxDMBgqvlsLRHVVeCASPbGPi6xLZbWPOrs3xK26eNsdETOkyDmOtBYpUK5nP2fsR2w/mV9nzLjYS4/lbD2/pNGOweuHWYfEZ03YuvrheN0UI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZAORsajj; arc=none smtp.client-ip=74.125.82.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f43.google.com with SMTP id a92af1059eb24-11df4458a85so9817484c88.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:04:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768295099; x=1768899899; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TF3eFYrkHc1cOZLA7Pry0zv5VjtfYubZccA+TeijqI4=;
        b=ZAORsajjbupEG+z4GANJenqPsXRaNGGdN4jeU6fmdId8gIFQTvnIlRmpo/tgTGVUie
         6y4Q6qMpuGyrDou8JhTcBzfqwKOgNEp9UMG3kkPAuck3sUc7KHUsmfJl8wlhQPSoYp5P
         5W90oAURuVJMwSqfd8vDxntewK/8MsRnwwNzYjpzSoqX+m78AEIY6eHyEMznFYPxtzW8
         Qohq8iS0uPuS9W2y9l5UDde61j0KmJg4ZJVlD6CzY/cywRiz+q83ibRalnfoPA8s97I5
         yGDklviWQkgTsHU7Va36A71sTH9Jb3UrKJT7MCtFMoN/YYPJZuVhOsUAIyF1LYXpRNNp
         iI2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768295099; x=1768899899;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=TF3eFYrkHc1cOZLA7Pry0zv5VjtfYubZccA+TeijqI4=;
        b=i+q3z7/K7TxGvfLLjc2gMcEYeoknmaLxQBQgw72rZ2eT4hrYFccEjg4hOxJs0d7vfn
         3x3pIEGpnaqWwUID6ECblOJ17AUJrI4QuVLb892zWQH2/Oiz+QGl5uJXMDQevD3r3fgG
         JU8KmYi1c+EWxUCUPNycHNEqR/W8JxZ/PZmgSSySUOzp8eQKrZOrgu1063tkK10i/u3V
         h3toplCizgK1VlUsqWmmWD1RTJKIA/4/Li3A0cYKke76hFQ2WFTLi6kTMuQ2n2mWSjnO
         mQm16k0ciR7N33P9MyxM3vFxOkfBoha1YgYNVXJsae9cvpYiTTiti6WAtUSShoTsJqre
         WZ9A==
X-Forwarded-Encrypted: i=1; AJvYcCWnT1i4v2jJxIA5Rg6rcZMZppehfBBVFbM5Zv8QPH56d8qGmjtCBXI+7OA7+ztRZsnk+XShPpwxnvCt@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7oGD4l79VRyqk8hB0KvUPnYQBgVc0tGQHGR6/jPQnGZwJUdDw
	LMx/NdUHZYMh9eqNy704djMdXBCnTL9N4pIVObTNUb7RGmUxNzIsmgu8QbPA81mvA4YhR2rWdO8
	AbJg6PbMp7O9KEw3dCv1ECO4IJiFg/lQ=
X-Gm-Gg: AY/fxX4QMx7w06qmMpxh3nNE/AiOAP7hXcQCtyXYGQjVXS9UUkwPSSpKUz+DF6vMSih
	akx3jqOggQhU6bh+4YRMa3uDvDRxizQmGWlR8OzmVlPcEaq4OiirOetX5HmziBoElPsGQ64EW19
	WPFfl7Leo3os9hb9LGlYLIVBKrLG9aociuUSa0i7tzqCVRk4ssvbGzBrkRMeWY2HWVjXWVX9Krt
	1dYSnnGkFRcqWYFY3Ekg9MrJ96E3Tr8lSA5HP4dxBq8o38yjcuzbH1cPNH+x53TGFCMu0MR02F8
	njPU+B9WVjek1zxbvQPFlk00DOcyR3+2UTuUmjx03bwd2JGY6qDZ9JS6fwPSNcdgqO4mEG9qSS/
	iQ930GyGwmg==
X-Google-Smtp-Source: AGHT+IH1J0toJnhizL3PbL7ktkyTfdnjpbyE1HhT2awO0xq5WfFz2zWAUDP63sX81eGbqeQTkeo9sdBX4290VLvm5yw=
X-Received: by 2002:a05:7022:248e:b0:122:33e:7545 with SMTP id
 a92af1059eb24-122033e7683mr17502402c88.6.1768295098705; Tue, 13 Jan 2026
 01:04:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260111-imx952-dts-v2-v2-0-5773fa57e89e@nxp.com> <20260111-imx952-dts-v2-v2-9-5773fa57e89e@nxp.com>
In-Reply-To: <20260111-imx952-dts-v2-v2-9-5773fa57e89e@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 13 Jan 2026 11:07:28 +0200
X-Gm-Features: AZwV_Qi865ruliWjfUeM4dFbMw-2xdIzSGSLpHt9sdtKpygo1iYWiegXtWJvoTs
Message-ID: <CAEnQRZBpD67MWk7T4j6RTymGiFJNW5kAs2TMS=BxVTVs7qjUAQ@mail.gmail.com>
Subject: Re: [PATCH v2 09/10] arm64: dts: imx952-evk: Add flexcan support
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Peng Fan <peng.fan@nxp.com>, Haibo Chen <haibo.chen@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Jan 11, 2026 at 2:46=E2=80=AFPM Peng Fan (OSS) <peng.fan@oss.nxp.co=
m> wrote:
>
> From: Haibo Chen <haibo.chen@nxp.com>
>
> Add flexcan support, since flexcan1 share pins with PDM,
> default disable flexcan1.
>
> Signed-off-by: Haibo Chen <haibo.chen@nxp.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx952-evk.dts | 45 ++++++++++++++++++++++=
++++++
>  1 file changed, 45 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/freescale/imx952-evk.dts b/arch/arm64/bo=
ot/dts/freescale/imx952-evk.dts
> index 21b951a2156414819dfb589e5e7e736e7b1fe48a..bae7b88f8229babc42952b7ab=
beb912cbefc10fd 100644
> --- a/arch/arm64/boot/dts/freescale/imx952-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx952-evk.dts
> @@ -64,6 +64,22 @@ linux_cma: linux,cma {
>                 };
>         };
>
> +       flexcan1_phy: can-phy0 {
> +               compatible =3D "nxp,tjr1443";
> +               #phy-cells =3D <0>;
> +               max-bitrate =3D <8000000>;
> +               enable-gpios =3D <&pcal6416 6 GPIO_ACTIVE_HIGH>;
> +               standby-gpios =3D <&pcal6416 5 GPIO_ACTIVE_LOW>;
> +       };
> +
> +       flexcan2_phy: can-phy1 {
> +               compatible =3D "nxp,tjr1443";
> +               #phy-cells =3D <0>;
> +               max-bitrate =3D <8000000>;
> +               enable-gpios =3D <&i2c4_pcal6408 4 GPIO_ACTIVE_HIGH>;
> +               standby-gpios =3D <&i2c4_pcal6408 3 GPIO_ACTIVE_LOW>;
> +       };
> +
>         reg_3p3v: regulator-3p3v {
>                 compatible =3D "regulator-fixed";
>                 regulator-max-microvolt =3D <3300000>;
> @@ -108,6 +124,21 @@ reg_usb_vbus: regulator-vbus {
>
>  };
>
> +/* pin conflict with PDM */
> +&flexcan1 {
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&pinctrl_flexcan1>;
> +       phys =3D <&flexcan1_phy>;
> +       status =3D "disabled";
> +};

So we add this here just for simplicity right? And then enable
flexcan1 in a separate dts?

With this,

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

