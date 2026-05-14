Return-Path: <devicetree+bounces-297324-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CJ9tBPxlBWoZWAIAu9opvQ
	(envelope-from <devicetree+bounces-297324-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 08:04:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9471253E2ED
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 08:04:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E368D30209F3
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 06:04:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 760CF3AE1B9;
	Thu, 14 May 2026 06:04:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ctPtvlYn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540D23AB48C
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 06:04:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778738681; cv=none; b=LMg9nhpWpCac50z9RmsqWcYp457BY1WWwHhH+qyV9T77nKEWKvPhC640A67Mk0SyRrzeAxVCaczB/OcyUNgSID/mKTdvRedFQTDV6atnoyQQXAJ8gSUhE09o/09jTLtqR5QRPzQlG4bL4BRJSA1l0PN/k8ykeWYVmapxNIOnxj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778738681; c=relaxed/simple;
	bh=SowZwqWaliU5XksjX49hT7i3iG8FwtECBVUS6TSzrmc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Z0IXTs10NhYaGMF99pHeXjVshqyLyTpkUD79AmtkJCr8pBawsZNudqBJe/1TKtO/UAjbPLvQn7HF09WDOWX7IDLLlW9lt+/x+lhECBmtN+IlBNXh9nnrJcBUp9PzN+szaEasiKD5hr+twtePg5G5XbXddgk83eUsFGq3jR8mgAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ctPtvlYn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA7DBC2BCB7;
	Thu, 14 May 2026 06:04:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778738681;
	bh=SowZwqWaliU5XksjX49hT7i3iG8FwtECBVUS6TSzrmc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=ctPtvlYnBUvyyNcfvdDM4ZrrhLNe92S0HigaG6maiKDHMi7xrHzfdIGoCPi7EpKx+
	 CeuXJBuEr6afT9DAOAI5m5TPAqPiwoopE1UN4B8rnR0lcEfZop4oyq4QeGuFPqBVt4
	 xRoWU/k4w6TvXj4gq9Wd4EcDd3WXmk2gF3SaVPp42Pnryg5hxaMLSfZG4rAwEIeAPp
	 ZQYmL/mDP4uLknHHS19LFR9SaGIjAv+niVArObk6NZTn5YAKGe8++mptTYxgbRHbhp
	 hXUYRVGm8xz3WchSY1gV/KxaR1yE6ISqbj6xPc4MM0D/rNv2MY/f7F1dR8AxDFLxp9
	 zDURcQwfcvETA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 3/7] dt-bindings: clock: qcom: Add support for CAMCC
 for Eliza
Reply-To: sashiko-reviews@lists.linux.dev
To: "Taniya Das" <taniya.das@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260513-eliza_mm_cc_v2-v3-3-b59c370dc281@oss.qualcomm.com>
References: <20260513-eliza_mm_cc_v2-v3-3-b59c370dc281@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 06:04:40 +0000
Message-Id: <20260514060440.EA7DBC2BCB7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 9471253E2ED
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297324-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] The schema fails to require `#power-domain-cells` for the `qcom,el=
iza-camcc` power domain provider, resulting in broken device tree nodes.
- [Medium] The schema does not define the `power-domains` property, prevent=
ing the representation of CX and MX power rails.
- [Medium] The schema incorrectly enforces the `#reset-cells` property for =
the `qcom,eliza-cambistmclkcc` block, which provides no resets.
--

commit 3a72590500ffe71717979089f9afaf963476d138
Author: Taniya Das <taniya.das@oss.qualcomm.com>

dt-bindings: clock: qcom: Add support for CAMCC for Eliza

This commit adds compatible strings and dt-bindings headers for the
Eliza camera and camera BIST clock controllers to the existing
Milos camcc binding.

> Eliza camera clock controller is on CX and MX rails similar to Milos.
> Add compatible string for Eliza camera and camera BIST clock

Since the controller relies on CX and MX power rails, does the schema
need to define the power-domains property?

The qcom,milos-camcc.yaml binding uses unevaluatedProperties: false and
does not define power-domains. Adding the property to a device tree node
will trigger schema validation errors.

> diff --git a/Documentation/devicetree/bindings/clock/qcom,milos-camcc.yam=
l b/Documentation/devicetree/bindings/clock/qcom,milos-camcc.yaml
> --- a/Documentation/devicetree/bindings/clock/qcom,milos-camcc.yaml
> +++ b/Documentation/devicetree/bindings/clock/qcom,milos-camcc.yaml
[ ... ]
>  properties:
>    compatible:
> -    const: qcom,milos-camcc
> +    enum:
> +      - qcom,eliza-cambistmclkcc

The qcom,milos-camcc.yaml schema references qcom,gcc.yaml, which
unconditionally requires #reset-cells to be 1.

Since the qcom,eliza-cambistmclkcc block does not provide any resets, does
this incorrectly force device tree nodes to include a dummy #reset-cells
property to pass validation?

> +      - qcom,eliza-camcc

The added qcom,eliza-camcc.h header defines several power domains, making
this block a power domain provider.

Should the schema require the #power-domain-cells property for this
compatible string?

Without it, incomplete device tree nodes missing #power-domain-cells can
silently pass validation, which would cause runtime failures when consumer
IPs try to link to these domains.

> +      - qcom,milos-camcc
> =20
>    clocks:

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260513-eliza_mm_c=
c_v2-v3-0-b59c370dc281@oss.qualcomm.com?part=3D3

