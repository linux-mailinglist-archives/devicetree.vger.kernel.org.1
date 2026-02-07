Return-Path: <devicetree+bounces-263574-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YCkWGqwXh2nBTQQAu9opvQ
	(envelope-from <devicetree+bounces-263574-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 11:45:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EE42F1059AE
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 11:44:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5EE9130065D1
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 10:44:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C81933E352;
	Sat,  7 Feb 2026 10:44:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bCAsms6q"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0757733E34C;
	Sat,  7 Feb 2026 10:44:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770461096; cv=none; b=VGcBuX16j+zFYWNRY6ncMrWkC6SIgelSlABnvTOBh3WbhCCk2sjDBpm3Gc4qTRVMo91srRBTefKCvaABWhsgrVyJYXWonTMSSSUSTcdv1F9+uV38hhnrZBr1ynHhYmYSVdKopwJnFkuosJ5e9N2cQvEVjZJogX5gkRSmExmi+Jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770461096; c=relaxed/simple;
	bh=6cOaTZGKJjrtSSk0AAQbqk7GenswhEuaH5sr7s77y6Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IK6n1BYWehP5KSjPbQhm0Bb8sxQr+SGsgkVbOSv587PTgdv5dJFFYb5JYr/91jPwO5jOlInjNJW/0IMh+wajz9P1mlWCV4qvIXLOCoY8QiYklcKRk88nwoWa3Nn3TjCQLEls7z+MJzIz1jUXm726Ymz4yzgU4tIeOV4PkCBY0/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bCAsms6q; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D5C2C116D0;
	Sat,  7 Feb 2026 10:44:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770461095;
	bh=6cOaTZGKJjrtSSk0AAQbqk7GenswhEuaH5sr7s77y6Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bCAsms6qe4d8dsRcI0XEJTEdlTwUIODywaGcNWHhhXswGBg2t4kpZueVw435itkC5
	 St6uzRaFBL80zgOA+Oi98GpVM7AE63/exTP6/9RbB4tyqVFyPSYaN9i4cqwuNYDr4O
	 hWh21vTDQABVd50Pd1DZD3Rfx4ai7h9XCe3HZh/Ph28MnB1qLQOyRq8mXXhLuO9OjG
	 Eag2X8Bko51+ya53MFzjBIP8EUgNJXh8+jsnsGhhYRw3YPPMjouHx97pRRjgjaDBb3
	 enl6qHr+7ymZch0IBCkMLETJruQ5HmV2MySi8Z7aXfwbXY4u88kp4Ws8LZ+aUx+i8U
	 CNA7oeQtWcaoQ==
Date: Sat, 7 Feb 2026 11:44:53 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Judith Mendez <jm@ti.com>
Cc: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Santosh Shilimkar <ssantosh@kernel.org>, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Andrew Davis <afd@ti.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: hwinfo: ti,k3-socinfo: Add
 nvmem-cells support
Message-ID: <20260207-armored-diligent-grasshopper-b58d3f@quoll>
References: <20260206191914.52878-1-jm@ti.com>
 <20260206191914.52878-2-jm@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260206191914.52878-2-jm@ti.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263574-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: EE42F1059AE
X-Rspamd-Action: no action

On Fri, Feb 06, 2026 at 01:19:13PM -0600, Judith Mendez wrote:
> Add optional nvmem-cells and nvmem-cell-names properties to support
> reading silicon revision information from alternate location using
> NVMEM providers. This is used on AM62P to read GP_SW1 register for
> accurate silicon revision detection.
> 
> Signed-off-by: Judith Mendez <jm@ti.com>
> ---
> Changes since v1:
> - no change
> ---
>  .../devicetree/bindings/hwinfo/ti,k3-socinfo.yaml    | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/hwinfo/ti,k3-socinfo.yaml b/Documentation/devicetree/bindings/hwinfo/ti,k3-socinfo.yaml
> index dada28b47ea07..58cc937e13351 100644
> --- a/Documentation/devicetree/bindings/hwinfo/ti,k3-socinfo.yaml
> +++ b/Documentation/devicetree/bindings/hwinfo/ti,k3-socinfo.yaml
> @@ -15,6 +15,9 @@ description: |
>    represented by CTRLMMR_xxx_JTAGID register which contains information about
>    SoC id and revision.
>  
> +  On some SoCs like AM62P, the silicon revision is determined by reading
> +  alternative registers via NVMEM cells.
> +
>  properties:
>    $nodename:
>      pattern: "^chipid@[0-9a-f]+$"
> @@ -26,6 +29,15 @@ properties:
>    reg:
>      maxItems: 1
>  
> +  nvmem-cells:
> +    maxItems: 1
> +    description:
> +      Reference to NVMEM node containing revision information.

Intead items with description. And drop 'Reference to NVMEM node
containing', redundant. Just say what NVMEM it is supposed to be.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


