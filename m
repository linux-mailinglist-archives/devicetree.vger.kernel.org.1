Return-Path: <devicetree+bounces-276515-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sEk5MYMIuWm+nQEAu9opvQ
	(envelope-from <devicetree+bounces-276515-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 08:53:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA612A5228
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 08:53:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A4504305E99A
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 07:50:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E9843939B3;
	Tue, 17 Mar 2026 07:50:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cxoC2bW6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D50FE3932E8;
	Tue, 17 Mar 2026 07:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773733816; cv=none; b=SDunzMY+XyypBcWKNgnnsn46tEAJ8cA4dYm2EyyfmcNLEwYPf7MNhk80+dDBYVFHz+IcwNgo4BtIMQCImnNjv5klFI7gUETJf5WDKvlgxQMwn9ofH6oCNAI1p3qD9jO8qLYvEkurMeJ+PyY6Q3jMfkgYgEQfnGdwNR11dgjfR2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773733816; c=relaxed/simple;
	bh=CnOX+zI0Twxk3ysKMn84HBOYz93GCRkeXrKRUgINw8Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PesZ6ICXsMrKNFrYTCgch53KQQZaZrHvsabi1JK+4RIbfv0SGXXMR0F913VuE/Esp3VsY+3jzSOSCjzNIrvmVOiHCv4Ql0pkDULYR6wMLI50BfM9FAIqoTJFR1NPlYRL7g4HmDQQo6+wISzEulG0W9wgMVUL41KcyM02c2YcvF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cxoC2bW6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F41CBC4CEF7;
	Tue, 17 Mar 2026 07:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773733816;
	bh=CnOX+zI0Twxk3ysKMn84HBOYz93GCRkeXrKRUgINw8Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cxoC2bW64jvLYHo28vHnohv5HyUkwdV8LbmcxttP1BqcfU55XGAP4ey2gpElcOcWJ
	 Tf1a1rwBC9hEAjQLskdvuSbkXK71DFL9FveNMau9Cj1Tc3wR6e3Wu/SWxtVbq3wm44
	 wcsEHIOC0/nDjmdQlf0U883vVDMABJsTL5kdQUsORDTVJtfg0p3JoF6RxDIzJaIrY4
	 fxtFvl+YuvudVCY/oX0QcX5LrB4pXoomrD9pF5Y7FToa193zdwgxvu5dtcYrsiM+uV
	 MilB1wWdlKMQyERlHdFIaqsFW6B/x37Wy37yWFECVkDni86P9vy4tHfjeubnYNFcXT
	 9OTSxvQesO3tQ==
Date: Tue, 17 Mar 2026 08:50:13 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Eduard Bostina <egbostina@gmail.com>
Cc: daniel.baluta@nxp.com, simona.toaca@nxp.com, d-gole@ti.com, 
	m-chawdhry@ti.com, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Mark Brown <broonie@kernel.org>, linux-input@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: input: touchscreen: Convert TS-4800 to DT
 schema
Message-ID: <20260317-auspicious-proud-alligator-fcedb2@quoll>
References: <20260316181038.9771-1-egbostina@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260316181038.9771-1-egbostina@gmail.com>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276515-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,ti.com,gmail.com,kernel.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5CA612A5228
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 16, 2026 at 08:10:37PM +0200, Eduard Bostina wrote:
> Convert the TS-4800 touchscreen bindings to DT schema.
> 
> Signed-off-by: Eduard Bostina <egbostina@gmail.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


