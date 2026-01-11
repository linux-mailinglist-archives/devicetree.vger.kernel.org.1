Return-Path: <devicetree+bounces-253544-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 110F5D0E874
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 10:57:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DCDFC30090B8
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 09:57:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0645E316902;
	Sun, 11 Jan 2026 09:57:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nryXIcz/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D12D723ABBE;
	Sun, 11 Jan 2026 09:57:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768125451; cv=none; b=Y/iQkFDVL2MJsDeCtNW3I04DQqSNcCatQJa62FaFhAPQvlzbCOesTdXOXL4qrPRB97o21CfrDbG13Ido/mPLC2gmwW4Reb2+W0sV2peCxe0sClGug75C5vsB5NaU5Eo+Ih+iEFwIFro7YNziUTjkTHSSv64xIinVSttD0Qq16do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768125451; c=relaxed/simple;
	bh=LcuRu7QBMVQ2NhCxvzk3SrGkmWCbJuuznLmrWMirm6U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SDccel8+PKl2Jn83tmzm8uMB1tUlOc/g3YidWlnB8iojc5DSlOphBby38ubUAokjcOAVKF39uBPJ6ZPqnsVXM1bSUnkpt5yPxHgxdVSnZj9QaQ4IkLmh+Dxmw2ia25Uy9ppXIXghTULDXOteR2dRWGDpfds9xoW/4KgbOBe46xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nryXIcz/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAC93C4CEF7;
	Sun, 11 Jan 2026 09:57:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768125451;
	bh=LcuRu7QBMVQ2NhCxvzk3SrGkmWCbJuuznLmrWMirm6U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nryXIcz/zs/Ou0XiVWVTj9+U+2Owemv+Bs1AENv376qAXdoh5hMBCvQESHkzASTU2
	 FNEdvOjZs1Figt8SpVT0Jk38x6fE40lym6uH0Czcw/13+/nOt2z0FVPrAGOSqiCvrn
	 Y3v7XVNX0XnhcxTpSmBaJOlVV7gP6V5TeaWdz1JfmGcO/EAevCrQPs4JdtqAribTWR
	 aBVQn0tzVvAzUkH8APmUYZF9zZZSQOrC5koXRdXNoOfsCyBOqDtanyLldhIt2KP3I2
	 D3FwaVFgpeVnEVj8HjGB2nUEyhQPjSbK47pmWfrnngvfnIMoIcfyFCaEf2QAVZUjLV
	 Exu9gvjg7h1ZA==
Date: Sun, 11 Jan 2026 10:57:28 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: lee@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, matthias.bgg@gmail.com, sjoerd@collabora.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH] dt-bindings: mfd: syscon: Allow syscon compatible for
 mediatek,mt7981-topmisc
Message-ID: <20260111-screeching-bullmastiff-of-resistance-ae7db9@quoll>
References: <20260109114356.36454-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260109114356.36454-1-angelogioacchino.delregno@collabora.com>

On Fri, Jan 09, 2026 at 12:43:56PM +0100, AngeloGioacchino Del Regno wrote:
> Commit a95419ff9f21 ("dt-bindings: mfd: syscon: Add mt7981-topmisc")
> added the mediatek,mt7981-topmisc compatible to the `select` block
> which is used only for compatibility with older dtschema, but did
> not add it in the actual block allowing to specify the "syscon"
> fallback compatible, which is required for such node to do anything
> meaningful in the end.
> 
> Add the mediatek,mt7981-topmisc compatible in the right list to
> allow specifing compatible = "mediatek,mt7981-topmisc", "syscon"
> in the relevant devicetree node.
> 
> Fixes: a95419ff9f21 ("dt-bindings: mfd: syscon: Add mt7981-topmisc")

I don't think original work was tested anyhow on DTS because it should
report unmatched device nodes...

Thanks for fixing this.


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


