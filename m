Return-Path: <devicetree+bounces-317903-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Rz+jBp7eQ2oJkwoAu9opvQ
	(envelope-from <devicetree+bounces-317903-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 17:19:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6280B6E5DF4
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 17:19:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=RA4yiVfv;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317903-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-317903-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2D54C3016927
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 15:19:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C558433343B;
	Tue, 30 Jun 2026 15:19:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B25B5279329
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 15:19:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782832795; cv=none; b=BRQ0RD0Lv+txGTERmm+cSlKvz2Y1MSj5BDXE6mDG3H1+dlHNeO1Gf1b9axINniUNnhgVRGYiUYCWilTFZR0KWfOMGg+Ahbj74XRfA86f8UdihCCaXZhTA6WEof35RHNUIZYhoT3D+YjmQ+rsY8Pf5ZtyZtu3f4g7fSJ2jbv5ryQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782832795; c=relaxed/simple;
	bh=32jTUNsGB6GfpJY0/If+xIRYVleI6RUk4u5PyO67drY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Z0PVkIU2uXibKgEmr8YwUTYMx+YXA4i9C7CZelCL15e02WZgFMRAWZ9sEDRHqlIOeS774p9MmpxVAhs2Jwz/qHa5K7BpAGBsBT0QQd9sX3S1UB+7OEtYTkR8ALb0Gx4Sqqt+mrsLkUdYJiTpIid0kyu1Aj5mt67gdixgTG5t9+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RA4yiVfv; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F9EE1F000E9;
	Tue, 30 Jun 2026 15:19:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782832794;
	bh=AzdZqYj+9OxdRcpR1Ad4D0IO9QPvuidoq7CVtcHE4P4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=RA4yiVfvF1eCeXQeuwNyhBXURlHW5uyoqapWnohI/PIZPzrnvINNOiU5iEpo8Lods
	 eQnRZOilycFrXmwitndmj3uNg+ZFbJWnmkK/sIOVolTOP39SD+UNAUgicq0wc3/fM6
	 tYsux6AluybueW4v3skrON6gXnGtaHgGru3EKvJhZcFRhcAItZyDpqRmC1ld2NuRwf
	 8kj1fK+VW284WqwMV6aagKjIbgUWIj149j+OjdHTwgumE3WDk+hKTHuVzVI15tlyVr
	 Git6ySZM5ixUqyb9e7I+pZL8xzaH24bzeTCj4g9Fk3I1B6k9bQ92LFUr9JzexIeQ84
	 +d74+AbDQthMA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] arm64: dts: ti: Rename DM firmware reserved memory
 nodes
Reply-To: sashiko-reviews@lists.linux.dev
To: "Paresh Bhagat" <p-bhagat@ti.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260630150919.457160-1-p-bhagat@ti.com>
References: <20260630150919.457160-1-p-bhagat@ti.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 15:19:53 +0000
Message-Id: <20260630151954.5F9EE1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-317903-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:p-bhagat@ti.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,ti.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6280B6E5DF4

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Incomplete refactoring of DM firmware reserved memory nodes, mis=
sing k3-am654-base-board and the entire AM64x family.
--

commit 8c190c8bbecf4c9714e791b5c5c8d1f70710854f
Author: Paresh Bhagat <p-bhagat@ti.com>

arm64: dts: ti: Rename DM firmware reserved memory nodes

Rename DM reserved memory nodes for K3 devices.
This allows U-Boot to identify and resize these regions using
fdt_fixup_reserved_memory() as done for TFA and optee.
Also drop unnecessary bootph-pre-ram property from AM62D2.

> diff --git a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi b/arch/ar=
m64/boot/dts/ti/k3-am65-iot2050-common.dtsi
> index f3ee73e64d69c..78b4e5d61dfc2 100644
> --- a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
> @@ -53,7 +53,7 @@ mcu_r5fss0_core0_dma_memory_region: memory@a0000000 {
>  			no-map;
>  		};
> =20
> -		mcu_r5fss0_core0_memory_region: memory@a0100000 {
> +		mcu_r5fss0_core0_memory_region: dm@a0100000 {
>  			compatible =3D "shared-dma-pool";
>  			reg =3D <0 0xa0100000 0 0xf00000>;
>  			no-map;

[Severity: Medium]
Were some K3 devices missed in this refactoring?

This patch renames DM reserved memory nodes so U-Boot can locate and resize
them, but it appears to miss k3-am654-base-board.dts, which still retains t=
he
old naming convention:

arch/arm64/boot/dts/ti/k3-am654-base-board.dts:
        mcu_r5fss0_core0_memory_region: memory@a0100000 {
                compatible =3D "shared-dma-pool";
                reg =3D <0 0xa0100000 0 0xf00000>;
                no-map;
        };

Additionally, the AM64x family appears to be omitted entirely, as they use
main_r5fss0_core0 for DM instead of wkup or mcu. For example:

arch/arm64/boot/dts/ti/k3-am642-evm.dts:
        main_r5fss0_core0_memory_region: memory@a0100000 {
                compatible =3D "shared-dma-pool";
                reg =3D <0x00 0xa0100000 0x00 0xf00000>;
                no-map;
        };

Will U-Boot silently skip resizing the DM memory regions on these unpatched
boards, potentially leading to incorrectly sized regions during boot?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260630150919.4571=
60-1-p-bhagat@ti.com?part=3D1

