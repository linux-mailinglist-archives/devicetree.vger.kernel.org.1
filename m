Return-Path: <devicetree+bounces-7331-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 504507C0179
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 18:21:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 646C71C20B56
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 16:21:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 537121DFF7;
	Tue, 10 Oct 2023 16:21:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KWg1QYQT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DA22745F
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 16:21:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C60CAC433C7;
	Tue, 10 Oct 2023 16:21:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696954868;
	bh=AbYACsFpW/kkxdoM2rLrN81FheyXlXCz2ZwahMt1rDA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KWg1QYQTVuWLt7aWSi0f4bHdpASD1VwnZQgoXsIphm7L+veLhRXR/F2N5OZPGPmJ4
	 4w4SNb5TU1uCBownhL/bkX6LEbbRWhHe8gjJXCEm3zxQhBCoTgvjdLhHTGVFxlNHC3
	 j+UWh2TpmROCZQBGczKNlHqO86kkKCexwWK6ZDlo74mJplU+h2HJNvOZdiUp931wAa
	 2TR+qoK54KT/eeB6bbPhcDsc5jFjNVURMsaRAXundJNJ+hfo1gM/dHusqqU8y6KSvv
	 KE2CeuE8yLBkkhnQkgjajC0zms25DOGvZEdBi+EiG3OAHHFbdhXijAI+Og4NyGt4Jk
	 PZKe1ft5Lu5tA==
Received: (nullmailer pid 1005366 invoked by uid 1000);
	Tue, 10 Oct 2023 16:21:06 -0000
Date: Tue, 10 Oct 2023 11:21:06 -0500
From: Rob Herring <robh@kernel.org>
To: Mohan Kumar <mkumard@nvidia.com>
Cc: jonathanh@nvidia.com, robh+dt@kernel.org, dmaengine@vger.kernel.org, thierry.reding@gmail.com, devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org, linux-tegra@vger.kernel.org, vkoul@kernel.org, ldewangan@nvidia.com
Subject: Re: [PATCH V1 1/2] dt-bindings: dma: Add dma-channel-mask to
 nvidia,tegra210-adma
Message-ID: <169695486646.1005310.17540883158492688989.robh@kernel.org>
References: <20231009063509.2269-1-mkumard@nvidia.com>
 <20231009063509.2269-2-mkumard@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231009063509.2269-2-mkumard@nvidia.com>


On Mon, 09 Oct 2023 12:05:08 +0530, Mohan Kumar wrote:
> - Add dma-channel-mask binding doc support to nvidia,tegra210-adma
> to reserve the adma channel usage
> 
> Signed-off-by: Mohan Kumar <mkumard@nvidia.com>
> ---
>  .../devicetree/bindings/dma/nvidia,tegra210-adma.yaml          | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


