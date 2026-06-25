Return-Path: <devicetree+bounces-315691-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qgyMNToxPWoJywgAu9opvQ
	(envelope-from <devicetree+bounces-315691-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 15:46:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D6ED56C63D7
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 15:46:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=XzxiAbT6;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315691-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-315691-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 86679301B1D9
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 13:46:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA05F345CAA;
	Thu, 25 Jun 2026 13:46:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3A2332AAA3
	for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 13:46:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782395169; cv=none; b=KJl2COqhJ8gKqrpE8+viu5Ti0N7+NH2eyls6cxyzdhsJzXBUIv074uBvQIOg3inx/CGD0RMAxGEC33LN1wSrGX3tZ3HDVWsN+bS+mKVa8DvIUNIGJU5qGAGwzuuEay8ZAHckJciAvZMSBGZ5yrYKqogLsQeUIahpZpBbuL8qDjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782395169; c=relaxed/simple;
	bh=uwFHfu2Kh3Ey3+MYrOA2Fa4jjI+7oL/GlhUTdTqjkbw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=JtH7/zNovJPLlDN8Ln8DfZVa0JHgUBQrZaz/SIjy2CeNO5oxajMPkluqnlWf33I843AikBoRQAdqOnvroKLrCyeefygG4TvqZtj7HiccG1GfjPze5DO6c+f+VGnEN9g2kdzQU3Si3tQE/xU7H9iI3JFLRDwdW1eJGyGlTRwfFm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XzxiAbT6; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 284FF1F000E9;
	Thu, 25 Jun 2026 13:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782395168;
	bh=HLkzmPcAApni3sby0mI1IlQLUWqZECTLDEeYKL//KHE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=XzxiAbT6s2vlQtCvKpVF04OSEk1b7k2/m7t8/NhhdNVrw05gzhAuur5WcNEssvUcA
	 5xa0ZAg4OJGIbSbZVHHJt4xA0nbBBricyAxCEzPpO0C1xzoMVJjVUBUwN9IoI0qR2b
	 v1cCzP9PE1Jl+MOj1zH0+4zb1sEGAHQ2UmhFL0w7RK27MPEnDzXSUhWEA8VAOg/xhg
	 iUgLPBLPFpjeqG2qg0vl1JzCPuR3al1STULYCgi2WFuq7LeE4qWHEz1fIqBV6mYqlZ
	 HQP2Uoh0gK3rRKrRR8usoaeYd1n+QY9NcZfEm8uj9gwdfGlN+tBCpN2Bw8bH9XCEWe
	 SDozyXB9TylSA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: media: qcom: Add JPEG encoder
 binding
Reply-To: sashiko-reviews@lists.linux.dev
To: "Atanas Filipov" <atanas.filipov@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260625133828.3221781-2-atanas.filipov@oss.qualcomm.com>
References: <20260625133828.3221781-1-atanas.filipov@oss.qualcomm.com>
 <20260625133828.3221781-2-atanas.filipov@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 25 Jun 2026 13:46:07 +0000
Message-Id: <20260625134608.284FF1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-315691-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:atanas.filipov@oss.qualcomm.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D6ED56C63D7

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The `clock-names` property is missing from the `required` list des=
pite `clocks` being required and the driver relying on the names.
- [Medium] The commit message claims `reg-names` is documented as a propert=
y, but it is missing from the YAML schema.
--

commit d5b47be66fcc52e7570e1b138452c400f72abc6b
Author: Atanas Filipov <atanas.filipov@oss.qualcomm.com>

dt-bindings: media: qcom: Add JPEG encoder binding

This commit adds a device-tree binding for the Qualcomm JPEG encoder
hardware block present in SM8250 (Kona) SoCs.

>     Properties documented:
>     - compatible: qcom,sm8250-jenc
>     - reg / reg-names: single MMIO region named "jpeg"
>     - interrupts: single edge-triggered interrupt

[Severity: Medium]
The commit message claims reg-names is documented as a property, but it
is missing from the YAML schema below.

If a device tree uses reg-names =3D "jpeg" based on this documentation,
the device tree will fail schema validation because additionalProperties: f=
alse
is enforced. Should reg-names be added to the properties definition?

> diff --git a/Documentation/devicetree/bindings/media/qcom,jpeg-encoder.ya=
ml b/Documentation/devicetree/bindings/media/qcom,jpeg-encoder.yaml
> new file mode 100644
> index 0000000000000..ab8d8951d21fa
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/qcom,jpeg-encoder.yaml
[ ... ]
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - interrupts

[Severity: High]
Does clock-names need to be included in the required list here?

If an incomplete device tree node provides clocks but omits clock-names,
the schema validation will silently pass since clock-names is not in the
required list.

At runtime, if the driver calls devm_clk_bulk_get_all(), it leaves the clock
id fields as NULL when clock-names is missing. The driver then iterating
over the clocks and calling strcmp(jenc->clks[c_idx].id, "core") would cause
a panic due to a NULL pointer dereference.

> +  - power-domains
> +  - iommus
> +  - interconnects
> +  - interconnect-names

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260625133828.3221=
781-1-atanas.filipov@oss.qualcomm.com?part=3D1

