Return-Path: <devicetree+bounces-311890-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id y6tHCuLqL2r9IwUAu9opvQ
	(envelope-from <devicetree+bounces-311890-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 14:06:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E958685F90
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 14:06:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Rkq3wNn9;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311890-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-311890-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D75843002FA9
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 12:02:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5320A37DEA8;
	Mon, 15 Jun 2026 12:02:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D604314D34
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 12:02:27 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781524948; cv=none; b=LXa/ejLdChD0I3KsLg2BCoaJ2tgTCg9VupbH3PDI37mbXzouwVH9BDmGTbaYHseYx5fI/9tAgPTEg8BHIUvJDOqPLjHQE4ZmtuaSKjSVCTyz+oZlpJhgiiY4yaPKi3TC3jMZpRMGFqBNS995nsD6kpYD3Prp4GEsIhxEbK/C91c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781524948; c=relaxed/simple;
	bh=JabcIFDWHCK1PsNFIrYquqiojPWEDu1RpMqYHQd2zhg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=RU9ZoD7KkwZ69I9ZfStqrvHNYNz7fMOhd/x5j/EY1kOm55xpYqgbw9n2wHZk7fSCBasMj2gDRO2zLIk0pFkkuOS3DWTd14sQ7zLeYHYU5J6vApur/S70NQW8NxAFLcKHtkwkeNzG2Xask3ff/8jjdtgk6p2KirPvs4aS/wwcNtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rkq3wNn9; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A17EC1F000E9;
	Mon, 15 Jun 2026 12:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781524946;
	bh=RmDX/M7xnJb4C3pQTkG+hyxAiz9urY8oyK+fzzAo/RA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Rkq3wNn9ED9SQcv0kIqL0iUYyz6rWSi1qFqbdUPyWzfDP2nEyrimGcn+Pa1y6sQoj
	 vdmSctfkT9rbk14f6gMyiIuPt4RuGXn1GNAThE75bIbGqMdSxSsZ5u9YrtRJJBdviO
	 ygbO7UBTIH00LcrOuqomMhM+0l5v+U7pPzeZVFA2ECZtuTZ4L+jIAyCnDXEew8s0Rv
	 THII9EtFQN2u7J9pehTo7SbH5PERRxJ5SyV0AuOG0XHJhRzeQb77X3K3vHxC9P6J6t
	 j/nlYa/H0u03Tjs5GDyT9VTH2gqfgYcj4LLncNaXcv3Fn80SJquZghuot5H3MIiWN9
	 SVzjIS7lST11Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 5/5] arm64: dts: renesas: Add LCDC overlays for
 RZ/T2H and RZ/N2H EVKs with ADV7513
Reply-To: sashiko-reviews@lists.linux.dev
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, wsa+renesas@sang-engineering.com, conor+dt@kernel.org
In-Reply-To: <20260615115455.1412098-6-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260615115455.1412098-6-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 12:02:26 +0000
Message-Id: <20260615120226.A17EC1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:prabhakar.csengg@gmail.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:wsa+renesas@sang-engineering.com,m:conor+dt@kernel.org,m:prabhakarcsengg@gmail.com,m:wsa@sang-engineering.com,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-311890-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6E958685F90

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] Mismatch between commit message and implementation regarding LED=
9.
- [Low] Typo in the overlay header comment swapping I2C1 SDA and SCL pin ma=
ppings.
--

commit ab4b9f4219de83b53cbe289e906c4c7c0bf82541
Author: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
arm64: dts: renesas: Add LCDC overlays for RZ/T2H and RZ/N2H EVKs with ADV7=
513

Add DT overlay support enabling the DU/LCDC pipeline on the RZ/T2H and RZ/N=
2H
evaluation kits.

> diff --git a/arch/arm64/boot/dts/renesas/r9a09g087m44-evk-cn20-lcdc.dtso =
b/arch/arm64/boot/dts/renesas/r9a09g087m44-evk-cn20-lcdc.dtso
> new file mode 100644
> --- /dev/null
> +++ b/arch/arm64/boot/dts/renesas/r9a09g087m44-evk-cn20-lcdc.dtso
> @@ -0,0 +1,50 @@
[ ... ]
> +/*
> + * RZ/N2H LCDC configuration:
> + * ----------------------------------------------------------
> + * Function        Pin     SW Setting
> + * ----------------------------------------------------------
> + * LCDC_DATG0     P11_0, DSW12[3]: ON, DSW12[4]: OFF
> + * LCDC_DATG3     P14_3, DSW18[5]: OFF, DSW18[6]: ON
> + * LCDC_DATG6     P14_6, DSW15[8]: ON, DSW15[9]: OFF, DSW15[10]: OFF
> + * LCDC_DATB2     P18_1, DSW18[9]: OFF, DSW18[10]: ON
> + * I2C_SDA1       P03_3, DSW7[1]: ON, DSW7[2]: OFF
> + * I2C_SCL1       P03_4, DSW7[3]: ON, DSW7[4]: OFF
> + * ------------------------------------------------
> + */

[Severity: Low]
This isn't a bug, but is there a typo in the I2C1 pin mappings documented
here?  The base hardware pinmux assigns SCL to P03_3 and SDA to P03_4, which
suggests these comments have SDA and SCL swapped.

> diff --git a/arch/arm64/boot/dts/renesas/r9a09g087m44-rzn2h-evk.dts b/arc=
h/arm64/boot/dts/renesas/r9a09g087m44-rzn2h-evk.dts
> --- a/arch/arm64/boot/dts/renesas/r9a09g087m44-rzn2h-evk.dts
> +++ b/arch/arm64/boot/dts/renesas/r9a09g087m44-rzn2h-evk.dts
[ ... ]
> -#if LED9
>  		led-9 {
> +#if LED9
>  			/*
>  			 * USER_LED1
>  			 * DSW15-5: OFF, DSW15-6: ON
> @@ -185,8 +187,10 @@ led-9 {
>  			color =3D <LED_COLOR_ID_GREEN>;
>  			function =3D LED_FUNCTION_DEBUG;
>  			function-enumerator =3D <1>;
> -		};
> +#else
> +			status =3D "disabled";
>  #endif
> +		};

[Severity: Medium]
Is this base DTS conditional for led-9 actually utilized by the overlay?

The commit message states that moving this conditional allows the LCDC
overlay to reference and disable LED9 when its pin is reassigned to display
functions. However, the overlay (r9a09g087m44-evk-cn20-lcdc.dtso) does not
reference or disable led-9. Additionally, the display functions do not
reassign LED9's pin (P14_7) since LCDC_DATG7 uses P17_6.

Does the commit message need updating to match the implementation, or should
led-9 be disabled in the overlay?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260615115455.1412=
098-1-prabhakar.mahadev-lad.rj@bp.renesas.com?part=3D5

