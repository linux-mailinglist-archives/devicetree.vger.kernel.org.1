Return-Path: <devicetree+bounces-317992-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id R3VJEaj8Q2pimwoAu9opvQ
	(envelope-from <devicetree+bounces-317992-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 19:28:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D32136E6E71
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 19:28:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=XoWnQahX;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317992-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-317992-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 904E430074CB
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 17:24:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 653143AA1B5;
	Tue, 30 Jun 2026 17:24:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4105C3DBD44
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 17:24:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782840243; cv=none; b=lURLK0bH1vUuIWM6gmYNWVlpIXzyKGWrK/D0n+UetZexFnseku41ILiyT4KZ3ZTcXtT2s5i2RQYHT4C0UAA+uAXEbTHmCDNnwwlQeytFHcuXTwpb8f5ku2mqwnybO1ZmpM9/lOK13Gs9l+MKVBuSttjra6F4CWW5/QaKApB1OA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782840243; c=relaxed/simple;
	bh=L1+URms1HeQEH1fMM/xYxvnqMT6fGIph1XX8xsI+fMY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=uTmIPTTvLoulDCE+XAGo3WE9/62+c7a1a+UiS9wlpkMlMm2gsQ3wwaLxt2kjLr+WwFNCbOxzuAlw7ZfDCf3wMFHomgfN5Zg0+nCJuJF6pbk35my1SxWCJZF60HH3GxQSmfisJv98nP/cnhNrOcqz+DQmWhAdSend6ZZCOhEaWyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XoWnQahX; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6BA11F000E9;
	Tue, 30 Jun 2026 17:24:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782840241;
	bh=FdAQo2h4vU+MdU1+MmxV7DhVuEUi6q4VJCjdkPgK3UU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=XoWnQahXif+UXguAsyGg2snmnnxnB4cqGMCAYutcGA+V5Og9KDr5iv/qBAI9Azx9P
	 1VQH/aVhtS6G6ePAYF35CLkvRAly9WZHLzJ8et5JJWZO3YcGadBDDtkuFJ+JRNeJJq
	 EFDkHmX6f+i/PYaNltaooJB4rPrF1yrqq/4lY9DETayeN88O0yIVmV425sW7BmjH8l
	 qM6dhU/CM7Rrt3QeSA318mfy8B3/nXntQA4PvAqgGizGSas3kSuKwl8Q9720EI+LeH
	 8kuzD3HaZ4foC8KumRwK2iDu2l0ZTtHziD/svXahlbGP6eIEFGzJ0sVR8vdFMfHVQK
	 WAkx+c0UHlZvw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v6 03/15] net: ethernet: oa_tc6: Move oa_tc6.c
 to its own directory
Reply-To: sashiko-reviews@lists.linux.dev
To: "Selvamani Rajagopal via B4 Relay" <devnull+Selvamani.Rajagopal.onsemi.com@kernel.org>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260629-s2500-mac-phy-support-v6-3-18ce79500371@onsemi.com>
References: <20260629-s2500-mac-phy-support-v6-0-18ce79500371@onsemi.com>
 <20260629-s2500-mac-phy-support-v6-3-18ce79500371@onsemi.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 17:24:01 +0000
Message-Id: <20260630172401.B6BA11F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-317992-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:devnull+Selvamani.Rajagopal.onsemi.com@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,Selvamani.Rajagopal.onsemi.com,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,onsemi.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,lists.linux.dev:replyto,microchip.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D32136E6E71

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [Medium] Kernel module rename from `oa_tc6.ko` to `oa_tc6_mod.ko` breaks =
ABI.
- [Low] Unintended removal of the 'if COMPILE_TEST' condition from the Kcon=
fig prompt.
- [Low] MAINTAINERS entry update uses a restrictive wildcard pattern that o=
rphans the directory's Makefile and Kconfig.
--

commit 17abade4ed4c6f154b7b7813c44e60fe8fc7040d
Author: Selvamani Rajagopal <Selvamani.Rajagopal@onsemi.com>

net: ethernet: oa_tc6: Move oa_tc6.c to its own directory

This commit moves oa_tc6.c to a new drivers/net/ethernet/oa_tc6 directory.
It updates Kconfig, Makefile, and MAINTAINERS to support adding future files
for hardware timestamp and PTP related APIs.

> diff --git a/MAINTAINERS b/MAINTAINERS
> index 15011f5752a99..ff1295d37ae21 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -20217,7 +20217,7 @@ M:	Parthiban Veerasooran <parthiban.veerasooran@m=
icrochip.com>
>  L:	netdev@vger.kernel.org
>  S:	Maintained
>  F:	Documentation/networking/oa-tc6-framework.rst
> -F:	drivers/net/ethernet/oa_tc6.c
> +F:	drivers/net/ethernet/oa_tc6/oa_tc6*

[Severity: Low]
Does this restrictive wildcard pattern orphan the new Makefile and Kconfig
files?

Since it only matches files starting with oa_tc6, patches modifying those
build files might not automatically CC the maintainers via get_maintainer.p=
l.

[ ... ]

> diff --git a/drivers/net/ethernet/oa_tc6/Kconfig b/drivers/net/ethernet/o=
a_tc6/Kconfig
> new file mode 100644
> index 0000000000000..97345f345fb9f
> --- /dev/null
> +++ b/drivers/net/ethernet/oa_tc6/Kconfig
> @@ -0,0 +1,16 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +#
> +# OA TC6 10BASE-T1x MAC-PHY configuration
> +#
> +
> +config OA_TC6
> +	tristate "OPEN Alliance TC6 10BASE-T1x MAC-PHY support"

[Severity: Low]
Was it intentional to drop the if COMPILE_TEST condition from the tristate
prompt here?

The original config in drivers/net/ethernet/Kconfig had=20
tristate "..." if COMPILE_TEST, which kept the prompt hidden unless
COMPILE_TEST was enabled. Dropping it exposes the prompt to any user with
SPI enabled.

> +	depends on SPI
> +	select PHYLIB

[ ... ]

> diff --git a/drivers/net/ethernet/oa_tc6/Makefile b/drivers/net/ethernet/=
oa_tc6/Makefile
> new file mode 100644
> index 0000000000000..f24aae852ef27
> --- /dev/null
> +++ b/drivers/net/ethernet/oa_tc6/Makefile
> @@ -0,0 +1,7 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +#
> +# Makefile for OA TC6 10BASE-T1x MAC-PHY
> +#
> +
> +obj-$(CONFIG_OA_TC6) :=3D oa_tc6_mod.o
> +oa_tc6_mod-objs :=3D oa_tc6.o

[Severity: Medium]
Does this change break userspace ABI by implicitly renaming the compiled
module from oa_tc6.ko to oa_tc6_mod.ko?

Modifying the module name can break external scripts, modprobe configuratio=
ns,
and initramfs expectations that rely on the old name.

To fix Kbuild circular dependency warnings while keeping the original module
name, should the C file be renamed instead (e.g., to oa_tc6_core.c) while
keeping obj-$(CONFIG_OA_TC6) +=3D oa_tc6.o?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629-s2500-mac-=
phy-support-v6-0-18ce79500371@onsemi.com?part=3D3

