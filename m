Return-Path: <devicetree+bounces-317438-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kxcOHbJsQ2rsYAoAu9opvQ
	(envelope-from <devicetree+bounces-317438-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 09:13:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 68EE46E102C
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 09:13:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=LyG9iyet;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317438-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317438-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BC5C43006037
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 07:13:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10A983D1CCF;
	Tue, 30 Jun 2026 07:13:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C29326B742;
	Tue, 30 Jun 2026 07:13:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782803628; cv=none; b=hKaYV6xampWi5S3lJSFduNhmBbQPi0i5hkxPwwyg0DnBzuR2i2IJ1S7wtD6NyebZ3Z4E+onp3QAV9tIXhmD/xQ7yXY6pNhtGWUwfBn4AHoGpDnzG+SGzwAZGBoREwL/LecbjUXar0i+PFhNamRixkv5Cu3qDY3Kh/NpPnz/DE1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782803628; c=relaxed/simple;
	bh=5L+93k4CI+wsF1KrW3IeqHHfe14kZlrwX/NeaQ8biuE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=isUTRSBLWitrYhMDcDg7ya6PDy4MxtcXt9YKWVG9P1Qa8BK23Fr2Y1VoceZfJzRvK07t1g00wTlDAvzgnNsrY+WZe2MU8fmWot6oib3pMqTd/ZEy/GtA1BEo2zN/fpAqWQ2Tk2fEzzRPuvk4iS2jf9sIse29/2iMoLZnOzIA/hU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LyG9iyet; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 721BE1F000E9;
	Tue, 30 Jun 2026 07:13:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782803626;
	bh=ucBlxQFMsejfE2o4ZdvA+J+aAJrQ+6Hbq8ALAxCJTVk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=LyG9iyetR45SLIO1J3tit6Xvj2PWjMvaiDer3d6vYqoJRf2LpvEWJpl4GXDZNF9Fa
	 lRrADW0nVSkH3ZKshWkIGiR46CDol2yIeCPm2+x3I2LZEzb5MFHWUyyj71FlzHoSYW
	 6GcPhgTJigzvrzXtkXq6rMhzu4QzjNcsyA8pFxNkmjnzoHL1s1N6AK9wIMtq8SaBTd
	 a9lytv9jd7ETJzN7kBUw1My9F2h+XEuXlEymhZ208fLOA0QD9nmV/8Jt3xai2uASd5
	 zhc0u7scwPjzMWfjAUXWz+v5jAq+FnMudk7JKE5l7ImJ4oKvmlTLdqntMEHfJ9hB0q
	 7Tql/G1Hy2eRA==
Date: Tue, 30 Jun 2026 09:13:42 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Gokul Praveen <g-praveen@ti.com>
Cc: vigneshr@ti.com, kristo@kernel.org, conor+dt@kernel.org, 
	c-vankar@ti.com, s-vadapalli@ti.com, krzk+dt@kernel.org, davem@davemloft.net, 
	andrew+netdev@lunn.ch, pabeni@redhat.com, kuba@kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] arm64: dts: ti: Add PLL1 refclk to J784S4 SoC
 SERDES node
Message-ID: <20260630-masked-slug-of-judgment-732aad@quoll>
References: <20260629102308.56616-1-g-praveen@ti.com>
 <20260629102308.56616-2-g-praveen@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260629102308.56616-2-g-praveen@ti.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:g-praveen@ti.com,m:vigneshr@ti.com,m:kristo@kernel.org,m:conor+dt@kernel.org,m:c-vankar@ti.com,m:s-vadapalli@ti.com,m:krzk+dt@kernel.org,m:davem@davemloft.net,m:andrew+netdev@lunn.ch,m:pabeni@redhat.com,m:kuba@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:conor@kernel.org,m:krzk@kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-317438-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,netdev];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,quoll:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 68EE46E102C

On Mon, Jun 29, 2026 at 03:53:06PM +0530, Gokul Praveen wrote:
> Add PLL1 refclk to "clocks" and "clock-names" parameter of SERDES2 node
> as "assigned clocks" parameter has PLL1 and serdes multilink configuration
> fails without PLL1.
> 
> Signed-off-by: Gokul Praveen <g-praveen@ti.com>
> ---

Please run scripts/checkpatch.pl on the patches and fix reported
warnings. After that, run also 'scripts/checkpatch.pl --strict' on the
patches and (probably) fix more warnings. Some warnings can be ignored,
especially from --strict run, but the code here looks like it needs a
fix. Feel free to get in touch if the warning is not clear.

Best regards,
Krzysztof


