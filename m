Return-Path: <devicetree+bounces-8882-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 412537CA6A3
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 13:22:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6E4241C208BE
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 11:22:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 015DA23757;
	Mon, 16 Oct 2023 11:22:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QkJcaZmb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D759414283
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 11:22:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F070AC433C9;
	Mon, 16 Oct 2023 11:22:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697455347;
	bh=ttoJu22J3ZNoep78K/TkZ2dS7zV+ZRCWVhQETFFVyrg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QkJcaZmbFHlpred0dmnDL/LT+uT0GZqUUXDZOhhDrQ7s5wSmSkxTo4dSYYcfi56bF
	 LHn5weAhYPOxV54sCMpgDJYeP3EkKii+zIRmoJavMIt0KL4NxgrQitqygaKF9XSqtO
	 7YS5s9LF74bIZSsaXTY/EWJjjxavcXKzIFnG6AO7yYxlazOZRx3/cME0+5Fc/IBi4X
	 uSlzddMlptIIC0nE00l/sZ5xOL5vr7DXiSao6ij6f6gahVzI4cXK9yilKRPdF/7NPi
	 /DgNid/jRFxpF+LL53c9HLYv3MG1jxBo8Wki15y96JtwcLq5NOe0ULt/VmzmpJzZwQ
	 +sTs+3ETa9g8A==
Date: Mon, 16 Oct 2023 16:52:22 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Mohan Kumar D <mkumard@nvidia.com>
Cc: "robh+dt@kernel.org" <robh+dt@kernel.org>,
	"thierry.reding@gmail.com" <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Laxman Dewangan <ldewangan@nvidia.com>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
	"linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH V1 0/2] Support dma channel mask
Message-ID: <ZS0c7tvLLfkQhC+u@matsya>
References: <20231009063509.2269-1-mkumard@nvidia.com>
 <ZS0Z2G64rjrQTobg@matsya>
 <DM6PR12MB4435D21F738FF9CA2662D79EC1D7A@DM6PR12MB4435.namprd12.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DM6PR12MB4435D21F738FF9CA2662D79EC1D7A@DM6PR12MB4435.namprd12.prod.outlook.com>

On 16-10-23, 11:14, Mohan Kumar D wrote:
> Sure, will send rebased patch soon.
> 

Please **do ** not ** top post! and use a Linux friendly MUA to send
replies!

> -----Original Message-----
> From: Vinod Koul <vkoul@kernel.org> 
> Sent: Monday, October 16, 2023 4:39 PM
> To: Mohan Kumar D <mkumard@nvidia.com>
> Cc: robh+dt@kernel.org; thierry.reding@gmail.com; Jonathan Hunter <jonathanh@nvidia.com>; Laxman Dewangan <ldewangan@nvidia.com>; krzysztof.kozlowski+dt@linaro.org; dmaengine@vger.kernel.org; linux-tegra@vger.kernel.org; devicetree@vger.kernel.org
> Subject: Re: [PATCH V1 0/2] Support dma channel mask
> 
> External email: Use caution opening links or attachments
> 
> 
> On 09-10-23, 12:05, Mohan Kumar wrote:
> > To reserve the dma channel using dma-channel-mask property for Tegra 
> > platforms.
> >
> > Mohan Kumar (2):
> >   dt-bindings: dma: Add dma-channel-mask to nvidia,tegra210-adma
> >   dmaengine: tegra210-adma: Support dma-channel-mask property
> 
> This fails to apply for me, pls rebase
> 
> --
> ~Vinod

-- 
~Vinod

