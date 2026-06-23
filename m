Return-Path: <devicetree+bounces-314829-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id z+ooAe14Omot9wcAu9opvQ
	(envelope-from <devicetree+bounces-314829-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 14:15:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 54CB86B7012
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 14:15:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=P4fB47qI;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314829-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314829-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DB81B304DCE5
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 12:15:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B42E13D566B;
	Tue, 23 Jun 2026 12:15:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9C013C661A
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 12:15:35 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782216936; cv=none; b=fsr0iKrtTqtb8QxZLvvva6aHvhpSrKSN8YLfdGMZn98eUxbMhQ6/HiCTVp3l22ys81N1vBrYuia/jHSfML40Q1w3Ls+ICj79GMpRzU1bKTpW8V5/up5Nnd7CMUglvJE6oRUe+Uh/VHqd81tSCckqGB9uWM+dpwIzqnwZNs8Hzio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782216936; c=relaxed/simple;
	bh=0PskQQaOeX5KTenREHspdZ8Fn0M9xcrcducjtdHTohQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=gPRrX6OCiDaD67X104zxt06+w/W21jq8niaACuB6UPmW+5L/ilIa3/IyteR77MglfUv6xOw76+koI47E6iXeWqHka2qsnQ1XTBjOSadEjlnpFiTYinXnzNvCXqFmx4QY8EaVf6lc/ZsN7r7wMxUQhwVpNxNPef6izEmB1GIGC5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P4fB47qI; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22A601F000E9;
	Tue, 23 Jun 2026 12:15:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782216935;
	bh=ZKb9R2k+KiLQsQ5MQpTxDmKoG1Qx90CZZkVGXnK3sCU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=P4fB47qIpTZ0DS04Qr07WdB9wL6SPmjjOglH2C5HBBrdMj4coHLVy63PVBErsf95G
	 fxjK336IdQd8CPazmPvPAudbw8fpmj3M3BwqxGnRl9aOsQD9pS0Z9E7nn0hJlXIf1W
	 ovwp2apmq+PwLzjNy3bHUXZGS06J6CGCznDsYeXqYv84Oz7/F2x7z0lvUk82XyXzn9
	 KLCPyOi9eF0CISEjwCNH4/h3ReSgST1F2+haPQeYX7Nkr0Ojqyvv1/LR0XmGRhZpFB
	 t5F1wtjDsl7y+9AFV7MLGR6ggWticoJDqb3aYChAPB/KWlo9zF2ZuCPxcZqtPJSbeV
	 3/eDd0EafgdwA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 07/12] ARM: dts: microchip: sama7d65: Add ADC node
Reply-To: sashiko-reviews@lists.linux.dev
To: "Varshini Rajendran" <varshini.rajendran@microchip.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260623105944.128840-8-varshini.rajendran@microchip.com>
References: <20260623105944.128840-1-varshini.rajendran@microchip.com>
 <20260623105944.128840-8-varshini.rajendran@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 23 Jun 2026 12:15:34 +0000
Message-Id: <20260623121535.22A601F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-314829-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:varshini.rajendran@microchip.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,microchip.com:email,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 54CB86B7012

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The patch introduces a new `vddout25` fixed regulator node in `s=
ama7d65.dtsi`, but this addition is completely undocumented in the commit m=
essage, which exclusively mentions adding the ADC node.
--

commit ee5a93263289a5fcd9ba9faf0c09df7c63701b1d
Author: Varshini Rajendran <varshini.rajendran@microchip.com>

ARM: dts: microchip: sama7d65: Add ADC node

This commit adds the device tree node for the ADC controller in the
sama7d65 SoC.

> diff --git a/arch/arm/boot/dts/microchip/sama7d65.dtsi b/arch/arm/boot/dt=
s/microchip/sama7d65.dtsi
> index 94d49e20dc794..ba775459a816e 100644
> --- a/arch/arm/boot/dts/microchip/sama7d65.dtsi
> +++ b/arch/arm/boot/dts/microchip/sama7d65.dtsi
[ ... ]
> @@ -95,6 +96,16 @@ slow_xtal: clock-slowxtal {
>  		};
>  	};
> =20
> +	vddout25: fixed-regulator-vddout25 {
> +		compatible =3D "regulator-fixed";
> +
> +		regulator-name =3D "VDDOUT25";

[Severity: Medium]
Is this regulator intentionally included in this patch? The commit message
exclusively mentions adding the ADC node, but this adds a new root-level
vddout25 fixed regulator node. Should this be split into a separate commit
or documented in the commit message?

> +		regulator-min-microvolt =3D <2500000>;
> +		regulator-max-microvolt =3D <2500000>;
> +		regulator-boot-on;
> +		status =3D "disabled";
> +	};
> +
>  	ns_sram: sram@100000 {
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260623105944.1288=
40-1-varshini.rajendran@microchip.com?part=3D7

