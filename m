Return-Path: <devicetree+bounces-8885-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B09817CA6CB
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 13:35:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 04BCEB20CE2
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 11:35:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9363E241E3;
	Mon, 16 Oct 2023 11:35:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD17823775
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 11:35:03 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24E98D9
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 04:35:02 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qsLrv-0006gp-Oq; Mon, 16 Oct 2023 13:34:43 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qsLru-0024VF-Ap; Mon, 16 Oct 2023 13:34:42 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qsLru-00EjWY-7l; Mon, 16 Oct 2023 13:34:42 +0200
Date: Mon, 16 Oct 2023 13:34:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Chanwoo Choi <chanwoo@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Robin Murphy <robin.murphy@arm.com>,
	Vincent Legoll <vincent.legoll@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH v7 10/26] PM / devfreq: rockchip-dfi: Add RK3568 support
Message-ID: <20231016113442.GZ3359458@pengutronix.de>
References: <20230704093242.583575-1-s.hauer@pengutronix.de>
 <20230704093242.583575-11-s.hauer@pengutronix.de>
 <ac224dfe-ff7d-57c7-89ad-f10939975b4d@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ac224dfe-ff7d-57c7-89ad-f10939975b4d@kernel.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Sat, Oct 07, 2023 at 03:17:14AM +0900, Chanwoo Choi wrote:
> On 23. 7. 4. 18:32, Sascha Hauer wrote:
> > This adds RK3568 support to the DFI driver.  Only iniitialization
> > differs from the currently supported RK3399.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/devfreq/event/rockchip-dfi.c | 21 +++++++++++++++++++++
> >  include/soc/rockchip/rk3568_grf.h    | 12 ++++++++++++
> >  2 files changed, 33 insertions(+)
> >  create mode 100644 include/soc/rockchip/rk3568_grf.h
> > 
> > diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> > index 6b3ef97b3be09..261d112580c9e 100644
> > --- a/drivers/devfreq/event/rockchip-dfi.c
> > +++ b/drivers/devfreq/event/rockchip-dfi.c
> > @@ -23,6 +23,7 @@
> >  
> >  #include <soc/rockchip/rockchip_grf.h>
> >  #include <soc/rockchip/rk3399_grf.h>
> > +#include <soc/rockchip/rk3568_grf.h>
> >  
> >  #define DMC_MAX_CHANNELS	2
> >  
> > @@ -209,10 +210,30 @@ static int rk3399_dfi_init(struct rockchip_dfi *dfi)
> >  	return 0;
> >  };
> >  
> > +static int rk3568_dfi_init(struct rockchip_dfi *dfi)
> > +{
> > +	struct regmap *regmap_pmu = dfi->regmap_pmu;
> > +	u32 reg2, reg3;
> > +
> > +	regmap_read(regmap_pmu, RK3568_PMUGRF_OS_REG2, &reg2);
> > +	regmap_read(regmap_pmu, RK3568_PMUGRF_OS_REG3, &reg3);
> > +
> > +	dfi->ddr_type = FIELD_GET(RK3568_PMUGRF_OS_REG2_DRAMTYPE_INFO, reg2);

The ddr_type is 5 bits wide. The lower three bits are here.

> > +
> > +	if (FIELD_GET(RK3568_PMUGRF_OS_REG3_SYSREG_VERSION, reg3) >= 0x3)
> > +		dfi->ddr_type |= FIELD_GET(RK3568_PMUGRF_OS_REG3_DRAMTYPE_INFO_V3, reg3) << 3;

The upper two bits are here, hence we need to shift the value above the
lower three bits.

> 
> There are no reason of why shifting the '3'.
> Could you add the comment about '3' or add the constant definition '3'?

I don't think adding a constant makes sense. I'll add a comment making
it more clear what happens.

> 
> > +
> > +	dfi->channel_mask = 1;
> 
> nitpick.
> On other rkXXXX_dfi_init, use GENMASK() to initialize 'dfi->channel_mask'.
> In order to keep the consistency, it is better to use BIT() macro as following:
> 	dfi->channel_mask = BIT(0);

Ok, will do.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

