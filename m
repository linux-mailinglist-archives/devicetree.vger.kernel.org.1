Return-Path: <devicetree+bounces-100063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A7296C0F9
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 16:42:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DD35EB26171
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 14:42:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC70A1DC078;
	Wed,  4 Sep 2024 14:42:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HLQTKFcz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8CB41DA103
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 14:42:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725460955; cv=none; b=ZnPxSTjmk1cf5dxZ9aHMmSQdaleHrpqm09ltyVdncoosoWhBVCktcz3/OuS3t/2ZmX0NziefFVkPtT/HmZGx3/ZXIp0fGqxAVYuxZXeaKeo6fsfNYbleCQQctHM8xhDUadKcTkK9OVSRgAAbakYdj8xxbwQ7KxelXvk/uOaCzpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725460955; c=relaxed/simple;
	bh=Jo1JvrQ5H5yhfAJevbZq1jgKTsHuKAXsQmXH5r2YKKs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=goJ8wdQ9oJtxCmmf8+cSKZPI5u5Gb56hrBDVVuTMngH1Vb7HLOuitYU/zYqCZKc4SRUJcBteHfAc72DGrZjJy1WXpav0QGmtX+c0oeAT9kXxdU94hGGGHx7Gh3Sz0A3YFD63MxQ1Zua7qlWi4aIY2SpQugc2bFlqVg7x9aWZZBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HLQTKFcz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 256B9C4CEC2;
	Wed,  4 Sep 2024 14:42:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725460955;
	bh=Jo1JvrQ5H5yhfAJevbZq1jgKTsHuKAXsQmXH5r2YKKs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HLQTKFczPA8mIxAwLgXte6IQKfDlmzxC0pR8j4jA8mNT+MmQLLFOMe1f/EEY9WFov
	 s44x4QlmcZ6d3nV1YfyjY9nLvp2Nn1hRI8mHxdwKUMHC0bL/mxqT8THSq//ow8ELX7
	 5zOjlM3/u5y7MLp+dlqaEpfEsLz9HlDeQXHV6u3QkE536/ZRIXOQo3fxdXPXVUfUvY
	 4UWmYY5wWmClHdUXwq+GhrHlvVVEjwVtru21xlS2CI5YveBrYNtiikeN3/jq0BELse
	 0DwbCpPyv3yZUiphdyh0oNCu5YfwcBrN4BpQHD5DLSqQU2PPj2PB8Kbjj4TTSkyTSA
	 4GtqY3RPaSYjg==
Date: Wed, 4 Sep 2024 09:42:34 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: dri-devel@lists.freedesktop.org, marex@denx.de,
	Fabio Estevam <festevam@denx.de>, devicetree@vger.kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	mripard@kernel.org
Subject: Re: [PATCH v2] dt-bindings: lcdif: Document the dmas/dma-names
 properties
Message-ID: <172546095254.2537937.13693682822295899426.robh@kernel.org>
References: <20240904104027.2065621-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240904104027.2065621-1-festevam@gmail.com>


On Wed, 04 Sep 2024 07:40:27 -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> i.MX28 has an RX DMA channel associated with the LCDIF controller.
> 
> Document the 'dmas' and 'dma-names' properties to fix the following
> dt-schema warnings:
> 
> lcdif@80030000: 'dma-names', 'dmas' do not match any of the regexes: 'pinctrl-[0-9]+'
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
> Changes since v1:
> - Add a blank line before the examples. (Krzysztof)
> 
>  .../bindings/display/fsl,lcdif.yaml           | 20 +++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 

Applied, thanks!


