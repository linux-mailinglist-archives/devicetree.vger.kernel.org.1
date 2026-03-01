Return-Path: <devicetree+bounces-269694-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wJ1rHYEdpGlkXgUAu9opvQ
	(envelope-from <devicetree+bounces-269694-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 12:05:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A2F1CF404
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 12:05:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1BDDF3005161
	for <lists+devicetree@lfdr.de>; Sun,  1 Mar 2026 11:05:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 308462571D7;
	Sun,  1 Mar 2026 11:05:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="raEMD19u"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DC58430B98;
	Sun,  1 Mar 2026 11:05:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772363130; cv=none; b=dS+B7tQp9agnbCx+3cNACuYflorSKkO28B57S47HDBt36KaMxZtqXzMHD6L4ky6na3KHFj/dIpvHx5Eqn+Uh9Y6YBGszpqOVvrhjUzSEalGhhR3UFVgXcOOn8BsZp6iu3O/qMmPKYRJ0aGyjqCqdDHy//QA3hbt9bdwXd9KFlPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772363130; c=relaxed/simple;
	bh=dRHYs8tlqK30WaAI2PEsd5FwcqUMDjbm1x5fp0ZeaWA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j3wt8Lp9Y3BHOJOmR1L6BEQE5+AxYOgw68S/WlLoI7SasUnw6JOvanWeZCKnhc0wrlUIVa5sfgO6iepUb56UB3ExuO7Obm0cXH+KfmxW56MSTqAFHB4C1vO2B0pKPZt9e/SkZuAR6Xed/OPpmM0fjv/PDzEWG/3cfvJ1xRHk46o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=raEMD19u; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E4A6C116C6;
	Sun,  1 Mar 2026 11:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772363129;
	bh=dRHYs8tlqK30WaAI2PEsd5FwcqUMDjbm1x5fp0ZeaWA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=raEMD19uRgq3nTOzkcuOknlBXE8AmVCOiW/1qwmUJXkMdGktl2SiDeFnma8T4bQmM
	 ieyvFJcdQpQ5iOYCLzlTqVyiROJIoInRidrXDKkVqFuRRHycm5Rb16nBImgdM0Yz6w
	 0y2fL9/OPLcaq0zNXpDnnJlbnzZB5OGZOWQpuDBqlrA45jOamsf9hnxF63L1vaKfMJ
	 Bs0mlKcmJtv+dKuMtcf1yyJyX42HKkZO9ZIIJuWeh1HCDOmcpXc8p3p3Kci1w8iNFP
	 NWkwfhaZz+RQ6wqRSkTLB5ycCZOBUu4kymRdB4ov4+j9JOgw1t5kxCCnQMcUcIJvzL
	 TAFMy/YKVjXfg==
Date: Sun, 1 Mar 2026 12:05:27 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Xueyuan Chen <xueyuan.chen21@gmail.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Peter Chen <peter.chen@cixtech.com>, Fugang Duan <fugang.duan@cixtech.com>, 
	Gary Yang <gary.yang@cixtech.com>, 
	CIX Linux Kernel Upstream Group <cix-kernel-upstream@cixtech.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 3/3] arm64: dts: cix: add src syscon nodes for sky1
 resets
Message-ID: <20260301-neat-thistle-terrier-ab2885@quoll>
References: <20260301070910.6169-1-xueyuan.chen21@gmail.com>
 <20260301070910.6169-4-xueyuan.chen21@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260301070910.6169-4-xueyuan.chen21@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269694-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.62.143.160:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cixtech.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,0.63.122.0:email]
X-Rspamd-Queue-Id: 55A2F1CF404
X-Rspamd-Action: no action

On Sun, Mar 01, 2026 at 03:09:10PM +0800, Xueyuan Chen wrote:
> Add the SRC blocks for the CIX Sky1 SoC. These blocks
> provide reset capabilities to various peripherals across
> the S0 and S5 domain.
> 
> Signed-off-by: Gary Yang <gary.yang@cixtech.com>
> [Xueyuan Chen: Refactored to pure syscon nodes to fix v3 review issues]

v3? We are at v9!

> Signed-off-by: Xueyuan Chen <xueyuan.chen21@gmail.com>
> ---
>  arch/arm64/boot/dts/cix/sky1.dtsi | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/cix/sky1.dtsi b/arch/arm64/boot/dts/cix/sky1.dtsi
> index fb8c826bbc97..6ad5dc368a66 100644
> --- a/arch/arm64/boot/dts/cix/sky1.dtsi
> +++ b/arch/arm64/boot/dts/cix/sky1.dtsi
> @@ -348,6 +348,12 @@ i3c1: i3c@4100000 {
>  			status = "disabled";
>  		};
>  
> +		src_fch: reset-controller@4160000 {

Random set of changes without any explanation.

> +			compatible = "cix,sky1-src-fch", "syscon";
> +			reg = <0x0 0x04160000 0x0 0x90>;

And here...

Best regards,
Krzysztof


