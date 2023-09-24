Return-Path: <devicetree+bounces-2786-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 044EC7AC836
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 15:13:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 349DBB208CC
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 13:13:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EAE21FCB;
	Sun, 24 Sep 2023 13:13:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ACAB1366
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 13:13:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2F7BC433C8;
	Sun, 24 Sep 2023 13:13:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695561194;
	bh=+5KaB49uOlFQkZgApzKtK2I55JG1Pn3av0cO417t/Aw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KPkeS/KARAgDFiDSFJ6TsynTW+7uBCBlC9GxMQPbhLP2We0SW1liq3Nf3BhJLjsMW
	 ADtUofkpUk4PYjng8gHgZUgqn73ROKiutxRoFM/d+4s9x+qDFPYn5Ixc8Z7a1TuZVA
	 BSOQj5zc3/LM6ocNgI4BL5VEjsHXKrRzvVnksenb3Y0wrdQFbVTDMGmF4UaZQ44fj4
	 c3Uqz5sAaOwCTa6NKONVWbPUuv1eSOurrN3oeh0BwybPXKhvGpr4G7pi8hTrXfaFSz
	 T/87wzcDk2kCLKH49GDXHX6VIgcYnpJhoLscJnKS4j0Xl2/7zED+Gvxotv5CQ56nSr
	 lL0NItwst+bYg==
Date: Sun, 24 Sep 2023 21:13:02 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Ying Liu <victor.liu@nxp.com>
Cc: Fabio Estevam <festevam@gmail.com>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
	"kernel@pengutronix.de" <kernel@pengutronix.de>,
	dl-linux-imx <linux-imx@nxp.com>
Subject: Re: [PATCH 1/2] arm64: dts: imx8mm-evk: Add VDDEXT_3V3 fixed
 regulator
Message-ID: <20230924131302.GF7231@dragon>
References: <20230814081148.4027053-1-victor.liu@nxp.com>
 <20230814081148.4027053-2-victor.liu@nxp.com>
 <CAOMZO5BktVaO1hRgv-WvwY2tV3eUrNnNMiQJKH654K+-AT5ECA@mail.gmail.com>
 <DB8PR04MB705143050E09106FFA17DF97981EA@DB8PR04MB7051.eurprd04.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DB8PR04MB705143050E09106FFA17DF97981EA@DB8PR04MB7051.eurprd04.prod.outlook.com>

On Mon, Aug 21, 2023 at 02:33:17AM +0000, Ying Liu wrote:
> On Friday, August 18, 2023 10:06 PM Fabio Estevam <festevam@gmail.com> wrote:
> > On Mon, Aug 14, 2023 at 5:07 AM Liu Ying <victor.liu@nxp.com> wrote:
> > 
> > > +       reg_vddext_3v3: regulator-vddext-3v3 {
> > > +               compatible = "regulator-fixed";
> > > +               regulator-name = "VDDEXT_3V3";
> > > +               regulator-min-microvolt = <3300000>;
> > > +               regulator-max-microvolt = <300000>;
> > > +       };
> > 
> > Booting the dtb with this change will cause this regulator to be
> > disabled as there is no consumer for it.
> 
> Software cannot control this regulator by any means.  It's on once
> the board is powered on.  Do you mean it will be disabled in software
> level if no consumer?  If that's the case, is the disablement harmful?
> 
> > 
> > I suggest squashing both patches:
> 
> The patch looks self-contained to me.  Can we keep it as-is?

While I agree the patch is self-contained, squashing them will make it
easier to apply the change as a fix and cherry-pick the fix to stable
kernel.

Applied with squashing, thanks!

Shawn

