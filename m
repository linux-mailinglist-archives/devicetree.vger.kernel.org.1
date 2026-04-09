Return-Path: <devicetree+bounces-285995-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AC6TAvBY12lqMwgAu9opvQ
	(envelope-from <devicetree+bounces-285995-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 09:44:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5933C3C7324
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 09:44:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ECF9030131C4
	for <lists+devicetree@lfdr.de>; Thu,  9 Apr 2026 07:30:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74A9934D3A5;
	Thu,  9 Apr 2026 07:30:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ubxdOzey"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5231B1448E0
	for <devicetree@vger.kernel.org>; Thu,  9 Apr 2026 07:30:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775719825; cv=none; b=mQQJts1ob4rLhkauVbC6iqKrbaplsCVquAiCUtXLRsz4+GjNRvUxTxlOe9M1dr3w+kUXU7CbhBUjSbrubux5vBEqp06Z/L2D4vKzCGTfUsJaFpn5ocq7poUUfsve+g03e9uEjMbLnoRZcjR4hN3u7+ZQgE+0tra+lohY5dWyylo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775719825; c=relaxed/simple;
	bh=vwghWor8OZe17SmQaOpkWmuy9YBmg+3I3XnkIV/bOig=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XgbEtum0VkM0JIYhNqh2YzMLhzJq7wd3NlJWY8BcdKCqZp317OfrWKryAnkRVhP4IjAp3HinGnEWE7dZoo9N2Ho9cHmHhPm6/70dmDC7vCXH3lRXP/zdu4djC+Iv5DebxfbngD/PSpMWfecv7skuRJQ8OQTKowUhmAnAjiu9Nsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ubxdOzey; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4827EC4CEF7;
	Thu,  9 Apr 2026 07:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775719824;
	bh=vwghWor8OZe17SmQaOpkWmuy9YBmg+3I3XnkIV/bOig=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ubxdOzeyBTj+xJL5QphQ13nGFi9Y7uZlWAPeqOQVhIbTssTm5eLVRQfZGM0zCNBP2
	 CuRqfybrbijyPd2NCt9JaXYmSRYiI+ObSkFP89QOPazz6ZKGRlwC2BRRg2LiIaUaUZ
	 vArBk2OpZRCUFWnWxD69y3CShwa7If0gChD47f9b59ibWotr1kowXE7gOoXaP96ymj
	 54R8bO/ZzzCjyDS9y8Rz+ge2M0HXiDnncQGdtibon+vRkHEb4oU3l/o8DpRgUrUWHc
	 D8dbVIw99xyu5lXojtVjYkysEKG+/bjMk4o1ND4HSjv200ODdMIcbC6ixGTeiVhdRs
	 2NXKxf8/6xyoA==
Date: Thu, 9 Apr 2026 09:30:22 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Dawid Glazik <dawid.glazik@linux.intel.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
	Andrew Jeffery <andrew@codeconstruct.com.au>, linux-aspeed@lists.ozlabs.org, linux-i3c@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Frank Li <Frank.Li@nxp.com>, Maciej Lawniczak <maciej.lawniczak@intel.com>, 
	Jeremy Kerr <jk@codeconstruct.com.au>
Subject: Re: [PATCH v3 2/3] ARM: dts: aspeed-g6: Add nodes for i3c controllers
Message-ID: <20260409-massive-natural-crayfish-c1cf2f@quoll>
References: <cover.1775679285.git.dawid.glazik@linux.intel.com>
 <51c4bdc02b45f67a0e32610a228091e137c135a6.1775679285.git.dawid.glazik@linux.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <51c4bdc02b45f67a0e32610a228091e137c135a6.1775679285.git.dawid.glazik@linux.intel.com>
X-Spamd-Result: default: False [5.34 / 15.00];
	SEM_URIBL(3.50)[0.0.0.0:email];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.15)[generic];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-285995-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	GREYLIST(0.00)[pass,body];
	RCPT_COUNT_TWELVE(0.00)[14];
	R_DKIM_ALLOW(0.00)[kernel.org:s=k20201202];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_SPF_ALLOW(0.00)[+ip4:172.234.253.10:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	NEURAL_SPAM(0.00)[0.988];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[codeconstruct.com.au:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree-specification.readthedocs.io:url,0.0.0.0:email,intel.com:email,1e7a0000:email,0.0.3.32:email]
X-Rspamd-Queue-Id: 5933C3C7324
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 08, 2026 at 10:34:34PM +0200, Dawid Glazik wrote:
> Add the i3c controller devices to the ast2600 g6 common dts. We add all
> 6 busses to the common g6 definition, but leave disabled through the
> status property, to be enabled per-platform.
> 
> Originally-by: Jeremy Kerr <jk@codeconstruct.com.au>

Don't invent tags. This is not used outside of TIP.

> Signed-off-by: Dawid Glazik <dawid.glazik@linux.intel.com>
> ---
> v3:
>  - add i3c aliases
>  - rebase on top of latest tree and solve conflicts
>  - as agreed with Jeremy off-list, he said I can take authorship of this going forward
> v2:
>  - use inline bus representation, without the i3c: label
> ---
>  arch/arm/boot/dts/aspeed/aspeed-g6.dtsi | 97 +++++++++++++++++++++++++
>  1 file changed, 97 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi b/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi
> index f5641128614f..f986fcbed604 100644
> --- a/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi
> +++ b/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi
> @@ -29,6 +29,12 @@ aliases {
>  		i2c13 = &i2c13;
>  		i2c14 = &i2c14;
>  		i2c15 = &i2c15;
> +		i3c0 = &i3c0;
> +		i3c1 = &i3c1;
> +		i3c2 = &i3c2;
> +		i3c3 = &i3c3;
> +		i3c4 = &i3c4;
> +		i3c5 = &i3c5;

Bus aliases are not properties of SoC DTSI.

>  		serial0 = &uart1;
>  		serial1 = &uart2;
>  		serial2 = &uart3;
> @@ -1066,6 +1072,97 @@ i2c15: i2c@800 {
>  				};
>  			};
>  
> +			bus@1e7a0000 {
> +				compatible = "simple-bus";
> +				#address-cells = <1>;
> +				#size-cells = <1>;
> +				ranges = <0 0x1e7a0000 0x8000>;
> +
> +				i3c_global: i3c-global@0 {

Node names should be generic. See also an explanation and list of
examples (not exhaustive) in DT specification:
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation
If you cannot find a name matching your device, please check in kernel
sources for similar cases or you can grow the spec (via pull request to
DT spec repo).

Best regards,
Krzysztof


