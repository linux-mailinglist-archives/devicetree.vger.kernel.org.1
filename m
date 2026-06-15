Return-Path: <devicetree+bounces-311779-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8XKTGIS8L2p0FQUAu9opvQ
	(envelope-from <devicetree+bounces-311779-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 10:49:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D53684B76
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 10:49:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="aiN3Gs/p";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311779-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-311779-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A87FA3004F6E
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 08:44:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45DF438239F;
	Mon, 15 Jun 2026 08:44:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A153381B05
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 08:44:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781513059; cv=none; b=ZJuTNdzjl3l0/KkYtIGW/7RMesOabiZ+nN3o5pIMrbyky+/RFAA/Y6F/okHphTRW1Vz9VtncqFGC7ZyyWQOCEbkFE4Qx6hfJ3HEdOsNPymzdOq09Ub5yrRUIkCaznhl05UMS5PYnfaRLzMJsUyiWjpdGVl1ujeDlBsLeVs0MFu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781513059; c=relaxed/simple;
	bh=+wH1MxvDCOggh+bKBqqD6P5rHeGYNTvLkzHmZC7wuFI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=kMkveoiuVk8Ypyh83S8/qjzTuixJUrdE09Yz59aDDEcSo5evQAMDxdi7BfE+ekVjg5642z/OHwEJOd39jBVQUoJd1vV+WuAxo61e5sJYj+fjF/dUlBBAjlpqIuCPjs1F44BkNKkSxI179L4OZxJKeL9I6Cw+RrwjlPtFNUilg9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aiN3Gs/p; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7CC61F000E9;
	Mon, 15 Jun 2026 08:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781513058;
	bh=wffpTJ3XVPQgNbgSXpU434HrpMsXxswQzUIT00W9tXE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=aiN3Gs/p+nY0hAB91tB7+xCZDKnG5xtV5OvvNQeqCWDHN0A8OcBZYBFY8MOIXJd4Q
	 +83ZHs3vOzJGI/76k3uC5nNVaj6qJVpMvKG+cQEWIh+zT6lS0vdEgNZjd8qcclsnLX
	 PYGZBLP0Z3199XSBLqU7Lt/NXEAzDd0sIapxAY8voKRCyrS4ZgSmk9HAGwwFQysami
	 DfgzZfCpWpfzwnkT/Vur3kZlEDz0fpw9dCkFYyh9q3M+yGi01VXS1ixK1cK2qvEDPp
	 of99v5queGdAW+meWPDKRN3GBLO7ZNF64dC4nWENq1U/qAzHqT08zD/ZipmUogcnju
	 nc7GBT7RxOGqg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/5] dt-binding: pinctrl: samsung: Add
 exynos8855-pinctrl compatible
Reply-To: sashiko-reviews@lists.linux.dev
To: "Alim Akhtar" <alim.akhtar@samsung.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260615085252.1964423-3-alim.akhtar@samsung.com>
References: <20260615085252.1964423-3-alim.akhtar@samsung.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 08:44:17 +0000
Message-Id: <20260615084417.D7CC61F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-311779-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:alim.akhtar@samsung.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[samsung.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A6D53684B76

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The commit adds `samsung,exynos8855-pinctrl` to the main pin con=
troller binding, but fails to add the corresponding wake-up interrupt contr=
oller compatible (e.g., `samsung,exynos8855-wakeup-eint`) to the related `s=
amsung,pinctrl-wakeup-interrupt.yaml` schema.
--

commit 899082861559d7c752e009f7ed23cca09b5d64d4
Author: Alim Akhtar <alim.akhtar@samsung.com>

dt-binding: pinctrl: samsung: Add exynos8855-pinctrl compatible

Document pin controller support on Exynos8855 SoC.

> diff --git a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.ya=
ml b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
> index 7b006009ca0e7..c4773701c92e3 100644
> --- a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
> @@ -53,6 +53,7 @@ properties:
>        - samsung,exynos7870-pinctrl
>        - samsung,exynos7885-pinctrl
>        - samsung,exynos850-pinctrl
> +      - samsung,exynos8855-pinctrl

[Severity: Medium]
When adding support for a new Exynos pin controller, should the correspondi=
ng
wake-up interrupt controller compatible (like samsung,exynos8855-wakeup-ein=
t)
also be added to the compatible enum in the related file:
Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.=
yaml?

When related binding files in the same family don't receive matching update=
s,
it can prevent complete device tree schema validation for the new hardware.
If omitted, device tree files might be forced to define the node using older
generic compatibles without an SoC-specific compatible string just to pass
dt_binding_check.

>        - samsung,exynos8890-pinctrl
>        - samsung,exynos8895-pinctrl
>        - samsung,exynos9610-pinctrl

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260615085252.1964=
423-1-alim.akhtar@samsung.com?part=3D2

