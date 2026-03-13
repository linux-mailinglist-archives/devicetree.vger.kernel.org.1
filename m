Return-Path: <devicetree+bounces-275269-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oCQLCK0VtGlkgwAAu9opvQ
	(envelope-from <devicetree+bounces-275269-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:48:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B7440284334
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:48:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EB52932D523E
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:40:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 033EB30F7F2;
	Fri, 13 Mar 2026 13:37:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k69HOhq/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3A0E258CD9;
	Fri, 13 Mar 2026 13:37:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773409059; cv=none; b=kskfhTdIR8K+7v8JxZIoGDcGCn8b3u6E2mSiBsy2sXkvcF2Ta9oj5byKDdL4miuBQ5vWoMtOLFP0mtWyfaJORnWUnSukm5XZIMwa3YKHeZlTgcjJKpT9WZnG7vcuwZSHgZWfKJ1U1/8vsBiP1nmFVMJVZIvQcHitC+jQm8LWuvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773409059; c=relaxed/simple;
	bh=250PDTdEuQTxrdUP74l0WdKsZ4A5soJaDweRz3J5J7Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=g6w+K0nbTimqD8Dncjfs6RzRcFHLFKOLb6nfmPdxGL8vreKn4Tj/H711qNCTWZ2kk8kfupLNpJpntA3IHHc6nf1ko04CPeblEj3I3qg827z3TTgopinYq2RXE+PMIqwwQSW/lIoXIST8jBp6QQhJ5nIhGePvlVI2tq2momR7mXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k69HOhq/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4910C19421;
	Fri, 13 Mar 2026 13:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773409059;
	bh=250PDTdEuQTxrdUP74l0WdKsZ4A5soJaDweRz3J5J7Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=k69HOhq/AEKCrp6K4PcbcAR7qQFYGguBZebYvz+0LhNDyHNbt0gW+CTIr8XslHRuX
	 NUYyhyJlj+9IRo11BNTV7Hxt/SoGGzSDSMiVblrKfb+sWAq3+vt+F6c8yJzlBRPqb/
	 uG5+b4xJl360c3hd79gaLQLOwhUHmuoxowJYM1He9An6Z8mo66+6D3KKN5oF198giC
	 hTGFa7HbkseZZvZVic2hV9Tw5YUwfgKY81k76ESlTJiCefI4EUMZNCzASbIVgvSPPk
	 KRTcU3MwPhM0IlWMSLUBCHQ00wCCJrvlv98Z9QfFuERr6ZivWDCCKppMAdGeb1AoNb
	 4YOrlNHxmW5pA==
Date: Fri, 13 Mar 2026 14:37:37 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: nick.hawkins@hpe.com
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: arm: Add HPE GSC platform binding
Message-ID: <20260313-mottled-toucanet-of-examination-a57aaa@quoll>
References: <20260311210416.1706784-1-nick.hawkins@hpe.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260311210416.1706784-1-nick.hawkins@hpe.com>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275269-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,devicetree.org:url,hpe.com:email]
X-Rspamd-Queue-Id: B7440284334
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 11, 2026 at 04:04:16PM -0500, nick.hawkins@hpe.com wrote:
> From: Nick Hawkins <nick.hawkins@hpe.com>
> 
> Add the devicetree binding for the HPE GSC ARM64 BMC SoC used on
> HPE ProLiant servers.  The HPE GSC is the successor to the HPE GXP
> (ARM32) BMC.
> 
> The initial board compatible is hpe,gsc-dl380gen12 for the DL380 Gen12
> server platform.
> 
> Signed-off-by: Nick Hawkins <nick.hawkins@hpe.com>
> ---
>  .../devicetree/bindings/arm/hpe,gsc.yaml      | 30 +++++++++++++++++++
>  MAINTAINERS                                   |  5 ++++
>  2 files changed, 35 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/hpe,gsc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/arm/hpe,gsc.yaml b/Documentation/devicetree/bindings/arm/hpe,gsc.yaml
> new file mode 100644
> index 000000000000..c81753e3501b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/hpe,gsc.yaml
> @@ -0,0 +1,30 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/hpe,gsc.yaml#

You already have binding for all HPE chips hpe,gxp.yaml. It's one
binding for one vendor.

> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: HPE BMC GSC platforms
> +
> +maintainers:
> +  - Nick Hawkins <nick.hawkins@hpe.com>
> +
> +description:
> +  The HPE GSC is an ARM64 BMC SoC used on HPE ProLiant servers.
> +  It is the successor to the HPE GXP (ARM32) BMC.
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - description: GSC Based Boards
> +        items:
> +          - enum:
> +              - hpe,gsc-dl380gen12

Where is any user of this? I don't see a reason why we want this without
users.

Best regards,
Krzysztof


