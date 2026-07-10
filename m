Return-Path: <devicetree+bounces-324625-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 32VrAgc6UWolBAMAu9opvQ
	(envelope-from <devicetree+bounces-324625-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 20:29:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E73E673D5EC
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 20:29:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=GPJMwJOU;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324625-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324625-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 014743007B2B
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 18:29:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9109D374A07;
	Fri, 10 Jul 2026 18:29:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75CFB371D13
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 18:29:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783708160; cv=none; b=Hn2lxHTnqedZHRdEBxXQJzrmPT8q9SuzhwN3vxUL97Nm1xyGFTvg9WnI08DmCqV43i/o19uGl3PNckOLb/syCtJW5K6yIk7tmZJGqHRAQcd3IC4sEt6dVLe2MX78Sc/epb8p4zMe7nAvkBs4aRUB4i+h1CRblOaS9+DaYCjp03Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783708160; c=relaxed/simple;
	bh=ntQqPPEx23o84raPYbsRZlhN1VA991ZkLKwvNzZTqds=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=gpbziPX5omuLaQ1alVxQLNKHDmtNvHE5R9vpWgoDdIPJllss+OeCV1lZ9I7ylCZMrQHEoam/nwUdnJXd4iHh/RetG6N4v/8/kYsDMsxU+u0ZpPibKOrD4one/MpqEMrDEO4x0JzAzGGqxmPSpaGSbvi/3y/NdPcQMK/Xba7sIlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GPJMwJOU; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD89C1F000E9;
	Fri, 10 Jul 2026 18:29:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783708159;
	bh=hV6XeIYdq4kp/ILTdf7pwT06XRG0SCFacK+DSSyTsDU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=GPJMwJOUo1e+YsepHiKrgFJzdDLn3X8KYStBlYRcmDwCjAH2yFS6eIoalXG+10WoC
	 V2sdOuLPOPLNxmn8AtX3Ll8fUW45+ZGuXzO+ulKfjLt5/dnqt13Elbpb4fa3iknJh7
	 OTwBRQqe0tePC7VGXkrFMWXV2ox5tmejr+7yDoH8LuMeIsq/mBRy0kRhX7ftlC8fKT
	 RbWhZMeRkhyA7ynql0b3kl38IsrJfIeqVmdQWs00YVtUHwEDAxzwM/fa1Pre1iCjF/
	 BdnwL9J87sc5R+iRc5CtbpOZXH84FWY0+bpbZgHRnoYFSZ9UwHdpStGYzYfT1MlThL
	 w8pomSOEydGcA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/7] dt-bindings: clock: Introduce nexus nodes
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?TWlxdWVsIFJheW5hbCAoU2NobmVpZGVyIEVsZWN0cmljKQ==?= <miquel.raynal@bootlin.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260710-schneider-v7-2-rc1-eip201-upstream-v2-1-b4680787377e@bootlin.com>
References: <20260710-schneider-v7-2-rc1-eip201-upstream-v2-0-b4680787377e@bootlin.com>
 <20260710-schneider-v7-2-rc1-eip201-upstream-v2-1-b4680787377e@bootlin.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Jul 2026 18:29:18 +0000
Message-Id: <20260710182918.BD89C1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	TO_EXCESS_BASE64(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324625-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:miquel.raynal@bootlin.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp,bootlin.com:email,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E73E673D5EC

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The clock nexus node schema omits standard nexus map properties =
(`clock-map-mask` and `clock-map-pass-thru`) and `#clock-cells`.
--

--- Patch [1]: [PATCH v2 1/7] dt-bindings: clock: Introduce nexus nodes ---
commit 4092325fdc1397916665dc9c21bd4330df6026ce
Author: Miquel Raynal (Schneider Electric) <miquel.raynal@bootlin.com>

dt-bindings: clock: Introduce nexus nodes

This commit introduces a new device tree binding for clock nexus nodes,
allowing hardware containers to remap clock specifier lists from consumer
nodes in a generic way. It applies the concept from existing PWM and GPIO
nexus nodes to clocks.

> diff --git a/Documentation/devicetree/bindings/clock/clock-nexus-node.yam=
l b/Documentation/devicetree/bindings/clock/clock-nexus-node.yaml
> new file mode 100644
> index 0000000000000..ff3283bd5fb11
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/clock-nexus-node.yaml
[ ... ]
> +properties:
> +  clock-map:
> +    $ref: /schemas/types.yaml#/definitions/uint32-matrix

[Severity: Medium]
Does this schema omit the definition for #clock-cells and the standard
nexus map properties like clock-map-mask and clock-map-pass-thru?

Without these properties defined in the properties block, there is no type
checking for clock-map-mask and clock-map-pass-thru. Furthermore, if a
consumer device tree node uses them and specifies unevaluatedProperties: fa=
lse
in its own binding, could it spuriously fail schema validation during
dt_binding_check?

> +
> +dependentRequired:
> +  clock-map: ['#clock-cells']
> +
> +additionalProperties: true

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260710-schneider-=
v7-2-rc1-eip201-upstream-v2-0-b4680787377e@bootlin.com?part=3D1

