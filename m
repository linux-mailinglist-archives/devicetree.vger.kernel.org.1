Return-Path: <devicetree+bounces-320974-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xbQ4JIOUS2qqVwEAu9opvQ
	(envelope-from <devicetree+bounces-320974-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 13:41:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D647970FFF2
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 13:41:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=nOFRAUj2;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320974-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320974-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3210135ED917
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 09:40:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 981F941F7CA;
	Mon,  6 Jul 2026 09:26:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F4FC3EB0EE
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 09:26:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783329992; cv=none; b=KnUn2EAdzZ2sg5qLtRn91zxnquIEs7ohZRIiK7JH+CF78MV5DkBChZ0/tPeKFw8Bykeb+rvec/XTgjo0P79/w/5ckWiCQ/d97voo3xWZKb8HLPmdM9ayotD5ltE+2CVnLBGM8upAD63PJCR+RMgKUOlzhqQiVjX/J1t50/VEt9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783329992; c=relaxed/simple;
	bh=laaPUaGCo0f2BLKT5jfvL+u7GIHL/a8VP8FYCA/2aE4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=lVwtYod/Xo1sMjogsBSta4fGd1Rq6qC+3BjOTr4sM961sl7aPCJP4AR+AOKhqyJ8XmCuaQB1bZg+GR+3+njktmOjYAAjl4zyjhOj73spdpSLH9x88rXyyZh7wdaPzl3V5beVya0ExSgblLBG359WpQ9KdWE0s3uSB3448BVQVuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nOFRAUj2; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55C381F00A3D;
	Mon,  6 Jul 2026 09:26:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783329987;
	bh=60O9BZpSJG/5g61SuPSOeBY8YEmiaWF0hG3oGe53qCU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=nOFRAUj2I6xZoO4NMuEHlNcqJM7/DsKMpXNLjQVcJsfHFjYaDm7mKclS0ZQ+oZLwQ
	 UnNsbl9ziMXj7FLT3hMDQbCB52tJ38bDzqNPkuxrQstGVri3t3wgnS0u/xUVelB5n4
	 9NIF3aOaAXnlaDxh201sk98rl1iZLuZT2cMDqWBL+vz2+vJqE3FF2eglf9uE4fkgUM
	 0SeeYhN97XkAsQ0amIQbAsD04w6+J4L1yZs2WGp4itmkehbZHLMBMqH2Y3LvqHYczh
	 56ZnnpOaQRXq1jpJpKtquC9kiU9F2IRWj19N3Y1392PIUaPbLoo0O77or/sfgTFYhU
	 cU/zj7NBJmJjQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 4/5] dt-bindings: soc: ti: omap-iva: Make ti,hwmods
 optional
Reply-To: sashiko-reviews@lists.linux.dev
To: "Eduard Bostina" <egbostina@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260706085917.835875-5-egbostina@gmail.com>
References: <20260706085917.835875-1-egbostina@gmail.com>
 <20260706085917.835875-5-egbostina@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 06 Jul 2026 09:26:26 +0000
Message-Id: <20260706092627.55C381F00A3D@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-320974-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:egbostina@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D647970FFF2

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Globally removing 'ti,hwmods' from the 'required' list silently =
breaks schema validation for legacy OMAP generations, and the commit messag=
e justifies this using a fundamental misunderstanding of the driver archite=
cture.
--

commit b2b7440e95e8ab91078767b3f9e9a47ec5186538
Author: Eduard Bostina <egbostina@gmail.com>

dt-bindings: soc: ti: omap-iva: Make ti,hwmods optional

This commit removes "ti,hwmods" from the required list in the ti,iva
binding schema. The commit message indicates this is safe because the
ti-sysc driver does not strictly require it for probing.

> A review of the ti-sysc driver (drivers/bus/ti-sysc.c) shows that the
> property is not strictly required for probing. The driver only reads
> it to populate the 'ddata->legacy_mode' flag. If the property is absent,
> the probe sequence continues normally without error.

[Severity: Medium]
Is this justification accurate?

Looking at sysc_check_one_child() in drivers/bus/ti-sysc.c, the driver
actually warns if it finds this property on a child node like ti,iva:

drivers/bus/ti-sysc.c:sysc_check_one_child() {
    ...
	name =3D of_get_property(np, "ti,hwmods", NULL);
	if (name && !of_device_is_compatible(np, "ti,sysc"))
		dev_warn(ddata->dev, "really a child ti,hwmods property?");
    ...
}

> diff --git a/Documentation/devicetree/bindings/soc/ti/ti,iva.yaml b/Docum=
entation/devicetree/bindings/soc/ti/ti,iva.yaml
> index 5724b8367a158..799461a20b049 100644
> --- a/Documentation/devicetree/bindings/soc/ti/ti,iva.yaml
> +++ b/Documentation/devicetree/bindings/soc/ti/ti,iva.yaml
> @@ -24,7 +24,6 @@ properties:
> =20
>  required:
>    - compatible
> -  - ti,hwmods

[Severity: Medium]
Does removing this requirement globally break schema validation for older O=
MAP
generations?

Legacy platforms (like OMAP2/OMAP3) rely on arch/arm/mach-omap2/omap_device=
.c,
which strictly requires this property to initialize the device:

arch/arm/mach-omap2/omap_device.c:omap_device_build_from_dt() {
    ...
	oh_cnt =3D of_property_count_strings(node, "ti,hwmods");
	if (oh_cnt <=3D 0) {
		dev_dbg(&pdev->dev, "No 'hwmods' to build omap_device\n");
		return -ENODEV;
	}
    ...
}

If "ti,hwmods" is globally optional, won't invalid device trees for these
legacy platforms silently pass dtbs_check, only to fail at runtime with
-ENODEV?

>  additionalProperties: false

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260706085917.8358=
75-1-egbostina@gmail.com?part=3D4

