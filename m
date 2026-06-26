Return-Path: <devicetree+bounces-316039-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HBoTGnFSPmp1DgkAu9opvQ
	(envelope-from <devicetree+bounces-316039-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 12:20:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C48B6CC034
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 12:20:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=mRDkviyq;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316039-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316039-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CC41130661BD
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 10:19:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C35D3EDAD8;
	Fri, 26 Jun 2026 10:19:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A45C344D92;
	Fri, 26 Jun 2026 10:19:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782469181; cv=none; b=Nwlhjmmpas8qF1P21n3C/VqyajPNO8oJGXJ2+Rot6xR5tOO+RFYUK/qA7iSR7J7KSj0H+mKJkJVIeQvgSln4fL+UmjoLFYplfKpf7G/WBC1QOmQQrY1e1A9SglVggLkgT/cuTTkWp9WpSSSaDLq/YnOBPEjJc6aZ7SXK6AE2N+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782469181; c=relaxed/simple;
	bh=Jbk3HWrGGpdUjoH1UM0aydC5i2DOaANuHsjOX2kLW2A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NYufnniW6cLqctf1A5hGicsmNX5Ln31bKL+tQNWjT1Mi+85LpeVxrnXLbXIcJr7TzAqwRUGVc/oTBuD40I0EDY6/6NfKhzt1TEaLXIphpoDMK0THufV1v+Jtd0UxUgMoVFHdn/JUlk0HfVpodkaOapYSYhrCHuMcvA7ecVTkQJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRDkviyq; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8881A1F000E9;
	Fri, 26 Jun 2026 10:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782469179;
	bh=F3BjGiEAkth6q6Fx2GBn/GSj1++9jJaZj/fjW/HdRMo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=mRDkviyq4yn7NjXe0RjnMQvLo0EwuDzu2v6DgIL9bAtjQIQ0o0Yt2UvmM+pn7kogf
	 /YC1KQ9cWeX7VJ3VDz1KlMHpX01RKZE45AW4t9yq/sfuQkEdGFrI/OpE2BMsfRMR4p
	 C4IHaK1LhldZk7lOvEE0/LdysTYqCfCspAweKunX7P05g7kHvgDkekJcVo6+LH3qex
	 YcuQPGVn9lZAn6sOGyI5IoaMLj3M02h+vC9PF9xalIHUQwsiGmzwrXbeeugNOt3jfB
	 pTzIkIxzMMt4E2ZlsD4qS1CNDHk1uOEkZQtVqXQuHU/9xEiDKnfW4T9woWi5WOCNBi
	 KYnwGUQ04eCMw==
Date: Fri, 26 Jun 2026 12:19:36 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: cy_huang@richtek.com
Cc: Mark Brown <broonie@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Yoon Dong Min <dm.youn@telechips.com>, edward_kim@richtek.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] regulator: dt-bindings: rtq2208: Label
 mtp-sel-high property as deprecated
Message-ID: <20260626-zebu-of-uncanny-serendipity-a9fc85@quoll>
References: <cover.1782444299.git.cy_huang@richtek.com>
 <594ebe167b33ca885c040984624e4b5d1382c0e2.1782444299.git.cy_huang@richtek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <594ebe167b33ca885c040984624e4b5d1382c0e2.1782444299.git.cy_huang@richtek.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-316039-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:cy_huang@richtek.com,m:broonie@kernel.org,m:krzk+dt@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:lgirdwood@gmail.com,m:dm.youn@telechips.com,m:edward_kim@richtek.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,telechips.com,richtek.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,quoll:mid,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6C48B6CC034

On Fri, Jun 26, 2026 at 11:38:52AM +0800, cy_huang@richtek.com wrote:
> From: ChiYuan Huang <cy_huang@richtek.com>
> 
> Since it can be identified by hardware register, label the unnecessary
> property 'richtek,mtp-sel-high' as deprecated.
> 
> Signed-off-by: ChiYuan Huang <cy_huang@richtek.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


