Return-Path: <devicetree+bounces-308945-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 05cGNeTvJ2rD5wIAu9opvQ
	(envelope-from <devicetree+bounces-308945-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 12:50:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D521865F218
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 12:50:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="l0mLw/F/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308945-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-308945-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3FF86300A645
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 10:36:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54A383F4117;
	Tue,  9 Jun 2026 10:36:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3786139C00B
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 10:36:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781001405; cv=none; b=vDM46FTlTgR0vdEsxWFWE157jz5PtayAOTYo3CQnsvRNImDpG5f3x88qi22PszvAZQ2YLeTAyhtXa7YXST3KSVZThAl0lbCDOkSQjr2sMqYi1e3zSeY1p7Eno4OeWa9oxRL/Lgv563uwzkJLsrIay11JvRnIEqZoYSCDgleiSio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781001405; c=relaxed/simple;
	bh=JnI1bY8Gb1Soa7mjmy4GgKwWVBj1KINKgnqdYLwpSdE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=uk5wH/2gDtpMcKNfJXpOa97kOr7iSKrBZ2Jm/28wuMvFRPppHN9KxrWlFNi84wsLvn1gHI4Be9NKnQUSlEvnUA6GHZwZFumn9dwPi/ycRtSzxOr/GrYzSqeYs9cs74nMtFK+wwrX3k2AdLFfP8sfMR6GXqATFd7f5UW2hMKk1uE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l0mLw/F/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45B631F00893;
	Tue,  9 Jun 2026 10:36:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781001403;
	bh=lHDdbiKdPZj7YuQzL4RuAunVPjB7tZt8h8gC/zZbYDc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=l0mLw/F/67xYz8wDVGejwGtXa1Qx9oA84sNzXfS/eLfWt3CpsnGspVXVIcUJnF1Gp
	 cQ/toVv/QG7r9U3nMhuSYDbTiyZDVks102fb4t7bTZq+gdDyxMzOI1UbahCHMV++Ac
	 OmuZPWC2zqeWHo68uJC5TVwm+/J+kc8lYrRPFZsmUyHrMqxDV16DYeWLYziYwca9CA
	 zwlVa9WUhuE9H+MVketiZSNUBwetKq6cfCKZOmHUhvPp1zf2HSoRonytyHd8xrWjNm
	 jMKg3JP4lfr4zSqMeakb2BoW3KQ2pbhuDxqZI0Q0Xk5iW276+0nk4tlEZolteLs24+
	 gLnpGZI092bMA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 1/8] dt-bindings: remoteproc: qcom,pas: add thermal
 mitigation properties
Reply-To: sashiko-reviews@lists.linux.dev
To: "Gaurav Kohli" <gaurav.kohli@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260609-qmi-tmd-v3-1-291a2ff4c634@oss.qualcomm.com>
References: <20260609-qmi-tmd-v3-1-291a2ff4c634@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 10:36:42 +0000
Message-Id: <20260609103643.45B631F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-308945-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:gaurav.kohli@oss.qualcomm.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D521865F218

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [Medium] The `#cooling-cells` property uses an `enum` constraint instead =
of a hardware-matching `const` constraint.
- [Medium] Schema fails to enforce the mutual dependency between `#cooling-=
cells: 3` and `tmd-names`.
- [Low] The newly introduced 'tmd-names' property is missing the 'qcom,' ve=
ndor prefix.
--

commit ff18b7a7814a6d6f6545f74edd22e93602470084
Author: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Date:   Tue Jun 9 10:22:56 2026 +0000

dt-bindings: remoteproc: qcom,pas: add thermal mitigation properties

Document Qualcomm PAS remoteproc thermal mitigation properties used for
QMI-based throttling.

> diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,pas-common=
.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
> index 4607b459131b4..0d07a07507620 100644
> --- a/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
> +++ b/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
> @@ -79,6 +79,20 @@ properties:
>        channels and devices related to the ADSP.
>      unevaluatedProperties: false
> =20
> +  '#cooling-cells':
> +    description:
> +      Number of cooling cells; 2 for min/max cooling state and 3 when
> +      selecting a thermal mitigation device index.
> +    enum: [2, 3]

[Severity: Medium]
The device tree bindings guidelines state that each cell-count property must
have a const constraint matching the hardware. Is it possible to enforce a
strict const constraint in the specific hardware variant schemas rather than
allowing an enum here, so we prevent misconfigured device tree nodes from
passing validation?

> +
> +  tmd-names:

[Severity: Low]
Since this property is specific to Qualcomm's QMI-based thermal mitigation
device (TMD) throttling mechanism and not a standard core thermal binding,
should this have the "qcom," vendor prefix added to avoid namespace
collisions?

> +    $ref: /schemas/types.yaml#/definitions/string-array
> +    description:
> +      Names of the thermal mitigation devices available in remote proces=
sor
> +      subsystem.
> +    minItems: 1
> +    maxItems: 5

[Severity: Medium]
The #cooling-cells description mentions that a cell count of 3 is used to
select a thermal mitigation device index. Does this mean tmd-names should be
strictly required when #cooling-cells is 3?=20

If so, should we add an allOf or if-then conditional block tying these two
properties together to prevent validation of incomplete nodes?

> +
>    glink-edge:

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609-qmi-tmd-v3=
-0-291a2ff4c634@oss.qualcomm.com?part=3D1

