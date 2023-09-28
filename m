Return-Path: <devicetree+bounces-4389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A0A7B254C
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 20:32:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 881F81C20BE6
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 18:32:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C6E215BF;
	Thu, 28 Sep 2023 18:32:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29132523F
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 18:32:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 522B0C433C7;
	Thu, 28 Sep 2023 18:32:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695925934;
	bh=JCe7blWVCnsLe70OwN/f81hGjMC1UJQ2rXeecgnmwzs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YhJS0frvyLcMcO5ihEp2dgsrmmkIfNmL/P36g3iMjXQowr0ubha3wu2dHXdDPA2rE
	 ZA1qZFZNSJEAgaASGYSqtAClTsnzS/fyCF2tUDMwNtnF6iWJt7RlA6mJH0xpj5JkKR
	 NVedECdLU98YaFvx8vM2uyNVvWWbWL+cbHtFp48YA1bfcVFLZ+pLu3TMMnzS2r+35d
	 mn8SRbolpQC6fVFLO06KMrfGtzTaYpLbwKAah/JXTPY0iYlePaK4RxDYpJHmPUPkNG
	 CiSLJFchpQ7TuVTbZkM/4Gd9+vg1w88ztbZR1DYp3nogOwM7dk8VVL/eWiQTvA5e4s
	 9zif/GWp/lqfw==
Received: (nullmailer pid 1030969 invoked by uid 1000);
	Thu, 28 Sep 2023 18:32:12 -0000
Date: Thu, 28 Sep 2023 13:32:12 -0500
From: Rob Herring <robh@kernel.org>
To: Fabrizio Castro <fabrizio.castro.jz@renesas.com>
Cc: linux-renesas-soc@vger.kernel.org, Chris Paterson <Chris.Paterson2@renesas.com>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, devicetree@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, linux-spi@vger.kernel.org, Mark Brown <broonie@kernel.org>, Biju Das <biju.das@bp.renesas.com>, linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>
Subject: Re: [PATCH v2 1/2] spi: renesas,rzv2m-csi: Add CSI (SPI) target
 related property
Message-ID: <169592593187.1030914.2646161997489930237.robh@kernel.org>
References: <20230927162508.328736-1-fabrizio.castro.jz@renesas.com>
 <20230927162508.328736-2-fabrizio.castro.jz@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230927162508.328736-2-fabrizio.castro.jz@renesas.com>


On Wed, 27 Sep 2023 17:25:07 +0100, Fabrizio Castro wrote:
> The CSI IP found inside the Renesas RZ/V2M SoC can also work
> in SPI target mode.
> When working in target mode, the IP will make use of the SS
> (Slave Selection) pin, with "low" as default active level.
> The active level of SS can be changed to "high" upon setting
> property "spi-cs-high" to true.
> By default, the SS will be used in target mode, unless property
> "renesas,csi-no-ss" is set to true, in which case data will be
> shifted in and out purely based on clock activity, and the
> logic level of the SS pin will be completely ignored.
> 
> Signed-off-by: Fabrizio Castro <fabrizio.castro.jz@renesas.com>
> ---
> v1->v2: I have dropped properties renesas,csi-ss and
>         renesas,csi-ss-high. I have added property
> 	renesas,csi-no-ss, and to configure SS as active
> 	high one now needs to use property spi-cs-high.
> 	I have also reworded the changelog to use a more
> 	modern terminology (host and target as opposed to
> 	master and slave).
> 
>  .../devicetree/bindings/spi/renesas,rzv2m-csi.yaml       | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


