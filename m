Return-Path: <devicetree+bounces-107445-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 771F098EB4C
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 10:17:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3CB9E280E26
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 08:17:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 337E3136E21;
	Thu,  3 Oct 2024 08:17:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dxNA0pgO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C5BF10A1E;
	Thu,  3 Oct 2024 08:17:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727943427; cv=none; b=jFfUbnv/WVRhB/bZKlaQoz3qnnr47fqpMhK3Zn2O5DRAIgaTDBdHCsfvR5xyDMxpfyE8OM52sVpVuJ9KDuqejd/TDxsDQkgclb0CPts6a9h9KnsSYjGwwd/1XgHxr4KvYRfMBzuRBXTcK/ii9mRtLOmdcZUvkQdp4dxtIqkbBRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727943427; c=relaxed/simple;
	bh=OuqlnscLjuWAlMQHupr3CnALdnTmuNagISzh0YOHOpY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ubOjKGOC76Le3ezWwDqQaX1jEIh/4KEypluc44aQr+rrkkowv6BgSUxGYKzCoC86QfNuZmBogxs1CQVbDspv2VnJasRMbjVevNzVyOsbwBEV+CmZMRnDbep12Tr/FodVTZC+jztyHR1snhqs8ERh/2i3FQ7Px+tIpxUng6IHz0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dxNA0pgO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9366C4CEC7;
	Thu,  3 Oct 2024 08:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727943426;
	bh=OuqlnscLjuWAlMQHupr3CnALdnTmuNagISzh0YOHOpY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dxNA0pgOKjYSQN+blz559cd2HYR9DmGaugCOmGrgtvVKc+Dyxt8WKCVhj51Sk4ioL
	 LL/PJw0hjNXmEgIep1eUn1kcmQBx0s4qnOFYTr2uDJhfm37Pn8Vo8mqLmy70SI1ZZC
	 uLtkWgNf8B2CWfWK1+TnOK4/LEDO3hhEz5MF24yrsRBsF9whXvYuKHCIj7hiLIUrl2
	 wOt7WG+adZkaT+aIvrYm9RQNnDhjhV0VNEAq/MPh+cvjCuuLsRe3WAn01medH8TBID
	 5ANcMVqgy1MtYMaNueUCNb1BX+HlaIT1ib4VHUFpJx4W/UUi7HWuCfTsozIK8A4JR/
	 OQhnuFyx+FSzg==
Date: Thu, 3 Oct 2024 10:17:02 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Naresh Solanki <naresh.solanki@9elements.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@codeconstruct.com.au>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: aspeed: add IBM SBP1 board
Message-ID: <xuczpa6nrxjwo7hjn62ehblnzc5twupghbg4uuwp5vfczw3gmg@x23yhbxjccpy>
References: <20241002084023.467383-1-naresh.solanki@9elements.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241002084023.467383-1-naresh.solanki@9elements.com>

On Wed, Oct 02, 2024 at 02:10:17PM +0530, Naresh Solanki wrote:
> Document the new compatibles used on IBM SBP1.
> 
> Signed-off-by: Naresh Solanki <naresh.solanki@9elements.com>
> ---
>  Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
> index 95113df178cc..8c04d6eaec08 100644
> --- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
> +++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
> @@ -89,6 +89,7 @@ properties:
>                - ibm,everest-bmc
>                - ibm,rainier-bmc
>                - ibm,system1-bmc
> +              - ibm,sbp1-bmc

Keep alphabetical order.

Best regards,
Krzysztof


