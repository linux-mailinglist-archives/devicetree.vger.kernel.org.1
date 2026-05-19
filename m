Return-Path: <devicetree+bounces-300050-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0KkaDBJKDGrjdQUAu9opvQ
	(envelope-from <devicetree+bounces-300050-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 13:31:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C56D57DA67
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 13:31:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 57B9930146AC
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 10:58:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7869747F2ED;
	Tue, 19 May 2026 10:58:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GalazZuA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C034F23395C
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 10:58:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779188319; cv=none; b=VaPZuwP6DgLaQQ4xnRPYqYJJ+dZ/aXk6wrNFlmAHZCW22nDrAslcPW63//35y0p4cBgyz+vdu1vZOVT8rJvbJt8jpaEqzlBstrqDowOoNAqp4hqCyHLq9kvDiLzgGiyHU9DVm/f1BW2beJNkcMOU0xIuWzn4NBSLIxg2sUaklpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779188319; c=relaxed/simple;
	bh=rnwrNq5GjaS347xv+iSFe1s3GgBDe5yCUcnLIsHsCnU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=tt2QEo/SF+ZsLQZsrJXqbTWYuEysHkc9FFeXq3SayzAu5FUPyDq4B97z7aoQLUUO9RUL1b1FAVETQnNaHy18eMlyam0VQeCikEcrIjBqovnDQKLS+6kOShdCpiDqbi4cwI1EOalfDwwbyRJwlpDiaKRbtuk30hFMlBSeqLn2DxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GalazZuA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2538C2BCB8;
	Tue, 19 May 2026 10:58:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779188319;
	bh=rnwrNq5GjaS347xv+iSFe1s3GgBDe5yCUcnLIsHsCnU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=GalazZuAYuPPvNzSK3IEoWAilC5kLj/kLfjJ2+hrCrJMMEsFEtRfhH8yWsSi2BtDt
	 gS33LJfqT0KEki+VEhE1y9ror4CfBlRdcu1QHKqD97dTrx3cSAjPNp7WJXcmBDq+Cp
	 oXkgkN6nWZsoMbPF5EVZiEGSIiXzb5Ff2nyiUqzVu+9aaWaAC6RldZarJyhXNgVHzz
	 qszYb4MzfQu603i0LzgN+/bk3kggDHFt9LFKJ/TtSSyDIqiodr9dXtMSnTyVJ8fh14
	 yK9laepk/mtAnj3mDTluGxe/+RE4cINFcOQotfDFF9TZfUc8uZARxHaKyPrNpcGBxZ
	 TSMCjSGbxEOFQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/6] dt-bindings: usb: qcom,pmic-typec: deprecate
 device-specific VBUS
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260519-fix-tcpm-vbus-v1-1-14754695282d@oss.qualcomm.com>
References: <20260519-fix-tcpm-vbus-v1-1-14754695282d@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 10:58:37 +0000
Message-Id: <20260519105838.D2538C2BCB8@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-300050-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:email,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url]
X-Rspamd-Queue-Id: 9C56D57DA67
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] Removing `vdd-vbus-supply` from the `required` list without enfo=
rcing a replacement constraint allows device trees to omit a VBUS supply en=
tirely.
- [Low] The YAML example still uses the deprecated `vdd-vbus-supply` proper=
ty instead of demonstrating the newly recommended `vbus-supply` inside the =
`connector` node.
--

commit 41dafb66aa6b39b2228e9fd24e01754d63882c2d
Author: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: dt-bindings: usb: qcom,pmic-typec: deprecate device-specific VBUS

Qualcomm PMIC Type-C devices historically provided their own way of
specifying the vbus regulator via the vdd-vbus-supply node. This commit
deprecates the vdd-vbus-supply property in favour of the standard
connector's vbus-supply property.

> diff --git a/Documentation/devicetree/bindings/usb/qcom,pmic-typec.yaml b=
/Documentation/devicetree/bindings/usb/qcom,pmic-typec.yaml
> index 6d3fa2bc9ceec..7a68423fb97ce 100644
> --- a/Documentation/devicetree/bindings/usb/qcom,pmic-typec.yaml
> +++ b/Documentation/devicetree/bindings/usb/qcom,pmic-typec.yaml
> @@ -79,7 +79,8 @@ properties:
>        - const: fr-swap
> =20
>    vdd-vbus-supply:
> -    description: VBUS power supply.
> +    deprecated: true
> +    description: use connector/vbus-supply instead.

This isn't a regression, but could the example at the bottom of the file
be updated to reflect this change?

The example still uses the deprecated vdd-vbus-supply property rather than
demonstrating the newly recommended vbus-supply property inside the
connector node.

[ ... ]

> @@ -94,7 +95,6 @@ required:
>    - reg
>    - interrupts
>    - interrupt-names
> -  - vdd-vbus-supply

Does this allow incomplete device trees to pass validation?

By removing vdd-vbus-supply from the required list without adding a
replacement constraint, the schema can now silently validate device trees
that lack both the legacy vdd-vbus-supply and the new connector/vbus-supply.

Should an anyOf block be added to enforce that at least one of the
vbus supply properties is present?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260519-fix-tcpm-v=
bus-v1-0-14754695282d@oss.qualcomm.com?part=3D1

