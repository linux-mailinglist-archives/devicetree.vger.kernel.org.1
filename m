Return-Path: <devicetree+bounces-311010-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vy/EOckcLGp/LgQAu9opvQ
	(envelope-from <devicetree+bounces-311010-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 16:50:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B88667A561
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 16:50:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=I5y5nnmA;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311010-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311010-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 264BD3007510
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 14:50:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BCE236E468;
	Fri, 12 Jun 2026 14:50:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0017F38C401;
	Fri, 12 Jun 2026 14:50:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781275846; cv=none; b=GpmV6VtkQblKwkJotjSkdk4KCN0ABcrx74hLbVfwmr7Rij83A0HDRKL5C05rZYEwbUN3euTGzNkglkajJDgeVz1IFDw9NRhZz3rcuJ+3P+7ftHWc4PXTqIpJB51DEK+rgb2YwAifAhLdtURQwsTFMiUNXBlDPs/iDuXk1kofiio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781275846; c=relaxed/simple;
	bh=l4/A17afXihUCOU3eRs3+0nRzzEWs9RR7tndt5X12lU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gHW6/LV79Hh1lgsJJIIgjO7v0KYBh/XJ+s3DnofBOLMBgaCzWZXh7cPHKaf4Y9kSTTNqY2nWxIoVVxwcUkkLI3wQNtMp4zthAUHrJELtBdsA2iQ1ABgt7FE7wghkUXpEonwLqXJ9cWLsgyeyYGaZdDPHchaSppCH0eXTRQziT5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I5y5nnmA; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 305641F000E9;
	Fri, 12 Jun 2026 14:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781275844;
	bh=ykCZXAreTqJE6ajkCVGnBJqbVDb9t2b1eA3GBUCO/wo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=I5y5nnmAbDbCK/7Pxin+1BGcrp/KN2JUgY7GEigZ/5q7NdVsTXZDZGvCA1JuH9yzT
	 5kHERDBfcdbzhVs2ffSLCVjaLP7w49dkglK7tDyrdcmWtKG14wC1h5f2tP85AfU6lH
	 hJ9qGwUjgx7C1xOM6xUidTOlEWbuAmbco+nwsZl1PvBLWYxIv633o19bz3zfAxhnf0
	 zKZoLNQxmDtLsn4jnyuQ/kDPVTvmLxiVS+TZxYFi4lHi7sxEmZe5BBk5xj77oZsE+X
	 X/E0Ia8xH/j+h2NG9NuCnIY316WG3ihy6+LSaFSdZN9zSTrsgncpimCCicXLPplePT
	 rv037AxHzPNwg==
Date: Fri, 12 Jun 2026 09:50:43 -0500
From: Rob Herring <robh@kernel.org>
To: sashiko-reviews@lists.linux.dev
Cc: Tapio Reijonen <tapio.reijonen@vaisala.com>, conor+dt@kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/3] dt-bindings: serial: maxim,max310x: describe
 per-channel rs485 subnodes
Message-ID: <20260612145043.GA995059-robh@kernel.org>
References: <20260601-b4-max310x-rs485-dt-v2-2-a105105f8e70@vaisala.com>
 <20260601113815.8A9821F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260601113815.8A9821F00893@smtp.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-311010-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:tapio.reijonen@vaisala.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8B88667A561

On Mon, Jun 01, 2026 at 11:38:15AM +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> 
> Pre-existing issues:
> - [High] Kernel panic in error path due to uninitialized port structures in `max310x_probe()`

Why does sashiko reply to binding patches with driver issues? Please 
stop.

Rob

