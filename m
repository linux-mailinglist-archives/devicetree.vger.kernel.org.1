Return-Path: <devicetree+bounces-319178-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7YacDqUvRmpYLQsAu9opvQ
	(envelope-from <devicetree+bounces-319178-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 11:30:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E556F541E
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 11:30:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="L/TMudwb";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319178-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319178-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BFE44302773A
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 09:16:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D3583CC323;
	Thu,  2 Jul 2026 09:16:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75ABB399365;
	Thu,  2 Jul 2026 09:16:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782983789; cv=none; b=NpLLXStXp4liZ/8bkc822loq6wCf9XU9rpaUuwxykwiJytYXgw0fwGFIitzpROtEFo4WfrcOYYJ61iUbCVSiDpeMFvU4imQltyLU3IZc+DbEnDMZ756+4uWVf+1wK/8HuvHoy91DxqPjH8WO2phkHcHpIEkkMN7SssVj8TFZU58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782983789; c=relaxed/simple;
	bh=1x1Hu3hedgMBwNq7SoCp9xSXmb6NokWC+v5iymNGrrQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=MiTkRHF2l5y8uEM3M7A2zHkQmIzRqmRpO+QdfQfPYEks7G2eD3mBKPifrGQOlOKFl15xoIt8/P78NL0RoOblQ+owvqHRufuncbk6ihcXazann35rle6LbDAwMA7pJalM0M24iTt5Qux+m2HVGJRTMMsdlPCP1j1LQdnEFnQqXI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/TMudwb; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5B5D1F000E9;
	Thu,  2 Jul 2026 09:16:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782983788;
	bh=0Noc9bGmhd05/MNkTgzXEBsyrdl7wGq+DgJXxCN9idg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=L/TMudwb1IOYa6OegWtc432S5FrskqU9QVB2YLLzyH0ORyeljSyAEtfDdbHisQn65
	 WUrW3Kohs43lM5JA67aaKR94SYwQMCgqEsSr4DFY5Kcd6vM1Vuw8hpd4X9yoBvhrgB
	 wp9q13D/65FEUN73+r4dOwO8OsdDWVXKMVLzNp/iXtOLylM5R/Cjg36vDLof1BDDk/
	 LVnrr9nnBEariJunqwzIi40DmE/WowKczeF6TOnTB076eNgurHVVA4Fdnx7Grsv/yR
	 cExuJoDDPz7C9Bb88iuGaAuzDul0ltUzwhwQ75gqi7MVEH7r4q5rYBsWjfvuRn1UsR
	 nFQRHq/UxDrpg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC] dt-bindings: perf: riscv,pmu: Add
 interrupts-extended property
Reply-To: sashiko-reviews@lists.linux.dev
To: "Eric Lin" <eric.lin@sifive.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, linux-perf-users@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260702-pmu-dt-property-v1-1-a7a7737afb72@sifive.com>
References: <20260702-pmu-dt-property-v1-1-a7a7737afb72@sifive.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 09:16:27 +0000
Message-Id: <20260702091627.C5B5D1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-319178-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url,sifive.com:email,lists.linux.dev:replyto,vger.kernel.org:from_smtp,smtp.kernel.org:mid];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:eric.lin@sifive.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:linux-perf-users@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 90E556F541E

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Overloading `interrupts-extended` as the sole CPU affinity map f=
ails when PMU interrupts are optional.
--

commit c04ae2b471021dd39ca8ccf1e788362245660a9d
Author: Eric Lin <eric.lin@sifive.com>

dt-bindings: perf: riscv,pmu: Add interrupts-extended property

This commit adds the interrupts-extended property to the riscv,pmu binding
to define the connection between the PMU overflow interrupt and the CPU
local interrupt controller. It also notes this property is used by software
to associate a PMU node with a specific CPU on heterogeneous systems.

> diff --git a/Documentation/devicetree/bindings/perf/riscv,pmu.yaml b/Docu=
mentation/devicetree/bindings/perf/riscv,pmu.yaml
> --- a/Documentation/devicetree/bindings/perf/riscv,pmu.yaml
> +++ b/Documentation/devicetree/bindings/perf/riscv,pmu.yaml
> @@ -34,6 +34,13 @@ properties:
>    compatible:
>      const: riscv,pmu
> =20
> +  interrupts-extended:
> +    minItems: 1
> +    maxItems: 4095
> +    description:
> +      Specifies the interrupt-parent and local interrupt index for each =
CPU's
> +      PMU counter overflow. Each item points to a riscv,cpu-intc node.

[Severity: Medium]
Does overloading interrupts-extended as the sole CPU affinity map cause
failures on systems without PMU interrupts?

If a heterogeneous RISC-V SoC lacks the optional Sscofpmf extension, it
would omit the interrupts-extended property entirely. Without this property,
it seems the OS would have no mechanism to determine which PMU node belongs
to which CPU, potentially breaking perf functionality on such hardware.

Would it be safer to introduce a dedicated affinity property to prevent
future fragmentation when PMU interrupts are absent?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260702-pmu-dt-pro=
perty-v1-1-a7a7737afb72@sifive.com?part=3D1

