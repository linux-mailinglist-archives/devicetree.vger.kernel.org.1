Return-Path: <devicetree+bounces-311817-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IzO9GT/HL2ooGQUAu9opvQ
	(envelope-from <devicetree+bounces-311817-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 11:34:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C467B68517F
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 11:34:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=lht.dlh.de (policy=quarantine);
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311817-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-311817-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A74DB3019FCE
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 09:34:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A41173C4561;
	Mon, 15 Jun 2026 09:34:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp2-g21.free.fr (smtp2-g21.free.fr [212.27.42.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F6A211A14;
	Mon, 15 Jun 2026 09:34:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781516070; cv=none; b=T4N+A5wgYcBBKBCUDjW9UVW0XTqFVG9AD228JSnJqt4xGwPzpTDvZNvi2DKTDWHKYFUzi3h1c9Vlop+cEsGESw8uszk2DLwjBlZl0QWG324QosiRLntEzxWnI+NbdOlxMK1LDUpZ6+8Epsrf8pGmUSP2k9qwVPxzFOw4TYB4zQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781516070; c=relaxed/simple;
	bh=j3jn6K8MFJfN3dbk4/6n5x6EmdobH/dq5wonHUUE1b8=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=IPBmg7WNKcl8bAyotL0ZUEYm8Re67zji927s74cqH1eSPXOZmc8Vhqad7PzhtywOraFFiO14exhjJuQbfUj7n1pAIYhdq1Zhw2ZAgvm7maEt3nexkKHdFKp+pCJjNk6ED4zt+u/WO5VWech0yrAaNswJLatAZZe8arWhh/4YXsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=lht.dlh.de; spf=fail smtp.mailfrom=lht.dlh.de; arc=none smtp.client-ip=212.27.42.2
Received: from OMT-CWNXR4TFW5-LHT (unknown [IPv6:2001:9e8:6317:ed00:2c40:3338:cecd:1d01])
	(Authenticated sender: albeu@free.fr)
	by smtp2-g21.free.fr (Postfix) with ESMTPSA id 7EFE02003DA;
	Mon, 15 Jun 2026 11:34:13 +0200 (CEST)
Date: Mon, 15 Jun 2026 11:33:30 +0200
From: Alban Bedel <alban.bedel@lht.dlh.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>, Saravana
 Kannan <saravanak@kernel.org>, driver-core@lists.linux.dev,
 linux-kernel@vger.kernel.org, Tommaso Merciai
 <tommaso.merciai.xr@bp.renesas.com>, Alban Bedel <alban.bedel@lht.dlh.de>
Subject: Re: [PATCH] of: property: Fix of_fwnode_get_reference_args() with
 negative index
Message-ID: <20260615113330.11406fbd@OMT-CWNXR4TFW5-LHT>
In-Reply-To: <20260615-obedient-axolotl-of-argument-fb55ef@quoll>
References: <20260611102806.2643869-1-alban.bedel@lht.dlh.de>
	<20260615-obedient-axolotl-of-argument-fb55ef@quoll>
Organization: Lufthansa Technik AG
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; aarch64-apple-darwin25.4.0)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.54 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[lht.dlh.de : SPF not aligned (relaxed), No valid DKIM,quarantine];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-311817-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:saravanak@kernel.org,m:driver-core@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:tommaso.merciai.xr@bp.renesas.com,m:alban.bedel@lht.dlh.de,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[alban.bedel@lht.dlh.de,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alban.bedel@lht.dlh.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,lht.dlh.de:from_mime,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C467B68517F

On Mon, 15 Jun 2026 08:33:32 +0200
Krzysztof Kozlowski <krzk@kernel.org> wrote:

> On Thu, Jun 11, 2026 at 12:28:06PM +0200, Alban Bedel wrote:
> > fwnode_property_get_reference_args() should return -ENOENT when an out
> > of bound index is passed. An issue arised with the OF backend because
> > the OF API use signed indexes while the fwnode API use unsigned ones.
> > When an index value greater the INT_MAX was passed to the OF backend
> > it got casted to a negative value and it returned -EINVAL instead of  
> 
> INT_MAX is not out of bound for this function. It is invalid value,
> because OF code expects signed.

But this is fwnode code, it use the OF API but it should implement the
fwnode API which, unlike the OF API, use unsigned index.

> > -ENOENT. This patch add a check to of_fwnode_get_reference_args() to
> > catch negative index before they are passed to the OF API and return
> > -ENOENT right away.  
> 
> I do not understand why are you fixing this issue that way. For this
> API, the INT_MAX is correct value, but you claim that it is wrong and
> should be ENOENT (even if there is entry).
>
> Fine, if this is not a correct value, then EINVAL.

Indices larger than INT_MAX are valid in the fwnode API, so returning
-EINVAL is not appropriate here.

> But more important I think this should be just fixed in different way -
> why index in OF calls is signed in the first place? All indices are
> supposed to be unsigned in general, because that is both logical and
> readable when accessing arrays.
 
I agree that would be the better fix in the long run. But that would
impact a lot more code and I found it difficult to ensure it would not
potentially break some of its users. 

Alban

