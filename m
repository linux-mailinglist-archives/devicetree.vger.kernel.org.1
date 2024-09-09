Return-Path: <devicetree+bounces-101499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 57EE1972010
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 19:10:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F1F451F24193
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 17:10:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6193E170A01;
	Mon,  9 Sep 2024 17:10:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gateworks.com header.i=@gateworks.com header.b="UbVtjPoD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB2C16C852
	for <devicetree@vger.kernel.org>; Mon,  9 Sep 2024 17:10:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725901852; cv=none; b=SIbqnf7Yh0ZwpJaQFCbFWxyalmlpYJYMDWPGIotkjJtG0zFTLCP7ATg84fnA+JBy3yjbljl7dp3XIPgeTk9ev4zthbESp+YP6mk6QaBcR4Pvps/Z6u1bcPG68s/qw4zlZjffVZ5IHvg67m4Zshv/YFXvpiy0mdN4pmXzwg/zE7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725901852; c=relaxed/simple;
	bh=dRfrIZS6Njo27yDGcp/CX4lUhpe+PQOLnAbXzE3pqCk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Wsv3TdKXr1yaoJDIDc/BRBtHBvzl8pIUWlqmSYw6kxRz551M58kabxOMoHkn/xVaubteRuKJ3F2hzSlHxnEOEDLq6NrkOBHMYFmjUeHtW4neOYHR0SK6PmOPh/nbSfLsWUURyCYoYcG8V5qRtAOdsSg73KkuPqiG25/6HYUcL+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gateworks.com; spf=pass smtp.mailfrom=gateworks.com; dkim=pass (2048-bit key) header.d=gateworks.com header.i=@gateworks.com header.b=UbVtjPoD; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gateworks.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gateworks.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a8d4093722bso307999266b.0
        for <devicetree@vger.kernel.org>; Mon, 09 Sep 2024 10:10:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks.com; s=google; t=1725901848; x=1726506648; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4OukvZRcUZByAUfm38hAhCqj1SLJokR0fI3NcQUB9xg=;
        b=UbVtjPoD73UllsA90e2GIdrZtRI9WFZY/R1IipLb+vW3e2SXIYEB/6pOJQBYQkbZTP
         EYSD9ZWYzDK946q/rAPj6SXxU0GuqY4VkzpHX0FoVfFLP55lO7psXJg3ewg4J2NJITZT
         yS8C8NlTtBV/nsVlbiD5pnZwcrSRf8/i3YYvGroe4KRbYet1x3ILn6AVvGo4SczeLxIU
         8SaHzdpWOafns2sf2+pMbEx0iOLVFg4TBi5yCbjPrGXIRv34LXvwLfAm2Ljpff6hf22t
         STokcLUAqvu0lVWB+BRHWyXmkXleg335lTEvRti9w8Q+uOwV8/AkCYMVSfP1AeXP5hjl
         wxkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725901848; x=1726506648;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4OukvZRcUZByAUfm38hAhCqj1SLJokR0fI3NcQUB9xg=;
        b=g0kBL0YrZP4MeelcN+HNWRpFAXHTdWFqi1hHHVtxSJKyRzqHvYsv/ky0DL+9CWqFil
         9UIURnlwVBITyPE/BKj5Fo0PoU2r8uDoCrBuLpfXQpcEMJ6SOyI1G2sqnWRVxQjZGSqD
         te5anEQTc6XdRQKiBeI4JxT57nKx654v/rgSHTffP5qGJ0B38QlvNWVhALhkOhRptb+k
         gYDYrQWbWZt/rwWwRFNMZ+IVi+Rl5YRpY4qa177FfXsWJzXlzqw2zMvvvpn63vYwTorw
         gSGFIw151i93yZOhmDz03dekW9AXTwm76KDRFze95+tzzo8im0XmnJSHxxx/VgnxFjQs
         VyPQ==
X-Forwarded-Encrypted: i=1; AJvYcCWIqMraLwh/VI1qaXL49Gtaj66dFmRaxEJnovvmGO5Mqbdf7ZSBdMO7ytNrk+4l4WXsS2Z1EpLhZ/RJ@vger.kernel.org
X-Gm-Message-State: AOJu0YyidwDn180UJM1xXwpdBEaqlFHRabKXjTfTT7egk+UcRvClBkZ5
	bt+Rr/ugf3BSLYLltUc88GRLLoaYtdWWCt96jCDcCuQZAO4a5PxJX2vsMz81SmIHJ+Z35CxFwtk
	FoReRR+4hOsEtI7D8oyw9Lzd1uygnKD+OzAsdcA==
X-Google-Smtp-Source: AGHT+IF/4AsAIyAQZgiHx9WUmw49BwTwtOVNEZFc4QOFGTSEQ/1CBo+iochu5lAkAw4d00gWIi2brAodC5mIGAHH+l8=
X-Received: by 2002:a17:907:724c:b0:a8a:8127:4af with SMTP id
 a640c23a62f3a-a8d1c4d739amr1019260566b.39.1725901846987; Mon, 09 Sep 2024
 10:10:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240807-fsl_dts_warning-v2-0-89e08c38831a@nxp.com>
 <20240807-fsl_dts_warning-v2-3-89e08c38831a@nxp.com> <CAJ+vNU3ZsJG-eoqf3JcHTyDwjp4uOW1XiEhnOfWZ1FJ-q1Y9Hw@mail.gmail.com>
 <ZtoDviZZQ0/pVGZs@lizhi-Precision-Tower-5810>
In-Reply-To: <ZtoDviZZQ0/pVGZs@lizhi-Precision-Tower-5810>
From: Tim Harvey <tharvey@gateworks.com>
Date: Mon, 9 Sep 2024 10:10:35 -0700
Message-ID: <CAJ+vNU2gabeVrKvDe_e7R4yuNp2Gn94QQTLYptfPRWmy=+hRdQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/6] arm64: dts: imx8mm-venice-gw7901: add
 #address(size)-cells for gsc@20
To: Frank Li <Frank.li@nxp.com>
Cc: Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, imx@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 5, 2024 at 12:17=E2=80=AFPM Frank Li <Frank.li@nxp.com> wrote:
>
> On Thu, Sep 05, 2024 at 11:56:41AM -0700, Tim Harvey wrote:
> > On Wed, Aug 7, 2024 at 7:54=E2=80=AFAM Frank Li <Frank.Li@nxp.com> wrot=
e:
> > >
> > > Add #address-cells and #size-cells for gsc@20 to fix below warning:
> > > arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dtb: gsc@20: '#add=
ress-cells' is a required propert
> > >
> > > Signed-off-by: Frank Li <Frank.Li@nxp.com>
> > > ---
> > >  arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts | 2 ++
> > >  1 file changed, 2 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts b=
/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
> > > index 136cb30df03a6..35ae0faa815bc 100644
> > > --- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
> > > +++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
> > > @@ -364,6 +364,8 @@ gsc: gsc@20 {
> > >                 interrupts =3D <16 IRQ_TYPE_EDGE_FALLING>;
> > >                 interrupt-controller;
> > >                 #interrupt-cells =3D <1>;
> > > +               #address-cells =3D <1>;
> > > +               #size-cells =3D <0>;
> > >
> > >                 adc {
> > >                         compatible =3D "gw,gsc-adc";
> > >
> > > --
> > > 2.34.1
> > >
> > >
> >
> > Hi Frank,
> >
> > I just noticed this patch (along with a few others to
> > imx8m*venice*dts* which undoes what was done in commit 3343ab4cc698
> > "arm64: dts: freescale: imx8m*-venice-*: fix gw,gsc dt-schema
> > warnings" which my commit message states: Fix the dt-schema warnings
> > due to #address-cells/#size-cells being unnecessary when there are no
> > children with reg cells.
> >
> > With your patch applied I now see warnings again:
> > $ touch arch/arm64/boot/dts/freescale/imx8m*venice*.dts*; make dtbs W=
=3D1
> >   DTC     arch/arm64/boot/dts/freescale/imx8mm-venice-gw71xx-0x.dtb
> >   DTC     arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x.dtb
> >   DTC     arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x.dtb
> >   DTC     arch/arm64/boot/dts/freescale/imx8mm-venice-gw75xx-0x.dtb
> >   DTC     arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dtb
> > arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts:361.14-467.4:
> > Warning (avoid_unnecessary_addr_size): /soc@0/bus@30800000/i2c@3
> > 0a20000/gsc@20: unnecessary #address-cells/#size-cells without
> > "ranges", "dma-ranges" or child "reg" property
>
> make ARCH=3Darm64 CROSS_COMPILE=3Daarch64-linux-gnu- -j8 CHECK_DTBS=3Dy f=
reescale/imx8mm-venice-gw7901.dtb
> No warning report at my side.
>
> Did you update your dt schema?
>
> pip3 install git+https://github.com/devicetree-org/dt-schema.git@main
>

Frank,

Yes, I've updated my dt-schema with the above command.

So with your patch a make CHECK_DTBS=3Dy produces no warnings but a make W=
=3D1 does:
$ touch arch/arm64/boot/dts/freescale/imx8m*venice*.dts*; make
ARCH=3Darm64 CROSS_COMPILE=3Daar
ch64-linux-gnu- -j8 CHECK_DTBS=3Dy freescale/imx8mm-venice-gw7901.dtb
  SYNC    include/config/auto.conf.cmd
  SCHEMA  Documentation/devicetree/bindings/processed-schema.json
/usr/src/venice/linux-next/Documentation/devicetree/bindings/input/touchscr=
een/ti,tsc2005.yaml:
ti,x-plate-ohms: missing type definit
ion
  DTC_CHK arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dtb
$ touch arch/arm64/boot/dts/freescale/imx8m*venice*.dts*; make
ARCH=3Darm64 CROSS_COMPILE=3Daarch64-linux-gnu- -j8 W=3D1
freescale/imx8mm-venice-gw7901.dtb
  DTC     arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dtb
arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts:361.14-467.4:
Warning (avoid_unnecessary_addr_size): /soc@0/bus@30800000/i2c@3
0a20000/gsc@20: unnecessary #address-cells/#size-cells without
"ranges", "dma-ranges" or child "reg" property

reverting your patch flips this around:
$ git revert c59339ec2661
$ touch arch/arm64/boot/dts/freescale/imx8m*venice*.dts*; make
ARCH=3Darm64 CROSS_COMPILE=3Daarch64-linux-gnu- -j8 W=3D1
freescale/imx8mm-venice-gw7901.dtb
  UPD     include/config/kernel.release
  DTC     arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dtb
tharvey@tharvey:/usr/src/venice/linux-next$ touch
arch/arm64/boot/dts/freescale/imx8m*venice*.dts*; make ARCH=3Darm64
CROSS_COMPILE=3Daarch64-linux-gnu- -j8 CHECK_DTBS=3Dy
freescale/imx8mm-venice-gw7901.dtb
  DTC_CHK arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dtb
/usr/src/venice/linux-next/arch/arm64/boot/dts/freescale/imx8mm-venice-gw79=
01.dtb:
gsc@20: '#address-cells' is a required property
        from schema $id: http://devicetree.org/schemas/mfd/gateworks-gsc.ya=
ml#
/usr/src/venice/linux-next/arch/arm64/boot/dts/freescale/imx8mm-venice-gw79=
01.dtb:
gsc@20: '#size-cells' is a required property
        from schema $id: http://devicetree.org/schemas/mfd/gateworks-gsc.ya=
ml#
tharvey@tharvey:/usr/src/venice/linux-next$ touch
arch/arm64/boot/dts/freescale/imx8m*venice*.dts*; make ARCH=3Darm64
CROSS_COMPILE=3Daarch64-linux-gnu- -j8 W=3D1
freescale/imx8mm-venice-gw7901.dtb
  DTC     arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dtb

Maybe the dt experts can tell us what the difference is with
CHECK_DTBS=3Dy vs W=3D1 and which patch is correct between
c59339ec2661 arm64: dts: imx8mm-venice-gw7901: add
#address(size)-cells for gsc@20
3343ab4cc698 arm64: dts: freescale: imx8m*-venice-*: fix gw,gsc
dt-schema warnings

Best Regards,

Tim

