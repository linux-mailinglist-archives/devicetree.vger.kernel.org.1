Return-Path: <devicetree+bounces-258055-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qDtFO0MucWmcfAAAu9opvQ
	(envelope-from <devicetree+bounces-258055-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 20:51:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C84A5C924
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 20:51:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5A46780C4DA
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 16:56:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 121DC33C189;
	Wed, 21 Jan 2026 16:46:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="meoGeEWM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D71992FBE12;
	Wed, 21 Jan 2026 16:46:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769014016; cv=none; b=mcfsbsI59lwL1dt2dwJZIrsgeiWWjuRGlPhVQwafqfaX1OkHGeaASn7HqjOkXWyt5Q5kUva14iTD9ZLyzFEoo1aUFrXzZMW8AxAPNuq/4heToiakOimoOKdKG1+uC/oDDxcrX0FUe3b6kyGq4lZR83Zq5sr8GWk7DjMivVgh7KY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769014016; c=relaxed/simple;
	bh=Z7AKcqKCdVo5K9fbbsB5xIAy1McNGsgeezfpuSs7aiA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jx2vtybnYGxQUAtbShVb1gHPcWZ5FOzKUO4Z+AiHf0iqgTiQ1TTudADBQ5El1YqXtq/rsDyis+Unt5k2CayknTccWjc/bOVMuJT7w2b/N0zpczBZ6eMQdaWsf5InVpUw1EF8/ViSlpbtpqyeUIoXZUOqQmGyWZ6YH7QKnXhOOPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=meoGeEWM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6122FC4CEF1;
	Wed, 21 Jan 2026 16:46:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769014015;
	bh=Z7AKcqKCdVo5K9fbbsB5xIAy1McNGsgeezfpuSs7aiA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=meoGeEWMh9HsFWabKvkgvplnCsGRr9lNvPY7lZVMnK8hGssgoTaOyapsiLs/RwxCV
	 X47RUwGKe3P6y8dfoZZesztRtEBVwLTS7j5eHnScJyUmz9VjwkDbsx9pMM1MZUfj/E
	 yz7ZcQOmkT4DFfJjsc4FDTDcn4WlX6n/4rhXIScKGO0zSzNOKAmKzIq6XLnPHUAx7c
	 bC7pB4wBDciqkeECt+/tqbLYJzZLgDXEh1lJ8O3+X/WKikNo7YBGWV2xreq2DM4lC7
	 oLhoXwW7F6vbYQs7NGoipsuaAHQ8Z7jAWZsHX57sX/cL+ndIWYHO5yqtyKZuWTjBDg
	 PO1o9Y2bPhg7w==
Date: Wed, 21 Jan 2026 10:46:54 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Yixun Lan <dlan@kernel.org>
Cc: linux-mmc@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	linux-kernel@vger.kernel.org, spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	Ulf Hansson <ulf.hansson@linaro.org>, devicetree@vger.kernel.org,
	Adrian Hunter <adrian.hunter@intel.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: mmc: spacemit,sdhci: add support for K3
 SoC
Message-ID: <176901401388.3439509.9465691892166826989.robh@kernel.org>
References: <20260121-07-k3-mmc-v1-0-ff77c07bfdf6@kernel.org>
 <20260121-07-k3-mmc-v1-1-ff77c07bfdf6@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260121-07-k3-mmc-v1-1-ff77c07bfdf6@kernel.org>
X-Spamd-Result: default: False [0.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-258055-lists,devicetree=lfdr.de];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 8C84A5C924
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Wed, 21 Jan 2026 15:27:35 +0800, Yixun Lan wrote:
> The SDHCI controller found on SpacemiT K3 SoC share the same IP with
> K1 generation, while fixed the broken 64BIT DMA issue. Introduce a
> compatible string to enable support for it.
> 
> Signed-off-by: Yixun Lan <dlan@kernel.org>
> ---
>  Documentation/devicetree/bindings/mmc/spacemit,sdhci.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


