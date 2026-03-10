Return-Path: <devicetree+bounces-273334-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6HnwL93Sr2kfcgIAu9opvQ
	(envelope-from <devicetree+bounces-273334-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:14:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6882471AC
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:14:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2225E30498C7
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 08:10:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D4F93ED118;
	Tue, 10 Mar 2026 08:10:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="Rl0u10Hm"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5ACB3D522E;
	Tue, 10 Mar 2026 08:10:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773130227; cv=none; b=Eesuv6mpJmw0+llL7GDycofQ32LESNFoQig1I6i+ym7GksyrtMOdFkP+xK6MOYPW+sFDZSm8C1DfCiYltENxDRDgmBfB0BnilKYXqNq6Q421S7NPmGjMWSqJ/cWFPAkK1+z+WS75vTUq3m6jEoBpsMEvnRppAuQsRvwl+TAl85g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773130227; c=relaxed/simple;
	bh=dnvREde6rHd6POwcPXSEnlbNR/eimYnJ9KiUjrbSvQ4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=TzpB3tD2XcH8tLsWFd3c6tRMU6fOjMtrHhU+b5VCYSTJ7l7rH6EOQ09q7s+umZ68rBbRQUM5UZyt3F3AEhuXQSUpJSq/SzWYU2JJVkeWnMd/lmrnCu1g+oQFS90v2N8rBoHbVQoU3j8f4Z9zT3+QRmG+0HMFD22lJnNu4FU6IiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=Rl0u10Hm; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=u2JbPuBQfVVrqAyFn6+Ok3RHzDHu68StBB+N0kby2fE=; b=Rl0u10Hm5SZ1vAkUV9fPPGKfQ4
	kpA9MPAa4HaWwnRLz4gHunZBdy8dHScj3rlyn9OBbLVB2qwqoKqoPK9cxRrHFSJcixf/27+Ztlwzo
	A7WsohJl2koBQD/YEyIs+xk3wEIbE7/OOMMbxG1Zj6HvNR4NacO54yYQwR3gDNLKC4JncmsZ2cyC0
	jbDreh+DEbcKdDRrKV5mfTQkaOpIiCzJY99NaHPgG9epN8D073HEeRWtPkgX8Z+OkBo4ylsg//0sa
	IKg1NDnW9j1AhtBRCOvdls1IaAtYPuaqbLoPYFBFysDpkW7+wed7l37yY2pJHKxO+4ItYYfk+VPCR
	4s1elvMw==;
From: Heiko Stuebner <heiko@sntech.de>
To: linux@roeck-us.net, Fabio Estevam <festevam@gmail.com>
Cc: wim@linux-watchdog.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-watchdog@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Fabio Estevam <festevam@nabladev.com>
Subject:
 Re: [PATCH v2] dt-bindings: watchdog: rockchip: Add RV1103B compatible
Date: Tue, 10 Mar 2026 09:10:14 +0100
Message-ID: <118210937.nniJfEyVGO@phil>
In-Reply-To: <20260310002040.417424-1-festevam@gmail.com>
References: <20260310002040.417424-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Queue-Id: 2D6882471AC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273334-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[roeck-us.net,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

Am Dienstag, 10. M=C3=A4rz 2026, 01:20:40 Mitteleurop=C3=A4ische Normalzeit=
 schrieb Fabio Estevam:
> From: Fabio Estevam <festevam@nabladev.com>
>=20
> The RV1103B watchdog is compatible with the existing DesignWare Watchdog
> binding. Add the rockchip,rv1103b-wdt compatible string.
>=20
> Signed-off-by: Fabio Estevam <festevam@nabladev.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
> Changes since v1:
> - Fixed a typo in the devicetree mailing list address.
>=20
>  Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml =
b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> index 609e98cdaaff..141c72909b15 100644
> --- a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> @@ -33,6 +33,7 @@ properties:
>                - rockchip,rk3568-wdt
>                - rockchip,rk3576-wdt
>                - rockchip,rk3588-wdt
> +              - rockchip,rv1103b-wdt
>                - rockchip,rv1108-wdt
>                - rockchip,rv1126-wdt
>            - const: snps,dw-wdt
>=20





