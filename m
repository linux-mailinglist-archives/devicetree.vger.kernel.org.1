Return-Path: <devicetree+bounces-22075-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C8B80656D
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 04:07:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 03378B2111E
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 03:07:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76A8E6FA1;
	Wed,  6 Dec 2023 03:07:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="icKKstdA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9102F5F
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 03:07:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09F74C433C7;
	Wed,  6 Dec 2023 03:07:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701832060;
	bh=KzFHNYbvVUXatV0qr2VvSYFUsObQB8LKS9dx4K95lSE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=icKKstdAybc8fWZA/cu/LUNAiv6itwsRdHvvurA3SEmq1YOCmvw7+idhQogznHTU0
	 QdijDwABiNqk+O9mTpyRYnsrrCxARv5m9593/Xf8Su9HNzvsKcbufxbquDcbtViPFa
	 TAbqHnJaQVKv9qn+TWAadypARb6BHM3Si27rGr6HvNE6gQ4xD+unv1z7a5GJkF99zc
	 Syh9AAcVQqPruDQqR2qPmP6Xw8OPZGpzF02O0ZpCFRdPkCrtdjDXN5U0hp84VkqIXc
	 FthNMGDoMduIyEunBZSvLqq61u0eci3r99girP+mwPYoPAUtlPuneMSggol/LOnWXi
	 YyCApo9SrE7Uw==
Date: Wed, 6 Dec 2023 11:07:35 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, tharvey@gateworks.com,
	Fabio Estevam <festevam@denx.de>, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] arm64: dts: imx8mm-venice-gw7: Adjust PCI Ethernet nodes
Message-ID: <20231206030735.GO236001@dragon>
References: <20231130225242.988336-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231130225242.988336-1-festevam@gmail.com>

On Thu, Nov 30, 2023 at 07:52:42PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> As per Rob Herring's feedback:
> 
> "The ethernet device should have a node name of
> 'ethernet'. The 'pcie' node name and 'device_type = "pci"' is for PCI
> buses/bridges only."
> 
> Do it as suggested.
> 
> Fixes: d61c5068729a ("arm64: dts: imx8mm-venice-gw7: Fix pci sub-nodes")
> Suggested-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!

