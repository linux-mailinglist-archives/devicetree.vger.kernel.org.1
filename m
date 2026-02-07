Return-Path: <devicetree+bounces-263587-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oGkOEI4ah2nBTQQAu9opvQ
	(envelope-from <devicetree+bounces-263587-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 11:57:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D8F105AF0
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 11:57:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4D54B301B72B
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 10:57:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3B3633F8AE;
	Sat,  7 Feb 2026 10:57:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AMV5Llga"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1C2033F377
	for <devicetree@vger.kernel.org>; Sat,  7 Feb 2026 10:57:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770461820; cv=none; b=Jw4suwBDNNNsC0kuoTaUKY9w1dhz7/2aOSkCPcrMT90Y9S8UpflZcG8t+5x0i2ptIl1uY91U9KxDfSOv/HBUl0EVb24ShEBCYJDWS+zvN3Syj7oXGcQ/79fGZjLCQCYwQNWfgm5ucFD0rbYg9bD+g7gRqU15qScz73HP1XXZz5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770461820; c=relaxed/simple;
	bh=+VDliI/cY6I4r+Ow/eR2sRandUCPfhX+/ZeELt5FbP8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W0YXNOls6iqQMFcH4TgnJrVW2RpoaRcALF/9CIOy5o5r2AdEY9g59DnpWOXDXk2EPRQXl/ILxjnUiKzwHtZdm2YeGwi+f9HjxTAAPpmbiaeupAQnsFFSUpPuD6fJaIQ0lDbIu9c194nwqcBcZx4I81+nXHAFtC828BdF0sgiJ0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AMV5Llga; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F3CACC116D0;
	Sat,  7 Feb 2026 10:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770461820;
	bh=+VDliI/cY6I4r+Ow/eR2sRandUCPfhX+/ZeELt5FbP8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AMV5LlgaUeEXVAZ/UTb1gTQECRj+2kqsC/W3f5GQmf8/ipLot8cw1zhnvn4XcdH1b
	 GXPX9gHpKxYdS4ULJlGD3oHF9bnEmH2GvbGS4U+qBwZpvUVDCCJqVHh9qQL8+ornx4
	 gKg/zv09gZaRbQIEOPTt86kLudsNwRgoA0P+YDsCqI9JevV7Vbz9c9tqn1pYn7SBZh
	 RClzeAgPtqw9F3xDaD+6uK9XArWzEH3C+T5hNWluv9tPNM0IZUVYYkTsFLWHXOR4pR
	 7dGb09WxMMqymO168CBsKfR8b3k6+uo5U7watZdLFgLImXMC5RG3+kSqTOeqoNYLo3
	 FmIv+pHVP0KGQ==
Date: Sat, 7 Feb 2026 11:56:58 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, Fabio Estevam <festevam@nabladev.com>
Subject: Re: [PATCH 10/11] dt-bindings: arm: rockchip: Add Onion RV1103B
 Omega4
Message-ID: <20260207-quixotic-ochre-tiger-b1760f@quoll>
References: <20260206181309.2696095-1-festevam@gmail.com>
 <20260206181309.2696095-11-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260206181309.2696095-11-festevam@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263587-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.983];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nabladev.com:email]
X-Rspamd-Queue-Id: 93D8F105AF0
X-Rspamd-Action: no action

On Fri, Feb 06, 2026 at 03:13:08PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@nabladev.com>
> 
> Onion Omega4 board is a board based on the RV1103B SoC.
> 
> Signed-off-by: Fabio Estevam <festevam@nabladev.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index ae77ded9fe47..40c6f7f90755 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -793,6 +793,11 @@ properties:
>                - lunzn,fastrhino-r68s
>            - const: rockchip,rk3568
>  
> +      - description: Onion RV1103B Omega4 board

What's with the sorting? Why is this between L and M?

Best regards,
Krzysztof


