Return-Path: <devicetree+bounces-263590-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EN/UHWsbh2kgTwQAu9opvQ
	(envelope-from <devicetree+bounces-263590-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 12:00:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BA67F105B21
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 12:00:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4E840301AA50
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 11:00:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF10F334688;
	Sat,  7 Feb 2026 11:00:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGTVag4r"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C5D21D6193
	for <devicetree@vger.kernel.org>; Sat,  7 Feb 2026 11:00:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770462056; cv=none; b=kpcnCQ/Gn3YlbCefdVq+DephCOFZ20pBlzn7dqLuyALd5QCT06Oi3TdLDivWGE5YvnJBf2Xp05wHm+48H3FFRn4T85ujdyZW3DCSJE7r+59kUy2MVNJ/0Yv/V8RtUe8lmc4cPz3+XgAKO0CIILhAjkexh3LBuQGCA5MU5ClYj2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770462056; c=relaxed/simple;
	bh=OkGRbb+Qb4VJU+Gl3lIrApgazsO6ANeEgkvhODSPUNk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ay8Lx3vDC5iISsuJ0KHfm4pv34S+yxmCq38Kb0qmb7PnVg4eetV7CObyNz7ORzUzXevcm4cLwwcqVO6XaPu3uHaV2b+2gI13uNszbbLJV3dpXAWLjuVIMMJgPtZR0SuNCxNo9zwySIZqLQiL4wOTOtjjQnqZXDf28FXwQPtyxiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PGTVag4r; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9768BC116D0;
	Sat,  7 Feb 2026 11:00:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770462056;
	bh=OkGRbb+Qb4VJU+Gl3lIrApgazsO6ANeEgkvhODSPUNk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PGTVag4rgg0K5ovySbN5KS8saqSgfBvp89IjDY2/Q0jI1eSLxbgrNm8zUagL74t0J
	 DmLdSna8LZKA9bnbBbh2IuBGbjxwOLTbxEfklN/2qm2kgKGy2Sy6cqd6ZUDi0dAXhC
	 fdu8m9pBcqp3vN5EZIj2oqly94c4kU3q4QTtvcyH5jF+/2PmfKuECQqp5wvYV6nl3I
	 R6VU3VXnKTgruuKMbJui9Y/RqcAiqSJX4uGfZPzwm+lv0eEhYK8Smck+kC8yzwa9NE
	 0BeK8cKwKLHw+u0Ff949PxCoQXZMsP3e9nDxyp3wN85SdBqDxCNHMl6K/W4x2MmcJa
	 Kg9WIzJ2+EWbw==
Date: Sat, 7 Feb 2026 12:00:53 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, Fabio Estevam <festevam@nabladev.com>, 
	Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 02/11] dt-bindings: clk: rockchip: Add RV1103B clock
 header
Message-ID: <20260207-porcelain-gaur-of-tolerance-da50df@quoll>
References: <20260206181309.2696095-1-festevam@gmail.com>
 <20260206181309.2696095-3-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260206181309.2696095-3-festevam@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263590-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.982];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nabladev.com:email]
X-Rspamd-Queue-Id: BA67F105B21
X-Rspamd-Action: no action

On Fri, Feb 06, 2026 at 03:13:00PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@nabladev.com>
> 
> Add the RV1103B clock and reset IDs.

NAK, that's never a separate patch from the binding. If you have to make
it a separate patch, it's a proof your patchset is incorrectly organized
and lacks proper description for maintainers how to handle new soc.

And adding new soc is nothing odd, we keep doing it all the time.

Best regards,
Krzysztof


