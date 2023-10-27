Return-Path: <devicetree+bounces-12552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 73AC17DA13E
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 21:22:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0B8D8B21434
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 19:22:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FDAF3D962;
	Fri, 27 Oct 2023 19:22:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86DFC3AC22
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 19:22:41 +0000 (UTC)
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36A6818A;
	Fri, 27 Oct 2023 12:22:39 -0700 (PDT)
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-1e5bc692721so1448839fac.0;
        Fri, 27 Oct 2023 12:22:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698434558; x=1699039358;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A9jsGRebq8pjluBKi445sl0SsEqPdZ2Zl/0kDDzL9uM=;
        b=ZPaqGMLoGsU5CRBRi9UtF4mI9UdY6gQaiW+pxIq+wy/lKVS2fZZOjn4wPGpd2pCWOv
         C/3X3PjVNotwuOLMUV+t0Cwysf6184Vp34yODSomWjalKNs8pWlUloq2fEs93+DyicZ3
         P1njzd2Pl0IkOhbTFAnbqqF6LxwgDxSJnLjLfSGG2Hm8RggMmTDbFjQpHQbDTvzmhM6X
         JVPd361m5UkPL+5VrJTscZXZe63FUMs3sq5weFOja+lK08jVQgSvKHZAztSnfcHWvwL1
         +ZsFpnPmUgoCcTIfSVv5sq/3+tFcKnP6tDgaKKdbsFFEV/VVJm+h6w8RDmPqcbFnQhAm
         rp8w==
X-Gm-Message-State: AOJu0Yy3nfjTCGtWbsLmVEiItVJVAjoNlo25ZLwGukayA4PxrKBjOOI+
	+F2f06iEyAK/oYUu3sSUvw==
X-Google-Smtp-Source: AGHT+IGI5DUU/lE7E5bfhiKYkZ2U5RZ+9Ps+0bmLbokwsngLhoH+QPV0HcchdfFxVVZX3O0J0iDL9g==
X-Received: by 2002:a05:6870:582:b0:1e9:f4e4:2882 with SMTP id m2-20020a056870058200b001e9f4e42882mr4189126oap.38.1698434558282;
        Fri, 27 Oct 2023 12:22:38 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id ea53-20020a056870073500b001e9ce1b5e8fsm415203oab.15.2023.10.27.12.22.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 12:22:37 -0700 (PDT)
Received: (nullmailer pid 3086934 invoked by uid 1000);
	Fri, 27 Oct 2023 19:22:36 -0000
Date: Fri, 27 Oct 2023 14:22:36 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Wolfram Sang <wsa@kernel.org>, Chris Packham <chris.packham@alliedtelesis.co.nz>, krzysztof.kozlowski+dt@linaro.org, gregory.clement@bootlin.com, andi.shyti@kernel.org, conor+dt@kernel.org, linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
Subject: Re: [PATCH v5 1/2] dt-bindings: i2c: mv64xxx: add bus-reset-gpios
 property
Message-ID: <20231027192236.GA2946793-robh@kernel.org>
References: <20231027033104.1348921-1-chris.packham@alliedtelesis.co.nz>
 <20231027033104.1348921-2-chris.packham@alliedtelesis.co.nz>
 <ZTt+ZgNe5Y35E/C2@shikoro>
 <7bfa2f6c-3e99-49a6-9b5a-81398d4bce7e@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7bfa2f6c-3e99-49a6-9b5a-81398d4bce7e@linaro.org>

On Fri, Oct 27, 2023 at 01:25:56PM +0200, Krzysztof Kozlowski wrote:
> On 27/10/2023 11:09, Wolfram Sang wrote:
> > On Fri, Oct 27, 2023 at 04:31:03PM +1300, Chris Packham wrote:
> >> Add bus-reset-gpios and bus-reset-duration-us properties to the
> >> marvell,mv64xxx-i2c binding. These can be used to describe hardware
> >> where a common reset GPIO is connected to all downstream devices on and
> >> I2C bus. This reset will be asserted then released before the downstream
> >> devices on the bus are probed.
> >>
> >> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> >> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > 
> > Krzysztof, are you fine with this change?
> 
> Actually no. NAK.
> 
> Not because of the naming, but because the new name triggered some new
> paths in my brain which brought the point - this is old problem of power
> sequencing of children.
> 
> I believe this must be solved in more generic way. First - generic for
> all I2C devices. Second - generic also matching other buses/subsystems,
> which have similar problem. We did it for USB (onboard USB), MMC
> (unloved MMC power sequence) and now we are doing it for PCIe and few
> others (Cc: Abel)

Unlike the others I2C doesn't expect to access the bus/device before 
devices probe, right?

> https://lpc.events/event/17/contributions/1507/

Oh, good!

> Current solution is heavily limited. What about regulators? What about
> buses having 2 reset lines (still the same bus)? What about sequence?

A more complicated case should be handled by the device's driver. If the 
GPIO reset was not shared we'd be handling it there too. I think what's 
needed is to solve the shared aspect. That's already done with reset 
subsys, so I think making 'reset-gpios' handled by it too is the way 
forward. That would handle the QCA WiFi/BT case I think.

I'm not sure waiting for that or something else to happen is worth 
holding up this simple case. It's not the only case of a common reset 
for a bus (MDIO).

Rob

