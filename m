Return-Path: <devicetree+bounces-307784-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0l6TExIvJWojEQIAu9opvQ
	(envelope-from <devicetree+bounces-307784-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 10:42:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 950F164F278
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 10:42:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=IoEPL0Xu;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307784-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307784-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6559D300A105
	for <lists+devicetree@lfdr.de>; Sun,  7 Jun 2026 08:42:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB6EB2EEE79;
	Sun,  7 Jun 2026 08:42:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D29197404E;
	Sun,  7 Jun 2026 08:42:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780821775; cv=none; b=pcLgAHK8QZzE0IL3dqjDMGCNEQGMYYyyOYLFvNZVgzuly5xabAbkKZKwInB7gLskQ5MZ+6PVSm3LX9IGQ2b3IrwvFQu4VsPHo0Ub72ohPFgPV65CAIcZpsy72M89T5xG7NNXQj5ELMhpfpF7gDTvelRXTkkiICgTNcxgkC07Ons=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780821775; c=relaxed/simple;
	bh=RSY3m9J69rv1MGLtCRUEcsjKuDcNc6EpVmHhqxtWrmM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=foHgh/1Ba/FKwPh1ahj9PEBS6pwkSEuljODji4SWnEx8ff4RQ3d0jtNld4oL8gD+xcFJuRA0JC21JSAyqPiR/hV4o0WyRowlarpxv+9YGc1YR4NJslrNoqej+NVuz2wXHPdcVMvo6/VvfCcia955xL4XKwKApWxIw+S/yH6Hm1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IoEPL0Xu; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 617331F00893;
	Sun,  7 Jun 2026 08:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780821774;
	bh=RRIWT9QfFadFGAisYuKX9tvKA4Mdgf+SJMo6TftBjg4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=IoEPL0XunMZnQJVGyObEvotFqZgwS0HY2R2sSWqiQW0/PVM3J4Vyj9stOiVT6h8z+
	 VPTf83iBa9vP2KsfgNpsv6FRMG7b3qSbOdOHg5oLgY+JM9OqCbHdg89y6XpTviandS
	 NDQEDNnc1g4VZygFgsGrDKi17B5RiQJl1s9q15QlK5yfxYLrrT+u1ip4xXSrBNfEfK
	 DGQu3pTGpohiCc9cF12o/jEn/X/boEERmiEduzLr6Uax7zxguOo5jbQfSZb7x5f0lr
	 QOpl/gLF/8n8TEM/IDKOWuSvwQnPKHblTQ392I5hlUR//xAACOrCOqG79e29QVMIYn
	 +i7GMfrKf97QQ==
Date: Sun, 7 Jun 2026 10:42:50 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Hrushiraj Gandhi <hrushirajg23@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] dt-bindings: arm: rockchip: add Vicharak Axon
 board
Message-ID: <20260607-favorite-messy-anteater-a56e7b@quoll>
References: <20260601132529.139172-1-hrushirajg23@gmail.com>
 <20260601132529.139172-3-hrushirajg23@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260601132529.139172-3-hrushirajg23@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-307784-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:hrushirajg23@gmail.com,m:heiko@sntech.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,quoll:mid,qualcomm.com:email,vger.kernel.org:from_smtp,bootlin.com:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 950F164F278

On Mon, Jun 01, 2026 at 06:55:29PM +0530, Hrushiraj Gandhi wrote:
> Add the device tree binding for the Vicharak Axon single-board
> computer based on the Rockchip RK3588 SoC, and add the vicharak
> vendor prefix to the vendor-prefixes list.
> 
> Signed-off-by: Hrushiraj Gandhi <hrushirajg23@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml    | 5 +++++
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  2 files changed, 7 insertions(+)

Please organize the patch documenting the compatible (DT bindings)
before the patch using that compatible.
See also: https://elixir.bootlin.com/linux/v6.14-rc6/source/Documentation/devicetree/bindings/submitting-patches.rst#L46

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


