Return-Path: <devicetree+bounces-7390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 81DF47C04BB
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 21:36:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ABF221C20CCC
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 19:36:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D9C332197;
	Tue, 10 Oct 2023 19:36:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LYGlVfKg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F6B332188
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 19:36:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58C8DC433C8;
	Tue, 10 Oct 2023 19:36:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696966603;
	bh=cZkzPPFC3wMzzRvvFIDetx465/S9zd2QKLoizRzR0gI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LYGlVfKg4sSSZjfl2XDMA6KCVaRbQF/bXgrzY8OcHIvKxtXq0Pfw73bxJUGhWtc6e
	 17dTUdIS7RnQy0sCqfZGGQYS5Y/vC2T967KmNtzcgmCHDwe0+BY9K7y5FTWjjc4ek2
	 yU7dtRz6CmPWaHLcyYnVu7wA6Qa9dSaWUNrnxqAMfxWdYLcZPx0ukMqx9hSI3NiGMZ
	 5l0dwTKvv59Yt3MdWjVextK9jf4dqBfu4SSJHO5KeS/brR6ijvhs3lNscCBOd0o8cE
	 kUB9LYxgW2yLb1r07biJ25GjEtFloOyG4qhLSR0t3B2IeVx5QXQDSH0uq0n5gFCwTu
	 Uq1i24pvfu9Ig==
Received: (nullmailer pid 1423129 invoked by uid 1000);
	Tue, 10 Oct 2023 19:36:40 -0000
Date: Tue, 10 Oct 2023 14:36:40 -0500
From: Rob Herring <robh@kernel.org>
To: Mehdi Djait <mehdi.djait@bootlin.com>
Cc: ezequiel@vanguardiasur.com.ar, robh+dt@kernel.org, heiko@sntech.de, linux-media@vger.kernel.org, thomas.petazzoni@bootlin.com, alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org, mchehab@kernel.org, conor+dt@kernel.org, hverkuil-cisco@xs4all.nl, maxime.chevallier@bootlin.com, paul.kocialkowski@bootlin.com
Subject: Re: [PATCH v7 1/3] media: dt-bindings: media: add bindings for
 Rockchip VIP
Message-ID: <169696659993.1423074.9501474541283864884.robh@kernel.org>
References: <cover.1696943295.git.mehdi.djait@bootlin.com>
 <a103d2e4e2c80a97a62574a782eba29f78731471.1696943295.git.mehdi.djait@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a103d2e4e2c80a97a62574a782eba29f78731471.1696943295.git.mehdi.djait@bootlin.com>


On Tue, 10 Oct 2023 15:15:04 +0200, Mehdi Djait wrote:
> Add a documentation for the Rockchip Video Input Processor
> binding.
> 
> The PX30 SoC is the only platform supported so far.
> 
> Signed-off-by: Mehdi Djait <mehdi.djait@bootlin.com>
> ---
>  .../bindings/media/rockchip,px30-vip.yaml     | 93 +++++++++++++++++++
>  1 file changed, 93 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/rockchip,px30-vip.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>


