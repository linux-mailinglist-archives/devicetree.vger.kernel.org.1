Return-Path: <devicetree+bounces-286770-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YHEtKU7p2mk97AgAu9opvQ
	(envelope-from <devicetree+bounces-286770-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Apr 2026 02:37:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 481893E22F9
	for <lists+devicetree@lfdr.de>; Sun, 12 Apr 2026 02:37:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8EB9130071F7
	for <lists+devicetree@lfdr.de>; Sun, 12 Apr 2026 00:37:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0384029BDBD;
	Sun, 12 Apr 2026 00:37:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uMQBlN5u"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4CA429B77E;
	Sun, 12 Apr 2026 00:37:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775954251; cv=none; b=kDKlrhUg2dQKJUd1AX1rk4cu7UyuZUwsI3nSqBGRTmiW+0RWSdmk/T9LVmJFSJPqVhgUZvI4GtAFiwd4GJZxdb1ilfgguEPcyfZgUXpFqRZVU/wFOoErxRx/q3sT62fjsdCQ/EbJThACcEWzueeOmfZEhBry4qrNDP4LuStQ+fI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775954251; c=relaxed/simple;
	bh=vxse8937geRn+N3jXgY4zjOhgZKC5UTaxN/0knCLaqY=;
	h=Content-Type:MIME-Version:In-Reply-To:References:Subject:From:Cc:
	 To:Date:Message-ID; b=OTHNhifsadNIf7/VlYypgbrQOIw44ISx/BvJsduX7dFlTcWki536xJs5RmTvSedcui+R9sLBYnAcSy+MRgoxTR+Qrhxs7r6+oubmQDxYn6Q0mXp/4nnm8xzdXmS6AbDtGU3d51uvOOTbkJey6zOs+6yvXXlcefkJcQ3j+gY5Jog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uMQBlN5u; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3B34C116C6;
	Sun, 12 Apr 2026 00:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775954251;
	bh=vxse8937geRn+N3jXgY4zjOhgZKC5UTaxN/0knCLaqY=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=uMQBlN5uBPscCEnh+dZq2tWJYn9CyYpntqCTfaRejP0nbKbW++eJiczV6q3m61zhd
	 eGin5ior4XfOSGXDGHxKe9sivmQGi6bOppQ6Rfe5Tc77V4IJxQV39P6YIPwRG2xMxe
	 4zDG0/p+rYlhspTKRozWiqRqQc5l9kmRAsfygIeSNlVgYI1ECPoFn3exgHQJsGgcFg
	 srz6t/4OvXpM0yM+JBuE6TBd+JGCqgHEvBj5hcPa9DZOOXpYS7OStG+0zOpY4Gp1pv
	 ZagJvc2FPi/IeoQ0qlqE1YjQ3MPcmwgT72sS/AfamdJTnbjUwidTh0+vhjbuNym06g
	 fK1V0ZIuTAWZQ==
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20260409002952.319668-3-marex@nabladev.com>
References: <20260409002952.319668-1-marex@nabladev.com> <20260409002952.319668-3-marex@nabladev.com>
Subject: Re: [PATCH v6 3/6] clk: fsl-sai: Add i.MX8M support with 8 byte register offset
From: Stephen Boyd <sboyd@kernel.org>
Cc: Marek Vasut <marex@nabladev.com>, Brian Masney <bmasney@redhat.com>, Peng Fan <peng.fan@nxp.com>, Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Michael Turquette <mturquette@baylibre.com>, Michael Walle <michael@walle.cc>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
To: Marek Vasut <marex@nabladev.com>, linux-clk@vger.kernel.org
Date: Sat, 11 Apr 2026 17:37:15 -0700
Message-ID: <177595423511.5403.5163612629622865239@lazor>
User-Agent: alot/0.12
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-286770-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sboyd@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nabladev.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 481893E22F9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Quoting Marek Vasut (2026-04-08 17:29:03)
> The i.MX8M/Mini/Nano/Plus variant of the SAI IP has control registers
> shifted by +8 bytes and requires additional bus clock. Add support for
> the i.MX8M variant of the IP with this register shift and additional
> clock.
>=20
> Reviewed-by: Brian Masney <bmasney@redhat.com>
> Reviewed-by: Peng Fan <peng.fan@nxp.com>
> Signed-off-by: Marek Vasut <marex@nabladev.com>
> ---

Applied to clk-next

