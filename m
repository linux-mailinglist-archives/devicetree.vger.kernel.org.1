Return-Path: <devicetree+bounces-5858-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F0CD77B82C2
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 16:53:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 924BB1F227B2
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 14:53:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C44CE154A6;
	Wed,  4 Oct 2023 14:53:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F332101DB
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 14:53:24 +0000 (UTC)
Received: from mail.andi.de1.cc (mail.andi.de1.cc [IPv6:2a02:c205:3004:2154::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5AD2CE;
	Wed,  4 Oct 2023 07:53:21 -0700 (PDT)
Received: from pd9e2f797.dip0.t-ipconnect.de ([217.226.247.151] helo=aktux)
	by mail.andi.de1.cc with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <andreas@kemnade.info>)
	id 1qo3FU-004W21-9o; Wed, 04 Oct 2023 16:53:15 +0200
Date: Wed, 4 Oct 2023 16:53:14 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: bcousson@baylibre.com, tony@atomide.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] ARM: dts: omap4-embt2ws: Add Bluetooth
Message-ID: <20231004165314.1a9fb486@aktux>
In-Reply-To: <8e37d1ff-be19-4f70-a1a6-9a013a61782b@linaro.org>
References: <20231004070309.2408745-1-andreas@kemnade.info>
	<8e37d1ff-be19-4f70-a1a6-9a013a61782b@linaro.org>
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

Hi,

On Wed, 4 Oct 2023 09:59:59 +0200
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:

[...]
> > diff --git a/arch/arm/boot/dts/ti/omap/omap4-epson-embt2ws.dts b/arch/arm/boot/dts/ti/omap/omap4-epson-embt2ws.dts
> > index 46a80eacf771..6a790124bcf5 100644
> > --- a/arch/arm/boot/dts/ti/omap/omap4-epson-embt2ws.dts
> > +++ b/arch/arm/boot/dts/ti/omap/omap4-epson-embt2ws.dts
> > @@ -447,10 +447,12 @@ &uart2 {
> >  	interrupts-extended = <&wakeupgen GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH
> >  			       &omap4_pmx_core OMAP4_UART2_RX>;
> >  
> > -	/*
> > -	 * BT + GPS in WL1283 in WG7500 requiring CLK32KAUDIO of pmic
> > -	 * which does not have a driver
> > -	 */
> > +	bluetooth-gnss {  
> 
> If you changed the bindings, please share a link. If not, this is not
> currently accepted and dtbs_check should point it out.
> 

according to dtbs_check:

good:
- bluetooth-gnss
- bluettooth-gnss

bad:
- bluettooth-gnnss
- tiwi (still there in pandaboards)

Regards,
Andreas


