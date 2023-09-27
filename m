Return-Path: <devicetree+bounces-3925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C69997B0832
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 17:27:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 7F4DD281603
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 15:27:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8045A450C8;
	Wed, 27 Sep 2023 15:27:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70AD36FA2
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 15:27:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7EDCCC433C8;
	Wed, 27 Sep 2023 15:27:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695828439;
	bh=RUPpmHbb4kJSl2c/HLftS0eFYan82W2JMeZx9U6odFM=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
	b=m2uFvcH/Sh7Py6hPDqCl2ffQkF+wpMQrL3cz00UjOU+0iKN/p4fNZIC2Y55QwFQHV
	 zkfHk7a2B5jDM8lwiD9pw+X9tFd/AX8qZOHDj53UJZV+4pIzucP8wfGGkjiH43QaX5
	 2WSgIk0bAQDEkHMOE8J/xKMz8jI5nBBU7Ipz37yvJEPlQNwfcLQG1eXJXrevm8eZL6
	 B6r00VOqDYFG/4PcVC7wWrKnUm+PWTY1bYnW42OxnCDS5TBCNEEQkoa8ZRcibqEstF
	 jOtkcmdYkRIfR9OYa3mwTY4NylxErIjUzKvAHLe4QkSodXP/HOwKm4uJ9X6UtzDWLc
	 4V+TSgiYhW+jA==
Message-ID: <c16e9f00a14f232b2408ddcb5f8e6f1b.mripard@kernel.org>
Date: Wed, 27 Sep 2023 07:20:30 +0000
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


Thanks!
Maxime

