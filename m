Return-Path: <devicetree+bounces-307548-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zTudDipBI2owmQEAu9opvQ
	(envelope-from <devicetree+bounces-307548-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 23:35:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DD3B64B6EE
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 23:35:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="Adl2XUf/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307548-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307548-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1BF6E3020C05
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 21:27:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FB23481232;
	Fri,  5 Jun 2026 21:25:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBA76480DD2
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 21:25:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780694735; cv=none; b=c9xisN+tmoOe8d8jCGsEbImVHEJc2ywiKuGsfpZ40yDshJDwNZphUiRkfXzLeIMWnd85lPVXVn3EgMLwKe5mEEJY3DJzGHKV1EORCa77szKOwRMw/u+uEtWZ3d+9UWxyMpX3VfVXUl9iTbyphFN1acW0K52LwrVdN5+Yx7pS43k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780694735; c=relaxed/simple;
	bh=9urqaBXMRvdeKmTitin4n24CTwpU6Hx/UTxyGnxq+lc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=WOCJYwmKRrryXC6Xx74D9MjJXoHZA/yx27CSFlN9VXkb4gymRYYFEJmlmQtCMh66M2tkp1SSGsVym41ZkQ2OTy+4cEl7d5xfqpqogRTqBOtSHiTiCkjOQlzQeNYY451L6iQJmKKzx3Fs7MxnQE4c/xaFdz2MaqpVZr809IfcH64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Adl2XUf/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75D231F00893;
	Fri,  5 Jun 2026 21:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780694733;
	bh=1i7DG+oE+Jvh+dFd9b7fGMC8VHle/z7ECBioH8hhsJo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Adl2XUf/i9UbFL2Vd4zcDLv29HZc6v6S6QcHizS8OfdBql4QuA3a61nnZ6sN57xbl
	 /8Z2kulb4F9GvP25SY9zYWoJIi9waL2o8rOJcfZJYoyem0Oh0dGFRe6gwSIrworFge
	 dVY+0mszz5846mgOPVctOoqpQcJyLVG+NdbYG9rvWa4fPhMncLLuE69JosbpVTgx4j
	 Hq3pdfkBRJ9RY0OZZ5pPtaofHXl63k3HKhWa4pFFG7oBowoIxHj4vdF78xXFToitu6
	 Lg6ELtpP6RP3L+eMIoPfJm197knpgP3p4Z9xb09Gzxcje99t4O6yF67uL1HkTf7rE8
	 5Z4d1TQ3n7WMQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/7] dt-bindings: interrupt-controller:
 realtek,rtl-intc: Allow 2 interrupt cells
Reply-To: sashiko-reviews@lists.linux.dev
To: "Markus Stockhausen" <markus.stockhausen@gmx.de>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260605211646.2101652-2-markus.stockhausen@gmx.de>
References: <20260605211646.2101652-2-markus.stockhausen@gmx.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 05 Jun 2026 21:25:33 +0000
Message-Id: <20260605212533.75D231F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-307548-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:markus.stockhausen@gmx.de,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_TO(0.00)[gmx.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,gmx.de:email,lists.linux.dev:replyto,vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2DD3B64B6EE

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The cell-count property `#interrupt-cells` uses an `enum` constr=
aint instead of a `const` constraint, violating dt-bindings subsystem rules.
--

commit 11a7c1b034a74e6212dca3ea81cd1ec7e513c49c
Author: Markus Stockhausen <markus.stockhausen@gmx.de>

dt-bindings: interrupt-controller: realtek,rtl-intc: Allow 2 interrupt cells

This commit updates the #interrupt-cells property to accept either 1 or 2
cells to support explicit hardware interrupt routing to multiple parent CPU
interrupt lines.

> diff --git a/Documentation/devicetree/bindings/interrupt-controller/realt=
ek,rtl-intc.yaml b/Documentation/devicetree/bindings/interrupt-controller/r=
ealtek,rtl-intc.yaml
> --- a/Documentation/devicetree/bindings/interrupt-controller/realtek,rtl-=
intc.yaml
> +++ b/Documentation/devicetree/bindings/interrupt-controller/realtek,rtl-=
intc.yaml
> @@ -32,8 +32,9 @@ properties:
> =20
>    "#interrupt-cells":
>      description:
> -      SoC interrupt line index.
> -    const: 1
> +      First cell is the SoC interrupt line index. Optional second cell
> +      specifies the parent interrupt index to route to.
> +    enum: [1, 2]

[Severity: Medium]
Does this change violate the subsystem requirements for cell-count properti=
es?

The device tree binding subsystem rules require that each cell-count proper=
ty
must have a const constraint matching the hardware (for example, const: 2).
Changing this constraint to use an enum instead of a const can lead to
incomplete or unreliable schema validation during dt_binding_check, as
downstream node references rely on a fixed cell count constraint to validate
interrupt specifiers properly.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260605211646.2101=
652-1-markus.stockhausen@gmx.de?part=3D1

