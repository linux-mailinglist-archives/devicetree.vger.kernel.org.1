Return-Path: <devicetree+bounces-12380-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9756A7D9298
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 10:48:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 168D4B2143E
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 08:48:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8292D154A8;
	Fri, 27 Oct 2023 08:48:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cw6P7ESB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 648A68BE7
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 08:48:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF81CC433C8;
	Fri, 27 Oct 2023 08:48:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698396519;
	bh=4gPPdGhCdto05ss4qpu9JQl8aMvFhWkapoLbjn9yjFM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Cw6P7ESBsWvrI2g6iDkWkkzYUNZPgbq5ZxX8nw8f6MSZwR3BYvQNsU9BH9s4vplDc
	 BUyx2GM1yP+dkttjCo+3GyT2FEaOu1l4LAPHCM90jAlcpJmQSBXomYMA79V+IK5cCK
	 hwdpMkDbzpuzhLW/qcHjyX+7sh7gdwDFbnOAPN+2o+K02FLVCpSDklX6dZWrVA0h2x
	 grMEVhFRBva0GkpNUAwuMSjJiGG7RHFqfA0EHTNhwGdwWz5u6Cw1EFgHx2HmUgEuel
	 oUrJ5BVd+JOkOWjuUZGheIQVCdBsxTL1G0gv9k/d7UlQU73cBENmAneh9q/q8n/TS0
	 Rn8O2iqGh3duA==
Date: Fri, 27 Oct 2023 10:48:35 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Chris Packham <chris.packham@alliedtelesis.co.nz>
Cc: gregory.clement@bootlin.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 2/2] i2c: mv64xxx: add an optional bus-reset-gpios
 property
Message-ID: <20231027084835.yjfphaecm6h4kore@zenone.zhora.eu>
References: <20231027033104.1348921-1-chris.packham@alliedtelesis.co.nz>
 <20231027033104.1348921-3-chris.packham@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231027033104.1348921-3-chris.packham@alliedtelesis.co.nz>

Hi Chris,

On Fri, Oct 27, 2023 at 04:31:04PM +1300, Chris Packham wrote:
> Some hardware designs have a GPIO used to control the reset of all the
> devices on and I2C bus. It's not possible for every child node to
> declare a reset-gpios property as only the first device probed would be
> able to successfully request it (the others will get -EBUSY). Represent
> this kind of hardware design by associating the bus-reset-gpios with the
> parent I2C bus. The reset line will be released prior to the child I2C
> devices being probed.
> 
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> ---
> 
> Notes:
>     Changes in v5:
>     - Rename reset-gpios and reset-duration-us to bus-reset-gpios and
>       bus-reset-duration-us as requested by Wolfram

for such change you could have kept my r-b:

Reviewed-by: Andi Shyti <andi.shyti@kernel.org>

Andi

