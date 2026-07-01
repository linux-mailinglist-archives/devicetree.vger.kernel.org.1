Return-Path: <devicetree+bounces-318384-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Nm2pBxr4RGoD4QoAu9opvQ
	(envelope-from <devicetree+bounces-318384-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 13:20:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FCEF6ECBBC
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 13:20:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=GIuIQLTW;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318384-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318384-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 750EC30C98F0
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 11:08:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDBED43634A;
	Wed,  1 Jul 2026 11:07:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B4D83BA249;
	Wed,  1 Jul 2026 11:07:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782904023; cv=none; b=MuoSDz5zIhepwrnkd84Okbzc4yE9WsXjuB536ASKJ28JdztEoavDL0nq4R/EhPnRZvZ9i+ukuUsmN7loU4D6DSlUuJ/YNQPKo6wMA/VVRMu4YYDzr5HCExeraMzCyNHn9ANm76dseUwUIQaPCPYI7D2lHE854LKoHf7N/T74Qsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782904023; c=relaxed/simple;
	bh=oSlcK09PdBKIVNq39bqkYR0O6+AzUMdbk+zgIoJP+Xw=;
	h=From:Subject:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=VZH/BmT+Uk1tkjEnmkRMxbHf/k8jgdYFcODHhgrUBxVj9vdg2XdguqVQF3LK6e+G5eh47KwNrwOmvfhaepmFc0SepdKl9eQpyVYWwDCFLMhVhXEpmryqv4rcaEPJIEUngNU4I0Sv/GVDvU2gXnihQ0+YAwrKZGbaNofCe9fMp+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GIuIQLTW; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E1B81F000E9;
	Wed,  1 Jul 2026 11:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782904020;
	bh=bNinqsNPFAPvqAYzmqzmK5X9Wv0GpzIpoiogbgAT7xY=;
	h=From:Subject:Reply-To:Cc:In-Reply-To:References:Date;
	b=GIuIQLTW7mZhtstjSE6wJrKB53qF3rM+kd4CrBRS9ry6p8zfvezmxFUpnfER9qN2C
	 KnDJ8la1TzGVb/QtCeHIFJahLACoGE8VhqStzAuTzxHKAI1Q3DZ2Owfq9ggZArQIeb
	 T+A34JQeLhocpMXNE7lfKWENNmcswMvRkeJASOtn7e2bIE88uB+iPspWvebPWAptaX
	 FTBla/32K+BOlTb7Mgm7TrMJcbHwlJcq1OAu92PSO+E/Jl6w+InFB6rT1CiignMHrD
	 5loNtVEGsp2JPBlCV3G96IjJNyYqeW/wf5hj7AEZuBKpHzbsD95f/5Ad4PqZI2TxzQ
	 fkoBfDJWeqBTA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V5 7/7] arm64: dts: imx95: Move power supply properties
 to Root Port node
Reply-To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, devicetree@vger.kernel.org, Frank.Li@kernel.org, conor+dt@kernel.org, linux-pci@vger.kernel.org, imx@lists.linux.dev
In-Reply-To: <20260701105234.198987-8-sherry.sun@oss.nxp.com>
References: <20260701105234.198987-1-sherry.sun@oss.nxp.com>
 <20260701105234.198987-8-sherry.sun@oss.nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 11:06:59 +0000
Message-Id: <20260701110700.5E1B81F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_TO(2.00)[];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-318384-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,sashiko.dev:url,smtp.kernel.org:mid,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,lists.linux.dev:replyto];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:devicetree@vger.kernel.org,m:Frank.Li@kernel.org,m:conor+dt@kernel.org,m:linux-pci@vger.kernel.org,m:imx@lists.linux.dev,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7FCEF6ECBBC

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The transition to the new PCI pwrctrl framework is incomplete acros=
s the i.MX95 platform. Several other i.MX95 board definitions were omitted =
from this migration and still retain the legacy `vpcie-supply` property in =
the host controller node instead of moving them to the Root Port child node=
s.
--

commit b94f7498d750422b57ec34a9401c66058aec3470
Author: Sherry Sun <sherry.sun@nxp.com>

arm64: dts: imx95: Move power supply properties to Root Port node

Move the power supply properties from the PCIe controller nodes to the
Root Port child nodes to support the new PCI pwrctrl framework.

> Move the power supply properties from the PCIe controller nodes to the
> Root Port child nodes to support the new PCI pwrctrl framework.
>=20
> Since i.MX95 is the new platform that under development phase, it should
> be fine to simply move the power supply properties.

[Severity: Low]
Are there other i.MX95 boards that should be included in this migration?

The transition to the new PCI pwrctrl framework appears incomplete across t=
he
i.MX95 platform. Several other i.MX95 board definitions were omitted from t=
his
migration and still retain the legacy vpcie-supply property in the host
controller node instead of moving them to the Root Port child nodes.

For example, arch/arm64/boot/dts/freescale/imx95-15x15-frdm.dts retains the
legacy power supply property in the host controller node:

&pcie0 {
    ...
    vpcie-supply =3D <&reg_m2_mkey_pwr>;
    ...
};

Similar omissions appear in arch/arm64/boot/dts/freescale/imx95-19x19-frdm-=
pro.dts:

&pcie0 {
    ...
    vpcie-supply =3D <&reg_m2_mkey_1_pwr>;
    ...
};

And in arch/arm64/boot/dts/freescale/imx95-19x19-verdin-evk.dts:

&pcie0 {
    ...
    vpcie-supply =3D <&reg_pcie0>;
    ...
};

Should these boards also be updated to ensure consistent power management
behavior across the i.MX95 platform and allow future cleanup of the legacy
code?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701105234.1989=
87-1-sherry.sun@oss.nxp.com?part=3D7

