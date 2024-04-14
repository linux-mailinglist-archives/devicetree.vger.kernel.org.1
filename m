Return-Path: <devicetree+bounces-59152-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B218A44AC
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 20:44:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C7BED1C20DA7
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 18:44:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C74CC1353E2;
	Sun, 14 Apr 2024 18:44:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="KMmwykpi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AAC2134CD4
	for <devicetree@vger.kernel.org>; Sun, 14 Apr 2024 18:44:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713120256; cv=none; b=sh71cBLzUtjw8sjoJeXjJlBtviYWaiiH7ClqPT94+LtaTRq9/62njApqA7MY1bslu22bD8dfoDbYFqjaoGAAz88Ks+sA6ZuPMyIUtR6cpp+vNC1DmmQFnIMe6qEQBuQGeQ0hyUoeo260Q/tKIktagCswkw7Y6Kh5YEUva0ZtJUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713120256; c=relaxed/simple;
	bh=0eqjn/UZIw741H2X1QNSMzIoN3Q8X3A6daQyjWZK+tU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=r5PbVTWgtYzKwrhg3ilxrb/gKd+hAtpJ4CeQ/xc9U6+D8/VEwvO95RkvJYJUTffV8RbADEKQhXbAD1jLKbOel1XwNCLRDDjjuBk17rKkQetIk4B8n0ku6OzZRRTIwdCc77G7TIc5hcMknDyZfCOamrtTKY+W2uB1XH0yMLtBe8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=KMmwykpi; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-dc236729a2bso2450288276.0
        for <devicetree@vger.kernel.org>; Sun, 14 Apr 2024 11:44:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1713120253; x=1713725053; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sf5vLAJueA07TKl2QntJTPXKSYE+dZtO6DFJk50gtZ8=;
        b=KMmwykpiZkoX7Omskm7DyhUwwaNLHcbIlN0T5Sw1hC6fLeNLhOGjvw+RvLR0zDY1ao
         h3uNHRWPZic5EyVZuhYBPVSIarxC5/jQPbIxXW7dG3TujG3L8saqUnVQ9DUgIR94GAhe
         PqpnPkXvfEwsNXK9uArlY1J4os7CcH+HrXIPmgEHLRVSs7BAV3zqzOW9IAWeE2qCzi07
         KzVZB36zrqeQeqOK2Cp+6srs5nfQkZ3EZFQXgoIZ5zea+V4YzY7174iQN7W4Z/CrjLUQ
         rTh77l10+e7ZCLtqZZzyV223UhETzeuujVMSPyhwWOGsHL//kFKRBiDy0WX+DbyzQVJv
         ReJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713120253; x=1713725053;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sf5vLAJueA07TKl2QntJTPXKSYE+dZtO6DFJk50gtZ8=;
        b=ignA7/XWdeBKkofIv4CrXAllhtc40JB4W9yor+Okc1CTMOUGJujkNpX5Au4d/jYLzV
         WHs7V3hgdL3JMZOPO3UB6Gn1O/+jfRQ2Wl3P/lxQhRmlKJfHed6WwAuZhkE1MA4RE2L4
         WMvYYNDdjnhO6FnxUnakbJ8l5Sd7nyS8Bbp/L81/raLddERsn+/5qEEN7RzTc02aqmGd
         UGjrHi2PNJlMUzvz1JvCz+Su46lVNPFo/uA6qgTRB666e0WIbhOJG7kzAWFJCqjnz8Ik
         uz66zFyecyPOOZYpTGDVyh9vCTAmlEle/xaVQdzUxQAp/BJZ/9TURkKgH7cDII6XaxM8
         JV1Q==
X-Forwarded-Encrypted: i=1; AJvYcCXctAloyVL9liufyNpwslXOUpIvLGpTi4Pef2lOIKIVMsYqH5wUWQXk000NUkzAHLSlTVKQi6yX94t8acW7QgSVWSXG86WEZjU66Q==
X-Gm-Message-State: AOJu0YxqVYfmyeJ5Fk3wZZ0zzErtom2o3Wo//H1GAXT/aLR1RUvSzWIW
	2Xy2wQ+csO/rapZ6sVDWqjpAfXSYFgPuec0jFD2wE++YZlVsbjfg5YqnvU+wlHemcMHBStyOJVw
	0YV6/xGjGi4pycUi1PVpAH6xLpAzkdh3EfmS5/Q==
X-Google-Smtp-Source: AGHT+IGVydNa1vTd9hyzDQ9SfhKJzHNE7/2Sntj3xyFftSnE1kP1GUi5CqazY6KprU8+LfUkVsdqCz5iVlF/BC2ym80=
X-Received: by 2002:a25:901:0:b0:dc7:46ef:8b9e with SMTP id
 1-20020a250901000000b00dc746ef8b9emr8075460ybj.29.1713120248451; Sun, 14 Apr
 2024 11:44:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240412132559.2365947-1-mcanal@igalia.com> <41694292-af1f-4760-a7b6-101ed5dd6f9d@gmx.net>
In-Reply-To: <41694292-af1f-4760-a7b6-101ed5dd6f9d@gmx.net>
From: Phil Elwell <phil@raspberrypi.com>
Date: Sun, 14 Apr 2024 19:43:57 +0100
Message-ID: <CAMEGJJ2mkuBZjo+OAnkVCEi=73zMpXNUwzRqsAOckMhUeN_WJw@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: bcm2835: Enable 3D rendering through V3D
To: Stefan Wahren <wahrenst@gmx.net>
Cc: =?UTF-8?B?TWHDrXJhIENhbmFs?= <mcanal@igalia.com>, 
	Maxime Ripard <mripard@kernel.org>, Melissa Wen <mwen@igalia.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
	Andre Przywara <andre.przywara@arm.com>, Romain Perier <romain.perier@gmail.com>, 
	Dave Stevenson <dave.stevenson@raspberrypi.com>, dri-devel@lists.freedesktop.org, 
	bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org, 
	linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	kernel-dev@igalia.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello all,

On Fri, 12 Apr 2024 at 18:17, Stefan Wahren <wahrenst@gmx.net> wrote:
>
> Hi Ma=C3=ADra,
>
> [add Phil & Dave]
>
> Am 12.04.24 um 15:25 schrieb Ma=C3=ADra Canal:
> > RPi 0-3 is packed with a GPU that provides 3D rendering capabilities to
> > the RPi. Currently, the downstream kernel uses an overlay to enable the
> > GPU and use GPU hardware acceleration. When deploying a mainline kernel
> > to the RPi 0-3, we end up without any GPU hardware acceleration
> > (essentially, we can't use the OpenGL driver).
> >
> > Therefore, enable the V3D core for the RPi 0-3 in the mainline kernel.
> thanks for trying to improve the combination Raspberry Pi OS + Mainline
> Kernel. I think i'm able to reproduce the issue with Raspberry Pi 3 B +
> on Buster.

Buster? We launched Buster with 4.19 and ended on 5.10. We've moved
onto Bookworm now. A lot has changed in that time...

> From the kernel side everything looks good:
>
> [   11.054833] vc4-drm soc:gpu: bound 3f902000.hdmi (ops vc4_hdmi_ops [vc=
4])
> [   11.055118] vc4-drm soc:gpu: bound 3f806000.vec (ops vc4_vec_ops [vc4]=
)
> [   11.055340] vc4-drm soc:gpu: bound 3f004000.txp (ops vc4_txp_ops [vc4]=
)
> [   11.055521] vc4-drm soc:gpu: bound 3f206000.pixelvalve (ops
> vc4_crtc_ops [vc4])
> [   11.055695] vc4-drm soc:gpu: bound 3f207000.pixelvalve (ops
> vc4_crtc_ops [vc4])
> [   11.055874] vc4-drm soc:gpu: bound 3f807000.pixelvalve (ops
> vc4_crtc_ops [vc4])
> [   11.056020] vc4-drm soc:gpu: bound 3fc00000.v3d (ops vc4_v3d_ops [vc4]=
)
> [   11.063277] Bluetooth: hci0: BCM4345C0
> 'brcm/BCM4345C0.raspberrypi,3-model-b-plus.hcd' Patch
> [   11.070466] [drm] Initialized vc4 0.0.0 20140616 for soc:gpu on minor =
0
> [   11.174803] Console: switching to colour frame buffer device 240x75
> [   11.205125] vc4-drm soc:gpu: [drm] fb0: vc4drmfb frame buffer device
>
> But in Raspberry Pi OS there is a systemd script which is trying to
> check for the V3D driver /usr/lib/systemd/scripts/gldriver_test.sh
> Within the first check "raspi-config nonint is_kms" is called, which
> always seems to fail. If i run strace on this command it seems to check
> for /proc/device-tree/soc/v3d@7ec00000/status which doesn't exists in
> the Mainline device tree.
>
> Maybe there is a chance to improve the userspace tool?

...such as the raspi-config tool, which now always succeeds for is_kms.

Phil

> >
> > Signed-off-by: Ma=C3=ADra Canal <mcanal@igalia.com>
> > ---
> >
> > I decided to add the status property to the `bcm2835-common.dtsi`, but
> > there are two other options:
> >
> > 1. To add the status property to the `bcm2835-rpi-common.dtsi` file
> > 2. To add the status property to each individual RPi model, e.g.
> > `bcm2837-rpi-3-b.dts`.
> >
> > Let me know which option is more suitable, and if `bcm2835-common.dtsi`
> > is not the best option, I can send a v2.
> >
> > Best Regards,
> > - Ma=C3=ADra
> >
> >   arch/arm/boot/dts/broadcom/bcm2835-common.dtsi | 1 +
> >   1 file changed, 1 insertion(+)
> >
> > diff --git a/arch/arm/boot/dts/broadcom/bcm2835-common.dtsi b/arch/arm/=
boot/dts/broadcom/bcm2835-common.dtsi
> > index 9261b67dbee1..851a6bce1939 100644
> > --- a/arch/arm/boot/dts/broadcom/bcm2835-common.dtsi
> > +++ b/arch/arm/boot/dts/broadcom/bcm2835-common.dtsi
> > @@ -139,6 +139,7 @@ v3d: v3d@7ec00000 {
> >                       compatible =3D "brcm,bcm2835-v3d";
> >                       reg =3D <0x7ec00000 0x1000>;
> >                       interrupts =3D <1 10>;
> > +                     status =3D "okay";
> >               };
> >
> >               vc4: gpu {
>

