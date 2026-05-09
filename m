Return-Path: <devicetree+bounces-294799-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aDT1HZOZ/mn0tQAAu9opvQ
	(envelope-from <devicetree+bounces-294799-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 04:18:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7344FD96E
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 04:18:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6E78B3013D41
	for <lists+devicetree@lfdr.de>; Sat,  9 May 2026 02:18:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7898B28CF77;
	Sat,  9 May 2026 02:18:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DNcXw+q+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54585175A9C;
	Sat,  9 May 2026 02:18:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778293136; cv=none; b=Np/9b23tN9V+u68I2lwO4hh46pFWjfN4oj2zdItl7l6x2KY5qZeM8tlL9U54J4/eiFOPNdkHMwVDmExBCMBef+shzIYq1gfkGAaobxhUKKXQT+mjWtblWwdFxLrO1AZql63nqQ4VLNdvxIuhHE5B4IekAqqI+qECpAmxpINiORI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778293136; c=relaxed/simple;
	bh=o8yM2aOe3tFok7R2ygCQb8erWa3rxh0fePOb3U+bdZo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=eHLcfJrOmkkMssCmAEiP6EteBMO274WCmUlBeXH5FwGKztgfzDY7xpvMksH0bPUNzoc1gyAL8ryNeQzC/Wl51+/Ew9c0cKRuVuUkWPfjxCKdA4Omt6QML4ESBY0T7xUSV0TJ1guTh63pnVZ/7YFp2HkFJV0CPPgrAtyXt8oN/PI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DNcXw+q+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D03FDC2BCB0;
	Sat,  9 May 2026 02:18:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778293136;
	bh=o8yM2aOe3tFok7R2ygCQb8erWa3rxh0fePOb3U+bdZo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=DNcXw+q+7NhJQCyNOMrTnpwIJyj6t/zUh903Y/rbvSVQ5r7xuFti1vAiiJNAC0vlU
	 4ypnjb5/og7juErZEi7bAF0iSQ8inYnnJOQ91Pp/9j9lmVsrtLJ815FoxIu60c17ey
	 axfjXvFqfBWa4H+0HIDEkb9efaDprwT8rukjZl+yBKI6kRFZjbRsG+xaw4Hd3eR5SQ
	 FE13BzdNS7mhKlybrQJYnujPLZl2yuaIpphXzLOQ4dGIMLM/Crmzfww6xLbRZpGQLG
	 MACAGqR4NuUuy4kc5WUdKU19F+7ZqI44nXJNMX5oQ2eFvBFzYfnvz+YAJeBpzuUuYE
	 ix/w40528V5wQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2] arm64: dts: imx95: Increase PCIe outbound address
 space to 2GB
Reply-To: sashiko@lists.linux.dev
To: "Richard Zhu" <hongxing.zhu@nxp.com>
Cc: Frank.Li@kernel.org, krzk+dt@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, imx@lists.linux.dev, robh@kernel.org
In-Reply-To: <20260509020440.3219767-1-hongxing.zhu@nxp.com>
References: <20260509020440.3219767-1-hongxing.zhu@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 09 May 2026 02:18:55 +0000
Message-Id: <20260509021855.D03FDC2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: CD7344FD96E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-294799-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,4c380000:email,lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,4c300000:email,nxp.com:email]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The expanded 2GB PCIe outbound memory window cannot allocate a 2GB=
 BAR and restricts 1GB BAR allocations due to PCI address alignment constra=
ints.
--

commit 6da3bf3dfff2671c469eeafa736ee204651d7b67
Author: Richard Zhu <hongxing.zhu@nxp.com>
arm64: dts: imx95: Increase PCIe outbound address space to 2GB

This commit expands the PCIe outbound memory region to 2GB to support
devices requiring larger address spaces.

> diff --git a/arch/arm64/boot/dts/freescale/imx95.dtsi b/arch/arm64/boot/d=
ts/freescale/imx95.dtsi
> --- a/arch/arm64/boot/dts/freescale/imx95.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx95.dtsi
> @@ -1846,7 +1846,7 @@ pcie0: pcie@4c300000 {
>  			      <0 0x4c340000 0 0x4000>;
>  			reg-names =3D "dbi", "config", "atu", "app";
>  			ranges =3D <0x81000000 0x0 0x00000000 0x0 0x6ff00000 0 0x00100000>,
> -				 <0x82000000 0x0 0x10000000 0x9 0x10000000 0 0x10000000>;
> +				 <0x82000000 0x0 0x10000000 0x9 0x10000000 0 0x80000000>;

With this update, the PCI address window starts at 0x10000000 and has a
size of 0x80000000.

Because PCI specifications require a Base Address Register to be naturally
aligned to its size, a 2GB allocation would have to start at 0x80000000.

Since a 2GB allocation starting at 0x80000000 ends at 0xffffffff, does
this exceed the top of the defined window at 0x8fffffff?

It seems like this would prevent allocating a full 2GB address space.

[ ... ]

> @@ -1921,7 +1921,7 @@ pcie1: pcie@4c380000 {
>  			      <0 0x4c3c0000 0 0x4000>;
>  			reg-names =3D "dbi", "config", "atu", "app";
>  			ranges =3D <0x81000000 0 0x00000000 0x8 0x8ff00000 0 0x00100000>,
> -				 <0x82000000 0 0x10000000 0xa 0x10000000 0 0x10000000>;
> +				 <0x82000000 0 0x10000000 0xa 0x10000000 0 0x80000000>;

This appears to have the same alignment restriction that would prevent a
2GB allocation.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260509020440.3219=
767-1-hongxing.zhu@nxp.com?part=3D1

