Return-Path: <devicetree+bounces-323469-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 15aQDPFgT2oYfgIAu9opvQ
	(envelope-from <devicetree+bounces-323469-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 10:50:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC4472E7D0
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 10:50:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=P6x4YwKZ;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323469-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323469-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 668043010BA9
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 08:50:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 769223EA94C;
	Thu,  9 Jul 2026 08:50:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 567C73CE4B1
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 08:50:14 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783587015; cv=none; b=M/A9Vkvfcfr8aIUYznkcQtOvyHAOKwTeluCy5Vu0E53HoqX7+HeR8Q65dUq6QfAVZ246Xc3oIO1cX6GrnpR3DwycVFRhnuuTV9qX7OoOrU0Z60isz5X8NRNmnSgm+dJ/WC09zpp62T76J29wG7m7J59l/NKV0pE4nkp8/7ScLLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783587015; c=relaxed/simple;
	bh=CZ30nEVVrbIrJTO9++64KG5znMhA0nDWWXNcC2b+oTo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=cVtgV4mNrnxTUNc1tsuaDt94cIsvLYMDo7fmmw/uREkyuPxIjSG50hQ9J5qTzU6XpIzAvses08hpgjzWV2Dal+oD2HYOefvfHSD9SIm0cnfvG5EoZd68UvX5LVxlgfQm5huEdTslVX7RPFc+mlP++4pbCMtpZTPw+MNZHRUIRSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P6x4YwKZ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 824831F00A3A;
	Thu,  9 Jul 2026 08:50:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783587014;
	bh=SnB7NBJvkB6Lwc+UsNdNTbksNkeyE6wuDODerJjvkB8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=P6x4YwKZMxKAWiY+f0SJsAaXwr4FB7+MfztDg3QWyIjSiNETYoCl/h5nwT/xuBji8
	 XftpEBv5E7g/94mnq2+gCoOjbH7stzQgt47fioJcJmiz8ideuapSW2X6yU6Jhb9QGc
	 BDKf+qU+rJUKssoeNxqzyWU7QHd33ushM5KgxIU16iCdVvv9qoCDpf1sxKcQBf2HA3
	 4XnUr/5SHcX+0koLt4c4Iz+DqwmYliegW4/71ryd/G0J/MG+ewQl0CnD0EuTlwE0fv
	 rDpmaO2WN8Jd598pclXB9rKdoIMVVlzjQ8nLV9S3giqqKBf/5iQTpyACYNlXkci88f
	 QacZ+usvHCAmQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 5/9] dt-bindings: phy: renesas,usb2-phy: Document
 RZ/G3L PHY bindings
Reply-To: sashiko-reviews@lists.linux.dev
To: Biju <biju.das.au@gmail.com>
Cc: vkoul@kernel.org, robh@kernel.org, wsa+renesas@sang-engineering.com, conor+dt@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org
In-Reply-To: <20260709083108.108370-6-biju.das.jz@bp.renesas.com>
References: <20260709083108.108370-1-biju.das.jz@bp.renesas.com>
 <20260709083108.108370-6-biju.das.jz@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 08:50:13 +0000
Message-Id: <20260709085013.824831F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-323469-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:biju.das.au@gmail.com,m:vkoul@kernel.org,m:robh@kernel.org,m:wsa+renesas@sang-engineering.com,m:conor+dt@kernel.org,m:olteanv@gmail.com,m:devicetree@vger.kernel.org,m:neil.armstrong@linaro.org,m:linux-phy@lists.infradead.org,m:bijudasau@gmail.com,m:wsa@sang-engineering.com,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,sang-engineering.com,gmail.com,vger.kernel.org,linaro.org,lists.infradead.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid,vger.kernel.org:from_smtp,renesas.com:email,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7EC4472E7D0

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Missing related device tree binding update for the RZ/G3L USBHS (OT=
G) controller.
--

--- Patch [5]: [PATCH v4 5/9] dt-bindings: phy: renesas,usb2-phy: Document =
RZ/G3L PHY bindings ---
commit c4d05b9a2128264caed7e80893a3e4cb7297b32f
Author: Biju Das <biju.das.jz@bp.renesas.com>

dt-bindings: phy: renesas,usb2-phy: Document RZ/G3L PHY bindings

This patch adds device tree binding support for the RZ/G3L (r9a08g046) USB2
PHY. The commit message notes the RZ/G3L is almost identical to the RZ/G3S
USB PHY, but with 2 OTG blocks instead of 1.

> diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml =
b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
> index 9740e5b335f93..d6b9d08ceec6d 100644
> --- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
> @@ -16,6 +16,7 @@ properties:
>            - enum:
>                - renesas,usb2-phy-r8a77470  # RZ/G1C
>                - renesas,usb2-phy-r9a08g045 # RZ/G3S
> +              - renesas,usb2-phy-r9a08g046 # RZ/G3L

[Severity: Low]
Does Documentation/devicetree/bindings/usb/renesas,usbhs.yaml also need to =
be
updated to include the "renesas,usbhs-r9a08g046" compatible string for the
RZ/G3L OTG blocks mentioned in the commit message?

Currently, renesas,usbhs.yaml enumerates related SoCs like RZ/G3S
(renesas,usbhs-r9a08g045) under the renesas,rzg2l-usbhs fallback, but is
missing RZ/G3L. This might cause device tree nodes for these OTG blocks to
fail schema validation.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709083108.1083=
70-1-biju.das.jz@bp.renesas.com?part=3D5

