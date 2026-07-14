Return-Path: <devicetree+bounces-325950-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DASlEBHeVWpYugAAu9opvQ
	(envelope-from <devicetree+bounces-325950-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 08:58:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BFFD751B21
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 08:58:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ZmtZg0bT;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325950-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325950-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D880D3019FFB
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 06:58:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FDC63B777F;
	Tue, 14 Jul 2026 06:58:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 716952F8E94
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 06:58:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784012302; cv=none; b=IU0DuWVIoY5u9k3z9axRdldSxsIEpsoETAs3OaAmxk9b3PXUxITaM19W87QBgOTVdbpuczjgwpcT4ptGM+uKo05FFxPVOBbEPZn6X4lOAjVZNu5OFicYzW0biEhn7xK7UZFSSttL8PVVdwHmPQ5oKyeRjgtDSa589brlypH9hFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784012302; c=relaxed/simple;
	bh=xKy48hAi1M13gp3AplhS2Oy1u9FvLyUYanICw2XtMpk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=t+EtyDYXYHZ+WdIg0Eu0YlAdktLFYtC3Po9PEe7MZIEuxs55sL/13YTS2IVo7tDAWePOtOWnbVuIpm5bztx2gvrdNWQFQymwT7Km3yOn0o+VXCwFbKZANUTtU0d9XxX2iljeQPKUTIU/PwMiMSS6Yqbb+/CTRf+SNXsoqbEqxF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZmtZg0bT; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0950F1F000E9;
	Tue, 14 Jul 2026 06:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784012301;
	bh=c4I7kI5vpAvxeyD88BxdS1RYbNknMhbsa2v6YzR41cA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ZmtZg0bTtrYCqE++gD/XQPRAJSvZVZuYgt/Y1RzxjWzoPTouJxcMj957O8KZiLVMZ
	 uqg+wOkpTWKNRVJlaQ2RiemiXecng3ZKCtAew2P4zYWz1zwR6BBiapsSmGMqCio03q
	 /ryymQIdjFpxo3IpHEsy/UcZ5h+JDJoWLmSjgIJF1y78YhVDbCvL0LKw5jY+a9dBeN
	 6eGJp2iTPbEACdW1MICfb6gBJYft0xSD6/RSPUNLm/KOEyxBPR9ptN0GTcvIh9o1rB
	 +c4K4uNvGYgX2ufK5Yxezwj4H4e8I1CpXcJdHOyB0oT58ZP0abV/Athl6g3POwm7+f
	 lfyVujkBpgKEA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v15 1/2] dt-bindings: bridge: Add Lontium LT7911EXC eDP
 to MIPI DSI bridge
Reply-To: sashiko-reviews@lists.linux.dev
To: syyang@lontium.com
Cc: conor+dt@kernel.org, dri-devel@lists.freedesktop.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260714064822.2753289-2-syyang@lontium.com>
References: <20260714064822.2753289-1-syyang@lontium.com>
 <20260714064822.2753289-2-syyang@lontium.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 06:58:20 +0000
Message-Id: <20260714065821.0950F1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-325950-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lontium.com:email,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url];
	FORGED_RECIPIENTS(0.00)[m:syyang@lontium.com,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
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
	RCPT_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6BFFD751B21

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Non-standard generic node name used in the device tree example. The=
 Devicetree specification recommends using standard generic names for devic=
e nodes to represent the class of the device rather than the specific model=
 or bus type (e.g., `bridge@` instead of `mipi-bridge@`).
--

--- Patch [1]: [PATCH v15 1/2] dt-bindings: bridge: Add Lontium LT7911EXC e=
DP to MIPI DSI bridge ---
commit 5c0643686f137815285d63f46eecfcaaaad55330
Author: Sunyun Yang <syyang@lontium.com>

dt-bindings: bridge: Add Lontium LT7911EXC eDP to MIPI DSI bridge

This commit adds the device tree binding schema for the Lontium LT7911EXC.
It documents an I2C-controlled bridge that converts eDP 1.4 input to MIPI
DSI output.

> diff --git a/Documentation/devicetree/bindings/display/bridge/lontium,lt7=
911exc.yaml b/Documentation/devicetree/bindings/display/bridge/lontium,lt79=
11exc.yaml
> new file mode 100644
> index 0000000000000..3290b10ce8835
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/lontium,lt7911exc.=
yaml

[ ... ]

> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    i2c {
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +
> +        mipi-bridge@41 {

[Severity: Low]
This isn't a bug, but should this node name use a standard generic name like
bridge@41 instead of mipi-bridge@41? The Devicetree specification recommends
using standard generic names to represent the class of the device rather
than the specific bus type, which helps avoid dt-schema warnings.

> +            compatible =3D "lontium,lt7911exc";
> +            reg =3D <0x41>;
> +            reset-gpios =3D <&gpy8 8 GPIO_ACTIVE_LOW>;

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714064822.2753=
289-1-syyang@lontium.com?part=3D1

