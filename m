Return-Path: <devicetree+bounces-7330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B114F7C0171
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 18:19:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DD5AD1C2098C
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 16:19:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D49BC18639;
	Tue, 10 Oct 2023 16:19:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dx7YaSUc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B79DA27462
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 16:19:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1FDF5C433C8;
	Tue, 10 Oct 2023 16:19:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696954742;
	bh=ag41vErJLcdKpWvik5kJhsbnkB03toTtYunAk74GnXI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dx7YaSUcnpJ6i31sJjGmTurhcph5FdWf+D6PUKBdn7Kpq4plRrckNxcBAOeYqXbPf
	 MiQKYc0310YaucJacgIq6+fgIQArdHKfLY7kpbGRk864Cakn8zYBRC/5YY14vfJGEj
	 K5CHmkZKhkPOxzHHtEOdZRJORREJKlMOGYMr+sYIqxlhouiZzxu33loyGXcRu8C45d
	 h0CQRL+GQuon+oqhK5MCfkIVyaanl7ni3gAdJ1QvqQTPXM0BOJ4wYCBBS/8ZGWlIyD
	 pVib/siMUCWjRsQaW/eJXLbD9fDeXoLhGN2BCpKp85b+6PtaVW0Gdh/TRxkoObx5N8
	 VCVOy5R8KsKEw==
Received: (nullmailer pid 1003012 invoked by uid 1000);
	Tue, 10 Oct 2023 16:19:00 -0000
Date: Tue, 10 Oct 2023 11:19:00 -0500
From: Rob Herring <robh@kernel.org>
To: Matti Vaittinen <mazziesaccount@gmail.com>
Cc: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>, Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Paul Gazzillo <paul@pgazz.com>, Conor Dooley <conor+dt@kernel.org>, Stefan Windfeldt-Prytz <stefan.windfeldt-prytz@axis.com>
Subject: Re: [PATCH 1/2] dt-bindings: iio: light: Avago APDS9306
Message-ID: <20231010161900.GA999361-robh@kernel.org>
References: <20231008154857.24162-1-subhajit.ghosh@tweaklogic.com>
 <20231008154857.24162-2-subhajit.ghosh@tweaklogic.com>
 <2c6ff28f-9031-beb2-f8d0-e7f12b0a07b4@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2c6ff28f-9031-beb2-f8d0-e7f12b0a07b4@gmail.com>

On Tue, Oct 10, 2023 at 11:52:28AM +0300, Matti Vaittinen wrote:
> On 10/8/23 18:48, Subhajit Ghosh wrote:
> > Add devicetree bindings for Avago APDS9306 Ambient Light Sensor.
> > 
> > Signed-off-by: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
> > ---
> >   .../bindings/iio/light/avago,apds9306.yaml    | 49 +++++++++++++++++++
> >   1 file changed, 49 insertions(+)
> >   create mode 100644 Documentation/devicetree/bindings/iio/light/avago,apds9306.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/iio/light/avago,apds9306.yaml b/Documentation/devicetree/bindings/iio/light/avago,apds9306.yaml
> > new file mode 100644
> > index 000000000000..e8bb897782fc
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/iio/light/avago,apds9306.yaml
> > @@ -0,0 +1,49 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/iio/light/avago,apds9306.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Avago APDS9306 Ambient Light Sensor
> > +
> > +maintainers:
> > +  - Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
> > +
> > +description:
> > +  Datasheet at https://docs.broadcom.com/doc/AV02-4755EN
> > +
> > +properties:
> > +  compatible:
> > +    const: avago,apds9306
> 
> I see the driver supports two different variants of this IC, differentiated
> by the part-ID register. Variants are named as apds9306 and apds9306-065. I
> wonder if we could/should have different compatibles for them?

If 1 compatible is sufficient to know how to power on both devices and 
read the part-ID register, then no need for different compatibles.

Rob

