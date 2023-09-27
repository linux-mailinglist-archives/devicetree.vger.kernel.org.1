Return-Path: <devicetree+bounces-3926-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 442E07B0833
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 17:27:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 71D671C20934
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 15:27:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07EA8450CA;
	Wed, 27 Sep 2023 15:27:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC8E86FA2
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 15:27:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42FC5C433C7;
	Wed, 27 Sep 2023 15:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695828441;
	bh=psoTQr8mGkV3UKidOz+pQ205UAHWxAMSfHwgV7szlp0=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
	b=s1bKn/hrxcB+5VItQe5OsoMYGoU/S0bzhLZqIPWY+8oyIVylxEls9DGhiSFV4C8K6
	 MK25VHKQVGHZ8ANAV9qxiSEG5H9eMprCeTwJr85mwX2/hHBtZLzTUAcggEqF2RLG5G
	 zBvQMGtJ9wFMVIeY+9dxWzAfSQRWVIbriGPHz2mP+ANXqID0mQzUxVLyL8PrcGQdf+
	 +XjihmnzS9FZ2n2xDaIwjHebV5sHP1u9fxOBbMGpp0ZPvDKHDBeCrGHfDyc1t+KG7g
	 Y/CSQIpivWbIzkBq3Nq3JWVY6WSI+ubjCS+20T2K614XJydh5D9dWT/v8ckf49KuR4
	 q0q5iCi+E6tSg==
Message-ID: <d919baedaa11a1d6a710edce20826c82.mripard@kernel.org>
Date: Wed, 27 Sep 2023 07:20:34 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Miquel Raynal" <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v2 00/17] Prevent NAND chip unevaluated properties
In-Reply-To: <20230606175246.190465-1-miquel.raynal@bootlin.com>
References: <20230606175246.190465-1-miquel.raynal@bootlin.com>
Cc: devicetree@vger.kernel.org, linux-mtd@lists.infradead.org, "Alexandre
 Torgue" <alexandre.torgue@foss.st.com>, "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>, "Brian
 Norris" <computersforpeace@gmail.com>, "Chen-Yu Tsai" <wens@csie.org>, "Chris
 Packham" <Chris.Packham@alliedtelesis.co.nz>, "Christophe Kerello" <christophe.kerello@foss.st.com>, "Heiko
 Stuebner" <heiko@sntech.de>, "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Kamal
 Dasu" <kdasu.kdev@gmail.com>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Liang
 Yang" <liang.yang@amlogic.com>, "Manivannan Sadhasivam" <mani@kernel.org>, "Masahiro
 Yamada" <yamada.masahiro@socionext.com>, "Matthias Brugger" <matthias.bgg@gmail.com>, "Maxime
 Coquelin" <mcoquelin.stm32@gmail.com>, "Maxime Ripard" <mripard@kernel.org>, "Michael
 Walle" <michael@walle.cc>, "Paul Cercueil" <paul@crapouillou.net>, "Pratyush
 Yadav" <pratyush@kernel.org>, "Richard Weinberger" <richard@nod.at>, "Rob
 Herring" <robh+dt@kernel.org>, "Samuel Holland" <samuel@sholland.org>, "Thomas
 Petazzoni" <thomas.petazzoni@bootlin.com>, "Tudor Ambarus" <tudor.ambarus@linaro.org>, "Vadivel
 Murugan" <vadivel.muruganx.ramuthevar@linux.intel.com>, "Vignesh
 Raghavendra" <vigneshr@ti.com>, "Xiangsheng Hou" <xiangsheng.hou@mediatek.com>
Content-Transfer-Encoding: 7bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

On Tue, 6 Jun 2023 19:52:29 +0200, Miquel Raynal wrote:
> As discussed with Krzysztof and Chris, it seems like each NAND
> controller binding should actually restrain the properties allowed in
> the NAND chip node with its own "unevaluatedProperties: false". This
> only works if we reference a yaml schema which contains all the possible
> properties *in the NAND chip node*. Indeed, the NAND controller yaml
> 
> [ ... ]

Acked-by: Maxime Ripard <mripard@kernel.org>
Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

