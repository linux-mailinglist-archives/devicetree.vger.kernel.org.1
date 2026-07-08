Return-Path: <devicetree+bounces-323235-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id I7DfACfUTmq7UwIAu9opvQ
	(envelope-from <devicetree+bounces-323235-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 00:50:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A93672AF51
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 00:50:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=BYvL55fb;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323235-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-323235-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 84FFD30A0F84
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 22:48:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4CBB315793;
	Wed,  8 Jul 2026 22:48:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EBBD2DEA68
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 22:48:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783550915; cv=none; b=tsQL95WlPdnaRxQ4GpSbiLgbHzoZxPO1tJJrW3iUy4q/qdgbIkChGkI+SjBvikCJEIf0bf6j6z7BnlZRTFRoSWeWqzrM7kpUr8ahphuBu3u9Qy4ZesYWivY1cut8cd8XP8k7bX4IgmhVtYeKw08fSpSsUKitHSe1d8N86WUY210=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783550915; c=relaxed/simple;
	bh=nVyFtOi4uH+VSQ7OUVzMKnF5E+ydsiXz1DVx2dzuQg4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=nxFFocJ/xLt9LqJ9JbpbpbTNYjw4L4Nzg+TRyJZdstmKsw6GwWMDqCcjT7S16f1H1fRc+i3Ul05+eykxQS6Vkn/nw8dKC+ofG5NGLdU95joCiyqNAKiNjaAxLeZh6uy0F8KsgLLMXzmUcK4yGoKaT0YFc8Fy/F3g5a14OtAvcQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BYvL55fb; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 138FC1F00A3D;
	Wed,  8 Jul 2026 22:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783550914;
	bh=aC8ocwpt1hLYHefowuxDf3SVOxacLSz1hrQbtGQsacs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BYvL55fbt8/avqUSJkFtCyLQrn408hc1/F4M2ulAujFThRscn24gB8TpbLSTApjuA
	 wvT2dtEoWWmJGarjibge/GbRfh5+8a+LHqMgRXuZsKkDd5dmGO8V0Au6DOleTJ0g6T
	 Mud5yvPiRfZHLg74cJJKI6ZW5e79wgg6hE1xJjDGsf5kaF9N6Ror9gjwimoosePTDf
	 xvK76xuR8qth4fyyVmwi8PD4CHxLX+NHZtKWSGEOouSS04pRFhrsCikmWIxH9aMoFl
	 wRxcFmjSVk1YO0fCAy8VrKAC0vT3HtgnwUxByvU8lgBqTx6WfnJk/NHwevCHbJrWLp
	 c+ZQvUvLVKV9A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/3] ARM: decompressor: always set endianess on xscale
Reply-To: sashiko-reviews@lists.linux.dev
To: "Linus Walleij" <linusw@kernel.org>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260709-ixp4xx-little-endian-v1-1-e9622d0ba9e4@kernel.org>
References: <20260709-ixp4xx-little-endian-v1-0-e9622d0ba9e4@kernel.org>
 <20260709-ixp4xx-little-endian-v1-1-e9622d0ba9e4@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 22:48:33 +0000
Message-Id: <20260708224834.138FC1F00A3D@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-323235-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:linusw@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4A93672AF51

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Unconditional execution of XScale-specific CP15 cache flush instru=
ctions causes undefined instruction crashes on ARM720T (CLPS711x) CPUs in m=
ultiplatform kernels.
--

--- Patch [1]: [PATCH 1/3] ARM: decompressor: always set endianess on xscal=
e ---
commit 1aecbc0046cda85db7fa4420cfe0c46b23cbc505
Author: Arnd Bergmann <arnd@arndb.de>

ARM: decompressor: always set endianess on xscale

This commit moves the endianness switch code into head-xscale.S to support
booting BE kernels from LE bootloaders, and vice versa. It adds a serializa=
tion
sequence to flip the B bit regardless of its original state. The commit also
notes a potential issue with the existing cache flush code on ARM720T CPUs.

> diff --git a/arch/arm/boot/compressed/head-xscale.S b/arch/arm/boot/compr=
essed/head-xscale.S
> index 20fa44d59f82d..86705c865be6d 100644
> --- a/arch/arm/boot/compressed/head-xscale.S
> +++ b/arch/arm/boot/compressed/head-xscale.S
> @@ -14,6 +14,18 @@ __XScale_start:
> =20
>  		@ Preserve r8/r7 i.e. kernel entry values
> =20
> +		@ set correct endianness for ixp4xx regardless of bootloader
> +		mrc p15, 0, r0, c1, c0, 0
> +#ifdef CONFIG_CPU_BIG_ENDIAN
> +		orr	r0, r0, #(1 << 7)       @ enable big endian mode
> +#else
> +		bic	r0, r0, #0x80
> +#endif
> +		mcr	p15, 0, r0, c1, c0, 0
> +		mrc     p15, 0, r0, c2, c0, 0
> +		mov	r0, r0
> +		sub	pc, pc, #4		@ flush instruction pipeline
> +
>  		@ Data cache might be active.
>  		@ Be sure to flush kernel binary out of the cache,
>  		@ whatever state it is, before it is turned off.

[Severity: High]
This isn't a bug introduced by this patch, but does this XScale-specific
cache flush sequence execute unconditionally on all CPUs in a multiplatform
build?

arch/arm/boot/compressed/head-xscale.S:__XScale_start()
    ...
    mcr p15, 0, r0, c7, c10, 4  @ drain WB
    mcr p15, 0, r0, c7, c7, 0   @ flush I & D caches
    ...

When booting a multiplatform kernel configured with both CONFIG_CPU_XSCALE =
and
CONFIG_CPU_ARM720T on an ARM720T CPU (such as CLPS711x), could this cause a
fatal undefined instruction exception during early boot?

Since these CP15 cache flush instructions are undefined on the ARM720T
architecture and execute before the exception vectors are set up, does this
lead to an unconditional system crash?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709-ixp4xx-lit=
tle-endian-v1-0-e9622d0ba9e4@kernel.org?part=3D1

