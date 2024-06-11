Return-Path: <devicetree+bounces-74643-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C120A903DD9
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 15:45:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 690261F24A98
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 13:45:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AA0117CA1F;
	Tue, 11 Jun 2024 13:44:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eFlICVcj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E960A17C215
	for <devicetree@vger.kernel.org>; Tue, 11 Jun 2024 13:44:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718113499; cv=none; b=cs1K5olII7KM+ky/vEP3gXYIo+JXzVG6GYBxuNH5/DTNVNqRhgEiRRiYqAG7MIfYqBh+NbRFNv6bbUtwou61v4B48wWcEs1jQE7GxN/Ag0kj95F0rxsJx2BEpUlCNmFPVrwQOuHgDkduqWFKTEf8Ow3hJeBW3weOs8ciidBfGzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718113499; c=relaxed/simple;
	bh=+V3Oa1gsFlcJcKL3fpyUbpzxEIi5YIU50iTixRyZAtM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Fvyw71ULs6mOCw4s4AZLNRfxyMDmG2fdUCsDPiUMk0JdX4Frp8pJjsi16+ici8Fqyb6wQUe6oaPV5N2tiqtGmkC23H/hG4fdoM2dO1QbRB7hsUbIKp2Bbu+WcFmfUUC7HwGJLE51TUsegND1ODVCi83NxclJW+/xrvwqX0SF/nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eFlICVcj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E358C2BD10;
	Tue, 11 Jun 2024 13:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718113498;
	bh=+V3Oa1gsFlcJcKL3fpyUbpzxEIi5YIU50iTixRyZAtM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eFlICVcjHAwyBKduydyPkxT4CpHSZ+dfBULdoCplkcSnuf+ml+ggJawCs8fek9aOt
	 aP64sr/6p+FnR3hq7lV3H0b5AWCleIQuI27OHCdnuhU/WxNufUcNc6b3ir6i5fHmr1
	 SB2qvXLzonZYkyViAz+TDmktKT9C9BpObvrhKdpHCzqkhDCbboVLOd8PHhcAiUie1E
	 fspJ4KbEhyKtC6Npd5obmLQwBvzxmQJ5O7d9iV3HnkPHSbPRLMDzKDln1LBvXhTDCv
	 TrEA49SRrIn2BTp+mchPCityLVy1yPyYPxlzwejmLi3CvF/EyrUNK5cdB4JbUnYzpf
	 d0fMLQiCoQ1/Q==
Date: Tue, 11 Jun 2024 07:44:57 -0600
From: Rob Herring <robh@kernel.org>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
	Lala Lin <lala.lin@mediatek.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	=?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH V2 1/2] dt-bindings: nvmem: mediatek: efuse: add support
 for MT7981
Message-ID: <20240611134457.GA1796783-robh@kernel.org>
References: <20240514015154.11206-1-zajec5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240514015154.11206-1-zajec5@gmail.com>

On Tue, May 14, 2024 at 03:51:53AM +0200, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Add compatible for MT7981 SoC.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
> V2: Use new compatible instead of MT7986's one
> 
>  Documentation/devicetree/bindings/nvmem/mediatek,efuse.yaml | 1 +
>  1 file changed, 1 insertion(+)

Looks like this was missed, so I've applied it.

Rob

