Return-Path: <devicetree+bounces-321805-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TVbFLMa0TGrkoQEAu9opvQ
	(envelope-from <devicetree+bounces-321805-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 10:11:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F29A2718F27
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 10:11:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=alMAbuf5;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321805-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321805-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 10B6530036D5
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 08:05:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BC65288C2D;
	Tue,  7 Jul 2026 08:05:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABB22C11DF
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 08:05:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783411537; cv=none; b=TjZRTG8sKsuhDB2+N91D2rSDdJYkG7PwJRhYGLuvMG3SeLrXRIkdWFWVRiLwOoqQs3DN9s1IPvgGbPBb4pqCSufR1V4scWD4VbfIu0SsG5YTexxWRQmWc4Sk03H3jPzbSD0MBx4v+JefFqw2uF7QpGNzTi1YAItBW8RwBCKU8dI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783411537; c=relaxed/simple;
	bh=rXnljgh7J5+zETQcyrY1EoOt6eZgWvN69Fp0Uyl/ftE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=YS3B4Mrd7dW3vr+c0Kj6FlO8intu8WCmPAh+bWFogx6bmpiquROVvmK2WyDrnf2hGxDVlX3kYT+PeZ6IIJMdJXx/0rERHm8RLD2u6pnHnHZdc/YvnP3JL54+WZNgkSckrsxSLkXZu8FY11zBj1xIxN2Q+/XAPYpMU+8XZbYGYkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=alMAbuf5; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DCCC21F000E9;
	Tue,  7 Jul 2026 08:05:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783411536;
	bh=I5hEfPQZHDJ9xkPu80XSXEvk8GAd28C+Pf3lnAgvgDU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=alMAbuf5hYPT5hp83ZtsUy19j75R6vVe53/lgDuTnjBBwiEzkW9dWQ9tJiVR/vckG
	 wnyrGAEMGzMinUD4Bk4GTbtuvQ5+YCbAnRzBOA7dfA55XntojzTIstCqTGp2BYEToS
	 fdzrdDdjyMSt3WgDwBL4jhZoRanXQ94+JDKNA+XKutsH+xt8MZhB+axe7Sb87hBsnW
	 RVOMMRePipPIAFXqaAFoV6OK0iVhwzIQ5aW+ht9eKbgdzEA7yHJJ6auGP+fT/bqQ9c
	 ix8yoB8AlJUNzxCCjbi0vWvfJELvcwgBCqrnnBnEK5r/H0CllTeevE0A6BzgwBY6HS
	 fEZEpSjVunWFg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 2/2] arm64: dts: qcom: monaco: enable inline crypto
 engine for SDHC
Reply-To: sashiko-reviews@lists.linux.dev
To: "Kuldeep Singh" <kuldeep.singh@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260707-ice_emmc_support-v9-2-701c86f3c25b@oss.qualcomm.com>
References: <20260707-ice_emmc_support-v9-0-701c86f3c25b@oss.qualcomm.com>
 <20260707-ice_emmc_support-v9-2-701c86f3c25b@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 08:05:35 +0000
Message-Id: <20260707080535.DCCC21F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-321805-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:kuldeep.singh@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,lists.linux.dev:replyto,smtp.kernel.org:mid,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F29A2718F27

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The `qcom,ice` property is used in the SDHC node, but it is not doc=
umented in the `qcom,sdhci-msm.yaml` binding schema.
--

--- Patch [2]: [PATCH v9 2/2] arm64: dts: qcom: monaco: enable inline crypt=
o engine for SDHC ---
commit f78e20bb65841709496ac90470aafd18132c8970
Author: Neeraj Soni <neeraj.soni@oss.qualcomm.com>

arm64: dts: qcom: monaco: enable inline crypto engine for SDHC

This patch adds a dedicated Inline Crypto Engine (ICE) node for the
monaco platform. It references the new node from the SDHC controller
using the qcom,ice property and defines power-domains and clocks.

> diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/q=
com/monaco.dtsi
> index 400c754379783..ffb13d61ee36d 100644
> --- a/arch/arm64/boot/dts/qcom/monaco.dtsi
> +++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
> @@ -4864,6 +4864,8 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>  			supports-cqe;
>  			dma-coherent;
> =20
> +			qcom,ice =3D <&sdhc_ice>;

[Severity: Low]
Will this undocumented qcom,ice property cause dtbs_check warnings?

Looking at the qcom,sdhci-msm.yaml binding schema, the qcom,ice property
doesn't appear to be defined. Since the schema enforces
unevaluatedProperties: false, adding this property here might trigger
validation warnings during the build.

Should this property be added to the devicetree bindings first?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707-ice_emmc_s=
upport-v9-0-701c86f3c25b@oss.qualcomm.com?part=3D2

