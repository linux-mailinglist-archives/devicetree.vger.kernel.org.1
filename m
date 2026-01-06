Return-Path: <devicetree+bounces-251852-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id BE30ECF7A25
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 10:55:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5982C30409E9
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 09:54:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 148C630C61B;
	Tue,  6 Jan 2026 09:54:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="I086Xbre"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4591F30AAC2
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 09:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767693297; cv=none; b=fYMtBQjFYvfOxDWZ4D0RGuZf0Gzgey5GYOY8jQvDzMx/ETfwcpeEQZZqNdTUL+k80jAal7aPaPbvualIyx23RwLzAQB98mPZ+JToI1AFyvjCIG2BQ9rKjInAAjRG8JvBDu3Sq1eRYOpSms6fK+YUVAEWd0ZgKn5RA8S5kzHjhqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767693297; c=relaxed/simple;
	bh=5HyOBWBq82UrImMpRRqu650sPUIH25jx7IsXi5sJIxw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AsMw+cFxy4l4WPgkeulVxVt8xF322wi519jA/8t6VLkJVpA0NHwNrB2s4ajHSLbvDKtl2aXDkBdx/++/cKfFq7JnpPqy9YeBvG+fzGwEog/qAQcxiAauo23oUYIgj4qTrav7oeHfyYF0EZcJIWqdILb0DFv63IW7m8f1J5rVfzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=I086Xbre; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-47774d3536dso7258525e9.0
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 01:54:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767693292; x=1768298092; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xtIuNs/eQByqyQaTUCgj2PyZmNyYspsThl1lmxuCUqU=;
        b=I086Xbref/Y3JoHRbK9OOQ6dw/93IpZ9IpkBkgCQVw8DeuLXFnmu6E518gW2tyCESi
         /7tXZR26DTYNoPjVI4Dj+xZ+rwU/+vEzXEHDJGZNpja8YF3fD2j7z6VMCvikrI++HX0y
         h+tcmMNIaWfWWk9vfmex21ItoSePhLNLT5OsyPCAD+786Wi1uxEVEU5v0AlzyMK/Ol0M
         Yf2MlZGHa8h2oHbuTAiLPSD03sCKWE3Bn2iP947eUF5elCVTLCOxyZNoxECu0fBMHNzm
         oXhAGoYZWFca6z/uK/pJGFtdNwCjuNelsiaopJSj49icIxam3puajinUFoUlCx0wW9xM
         bgZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767693292; x=1768298092;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xtIuNs/eQByqyQaTUCgj2PyZmNyYspsThl1lmxuCUqU=;
        b=dQgHUM5Z0lmPzvfB5HFS+Yr747125S10Bt2/OMh8UAA+G/BAiCi57vXIxvMaALljIp
         UhH9Dg8OaT4X/bph55QHTv598LqDF0uuzNYEmhYJYbjvBsV1XlDgmoHPVbkV8V7yQ8l3
         fIyqRmgXf1flHiSYvUqnWMMFy4upfTtOFJrsqiMYH9H3KADuN3EGALYfMewhb6CF66cS
         O+uW0kI4Sx14+aCLzh4rCizGzlIf9zc/TUveit7SD3RFbRA/7otPVGTeUiRLlvy8UbjW
         IZM7E5a39T57Oti1y7DnINrZ4EiLtNk5257P/6jvK6EHHwa0lCNMnbqxL4PRYD6oUXiK
         Fgaw==
X-Forwarded-Encrypted: i=1; AJvYcCVOOpZ4h7YXL10JZ7uggrIFXgwWmVLpo3081Re3SaUVccgg4VAhItM51Tt0NnMAI/H4XIviBonNs++p@vger.kernel.org
X-Gm-Message-State: AOJu0YzB8TyqG6TcpoasqKTW+0fhQU0A8Md7+pwEt4ETfeHv7/LMkbev
	L8aKRz/0V/hgGgibEbNW7O983VzikqNDAPvIX+9Ph/Ix4fej9Y/dDrpL6lqSAw==
X-Gm-Gg: AY/fxX5mWtopKezk0mHoD/+WYQHYDvw7JczkLscSOOuaoX1+2q3uWSGeP+VfoAdKiIK
	ecw/RyLjB2tATwIzfHnukjlM28QtFYQZYWESbl1dNhlhbTWyNa+g9wziB9GsjishbFnjCVfcW0T
	gYwtgockthfZAlJoQOX5f9qv3M4PTMtgOz7WyM3ZeMStMm+3NvW56pXnsLSdiYz8rzvwlrWz0W4
	tSTlOi0SNJT4zHjOWdHNRhGwhYevayvro+MAkPfc5nOvPYVhdQ+WAnzfI+crhl4SjMXr9xGse97
	i8zw7KjfkYwYAPBbACY/x4g8GQqG5qWec4OueOa6O0gSDMEwPbyTv1ajTd+948QghfULpqP7LrN
	260CLW1FWGonV5CjEMfnzVT8TTftoNllBoVcUkijDo4XbZHoVJNHsR4HfNLx+lBeM1yzW8KuL+/
	FPEfYlWYrWHbO05y7tFFH/iXYbVGFlruU5OfXvMx47TK0bSHhMPGDRnGzJgEDUAWx4
X-Google-Smtp-Source: AGHT+IGpM4zS6SYOiTIjdF/hysbLDFWHhIoANy7EIscVpkRt1VTLfT54CxmfhNblcCL9mNmLgsA0rw==
X-Received: by 2002:a05:600c:a4c:b0:47d:403a:277 with SMTP id 5b1f17b1804b1-47d81589dfbmr14172545e9.4.1767693292340;
        Tue, 06 Jan 2026 01:54:52 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d7f390a69sm37018615e9.0.2026.01.06.01.54.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 01:54:51 -0800 (PST)
Date: Tue, 6 Jan 2026 09:54:50 +0000
From: Stafford Horne <shorne@gmail.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: LKML <linux-kernel@vger.kernel.org>,
	Linux OpenRISC <linux-openrisc@vger.kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Jonas Bonn <jonas@southpole.se>,
	Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/5] openrisc: dts: Add de0 nano config and devicetree
Message-ID: <aVzb6pStdagr3IUX@antec>
References: <20251217080843.70621-1-shorne@gmail.com>
 <20251217080843.70621-3-shorne@gmail.com>
 <CAMuHMdVCY=5UypK65Ver6UZM_m6DZuw9mhfANMx4+Y6PgNAdmA@mail.gmail.com>
 <aVi0W6syzK6buL_v@antec>
 <CAMuHMdUP3z4Os=3XC6Nuzx8QAap=LTcuJrGZsy71GO=NFTOjZg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMuHMdUP3z4Os=3XC6Nuzx8QAap=LTcuJrGZsy71GO=NFTOjZg@mail.gmail.com>

On Mon, Jan 05, 2026 at 12:02:52PM +0100, Geert Uytterhoeven wrote:
> Hi Stafford,
> 
> On Sat, 3 Jan 2026 at 07:17, Stafford Horne <shorne@gmail.com> wrote:
> > On Thu, Dec 18, 2025 at 07:36:08PM +0100, Geert Uytterhoeven wrote:
> > > On Wed, 17 Dec 2025 at 09:23, Stafford Horne <shorne@gmail.com> wrote:
> > > > The de0 nano from Terasic is an FPGA board that we use in the OpenRISC
> > > > community to test OpenRISC configurations.  Add a base configuration for
> > > > the board that runs an OpenRISC CPU at 50Mhz with 32MB ram, UART for
> > > > console and some GPIOs for LEDs and switches.
> > > >
> > > > There is an older version of this floating around that defines all of
> > > > the hardware on the board including SPI's, flash devices, sram, ADCs
> > > > etc.  Eventually it would be good to get the full version upstream
> > > > but for now I think a minimal board is good to start with.
> > > >
> > > > Link: https://openrisc.io/tutorials/de0_nano/
> > > > Link: https://github.com/olofk/de0_nano
> > > >
> > > > Signed-off-by: Stafford Horne <shorne@gmail.com>
> 
> > > > --- /dev/null
> > > > +++ b/arch/openrisc/boot/dts/de0-nano.dts
> > > > @@ -0,0 +1,54 @@
> > > > +// SPDX-License-Identifier: GPL-2.0
> > > > +
> > > > +/dts-v1/;
> > > > +
> > > > +#include "de0-nano-common.dtsi"
> > > > +
> > > > +/ {
> > > > +       model = "Terasic DE0 Nano";
> > > > +       compatible = "opencores,or1ksim";
> > > > +       #address-cells = <1>;
> > > > +       #size-cells = <1>;
> > > > +       interrupt-parent = <&pic>;
> > > > +
> > > > +       aliases {
> > > > +               uart0 = &serial0;
> > > > +       };
> > > > +
> > > > +       chosen {
> > > > +               bootargs = "earlycon";
> > >
> > > Do you need this?
> >
> > What do you mean here? I want to keep "earlycon", and it is not supplied in
> > de0-nano-common.dtsi.
> 
> Why do you want to keep it? "earlycon" is a typical debug option,
> and should not be needed during normal use.

I see, I am always debugging so I leave it on.  But, good point for these
default configs.  I'll remove the debug defaults.

Just curious, Do you have a quick way to enable out of tree debug patches i.e.
to dts and defconfigs?

-Stafford

