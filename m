Return-Path: <devicetree+bounces-302936-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YGRREphmFWqVUwcAu9opvQ
	(envelope-from <devicetree+bounces-302936-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 11:23:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 959365D3398
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 11:23:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BF1A73081941
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 09:15:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91BA63D4116;
	Tue, 26 May 2026 09:15:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="czW0cHMK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B7523D1CA5;
	Tue, 26 May 2026 09:15:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779786929; cv=none; b=UPA1MFUy1cXcTmC2cEg1JGGP7MDgxvLcDyKvN6N4hLH+QYaEXk5pVMw6f+wIErYSqzTLZqejZ0KbGra/rFmWcwpuGL/JQFBAB+9/a9IKVoHLt6M8M10MAM9DOv48kDAnJnkXIVe+fHnkrxb+tEtJPeshIlTTWTOCt6kmimt1YCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779786929; c=relaxed/simple;
	bh=DXR/yTlNzmL+/oEQzzehaiiL7pmNOez5x9j123Hydvg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=fbPLNCTuic9/FjAiJHWPLEUiy5XMfshOlU7M6lB+MImB5aHqWS8qIwNHL/YkEahQkq9cz37Nf9qpwfAanWId+dszsvMLwX6VlVvlPVoQKfEyOiQciN3ayTwOkMJr9tKd4c6V4FKfb9j8LzrPuP/VIq9lL8kF3v2HbxRLxw6h5jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=czW0cHMK; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F8341F000E9;
	Tue, 26 May 2026 09:15:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779786927;
	bh=kRPtTNncZXdj/I1gBQSuUAqQGNqfTw2zxjhWg8DBkSk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=czW0cHMK7C/iRlLCgqEAUUJVmGiN0OrK5ufFGfa/PMpQcpoj7iwEbpQhD/3ZTxWCp
	 eXf/JuqBVY5vi48mQanCxaLm0PW+I+tdk4PWn60D4zx/grVrK/7riCbh8gmTMmnMiK
	 1zCtdh3vL7thQqp7NklAKSL/jclK2PuhF3Du7efzalNgsVaJ1JoX1ba2SpvOn2Dszb
	 sZrAA1Cb+dUtnJA5HKhGid12deKlp/rQd9xorgcn2IMqY5+bRz95zdGpYn0jgiHGiU
	 vhGMGuucj6sJN3spnV4RqYcfTRarAVehsNr//j3Z1CaU/VpXUUvImMr6wTMD1sjHNy
	 SH9+OZD1IpbuA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 1/4] dt-bindings: pci: Strictly distinguish C0 from
 C1-C5
Reply-To: sashiko-reviews@lists.linux.dev
To: "Thierry Reding" <thierry.reding@kernel.org>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, linux-pci@vger.kernel.org
In-Reply-To: <20260526-tegra264-pcie-v5-1-84a813b979d7@nvidia.com>
References: <20260526-tegra264-pcie-v5-1-84a813b979d7@nvidia.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 26 May 2026 09:15:26 +0000
Message-Id: <20260526091527.9F8341F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,nvidia.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-302936-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
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
X-Rspamd-Queue-Id: 959365D3398
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `oneOf` conditional branches for C0 and C1-C5 controllers fa=
il to specify `minItems` and `maxItems` for `reg` and `reg-names`, allowing=
 incorrect array lengths to pass schema validation.
--

commit e94ac7315673fefb739d35acd2b3406eaf80cdbc
Author: Thierry Reding <treding@nvidia.com>

dt-bindings: pci: Strictly distinguish C0 from C1-C5

This commit strictly distinguishes the C0 controller from the C1-C5
controllers in the Tegra264 PCIe binding. It updates the register lists
and names for each variant under an allOf oneOf block to match the
hardware correctly.

> diff --git a/Documentation/devicetree/bindings/pci/nvidia,tegra264-pcie.y=
aml b/Documentation/devicetree/bindings/pci/nvidia,tegra264-pcie.yaml
> index dc4f8725c9f59..acb677d477fb3 100644
> --- a/Documentation/devicetree/bindings/pci/nvidia,tegra264-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/nvidia,tegra264-pcie.yaml
[ ... ]
>  properties:
>    compatible:
>      const: nvidia,tegra264-pcie
> =20
>    reg:
>      minItems: 4
> +    maxItems: 5
> =20
>    reg-names:
>      minItems: 4
> +    maxItems: 5
[ ... ]
> @@ -70,6 +61,40 @@ required:
> =20
>  allOf:
>    - $ref: /schemas/pci/pci-host-bridge.yaml#
> +  - oneOf:
> +      - description: C0 controller (no UPHY)
> +        properties:
> +          reg:
> +            items:
> +              - description: application layer registers
> +              - description: transaction layer registers
> +              - description: privileged transaction layer registers
> +              - description: ECAM compatible configuration space
> +
> +          reg-names:
> +            items:
> +              - const: xal
> +              - const: xtl
> +              - const: xtl-pri
> +              - const: ecam

[Severity: Medium]
Will this schema fully enforce the register counts for each variant?

Since JSON schema tuple validation only evaluates elements present up to the
length of the instance array, it does not enforce bounds on the length unle=
ss
minItems and maxItems are explicitly provided in these conditional branches.

Because the top-level schema permits minItems: 4 and maxItems: 5, a C0 node
providing 5 registers might incorrectly pass validation against the C0 bran=
ch.
The first 4 items match the items list, the 5th item is unconstrained by the
C0 branch, and the array satisfies the top-level maxItems: 5.

Similarly, a C1-C5 node providing only 4 registers could pass the C1-C5
branch below. The 5th constraint would never be evaluated on a 4-item array,
and the array would satisfy the top-level minItems: 4.

Should explicit minItems: 4 and maxItems: 4 be added to the C0 properties
block, along with minItems: 5 and maxItems: 5 for the C1-C5 properties bloc=
k,
to ensure the strict distinction mentioned in the commit message?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260526-tegra264-p=
cie-v5-0-84a813b979d7@nvidia.com?part=3D1

