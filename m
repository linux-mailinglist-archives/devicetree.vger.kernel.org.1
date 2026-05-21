Return-Path: <devicetree+bounces-301041-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uJ00FrO5DmrBBgYAu9opvQ
	(envelope-from <devicetree+bounces-301041-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 09:52:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A89105A061C
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 09:52:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 07D2D3004611
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 07:48:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 939A83451CC;
	Thu, 21 May 2026 07:48:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TArWVdTB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EB88337699;
	Thu, 21 May 2026 07:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779349715; cv=none; b=uAvsZfcpgKOE9j1Da408JodCs7MgKg1byswJ5S9WDQrASjL2z+i4Jy/uDuc3NlmQ9b7MPWhHHc5hOOJ0WCbmstCfS+X8PMKB2ahwezw0H5A37dppeyoAOT/thsWMuPim4G3t+wqx1y43dRAhaUMNEFx8zDzqzLf5rHu8Ils52UU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779349715; c=relaxed/simple;
	bh=6ysasMQzBiu77inUKH4jG0nogxmZ5jy6i8s1FGbrXZQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SKGc2VP1xov1faaqxARIJmtcZj7zEsg+VgFwNBXuhfvTiZe40/KYuBXDyXQ51HSfXHLH3TBQAnPjxzx7mvMuSgWa+8G6g3pbx5LvqkWZDFwdbMb/ODJLH2QZoPFT9ZrXl5qePtvE6gArMVET1pQMxVjKkOCeL/Jge6PFb7odXwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TArWVdTB; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 977A51F000E9;
	Thu, 21 May 2026 07:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779349714;
	bh=msG1w+/0XlPu4UUp37IJw+dexMEoxGf3sGxbBxw/2Mw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=TArWVdTB2tjhHGR3gLg5gWePqKKRzouC20AUk7k38dCQ417tGjdCOdeF00JVq3D6D
	 ckL3aTzoiq7f0b+HeH7BpNiOhH1JtoRbavMls8RfyxX4AG80s2dTdudBJ2vkEb0tti
	 toLcRZ56MdYEyWZE8VZf+r0fXOGxbxBRpO9hCA33zLv2sDB4p2Vqv2PDCtPppQQ16d
	 4tog9ODkKZcLjeBOYVdpT/kykLnc7I5uv2cJywZXhQv1Cgj7IfFBhM2tdUlKQrWpHL
	 MVWe8+TU2zE8KpGwqfQZLKDDq8ceb3DAqfuSH9iHnVLUzP+G8p5EinXcwAxK+L4xI/
	 QDNoTUmU2kAew==
Date: Thu, 21 May 2026 09:48:31 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@kernel.org>, 
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, 
	Lorenzo Bianconi <lorenzo@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org
Subject: Re: [PATCH v5 6/7] dt-bindings: arm: airoha: Add the chip-scu node
 for AN7583 SoC
Message-ID: <20260521-terrestrial-cream-lizard-fbe6ba@quoll>
References: <20260520155525.22239-1-ansuelsmth@gmail.com>
 <20260520155525.22239-7-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260520155525.22239-7-ansuelsmth@gmail.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-301041-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: A89105A061C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, May 20, 2026 at 05:55:19PM +0200, Christian Marangi wrote:
> Document support for Airoha AN7583 chip-scu node.
> 
> This is similar to Airoha EN7581 with the addition of the presence of
> thermal sensor in addition to controlling HW PIN and other miscellaneous
> pheriperals.
> 
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> ---
>  .../bindings/arm/airoha,en7581-chip-scu.yaml       | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


