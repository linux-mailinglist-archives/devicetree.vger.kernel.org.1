Return-Path: <devicetree+bounces-322809-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DoJkAnJFTmrnJwIAu9opvQ
	(envelope-from <devicetree+bounces-322809-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 14:41:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EF605726620
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 14:41:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=dvdkzLbx;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322809-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322809-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 14D3E3003705
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 12:41:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 064B144D6AC;
	Wed,  8 Jul 2026 12:41:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3074435A9F;
	Wed,  8 Jul 2026 12:41:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783514474; cv=none; b=sMYNFZinCYR4c6XcHPuAF9ycWi3GrhsTAcYmoOja7sKGvvfWw3svCgZFZpivRblBi66VRW94ETXxnTpzaL1KUdE4aRh7ud4uN3JJHFtOhzndYQLP6xp0t7hBQonJLGNZ7CCR5fkt1l5CbFFoxaQDwWF+qmYRaD1RYn9Jsg2CKtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783514474; c=relaxed/simple;
	bh=WniDeSL+3u3oidbmJKW78jyl0Nqgqmt7S9uXaHtvp/E=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=qjK6cElxxWdhbcglESc2U/TWM9lukN+/ueaD1P7iL3Dr/C18/JI0g9Wrpe9bSJmUsgJuwO2aFZGrFbBwpRLpGR6pA7/izZLOWup+Ut0rDkPsIebakAXSOXiCSti7e6EPZqWwgJY4c91UQwRHSGi7iojDsA3jf1/q/tm906qJZCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvdkzLbx; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1DC541F00A3A;
	Wed,  8 Jul 2026 12:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783514472;
	bh=w9xejsj/qYOpJeszETiH16n0Wj6bf9FW/vrXs/XpRoU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=dvdkzLbxgq0JpYZzIa4HzUIzPDNEPzSmHXiN3pe+B9LTnn9WmxXk+Hx/NjgoxvmSJ
	 TRpJ2fLSaJnkJQvGWVJDeeYEvCBw49Fkv10my2UAOJ0xWSOdfY7WBMwZvVFHHdllc2
	 4T+MURsJkr03lAAd0WD+o5nQ4c/PlF22lLbb15QqNmWifvb2PszhELVyyFlavqspjv
	 LNRG5l2oZRKnWXvrjM0VhnwriDJNF8eVMd8VAPa6LwAjiyAZev2BEdu/ejqpUY3/G0
	 XGqRNZPTozzoJzzdlyxqmN4IWkni/Xca6WGb8sbN0thsQLWr+sN1YkMiqfVojQtL0l
	 diS+bsqkz2cVg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] dt-bindings: input: Convert TI Keypad Controller to DT
 schema
Reply-To: sashiko-reviews@lists.linux.dev
To: "Eduard Bostina" <egbostina@gmail.com>
Cc: dmitry.torokhov@gmail.com, conor+dt@kernel.org, linux-input@vger.kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260708123252.1768355-1-egbostina@gmail.com>
References: <20260708123252.1768355-1-egbostina@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 12:41:11 +0000
Message-Id: <20260708124112.1DC541F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:egbostina@gmail.com,m:dmitry.torokhov@gmail.com,m:conor+dt@kernel.org,m:linux-input@vger.kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:dmitrytorokhov@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-322809-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,lists.linux.dev:replyto,vger.kernel.org:from_smtp,sashiko.dev:url,smtp.kernel.org:mid];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EF605726620

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Properties strictly required by the hardware and driver ('keypad=
,num-rows', 'keypad,num-columns', 'interrupts', and 'linux,keymap') are omi=
tted from the 'required:' list, allowing non-functional device trees to sil=
ently pass validation.
--

--- Patch [1]: [PATCH] dt-bindings: input: Convert TI Keypad Controller to =
DT schema ---
commit 31e1662350e854e7b96beb7e7de83fc2b0d265e2
Author: Eduard Bostina <egbostina@gmail.com>

dt-bindings: input: Convert TI Keypad Controller to DT schema

This commit converts the Texas Instruments Keypad Controller bindings to DT
schema format. It updates the autorepeat property name, adds the reg-names
property, and omits the keypad row and column properties from the required
list to prevent validation failures.

> diff --git a/Documentation/devicetree/bindings/input/ti,omap4-keypad.yaml=
 b/Documentation/devicetree/bindings/input/ti,omap4-keypad.yaml
> new file mode 100644
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/input/ti,omap4-keypad.yaml
[ ... ]
> +required:
> +  - compatible
> +  - reg

[Severity: Medium]
The commit message mentions that keypad,num-rows and keypad,num-columns were
omitted from this required list because enforcing them causes validation
failures. Should these properties, along with interrupts and linux,keymap,
be included here to accurately reflect the driver's probing requirements?

Omitting them allows non-functional device tree nodes to silently pass
schema validation. At runtime, the omap4-keypad driver will unconditionally
fail to probe via platform_get_irq(), matrix_keypad_parse_properties(), and
matrix_keypad_build_keymap() when these properties are missing.

Would it be better to enforce the strict hardware and driver requirements in
the schema, and instead fix the incomplete device tree nodes that are
failing validation?

> +
> +unevaluatedProperties: false
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708123252.1768=
355-1-egbostina@gmail.com?part=3D1

