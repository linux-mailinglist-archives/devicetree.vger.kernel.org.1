Return-Path: <devicetree+bounces-307025-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5KzKDqnKIWqqNgEAu9opvQ
	(envelope-from <devicetree+bounces-307025-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 20:57:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF09642C18
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 20:57:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=m6V4yPcD;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307025-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307025-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1F9203006B6F
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 18:52:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA27C3C1996;
	Thu,  4 Jun 2026 18:52:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD49347C7
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 18:52:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780599124; cv=none; b=IoJXrfm9YsfJPoUWsGXxjWfveLARQcxtelbZZteORU386vqfXfoW4G2FjmdQhHiOCU5Zk76MAUYymXqGSDfEnqG2Mut5qezLpANU6GDV/yluxCtaHVS+JNDvly23O9yZxgi1dzoVIYNap/WYgarvZvz+QyoWJTyXwQU0j0kky+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780599124; c=relaxed/simple;
	bh=yEOaKZFHZuSzMsMUaP13YFYdYlKeNVF9/siZwedrpLM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=fNWm5+HYsuIlwACO1GEi67kXEakTcOet2c4j3tgf909sxnQZIs1Nn15zFrtRbBVj8f525dtLokMdHDZKPV+cfsHRdlMLkTp5MRkptd5GAic+zyRCiBXgH2K9VnHTkDQMUus8VRi8g3COdQntR2Jgkc8iWhCn9p2RxicNblF+WuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m6V4yPcD; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B303A1F00893;
	Thu,  4 Jun 2026 18:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780599122;
	bh=9kH/1fbjg8ufXRklZJA21K3ea1jZ21gGc1chcgBFEs0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=m6V4yPcDREII0VumvZrMCHl6o56At6+FrrS4Alwo0tL6iQILdbipAtImFRLTWuyU2
	 PB7weyyWemVcZI1MIludy6neG478m16qE8Jb+4CGZMZ91SyCw+gZ1utiF9LNewhoOO
	 kCqUj5Tob70tq8fuXQ6M7zeOzIFIC0+qTAE7vKYk3YqFm4QzHTYRXg3YsfY4olkFZR
	 x+oIcD9vPGFSGVBJjFlIocLKB0C0En18bQIYnFOXk30XSocndvAE825TRTDVf/MIPT
	 ERV2eCFTxLlW9rV9jNlhtHsvfbbfD0Lr18p3sIHtLQEcE5arjOIA/M2+5WZBRWPwgV
	 2JhEUlNLu3GJw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: interconnect: qcom: add msm8660 NoC
Reply-To: sashiko-reviews@lists.linux.dev
To: "Herman van Hazendonk" <github.com@herrie.org>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260604184400.801543-2-github.com@herrie.org>
References: <20260604184400.801543-2-github.com@herrie.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 Jun 2026 18:52:02 +0000
Message-Id: <20260604185202.B303A1F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-307025-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:github.com@herrie.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,herrie.org:email,vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7FF09642C18

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `#interconnect-cells` property is omitted from the top-level=
 `properties` block and lacks a `const: 1` constraint.
--

commit 6d4f0512e52e66a4b578ad649862cfd9451407db
Author: Herman van Hazendonk <github.com@herrie.org>

dt-bindings: interconnect: qcom: add msm8660 NoC

This commit introduces a device tree binding schema and interconnect ID
header for the Qualcomm MSM8x60 family Network-on-Chip. It defines four
fabric compatible strings, per-fabric clock requirements, and the
necessary RPM phandle to pass arbitration data to the firmware.

> diff --git a/Documentation/devicetree/bindings/interconnect/qcom,msm8660.=
yaml b/Documentation/devicetree/bindings/interconnect/qcom,msm8660.yaml
> new file mode 100644
> index 0000000000000..f8b3a05d5ba18
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/interconnect/qcom,msm8660.yaml

[ ... ]

> +properties:
> +  compatible:
> +    enum:
> +      - qcom,msm8660-apps-fabric
> +      - qcom,msm8660-system-fabric
> +      - qcom,msm8660-mmss-fabric
> +      - qcom,msm8660-daytona-fabric

[Severity: Medium]
Should #interconnect-cells be explicitly defined in this top-level properti=
es
block with a const: 1 constraint?

The inherited common schema (qcom,rpm-common.yaml) permissively allows both
1 and 2 cells, but the MSM8660 interconnect strictly uses 1 cell.

Omitting the const: 1 constraint allows invalid device tree configurations
to silently pass schema validation, and it appears to conflict with the
subsystem guideline requiring that each cell-count property must have an
explicit const constraint matching the hardware.

> +
> +  clocks:
> +    minItems: 2
> +    maxItems: 4

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260604184400.8015=
43-1-github.com@herrie.org?part=3D1

