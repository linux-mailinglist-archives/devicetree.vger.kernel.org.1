Return-Path: <devicetree+bounces-306822-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QUdDFGh0IWrmGgEAu9opvQ
	(envelope-from <devicetree+bounces-306822-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 14:49:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B296E6400C7
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 14:49:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=nAOrChVy;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306822-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306822-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 14609301BECE
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 12:42:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C87C3E9C33;
	Thu,  4 Jun 2026 12:42:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6123CEB9D
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 12:42:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780576977; cv=none; b=rRFRUHiKV2/N6J7Mc5oXzpmrlxjDzOtnVfE9h6Z9jVxjMNQo23b0cYpghVRC5b6H8Vd8wfDzaHKB3xuiWjzf/ULOcN4cF+5o+1ffLQERzNa68sdGbK0ACEu2e1i4iQPIhSRj3Xdnw5fHDphp9QGwAKULr8vZs+cu7/XNhtPpjlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780576977; c=relaxed/simple;
	bh=VUDpeABM3/XVnIzPB4/sBPTW29yc5oBXa/zrVpJPebY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=JIqX8+jhJNsuqEAYu0jaZ1Hrz8vZwJIClaF5yBH7HFnZvt4kbxqRffogWeVGCkXfgAp+5xiq1VN871f98hvgDjqDuHNo9aNJFpPmzG9yG6YLKpmLoxxUnooUESwrOgJxMjbLaO5VYcNJe7UCUp+Ynj5c9F4IDzLAVKr4TPaC6zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nAOrChVy; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5F8C1F00893;
	Thu,  4 Jun 2026 12:42:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780576976;
	bh=jD8qpfRVjwx0jAz7MGdrBNzskXrvc6kAcSzecnuB80U=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=nAOrChVyqMmG9A/O5Omi6+0F3K9Ifze4JGUYtspTFtnFIvPPyQVCFmqZEg4YXUiTh
	 uqA03c5uCtUWAqKXxMq9FfmUkqiT4qvd60AvUp111y/aAg3aydH0uiYRFaASD9S92m
	 oq6pd/N2skjjsBmzebkvl+VYLRSbFapF8hyRen1bI0cuELfTcNg7yWHrTj335Anlr6
	 eRNz8EaT/x84OOmo3VY0JsJN1HF8hpTDjx+F8MPGw+ZMhkng7Ix2FkqogTMxjUCXgs
	 0eJA/NnZKWJQzhToSGaI9blYDhVm/F/dgL23w9qx2JkGAhflxoAP9E1vH5DOIiCkYr
	 CHVWejSQghSPA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: display: msm: qcm2290: Add Shikra
 MDSS
Reply-To: sashiko-reviews@lists.linux.dev
To: "Nabige Aala" <nabige.aala@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
In-Reply-To: <20260604-shikra-display-v2-1-b3c1b2b67edc@oss.qualcomm.com>
References: <20260604-shikra-display-v2-1-b3c1b2b67edc@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 Jun 2026 12:42:55 +0000
Message-Id: <20260604124255.C5F8C1F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-306822-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,lists.linux.dev:replyto,smtp.kernel.org:mid,qualcomm.com:email];
	FORGED_RECIPIENTS(0.00)[m:nabige.aala@oss.qualcomm.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
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
X-Rspamd-Queue-Id: B296E6400C7

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] Unresolvable DT schema contradiction for Shikra DSI compatible s=
trings.
- [Medium] Missing schema conditional constraints for Shikra DSI controller.
--

commit a65ad60044f8d36574550891df31ee37428077f9
Author: Nabige Aala <nabige.aala@oss.qualcomm.com>

dt-bindings: display: msm: qcm2290: Add Shikra MDSS

Shikra SoC uses the same MDSS/DPU/DSI hardware as QCM2290 (DPU 6.5),
sharing the same register layout, DSI controller and 14nm DSI PHY.
Add qcom,shikra-mdss to the qcm2290-mdss binding compatible enum
rather than introducing a separate binding file.

> diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller=
-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-m=
ain.yaml
> index dbc0613e427ed..a2f3e91104af3 100644
> --- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.y=
aml
> +++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.y=
aml
> @@ -33,6 +33,7 @@ properties:
>                - qcom,sdm660-dsi-ctrl
>                - qcom,sdm670-dsi-ctrl
>                - qcom,sdm845-dsi-ctrl
> +              - qcom,shikra-dsi-ctrl

[Severity: Medium]
Should qcom,shikra-dsi-ctrl also be added to the allOf:if conditional
block that enforces clock constraints?

The QCM2290 and Shikra DSI controllers require 6 clocks and
assigned-clocks. While qcom,qcm2290-dsi-ctrl was already missing from
the clock validation block, omitting the newly added qcom,shikra-dsi-ctrl
allows incomplete device tree nodes for Shikra to silently pass validation
without providing the mandatory clocks.

>                - qcom,sm6115-dsi-ctrl
>                - qcom,sm6125-dsi-ctrl

[ ... ]

> diff --git a/Documentation/devicetree/bindings/display/msm/qcom,qcm2290-m=
dss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,qcm2290-mdss.=
yaml
> index bb09ecd1a5b4f..7184b09a87749 100644
> --- a/Documentation/devicetree/bindings/display/msm/qcom,qcm2290-mdss.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/qcom,qcm2290-mdss.yaml

[ ... ]

> @@ -60,9 +79,14 @@ patternProperties:
> =20
>      properties:
>        compatible:
> -        items:
> -          - const: qcom,qcm2290-dsi-ctrl
> -          - const: qcom,mdss-dsi-ctrl
> +        oneOf:
> +          - items:
> +              - const: qcom,qcm2290-dsi-ctrl
> +              - const: qcom,mdss-dsi-ctrl
> +          - items:
> +              - const: qcom,shikra-dsi-ctrl
> +              - const: qcom,qcm2290-dsi-ctrl
> +              - const: qcom,mdss-dsi-ctrl

[Severity: Medium]
Does this create an unresolvable contradiction for Shikra device tree nodes
during schema validation?

These changes to qcom,qcm2290-mdss.yaml enforce a 3-item compatible string
array for Shikra. However, the earlier change adding qcom,shikra-dsi-ctrl to
dsi-controller-main.yaml places it in an enum block that strictly enforces
a 2-item array.

Could this mismatch prevent valid Shikra nodes from passing validation,
since any configuration valid for one schema will be rejected by the other?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260604-shikra-dis=
play-v2-0-b3c1b2b67edc@oss.qualcomm.com?part=3D1

