Return-Path: <devicetree+bounces-50987-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 93ABB87DE34
	for <lists+devicetree@lfdr.de>; Sun, 17 Mar 2024 16:59:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 069681C20EDD
	for <lists+devicetree@lfdr.de>; Sun, 17 Mar 2024 15:59:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCCE31CAAD;
	Sun, 17 Mar 2024 15:59:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1E2A1CAA0
	for <devicetree@vger.kernel.org>; Sun, 17 Mar 2024 15:59:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710691171; cv=none; b=rQV9jM83S8wT2WhBADGTy7n0Bp+yTMyhgarxxq9eLxYsyrY5J9WkqGDdFK2YUcbiq5f88ymri85dGlBFU3PHMZaaX37XKZ3hpKJaGP8T6kMNGffNgLdIv7SGu4i7OZWFxpEwGcaSrta/5DGtb5gJksipuNrd3PgNhObtEoSat1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710691171; c=relaxed/simple;
	bh=yH6Ri9QeN3gb0pg/hDDWTmP5dlapgGs1z3C0/HBifSE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tEMXE7RknnpAbG1vFnMaAp5jbzD6Nzf+dgLXq1WFll0WhZbs0jzcNGPTlwXME6JynCMXyw2Zyv1KPuhclK2/Ta4cctVCZimn9rEDPJpb3LdJuh2fX+l1HBb3kWo9zlhhLZGcWWAJi29ECH1h/yYedNjStPGabwpWMzkq3KDXQ7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rlsun-0001YQ-7o; Sun, 17 Mar 2024 16:59:13 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rlsul-006uO0-T5; Sun, 17 Mar 2024 16:59:11 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1rlsul-0040qQ-2a;
	Sun, 17 Mar 2024 16:59:11 +0100
Date: Sun, 17 Mar 2024 16:59:11 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Abel Vesa <abelvesa@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, imx@lists.linux.dev,
	Peng Fan <peng.fan@nxp.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 0/6] Add support i.MX95 BLK CTL module clock features
Message-ID: <20240317155911.pdc32nsyxcdhs2t7@pengutronix.de>
References: <20240314-imx95-blk-ctl-v4-0-d23de23b6ff2@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240314-imx95-blk-ctl-v4-0-d23de23b6ff2@nxp.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hi Peng,

thank for the patchset.

On 24-03-14, Peng Fan (OSS) wrote:
> i.MX95's several MIXes has BLK CTL module which could be used for
> clk settings, QoS settings, Misc settings for a MIX. This patchset
> is to add the clk feature support, including dt-bindings

I have to ask since there is almost no public documentation available
yet. The i.MX95 does have an system-controller for managing pinmux
settings and power-domains, right? If this is the case, why not making
use of it via the standard scmi_pm_domain.c driver?

Regards,
  Marco



> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
> Changes in v4:
> - Separate binding doc for each modules, I still keep the syscon as node
> name, because the module is not just for clock
> - Pass dt-schema check
> - Update node compatibles
> - Link to v3: https://lore.kernel.org/r/20240228-imx95-blk-ctl-v3-0-40ceba01a211@nxp.com
> 
> Changes in v3:
> - Correct example node compatible string
> - Pass "make ARCH=arm64 DT_CHECKER_FLAGS=-m -j32 dt_binding_check"
> - Link to v2: https://lore.kernel.org/r/20240228-imx95-blk-ctl-v2-0-ffb7eefb6dcd@nxp.com
> 
> Changes in v2:
> - Correct example node compatible string
> - Link to v1: https://lore.kernel.org/r/20240228-imx95-blk-ctl-v1-0-9b5ae3c14d83@nxp.com
> 
> ---
> Peng Fan (6):
>       dt-bindindgs: clock: nxp: support i.MX95 VPU CSR module
>       dt-bindindgs: clock: nxp: support i.MX95 Camera CSR module
>       dt-bindindgs: clock: nxp: support i.MX95 Display Master CSR module
>       dt-bindindgs: clock: nxp: support i.MX95 LVDS CSR module
>       dt-bindindgs: clock: nxp: support i.MX95 Display CSR module
>       clk: imx: add i.MX95 BLK CTL clk driver
> 
>  .../bindings/clock/nxp,imx95-camera-csr.yaml       |  50 +++
>  .../bindings/clock/nxp,imx95-display-csr.yaml      |  50 +++
>  .../clock/nxp,imx95-display-master-csr.yaml        |  62 +++
>  .../bindings/clock/nxp,imx95-lvds-csr.yaml         |  50 +++
>  .../bindings/clock/nxp,imx95-vpu-csr.yaml          |  50 +++
>  drivers/clk/imx/Kconfig                            |   7 +
>  drivers/clk/imx/Makefile                           |   1 +
>  drivers/clk/imx/clk-imx95-blk-ctl.c                | 438 +++++++++++++++++++++
>  include/dt-bindings/clock/nxp,imx95-clock.h        |  32 ++
>  9 files changed, 740 insertions(+)
> ---
> base-commit: c9c32620af65fee2b1ac8390fe1349b33f9d0888
> change-id: 20240228-imx95-blk-ctl-9ef8c1fc4c22
> 
> Best regards,
> -- 
> Peng Fan <peng.fan@nxp.com>
> 
> 
> 

