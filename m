Return-Path: <devicetree+bounces-101538-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C8FBE9724A5
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 23:46:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 778F1284B68
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 21:46:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79B9018C919;
	Mon,  9 Sep 2024 21:46:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gateworks.com header.i=@gateworks.com header.b="bBtrozIK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8A7F8F5A
	for <devicetree@vger.kernel.org>; Mon,  9 Sep 2024 21:46:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725918384; cv=none; b=UDMuApkBoh8+WcoZGSAsogZEkYMmm/y72L5EqSESSVEfxeRR2bDDYAKY82KOrn7+1veI4BNN/YL68u3eLHxLHspsqNAtBsR06DnwQ7k4BjzEwtXjXz6A2ZuaMbOTuOoaaFRly5O46d59SubUyyeIIbMHa6Zzy+ndOJ3sxLyHwTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725918384; c=relaxed/simple;
	bh=nM6fWCoX1di+0MQViZg543ykFf2oNkQIUsf5k3wnNXM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JBvrqzAN2Lq7fse3iFBZAREOxfdkz1z8BpSTvWnsGT2kVT11kbYow7LgTuSxH3bzeCuMLQ7MqByI07OFA7wI3yi75BwW6WowgsJ4Xgy3lMcC5VPLjtT1TljZlqxFrSsbIrh2cKCTfhKF3ddOD8W3TJ26T6YN9OV/U7pKKhz6nyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gateworks.com; spf=pass smtp.mailfrom=gateworks.com; dkim=pass (2048-bit key) header.d=gateworks.com header.i=@gateworks.com header.b=bBtrozIK; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gateworks.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gateworks.com
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2f75428b9f8so37570361fa.3
        for <devicetree@vger.kernel.org>; Mon, 09 Sep 2024 14:46:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks.com; s=google; t=1725918380; x=1726523180; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h58eAOOyutx8X4vwncmQ+slvyq67BTtOg7qW508aZBY=;
        b=bBtrozIKG/zpr9FLqtF5yRSwz2o//dopLgc2bfRRhZwGx2Ye52RE8ROXqGm1cAyDRl
         3Zs5lTWMzZJuCMZaj2rV8RdFQp9SackHCxIKou0edxTbrn1CdSJESX2CT2G/8VSFS5CN
         WQsoSTSPbh/vv6sSQD6WhhpS2mjQn8/riD477HgtHsK9PUDX9OAEy6qIl5zoOlsNFJGB
         cY4T2MaGfY4gSgaOSg+3n34GMa5/nUdU342KsP8YuLrR2hZDxytAkqHjSmYM/6iUIJVY
         sGtVdwtMDbGLwspvM9a4WzqSt1NAbn4KV/XPuQhEz1NNo6bIqxwFGqDjF/VMs4Wwk3Ny
         EoAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725918380; x=1726523180;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h58eAOOyutx8X4vwncmQ+slvyq67BTtOg7qW508aZBY=;
        b=kUfIAYk9ts6DWvE9wo/gqcztl/lhVQP6d+nWJn0cg017SBIy6zKymwyHukTQGgmjp0
         +UkbkggmJA/4ghlcKdDYZuK3BTOVjwxcEQTjSz1nAQTXDxUUpydNn2QnmpXFevtpytq7
         SOePbooWZMg+EeqQ6z4o6CxnqDxPv4yCE1z7q4ucju4sfj0B02NNEGSrS6R8IQnJfHJs
         /79W0Np+us55vUjxj5mMTXPR1rHAx+hEzojQLosvObEMsZ8RwrJK/Z0aPAs9AjGl9fte
         vh3EV3jhAqSCjAl1K9VNt5g6NPlvuoASA4xomFgnakLoLSDxePRSWjJrdvJ3SPYvJJU6
         BYGQ==
X-Forwarded-Encrypted: i=1; AJvYcCXv7kIVa92Ew6yp1cII+6P3zynr79iFfkGl5k4gfu6km06btr4nMiZxGZj4qFBsHDqy8ojJY/3dQ0vu@vger.kernel.org
X-Gm-Message-State: AOJu0YyaBR0aIlda/D5FSJcrOhoxas1oDOlpzpCaMUGgzvSjBu6EEqfB
	v/Dw9ob/mCfObWAX3d5ZkMmQZMdrtMIDwnqNRmoC809mce5zwx5rlKlkNK2I6EMYKTtk0P7v3pG
	sLYcKVu/8DH2TCCeQyR1b4nVwgC69tLucGWCwURKRs0ujH3Bk
X-Google-Smtp-Source: AGHT+IEjH3/u/TXEjoWXe2Q1DAHyvUARMeL74z3Q9298y4A1ALPxZ2Iw4jLoIipvASJ4nbuMM/siJdKogiXxoONctHU=
X-Received: by 2002:a2e:be9e:0:b0:2f3:c384:71ee with SMTP id
 38308e7fff4ca-2f75aa07bd2mr89494941fa.33.1725918378875; Mon, 09 Sep 2024
 14:46:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240905183107.517244-1-tharvey@gateworks.com> <PAXPR04MB8459CD40E8A0925EE3396F2D889E2@PAXPR04MB8459.eurprd04.prod.outlook.com>
In-Reply-To: <PAXPR04MB8459CD40E8A0925EE3396F2D889E2@PAXPR04MB8459.eurprd04.prod.outlook.com>
From: Tim Harvey <tharvey@gateworks.com>
Date: Mon, 9 Sep 2024 14:46:07 -0700
Message-ID: <CAJ+vNU1UH5UNb3rEGtJ_HpsJvCAsgtqAwSfvTS9s1yM6JVad-g@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8m*-venice-gw75xx: add Accelerometer device
To: Peng Fan <peng.fan@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "imx@lists.linux.dev" <imx@lists.linux.dev>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 6, 2024 at 1:14=E2=80=AFAM Peng Fan <peng.fan@nxp.com> wrote:
>
> > Subject: [PATCH] arm64: dts: imx8m*-venice-gw75xx: add
> > Accelerometer device
> >
> > The GW79xx has a LIS2DE12TR 3-axis accelerometer on the I2C bus
> > with an interrupt pin. Add it to the device-tree.
> >
> > Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> > ---
> >  .../boot/dts/freescale/imx8mm-venice-gw75xx.dtsi | 16
> > ++++++++++++++++  .../boot/dts/freescale/imx8mp-venice-gw75xx.dtsi
> > | 16 ++++++++++++++++
> >  2 files changed, 32 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw75xx.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw75xx.dtsi
> > index 5eb92005195c..417c19774b17 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw75xx.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw75xx.dtsi
> > @@ -116,6 +116,16 @@ &i2c2 {
> >       pinctrl-0 =3D <&pinctrl_i2c2>;
> >       status =3D "okay";
> >
> > +     accelerometer@19 {
> > +             pinctrl-names =3D "default";
> > +             pinctrl-0 =3D <&pinctrl_accel>;
> > +             compatible =3D "st,lis2de12";
> > +             reg =3D <0x19>;
>
> Nitpick:
> compatible, reg should be top.
> https://docs.kernel.org/devicetree/bindings/dts-coding-style.html

Hi Peng,

Thanks, I will submit a v2

Tim

