Return-Path: <devicetree+bounces-287086-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uIlOLh0p3WmVaQkAu9opvQ
	(envelope-from <devicetree+bounces-287086-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 19:34:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4BF3F18AA
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 19:34:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BD89D3068DD4
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 17:21:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88C40349AEC;
	Mon, 13 Apr 2026 17:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aM1gFhZJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 655A6347FEA;
	Mon, 13 Apr 2026 17:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776100870; cv=none; b=E1lZ6ZZVjErBz1cTlDvoBojtzYydbCrnN3dDUqRTPW8ifpzwxIWAz8Eilxw/Ui5bxPVFqfRsPEtlaknvRy8FIQ+dUnwmxJeO9hvNdmoRnraWjJgE8M/22SD3I94lAdCZuvsgiVf60g2Mlh7CPneagD3cWKJX/ao+oJvIkPlw/Pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776100870; c=relaxed/simple;
	bh=M+OQXTluttDP+ZqTubaOzq9f/DqdsbvHrsNdryzA6I8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=b0wNEqUPyust8io2N5r7c4R41kLiY9c1S7ihIGHBkSCV9z0RxQxhPB2WvTIGJtnwldLm9qprl9MbJ7uKyUigutbCHSoGc8jGFXbRcCHl/qCoAC++jBTJYMhkIdnf35jXZC8Igms2g4jfPhT0F3g7eJa0Ki46q64gEKENuWkXulk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aM1gFhZJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00995C2BCB3;
	Mon, 13 Apr 2026 17:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776100870;
	bh=M+OQXTluttDP+ZqTubaOzq9f/DqdsbvHrsNdryzA6I8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aM1gFhZJwXYIN7bAlkGf3CvJJc3EkBlt2jZ1PVvzHNfkSFhDLSrjyyPhw9/iMUR0g
	 O0PNi1X4u0Y7FQQEvKkG7E/E+uESPvJezVfjnFXmQ5HJ443VtflG4qzGdoO00ghFEA
	 jMTTTNPAcbAMD73Z1MX3fa3ZzDds2s20vLTQoRz4EImQGuozeI3bvYuMB608L2ebhx
	 SMyOLg6MaVNjqwR+LyyszkXwLzx0cfXMNJLnJcqA07k4t/ZJ/RTEo6Jl8C6KKQ0JZj
	 4XFsUgdF7BvJ5QGJMW2NZyAzJem0YDqXRvTycnZkb8pwOUeVkEPvTjCERSMNnSLgiz
	 mEvpjiQeAgHQg==
Date: Mon, 13 Apr 2026 12:21:08 -0500
From: Rob Herring <robh@kernel.org>
To: Sasha Finkelstein <k@chaosmail.tech>
Cc: Janne Grunau <j@jannau.net>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Sven Peter <sven@kernel.org>,
	Neal Gompa <neal@gompa.dev>, asahi@lists.linux.dev,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 0/2] Update Sasha Finkelstein's email address
Message-ID: <20260413172108.GA3079949-robh@kernel.org>
References: <20260411-mailmap-v1-0-5a519f7b00b5@chaosmail.tech>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260411-mailmap-v1-0-5a519f7b00b5@chaosmail.tech>
X-Spamd-Result: default: False [5.34 / 15.00];
	SEM_URIBL_FRESH15(3.00)[chaosmail.tech:email];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-287086-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_ALLOW(0.00)[kernel.org:s=k20201202];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,body];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_SPAM(0.00)[0.018];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	R_SPF_ALLOW(0.00)[+ip4:172.105.105.114:c];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DBL_BLOCKED_OPENRESOLVER(0.00)[chaosmail.tech:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4C4BF3F18AA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, Apr 11, 2026 at 04:36:06PM +0200, Sasha Finkelstein wrote:
> Moving away from gmail
> 
> Signed-off-by: Sasha Finkelstein <k@chaosmail.tech>
> ---
> Sasha Finkelstein (2):
>       mailmap: Update Sasha Finkelstein's email address
>       dt-bindings: Update Sasha Finkelstein's email address

I think it is best if Janne takes the series.

Rob

