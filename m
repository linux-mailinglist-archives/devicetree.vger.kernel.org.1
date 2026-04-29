Return-Path: <devicetree+bounces-291268-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cHs6OU6A8WlYhQEAu9opvQ
	(envelope-from <devicetree+bounces-291268-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 05:51:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 68A6248ED26
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 05:51:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 020BB30944E4
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 03:47:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFEB03932C6;
	Wed, 29 Apr 2026 03:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="abAcyyXE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC5E0392C50;
	Wed, 29 Apr 2026 03:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777434428; cv=none; b=vFXHxUkqxNkedhMs4qIWWbiSamlS9knb3Itt47Eg38BNQBbDkpH/w2I7nTMsJRJY9N9J8wbIaMxl8y1TytHfpWBxBq+tUOr3bP+e1PAJOJiAkYL0KA/uOP3IxV0I3TvdWDbrOMsDb0ka63LZVf5gz98WRIx7miC2hZKXA5Dzzc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777434428; c=relaxed/simple;
	bh=pI/vt9ZUteLEOWc0n8LKJdOWRjxIlHE78+gc+gUT1Z0=;
	h=Content-Type:MIME-Version:In-Reply-To:References:Subject:From:Cc:
	 To:Date:Message-ID; b=eH4Zh/3ealKTe0vhWrdPFKLMa32Ep+p/B1rZgeY7qHYv0gEiqx5/ugPLEXcGZKMWKU4/0TmQkkLEX0IBSdKopCJ/g/EbQGOK1CtusLEPsjuhHP0Oms6R1poeYjfJEEgM7MCvmxKGgv7n5eoYQ6hWvpZ6uQYQ67mr+6hg3KZyJdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=abAcyyXE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A9B6C2BCB4;
	Wed, 29 Apr 2026 03:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777434428;
	bh=pI/vt9ZUteLEOWc0n8LKJdOWRjxIlHE78+gc+gUT1Z0=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=abAcyyXEey2FVctOuvFM2zwuqrP6S69F41kjSvSVvrrNuzUFueaFFwqaTLcdmZ5dy
	 Q7kz3SSOGCX7X7sdzFfCiR2BKM42RkRdKqrvqmWiYtzpxk+eNF6grAz5B7g4BKvpuf
	 Ey3fLgDdmKJdmxsBj3qSg3J2Dz4Qj2VVYElaixEfb2fHAiZR5nYmHRBoo06APGMMP3
	 TAdqCD84KpDptcWFTIlNeiNgjOzgVssx4eWkCxKanuxFqCKszkeeGICp3eShuZcR6G
	 ttJnMI7NVKM8Z1dXnBrRk4aTm4Jy5+kSvKzvFexnxAkJl1yqdKt070Reel0YD4CNuy
	 RyfHvFTaNdUmA==
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20260414-pxa1908-clk-reset-v1-2-94bae5f3a8cf@dujemihanovic.xyz>
References: <20260414-pxa1908-clk-reset-v1-0-94bae5f3a8cf@dujemihanovic.xyz> <20260414-pxa1908-clk-reset-v1-2-94bae5f3a8cf@dujemihanovic.xyz>
Subject: Re: [PATCH 2/4] clk: mmp: pxa1908-apbc: Add reset cells
From: Stephen Boyd <sboyd@kernel.org>
Cc: Karel Balej <balejk@matfyz.cz>, linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, Duje =?utf-8?q?Mihanovi=C4=87?= <duje@dujemihanovic.xyz>
To: Conor Dooley <conor+dt@kernel.org>, Duje =?utf-8?q?Mihanovi=C4=87?= <dujemihanovic32@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Michael Turquette <mturquette@baylibre.com>, Rob Herring <robh@kernel.org>
Date: Tue, 28 Apr 2026 19:08:33 -0700
Message-ID: <177742851348.5403.14276719468282572876@localhost.localdomain>
User-Agent: alot/0.12
X-Rspamd-Queue-Id: 68A6248ED26
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-291268-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sboyd@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,dujemihanovic.xyz:email,localhost.localdomain:mid]

Quoting Duje Mihanovi=C4=87 (2026-04-14 12:51:51)
> From: Duje Mihanovi=C4=87 <duje@dujemihanovic.xyz>
>=20
> It has been concluded by comparing the gate clock masks and vendor code
> between PXA1908/28 that PXA1908's APBC, similarly to PXA1928's APBC, has
> controllable reset lines. Describe these in the driver for correctness.
>=20
> Signed-off-by: Duje Mihanovi=C4=87 <duje@dujemihanovic.xyz>
> ---

Applied to clk-next

