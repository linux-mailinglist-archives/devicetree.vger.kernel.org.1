Return-Path: <devicetree+bounces-309692-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WZh5CARFKWp7TQMAu9opvQ
	(envelope-from <devicetree+bounces-309692-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 13:05:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A6874668922
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 13:05:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=fsNosMwq;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309692-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-309692-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D673730CD57A
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 10:59:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3431D3DEAC2;
	Wed, 10 Jun 2026 10:58:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C81F5403B09;
	Wed, 10 Jun 2026 10:58:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781089132; cv=none; b=aiWyYPoCuzqR7Z5pidqFOuYFNL86ExCccI/Tn4jiu9Psch+OArq2Tivu03BpvRrAkmpq3xIWpmaXkDVLrH+mxBXYQQaLWSBG25SnLRVKy8Km/7lIs6Xpnw715vrc4TCVAjKoODrfQbVGfUBd2WbATy7ekQNkBNNV0do9WObAeUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781089132; c=relaxed/simple;
	bh=NmdinjyHxF/fIyT2G04rr9xV3v6p21ep4MTgBtwha50=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sDthqaiOWIRw2uCWwhhzzk2Ws6vn5arhU6d3TgI4GWKYLCDzjPtalFoXBh9oDVinJ2nNYe2BQms99Oxw9B/DstOSWNaY6arAHgl0P/rMrTooIHHx0ZKmBBlXD7JrRDFiBZPUWC1X9FzQYgWdTFtUjFfu6kvELxaZgBb2F+QmTj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fsNosMwq; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ACC531F0089B;
	Wed, 10 Jun 2026 10:58:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781089127;
	bh=kBy1ftOH0spfNVWjIV7Ntkw3pqs6LML0cP/jONPpwTs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=fsNosMwq4bKiMs5RBf7mOYdv1RLHMGJupqb+byWs+/LD7mgKrNe9GxhVTj1RPN8La
	 nsqB1YNuXDO8uR0tLPTHjd3+8LbbuqjZl0YfC1aPeV2/HoIVxRYjc07ZYiJxaoQEOF
	 v6hMIAqsobSJdMWXt1YdmmWz/yi/1qcb1j+37ztfciEdFIyWYMrrpvySWp3r/hXX5v
	 TS3seEi4FfqTBsL0xhJzRZF1dMnpT0YGB5yg9o7lR/veq752ZXDwpYoKIGKE0KClOm
	 gPUKqFbHDtazesfDlDhnOyRnLFQvxur28bdKMCbyK6+SDnHJRxo/9TuhO4/6DvCFxA
	 URiutjp3L+0kg==
Date: Wed, 10 Jun 2026 11:58:41 +0100
From: Lee Jones <lee@kernel.org>
To: Duje =?utf-8?Q?Mihanovi=C4=87?= <dujemihanovic32@gmail.com>
Cc: Karel Balej <balejk@matfyz.cz>, devicetree@vger.kernel.org,
	phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
	linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 2/3] mfd: 88pm886: Initialize battery page
Message-ID: <20260610105841.GK4151951@google.com>
References: <20260526-88pm886-vbus-v1-0-f2bd1fd3c19e@dujemihanovic.xyz>
 <uME6Hy8mQeKxnZAg1Q4aPA@gmail.com>
 <20260608085524.GG4151951@google.com>
 <ZyFElwT1QjOADA-7NXdGRw@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZyFElwT1QjOADA-7NXdGRw@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-309692-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[lee@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:dujemihanovic32@gmail.com,m:balejk@matfyz.cz,m:devicetree@vger.kernel.org,m:phone-devel@vger.kernel.org,m:~postmarketos/upstreaming@lists.sr.ht,m:linux-kernel@vger.kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[matfyz.cz,vger.kernel.org,lists.sr.ht,kernel.org,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lee@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A6874668922

On Mon, 08 Jun 2026, Duje Mihanović wrote:

> On Monday, 8 June 2026 10:55:24 Central European Summer Time Lee Jones wrote:
> > On Sun, 07 Jun 2026, Duje Mihanović wrote:
> 
> [...]
> 
> > > Lee, do you by chance know how to proceed here?
> > 
> > You can move them.
> > 
> > Please take into consideration data-size as well, rather than blindly
> > following RCT.  Larger items (structs) at the top down to smaller (ints
> > and bools) as the bottom.  Luckily the larger (data size) items also end
> > up being longer (string).
> 
> Am I to consider the sizes of the pointers or the structs they point to?

No - group all structs in RCT.

-- 
Lee Jones

