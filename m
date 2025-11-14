Return-Path: <devicetree+bounces-238685-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BA252C5D39F
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 14:04:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0CA023A8FC8
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 13:04:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B737F301030;
	Fri, 14 Nov 2025 13:04:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oMXTuebp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E350243387;
	Fri, 14 Nov 2025 13:04:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763125478; cv=none; b=XTJjoQAdcT1H6LlgafFUtXHU1Ac6+BM9Ip85brDd3jLFe5tuv7/fZyXDgWLhixKrc39KbfsCQu9BBb8P7yfmgdEDEHNxyTj8z9Drjsra2eR2D2CqUDGGC2gLZslCOSKfYHE8uBdJHizsx6IyXfwL7gbbcTa+uFMtpFojcXWIVos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763125478; c=relaxed/simple;
	bh=L7HV/mHolaydD4NDL+N3K1o2cpgwurgQLpi1/U4Ev7I=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=k+luiA5YWiOM48qpmFffmfX4Xe/dIUfWSwM9N55WPBORJFaX2joo0PxyrqG0fUO48EtQod+DGLkoPaakInYJGTFx3SsJ/DpdjhR9ViXVqwVp0Qyyh8az1jb1ydDwR+zuF/GJJMqQhXq6/afEAerXULpF76xdo2P1rIydzMWUGlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oMXTuebp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A8B9C4CEF5;
	Fri, 14 Nov 2025 13:04:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763125478;
	bh=L7HV/mHolaydD4NDL+N3K1o2cpgwurgQLpi1/U4Ev7I=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=oMXTuebp5pj7/XBNP252YrC/tTetnGbqa3sX25AUc/qO/bSNfFxhK3rI2kpXiCixM
	 TlDMrp/U5TeIwnXJ+arUBFy4+MPdbJBu/6/MpKqshk5ONTQRtEGRuJThLtuY2eSLZP
	 CHjqPGL+8PvBZ2Qp7BabeCHVlJZ/WfOU/NGJqxKfoED6+cFVxESJ8iWVv9FljHYV/e
	 tDbJX9q/lWv2AEJlLohAgMiehUQLWmAQPr9NfteZdjDm5kejSIBq0+qND3TLU6Vwbz
	 WQHZFgJO+euvU3YyUpbsJwkG8AOF8lBt/xFR9FJK8y7KKorh1YrcuMPo8rA+Zj8wJI
	 sG9oV2x07/HOA==
Message-ID: <823a7748-165c-4588-b34e-e75ef1a19d32@kernel.org>
Date: Fri, 14 Nov 2025 07:04:36 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/2] Add support for Agilex3 SoCFPGA board
To: niravkumarlaxmidas.rabara@altera.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251114005953.1333288-1-niravkumarlaxmidas.rabara@altera.com>
Content-Language: en-US
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <20251114005953.1333288-1-niravkumarlaxmidas.rabara@altera.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 11/13/25 18:59, niravkumarlaxmidas.rabara@altera.com wrote:
> From: Niravkumar L Rabara <niravkumarlaxmidas.rabara@altera.com>
> 
> Agilex3 SoCFPGA development kit is a low cost and small form factor
> development kit similar to Agilex5 013b board.
> Agilex3 SoCFPGA is derived from Agilex5 SoCFPGA, with the main difference
> being the number of CPU cores — Agilex3 has 2 cores compared to 4 in
> Agilex5.
> 
> https://www.altera.com/products/devkit/a1jui000005pw9bmas/agilex-3-fpga-and-soc-c-series-development-kit
> 
> This series includes:
>   - The addition of the Agilex3 compatible in DT bindings.
>   - The initial board device tree support for the Agilex3 SoCFPGA.
> 
> Note:
> The patch 2 depends on the series: "Add iommu supports"
> https://lore.kernel.org/all/cover.1760486497.git.khairul.anuar.romli@altera.com/
> 
> Patch series "Add iommu supports" is applied to socfpga maintainer's tree
> https://git.kernel.org/pub/scm/linux/kernel/git/dinguyen/linux.git/log/?h=socfpga_dts_for_v6.19
> 

Applied!

Thanks,
Dinh

