Return-Path: <devicetree+bounces-230868-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 885E1C06BAB
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 16:37:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B14CB4E9C75
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 14:36:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B062131AF1F;
	Fri, 24 Oct 2025 14:36:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FiD2E9nD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376532D540D
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 14:36:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761316608; cv=none; b=STjFSY6E9RBqweOOq/97bPbH+Ghq3lGRgWbMXVpV6X5RxG3XJtpCEKBrRjOC0cIf4aIFdg/xiE3IS78a+/MkZQFpozjrcPiPG1iRpO3OCObSfHgVXC/HVzA7ByKs06Rbeh3nBPNyQgoJSigKR1DSkmTWSn59cYcUEWeEL70GFnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761316608; c=relaxed/simple;
	bh=SyHsbHHPTi2vMHuPhkK3EIkxbANttu0bB9QFrV5V42A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=migEB5E1NG9QB9RmxyLX6DURKKqN2Tdl/nQo1pKze6wgtWnzt/OB6Kduc+ObZ9RXzfZtm4MRtD4Y7rZuwku+kTNA029Zi8X2bXpgg9KFGfpUCYBcFluDrMQ8C6dphKkjG1qCII9+U2M3i/Gaqj6q4o3Sy4oQIllVL7xZAhSfdMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FiD2E9nD; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b5a8184144dso339976566b.1
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 07:36:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761316604; x=1761921404; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vhvZambXhJUe9NXP8fPYlMTJocXdYHeRZkXktKu8p/w=;
        b=FiD2E9nDXhV7YvqMbhEHT1+bVYXqpgR+s4+YVS37BwFR/h40EthGAVKyC3JfdauTXj
         EO01snCikiAVPab8Tuu5vmbgJWrwyZ+9ILhBgnvwRCILE/aZpBnDtWxbe8X4jdr4y98F
         oB+CgXXhI31tVGdrRTmFY60TW5ZnL66N1iV5QKtm9p3zMgZA3c/Pq/XnSCXF9i4Qvqy2
         BKJ0gu1afc9gOlvYEa1Pgzu034ZkMPRhPKJTfn4uLLY5+Wp/Iy3Vzz0zp2N6DLVgVPcX
         qpUS32gdVmSbaEFX5qZWZrc0o4/x9hAFTlba92R++DipVHdhkErubtefeSlWfzMZLt1C
         4K4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761316604; x=1761921404;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vhvZambXhJUe9NXP8fPYlMTJocXdYHeRZkXktKu8p/w=;
        b=EoVxm26Q0/mYghEMwRlHvGlmncqESA5vFe04UsqhWSLrXLM7MFIsK/z5d11yJCf49N
         52lroh8XwkaUeaRG2P3UupDnCyqmmsG/rbclFFdVB2Q3MgMrZ6jpDJUj3fnqweQWcfwB
         z+Q+bNXQlX4yqU10zKJPwz2YLgZCAhcsKzD5vjM0uHc23SQS2hCZVIdMtA6pdEkVHnLe
         ZbvC33anOO1KQDXcJN0rr4/8Hpq6ZRTJvhZHIBqgGWlhQ7SvV1L3gGZAqIVxuT+BFSJV
         7woPTfp9MBgX0wPq7Y1pWQCsjrqz3/S8XrFn1vgI9i3iwmalRG24pt1khQJnqNehn5Qi
         Xwgg==
X-Forwarded-Encrypted: i=1; AJvYcCUEpCckTQYkEC6mmDkNzb9G8aF40rWm1WCVDNUdP/EDkRIQYBro6MYsXQ4RmKhpFnK8vmb6byYJ7EHo@vger.kernel.org
X-Gm-Message-State: AOJu0YxNwSxD5xlp7jfMe3ZkB4tQ3h1otEypAjHthJ0IVj6SccaLH0L7
	1BfMa3q+ssptRIPNipCxGsUJk3GLk8t+brnpSxx2vGomxmZ+ch/EvW5u
X-Gm-Gg: ASbGncuZ66K2/89ER+La+gL2ntrD2avMj/xV++jclzc4OCGA9pgaySqXIzsmiLxJ9li
	IAyDaQUgjfh3ZC0pHmuOUpO5gEIvgDqB02sJbN83pR2duMDupd9d2NNshtzYum46MULtytlODhL
	YhcxPxRRb0s7nwLGKaB6v8a0XWX7ozOOvbfA9p56QL9AdMHfW/Bi0Bs0qUPBqcQbpOS9yd+kqBS
	8ZCmfX9OyTTyqvAEDwnLHYyEkeJMr8zOE2fsOADSnALrBTtsulIEUXWJQG3JHUKK6wr62WBbKQt
	ERFykdG0WQOoYcQO5mbsVlsyMfsfytylCbrKlKPseM3ZwEuq0FykYxKDa4PZD+xbXhT9Cjaq6JW
	tSOSXzIxzeY8w33m5PCvrTQEBpf/V+J7xIqJlvtJHXKmBOr00CFJH5DX6x9AhqIE9K3lzBXCSFM
	98j8QvOTTn67ESY/vqrzE/L4ZiEGA02zgwCz3Jyof0lBq09Zjnd3GK00SDsZNtX/JuSonb3Ck5T
	A==
X-Google-Smtp-Source: AGHT+IFWzk1i+CerdLmqkWlqmK1WwF08rParHoWAXsc4qXFYfSSN7IC++HtkBe/tPf9ihHXuOS5S/Q==
X-Received: by 2002:a17:907:1c8b:b0:b45:27e0:7f35 with SMTP id a640c23a62f3a-b6d6ffe1b10mr309334466b.46.1761316602897;
        Fri, 24 Oct 2025 07:36:42 -0700 (PDT)
Received: from alb3rt0-ThinkPad-P15-Gen-1 (host-81-118-90-13.business.telecomitalia.it. [81.118.90.13])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d514172besm545726366b.46.2025.10.24.07.36.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 07:36:42 -0700 (PDT)
Date: Fri, 24 Oct 2025 16:36:40 +0200
From: Alberto Merciai <alb3rt0.m3rciai@gmail.com>
To: Frank Li <Frank.li@nxp.com>
Cc: Primoz Fiser <primoz.fiser@norik.com>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, upstream@lists.phytec.de
Subject: Re: [PATCH 1/2] arm64: dts: freescale: imx93-phyboard-nash: Add jtag
 overlay
Message-ID: <aPuO+FCeeIFv3bQm@alb3rt0-ThinkPad-P15-Gen-1>
References: <20251007084028.1125185-1-primoz.fiser@norik.com>
 <aPt/d9svTeUIRljW@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aPt/d9svTeUIRljW@lizhi-Precision-Tower-5810>

On Fri, Oct 24, 2025 at 09:30:31AM -0400, Frank Li wrote:
> On Tue, Oct 07, 2025 at 10:40:27AM +0200, Primoz Fiser wrote:
> > Add overlay to enable JTAG pins on the board's JTAG (X41) connector.
> >
> > Signed-off-by: Primoz Fiser <primoz.fiser@norik.com>
> > ---
> >  arch/arm64/boot/dts/freescale/Makefile        |  2 ++
> >  .../freescale/imx93-phyboard-nash-jtag.dtso   | 26 +++++++++++++++++++
> >  2 files changed, 28 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/freescale/imx93-phyboard-nash-jtag.dtso
> >
> > diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> > index 525ef180481d..c72a6fdc5412 100644
> > --- a/arch/arm64/boot/dts/freescale/Makefile
> > +++ b/arch/arm64/boot/dts/freescale/Makefile
> > @@ -356,10 +356,12 @@ dtb-$(CONFIG_ARCH_MXC) += imx93-kontron-bl-osm-s.dtb
> >  dtb-$(CONFIG_ARCH_MXC) += imx93-phyboard-nash.dtb
> >  dtb-$(CONFIG_ARCH_MXC) += imx93-phyboard-segin.dtb
> >
> > +imx93-phyboard-nash-jtag-dtbs += imx93-phyboard-nash.dtb imx93-phyboard-nash-jtag.dtbo
> >  imx93-phyboard-nash-peb-wlbt-07-dtbs += imx93-phyboard-nash.dtb imx93-phyboard-nash-peb-wlbt-07.dtbo
> >  imx93-phyboard-segin-peb-eval-01-dtbs += imx93-phyboard-segin.dtb imx93-phyboard-segin-peb-eval-01.dtbo
> >  imx93-phyboard-segin-peb-wlbt-05-dtbs += imx93-phyboard-segin.dtb imx93-phyboard-segin-peb-wlbt-05.dtbo
> >  imx93-phycore-rpmsg-dtbs += imx93-phyboard-nash.dtb imx93-phyboard-segin.dtb imx93-phycore-rpmsg.dtbo
> > +dtb-$(CONFIG_ARCH_MXC) += imx93-phyboard-nash-jtag.dtb
> >  dtb-$(CONFIG_ARCH_MXC) += imx93-phyboard-nash-peb-wlbt-07.dtb
> >  dtb-$(CONFIG_ARCH_MXC) += imx93-phyboard-segin-peb-eval-01.dtb
> >  dtb-$(CONFIG_ARCH_MXC) += imx93-phyboard-segin-peb-wlbt-05.dtb
> > diff --git a/arch/arm64/boot/dts/freescale/imx93-phyboard-nash-jtag.dtso b/arch/arm64/boot/dts/freescale/imx93-phyboard-nash-jtag.dtso
> > new file mode 100644
> > index 000000000000..4744eabf95f3
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/freescale/imx93-phyboard-nash-jtag.dtso
> > @@ -0,0 +1,26 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +/*
> > + * Copyright (C) 2025 PHYTEC Messtechnik GmbH
> > + * Author: Primoz Fiser <primoz.fiser@norik.com>
> > + */
> > +
> > +#include "imx93-pinfunc.h"
> > +
> > +/dts-v1/;
> > +/plugin/;
> > +
> > +&gpio2 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_jtag>;
> > +};
> 
> Use gpio to set pinctrl to no-gpio mode is strange. I am not sure if there
> are better method, but at need comments here to show why have to do that.
> 

In old imx6 platform we use pinctrl_hog for that purpose, is not?

> Frank
> > +
> > +&iomuxc {
> > +	pinctrl_jtag: jtaggrp {
> > +		fsl,pins = <
> > +			MX93_PAD_GPIO_IO24__JTAG_MUX_TDO	0x31e
> > +			MX93_PAD_GPIO_IO25__JTAG_MUX_TCK	0x31e
> > +			MX93_PAD_GPIO_IO26__JTAG_MUX_TDI	0x31e
> > +			MX93_PAD_GPIO_IO27__JTAG_MUX_TMS	0x31e
> > +		>;
> > +	};
> > +};
> > --
> > 2.34.1
> >
> 

