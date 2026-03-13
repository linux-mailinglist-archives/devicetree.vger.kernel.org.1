Return-Path: <devicetree+bounces-275507-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gOOGLpxVtGk4kAAAu9opvQ
	(envelope-from <devicetree+bounces-275507-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 19:21:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 27E82288AEB
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 19:21:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 167F531135AC
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 18:19:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 644CB36164D;
	Fri, 13 Mar 2026 18:19:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="HlmU1vlo"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BF6363C52;
	Fri, 13 Mar 2026 18:19:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773425991; cv=none; b=SlUy21dZLD228PYgi9o3lPhm/1y4vQXEyDRtfvjLag0tSrrhKai32AX9NGMtkRg/Ay/GOhtzh913CEXVA0mBd7F4E8eA/UAtYCaWyRdi28VBGc/6Cd2Bj8LXCSj/bnvAWas02T1IeYmadGhGflyTs6RU02aDGoyyPJwIDKcI7Zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773425991; c=relaxed/simple;
	bh=HKgNDhaBbbTv/+y1AavDqvCj/t0nPjX4gBTDUg9TX6c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=VSids3WAI4kjd6j0wWRQIgAu+qxtaCEOS8USDVNunkKFPNFEkuic90SlwzZSzopXhV24Rr149PPiqtIwHCYMWZQwFXABaliuXc/va+e0ty7sPIQNDSKWj44MaMd2VDEeKrTKbmvMzooDTrmJ5q4ezDgtgFZ2YjA6O8xa2J4dpCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=HlmU1vlo; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=HKgNDhaBbbTv/+y1AavDqvCj/t0nPjX4gBTDUg9TX6c=; b=HlmU1vlo3KIO02qMTLyo611JUA
	GuevmmkW1ZLGjpkbUIKBW/wYpXY4r4MU3RopnV9wal8pRzJkJxYE3kl0UdiI7Gb2dgvITJ25JwOeX
	zr+GJp0GJ2RHEXmlIqbjhv4ZjQfgEMmAeX4PTYKceOjmSzS1zTopO57NDwvwNSidPy0Jx6s32O3n5
	pWl/9HjA85xY6KDyM9j1DraGCE6HZr24XhznLXOxhWaDgripj7ovjc3Bz4mkH03HBzXR8zmjK+JWX
	EQgsCzncfzBMK58BSRm5pw5up7l6joAi+svisTOFsMD2xv6KZvwHvq9EgKVx5jFvi8FYDT3AF0VMj
	vTzCcdYw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Gerald Loacker <gerald.loacker@wolfvision.net>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, michael.riesch@collabora.com
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Michael Riesch <michael.riesch@collabora.com>,
 Michael Riesch <michael.riesch@collabora.com>
Subject:
 Re: [PATCH] arm64: dts: rockchip: enable vicap dvp on wolfvision pf5 io
 expander
Date: Fri, 13 Mar 2026 19:19:39 +0100
Message-ID: <6246776.lOV4Wx5bFT@phil>
In-Reply-To: <20260313-wv-io-expander-vicap-v1-1-11001fb3b744@collabora.com>
References: <20260313-wv-io-expander-vicap-v1-1-11001fb3b744@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275507-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,wolfvision.net:email,collabora.com:email,sntech.de:dkim]
X-Rspamd-Queue-Id: 27E82288AEB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Am Freitag, 13. M=C3=A4rz 2026, 16:53:29 Mitteleurop=C3=A4ische Normalzeit =
schrieb Michael Riesch via B4 Relay:
> From: Michael Riesch <michael.riesch@collabora.com>
>=20
> The Digital Video Port (DVP, the 16-bit variant) of the RK3568 VICAP
> is broken out to the PF5 mainboard expansion header.
> Enable it in the device tree overlay for the WolfVision PF5 IO
> Expander board.
>=20
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>

The From should match the first Signed-off-by line.

All later Signed-off-bys are from "other" people handling the patch,
i.e. that other Michael Riesch ;-)

> Reviewed-by: Gerald Loacker <gerald.loacker@wolfvision.net>
> Tested-by: Gerald Loacker <gerald.loacker@wolfvision.net>
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Michael Riesch <michael.riesch@collabora.com>


Heiko



