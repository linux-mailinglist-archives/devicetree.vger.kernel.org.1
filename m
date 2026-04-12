Return-Path: <devicetree+bounces-286769-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SJwdNUzp2mk97AgAu9opvQ
	(envelope-from <devicetree+bounces-286769-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Apr 2026 02:37:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD943E22EA
	for <lists+devicetree@lfdr.de>; Sun, 12 Apr 2026 02:37:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E24A0300A33C
	for <lists+devicetree@lfdr.de>; Sun, 12 Apr 2026 00:37:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 598AE286419;
	Sun, 12 Apr 2026 00:37:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iUjpQ8Xu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36717263C8F;
	Sun, 12 Apr 2026 00:37:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775954250; cv=none; b=ObFtcKKmn3loJB0KywE9F/jG+drMSdKwCT/Z4iL7iRRbyMLsZm1HW80Kc9BKjcjMeiszPhaOjAEJ6eCHchTagzewFXBRsDWmBAH/C8/paVMqBxkn0uTyiCdjW1+e01pMCtZ+f5QrQPl8QCXNDW2r1HSTZpOCOxdDEJ7NTt3V140=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775954250; c=relaxed/simple;
	bh=cSKz+/WHt0qIrzm2fpQBx3i5Gu/Na46f3Hj4Sy4Eyf0=;
	h=Content-Type:MIME-Version:In-Reply-To:References:Subject:From:Cc:
	 To:Date:Message-ID; b=A5kRGikZ/adnVE82IVSQ6HIYYq+agK9JWaGQNO+EYpb3LIsXJSQQV2g6A+uOIvDVhd6ROzri4ul78xMeTbznzPTnyD4MKpEteRCyqdfiA7ZznZUmcg1LLzHlRwQhjgNbyKzdrqf9RFNGXP2ZAkEjU5qrCoy/zUba4TNJnxmv/vA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iUjpQ8Xu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C920DC116C6;
	Sun, 12 Apr 2026 00:37:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775954249;
	bh=cSKz+/WHt0qIrzm2fpQBx3i5Gu/Na46f3Hj4Sy4Eyf0=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=iUjpQ8XuzJ/36XgmdaoTR44Un1j3yZwzefxZBFqtgha8job6K/LlkVsom4NoABDeq
	 66eK8ym2qbYb3rWeDqNoYVV3NOkEMUcL+IhaJSAHsXJWPvPhgLopIYG9oiSBIg7O9M
	 qchYOT0qgf50sjqq4QQYvcCqEJ1VYoWrviTvj0siCfRVLZ2oUKb8vkzd4nnQ+n0A6v
	 vpOoQCVUzenZIu6RGfZHONRIOPyPtZqRpSWFJVJRIZobywdWDWDavHCK1Wh/Ggkegq
	 V6+At0Oawo3sluZLd1ogifkZTiRV8Kkf5cMzaIxlNjGSkZCP3jbtEZdVc9qYHFKvyD
	 d3ItmeztU50ng==
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20260409002952.319668-4-marex@nabladev.com>
References: <20260409002952.319668-1-marex@nabladev.com> <20260409002952.319668-4-marex@nabladev.com>
Subject: Re: [PATCH v6 4/6] dt-bindings: clock: fsl-sai: Document clock-cells = <1> support
From: Stephen Boyd <sboyd@kernel.org>
Cc: Marek Vasut <marex@nabladev.com>, Conor Dooley <conor.dooley@microchip.com>, Brian Masney <bmasney@redhat.com>, Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Michael Turquette <mturquette@baylibre.com>, Michael Walle <michael@walle.cc>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
To: Marek Vasut <marex@nabladev.com>, linux-clk@vger.kernel.org
Date: Sat, 11 Apr 2026 17:37:27 -0700
Message-ID: <177595424785.5403.4227112126862034778@lazor>
User-Agent: alot/0.12
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-286769-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,nabladev.com:email,microchip.com:email]
X-Rspamd-Queue-Id: 7DD943E22EA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Quoting Marek Vasut (2026-04-08 17:29:04)
> The driver now supports generation of both BCLK and MCLK, document
> support for #clock-cells =3D <0> for legacy case and #clock-cells =3D <1>
> for the new case which can differentiate between BCLK and MCLK.
>=20
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Marek Vasut <marex@nabladev.com>
> ---

Applied to clk-next

