Return-Path: <devicetree+bounces-231992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E12CC1388E
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 09:27:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B2A494F9BB9
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 08:23:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 021B02D876C;
	Tue, 28 Oct 2025 08:23:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eZYmP26s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11DF02D8395
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 08:23:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761639796; cv=none; b=R4yJmKEcUfH/kwrdbPdS4Gu8sntBeaSyE1t966+iVkuhtRIZXgZyuss/uAdPOiElSGPIrtkS0KYEl7dyHcbWFDd2LjZTMKcMtdjZ5ixc4uXZ2V5XTPjhIoYPC/dSMH4uzZ42hOycOP/odp97gTNmOqoKEy82Pcb3S1mih7gXbk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761639796; c=relaxed/simple;
	bh=VryWymEyQYFv7D2Zu/J+9UBUYXQJGOTKKyDXEDfPJII=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lETr5bs87glA4nFHx0p8ePsSh+7V6yVsP4gRnFxcDVA5nT75ZczVxhSKNu0ZKsoZFkTedQPZEYc1UBIsyk80y/36oQSVttbVyZReLyvzJ3OkPn7c4pvoNzfMRL+MYKj+K/xH+Etq2af3QIpg8KGQ47IT2ziwLs28JfoEB/CiYXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eZYmP26s; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b6dbb4a209aso159848366b.1
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 01:23:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761639792; x=1762244592; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uYkrsJvRY/M4MaFVJOdOGBIZ0zXWhOCmDqeRXw+U7YE=;
        b=eZYmP26sEkOWnMMN+ZiKnSkpfWhxbLnSe34P+HbCurEZkvYgEYLY0THNyaxEApnalM
         4tatyrX6Z/D+lDs+4xFiN8d2T4AoUKmgyt/iCNXoShHnDQJ1+hqDMBFQODLwCsiDuwvm
         8tMlraXpcLqbZkq9ifEJNIvQnbQrV7OurLCGPJtvtxo0nANDd/bTh/nvedJuRCdh0ERu
         4d+rwfbG+QgUxSw2W2ubQJgyvnE6QY+hShQI+sKqX9GhuezNM1ev3NQDFt/scef1Bcf4
         3BY0qrJ0k3xe6DQUkSutqymhaupYyw/Ufwu9nOwLeQJjqmuCyjAZYnHMg0wZVIe8wZKi
         KSAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761639792; x=1762244592;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uYkrsJvRY/M4MaFVJOdOGBIZ0zXWhOCmDqeRXw+U7YE=;
        b=ANWZ34+GX8+bPChzc/or1DGYh+mDOmOVUt5g4rCStlyK7jq0OCKedXDezF/mqdv0qP
         6rcrqAIuIoN/i6VFAqag20qyNx/9g52t++cipr3lE1/tOMb3aiaTmn7I4BH7D6z0lMg4
         Oa912d1WCCZz3sTZBTK5yhq1lhPVKWcAmBzemmTqC/tMEVC8LXEXby06ACR9BuB84JXq
         pKdqi06yAqZe2+VfKI93qzPVuE/LiadA7pynSKHdW5ZJ7k6dxZgMlN3y5XAAa/yai7F8
         Y48FiIjgch1vIvVnLdLRJk+uwgctAaJt7kqrESjEHtND0cSGBdvFnbYLt/RQR3zcvPdV
         uuMQ==
X-Forwarded-Encrypted: i=1; AJvYcCUcAqKtcesEfiJlYhDSWQqPOz41FcSpolwFJxAR0OG1MWyrDB8rPXoL+ceE8OS/1h89lrlboOYUAn3c@vger.kernel.org
X-Gm-Message-State: AOJu0YwcWlxtb5X+7zi6HTfwWdo2WHpkqaS65bpO9acYyxP9W/Zq3khO
	+9n8MrN5mDOYLdr8si0/4Uu70ithhLy3OQnqULCWCezhig7DIhh5xe27
X-Gm-Gg: ASbGncv2T9AxQ6GBL3L2UWdUv1b9kvgUPlh0nF71tOf+XYOOjgFsLyf/NO0LxxVZioM
	haUrLcxWwBZni6oY7grkADzB2M3MN1IN9FI5lmpSvX2BMbKd+IVKIDZDsFkMjE1CFrvr9jAn1tX
	FzES7EwNdH+HiDdhPkKgkMs+VVvRlZtAQ/Izq8L1LkEm4OScBvFSP+YmUXjw1EQP2QGE/dCm8BD
	XtNxszHvajaAYej8VrnUk+JW2iLSaA4N0AVDCGaYPbpqG9PkkpbIHdOSWjRqw5DtVWLptuAeG5p
	Ds2Rfwg1ktuquBZrsrucUPBPtPw45RslIr7PUwdZMIjBpQqmhXxTMVzjpf/sYxt4FiiEFonwtS6
	lpg0/e5WHpsXoWKKghOOJNaZjcGF88xKp3VpA/+pX4Tt+rg/fJt05RRlZifvOixThEICRyAgtQE
	HOtMryvORARGV2a35eP4nt7lwuLruy4h/4bH893olnzhqWy1rQzIXwd7iNflqYnGIqn4+3aTMHo
	Q==
X-Google-Smtp-Source: AGHT+IFRsX11i6ttykwzSTE1MX3XcVT7zdJoHg0PldYmpaU3ps1bn6uVFu1p5RX3UmY4D7yABarLgw==
X-Received: by 2002:a17:907:6ea9:b0:b41:c602:c746 with SMTP id a640c23a62f3a-b6dba48c5ddmr306520266b.20.1761639791192;
        Tue, 28 Oct 2025 01:23:11 -0700 (PDT)
Received: from alb3rt0-ThinkPad-P15-Gen-1 (host-81-118-90-13.business.telecomitalia.it. [81.118.90.13])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d853077e8sm1024064566b.14.2025.10.28.01.23.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 01:23:10 -0700 (PDT)
Date: Tue, 28 Oct 2025 09:23:07 +0100
From: Alberto Merciai <alb3rt0.m3rciai@gmail.com>
To: Primoz Fiser <primoz.fiser@norik.com>
Cc: Frank Li <Frank.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, upstream@lists.phytec.de
Subject: Re: [PATCH 1/2] arm64: dts: freescale: imx93-phyboard-nash: Add jtag
 overlay
Message-ID: <aQB9azDkYN4RLU6+@alb3rt0-ThinkPad-P15-Gen-1>
References: <20251007084028.1125185-1-primoz.fiser@norik.com>
 <aPt/d9svTeUIRljW@lizhi-Precision-Tower-5810>
 <aPuO+FCeeIFv3bQm@alb3rt0-ThinkPad-P15-Gen-1>
 <aPuvYwwG5N84MwGA@lizhi-Precision-Tower-5810>
 <658fa62e-cc80-436a-9812-c67b0dc8de03@norik.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <658fa62e-cc80-436a-9812-c67b0dc8de03@norik.com>

On Tue, Oct 28, 2025 at 07:23:57AM +0100, Primoz Fiser wrote:
> Hi both,
> 
> On 24. 10. 25 18:54, Frank Li wrote:
> > On Fri, Oct 24, 2025 at 04:36:40PM +0200, Alberto Merciai wrote:
> >> On Fri, Oct 24, 2025 at 09:30:31AM -0400, Frank Li wrote:
> >>> On Tue, Oct 07, 2025 at 10:40:27AM +0200, Primoz Fiser wrote:
> >>>> Add overlay to enable JTAG pins on the board's JTAG (X41) connector.
> >>>>
> >>>> Signed-off-by: Primoz Fiser <primoz.fiser@norik.com>
> >>>> ---
> >>>>  arch/arm64/boot/dts/freescale/Makefile        |  2 ++
> >>>>  .../freescale/imx93-phyboard-nash-jtag.dtso   | 26 +++++++++++++++++++
> >>>>  2 files changed, 28 insertions(+)
> >>>>  create mode 100644 arch/arm64/boot/dts/freescale/imx93-phyboard-nash-jtag.dtso
> >>>>
> >>>> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> >>>> index 525ef180481d..c72a6fdc5412 100644
> >>>> --- a/arch/arm64/boot/dts/freescale/Makefile
> >>>> +++ b/arch/arm64/boot/dts/freescale/Makefile
> >>>> @@ -356,10 +356,12 @@ dtb-$(CONFIG_ARCH_MXC) += imx93-kontron-bl-osm-s.dtb
> >>>>  dtb-$(CONFIG_ARCH_MXC) += imx93-phyboard-nash.dtb
> >>>>  dtb-$(CONFIG_ARCH_MXC) += imx93-phyboard-segin.dtb
> >>>>
> >>>> +imx93-phyboard-nash-jtag-dtbs += imx93-phyboard-nash.dtb imx93-phyboard-nash-jtag.dtbo
> >>>>  imx93-phyboard-nash-peb-wlbt-07-dtbs += imx93-phyboard-nash.dtb imx93-phyboard-nash-peb-wlbt-07.dtbo
> >>>>  imx93-phyboard-segin-peb-eval-01-dtbs += imx93-phyboard-segin.dtb imx93-phyboard-segin-peb-eval-01.dtbo
> >>>>  imx93-phyboard-segin-peb-wlbt-05-dtbs += imx93-phyboard-segin.dtb imx93-phyboard-segin-peb-wlbt-05.dtbo
> >>>>  imx93-phycore-rpmsg-dtbs += imx93-phyboard-nash.dtb imx93-phyboard-segin.dtb imx93-phycore-rpmsg.dtbo
> >>>> +dtb-$(CONFIG_ARCH_MXC) += imx93-phyboard-nash-jtag.dtb
> >>>>  dtb-$(CONFIG_ARCH_MXC) += imx93-phyboard-nash-peb-wlbt-07.dtb
> >>>>  dtb-$(CONFIG_ARCH_MXC) += imx93-phyboard-segin-peb-eval-01.dtb
> >>>>  dtb-$(CONFIG_ARCH_MXC) += imx93-phyboard-segin-peb-wlbt-05.dtb
> >>>> diff --git a/arch/arm64/boot/dts/freescale/imx93-phyboard-nash-jtag.dtso b/arch/arm64/boot/dts/freescale/imx93-phyboard-nash-jtag.dtso
> >>>> new file mode 100644
> >>>> index 000000000000..4744eabf95f3
> >>>> --- /dev/null
> >>>> +++ b/arch/arm64/boot/dts/freescale/imx93-phyboard-nash-jtag.dtso
> >>>> @@ -0,0 +1,26 @@
> >>>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> >>>> +/*
> >>>> + * Copyright (C) 2025 PHYTEC Messtechnik GmbH
> >>>> + * Author: Primoz Fiser <primoz.fiser@norik.com>
> >>>> + */
> >>>> +
> >>>> +#include "imx93-pinfunc.h"
> >>>> +
> >>>> +/dts-v1/;
> >>>> +/plugin/;
> >>>> +
> >>>> +&gpio2 {
> >>>> +	pinctrl-names = "default";
> >>>> +	pinctrl-0 = <&pinctrl_jtag>;
> >>>> +};
> >>>
> >>> Use gpio to set pinctrl to no-gpio mode is strange. I am not sure if there
> >>> are better method, but at need comments here to show why have to do that.
> >>>
> >>
> >> In old imx6 platform we use pinctrl_hog for that purpose, is not?
> > 
> > It'd better than gpio, but I am not sure if pinctrl_hog still be supported
> > because I have not seen it for the long time.
> > 
> 
> I am OK with both suggestions:
> 
> 1) adding an explanation comment
> 2) Using pinctrl_hog method
> 
> Personally however, I would prefer method 1) since it would be better in
> this case because base customer dts can already contain default
> pinctrl_hog which would be overwritten by this overlay.

Good point, that is true.

> 
> Not that common, but can still happen.
> 
> What do you suggest for v2? 

I would say 1, IMO explaining that with a comments is the most
explicit way to do that.

BR,
Alberto

> 
> BR,
> Primoz
> 
> > Frank
> >>
> >>> Frank
> >>>> +
> >>>> +&iomuxc {
> >>>> +	pinctrl_jtag: jtaggrp {
> >>>> +		fsl,pins = <
> >>>> +			MX93_PAD_GPIO_IO24__JTAG_MUX_TDO	0x31e
> >>>> +			MX93_PAD_GPIO_IO25__JTAG_MUX_TCK	0x31e
> >>>> +			MX93_PAD_GPIO_IO26__JTAG_MUX_TDI	0x31e
> >>>> +			MX93_PAD_GPIO_IO27__JTAG_MUX_TMS	0x31e
> >>>> +		>;
> >>>> +	};
> >>>> +};
> >>>> --
> >>>> 2.34.1
> >>>>
> >>>
> 
> -- 
> Primoz Fiser
> phone: +386-41-390-545
> email: primoz.fiser@norik.com
> --
> Norik systems d.o.o.
> Your embedded software partner
> Slovenia, EU
> phone: +386-41-540-545
> email: info@norik.com
> 

