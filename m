Return-Path: <devicetree+bounces-312448-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tq7oDnUkMWo2cgUAu9opvQ
	(envelope-from <devicetree+bounces-312448-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 12:24:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 848FB68E352
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 12:24:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ebFMlZ41;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312448-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312448-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2E49A3178A3F
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 10:17:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76B9F423A9A;
	Tue, 16 Jun 2026 10:17:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67E45427A06;
	Tue, 16 Jun 2026 10:17:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781605036; cv=none; b=deUzITuheL83Z7T2JGBceMIm4ifxmHCLD+j6EIa5M4E6p5or0iaEZ4BvLRCHxkkSP7XIH5HfR0029pHxcLS9zEhIBawQ3ODQ26r3yjS4+VRHZsc/wJY1ZBKn5sSwPOszdx/JzZW1LGcacuhsyTu1qJYEU7ffHAzYeOQqlJ8NBsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781605036; c=relaxed/simple;
	bh=Sd7yodx4UjxiO1kYmuXLn/zWxJQG/zJVsR3dXRgOmFw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Iu0TI4gbcshBP59zmK0syK93Dre40x7fnONaiQUWPzhacwzL2weCNeQBxUrC39UR+9pZotYTK01N0Tpq3/uLKZYH3armUl+n7hcWlFQjSNkccoiXBwdz9IscOYifW1fPorjJkEtKMIqMBgcN7tJkwqQRJcFeeQQUNoJ+TsIrwMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ebFMlZ41; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01E5B1F000E9;
	Tue, 16 Jun 2026 10:17:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781605035;
	bh=XPvA0lxmzSRezVHw61eAohFfU/8m3+vlMPaNgVMQSvI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ebFMlZ41LV7Vhzf4J2SGywFBLSq9bRfRA+RFbLk9kiNs7vIZc0pe9A9p1poh9dXRk
	 5b3/3+Q9UQE8cKiPMhXx+BgoTwVJhdXQwxeAqcPaK7BEP+9/4HD4SGjL10OFHqs/Jp
	 SoY63oZJaqoqUgu7tVYospg6+G7q24cmSw2elDSOTrbLtw3VII+ON6pXaVUwaz4kKV
	 KoM0Z38972jXn0aw0isnDlM7j4z9c8kWutfE7HfFWxZjZwS5hUx/lUB+1jg0CM3SgP
	 g/+o/3Itf2xo7+Lfn1wyqIAmhNxHspFIxMeNxfCBf+QIHNCaT8azDnrH9Yzp4uZm80
	 A6WKTcdfeqLHg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/4] dt-bindings: mfd: qcom,spmi-pmic: Document haptics
 device
Reply-To: sashiko-reviews@lists.linux.dev
To: "Fenglin Wu" <fenglin.wu@oss.qualcomm.com>
Cc: conor+dt@kernel.org, robh@kernel.org, linux-input@vger.kernel.org, dmitry.torokhov@gmail.com, devicetree@vger.kernel.org
In-Reply-To: <20260616-qcom-spmi-haptics-v1-2-d24e422de6b4@oss.qualcomm.com>
References: <20260616-qcom-spmi-haptics-v1-2-d24e422de6b4@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 16 Jun 2026 10:17:14 +0000
Message-Id: <20260616101715.01E5B1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-312448-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid,lists.linux.dev:replyto,qualcomm.com:email];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:fenglin.wu@oss.qualcomm.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:linux-input@vger.kernel.org,m:dmitry.torokhov@gmail.com,m:devicetree@vger.kernel.org,m:conor@kernel.org,m:dmitrytorokhov@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 848FB68E352

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Use of a wildcard ('x') in the compatible string.
--

commit 24bf9f2257f4052d27a53163621c8f5173fe1da8
Author: Fenglin Wu <fenglin.wu@oss.qualcomm.com>

dt-bindings: input: Add binding for Qualcomm SPMI PMIC haptics

Add binding document for the haptics module inside Qualcomm PMIH010X.

> diff --git a/Documentation/devicetree/bindings/input/qcom,spmi-haptics.ya=
ml b/Documentation/devicetree/bindings/input/qcom,spmi-haptics.yaml
> new file mode 100644
> index 0000000000000..0e26d68563dcd
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/input/qcom,spmi-haptics.yaml
> @@ -0,0 +1,119 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---

[ ... ]

> +properties:
> +  compatible:
> +    const: qcom,pmih010x-haptics

[Severity: Low]
Does this introduce a regression by using a wildcard character ('x') in the
compatible string?

Device tree specifications generally forbid wildcards in compatible strings.
Should the specific model name of the first chip in the family
(e.g., "qcom,pmih0108-haptics") be used instead of a wildcard?

[ ... ]

> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    pmic {
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +
> +        haptics@f000 {
> +            compatible =3D "qcom,pmih010x-haptics";

[Severity: Low]
Does this example share the same regression with the wildcard compatible
string?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260616-qcom-spmi-=
haptics-v1-0-d24e422de6b4@oss.qualcomm.com?part=3D2

