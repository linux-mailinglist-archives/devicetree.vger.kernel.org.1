Return-Path: <devicetree+bounces-316575-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6dSqA2WSQWoJsQkAu9opvQ
	(envelope-from <devicetree+bounces-316575-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 23:30:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5126F6D502A
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 23:30:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316575-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316575-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 304F23008A4A
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 21:30:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D6B73B27FA;
	Sun, 28 Jun 2026 21:30:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7522630CD82;
	Sun, 28 Jun 2026 21:30:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782682209; cv=none; b=XfHHTr8tKaW7xynUhmPF8SuDOmpNq2Vn4r1wFiv2Ik/BdSvUh+jIebovApWozONAgp6dqFf7/xDOn7zcjSKN1eF29HQutvh3l6FJloIN3wssswNpn+xFOpTV6WOtvk7wsQyeuORpO8tw87MMvoQqbjki5XfgiTJ9R0Q6Jz2kDPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782682209; c=relaxed/simple;
	bh=YNdUa5VlwRC5S4bgAKVNfM/pN4Mq7ChcrxrUcIE/UpI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=QR40LSTxQRXavExf/h9bU9AdfMpoqLi5ogx/4u1HPVl+S5CqFfyTqMb5GxQNaqazx60sGaW27fUSFKQjJDy2nFoZevVkkKHV0qGtv2yYNg2/2HkmEguwG4YOB8Pkg1rr92LuZHaRbDr2wyE0/9FVs0FdRLpovsBTL1O1ylpGKoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE2CD1F000E9;
	Sun, 28 Jun 2026 21:30:07 +0000 (UTC)
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 6/8] riscv: Enable resctrl filesystem for Ssqosid
Reply-To: sashiko-reviews@lists.linux.dev
To: "Drew Fustini" <fustini@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, linux-rt-devel@lists.linux.dev, robh@kernel.org
In-Reply-To: <20260628-dfustini-atl-sc-cbqri-dt-v3-6-c9c1342fe3cf@kernel.org>
References: <20260628-dfustini-atl-sc-cbqri-dt-v3-0-c9c1342fe3cf@kernel.org>
 <20260628-dfustini-atl-sc-cbqri-dt-v3-6-c9c1342fe3cf@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 28 Jun 2026 21:30:07 +0000
Message-Id: <20260628213007.AE2CD1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-316575-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:fustini@kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:linux-rt-devel@lists.linux.dev,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,vger.kernel.org:from_smtp,sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ALIAS_RESOLVED(0.00)[];
	R_DKIM_NA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5126F6D502A

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] RISCV_ISA_SSQOSID unconditionally selects the user-visible menuc=
onfig RISCV_CBQRI, defeating its prompt and violating Kconfig best practice=
s.
--

commit 6a7bfcfac7becb358efe0bde0c988634f28e5326
Author: Drew Fustini <fustini@kernel.org>

riscv: Enable resctrl filesystem for Ssqosid

This commit enables the resctrl filesystem for the RISC-V Ssqosid extension.
It modifies the RISCV_ISA_SSQOSID config to select ARCH_HAS_CPU_RESCTRL and
RISCV_CBQRI.

> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index ee586925f9722..9c28bcbc29dc9 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -594,6 +594,8 @@ config RISCV_ISA_SSQOSID
>  	bool "Ssqosid extension support for supervisor mode Quality of Service =
ID"
>  	depends on 64BIT
>  	default n
> +	select ARCH_HAS_CPU_RESCTRL
> +	select RISCV_CBQRI

[Severity: Medium]
Is it intentional to use select on RISCV_CBQRI here?

RISCV_CBQRI appears to be defined as a user-visible menuconfig:

drivers/resctrl/Kconfig:
menuconfig RISCV_CBQRI
	bool "RISC-V CBQRI support"
	depends on RISCV && RISCV_ISA_SSQOSID

Using select on a user-visible symbol forces it on and overrides the prompt,
which can create a confusing configuration experience where the option is
visible but cannot be toggled.

Could this be addressed by either using "depends on" instead of select,
or by making RISCV_CBQRI a hidden symbol without a prompt?

>  	help
>  	  Adds support for the Ssqosid ISA extension (Supervisor-mode

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260628-dfustini-a=
tl-sc-cbqri-dt-v3-0-c9c1342fe3cf@kernel.org?part=3D6

