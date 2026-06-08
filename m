Return-Path: <devicetree+bounces-308126-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IDQLCtKGJmqOYAIAu9opvQ
	(envelope-from <devicetree+bounces-308126-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 11:09:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C5A3654695
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 11:09:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=UD44aQBg;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308126-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308126-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DFB3B308CC01
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 08:56:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A55CA3B3887;
	Mon,  8 Jun 2026 08:56:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9289F2D6E5C;
	Mon,  8 Jun 2026 08:56:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780909005; cv=none; b=Zcie00wgRcNYFptpXBm4sI3TS+r2AEwKccikjSysxTPH/x/2afhSj05LeecHJ/qAdrcYFX7Vzh9P6YMQFeijq3onN9KWP2GwsPLHLQ4ckaaPWRPh5pf8+ymiiAfxWhtLztbWzyqTIX2T6WEfBCyp8ppyG/2+gYNge6dqBBKQG/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780909005; c=relaxed/simple;
	bh=mCvICw+V8x9WUH+ZKxcvySgyc4E0UOJlcSzinCk1qaE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=RgvjPCSBBjGB5s8lN2QmgLCSccY+4DcG3JCv5d2XDAqOiFQkmidPrZ1ZzxmRcUSwYC/I8afYZMSejwxrjRLM2i+J1uioVkvAnhHOl23qW1gUeEOPQjxamJUHbAjBZO2XJG3JKgOxM7Fl9Sgg+zeCmLY4GwaAV+HCLHImsTVUpeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UD44aQBg; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 091731F00893;
	Mon,  8 Jun 2026 08:56:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780909004;
	bh=sxSE2l6KAAkyWscMU0lKK/VyINcG1PV/kDm4olgmCPQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UD44aQBgvuQ7ydJ3q/NMP44zOp6fqdqS1JXELYVlyflEr0U8GrhIs2yLlOahVDYOu
	 EadvKYzuswMa01hqZGD7zaFRoo01JWr+ozPRQu2t9iP2ZiUfIfOupzoAN3VH7aHlah
	 Wox+nw4ilCSggTUaGwioTwjdGDaU9MYS1h7V3NUs2yUKNCzyXa4bRFCrEWmLoIjhUq
	 gQ2x52S4wLmnpfygMuHM7utYY1EPWBm5sChmME6LW1gZHA7rPF/aFuIGR/VL6YQa6/
	 cRVyxsCrOQyMVLF8ijEmYrV593szwidtb5hTFkElJ6celnvtKwmUJTw6CHbCQXzFvd
	 qNv4h4UholpIw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/3] dt-bindings: PCI: qcom,pcie-sm8550: Add Eliza
 compatible
Reply-To: sashiko-reviews@lists.linux.dev
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, olteanv@gmail.com, vkoul@kernel.org, neil.armstrong@linaro.org, linux-pci@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260608-eliza-v3-2-9bdeb7434b28@oss.qualcomm.com>
References: <20260608-eliza-v3-2-9bdeb7434b28@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 08 Jun 2026 08:56:43 +0000
Message-Id: <20260608085644.091731F00893@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-308126-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:krishna.chundru@oss.qualcomm.com,m:linux-phy@lists.infradead.org,m:olteanv@gmail.com,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:linux-pci@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[lists.infradead.org,gmail.com,kernel.org,linaro.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,qualcomm.com:email,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8C5A3654695

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The schema uses four separate `if` conditional blocks to apply cons=
traints for the exact same `qcom,eliza-pcie` compatible string, instead of =
consolidating them into a single block.
--

commit 4a8af2f6d98b918d7b48060ac70342492b7abb27
Author: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>

dt-bindings: PCI: qcom,pcie-sm8550: Add Eliza compatible

This commit adds the qcom,eliza-pcie compatible string to the SM8550 PCIe
bindings. It introduces specific property constraints for the Eliza SoC,
defining the required number of registers, clocks, interrupts, and resets.

> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml =
b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
[ ... ]
> @@ -91,6 +92,55 @@ required:
> =20
>  allOf:
>    - $ref: qcom,pcie-common.yaml#
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: qcom,eliza-pcie
> +    then:
> +      properties:
> +        reg:
> +          minItems: 6
> +        reg-names:
> +          minItems: 6
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: qcom,eliza-pcie

[Severity: Low]
Is there a reason to use four separate conditional blocks for the exact same
compatible string? Could the properties for reg, clocks, interrupts, and
resets be consolidated under the then clause of a single if block to reduce
verbosity and schema complexity?

> +    then:
> +      properties:
> +        clocks:
> +          minItems: 8
> +          maxItems: 8
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260608-eliza-v3-0=
-9bdeb7434b28@oss.qualcomm.com?part=3D2

