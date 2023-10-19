Return-Path: <devicetree+bounces-10171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 574A47CFE0E
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 17:37:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EECEA282485
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 15:37:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE05331597;
	Thu, 19 Oct 2023 15:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B64B30F82
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 15:37:31 +0000 (UTC)
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5EE7130;
	Thu, 19 Oct 2023 08:37:29 -0700 (PDT)
Received: from francesco-nb.int.toradex.com (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id F200720F2D;
	Thu, 19 Oct 2023 17:37:27 +0200 (CEST)
Date: Thu, 19 Oct 2023 17:37:26 +0200
From: Francesco Dolcini <francesco@dolcini.it>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Francesco Dolcini <francesco@dolcini.it>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>, linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: serial: 8250_omap: add
 rs485-rts-active-high
Message-ID: <ZTFNNudzuvDtSn4J@francesco-nb.int.toradex.com>
References: <20230531111038.6302-1-francesco@dolcini.it>
 <CAMuHMdUkPiA=o_QLyuwsTYW7y1ksCjHAqyNSHFx2QZ-dP-HGsQ@mail.gmail.com>
 <ZTFFp8Yr7lq6HIab@francesco-nb.int.toradex.com>
 <CAMuHMdXtA3LNL6UkWyz6oytfNpSv77EShfF-uQvnPJktMUr40A@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMuHMdXtA3LNL6UkWyz6oytfNpSv77EShfF-uQvnPJktMUr40A@mail.gmail.com>

On Thu, Oct 19, 2023 at 05:13:01PM +0200, Geert Uytterhoeven wrote:
> Hi Franceso,
> 
> On Thu, Oct 19, 2023 at 5:05 PM Francesco Dolcini <francesco@dolcini.it> wrote:
> > On Thu, Oct 19, 2023 at 12:09:06PM +0200, Geert Uytterhoeven wrote:
> > > On Wed, May 31, 2023 at 1:14 PM Francesco Dolcini <francesco@dolcini.it> wrote:
> > > > From: Francesco Dolcini <francesco.dolcini@toradex.com>
> > > >
> > > > Add rs485-rts-active-high property, this was removed by mistake.
> > > > In general we just use rs485-rts-active-low property, however the OMAP
> > > > UART for legacy reason uses the -high one.
> > > >
> > > > Fixes: 767d3467eb60 ("dt-bindings: serial: 8250_omap: drop rs485 properties")
> > > > Closes: https://lore.kernel.org/all/ZGefR4mTHHo1iQ7H@francesco-nb.int.toradex.com/
> > > > Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
> > > > ---
> > > > v2: removed reported-by
> > >
> > > Thanks for your patch, which is now commit 403e97d6ab2cb6fd
> > > ("dt-bindings: serial: 8250_omap: add rs485-rts-active-high")
> > > in v6.4-rc5.
> > >
> > > > --- a/Documentation/devicetree/bindings/serial/8250_omap.yaml
> > > > +++ b/Documentation/devicetree/bindings/serial/8250_omap.yaml
> > > > @@ -70,6 +70,7 @@ properties:
> > > >    dsr-gpios: true
> > > >    rng-gpios: true
> > > >    dcd-gpios: true
> > > > +  rs485-rts-active-high: true
> > >
> > > make dt_binding_check complains:
> > >
> > >     Documentation/devicetree/bindings/serial/8250_omap.yaml:
> > > rs485-rts-active-high: missing type definition
> >
> > For some reasons it works for me (and worked when I did send the patch)
> >
> > $ make dt_binding_check DT_SCHEMA_FILES=8250_omap.yaml
> > ...
> >   HOSTCC  scripts/dtc/libfdt/fdt_overlay.o
> >   HOSTCC  scripts/dtc/fdtoverlay.o
> >   HOSTLD  scripts/dtc/fdtoverlay
> >   LINT    Documentation/devicetree/bindings
> > invalid config: unknown option "required" for rule "quoted-strings"
> > xargs: /usr/bin/yamllint: exited with status 255; aborting
> >   CHKDT   Documentation/devicetree/bindings/processed-schema.json
> >   SCHEMA  Documentation/devicetree/bindings/processed-schema.json
> > /home/francesco/Toradex/sources/linux/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: ignoring, error in schema: properties: qcom,ls-fs-output-impedance-bp
> > /home/francesco/Toradex/sources/linux/Documentation/devicetree/bindings/arm/vexpress-sysreg.yaml: ignoring, error in schema: properties: gpio-controller
> > /home/francesco/Toradex/sources/linux/Documentation/devicetree/bindings/iio/temperature/adi,ltc2983.yaml: ignoring, error in schema: patternProperties: ^thermistor@: properties: adi,excitation-current-nanoamp
> > /home/francesco/Toradex/sources/linux/Documentation/devicetree/bindings/iio/adc/adi,ad4130.yaml: ignoring, error in schema: patternProperties: ^channel@([0-9a-f])$: properties: adi,burnout-current-nanoamp
> > /home/francesco/Toradex/sources/linux/Documentation/devicetree/bindings/iio/addac/adi,ad74115.yaml: ignoring, error in schema: properties: adi,ext2-burnout-current-nanoamp
> >   DTEX    Documentation/devicetree/bindings/serial/8250_omap.example.dts
> >   DTC_CHK Documentation/devicetree/bindings/serial/8250_omap.example.dtb
> >
> >
> > any idea on what could be different between us?
> 
> Are you using the latest dt-schema?

Nope, and I tried to update it and now everything fails in a miserable
way.

In any case the fix is clear and I am pretty confident the issue I had is
what you just wrote, I'll send a patch.

Francesco


