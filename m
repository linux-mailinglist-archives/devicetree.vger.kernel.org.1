Return-Path: <devicetree+bounces-2930-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A98EA7ACEC4
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 05:48:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id B41461C2042F
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 03:48:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2382F5695;
	Mon, 25 Sep 2023 03:48:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FDEB7F
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 03:48:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5967C433C7;
	Mon, 25 Sep 2023 03:48:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695613690;
	bh=N9YN8yvWUu5bJE449R+s7OWZGf1tjMvTC1VKVEF1vxk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bWdBYL4Gb+HynMG9dcAzIuguWZbw0DFNPnEn86GHAxUjC9GAJdJ+zVE6Ghc26R24k
	 3tCq/Eecw1zt52xsRtgjOUSjOY7t3JBnvF1BRSzjpcVgmAlWUp+/DCdIiEjsdN1hAp
	 TA85c6sGouCEViVIMVEZWXKiovnW50EnQ/206MIQn+R3E0WnqmZhTlLLZzVClud7E9
	 /rSoIXDlpQDZeBFNWCvrOEllwBpCA/aMslZI9HMaSodUgS+oSD8pYzKhswMzq5nbfb
	 6sPF4OyUVzmC1k5YghJYB2sZfxHdm8FqxpqZEVO1SAJ6rDaOuMZbixqeLmO89pZ8fi
	 BFMjmvfjnu7CA==
Date: Mon, 25 Sep 2023 11:47:55 +0800
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
	Marco Felsch <m.felsch@pengutronix.de>,
	Christoph Niedermaier <cniedermaier@dh-electronics.com>,
	Markus Niebel <Markus.Niebel@ew.tq-group.com>,
	Marcel Ziswiler <marcel.ziswiler@toradex.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Philippe Schenker <philippe.schenker@toradex.com>,
	Li Yang <leoyang.li@nxp.com>, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v9 1/3] dt-bindings: arm: fsl: Add VAR-SOM-MX6 SoM with
 Custom Board
Message-ID: <20230925034755.GK7231@dragon>
References: <20230921055611.1459374-1-james.hilliard1@gmail.com>
 <20230925033344.GH7231@dragon>
 <CADvTj4qWHzjvp6BYarHWF2R=gRqD6WdLt4EhbEx93nu3up6=kA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CADvTj4qWHzjvp6BYarHWF2R=gRqD6WdLt4EhbEx93nu3up6=kA@mail.gmail.com>

On Sun, Sep 24, 2023 at 09:40:55PM -0600, James Hilliard wrote:
> On Sun, Sep 24, 2023 at 9:34 PM Shawn Guo <shawnguo@kernel.org> wrote:
> >
> > On Wed, Sep 20, 2023 at 11:56:06PM -0600, James Hilliard wrote:
> > > Add support for Variscite i.MX6Q VAR-SOM-MX6 SoM with Custom Board.
> > >
> > > Cc: Pierluigi Passaro <pierluigi.p@variscite.com>
> > > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > > Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
> >
> > Applied all, thanks!
> 
> Just verifying, you applied my v10 and not my v9 right?
> https://lore.kernel.org/all/20230924044800.2199524-1-james.hilliard1@gmail.com/

Oh, I will replace with v10.  Two suggestions for the future posting:

- For version that has no further review comments and just gets
  deprecated by yourself, please reply to let maintainer know.

- Have a change log telling what's been changed for each new version.

Shawn

