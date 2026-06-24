Return-Path: <devicetree+bounces-315134-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id C1Z/EzeqO2oEbAgAu9opvQ
	(envelope-from <devicetree+bounces-315134-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 11:58:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F87F6BD1C4
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 11:58:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=XWjBzUMK;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315134-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315134-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 45E46305F08B
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 09:54:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7A8E39B495;
	Wed, 24 Jun 2026 09:54:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E01B92EEE60
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 09:54:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782294851; cv=none; b=IFoOwhXeI/Em1rK86pGoeEcZ+HtrjoLr7aSwhwCjU13q9VFrg4vxAR9jCYU2Uf7ZL5IvUkSUL811T4UXjx2JHEV+wglJYPmWIhpC5C53Yf7M4Ld2tO1oA6SivMMnhcnEE5GCYPSNcnFFeef7oS7V8bDn9jKcXqEDzAmCrczCLTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782294851; c=relaxed/simple;
	bh=eVDRxQPKbs97eeEwtjYWEAAlvqe20ApkrnO+SPDU76U=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=jkY85/AtJ9WVHCk6mZuDn17x6nvMRZXBcw1ZMlwh2bHZpRHBShqDRErZjomJadD0sySn7Gvo0sRbeUfDy4MCjNm8UhVzqO5B0hcziDxREjsjqsN+9Fu/AkWzBIOtpljsBq5w8+8GoeS0vPAa/rrtQlLt8Um3PEg7Pb1z7+yc4no=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWjBzUMK; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28BA11F000E9;
	Wed, 24 Jun 2026 09:54:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782294850;
	bh=Ip7Ev9/32vnF3Df2OoIg2GeKZgjOZ/J+X10MPgZrNH8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=XWjBzUMKL9ovr99Heu+elw3jCXHq6Ck3z13V3oL72GfifpR4/T5pk5gMLub2q8bSJ
	 5M7NqZElYkSuyGvUerf6aIecprG/IRLQNF/lF+2n7ozM0FaBwwrCaP2bvnOP9zKkP3
	 JyZSg858SHiD9Xg0ESOcGXkbRgY3onFnoxwpHp+8Hi3ACFnBXz5VMCe6bsbT3FB3Md
	 syGbRbc3V641ccHsWUK+ixyMTNJjx9twON+8yTvKdBoa27ZXj9Io+rfSjCmvRAxLCO
	 as10izJwWGkl8fBnLahTArWSAtyHVBoJgvfEWMfXF5UPP+9tys00/NN3VYCLtE6gGy
	 1h+uVdiASohjA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: qcom,coresight-tnoc: allow
 arm,primecell-periphid
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jie Gan" <jie.gan@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260624-fix-tracenoc-probe-issue-v2-1-786520f62f21@oss.qualcomm.com>
References: <20260624-fix-tracenoc-probe-issue-v2-0-786520f62f21@oss.qualcomm.com>
 <20260624-fix-tracenoc-probe-issue-v2-1-786520f62f21@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 24 Jun 2026 09:54:09 +0000
Message-Id: <20260624095410.28BA11F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-315134-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jie.gan@oss.qualcomm.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8F87F6BD1C4

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Setting `additionalProperties: true` completely disables strict =
schema validation for undefined properties, allowing misspelled or undocume=
nted properties to silently pass.
--

commit 6e8606766f1fd41047be4a5d6a3178b5f3fd67e9
Author: Jie Gan <jie.gan@oss.qualcomm.com>

dt-bindings: arm: qcom,coresight-tnoc: allow arm,primecell-periphid

This commit updates the qcom,coresight-tnoc binding to reference
primecell.yaml. It changes additionalProperties to true to allow
the arm,primecell-periphid property along with other common properties.

> diff --git a/Documentation/devicetree/bindings/arm/qcom,coresight-tnoc.ya=
ml b/Documentation/devicetree/bindings/arm/qcom,coresight-tnoc.yaml
> --- a/Documentation/devicetree/bindings/arm/qcom,coresight-tnoc.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom,coresight-tnoc.yaml
[ ... ]
> @@ -78,7 +81,7 @@ required:
>    - in-ports
>    - out-ports
> =20
> -additionalProperties: false
> +additionalProperties: true

[Severity: Medium]
Does setting additionalProperties to true completely disable strict schema
validation for this node?=20

It looks like this change will cause misspelled properties to silently pass
during make dt_binding_check. When adding a $ref in an allOf block, should
unevaluatedProperties: false be used instead? That would allow the inherited
primecell.yaml properties to pass while still rejecting any undefined or
typoed properties.

> =20
>  examples:
>    - |

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260624-fix-tracen=
oc-probe-issue-v2-0-786520f62f21@oss.qualcomm.com?part=3D1

