Return-Path: <devicetree+bounces-324534-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 36xuCGoSUWom/AIAu9opvQ
	(envelope-from <devicetree+bounces-324534-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 17:40:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AFAB73C58E
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 17:40:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=fep2fAtn;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324534-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324534-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2B05A3004608
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 15:39:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81FDA431E4A;
	Fri, 10 Jul 2026 15:39:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E80B431E56;
	Fri, 10 Jul 2026 15:39:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783697987; cv=none; b=F47I6aa/b/8+s8SM6+3eDqB3O5cvmUKIDxjusQCzf924KDvRH0YJJKLFD/inBilajwYgmyOQwHU+dAEqWt9AcE0gJR9H8/ss9AjVIl1+s7i9xsuWJqz9GUa7BP69w3lb3DYJQMIQjWIeSsA1oXlP8DBDWz93NNBTDHRhOj0PDiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783697987; c=relaxed/simple;
	bh=PorsUNIgEMb5WQutXDPX0Re7VSpU+Sr1gQrIwAFyR60=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=up0sdRutzYm31RRYSVY7r1Ub4Ae5yPwLuJZBYX9tLSiOM/3JbtMmWaRkl0KBdNbRFNo67YN2wf6K+B0qFqNqvuBmdP9D2ajvx+blWdsfNwigv8FZUkP3ULI1stJGCrtdhGe49zgWnoLohKWwCNykCzkXSBmDPZaTkWmaLgj8kgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fep2fAtn; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFC9B1F000E9;
	Fri, 10 Jul 2026 15:39:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783697985;
	bh=SxKLbvcKyn+b6O4FZvqyxQUYwjdhUFnDzV3hIqoGRhM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fep2fAtn7NvR6YX54CEPwb2GyY4e1HxdaAKYgDwMN3Qsq7j/A8OpeAQxIAs7Tn0eD
	 N5n/wExyJ+ty1m8wnrhp9umvsSqKoxiIhd9d6lIMzy5mt+I84FMNQkfYbmsizCBGtS
	 Ey0GZcSl8237z84GgCO75pkvoi8IsggiGGEmgToDwFfG4hF5YBswVK/W6my6TXOwKU
	 wBk4p/lrNDC54RfSg3WrbZCpreK5mFZiT7YgKvpfDUc4f06y/MANgrMLaZoj+76VeY
	 +7cqMAoHsevNcu7wzciwWprZ7Tp0KLTlYzPXdKPTeTkz5Fjfsf7oMm+d9spw4Pi0E4
	 pSyZoLihiPsSw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/5] arm: dts: st: Import optee node from u-boot device
 trees
Reply-To: sashiko-reviews@lists.linux.dev
To: "Mathieu Dubois-Briand" <mathieu.dubois-briand@bootlin.com>
Cc: imx@lists.linux.dev, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, Frank.Li@kernel.org
In-Reply-To: <20260710-mathieu-uboot-dts-import-v1-2-ffe0210e50c9@bootlin.com>
References: <20260710-mathieu-uboot-dts-import-v1-0-ffe0210e50c9@bootlin.com>
 <20260710-mathieu-uboot-dts-import-v1-2-ffe0210e50c9@bootlin.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Jul 2026 15:39:44 +0000
Message-Id: <20260710153944.BFC9B1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-324534-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,lists.linux.dev:replyto,sashiko.dev:url,bootlin.com:email];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mathieu.dubois-briand@bootlin.com,m:imx@lists.linux.dev,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:Frank.Li@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2AFAB73C58E

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Missing `bootph-pre-ram` property in the newly added `optee@fe0000=
00` reserved memory node for `stm32mp157c-ed1.dts`, which will cause U-Boot=
 to strip the reservation during SPL and pre-relocation, leading to memory =
corruption.
--

--- Patch [2]: [PATCH 2/5] arm: dts: st: Import optee node from u-boot devi=
ce trees ---
commit e001824900768a597c1390aaf3fe0b9e2c46bdd1
Author: Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>

arm: dts: st: Import optee node from u-boot device trees

U-Boot is importing kernel device trees for these platforms, but adding
a firmware node to enable communication with OP-TEE. Importing
changes here will allow to remove these additions in U-Boot.

[ ... ]

> diff --git a/arch/arm/boot/dts/st/stm32mp157c-ed1.dts b/arch/arm/boot/dts=
/st/stm32mp157c-ed1.dts
> index 49dd555cc228c..7da7260350869 100644
> --- a/arch/arm/boot/dts/st/stm32mp157c-ed1.dts
> +++ b/arch/arm/boot/dts/st/stm32mp157c-ed1.dts
> @@ -70,6 +70,18 @@ retram: retram@38000000 {
>  			reg =3D <0x38000000 0x10000>;
>  			no-map;
>  		};
> +
> +		optee@fe000000 {
> +			reg =3D <0xfe000000 0x02000000>;
> +			no-map;
> +		};

[Severity: High]
Does this optee reserved memory node also need the bootph-pre-ram property
like the one added for stm32mp157a-dk1.dts?

Without the bootph-pre-ram property, U-Boot's fdtgrep utility strips the
optee reserved-memory node from the SPL and pre-relocation device trees.

Because U-Boot typically relocates itself to the top of available RAM (which
on this platform overlaps with 0xfe000000), omitting this reservation could
allow U-Boot to allocate over OP-TEE's secure memory region, potentially
causing data corruption or TrustZone violations.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260710-mathieu-ub=
oot-dts-import-v1-0-ffe0210e50c9@bootlin.com?part=3D2

