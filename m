Return-Path: <devicetree+bounces-315511-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OyQFLlrZPGoptQgAu9opvQ
	(envelope-from <devicetree+bounces-315511-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 09:31:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B47D66C35F8
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 09:31:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=JvN3wV5f;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315511-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315511-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8F53F300BE9C
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 07:31:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2334B35DA5B;
	Thu, 25 Jun 2026 07:31:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29185334C3D;
	Thu, 25 Jun 2026 07:31:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782372674; cv=none; b=rob3i8dw2GrXN+ofgY406ZJPw75yvDHIb1kdind+mZhWq51bQN+7tqw+08jr8brV4gZlJIkxEj8OtftlJajjquEcAP5ZVDindX5YkICiJ1CcXvjwKH7tuMUGaOPs77l43hpVF2YmUBPaOMGaGyk3s8HzHxFkxftnKBGEhN5Gn6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782372674; c=relaxed/simple;
	bh=rjmokHLwOy3JjQ5YkQoKb+kA8OIJkILRD/da9HzifhM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=foqdSl7PIzUgX1ufhcAJMe0NNyuNGMd4Xv7gh3H6SzvAuh42xXvkyLMcp+tRrnwVjxrpG+ZDKelVOuFzCvyQNzMwSdHy+T03ILjBYlMAja1wwOS7EnjInEBLnpr/FHymG2UbAAhB7l0HkJLp6CkDPxOOoz6pjgv4iRvk/UBE+1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JvN3wV5f; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ACDAC1F000E9;
	Thu, 25 Jun 2026 07:31:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782372672;
	bh=iTdgDtuDpWr7AZp5mL8mSgm2cdzH6KfxrYrYV/lUhcA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=JvN3wV5fYIiCDsuufP63fxm9UNwZijgAlezZig5SRdOeCBc7VIVkQDaAd3NKrSMRu
	 Tx3PYZ2qw3Tgj5HGraNHhkDOZfq0JKHSC2oz+WkskvxWnLsafxtDo5PSXMjJcnzhoI
	 V+t4xf+yZVHGW1eYa2KoKf5QJWXIgIUbNkO1xH5oaDX+u61ruy/yjjNXgJAVWmQXrB
	 cr7JouuX0gBdqe2QdHuPa3dU22ebv6KRJBcdDMIHg4DPeurN5J1NivUw9YzRWQyXGd
	 4HIyXK5gHCcn+JNLM/urwWlsdJVNsJ7r3cava1EY80/T+hGu8eAzM97xiE1aocDTmA
	 Sy9aGDp83JHJQ==
Date: Thu, 25 Jun 2026 09:31:08 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Eduard Bostina <egbostina@gmail.com>
Cc: daniel.baluta@nxp.com, simona.toaca@nxp.com, goledhruva@gmail.com, 
	m-chawdhry@ti.com, Ulf Hansson <ulfh@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: mmc: Convert TI OMAP2420 MMC to DT schema
Message-ID: <20260625-cyan-ibex-of-pluck-0a5fac@quoll>
References: <20260624163112.535237-1-egbostina@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260624163112.535237-1-egbostina@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:egbostina@gmail.com,m:daniel.baluta@nxp.com,m:simona.toaca@nxp.com,m:goledhruva@gmail.com,m:m-chawdhry@ti.com,m:ulfh@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-mmc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315511-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,ti.com,kernel.org,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B47D66C35F8

On Wed, Jun 24, 2026 at 04:31:11PM +0000, Eduard Bostina wrote:
> Convert the Texas Instruments MMC host controller bindings
> to DT schema.
> 
> Note that the OMAP2420 driver will not work with OMAP2430 or later omaps.
> Please see the OMAP HSMMC driver for current OMAPs.
> 
> Signed-off-by: Eduard Bostina <egbostina@gmail.com>
> ---
> Changes in v2:
>   - Changed ti,hwmods type reference from string-array to string
>   - Updated ti,hwmods regex pattern to "^msdi([1-9]|[1-9][0-9]+)$"

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


