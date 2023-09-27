Return-Path: <devicetree+bounces-3943-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8F17B0A1E
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 18:29:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id A413B281FD5
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 16:29:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24D8C4A55D;
	Wed, 27 Sep 2023 16:29:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B1B74A551
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 16:29:13 +0000 (UTC)
Received: from mail.andi.de1.cc (mail.andi.de1.cc [IPv6:2a02:c205:3004:2154::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6198391;
	Wed, 27 Sep 2023 09:29:10 -0700 (PDT)
Received: from p5dcc3085.dip0.t-ipconnect.de ([93.204.48.133] helo=aktux)
	by mail.andi.de1.cc with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <andreas@kemnade.info>)
	id 1qlXPO-004Eov-0C; Wed, 27 Sep 2023 18:29:05 +0200
Date: Wed, 27 Sep 2023 18:29:03 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: bcousson@baylibre.com, tony@atomide.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: omap4-embt2ws: Add Bluetooth
Message-ID: <20230927182903.4cf1527f@aktux>
In-Reply-To: <be991b32-018a-478d-bd74-6c79ea1c788e@linaro.org>
References: <20230926204204.2120316-1-andreas@kemnade.info>
	<be991b32-018a-478d-bd74-6c79ea1c788e@linaro.org>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.37; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On Wed, 27 Sep 2023 09:56:28 +02Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:

> On 26/09/2023 22:42, Andreas Kemnade wrote:
> > Since the required clock is now available, add bluetooth.
> > 
> > Note: Firmware (bts file) from device vendor reroutes tx for some time
> > during initialisation and later put it back, producing timeouts in
> > bluetooth initialisation but ignoring that command leads to proper
> > initialisation.
> > 
> > Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> > ---
> > Depends on: https://lore.kernel.org/linux-omap/20230916100515.1650336-6-andreas@kemnade.info/T/#u
> >  arch/arm/boot/dts/ti/omap/omap4-epson-embt2ws.dts | 10 ++++++----
> >  1 file changed, 6 insertions(+), 4 deletions(-)
> > 
> > diff --git a/arch/arm/boot/dts/ti/omap/omap4-epson-embt2ws.dts b/arch/arm/boot/dts/ti/omap/omap4-epson-embt2ws.dts
> > index 9d2f2d8639496..25b80385dc1f0 100644
> > --- a/arch/arm/boot/dts/ti/omap/omap4-epson-embt2ws.dts
> > +++ b/arch/arm/boot/dts/ti/omap/omap4-epson-embt2ws.dts
> > @@ -478,10 +478,12 @@ &uart2 {
> >  	interrupts-extended = <&wakeupgen GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH
> >  			       &omap4_pmx_core OMAP4_UART2_RX>;
> >  
> > -	/*
> > -	 * BT + GPS in WL1283 in WG7500 requiring CLK32KAUDIO of pmic
> > -	 * which does not have a driver
> > -	 */
> > +	bluetooth: tiwi {  
> 
> Node names should be generic. See also an explanation and list of
> examples (not exhaustive) in DT specification:
> https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation
> 
> E.g. "bluetooth"
> 
well, that is what I get currently as a reward from the kernel for describing
the hardware and so the motivation for the patch, not necessarily the most important
functionality.

But the over the uart runs the ti shared transport protocol (also there is
a non dt compatible driver in drivers/misc/ti-st) which provides more than Bluetooth,
e.g. it also provides at least GNSS and FM (although it do not know if it works in this particular
hardware). GPS/GNSS should work.

So the node name would be bluetoothgnss then? Well, I think we do not need the label then.

Regards,
Andreas

