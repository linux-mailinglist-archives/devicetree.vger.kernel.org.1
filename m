Return-Path: <devicetree+bounces-301394-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AIUuBqJAD2qcIQYAu9opvQ
	(envelope-from <devicetree+bounces-301394-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 19:28:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ECBC5AA3AC
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 19:28:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D1110331C0BD
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 15:31:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CA7E361667;
	Thu, 21 May 2026 15:30:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fPvvbP/i"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4045F13DDAA
	for <devicetree@vger.kernel.org>; Thu, 21 May 2026 15:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779377425; cv=none; b=EV7rrHrOS3dM10tiIwRYH4u1ctpJvzgPu0Of7DarRC7Tfw/UQqGuZLHGSWz0fNYGyBzVBFPKYJMEFhAaRSVLZczGiSS6KWX6aYMDMI+bTVz/TqfLKrRfeKUJWBctqkRA9in7b0dTrzWyFRK8G8aeHJBFlf79iavzs1fv3Jhhxkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779377425; c=relaxed/simple;
	bh=x2BVHfm9fIDSdbjayC0gD3ugztSIBMLgA8eJ1u5jeVc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=PFgUtrIE8JeWkWqImhLDqgdUj4G04Coa+0A18oMWEFPkEn1eZWWkW+knCA+PRl8sVchOTrEnu7Dzohr6IsoHHfJ6V25u6QU+fjNvcF7q8ctwfaEGyiVO9XMJfLAK0zAoLNHxbdGCd5U8idgEo3ViUBNGVMF1kvTc7qJf9uU/eH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fPvvbP/i; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEC3D1F000E9;
	Thu, 21 May 2026 15:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779377423;
	bh=+6Y6LVMYIUPFy0XXCqnL4EoInksP+D3f+pPYGOUyg3A=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fPvvbP/iD0XjRx33vMBUuNufBZAfubBkTeqUae/4zgscm/jrrZqpGVBSCvWAvzrIt
	 XD514W50wG1JUfMyK5JMokqhrDkhDYh0Wkpp44o4+LPkHjxdZHuPzekFtEEe1aTtrg
	 x9mGld754pu7yJaHAd0+QcPyOHSfyiJSdPe1Wm4lvqmyOnV8d2MFmUqta8IMO5Dumf
	 jeYMTb9Fh5c4xEgNxNSaAgh+w2d+/R5RPKmb91wAJu1tDDd1Yokyq/nHYaHyo9tEod
	 Diu+po5kxOsHBT1iYrD3ZFDE21gv27Dm/2do2USolIWLMeSNli1m56zbrkVOAEq+9w
	 7kU+j1t9cKGQA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 03/15] arm64: dts: ti: k3-am62-verdin: Add Toradex
 Capacitive Touch Display 10.1" LVDS
Reply-To: sashiko-reviews@lists.linux.dev
To: "Vitor Soares" <ivitro@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260521150038.103538-20-ivitro@gmail.com>
References: <20260521150038.103538-20-ivitro@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 21 May 2026 15:30:23 +0000
Message-Id: <20260521153023.AEC3D1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-301394-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,lists.linux.dev:replyto,toradex.com:url,toradex.com:email]
X-Rspamd-Queue-Id: 1ECBC5AA3AC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The device tree overlay enables the OLDI display interface (`&ol=
di0`) but fails to configure the pinctrl for the physical OLDI pins.
--

commit 0236b33e5caa32e5e5b13e852204362f10386c2e
Author: Vitor Soares <vitor.soares@toradex.com>

arm64: dts: ti: k3-am62-verdin: Add Toradex Capacitive Touch Display 10.1" =
LVDS

This commit adds a device tree overlay for the Toradex Capacitive Touch
Display 10.1 inch LVDS. It connects the panel via the Verdin AM62 OLDI
interface on compatible carrier boards.

Link: https://developer.toradex.com/hardware/accessories/displays/capacitiv=
e-touch-display-101inch-lvds

> diff --git a/arch/arm64/boot/dts/ti/k3-am625-verdin-panel-cap-touch-10inc=
h-lvds.dtso b/arch/arm64/boot/dts/ti/k3-am625-verdin-panel-cap-touch-10inch=
-lvds.dtso
> new file mode 100644
> index 0000000000000..893dde0e2e2b9
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/k3-am625-verdin-panel-cap-touch-10inch-lvds.=
dtso
[ ... ]
> +&oldi0 {
> +	status =3D "okay";
> +};

[Severity: Medium]
Does this overlay miss the pinctrl configuration for the physical OLDI pins?

The overlay enables the OLDI display interface but omits the pinctrl-0
definition for the analog pads. Since these pins reside in the main padconf
region and are shared with other functions, relying on the bootloader to
initialize them to the correct state might cause the display output to fail
if the bootloader configures them differently or during a kexec transition.

Should the pin multiplexing for the OLDI pins be explicitly configured here?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260521150038.1035=
38-17-ivitro@gmail.com?part=3D3

