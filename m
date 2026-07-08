Return-Path: <devicetree+bounces-322760-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +IHqHvE0TmraHgIAu9opvQ
	(envelope-from <devicetree+bounces-322760-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 13:30:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C88F47254A2
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 13:30:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="asoJyN/T";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322760-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-322760-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D93A9300A8D4
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 11:26:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69E0B3C7E1B;
	Wed,  8 Jul 2026 11:26:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D833B1008
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 11:26:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783509965; cv=none; b=tWULVAprx40qGaU1E4H+37X//drS2UXrBcOAO1UeSoG6KOxiw+s51WdfnyEu6HWqU4GfUDLVhsfa28KYL9apLqB0rswyX7PZLfI6e0pyQ0EY4gCalAlGH/gPJpEOz7TR1sGYkmIk8iF3dhnzVOpEGXVdiSnpOJqTZmdIX6n3qTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783509965; c=relaxed/simple;
	bh=QO33UR4MpyxXJ+1zRhwyYWC49aXXgBuqfDAtJ3tjUsA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=BHI0XoOWp8wEQKwbtNExU1gyyQfz9C0SDpw8MkpvzGPUZ4H9mTXABzG2d267zTOSy2G58gjHo8NiMJB4aOixHtV7YfpRtE7CmmnhfnaPbLhrGNSvlAFqvwo7hyR3mxfuge1S5DDgUKVesDvt1owikVXOOMwSfl5fLnJuOO13n5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=asoJyN/T; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9532D1F000E9;
	Wed,  8 Jul 2026 11:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783509963;
	bh=Zc3b5fnYyWHCwjhBInzxozcWrEMRySvEgcRteaaZ0Uw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=asoJyN/Ty0gnmqcLIuNWUzrp+znAFciUTcwhZOTRAtUYlQh3neepZdbmI5jAp8FmK
	 hLJ5/zq/AVibirZqycFCr7hUBdwllqbjWNBwP8cAfLTMjl2Lxz43zeRD2MAtaboCYH
	 /4dodGIfmi7XDWN4bF3/qTptAuxi1U9UEBYAEciz31xz5U+p1T53VMNmVF3hJWhygD
	 mvGRpduZOq+l6EE1vk+sM/MMTvQB2A9N8tc00kmGexTuHut6DZ+ewtAmWVRj54KThA
	 QjyMtdiYAUKwaWchz+qznpecukiklq1EuClXqwsfvIxJ5FKBVpPt5rEtl3oL8QVCqA
	 5w4mJ10zrBBYw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/2] serial: 8250_mtk: honor DT serial aliases
Reply-To: sashiko-reviews@lists.linux.dev
To: "Carlo Caione" <ccaione@baylibre.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260708-ccaione-genio-serial-aliases-v1-2-bf22229e9383@baylibre.com>
References: <20260708-ccaione-genio-serial-aliases-v1-0-bf22229e9383@baylibre.com>
 <20260708-ccaione-genio-serial-aliases-v1-2-bf22229e9383@baylibre.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 11:26:02 +0000
Message-Id: <20260708112603.9532D1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322760-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:ccaione@baylibre.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,baylibre.com:email,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C88F47254A2

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Runtime PM APIs are invoked from the UART PM callback before runti=
me PM is enabled, causing circular dependencies during probe.
--

--- Patch [2]: [PATCH 2/2] serial: 8250_mtk: honor DT serial aliases ---
commit 74b06e9bc5c00de637cbaa988a6208e3815ff355
Author: Carlo Caione <ccaione@baylibre.com>

serial: 8250_mtk: honor DT serial aliases

The Genio board DTs provide serial aliases for all enabled UARTs, but
the MTK 8250 driver still registered every port with the default line
number. If uart0 deferred and another UART probed first, the 8250 core
could still assign ttyS0 to the wrong port despite the DT aliases.

Read the serial alias during OF probe and seed uart.port.line before
registering the port so the 8250 core reserves the requested ttyS slot.

> diff --git a/drivers/tty/serial/8250/8250_mtk.c b/drivers/tty/serial/8250=
/8250_mtk.c
> index e6a56cf54ae0c..841d64f6a7071 100644
> --- a/drivers/tty/serial/8250/8250_mtk.c
> +++ b/drivers/tty/serial/8250/8250_mtk.c
[ ... ]
> @@ -575,6 +576,10 @@ static int mtk8250_probe(struct platform_device *pde=
v)
>  #endif
> =20
>  	if (is_of_node(fwnode)) {
> +		line =3D of_alias_get_id(pdev->dev.of_node, "serial");
> +		if (line >=3D 0)
> +			uart.port.line =3D line;
> +
>  		/* Disable Rate Fix function */
>  		writel(0x0, uart.port.membase +
>  			(MTK_UART_RATE_FIX << uart.port.regshift));

[Severity: High]
This isn't a bug introduced by this patch, but registering the 8250 port
before enabling runtime PM causes circular dependencies during device probe.

During port registration, the serial core can synchronously invoke the port=
's
.pm callback (mtk8250_do_pm()). The mtk8250_do_pm() callback executes
pm_runtime_get_sync() and pm_runtime_put_sync_suspend() on an uninitialized
device:

drivers/tty/serial/8250/8250_mtk.c:mtk8250_do_pm() {
    ...
    if (!state)
        pm_runtime_get_sync(port->dev);
    ...
}

This happens further down in mtk8250_probe():

drivers/tty/serial/8250/8250_mtk.c:mtk8250_probe() {
    ...
    data->line =3D serial8250_register_8250_port(&uart);
    if (data->line < 0)
        return data->line;

    data->rx_wakeup_irq =3D platform_get_irq_optional(pdev, 1);

    pm_runtime_set_active(&pdev->dev);
    pm_runtime_enable(&pdev->dev);
    ...
}

Could pm_runtime_enable() be called before serial8250_register_8250_port()
to prevent hung worker threads and indefinitely blocked probe tasks?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-ccaione-ge=
nio-serial-aliases-v1-0-bf22229e9383@baylibre.com?part=3D2

