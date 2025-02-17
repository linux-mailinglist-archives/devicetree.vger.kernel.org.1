Return-Path: <devicetree+bounces-147542-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6692BA388B8
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 17:06:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1E38A177B36
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 16:01:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8AD0226552;
	Mon, 17 Feb 2025 15:54:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HCyuQuVk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E29CD225765
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 15:54:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739807666; cv=none; b=c6OVTC852UnPmJyCWhh4OsEXE8p8f92H9dwjKkE0ifi+xmVx0oeURRgBa4uZq289e6o3reK7cFUTNo1t5YmPyRnk6W9sYBfDAbkMfwN8HsoSaT50/s4odH3IUUCfWPH8fPkpMJtM3++KPBZBn+tglvMaov+MwDhZiDeT6uQAcTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739807666; c=relaxed/simple;
	bh=kjxigSYuh0hp4aUsjGREds7eyTvJ+6nVBk+lcsgpBW8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BnkMZmQDOyl/UoxWSrOPmLvdxzgjtclbAMMqGWJ5D2fSm/ABCrJRcbKgC8mMLe9qcDVYPVwk6gn34DXGRavAmfFMohIrTAnN3j/U/fCBOzFL4JWTjQBfkzkzjKnRqWLTJZtyMBsNDODSbn37bzl1HNHMglO3LVTJ66Z8MKe9oJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HCyuQuVk; arc=none smtp.client-ip=209.85.161.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f47.google.com with SMTP id 006d021491bc7-5fc016cbbe8so3464758eaf.0
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 07:54:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739807664; x=1740412464; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=t7nkc1E4SuMpfkZBwdic/wH7FuVujFv27IRlyVi8HR0=;
        b=HCyuQuVk1Hc5CUc9aienAd1RknypvBzVt6GKS+7BSi8Q91vRioGsHtZkBJ7aiiWmLt
         REgguOGFQcFfcZjf3fzxMP3kFLWOjvUYQ5jIQdG4QU6irtu510KwOyyjs73hIZ7e/nKm
         5xQttfOoEgaz422X79pg2dqedrm8Yyhn7amfwGM4ITKoz17IyWP/yCAc3VPsUOPL7EAv
         a6GnLcVEgxLwhRT5zrEih3iRHNF60Pkzd8AJde9tphFeBffQ6+cYybzF7raM/lKChcLs
         /CqZdg4j7/DnmFGwpkaO1HgsmLJGh5mdikBN4sLJo7wZOcl/MKxCZbhTWMIVGoJnxqSQ
         7aFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739807664; x=1740412464;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t7nkc1E4SuMpfkZBwdic/wH7FuVujFv27IRlyVi8HR0=;
        b=lU6Ly9IR3I7W0JW9Ay44KQ33uPpE4CgUEb6tNHEPIuk1pc1vfZGBn5Alfbw0EdNy4B
         VvuipwtnrNEMN2wjln/MIryRDyD1CnB+arJASRodFkZQfnQbv1x2uoJZO9TTrqpqPSRT
         iVCtaU1NtrvuX3FJPB19AroI5hf0sPb5Y5p6N2ILJ1N51k+aq4WicKowK26QPO3ecDni
         RJVVm4Dx4J4SBeJvvY3fmvg/T4IYPwHs7kRikzyFUzheNSiiNpIxWNtAk/y7kDTF9lSR
         QpgVGTVAijiXuXv726HMqnepDjQs99U7bGW+wpyl8UVJX5M8Gf+NIChkvODX/vPWmom9
         VTzw==
X-Forwarded-Encrypted: i=1; AJvYcCXJGbsiwffowBfxiEoOEPBSLKi4CrNsFpwqSKKjfAM7LNdBjCU7RF58o/KO0JSEkSbKUODGhs490YgL@vger.kernel.org
X-Gm-Message-State: AOJu0YwiGcH9DmTdM2tMXClrQhHDOVY09rfYjiXY8Hw16Lih6WoKU0w4
	zJm/rsPU0KI7Wen/Av8XmUO38jrEdEc1nONktdvgo9S5dcWeTSsS7Ay5SW71pKZApStlaEKc9SD
	XjY/Gp4sXq5D/2Sd7fsHIE5F+0UMw5TEhI17cHQ==
X-Gm-Gg: ASbGncsNaiJUJHdz3ofMEWjHDQ2v+JOCwL2ZWY99cdhOd3bJpQ7THr/HK9Tu8FTKPS2
	G7Of3mDUENMqGEr3fXtO4zNC3yKdNSAuD4ERyKhk+10SxEI8n5EoWrLK3DZ+3smq8jvDnAyvlCx
	qIBroOCRrNib7oRg8SFOSIvh6H9c0=
X-Google-Smtp-Source: AGHT+IHvTCmFM5tGQaYQOyDWi8grzthxUQH0wcQ1hH71I30bb6g5MgRKk6hVo5Yg3+2ugUoVH1oUuA8UG+yNXvsHXWA=
X-Received: by 2002:a05:6820:1c98:b0:5fc:b3b0:9f47 with SMTP id
 006d021491bc7-5fcc5728c9fmr5324694eaf.8.1739807662857; Mon, 17 Feb 2025
 07:54:22 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250217131046.21006-1-loic.poulain@linaro.org>
 <AS4PR04MB969252FACA03605C1C0E00E3E7FB2@AS4PR04MB9692.eurprd04.prod.outlook.com>
 <CAMZdPi8X6tMoLocskyEG8GwdpZ9i8P_R1bT=r1-QF+sb7ofP6A@mail.gmail.com> <AS4PR04MB969270A58305BE9FA8126C88E7FB2@AS4PR04MB9692.eurprd04.prod.outlook.com>
In-Reply-To: <AS4PR04MB969270A58305BE9FA8126C88E7FB2@AS4PR04MB9692.eurprd04.prod.outlook.com>
From: Loic Poulain <loic.poulain@linaro.org>
Date: Mon, 17 Feb 2025 16:53:47 +0100
X-Gm-Features: AWEUYZkM4Bs9_0VnzFgchtq3Nl5cgNo-z2VcatacKzC_D8C0J3wE63HlSydIQiI
Message-ID: <CAMZdPi_YrNN2zwbXgb0gXwPeyvphyO7G8j0Hm4oPGnE5uOQw-w@mail.gmail.com>
Subject: Re: [PATCH 1/2] bluetooth: btnxpuart: Support for controller wakeup
 gpio config
To: Neeraj Sanjay Kale <neeraj.sanjaykale@nxp.com>
Cc: "marcel@holtmann.org" <marcel@holtmann.org>, "robh@kernel.org" <robh@kernel.org>, 
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, 
	"linux-bluetooth@vger.kernel.org" <linux-bluetooth@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Amitkumar Karwar <amitkumar.karwar@nxp.com>, 
	Sherry Sun <sherry.sun@nxp.com>
Content-Type: text/plain; charset="UTF-8"

On Mon, 17 Feb 2025 at 16:41, Neeraj Sanjay Kale
<neeraj.sanjaykale@nxp.com> wrote:
>
> Hi Loic,
>
> > On Mon, 17 Feb 2025 at 14:53, Neeraj Sanjay Kale
> > <neeraj.sanjaykale@nxp.com> wrote:
> > > Hi Loic,
> > >
> > > Thank you for your patch. Just a few suggestions below:
> > >
> > > > @@ -616,6 +617,13 @@ static void ps_init(struct hci_dev *hdev)
> > > >                 break;
> > > >         }
> > > >
> > > > +       if (!device_property_read_u8(&nxpdev->serdev->dev, "nxp,wakein-
> > pin",
> > > > +                                    &psdata->h2c_wakeup_gpio))
> > > > +               psdata->h2c_wakeupmode = WAKEUP_METHOD_GPIO;
> > > > +       if (!device_property_read_u8(&nxpdev->serdev->dev,
> > > > + "nxp,wakeout-
> > > > pin",
> > > > +                                    &psdata->c2h_wakeup_gpio))
> > > > +               psdata->c2h_wakeupmode =
> > BT_HOST_WAKEUP_METHOD_GPIO;
> > > > +
> > > >         psdata->cur_psmode = PS_MODE_DISABLE;
> > > >         psdata->target_ps_mode = DEFAULT_PS_MODE;
> > > >
> > > Please move device_property_read for "nxp,wakein-pin" to ps_setup(), after
> > "device-wakeup" is read.
> >
> > Ok, but then I'll need to move all the default value handling from
> > ps_setup() into ps_init() as well.
> I don't think that would be needed. Simply using the example code I mentioned below should suffice.
>
> To re-iterate, if "device-wakeup-gpios" is defined, we use WAKEUP_METHOD_GPIO, and if "nxp,wakein-pin" is present, use it, else simply use 0xff.
>
> But if "device-wakeup-gpios" is absent, use default WAKEUP_METHOD_BREAK.
>
> >
> > >
> > > I think we should not set h2c_wakeupmode as WAKEUP_METHOD_GPIO
> > based on "nxp,wakein-pin" alone.
> > >
> > > In existing code, we are setting default_h2c_wakeup_mode to
> > WAKEUP_METHOD_GPIO if "device-wakeup" is defined in DT, and psdata-
> > >h2c_wakeup_gpio = 0xff. WAKE_IN pin is not read.
> > > In this case the FW considers default GPIO as WAKE_IN pin (as per
> > datasheet), which is a valid scenario.
> > >
> > > But this logic will fail if we specify only "nxp,wakein-pin", without "device-
> > wakeup" in DT.
> > > Hence, I recommend something as follows in ps_setup():
> > > - if (!psdata->h2c_ps_gpio)
> > > + if (!psdata->h2c_ps_gpio ||
> > > + device_property_read_u8(&nxpdev->serdev->dev, "nxp,wakein-pin",
> > > + &psdata->h2c_wakeup_gpio))
> > >         psdata->h2c_wakeup_gpio = 0xff;
> >
> > Ok, will do, look like we should print an explicit error then, as it would be a
> > clear devicetree misconfiguration?
> Yes, an error print for "nxp,wakein-pin", without "device-wakeup-gpios" would be helpful. Thanks!
>
> >
> > > For "nxp,wakeout-pin", I have yet to submit patch for "host-wakeup-gpios".
> > I can move "nxp,wakeout-pin" later if required.
> >
> > It may not be necessary, I've submitted an other PR for handling simple
> > dedicated wakeup interrupts at serdev core level instead of having to re-
> > implement it in each driver:
> > https://www.s/
> > pinics.net%2Flists%2Flinux-
> > serial%2Fmsg66060.html&data=05%7C02%7Cneeraj.sanjaykale%40nxp.com%
> > 7C979e9f5f906b438d707e08dd4f61b6e9%7C686ea1d3bc2b4c6fa92cd99c5c30
> > 1635%7C0%7C0%7C638754003307634680%7CUnknown%7CTWFpbGZsb3d8e
> > yJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoi
> > TWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=h%2B9yWxHbWkimN
> > 7oHOM0ZU9Cgi1OK86NLGKP7Hw%2B6vRs%3D&reserved=0
> >
> > With that, all we would need is adding the wakeup interrupt in the devicetree:
> > ```
> >         interrupt-parent = <&gpio4>;
> >         interrupts = <8 IRQ_TYPE_EDGE_FALLING>;
> >         interrupt-names = "wakeup";
> >         wakeup-source;
> > ```
> Yes, this was my initial approach, which works fine. But I think using "host-wakeup-gpios" would be a cleaner approach.
> Driver will simply use the gpiod_to_irq() API to get an IRQ handler.
> ```
>         compatible = "nxp,88w8987-bt";
>         host-wakeup-gpios = <&gpio3 24 GPIO_ACTIVE_HIGH>;
> ```
> Please do let me know if this method has any drawbacks.

Two points:
- Why bother with a GPIO if we can directly pass an interrupt (and if
actually don't care about gpio framework usage)
- Why re-implementing it in the driver if the dedicated interrupt can
be handled at the generic layer (serdev bus/core)
Would be good if we can stick with
`Documentation/devicetree/bindings/power/wakeup-source.txt`.

Regards,
Loic

