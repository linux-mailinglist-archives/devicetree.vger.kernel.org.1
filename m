Return-Path: <devicetree+bounces-2931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 177947ACEC6
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 05:50:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id BE6211F24186
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 03:50:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E3985697;
	Mon, 25 Sep 2023 03:50:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2767F
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 03:50:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B34BC433C8;
	Mon, 25 Sep 2023 03:50:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695613851;
	bh=J/H0pLYhyv22dSDz3MeuygaLpn1BS27NWVxMjjew6ys=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=c4bXhVwMKmV5V7cfWmNzM5V9xuDJCkXl0jqK+7FUH4zv+Maq9DbrcjOH0L7uzgB1M
	 F8oBku4cgtUltxXM84MikcwJ0+ZOXjcAIYAQWSiJ2uO6biAn5oIZ9H9m6ET+Hjd84j
	 Gc4sscyFDfP8vTcaYPuzRq3G23JoBDay2+130/LDNV+mUTwq3F7k2YmWchF+d7dwrP
	 kO1M8IdxD5VlWm8wE1ymvV/VJ2CqKswFwg4TSd+uSZZMc8OGGYJIFlnhQoQpVDQxyw
	 uFrBhCVBg6/nlzavXbyyYLlENzkS5HaAkm5+/PDmsQ7ZkDDJ5jUZjkf1xZp3znFZ9k
	 jQcllAU1BSobQ==
Date: Mon, 25 Sep 2023 11:50:36 +0800
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
Message-ID: <20230925035036.GL7231@dragon>
References: <20230924044800.2199524-1-james.hilliard1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230924044800.2199524-1-james.hilliard1@gmail.com>

On Sat, Sep 23, 2023 at 10:47:55PM -0600, James Hilliard wrote:
> Add support for Variscite i.MX6Q VAR-SOM-MX6 SoM with Custom Board.
> 
> Cc: Pierluigi Passaro <pierluigi.p@variscite.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: James Hilliard <james.hilliard1@gmail.com>

So what's been changed between v9 and v10?

Shawn

