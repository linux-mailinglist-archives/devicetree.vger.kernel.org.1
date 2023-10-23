Return-Path: <devicetree+bounces-10902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9595D7D36B9
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 14:33:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CE6841C209EC
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 12:33:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 230B913FE5;
	Mon, 23 Oct 2023 12:33:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE05E19BD0
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 12:33:46 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5BB0C4
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 05:33:44 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1quu7f-0004Jk-Nk; Mon, 23 Oct 2023 14:33:31 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1quu7e-003hrK-Nk; Mon, 23 Oct 2023 14:33:30 +0200
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1quu7e-00Fvg8-Kg; Mon, 23 Oct 2023 14:33:30 +0200
Date: Mon, 23 Oct 2023 14:33:30 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Abel Vesa <abelvesa@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>, Marek Vasut <marex@denx.de>,
	devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
	NXP Linux Team <linux-imx@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux@ew.tq-group.com
Subject: Re: [PATCH 4/5] clk: imx: clk-fracn-gppll: Add 477.4MHz config for
 video pll
Message-ID: <20231023123330.2z37jzwdsx52w7p3@pengutronix.de>
References: <20231020130019.665853-1-alexander.stein@ew.tq-group.com>
 <20231020130019.665853-5-alexander.stein@ew.tq-group.com>
 <20231020142055.xnxbumcg2o6cfpfl@pengutronix.de>
 <10361180.nUPlyArG6x@steina-w>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <10361180.nUPlyArG6x@steina-w>
User-Agent: NeoMutt/20180716
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On 23-10-23, Alexander Stein wrote:
> Hi Marco,
> 
> Am Freitag, 20. Oktober 2023, 16:20:55 CEST schrieb Marco Felsch:
> > Hi Alexander,
> > 
> > On 23-10-20, Alexander Stein wrote:
> > > Add the 477.4MHz frequency support that will be used by video subsystem
> > > on imx93.
> > 
> > albeit the change is fine, could we consider adding support to calc the
> > params dynamically?
> 
> Agreed, I would prefer that as well: But unfortunately I will not be able to 
> add dynamic calculation right now.

Okay, just wanted to ask if someone (maybe TQ) has the time to implement
and test it.

Regards,
  Marco

