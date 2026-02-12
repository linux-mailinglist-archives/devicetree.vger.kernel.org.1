Return-Path: <devicetree+bounces-265036-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eNmHF8i4jWl96AAAu9opvQ
	(envelope-from <devicetree+bounces-265036-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:26:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CCBD912CFAE
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:25:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8D46E3082040
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:25:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 647A0344DA9;
	Thu, 12 Feb 2026 11:25:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LTUhlW/u"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F07B3EBF1F;
	Thu, 12 Feb 2026 11:25:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770895557; cv=none; b=LUsTM6nUKzWkvMJJ/JYiDf+lNB/COYS/Yw8oPGn1/pnZ96UyoHmGUisqT3Ac6ewGxeMKagqnOMEeoLEFT+SrjmlCz56E+HjQ5nF2DYsPs0uLoJ8ImGsUgzLNucJTe6bPLDU39MhpvDRADrOJ/xM8+1cLZXRqYJss5j+0SR1uQ0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770895557; c=relaxed/simple;
	bh=wCihxMbSzr/NY1x92DoAmKBBt3K2Vw9FKgHRHLZ7pcI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gJBI3XAISsG3NS0ov53c2tlW61YSAeCrsAE59ZiMbvC2Wcc+ERydnwv3iHs9VEUX9ju/TBVzE3eMfuh2o76sb73N9eOhoe7tpdn/Rze4dlikURQ4OiXT92HXC8JXdP9M+wmV19MlTrKjZdkKOK5dHupfLZdHvQasGr7JPxoPzq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LTUhlW/u; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4BD87C4CEF7;
	Thu, 12 Feb 2026 11:25:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770895556;
	bh=wCihxMbSzr/NY1x92DoAmKBBt3K2Vw9FKgHRHLZ7pcI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LTUhlW/uqILTgmg17GXMDPI/EZ310DpomLiglGd45A3ux6D+8R4hOD+BRl7oLdX90
	 QuCh0rPkJwPeGoVTKE8jffE4A3fSeZveH/qZN/pCicxNaF6WB1Y5tavfLWjyMaHlLz
	 cE4htcVNEf7yTCmfkJSxG2hrXxXhClPNdFKBH0utdp0jDOplOHHpNypm3icnqeVQk7
	 VyKxc9246tC9O0nbGMVeXuFIY9FDdJVhRLnuQWdz1L9cLpipLQi5GnLcTciY/2CoJ4
	 iFCqXiH1DCFqIjGGadBLfWFvhyX3/ElHW8lu5LczFLeYoVVrSjnRLoiGdS1zZCn067
	 SN2Jyn9ria2kg==
Date: Thu, 12 Feb 2026 12:25:54 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Yasin Lee <yasin.lee.x@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, yasin.lee.x@outlook.com, 
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/4] iio: proximity: hx9023s: fix out-of-bounds access
 when copying firmware
Message-ID: <20260212-lush-monumental-grouse-e3903d@quoll>
References: <20260212-upstream-20260219-v2-0-2b28fce5d09e@gmail.com>
 <20260212-upstream-20260219-v2-1-2b28fce5d09e@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260212-upstream-20260219-v2-1-2b28fce5d09e@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265036-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,outlook.com,vger.kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CCBD912CFAE
X-Rspamd-Action: no action

On Thu, Feb 12, 2026 at 02:26:52PM +0800, Yasin Lee wrote:
> Initialize fw_size before copying firmware data into the flexible
> array member to match the __counted_by() annotation. This fixes a
> potential out-of-bounds access that could lead to a kernel crash.

I don't think so. Code is equivalent and this was just false positive
because compiler could not deduce that in this case counted_by can be by
fw->size.

> 
> Fixes: e9ed97be4fcc ("iio: proximity: hx9023s: Added firmware file parsing functionality")

Also not appropriate IMO, nothing to fix.

Commit is fine, but this is not a fix, IMO.

Best regards,
Krzysztof


