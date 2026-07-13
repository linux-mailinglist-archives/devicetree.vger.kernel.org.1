Return-Path: <devicetree+bounces-325668-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id l/wHIkIKVWocjQAAu9opvQ
	(envelope-from <devicetree+bounces-325668-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 17:54:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A1F74D4D8
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 17:54:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=KRLzLXsp;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325668-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325668-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A31B9303B4E5
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 15:52:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F360D23394D;
	Mon, 13 Jul 2026 15:52:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517EB2D249B
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 15:52:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783957950; cv=none; b=oUg+Dt5qr86NhJVNp6vE7GAe/KSMJ7KbbiZ4wk4Vs4t1iMftbOc5LAGukyq1SqS99q+tJcoimbUnb/MgZqdB5aKGztY3PyAWV9SkQKXGo2MSfcQdfXx0aFeHSxppq/9JdlYCHLgWkPkZF1IaS+cRGWH6txhi6hDqjMFX3RAolSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783957950; c=relaxed/simple;
	bh=lbDeMEWFgMOYRHs3ST88mS4vkVdk7bwun4Js1va23AQ=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=QXKoPpMlNf4+wrCdloe3AASCJtSpnU7jfGP05XMkqj6AZOIteSD50mhpUhNMACSds00E7HjmRV6oUWfG8x7+2+IyCF3vF5Nff6XFlHaTqYHhqzn18EGkeO9bbwiI0bCexLc0RnRbZURDY5GCcR8r5KQdzFkv6MgRVGv8RAahs54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=KRLzLXsp; arc=none smtp.client-ip=185.171.202.116
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id AF0FBC2BB14;
	Mon, 13 Jul 2026 15:52:40 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 93B9160345;
	Mon, 13 Jul 2026 15:52:24 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id AEAB111BD22AD;
	Mon, 13 Jul 2026 17:52:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1783957943; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=KFNvTgSOaIofZGokjnrOm+/+KhGzebARxZ9cUDDgJek=;
	b=KRLzLXspi+LaoNuCOi/KxgDaZK4Km288kw0do2R+A40umXssaMotiITXLTLj2QU8syI7r7
	c66cqbURNCQBA7pEqeSfRmTDGR8n7OhNn2YHmwwLnWaa981l3mJaUjkOjO3rlIM6xJocZC
	oXtiNYjQJfIFdpwiP9QkWQO8jDrPyL4B8zG9KpPDhUEU+2vteF2KN4eKpu9xgP2Yew39Rt
	eJ7WYN2ozxmu9A5S8AT3IJjR0A+tVJpeXF5GbfUG1X52kAZYBLN46Y/8NjDk8WkDR6Ose5
	bta9jquD/OuHNlM+Im4tX5AT5LHAXZF4sBZPU3r8jCd2IaYcOvLMUGsNxkYLQA==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, Andrew Lunn
 <andrew@lunn.ch>, Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v2 3/3] ARM: dts: marvell: orion5x: Correct indentation
In-Reply-To: <20260706180333.648401-6-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260706180333.648401-4-krzysztof.kozlowski@oss.qualcomm.com>
 <20260706180333.648401-6-krzysztof.kozlowski@oss.qualcomm.com>
Date: Mon, 13 Jul 2026 17:52:22 +0200
Message-ID: <871pd67uq1.fsf@BLaptop.bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-325668-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.kozlowski@oss.qualcomm.com,m:andrew@lunn.ch,m:sebastian.hesselbarth@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:sebastianhesselbarth@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,lunn.ch,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[gregory.clement@bootlin.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregory.clement@bootlin.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:url,bootlin.com:from_mime,bootlin.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,qualcomm.com:email,BLaptop.bootlin.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 05A1F74D4D8

Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com> writes:

> Correct spaces or mix of tabs+spaces into proper tab-indented lines.
> No functional impact (same DTB).
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>

Applied on mvebu/dt

Thanks,

Gregory
> ---
>
> Ongoing bigger work for all bindings and DTS with built-in checker (dt-ch=
eck-style).
> ---
>  arch/arm/boot/dts/marvell/orion5x-lacie-d2-network.dts        | 2 +-
>  arch/arm/boot/dts/marvell/orion5x-maxtor-shared-storage-2.dts | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/boot/dts/marvell/orion5x-lacie-d2-network.dts b/arc=
h/arm/boot/dts/marvell/orion5x-lacie-d2-network.dts
> index 12a4aac2633e..9757c3b57de6 100644
> --- a/arch/arm/boot/dts/marvell/orion5x-lacie-d2-network.dts
> +++ b/arch/arm/boot/dts/marvell/orion5x-lacie-d2-network.dts
> @@ -109,7 +109,7 @@ flash@0 {
>  		compatible =3D "cfi-flash";
>  		reg =3D <0 0x80000>;
>  		bank-width =3D <1>;
> -                #address-cells =3D <1>;
> +		#address-cells =3D <1>;
>  		#size-cells =3D <1>;
>=20=20
>  		partition@0 {
> diff --git a/arch/arm/boot/dts/marvell/orion5x-maxtor-shared-storage-2.dt=
s b/arch/arm/boot/dts/marvell/orion5x-maxtor-shared-storage-2.dts
> index cb1bd24b7ae3..b2b3309ed1df 100644
> --- a/arch/arm/boot/dts/marvell/orion5x-maxtor-shared-storage-2.dts
> +++ b/arch/arm/boot/dts/marvell/orion5x-maxtor-shared-storage-2.dts
> @@ -69,7 +69,7 @@ flash@0 {
>  		compatible =3D "cfi-flash";
>  		reg =3D <0 0x40000>;
>  		bank-width =3D <1>;
> -                #address-cells =3D <1>;
> +		#address-cells =3D <1>;
>  		#size-cells =3D <1>;
>  	};
>  };
> --=20
> 2.53.0
>

--=20
Gr=C3=A9gory CLEMENT, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

