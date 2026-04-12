Return-Path: <devicetree+bounces-286771-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8DVFJsHp2mk97AgAu9opvQ
	(envelope-from <devicetree+bounces-286771-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Apr 2026 02:39:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2383E2338
	for <lists+devicetree@lfdr.de>; Sun, 12 Apr 2026 02:39:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7C6B9303350C
	for <lists+devicetree@lfdr.de>; Sun, 12 Apr 2026 00:37:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E0B5286419;
	Sun, 12 Apr 2026 00:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ost8lknj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEFD81F5858;
	Sun, 12 Apr 2026 00:37:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775954260; cv=none; b=d6/nOR3qdMf+K/ei2KUdTJXmPqhZnBM694QHSXiQPY6G52OVns+M3eS8lYPOAx5qgyO1Y1rAegTID0zuh4WyrLkfiiCORqFfxo0r53YaXOE7OrEuXqTZLj+AenSZ1e4umEpGlUCEQOFwKSgjD2OFaEUl1FfW7N3vubss3SVVU/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775954260; c=relaxed/simple;
	bh=qmkF48sgbIcUYtSt47jHuDqVAItNpZPxaAmk8scjpQ4=;
	h=Content-Type:MIME-Version:In-Reply-To:References:Subject:From:Cc:
	 To:Date:Message-ID; b=LNkyVSGkX9ppsCNHycREivf3WR2QoWX8v3K+HtWHiaFqleAkD4u9srEx2Hywg3PpHCUI2mK2JxwXDSTig6J5sAab2heEdUt2GWRwcefzW5gJMrEi1U7bmSmg3Q8ASMv3GB3TnP7yfpwBw3EFmDNLQS1EFcdrAO42+gRy+G4PDkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ost8lknj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8118CC116C6;
	Sun, 12 Apr 2026 00:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775954260;
	bh=qmkF48sgbIcUYtSt47jHuDqVAItNpZPxaAmk8scjpQ4=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=ost8lknjqU2IEECKSlucHiveGR5XBwsK8y+UAqNIH8wd5EzHQwj/ZEhFvC25NvSqU
	 ce0XQ3W6fBHP00GpL7qFI3pzYTQY1MhP9FcokKvOSrVaDijzeaLZkP3yH/89Ln22kV
	 hhHt5V6t75k27ADiA64GVmKs/4yhRWwvAxmz1CejWo7NHPafR9YT4/BqP4mg7MoEzc
	 aIBLHsBg6brekNucFCxh+gy/wTd7fM1POSvDdpnen8ub5ztYzvsav8a+DA0a2YvM4c
	 2lNwO8HrgF0vmbSoRa2SEs1wcb9hUQ7gLHc5EvZRzObpDqCTNp3nPPGZw0rCG7jDTB
	 MiAWNQQoALi+Q==
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20260409002952.319668-5-marex@nabladev.com>
References: <20260409002952.319668-1-marex@nabladev.com> <20260409002952.319668-5-marex@nabladev.com>
Subject: Re: [PATCH v6 5/6] clk: fsl-sai: Extract clock setup into fsl_sai_clk_register()
From: Stephen Boyd <sboyd@kernel.org>
Cc: Marek Vasut <marex@nabladev.com>, Brian Masney <bmasney@redhat.com>, Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Michael Turquette <mturquette@baylibre.com>, Michael Walle <michael@walle.cc>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
To: Marek Vasut <marex@nabladev.com>, linux-clk@vger.kernel.org
Date: Sat, 11 Apr 2026 17:37:38 -0700
Message-ID: <177595425858.5403.18260710783169961888@lazor>
User-Agent: alot/0.12
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-286771-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sboyd@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nabladev.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2C2383E2338
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Quoting Marek Vasut (2026-04-08 17:29:05)
> Create helper function fsl_sai_clk_register() to set up and register
> SAI clock. Rename BCLK specific struct fsl_sai_clk members with bclk_
> prefix. Use of_node_full_name(dev->of_node) and clock name to register
> uniquely named clock. This is done in preparation for the follow up
> patch, which adds MCLK support.
>=20
> Signed-off-by: Marek Vasut <marex@nabladev.com>
> ---

Applied to clk-next

