Return-Path: <devicetree+bounces-1743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D077A7FAE
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 14:29:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 26A882819EF
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 12:29:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AABAA30FB3;
	Wed, 20 Sep 2023 12:29:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5A530FA7
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 12:29:20 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A41BC9
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 05:29:19 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qiwKT-0008Hr-Qa; Wed, 20 Sep 2023 14:29:17 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qiwKS-007gUa-CY; Wed, 20 Sep 2023 14:29:16 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qiwKS-00ACFb-8L; Wed, 20 Sep 2023 14:29:16 +0200
Date: Wed, 20 Sep 2023 14:29:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>, kernel@pengutronix.de,
	linux-kernel@vger.kernel.org,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-stm32@st-md-mailman.stormreply.com,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>
Subject: Re: [PATCH] ARM: dts: stm32: omit unused pinctrl groups from dtb
 files
Message-ID: <20230920122916.GV637806@pengutronix.de>
References: <20230920121147.2807758-1-s.hauer@pengutronix.de>
 <33956b8b-465f-3a99-0331-7ed784c502f3@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <33956b8b-465f-3a99-0331-7ed784c502f3@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, Sep 20, 2023 at 02:15:24PM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 20.09.23 14:11, Sascha Hauer wrote:
> > stm32mp15-pinctrl.dtsi contains nearly all pinctrl groups collected from
> > all boards. Most of them end up unused by a board and only waste binary
> > space. Add /omit-if-no-ref/ to the groups to scrub the unused groups
> > from the dtbs.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/boot/dts/st/stm32mp15-pinctrl.dtsi | 228 ++++++++++++++++++++
> >  1 file changed, 228 insertions(+)
> > 
> > diff --git a/arch/arm/boot/dts/st/stm32mp15-pinctrl.dtsi b/arch/arm/boot/dts/st/stm32mp15-pinctrl.dtsi
> > index e1df345801dc2..778a83471df4c 100644
> > --- a/arch/arm/boot/dts/st/stm32mp15-pinctrl.dtsi
> > +++ b/arch/arm/boot/dts/st/stm32mp15-pinctrl.dtsi
> > @@ -7,6 +7,7 @@
> >  
> >  &pinctrl {
> >  	adc1_ain_pins_a: adc1-ain-0 {
> > +		/omit-if-no-ref/
> 
> I think the correct place is above the node name that would be referenced,
> i.e. before adc1_ain_pins_a: adc1-ain-0 here.

Argh! You are right. I'll send a v2 once my fingers are no longer
bleeding.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

