Return-Path: <devicetree+bounces-275085-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EK56HJHfs2ktcQAAu9opvQ
	(envelope-from <devicetree+bounces-275085-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:57:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E88A280FCB
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:57:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DF6673040AEA
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:53:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0152A38A703;
	Fri, 13 Mar 2026 09:53:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b="dzOyCZ6y"
X-Original-To: devicetree@vger.kernel.org
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8D7E282F26
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 09:53:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.67.36.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773395603; cv=none; b=nctQUAnQoJez/4lYd4YZvuZHEzT8WzxfxgkNHo/1NRBAtcGhmHB++2jigPj1P/RbZBgmDsiFNnnOmPD39KpdLhLSZsTZllAvXVFbdQCAufKYVG2jWVogaUadwr6PYxfWdcC+5Uw6RxMLUwPkJ0Z4XTWrM0FQJSca7DtGliXpjXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773395603; c=relaxed/simple;
	bh=1RRyNlzSKjp+P6Aie7009K9tuC1YIfv4S+9SYDZ4dgU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CSo8hXYeplLBJmgXdOxk/mZjiMvRP+uWCKwlQe/xXSz8bM8pAVyYYkPVX7ILyk1u7aZtg2+G8Dxou9SMXP6IteSlahbUMY6ya6tcf78jS+q4lNW9DgzSbVoElr709eXx3AD2ERjtVObpM6x5qlhRjeV8nnXxsws8oz9bpyKdwBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net; spf=pass smtp.mailfrom=posteo.net; dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b=dzOyCZ6y; arc=none smtp.client-ip=185.67.36.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=posteo.net
Received: from submission (posteo.de [185.67.36.169]) 
	by mout02.posteo.de (Postfix) with ESMTPS id EE37E240104
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:53:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=posteo.net; s=2017;
	t=1773395598; bh=UZjDFabv/JVxoyFBHx12mWT7ZrNxq98Zrg7DPbb7x1A=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:Content-Transfer-Encoding:From;
	b=dzOyCZ6yUlMjQt7K3ce9dhIxt7fhvM0kRcA1twZ/MrEgyiKEkfPnQ7lDsIcY5i49K
	 su65633EfRU4b49dIQGl6Zap/kDhFcl9gcTwFie8ecUEHVuElQIcqVjsORl8J9CfK0
	 Q3HlC/9GNgx65dxfE7qv1yqVHNA8O1Z5rv9fzh3o6XAgvlEk+pNvTuWDAphpRUOR9t
	 RXDgWmRFnfLMO5MJAh4uJhFzVAvJiA5TegZ0epRpA+CF9f17JafiFWyEWGC5ATlpxq
	 bu/52pQiixszBFlq9hTVvy06LvVtTi/fyP5pXXJA/Fhh85O7iYXRvI6yHELrSefWtc
	 jMqSnc+y2aixA==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4fXKYS2MnNz9rxM;
	Fri, 13 Mar 2026 10:53:16 +0100 (CET)
Date: Fri, 13 Mar 2026 09:53:18 +0000
From: =?utf-8?Q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
To: j.ne@posteo.net
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Madhavan Srinivasan <maddy@linux.ibm.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Nicholas Piggin <npiggin@gmail.com>,
	"Christophe Leroy (CS GROUP)" <chleroy@kernel.org>,
	devicetree@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v3] powerpc: dts: Build devicetrees of enabled platforms
Message-ID: <abPei7QPNV2NHLO0@probook>
References: <20260311-mpc83xx-dtb-v3-1-4aa43bb9ffa0@posteo.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260311-mpc83xx-dtb-v3-1-4aa43bb9ffa0@posteo.net>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[posteo.net,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64];
	R_DKIM_ALLOW(-0.20)[posteo.net:s=2017];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275085-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,linux.ibm.com,ellerman.id.au,gmail.com,vger.kernel.org,lists.ozlabs.org,linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[j.ne@posteo.net,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[posteo.net:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8E88A280FCB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 11, 2026 at 02:41:14PM +0100, J. Neuschäfer via B4 Relay wrote:
> From: "J. Neuschäfer" <j.ne@posteo.net>
> 
> Follow the same approach as other architectures such as Arm or RISC-V,
> and build devicetrees based on platforms selected in Kconfig. This makes
> it unnecessary to use CONFIG_OF_ALL_DTBS on PowerPC in order to build
> DTB files.
> 
> This makes it easier to use other build and test infrastructure such as
> `make dtbs_check`, and is a first step towards generating FIT images
> that include all the relevant DTBs with `make image.fit`.
> 
> Signed-off-by: J. Neuschäfer <j.ne@posteo.net>
> ---
> Changes in v3:
> - Group multiple files per line, while still avoiding backslashes
>   (suggested by Christophe Leroy)
> - Link to v2: https://lore.kernel.org/r/20260305-mpc83xx-dtb-v2-1-cdb751458445@posteo.net
> 
> Changes in v2:
> - Use "dtb-$(FOO) += foo.dtb" format on every line, avoid backslashes
>   (suggested by Geert Uytterhoeven)
> - Link to v1: https://lore.kernel.org/r/20260119-mpc83xx-dtb-v1-1-522f841290bf@posteo.net
> ---
>  arch/powerpc/boot/dts/Makefile     | 72 ++++++++++++++++++++++++++++++++++++++
>  arch/powerpc/boot/dts/fsl/Makefile | 43 +++++++++++++++++++++++
>  2 files changed, 115 insertions(+)
> 
> diff --git a/arch/powerpc/boot/dts/Makefile b/arch/powerpc/boot/dts/Makefile
> index 0cd0d8558b475c..56581c2489df0f 100644
> --- a/arch/powerpc/boot/dts/Makefile
> +++ b/arch/powerpc/boot/dts/Makefile
> @@ -3,3 +3,75 @@
[...]
> +# MPC85xx platforms
> +dtb-$(CONFIG_STX_GP3) += stx_gp3_8560.dtb stxssa8555.dtb
> +dtb-$(CONFIG_TQM85xx) += tqm8540.dtb tqm8541.dtb tqm8548.dtb
> +dtb-$(CONFIG_TQM85xx) += tqm8548-bigflash.dtb tqm8555.dtb tqm8560.dtb
> +dtb-$(CONFIG_SOCRATES) += socrates.dtb
> +dtb-$(CONFIG_KSI8560) += ksi8560.dtb
> +dtb-$(CONFIG_XES_MPC85xx) += xcalibur1501.dtb xpedite5200.dtb
> +dtb-$(CONFIG_XES_MPC85xx) += xpedite5200_xmon.dtb xpedite5301.dtb
> +dtb-$(CONFIG_XES_MPC85xx) += xpedite5330.dtb xpedite5370.dtb
[...]
> diff --git a/arch/powerpc/boot/dts/fsl/Makefile b/arch/powerpc/boot/dts/fsl/Makefile
> index d3ecdf14bc42e7..be784cbda6b56d 100644
> --- a/arch/powerpc/boot/dts/fsl/Makefile
> +++ b/arch/powerpc/boot/dts/fsl/Makefile
> @@ -1,3 +1,46 @@
[...]
> +dtb-$(CONFIG_PPC_P2020) += p2020ds.dtb turris1x.dtb

I just noticed that turris1x.dts is in boot/dts, not boot/dts/fsl.
I'll fix the Makefile listing and respin.

(This is an arbitrary split that doesn't catch all Freescale parts
anyway, but moving dts files around is out of scope for this patch.)


Best regards

