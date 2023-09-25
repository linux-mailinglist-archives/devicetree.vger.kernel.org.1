Return-Path: <devicetree+bounces-2934-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4577D7ACECF
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 05:55:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id E62CE281364
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 03:55:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 580D2612F;
	Mon, 25 Sep 2023 03:55:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 469AB7F
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 03:55:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E19AC433C7;
	Mon, 25 Sep 2023 03:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695614100;
	bh=sFDUVTld+wLrRGA8kSPjstZBYcXz1u/THaVhZN78kJQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LDqqQthfBeA2tOZ/hhVddpYxYijZQx7fJLdwhIfnhDZbf10yM28ufwW/bx84cBGCw
	 BlPwFOGH8IO8OU5CPAYOcTvIpPbb9UgaYdvoB5uojGHJmYK3T07JwKCoIISPRxAyIf
	 J8dC1MTZs9ow966Zr45iJGLjpDOTK0kLdp1++J83uGOd5Asz/Y+UPqa19/++AnBFVz
	 E6f/nndGqHyy3D9pwr47h7hW4VNPNjaE3i4KfzqEUIJRoVuBnhFrVSa4SbPMu3puA3
	 1XNNVUnQJXcU3fe2IPsI5xMern8H3lvolp4lyfc9lyDaKM+D1/JZrXwWo73Ux/izeR
	 HhNVLxwB8zUEg==
Date: Mon, 25 Sep 2023 11:54:45 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: James Hilliard <james.hilliard1@gmail.com>
Cc: devicetree@vger.kernel.org,
	Pierluigi Passaro <pierluigi.p@variscite.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Conor Dooley <conor.dooley@microchip.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, Marek Vasut <marex@denx.de>,
	Tim Harvey <tharvey@gateworks.com>,
	Stefan Wahren <stefan.wahren@chargebyte.com>,
	Michal =?utf-8?B?Vm9rw6HEjQ==?= <michal.vokac@ysoft.com>,
	Philippe Schenker <philippe.schenker@toradex.com>,
	Markus Niebel <Markus.Niebel@ew.tq-group.com>,
	Marcel Ziswiler <marcel.ziswiler@toradex.com>,
	Christoph Niedermaier <cniedermaier@dh-electronics.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Li Yang <leoyang.li@nxp.com>, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v10 1/3] dt-bindings: arm: fsl: Add VAR-SOM-MX6 SoM with
 Custom Board
Message-ID: <20230925035445.GN7231@dragon>
References: <20230924044800.2199524-1-james.hilliard1@gmail.com>
 <20230925035036.GL7231@dragon>
 <CADvTj4oz6oJ_ifLO83JhaAnjmbLM=hTPmFG4S3h_TBnUeZrC=Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CADvTj4oz6oJ_ifLO83JhaAnjmbLM=hTPmFG4S3h_TBnUeZrC=Q@mail.gmail.com>

On Sun, Sep 24, 2023 at 09:52:59PM -0600, James Hilliard wrote:
> On Sun, Sep 24, 2023 at 9:50 PM Shawn Guo <shawnguo@kernel.org> wrote:
> >
> > On Sat, Sep 23, 2023 at 10:47:55PM -0600, James Hilliard wrote:
> > > Add support for Variscite i.MX6Q VAR-SOM-MX6 SoM with Custom Board.
> > >
> > > Cc: Pierluigi Passaro <pierluigi.p@variscite.com>
> > > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > > Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
> >
> > So what's been changed between v9 and v10?
> 
> I had forgotten to add uart3/pinctrl_uart3 in this patch:
> https://lore.kernel.org/all/20230924044800.2199524-3-james.hilliard1@gmail.com/

Ok, applied v10 instead.

