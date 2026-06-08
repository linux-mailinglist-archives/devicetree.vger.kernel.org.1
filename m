Return-Path: <devicetree+bounces-308475-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xf/ZJbAEJ2pCqAIAu9opvQ
	(envelope-from <devicetree+bounces-308475-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 20:06:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 03ED36598A7
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 20:06:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=kfD8ZLh9;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308475-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308475-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 464183063395
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 18:02:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C1C437BE6C;
	Mon,  8 Jun 2026 18:01:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0B353DA7EC
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 18:01:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780941694; cv=none; b=UTsaBwSqfBuK26G9ZoMbA5BodiNGzs882ybaq2mlNuzFdqAwowEJbJO8YUefz+ZYZAZLo3LjO/UDOjsrdV/pXf7958ptvbySlmq/sN/J4rpeB+RpVDUv9ZBlwCrmoO9tK5fEG/IfjmdY8uvCVFCV2NkygeFRBIvL46byx04tsZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780941694; c=relaxed/simple;
	bh=X3RYiQcx6eVjXIVo+7Erh0pgIRmY+RDme6R9PuyVPmY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=TMRNibJopob7J09TAhB+Mrotms/O2Z/m5T98mOGYbJlLAAEwtw0CJDC8TRjfpAEn2oeK8BUoo5lgSuT0C/wO7hcnXJo+IuMjiByPqzglMDul7IixxX63LNiysL/0WuH4du1CKBbXpin5uMfQbGKYMJWaPwElsw1xXlNqlYPfT28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kfD8ZLh9; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 863CF1F00893;
	Mon,  8 Jun 2026 18:01:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780941693;
	bh=PQkcxbn3eMUyjPwEaHRxAyeYWRA5L96rXkU8dvRqN3o=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kfD8ZLh93L3MevoN3oCrFc8ockqusJM7NXeH1Oh0cmqQdixgdZ4KJb5TVMK0jDsUo
	 W/NxUODfgB5nbe862nNnMZeBxkZkfl3vw+aGHhspJGuQi5N0Mj9PO5IWuEm9MpCqIl
	 8CFjXMiZZDSrQGdlBmTswefyHUxZQGog30ZgRc5iTPxb3tDhxnQ0KEAh8mZasIu/Dv
	 cqrdLKPyZp4SQ6U5lJPVS3AmWFUH2zwjQQ3RxJhP7Wxtk8Y0gfilgA0TiM29L3Z3Cn
	 57Ej6NfG6nMJOq66N0ouv5jbRDecsxVBHwwReOnCLl/Uwnyspl2BXJz8v1cUI0UlCR
	 lfDFb9wlVpZbg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/2] spi: dt-bindings: nuvoton,npcm-fiu: Convert to
 DT schema
Reply-To: sashiko-reviews@lists.linux.dev
To: "Tomer Maimon" <tmaimon77@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260608175418.1936892-3-tmaimon77@gmail.com>
References: <20260608175418.1936892-3-tmaimon77@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 08 Jun 2026 18:01:32 +0000
Message-Id: <20260608180132.863CF1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-308475-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:tmaimon77@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_TO(0.00)[gmail.com];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url,vger.kernel.org:from_smtp,lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 03ED36598A7

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The alias mapping convention for NPCM8XX was corrupted during the c=
onversion to YAML.
--

commit 04ac00da42e73e1f171a2c2d3fdb84bc4768096a
Author: Tomer Maimon <tmaimon77@gmail.com>

spi: dt-bindings: nuvoton,npcm-fiu: Convert to DT schema

This commit converts the Nuvoton NPCM FIU binding to the DT schema format.

> diff --git a/Documentation/devicetree/bindings/spi/nuvoton,npcm-fiu.yaml =
b/Documentation/devicetree/bindings/spi/nuvoton,npcm-fiu.yaml
> new file mode 100644
> index 0000000000000..0f95def019105
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/spi/nuvoton,npcm-fiu.yaml

[ ... ]

> +description: |
> +  NPCM FIU supports single, dual and quad communication interface.
> +
> +  The NPCM7XX supports three FIU modules:
> +    FIU0 and FIUx support two chip selects
> +    FIU3 supports four chip selects.
> +
> +  The NPCM8XX supports four FIU modules:
> +    FIU0 and FIUx support two chip selects
> +    FIU1 and FIU3 support four chip selects.
> +
> +  Alias convention:
> +    The '/aliases' node should define:
> +      For NPCM7xx:  fiu0=3D&fiu0; fiu1=3D&fiu3; fiu2=3D&fiux;
> +      For NPCM8xx:  fiu0=3D&fiu0; fiu1=3D&fiu3; fiu2=3D&fiux; fiu3=3D&fi=
u1;

[Severity: Low]
Does this new alias mapping for NPCM8xx correctly match the original text
binding?

The original text binding in nuvoton,npcm-fiu.txt mapped the aliases as:

In the NPCM8XX BMC:
        fiu0 represent fiu 0 controller
        fiu1 represent fiu 1 controller
        fiu2 represent fiu 3 controller
        fiu3 represent fiu x controller

The converted documentation maps fiu1 to fiu3, fiu2 to fiux, and fiu3 to
fiu1. Could you confirm if this change in the documentation was intentional?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260608175418.1936=
892-1-tmaimon77@gmail.com?part=3D2

