Return-Path: <devicetree+bounces-320169-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2ALoKUW/R2qBegAAu9opvQ
	(envelope-from <devicetree+bounces-320169-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 15:55:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A19777031E6
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 15:55:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=HVwZVVj1;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320169-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-320169-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 524DE301E4F7
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 13:40:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F67E3D8123;
	Fri,  3 Jul 2026 13:40:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67E4A3C13EF
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 13:40:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783086004; cv=none; b=kRLXOUXHNylgbHlcuPj5BoSN41kR0y/COfU45p30a9UOdtQpPWjBLW5yw9OjpBmH2vEWG7Obsj54Tb7h00pEyist0Bt9Ytrf8zVX817oUtjbLZ8XqDWciXtrIyw9XcNJA6BBsmNvKi5gT6tpAhgOHlcBs745DNTttwJDX+66r5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783086004; c=relaxed/simple;
	bh=U0FCz6i/tMdzQZ+HXrWlxJ15RZVfGdN4tppqiNMYVV8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=iYxHkHWuF/qV0rgB89R52h/0w4a/nEYYjy1wXAg2axSHSGkfYhSSE1uLlbVrxwUMkg1Fn73iPD55Jn/8e8qbcjhsMRjBmk2utUklGugCq9eQzb6mObHTdfZ8rEEaWhOZX8huSNKC4y/rhm4pwM9UtYAkNSMnMLBrwvLeRWXSgMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HVwZVVj1; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5DF51F000E9;
	Fri,  3 Jul 2026 13:40:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783086003;
	bh=v40E2tgbiCyYO6K8eYLvN7TQlgmv6mV+9l/WsUCS1rE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HVwZVVj1mNktLboX+hZpDwliqoQJZHMoX7fKT6OBhzqobxz66oIquO7VrZ0y4Udfg
	 CCogsL4sDFBt6kMsqRfy7O8VkTgs4ErQX9sA4PQwk+f15V0gQ27KsWewwBIvfOP7X9
	 zFLFVAS4bL+kLU0YJqGLEkyc5WoBw7pJKGqmnUMb0rbAXHsRP7cnItkswfKU9eJ5iJ
	 psUFcuVjU2k8y8il3VEwDTxGn0QX/MI8LH6dbKmeWO3dQ5qGdfgPZDILBI6aVMYhrC
	 lU1qIbd2F0aT+qf6TwUZWI3+u3iGzR7kK7BnPq6DJuL3QRRe+75FLFoInspnLLtRN4
	 B8cz8wpWAWcdA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 02/12] dt-bindings: soc: fsl: qe: Set #interrupt-cells
 to 2 to support interrupt type encoding
Reply-To: sashiko-reviews@lists.linux.dev
To: "Paul Louvel" <paul.louvel@bootlin.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260703-qe-pic-gpios-v1-2-6c3e706e27dc@bootlin.com>
References: <20260703-qe-pic-gpios-v1-0-6c3e706e27dc@bootlin.com>
 <20260703-qe-pic-gpios-v1-2-6c3e706e27dc@bootlin.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 13:40:02 +0000
Message-Id: <20260703134002.C5DF51F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-320169-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:paul.louvel@bootlin.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,lists.linux.dev:replyto,bootlin.com:email,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A19777031E6

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Schema unconditionally changes `#interrupt-cells` from 1 to 2, b=
reaking backward compatibility with existing single-cell device trees.
--

commit ea9fdfe75d38976a589a83706c16b469e2657dbe
Author: Paul Louvel <paul.louvel@bootlin.com>

dt-bindings: soc: fsl: qe: Set #interrupt-cells to 2 to support interrupt t=
ype encoding

This commit updates the #interrupt-cells property constraint in the FSL QE
ports interrupt controller binding to support interrupt type encoding. It
changes the required value from 1 to 2.

> diff --git a/Documentation/devicetree/bindings/interrupt-controller/fsl,q=
e-ports-ic.yaml b/Documentation/devicetree/bindings/interrupt-controller/fs=
l,qe-ports-ic.yaml
> index 2b8e7b9c6d7a4..2b7c6b4f03892 100644
> --- a/Documentation/devicetree/bindings/interrupt-controller/fsl,qe-ports=
-ic.yaml
> +++ b/Documentation/devicetree/bindings/interrupt-controller/fsl,qe-ports=
-ic.yaml
> @@ -23,7 +23,7 @@ properties:
>      const: 0
> =20
>    '#interrupt-cells':
> -    const: 1
> +    const: 2

[Severity: Medium]
Does this unconditional change to const: 2 break backward compatibility with
existing device trees?

Device tree bindings are generally considered ABI. By removing const: 1,
schema validation (dtbs_check) will fail for any existing device tree blobs
that use #interrupt-cells =3D <1>.

Should this be updated to allow both values (e.g., enum: [1, 2]) to safely
expand the cell counts while maintaining compatibility with older device
trees?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260703-qe-pic-gpi=
os-v1-0-6c3e706e27dc@bootlin.com?part=3D2

