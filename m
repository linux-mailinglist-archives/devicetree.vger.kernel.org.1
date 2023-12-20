Return-Path: <devicetree+bounces-27484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F77F81A933
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 23:28:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 23F90B20FBF
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 22:28:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 514944A9AB;
	Wed, 20 Dec 2023 22:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNMZ9AzY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F614B144
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 22:27:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1330FC433C8;
	Wed, 20 Dec 2023 22:27:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703111252;
	bh=09LFZ9wZLT9mCWPWV/qxK5umtM14v7DD0caIrMfURGc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hNMZ9AzYyi2cMQDTMeXnUypFNK+n6flnT4m64kwUqhg8J/nVXCyiOH2IcX42AdoHR
	 abWz5xiRK5rLKha8gCWypRLxzaBsje56vhgjbFuD6XOk67ZTNylgHWhA0iPkm/EBIA
	 KHIsO37wtLWEaqTQ7YdGfi95y1mAD/dvjOPnayHfs7efTtRGfJWKhXsjwX/sCygyJW
	 Y0F7ZTREcflbAX44+RbWnqoKdZw02U1HCqd1tnfViyIaUcl/hMS0wDwPOCSTSxl9le
	 XhYqmQJf+9k1LqatCS4a1MpgK0C9uWTtUhKeHuNHk1Artibfj6fYX/FR6bX1BnLa6s
	 BXji2UY1Ki8uQ==
Received: (nullmailer pid 1238181 invoked by uid 1000);
	Wed, 20 Dec 2023 22:27:30 -0000
Date: Wed, 20 Dec 2023 16:27:30 -0600
From: Rob Herring <robh@kernel.org>
To: Stefan Wahren <wahrenst@gmx.net>
Cc: Han Xu <han.xu@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Marek Vasut <marex@denx.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, linux-mtd@lists.infradead.org, linux-arm-kernel@lists.infradead.org, Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>, linux-imx@nxp.com, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, =?iso-8859-1?Q?S=E9bastien?= Szymanski <sebastien.szymanski@armadeus.com>
Subject: Re: [PATCH 1/2] dt-bindings: mtd: partitions: u-boot: Fix typo
Message-ID: <170311124964.1238110.7971021577049808628.robh@kernel.org>
References: <20231218130656.9020-1-wahrenst@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231218130656.9020-1-wahrenst@gmx.net>


On Mon, 18 Dec 2023 14:06:55 +0100, Stefan Wahren wrote:
> The initial description contained a typo.
> 
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> ---
>  Documentation/devicetree/bindings/mtd/partitions/u-boot.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>


