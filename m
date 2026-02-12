Return-Path: <devicetree+bounces-265061-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OIIBIejBjWlt6gAAu9opvQ
	(envelope-from <devicetree+bounces-265061-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 13:04:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B97D12D429
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 13:04:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5B091300D743
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:04:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74092356A0D;
	Thu, 12 Feb 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0PET97J"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FFD8346A1F;
	Thu, 12 Feb 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770897893; cv=none; b=chCJ8M5HN7838HsefdJ9GO4fYoJhfiatKvIm8EV99qVhoOO2C27nK/4Dmqml7QK2CGHvzCJYkKYFF6PLQ874vydMOXa2sK2su4dNYFgzoBD+ik3v5cSN6RflLP5jZcN010MczIzGb4P+YFn0z3qI9Z1Oo1mB+4kdaODyHyozuNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770897893; c=relaxed/simple;
	bh=kht88UPCcdjdbb6rQuHUzPbMAe23E6O8r/InhqpgmxU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O+XJdUH92AWPZLu8PRVMXpO7sRd3AjFeYAnLTT3hDcDiV6ylcfPsjJ0bHikYJVlA0crnfYE5AFJpaXXbfBgZ6L+IgCi8XrEYlvS+cWe+DzQJqFGjUW390i13ny+kuOENPCxxL4nO8zuJhdxl5LvDw1MHCLMLuSHAmUnn24Od590=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0PET97J; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56D37C4CEF7;
	Thu, 12 Feb 2026 12:04:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770897892;
	bh=kht88UPCcdjdbb6rQuHUzPbMAe23E6O8r/InhqpgmxU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=m0PET97JMWnNsbWb8sMeIktf1PCJX/diLa57FzC0jnO4/BfMovkQu4BOxoSU3CkQj
	 RxT4IWzS+AM7DVAcdWc23j6ieZWkS58KsnK/YZfV6K5+3toQjQEFMc6tQGyfj8rHG/
	 A5egrQ+9x9EU0H8piDN/Q5UbGwrlXyszIdLMoSpi9JamfFDxaMygg9YcvOHDAKoCNb
	 9Z/In5/F7poyxSp2acmhPtZbBkoQ7RL/LtAANv7150gy8Dx3Oq96z2+FfyBjtRN7CK
	 scFf1WDRH7AYi4lvwGvt5U3/1c6BbFp7BRNA+nAtT+hnSTblVbyMdauRbnyfCYCfxb
	 FaeEqXLhZB3iQ==
Date: Thu, 12 Feb 2026 13:04:50 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chancel Liu <chancel.liu@nxp.com>
Cc: lgirdwood@gmail.com, broonie@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, Frank.Li@nxp.com, shengjiu.wang@gmail.com, 
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, 
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ASoC: dt-bindings: imx-card: Add dsp_a DAI format
Message-ID: <20260212-incredible-smart-honeybee-7203a8@quoll>
References: <20260212053036.2581083-1-chancel.liu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260212053036.2581083-1-chancel.liu@nxp.com>
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
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265061-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,nxp.com,pengutronix.de,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2B97D12D429
X-Rspamd-Action: no action

On Thu, Feb 12, 2026 at 02:30:36PM +0900, Chancel Liu wrote:
> This machine driver can parse DAI format from format property. Add
> "dsp_a" because it's one of the DAI formats this driver can support.

Since when it can support it? Maybe driver is wrong? What are the
differences?

Maybe there was a reason this was rejected in the first place?

You have commit msg to explain all this.

Best regards,
Krzysztof


