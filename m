Return-Path: <devicetree+bounces-221546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 864A1BA0CA3
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 19:16:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B75531BC7656
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 17:16:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FD1830C613;
	Thu, 25 Sep 2025 17:16:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s1r06cGW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E88230B524
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 17:16:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758820578; cv=none; b=t+Se7E+VGJYMcB4zSwGEmI+yW8VdEsTtI5OqsAzGMEo+QWgMHr+VPy35tt7JgumF4Hdq3vL1il9Mpzk/JtgVLuK6AXcRwknWxVqcakZsqRWM5GCLcQ9u+TmRzJG6rcFrHJz26h5xUdgjs/AzC8DUd+IgSRtWWvxazM2XzYYH29g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758820578; c=relaxed/simple;
	bh=Zv82gIXaLAAzi9Py9v1c5XK2EiDFpXVZ/NJKU+kigKI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SSPW7IoBsvaBWtkuQIgdf0DE7FZklK4Bh/7+IEHwtTSvSIXCKhjcdS7ideHomR3GnRrmPrwGrXLKkToGuPiZwmqqrguDsRRKakuaCr/GidvBMw6U0NNl8wJZK61IGdgGhVVSPxi3n3bITIa8T12fbb/FtQbDtnqdQzNuUdmyrG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=s1r06cGW; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-62fc28843ecso1531613a12.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 10:16:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758820573; x=1759425373; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gfSUBmjDQGS07XOuZOfB4dv6p+6TOkn4sFnsfwrItDc=;
        b=s1r06cGWbBgRKji5umAfulK1J80i1/kiXpCjnMxS1IkEdryInPSC1MjkBM/+Rc5lL+
         KgAw3dS3Mq/2JMZuJBZU+cDUjTyqYT0isBUfXsev30dNqGjBk5c4wfhgjoDsm6DuYktY
         +onO1nc8/sDbW9HLpsOJrTEaCGdF7g0/h3zwQ90SO3WNAzfGGFOkqTL/A4nCqmO30AVM
         I9hTClY3pOr8Rh3GVOThPiv+/D90KeC9H25dBwB7DQbeG4PzE7Ih9y/NskQDyYF7lfoh
         GNURJ5S5BnSWKt3lTJnXjKg7FCMeCsDSMY+oF2OQYrxKoIti+EeXcdCtAznJx64/hQrk
         bRbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758820573; x=1759425373;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gfSUBmjDQGS07XOuZOfB4dv6p+6TOkn4sFnsfwrItDc=;
        b=vYzMs9H0Or+9f6GnNCq65RwrEa7uCGZB6IUMlFyXq9143tKiZNI0Oc1CIpRHFwmN6r
         4n+CEKe8nxYwADMVIQF2ztDKLS7hIc+b5fjvGC/wr/tZP+4/aKhzE2HhTUXBC7/LL+1h
         ilLSXRGZmhTZlG2fYrw9oX9moHTYNIeLVADdlqSJZ3zvKVm6737PvQMwtqxAkNk+e4/l
         Sxe5oqWDknKLSiTKUUCRiH3CbpFZWWM5DkXf6Bnj5f7i7JEYZEe2aaOzZhmuhd2JRzOK
         M1LIY5ThsVFa7bg6Q47jNyq2WsnKhr7QKlb2vu+ls71hvQzanm3P6NcKgbVx0daeke1W
         yVqA==
X-Forwarded-Encrypted: i=1; AJvYcCU70Xmy8J5SPwgWPzcW5FGfEfMoul97SUAV8QzB9tCEB3eq8mxljqAC8IbCzz7/iC9T8ij0+HA2vSsa@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2JphWzTlHjxY3i5CvMLP/4c/i4LCZKAwApw7v67MMg2ZdkGDZ
	fpM8DCc5YHZr63NJImSFFZ1Em1U3gQ7Zd5OlL36N7/YCNnD8HSs1c7jLbu147NUjQGyzW43Kjzm
	9Lg/iMwRlbQUpFFR48xKZODD9SXOu7w05EyxBtdAcEg==
X-Gm-Gg: ASbGncubT5Eo4EHbXGOhyb8+S6qjtpOdcEvQdBeRBMuvLPEFH0Mbkp9vvD88SQOeelb
	yybuDOLIwd/joNCqyn3DYKCKM7IY+74hSvV7eHiDY0PDKv1FxTFOVM1SuCeE5Xjte+G2QTOaFFn
	yYiSSNleBKzHzHE8C6uiy7TRtsZ8gUVpgqp39scI6RO/6z0dDrJ+VpYR7qVgcLDZQ9+q7CpS18S
	ALuJJ1iRmoXdEcBJ9a8N8V2qZI7+5dbYhOy
X-Google-Smtp-Source: AGHT+IGDhhdx+YuZcr8I4Tult1/nPYdF84/cpZUAmbh+gOazNWoxtTztWVZU1nAmJ8EOHh1jeTaA57QtgllGSnlOLdQ=
X-Received: by 2002:aa7:d441:0:b0:62f:68c3:57d0 with SMTP id
 4fb4d7f45d1cf-6349f9cbc18mr2542494a12.4.1758820572615; Thu, 25 Sep 2025
 10:16:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250919155821.95334-1-vincent.guittot@linaro.org>
 <20250919155821.95334-4-vincent.guittot@linaro.org> <aM2L0C4SsGTzLQwi@lizhi-Precision-Tower-5810>
In-Reply-To: <aM2L0C4SsGTzLQwi@lizhi-Precision-Tower-5810>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Thu, 25 Sep 2025 19:16:01 +0200
X-Gm-Features: AS18NWCvFPXEZU7r1XpqWeh25XNcMYT0B_gX-68ydY8oAsZKJCM-yUYMplLol9w
Message-ID: <CAKfTPtC4TS-PwMa7-BSV6qS=YjnFczwj42USqJ8=YX3X0cdTxA@mail.gmail.com>
Subject: Re: [PATCH 3/3 v2] MAINTAINERS: Add MAINTAINER for NXP S32G PCIe driver
To: Frank Li <Frank.li@nxp.com>
Cc: chester62515@gmail.com, mbrugger@suse.com, ghennadi.procopciuc@oss.nxp.com, 
	s32@nxp.com, bhelgaas@google.com, jingoohan1@gmail.com, lpieralisi@kernel.org, 
	kwilczynski@kernel.org, mani@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, Ionut.Vicovan@nxp.com, larisa.grigore@nxp.com, 
	Ghennadi.Procopciuc@nxp.com, ciprianmarian.costea@nxp.com, 
	bogdan.hamciuc@nxp.com, linux-arm-kernel@lists.infradead.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev, cassel@kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 19 Sept 2025 at 18:59, Frank Li <Frank.li@nxp.com> wrote:
>
> On Fri, Sep 19, 2025 at 05:58:21PM +0200, Vincent Guittot wrote:
> > Add the s32g PCIe driver under the ARM/NXP S32G ARCHITECTURE entry.
>
> I think common ARCH maintainer part should only include core port of SOC.
>
> PCI driver should be sperated entry.

I can make a dedicated entry for s32g PCI


>
> see PCI DRIVER FOR IMX6
>
> Frank
> >
> > Signed-off-by: Vincent Guittot <vincent.guittot@linaro.org>
> > ---
> >  MAINTAINERS | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index cd7ff55b5d32..fa45862cb1ea 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -3084,12 +3084,16 @@ R:    Chester Lin <chester62515@gmail.com>
> >  R:   Matthias Brugger <mbrugger@suse.com>
> >  R:   Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>
> >  R:   NXP S32 Linux Team <s32@nxp.com>
> > +L:   imx@lists.linux.dev
> >  L:   linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
> >  S:   Maintained
> > +F:   Documentation/devicetree/bindings/pci/nxp,s32-pcie.yaml
> >  F:   Documentation/devicetree/bindings/rtc/nxp,s32g-rtc.yaml
> >  F:   arch/arm64/boot/dts/freescale/s32g*.dts*
> > +F:   drivers/pci/controller/dwc/pci-s32g*
> >  F:   drivers/pinctrl/nxp/
> >  F:   drivers/rtc/rtc-s32g.c
> > +F:   include/linux/pcie/nxp-s32g-pcie-phy-submode.h
> >
> >  ARM/NXP S32G/S32R DWMAC ETHERNET DRIVER
> >  M:   Jan Petrous <jan.petrous@oss.nxp.com>
> > --
> > 2.43.0
> >

