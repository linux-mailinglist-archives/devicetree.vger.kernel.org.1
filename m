Return-Path: <devicetree+bounces-269532-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GDMFD6PNomll5gQAu9opvQ
	(envelope-from <devicetree+bounces-269532-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 12:12:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B1A1C2820
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 12:12:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0CC61301E5F5
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 11:12:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 086BC4279E3;
	Sat, 28 Feb 2026 11:12:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K1u6+7PA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA7A72749C1
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 11:12:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772277151; cv=none; b=F0HLiMFxYfN3aSQnGD/qQp67fRSjJilSEeqVIaUhnoO9gRWt+E/OJLq8TIJJ+MwPlWCPzHlv6xWGQNMZY7wsGQjoFKQm0QZviXuQB0IKNXRrG+VlD9KSOpK7a21zET06tDCfhiWD8KoVUYsDtFD74Xyxc1wVAM/H1nE0a96mPzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772277151; c=relaxed/simple;
	bh=nLRrxszpvSY+0yk4jSIM9YoyXBlAYxZf7vJPBm1s4bY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QIeAJI5OYwIhfz7/CwFX9RocvzNZchN9e9bO6+9h+kvG9tIWgouvyOjCoq8hIRaPwvzaxDosRZ0UFgZZwhPEh47tEuFXZq8FP1Zv7YQ6P9PX9N8UqIe6A+XGkPtNbB78PMpaXMxTt70SODIZ9hmwQZ1vzPXWc/FxPrWKHndu6nE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K1u6+7PA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A9BBC116D0;
	Sat, 28 Feb 2026 11:12:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772277151;
	bh=nLRrxszpvSY+0yk4jSIM9YoyXBlAYxZf7vJPBm1s4bY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=K1u6+7PA5r3BlisSxInQ3ULtJgGGhUBovE8u72FEpNFmvWh+t2+BqOCqaBX+w0Kjm
	 6zQpvvQN44xIARcwKgdX9KhXiLp+b4tCa4eMeJLTSqsf8nriHVepoYqczdP2RHXsVD
	 X8EZVojDZAqJdMGPKk1HrAgcizYCY3aB4UIykfF7RfCGwJkatCMuG4b0F6bTebppoq
	 a9OMdqFWud4K6E3GCb6Mp5sqnVaYB39P2DJRmB9tZQa0U3DdGpIFoK5+mm+XiSM/0T
	 9kHucfsye4QxE0l110lOJZRbMBJUrY75WM6NSi1sAxloU/y8fF1t+NpuSC3XAB6qYA
	 Cfflj1fPN/+3A==
Date: Sat, 28 Feb 2026 12:12:29 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Linus Walleij <linusw@kernel.org>
Cc: Hans Ulli Kroll <ulli.kroll@googlemail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 7/8] ARM: dts: Add a Raidsonic IB-4210-B DTS
Message-ID: <20260228-magnificent-swine-of-jest-03cfbd@quoll>
References: <20260228-gemini-dts-fixes-v1-0-0c6f6d0fb4bd@kernel.org>
 <20260228-gemini-dts-fixes-v1-7-0c6f6d0fb4bd@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260228-gemini-dts-fixes-v1-7-0c6f6d0fb4bd@kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[googlemail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-269532-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: D3B1A1C2820
X-Rspamd-Action: no action

On Sat, Feb 28, 2026 at 01:05:47AM +0100, Linus Walleij wrote:
> This adds a device tree for the Raidsonic IB-4210-B NAS, a slightly
> under-powered version of IB-4220-B with half the memory and
> the cheaper version of the SoC.
> 
> Signed-off-by: Linus Walleij <linusw@kernel.org>
> ---
>  arch/arm/boot/dts/gemini/Makefile            |   1 +
>  arch/arm/boot/dts/gemini/gemini-nas4210b.dts | 205 +++++++++++++++++++++++++++
>  2 files changed, 206 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/gemini/Makefile b/arch/arm/boot/dts/gemini/Makefile
> index d5d32f02e232..4722fb1bac49 100644
> --- a/arch/arm/boot/dts/gemini/Makefile
> +++ b/arch/arm/boot/dts/gemini/Makefile
> @@ -2,6 +2,7 @@
>  dtb-$(CONFIG_ARCH_GEMINI) += \
>  	gemini-dlink-dir-685.dtb \
>  	gemini-dlink-dns-313.dtb \
> +	gemini-nas4210b.dtb \
>  	gemini-nas4220b.dtb \
>  	gemini-ns2502.dtb \
>  	gemini-rut1xx.dtb \
> diff --git a/arch/arm/boot/dts/gemini/gemini-nas4210b.dts b/arch/arm/boot/dts/gemini/gemini-nas4210b.dts
> new file mode 100644
> index 000000000000..8bec57c8b7b1
> --- /dev/null
> +++ b/arch/arm/boot/dts/gemini/gemini-nas4210b.dts
> @@ -0,0 +1,205 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Device Tree file for the Gemini-based Raidsonic NAS IB-4210-B
> + * Based on the NAS Forum experiments by user "CptSpock".
> + */
> +
> +/dts-v1/;
> +
> +#include "gemini.dtsi"
> +#include <dt-bindings/input/input.h>
> +
> +/ {
> +	model = "Raidsonic NAS IB-4210-B";
> +	compatible = "raidsonic,ib-4210-b", "cortina,gemini";

So here it is - that's a new compatible, not missing one.

Best regards,
Krzysztof


