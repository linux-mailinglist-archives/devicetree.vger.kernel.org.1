Return-Path: <devicetree+bounces-313161-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SLohGUkCM2ox8gUAu9opvQ
	(envelope-from <devicetree+bounces-313161-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 22:23:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA4669C58D
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 22:23:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=SpCYm58v;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313161-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-313161-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 489023083097
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 20:21:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E5FA3B8BCC;
	Wed, 17 Jun 2026 20:21:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8714F3B14D6
	for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 20:21:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781727701; cv=none; b=L4PbXxTvNJ742xK22UnGa9RxPVqSuI9JnyaCZXmRtL5bAU/73/AKfW5pWr9sXMvReFhBGAHl2SSikajCGtZsQhcC5No07ygx28ze8WblzIbYk9b6cK/v8Y1uFVn1w3qdYzktKaEGjWlMOeZOM8V6bywZZMJ/H7QTJqjMEfSPcgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781727701; c=relaxed/simple;
	bh=oQKd5UVZcWiDzBSzzHjiXYrUk9TFaEDBx8ctWAw4lyw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=pGHgq4Kx6oSYHEplV89i6D+IvR9DVUYePJ5U/YzYs+FsXrKHWF+ssabAFS9pWJCL49hveibHw/y3rrgQeWx19AavBwlAvZ/SNCQCyQCGlzgcyfp8zDfv+/F1Bjdq23rbtZEmeC6DzJIsbtz+BdTBw45w2PDjPcCblabu9P/rb0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SpCYm58v; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20C221F00A3A;
	Wed, 17 Jun 2026 20:21:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781727700;
	bh=AFEXUH3H8ZdcOfwL7ksy0T3cTfThpDhTTVlUR//Q58o=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=SpCYm58v5Za1X9u7jttU2GdEhDXQAxgo39SzUhMdWJ4Mhv72vmMw5WJZuWHKIPlns
	 Y/MSi2urA9FFITzV5fGJE8G4FqGcyC53+SI2LZ4XiR4q+X15gMLPfG4pWr7+HYJ7dA
	 HFPeGFOCygleFI+56iJqLuZbPGbJ62aFS8dMn5B4FWz/q6szoPdc5z3HNknXfBAo0e
	 zCoivrNe0JXc2/+ZZbum1JxHyFbS8lN9HFetnm/GvxkP6evCYdLf7x6PnRNpAWY8Zb
	 ewVUEprYwnCM9d4CrSEyBb2FlmydV5o4DOdF7CwW6m1wFQZb1IB0Vbxw/z9rcQfOHD
	 +a+Ts/WsL2siQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3] dt-bindings: arm: xen: Convert to DT schema
Reply-To: sashiko-reviews@lists.linux.dev
To: "Tejas Mutalikdesai" <tejasmutalikdesai@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260617152830.51382-1-tejasmutalikdesai@gmail.com>
References: <20260617152830.51382-1-tejasmutalikdesai@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 17 Jun 2026 20:21:39 +0000
Message-Id: <20260617202140.20C221F00A3A@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-313161-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:tejasmutalikdesai@gmail.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DFA4669C58D

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The new DT schema strictly enforces a unit address for the `hyperv=
isor` node name (`^hypervisor@[0-9a-f]+$`). This causes `make dtbs_check` v=
alidation failures for existing in-tree DTS files and, if fixed in the DTS,=
 will break Xen detection in the Linux kernel.
--

commit 8184816dad4691fc686e16cca1b38c8628e65beb
Author: Tejas <tejasmutalikdesai@gmail.com>

dt-bindings: arm: xen: Convert to DT schema
   =20
Convert the Xen ARM device tree binding documentation from the legacy
plain-text format to the DT schema format.

> diff --git a/Documentation/devicetree/bindings/arm/xen.yaml b/Documentati=
on/devicetree/bindings/arm/xen.yaml
> new file mode 100644
> index 0000000000000..a22e950566c23
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/xen.yaml
[ ... ]
> +description:
> +  Xen ARM virtual platforms shall have a top-level "hypervisor" node with
> +  the properties defined below.
> +
> +properties:
> +  $nodename:
> +    pattern: "^hypervisor@[0-9a-f]+$"

[Severity: High]
Will this strict node name pattern break existing device trees and kernel
parsing?

Existing in-tree device trees (like arch/arm/boot/dts/xen/xenvm-4.2.dts) use
the node name "hypervisor" without a unit address, which will now fail
schema validation under this pattern.

If device trees are updated to include a unit address to satisfy this new
schema, will it break Xen paravirtualization on ARM? The kernel's FDT
parsing explicitly requires an exact string match without a unit address
during early initialization:

arch/arm/xen/enlighten.c:fdt_find_hyper_node() {
    ...
	if (depth !=3D 1 || strcmp(uname, "hypervisor") !=3D 0)
		return 0;
    ...
}

> +
> +  compatible:
> +    description:

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260617152830.5138=
2-1-tejasmutalikdesai@gmail.com?part=3D1

