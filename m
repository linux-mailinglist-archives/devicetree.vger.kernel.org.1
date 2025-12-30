Return-Path: <devicetree+bounces-250488-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 579B5CE9958
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 12:55:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 283B33019BE3
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 11:55:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EF262D839F;
	Tue, 30 Dec 2025 11:55:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MvzcZHuE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39CFF1DE3B5
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 11:55:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767095739; cv=none; b=WBb0kGBWsOduwJNa6DHuXFatiGNNfle04owQ1IS9RLUOb9eBlPjJ7ooBVhH8YTALDITl7Q8+6eacfnhrlAOMkKhGZFrHVzHUgTEYJYwgQz29cPYJ+/LQw1DZw2NXg7OG+ine4AzCiS64pacppAnfQ78mEoURgDqDmdFIj8zftYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767095739; c=relaxed/simple;
	bh=HRcSv2qdpKwIIHUD5ufz2WS298wT4pGgLk/F6OB+u8o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WAFMuz5FrnjZbd4uEecO7yOieADhugZ2A5PMd33f8gaj5x7uUu+zUOgVLI4hgv/om5OQhUTZGf0MZLkZx55fMx5NXshQCca+T7IkFGKM6zfbuHahDNH9RecthXjEysts3eF+gqRWhKbIriwjqvPIN7FqCELBikoOuwkgoL1emMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MvzcZHuE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52800C4CEFB;
	Tue, 30 Dec 2025 11:55:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767095738;
	bh=HRcSv2qdpKwIIHUD5ufz2WS298wT4pGgLk/F6OB+u8o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MvzcZHuEq3H8wq9fuO8kXox5/OdVGxPwyoGGj5O6+7LVUHE4rybzuD9C+jFMNhZIh
	 GGG5mJJ/ErhO9Fn2UV7F9AUY/UpW+Vz1MiruafVC9+Tp+eMoP5PrQOKymZerlpVwJI
	 XsJkZeGQaB/AwbH1DHbKr/FI+QQQvv6jo4WISoxgBF8d/CGsBX01tC+31ELRS2lI9N
	 +Mgp4WnL4Y/4myQ94jcPFqcgG1JHDSd/4WumvuLV0Kox2pQHt6JaE/reDiPQps+VTS
	 BK9jr2JK05fGYALSt/VnW1d6uLZpGq7vrJMiM0vCRdH5ZGT0NDjto3jsrelO3+aOJn
	 swLOpgWcsEVaQ==
Date: Tue, 30 Dec 2025 12:55:35 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Dinh Nguyen <dinguyen@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH 2/5] dt-bindings: altera: document syscon as fallback for
 sys-mgr
Message-ID: <20251230-sparkling-cicada-of-pride-1bfcd6@quoll>
References: <20251228221846.863904-1-dinguyen@kernel.org>
 <20251228221846.863904-2-dinguyen@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251228221846.863904-2-dinguyen@kernel.org>

On Sun, Dec 28, 2025 at 04:18:43PM -0600, Dinh Nguyen wrote:
> For 32-bit Altera SoCFPGA parts, the sys-mgr uses the syscon mfd as a

There is no mfd, so just syscon.


> fallback.
> 
> This change addresses this warning from dtbs_check:
> 
> sysmgr@ffd08000 (altr,sys-mgr): compatible: 'oneOf' conditional failed, one
> must be fixed:
> 	['altr,sys-mgr', 'syscon'] is too long
> 	'altr,sys-mgr-s10' was expected
> 	'altr,sys-mgr' was expected
> from schema $id: http://devicetree.org/schemas/soc/altera/altr,sys-mgr.yaml
> 
> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
> ---
>  .../devicetree/bindings/soc/altera/altr,sys-mgr.yaml        | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/soc/altera/altr,sys-mgr.yaml b/Documentation/devicetree/bindings/soc/altera/altr,sys-mgr.yaml
> index d56ff4c05ae5..2dd3395f3f63 100644
> --- a/Documentation/devicetree/bindings/soc/altera/altr,sys-mgr.yaml
> +++ b/Documentation/devicetree/bindings/soc/altera/altr,sys-mgr.yaml
> @@ -13,7 +13,9 @@ properties:
>    compatible:
>      oneOf:
>        - description: Cyclone5/Arria5/Arria10
> -        const: altr,sys-mgr
> +        items:
> +          - const: altr,sys-mgr
> +          - const: syscon

And s10 does not have fallback, so that's pretty messy. I guess it's
just legacy, but let me state - don't grow such bindings/patterns for
new devices.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


