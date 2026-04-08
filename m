Return-Path: <devicetree+bounces-285612-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ICmLF0IJ1mnbAQgAu9opvQ
	(envelope-from <devicetree+bounces-285612-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 09:52:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id F38C73B894C
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 09:52:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2993D3003817
	for <lists+devicetree@lfdr.de>; Wed,  8 Apr 2026 07:52:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FCC9396D17;
	Wed,  8 Apr 2026 07:52:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ih4NSeC2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD27396B6B;
	Wed,  8 Apr 2026 07:52:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775634750; cv=none; b=kZk5U53rqbymRcG9KIvEbwBrwfbUMWaqFYll3Qjx2HZZZLJ+1b0rzYhQ9oAZBrNLPJds3GpMzeOP6k8nQUsIA8uy3hF7/cuz5r2c281TaFkQfPUrKzZBcVBQvwz+A+0s+qULfw3nrxXG0r6oH1KgX3FykZHFEzOuiLso0pHzaE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775634750; c=relaxed/simple;
	bh=xNY9tEvKoYhfTQH3M8/Q4r7s7A/d71rffbc/9uF1Xa8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OTtZb/YiABC4EvZ/sN73VTMUfl8kT9S4LgsJBSooS3BETtqMkR/+WI7g8YiT+qDFBCntSjULzG8PhBWYhFaueNXv2kBIftkafSFdaB0DDDgF79Ap+QBGhBbXPrejhY8WbJtaIo/tWxcduN1R+qYmW9T293BqwvQbw3XpfszAvko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ih4NSeC2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52CDBC19424;
	Wed,  8 Apr 2026 07:52:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775634749;
	bh=xNY9tEvKoYhfTQH3M8/Q4r7s7A/d71rffbc/9uF1Xa8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ih4NSeC2UtjrjEgv+qhj7RtI0dtNt/8E6c+4i94k1Sj4TamaIc7W7ZxK5Nm3QtmCC
	 Vd760WYlfNXMixdwpwsP9oZDAvw006FAcAu3INDBMcTNgYdsHgQizXVaxgh+9qQrDi
	 aEOoCclvi3jirOCzCYmkZ4X/4BZG7dPnqnX2ySRZSg3/gT+sH+q6ZQgHd/0VtTlVwS
	 H4dkYCWlUU8f9MFq91Kxjd18brVjj1jF81dUN5DG2ePwLMEu/HVqu+5IlOSSFpbBjW
	 aBNIQQthwmBjWJCTX63DLrRjrLEsatuBMFYVSJ6yGjFIvHfG9DgQMXmEwBfm8Y7xtw
	 LxCvoacfK38aQ==
Date: Wed, 8 Apr 2026 09:52:27 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Colin Huang <u8813345@gmail.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@codeconstruct.com.au>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, colin.huang2@amd.com
Subject: Re: [PATCH 2/3] ARM: dts: aspeed: anacapa: add EVT1 devicetree and
 point wrapper to it
Message-ID: <20260408-glorious-vehement-robin-b6def3@quoll>
References: <20260407-anacapa-devlop-phase-devicetree-v1-0-97b96367cac3@gmail.com>
 <20260407-anacapa-devlop-phase-devicetree-v1-2-97b96367cac3@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260407-anacapa-devlop-phase-devicetree-v1-2-97b96367cac3@gmail.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-285612-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: F38C73B894C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Apr 07, 2026 at 09:54:33PM +0800, Colin Huang wrote:
> This change introduces a development-phase devicetree for the
> Facebook Anacapa BMC EVT1 hardware revision and updates the Anacapa
> wrapper DTS to reference it.
> 
> A dedicated EVT1 DTS is added for revision-specific hardware while
> keeping a single, Anacapa entrypoint used by the build and deployment
> flow. The top-level aspeed-bmc-facebook-anacapa.dts
> 
> Signed-off-by: Colin Huang <u8813345@gmail.com>
> ---
>  .../aspeed/aspeed-bmc-facebook-anacapa-evt1.dts    | 1069 ++++++++++++++++++++
>  .../dts/aspeed/aspeed-bmc-facebook-anacapa.dts     | 1064 +------------------
>  2 files changed, 1070 insertions(+), 1063 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa-evt1.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa-evt1.dts
> new file mode 100644
> index 000000000000..a29b7fa1155b
> --- /dev/null
> +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa-evt1.dts
> @@ -0,0 +1,1069 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +
> +/dts-v1/;
> +#include "aspeed-g6.dtsi"
> +#include <dt-bindings/gpio/aspeed-gpio.h>
> +#include <dt-bindings/i2c/i2c.h>
> +
> +/ {
> +	model = "Facebook Anacapa BMC";
> +	compatible = "facebook,anacapa-bmc-evt1",
> +		     "facebook,anacapa-bmc",
> +		     "aspeed,ast2600";

Test your DTS before you send, not after. Your binding clearly said
something else.


Best regards,
Krzysztof


