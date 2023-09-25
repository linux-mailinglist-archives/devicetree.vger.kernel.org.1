Return-Path: <devicetree+bounces-2927-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 559EE7ACEB9
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 05:34:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id BAFD8B208A3
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 03:34:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A99D568D;
	Mon, 25 Sep 2023 03:34:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E647F
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 03:34:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2605C433C7;
	Mon, 25 Sep 2023 03:33:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695612840;
	bh=U53U9H5MRNk5Ao2xW1Myg5M29nlgRmanL1dz8BY/Pvg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kwUil0biMAXdvV4HZfgrBoLk0cyZlneRMrldd+hCdrz2dOEa81WFgyLsxxPIvNrz2
	 SJw9dv7wY6xJx/UB6sVbqcBGjrlH+pQ9HyfdzojiI6KGd22QkroU00z41HzyrDK4gg
	 EINMWWyAEr8pY6pBrmGasWVPtwNBJi/2xjqLZ2tb/T9ZrLThe8Ar72lzEdCAg1QDzy
	 Js/GE4B2DtBcj5owiWxSqOUP88csbF6BnCJXisPzfCFFXbwTDiYAX4iMaZmErTnq4S
	 KaBLSEr+B92RH8eHJfMkVTha79YS4RhxHKYEXWMS7pwLlTJuMRxyyQ+NNebE18Ilro
	 SU1EuXgGs7mOw==
Date: Mon, 25 Sep 2023 11:33:44 +0800
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
Message-ID: <20230925033344.GH7231@dragon>
References: <20230921055611.1459374-1-james.hilliard1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230921055611.1459374-1-james.hilliard1@gmail.com>

On Wed, Sep 20, 2023 at 11:56:06PM -0600, James Hilliard wrote:
> Add support for Variscite i.MX6Q VAR-SOM-MX6 SoM with Custom Board.
> 
> Cc: Pierluigi Passaro <pierluigi.p@variscite.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: James Hilliard <james.hilliard1@gmail.com>

Applied all, thanks!

