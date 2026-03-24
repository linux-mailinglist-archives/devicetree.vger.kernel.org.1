Return-Path: <devicetree+bounces-279683-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2HiEOWNZwmnQbwQAu9opvQ
	(envelope-from <devicetree+bounces-279683-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 10:29:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E03305962
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 10:29:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0DA48317D3E2
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 09:18:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD491389118;
	Tue, 24 Mar 2026 09:18:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aIZLB5RD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5949363C49;
	Tue, 24 Mar 2026 09:18:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774343923; cv=none; b=dAbTXZr0P9ZTcowOjDH3k72UWtV33oemQ5jTE6Uya0Mb1OISw0AFNwO9tZNzafAK0M1rbTKqB0YHXaVCw7vcqRL22EqjrdO0gH8cZAWPs3Nn294olIUZK6WCPdRwfQ0QVDAUkZ3pqUnsZl745NpyXdvsKSr972tvRONuJdXVWyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774343923; c=relaxed/simple;
	bh=fTToTCeqKsTMNulzFcYvH6PKgjLpHenJDrE6QA1hWQU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bMQc4sVa5F/Pt930ekpO8fpbLN+FuuoNE8ElNyJ58nlZ9AdjBI434cAVqtAXBUkVYf0HvMCf4wpjNQe3g+2ypoI4LydgnH00tYoHmGukLbYWM1bMQQS0beQlwB8gjRtzHYLdL4hEizLgvzUDbmwAcBm5jGvipWZcEJL7ueJKX/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aIZLB5RD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8945C19424;
	Tue, 24 Mar 2026 09:18:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774343922;
	bh=fTToTCeqKsTMNulzFcYvH6PKgjLpHenJDrE6QA1hWQU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aIZLB5RD1I4Qk4hu2XjXbcURmOnU3oCku+n5RK3oL7lYxipe8yDa8E1ijlm4oobNM
	 snnfFJO7TOTEKuqMMcJ8MBjQLjaklfhWSNN8RrGcHo9S7bwHodCI7DxQIODvY2YzTd
	 mL1MM8Zyunkp5+ijM0Moy9M59hq1Z22nb5h0FUC7WsC+Ext/NhFh3A2lSGlpoFuXQd
	 L+BKCsrnoJP43Sue6txCkucm/IhOXlf5CNSGmkebXF5MO2yL+iRxPpblG1n9340JqQ
	 UcDqC5WzlkJ1OVHbIKV0zXigNydsO4Wi2TwT37sB21ePdY6KEiPtZOrZPAKybncVA4
	 F+Cl1Tyr5uKZQ==
Date: Tue, 24 Mar 2026 10:18:40 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: nick.hawkins@hpe.com
Cc: Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jean-Marie Verdun <verdun@hpe.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] arm64: Kconfig: Add ARCH_HPE_GSC platform
Message-ID: <20260324-bright-tuna-from-uranus-ce0dd5@quoll>
References: <20260323194223.683487-1-nick.hawkins@hpe.com>
 <20260323194223.683487-3-nick.hawkins@hpe.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260323194223.683487-3-nick.hawkins@hpe.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-279683-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 54E03305962
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 23, 2026 at 02:42:22PM -0500, nick.hawkins@hpe.com wrote:
> From: Nick Hawkins <nick.hawkins@hpe.com>
> 
> Add the ARCH_HPE menuconfig group and ARCH_HPE_GSC config for the
> HPE GSC ARM64 BMC SoC.
> 
> Signed-off-by: Nick Hawkins <nick.hawkins@hpe.com>
> ---
>  arch/arm64/Kconfig.platforms | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
> index 54eb1d7fd419..4bbc27bb9b7b 100644
> --- a/arch/arm64/Kconfig.platforms
> +++ b/arch/arm64/Kconfig.platforms
> @@ -168,6 +168,29 @@ config ARCH_HISI
>  	help
>  	  This enables support for Hisilicon ARMv8 SoC family
>  
> +

No need for multiple blank lines.

> +menuconfig ARCH_HPE
> +	bool "HPE SoC Support"
> +	help
> +	  This enables support for HPE ARM-based SoC chips used
> +	  on HPE servers.  HPE SoCs serve as the Baseboard
> +	  Management Controller (BMC) providing out-of-band server
> +	  management.
> +
> +if ARCH_HPE
> +
> +config ARCH_HPE_GSC

Sorry, you don't get multiple ARCHs per vendor. Look at this file at
other entries to see how it should be created.

Best regards,
Krzysztof


