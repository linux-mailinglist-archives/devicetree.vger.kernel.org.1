Return-Path: <devicetree+bounces-286768-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cNiHNDzp2mk97AgAu9opvQ
	(envelope-from <devicetree+bounces-286768-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Apr 2026 02:37:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC3A3E22D5
	for <lists+devicetree@lfdr.de>; Sun, 12 Apr 2026 02:37:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F1CA33020EF0
	for <lists+devicetree@lfdr.de>; Sun, 12 Apr 2026 00:37:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 361D426AA93;
	Sun, 12 Apr 2026 00:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oz2HYAFP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CCF01E834E;
	Sun, 12 Apr 2026 00:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775954228; cv=none; b=mATPLtFUDCZQwOTtc8pb4POU3DoLnpEXeg0/9/E6IN25ZzI5WQCPm6mhZ+3iNkOsIPXG7v0f6rXeKkMpDEm+NrYtxWAsesotqqkUBJdA7yvo/NfQTvTCe/Mt21zoi/XVyocqiehxBhzgSrMb+loZvie3hyzCbWH5S16ZVq53Ck0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775954228; c=relaxed/simple;
	bh=dvzBqzI3yC8ixbllsTUs8ohe9YV3Md9q1xJFgsT0Lz8=;
	h=Content-Type:MIME-Version:In-Reply-To:References:Subject:From:Cc:
	 To:Date:Message-ID; b=MDw2ywuqa3f+xZGtm5R8EwU3v0depU9owNh3C7bDBLftyaJCvM9J8JsbdGfIg0NNTsvoYn7aBouMxOUOaAqcA1nJg+NNyVCSOzJVES2KZVKSGGGNfOzmrL2As33vDC64FBYTP2Wraiplg6Cphq3SGDI8q5g0/Mw0s/risTtPFqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oz2HYAFP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF5A1C116C6;
	Sun, 12 Apr 2026 00:37:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775954227;
	bh=dvzBqzI3yC8ixbllsTUs8ohe9YV3Md9q1xJFgsT0Lz8=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=oz2HYAFPMRngYKP3o4Y8KekuH0kX0S48VNnjV1az0SDgQgBaz9MguVHhvc9VUVCdx
	 EZ1J3ywvp2xmUX9YGyDpbUpM6l55sDWFzSgHhBmHVdYpxTTecNqhzy5FpTw8GV5eqF
	 Ob/jxr9mMNfCLAGBpJiDB7Hxr3/6EzPzSd3v1Sp7WU19iwPZzFWih3nnGGOsZfGqAS
	 pPLGRLlakUyW4ajPjJW2R4sBdak5TwVe1HwZ1g2UVez4c36ytUPYZUeeRQWpnPmO1B
	 sQxXlD+KaJ21ThJyazvht0Rmp/e3fxCszz/ADqGQYwkLgwI9pZnrRJ/tMa9V0QoSk3
	 v3IoHx/lE3rKw==
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20260409002952.319668-2-marex@nabladev.com>
References: <20260409002952.319668-1-marex@nabladev.com> <20260409002952.319668-2-marex@nabladev.com>
Subject: Re: [PATCH v6 2/6] clk: fsl-sai: Sort the headers
From: Stephen Boyd <sboyd@kernel.org>
Cc: Marek Vasut <marex@nabladev.com>, Brian Masney <bmasney@redhat.com>, Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Michael Turquette <mturquette@baylibre.com>, Michael Walle <michael@walle.cc>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
To: Marek Vasut <marex@nabladev.com>, linux-clk@vger.kernel.org
Date: Sat, 11 Apr 2026 17:37:05 -0700
Message-ID: <177595422591.5403.9495044878522581843@lazor>
User-Agent: alot/0.12
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-286768-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sboyd@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nabladev.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8BC3A3E22D5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Quoting Marek Vasut (2026-04-08 17:29:02)
> Sort the headers. No functional change.
>=20
> Reviewed-by: Brian Masney <bmasney@redhat.com>
> Signed-off-by: Marek Vasut <marex@nabladev.com>
> ---

Applied to clk-next

