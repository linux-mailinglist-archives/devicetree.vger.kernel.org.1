Return-Path: <devicetree+bounces-275663-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mLJVLRg3tWkXxwAAu9opvQ
	(envelope-from <devicetree+bounces-275663-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 11:23:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C9A28CA72
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 11:23:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0842A302419B
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 10:23:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6250D352C28;
	Sat, 14 Mar 2026 10:23:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQZKEhRt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB4D273D76;
	Sat, 14 Mar 2026 10:23:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773483796; cv=none; b=g8Ks+rw2Dk1jpgdDu7mjnQEE+xumvqn+0Z39BRsz2VqBg29o4hkrWOqtNVPsK4X3fY0eug+pm5zv1S/qBAzf6Sz2zNU2NorSC2Su6Hkh5CrKRfO2VfbhETKvX1MJYkLKVefp2ABNBPsvIJKwo6lRU4ZhEQle3O1RSJeI1dc0qtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773483796; c=relaxed/simple;
	bh=5PkAknHHM/kOX+aOCmxl/1qV4NYtdKOeDMzTVtjIgW8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eQpFja/+rKj1bXx2vhX0wnizZbQ3lISnmH6M8GVRBXP9CEJ8hCRpfpVl2C6hzsoPSzY7bik+nPHT7ZysZtaiZ/bf7e1/orLPQE6Qh5oBG/LTNMGg6xtBheI3y1qr8DeNZXSeZY/dyBpa/TpuN+jmc4zQ7nPhYFKSr7p8cQUPrpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQZKEhRt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5FCA9C116C6;
	Sat, 14 Mar 2026 10:23:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773483795;
	bh=5PkAknHHM/kOX+aOCmxl/1qV4NYtdKOeDMzTVtjIgW8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OQZKEhRtm+fH056uWWAG9LnfwkY3iifEFZhSsmNoVk6WOzyn6lUXwKE3FCVQNsbYw
	 a3ZAloRiscW0UZofgoJDazvPz8inZJP1W7z/V2AZW8A8hNadAI9nJNapUlo73kwPsN
	 1wcpzYDFmP4nZ1JAWyzGGyL9EXZ8q4BRvbOuEA1fUIgMgTjHvE6PSlQXA7sqweISqL
	 nn6gi95nbCFr3cufZVhIR3yHTcRTVuvg13narL9U24Bb0UhvL2PMJLjFZOhP/T++dB
	 kshXcoKPv/q8Wiohwmuu7P0T0OnEad7OGQPuY2AGewC2IaoT36Y2enSeBNzJaLgpUx
	 ngiuA77++BW4g==
Date: Sat, 14 Mar 2026 11:23:13 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ryan Chen <ryan_chen@aspeedtech.com>
Cc: Andrew Jeffery <andrew@codeconstruct.com.au>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Joel Stanley <joel@jms.id.au>, Ryan Chen <ryanchen.aspeed@gmail.com>, 
	Adrian Hunter <adrian.hunter@intel.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Andrew Jeffery <andrew@aj.id.au>, linux-aspeed@lists.ozlabs.org, openbmc@lists.ozlabs.org, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: mmc: sdhci-of-aspeed : Add ast2700
 support
Message-ID: <20260314-naughty-tody-from-vega-116b3d@quoll>
References: <20260313-sdhci-v1-0-91cea19c8a67@aspeedtech.com>
 <20260313-sdhci-v1-1-91cea19c8a67@aspeedtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260313-sdhci-v1-1-91cea19c8a67@aspeedtech.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275663-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[codeconstruct.com.au,linaro.org,kernel.org,jms.id.au,gmail.com,intel.com,pengutronix.de,aj.id.au,lists.ozlabs.org,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,aspeedtech.com:email]
X-Rspamd-Queue-Id: 30C9A28CA72
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 01:27:56PM +0800, Ryan Chen wrote:
> Add the "aspeed,ast2700-sd-controller" compatible. The ast2700 sdhci
> controller requires an reset, so make the "resets" property mandatory
> for this compatible to reflect the hardware requirement.

Subject - there is never space before ':'

> 
> Signed-off-by: Ryan Chen <ryan_chen@aspeedtech.com>
> ---
>  Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml b/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
> index d24950ccea95..a2ff9a94db13 100644
> --- a/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
> @@ -26,6 +26,7 @@ properties:
>        - aspeed,ast2400-sd-controller
>        - aspeed,ast2500-sd-controller
>        - aspeed,ast2600-sd-controller
> +      - aspeed,ast2700-sd-controller

Missing blank lines everywhere in your patchset.

>    reg:
>      maxItems: 1
>      description: Common configuration registers
> @@ -37,6 +38,20 @@ properties:
>    clocks:
>      maxItems: 1
>      description: The SD/SDIO controller clock gate

Blank line

> +  resets:
> +    maxItems: 1

Blank line, just open any other bindings. If this is because you used
LLM, then obviously NAK, because we should not waste time to review
unsupervised poor quality LLM output. It is your task to review it, not
ours.

