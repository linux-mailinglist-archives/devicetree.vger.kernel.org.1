Return-Path: <devicetree+bounces-8880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 968A77CA647
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 13:09:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 23ED3281661
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 11:09:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 913A5210EB;
	Mon, 16 Oct 2023 11:09:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jdzZjzvP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FBA822EFC
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 11:09:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B25DC433CA;
	Mon, 16 Oct 2023 11:09:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697454556;
	bh=5zJCucxKJiJFREdw+9vbsSiIgkqJAENia9ICetGpmRs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jdzZjzvPDHkpl8zWlRdXVe75detixZmuTQ/WKblr04pVx7gO6RXZd910mFx9yhbVy
	 8z6DegMckHefAnMVz/Oku2GBpfOXHjDTGV8WukTbi5US6hDivMFL1Aw55aaVqDTVil
	 l1ZweBBT7IPT7xGqzWsAYehrjBiTQdKqEjtKeQrEtTO8jDvWCFNJamw0x/ocGuxjUc
	 ecOXtS8S6tq8m8TXsOykXzc+oGl8PWKjUeNJjODIS9gXZfiAvxwbpjpPCnHCsSoPCx
	 4d6F9hm/DcXbhbIk0SztDzlz6P5I6LE57eZ5qwjk2tCSgl8LHlMfGQXeKm/ZqVpxoI
	 x+fQ6exGQmivA==
Date: Mon, 16 Oct 2023 16:39:12 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Mohan Kumar <mkumard@nvidia.com>
Cc: robh+dt@kernel.org, thierry.reding@gmail.com, jonathanh@nvidia.com,
	ldewangan@nvidia.com, krzysztof.kozlowski+dt@linaro.org,
	dmaengine@vger.kernel.org, linux-tegra@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH V1 0/2] Support dma channel mask
Message-ID: <ZS0Z2G64rjrQTobg@matsya>
References: <20231009063509.2269-1-mkumard@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231009063509.2269-1-mkumard@nvidia.com>

On 09-10-23, 12:05, Mohan Kumar wrote:
> To reserve the dma channel using dma-channel-mask property
> for Tegra platforms.
> 
> Mohan Kumar (2):
>   dt-bindings: dma: Add dma-channel-mask to nvidia,tegra210-adma
>   dmaengine: tegra210-adma: Support dma-channel-mask property

This fails to apply for me, pls rebase

-- 
~Vinod

