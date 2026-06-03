Return-Path: <devicetree+bounces-306119-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id K2jyHqD2H2pQtQAAu9opvQ
	(envelope-from <devicetree+bounces-306119-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 11:40:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 695EF6363D2
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 11:40:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306119-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306119-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0EE50302A2AA
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 09:30:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5548E407CC7;
	Wed,  3 Jun 2026 09:30:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BDAD37BE7D
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 09:30:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780479003; cv=none; b=aVmt77LIG3d7NOu7n3ffxbKh94Yw4vv9io04CjWOumZldkslNvE0DgsSpx4c4LzxlWk8xODaEKpDM4t0H/lo3Zbn4HRWrkn9fQUABlwmTIDj7jSvbmNyINJmg0/+Rl9fU7jrPwUqpEzo/TX8/S/t6RnezL5uGpISkITCLD5VTW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780479003; c=relaxed/simple;
	bh=iZd1OibMe75xCmPPb03hmfw7qE0OpJdDXoswov6g6C0=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=TI0tP+UtoyZHrVLpqId1CKiIj2NNNJH2pAc7327YeLLqD7+4A1/0jy0jrR6JXCwRURxxG6wF6P/8jRfzSP73wVdyBoTxu8xWqsgj+mMFKcgyuXghiEccidW/idyMVdMrHp02lv+2dMiK2gRu2umRq4LRJVTJXDxWldEleD3Scfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1wUhv8-0002lO-C5; Wed, 03 Jun 2026 11:29:54 +0200
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1wUhv8-000tH7-0z;
	Wed, 03 Jun 2026 11:29:54 +0200
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1wUhv8-000000004mc-0y0H;
	Wed, 03 Jun 2026 11:29:54 +0200
Message-ID: <f66d479a4f97e1768067b6dc83b23a78cff8cb7c.camel@pengutronix.de>
Subject: Re: [PATCH 3/4] dt-bindings: bus: add brcm,bcm6362-wlan
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Alessio Ferri <alessio.ferri@mythread.it>, 
 =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?=
	 <zajec5@gmail.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Florian Fainelli
	 <florian.fainelli@broadcom.com>
Cc: linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org, 
	devicetree@vger.kernel.org
Date: Wed, 03 Jun 2026 11:29:54 +0200
In-Reply-To: <20260529-add-bcm6362-wlan-v1-3-722242777f58@gmail.com>
References: <20260529-add-bcm6362-wlan-v1-0-722242777f58@gmail.com>
	 <20260529-add-bcm6362-wlan-v1-3-722242777f58@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-306119-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_RECIPIENTS(0.00)[m:alessio.ferri@mythread.it,m:zajec5@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:florian.fainelli@broadcom.com,m:linux-kernel@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[mythread.it,gmail.com,kernel.org,broadcom.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[p.zabel@pengutronix.de,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[p.zabel@pengutronix.de,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	R_DKIM_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp,pengutronix.de:from_mime,pengutronix.de:mid,mythread.it:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 695EF6363D2

On Fr, 2026-05-29 at 02:06 +0200, Alessio Ferri wrote:
> Document the binding for the SHIM bridge that gates the on-chip
> 2.4 GHz WLAN block of the Broadcom BCM6362 SoC. The bridge owns the
> SHIM peephole, a single clock for the macro, and two resets (the
> SHIM macro itself and its ubus side). It is also a bus: it carries
> one brcm,bus-axi child describing the bcma backplane behind the
> SHIM, with a standard interrupt-map routing the d11 core's IRQ to
> the SoC interrupt controller.
>=20
> Assisted-by: Claude:claude-4.8-opus
> Signed-off-by: Alessio Ferri <alessio.ferri@mythread.it>
> ---
>  .../devicetree/bindings/bus/brcm,bcm6362-wlan.yaml | 106 +++++++++++++++=
++++++
>  1 file changed, 106 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/bus/brcm,bcm6362-wlan.yaml=
 b/Documentation/devicetree/bindings/bus/brcm,bcm6362-wlan.yaml
> new file mode 100644
> index 000000000000..c8d49ccdd2c1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/bus/brcm,bcm6362-wlan.yaml
> @@ -0,0 +1,106 @@
[...]
> +  resets:
> +    items:
> +      - description: SHIM macro reset
> +      - description: SHIM ubus reset
> +
> +  reset-names:
> +    items:
> +      - const: shim
> +      - const: shim-ubus

The "shim" prefix is superfluous. Why not call them "macro" and "ubus"
and match the description?

regards
Philipp

