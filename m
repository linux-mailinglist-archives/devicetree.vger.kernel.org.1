Return-Path: <devicetree+bounces-322686-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rxvuFhElTmoZEAIAu9opvQ
	(envelope-from <devicetree+bounces-322686-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 12:23:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C388B7243A0
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 12:23:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=JHMSgSno;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322686-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-322686-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 50FC93028B67
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 10:15:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 748F41898FB;
	Wed,  8 Jul 2026 10:15:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD2638B148
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 10:15:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783505719; cv=none; b=sJ5fPJW9rTA860YjdKzsaO0dmP7xIXDU4ZQma5wu4tUS5CugJnKhZsrgOUX86fHXQ+ruV7HMJTqGBL797YS+Lc2iPNpBcKkx1JXHse5mPtoSsq8ABhitlZUDHydxZaDctkOssp9pOod6Jzt31lFVaxJ960aW0e/2Ul4usWro8+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783505719; c=relaxed/simple;
	bh=YdoBHtsut+URAKrxxroJdvqN7KixMwK8gFef2jLNStw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=R+Wv3BPq6wYlpZmZ0Ih8EZ+AkA+NxwqxhSJQMt7KAPcq66CtHmYjIuHwFqUrV76yjHPkd03oRV43osxnISLdbNrU55k8z/pDxyzvhCF+EIzEFyBr3VC/DtpJfzP17TChKV7rI5rxPxrGa8vpfSoD5ieRhdMjpYhqdilREnic5kY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JHMSgSno; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A98DC1F00A3A;
	Wed,  8 Jul 2026 10:15:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783505718;
	bh=70uQX6w5PKEivkIjOy7GbZzgTPWEVxSdTMWLatUgUsw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=JHMSgSnoPF6rl/sfLiB+cixTg9byxgVcre2VO2+matGGDx1ybtOOdU6kQ282uSnJG
	 phAzaqaC8ewt1xV3ved8JpSqWA7kRFJ5ege7YHFyOx5Kyyz9KD7MUTlp4BU6WQzc8v
	 YIi1iaqX1gX00Fgu9fXWMSCSaVLPHVEjImq0aEIXAnMgDGggMj+jTcV0xN2PVM3iJu
	 gaHOecbC47UMsuz1ZRpvGZdORdoVCvI3tagfalAeRFZnUGeoSY/wVYYxixYWj0FzT3
	 tmzqKITWgjEnVr9fIcSgJ9h4HIBiKg7PNQTtWaxiXhaXikUoAv2SzzCAZliV/YWZy/
	 DT6lVKXI2/VTw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 2/7] dt-bindings: clock: qcom,glymur-tcsr: Add mahua
 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Qiang Yu" <qiang.yu@oss.qualcomm.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260708-tcsr_qref_0708-v8-2-62c42b5fa269@oss.qualcomm.com>
References: <20260708-tcsr_qref_0708-v8-0-62c42b5fa269@oss.qualcomm.com>
 <20260708-tcsr_qref_0708-v8-2-62c42b5fa269@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 10:15:17 +0000
Message-Id: <20260708101517.A98DC1F00A3A@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-322686-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:qiang.yu@oss.qualcomm.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,lists.linux.dev:replyto,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C388B7243A0

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The device tree binding defines `#clock-cells` and `#reset-cells=
` as provider capabilities but fails to include them in the global `require=
d` list.
- [Medium] Supply properties for the Mahua SoC are incorrectly named after =
the external board regulators (`vdda-refgen3-0p9`, `vdda-refgen3-1p2`) rath=
er than the consumer hardware block's input pad (`REFGEN4`).
--

--- Patch [2]: [PATCH v8 2/7] dt-bindings: clock: qcom,glymur-tcsr: Add mah=
ua support ---
commit 95da44cfb54a2f053c5c1da86a79be1166f21f64
Author: Qiang Yu <qiang.yu@oss.qualcomm.com>

dt-bindings: clock: qcom,glymur-tcsr: Add mahua support

This commit adds the qcom,mahua-tcsr compatible string and documents its
required supply properties. It notes that Mahua has a single QREF block fed
by REFGEN4 only, which is supplied by regulators vdda-refgen3-1p2 and
vdda-refgen3-0p9.

> diff --git a/Documentation/devicetree/bindings/clock/qcom,glymur-tcsr.yam=
l b/Documentation/devicetree/bindings/clock/qcom,glymur-tcsr.yaml
> index ec89feff89e4e..2b64226271657 100644
> --- a/Documentation/devicetree/bindings/clock/qcom,glymur-tcsr.yaml
> +++ b/Documentation/devicetree/bindings/clock/qcom,glymur-tcsr.yaml
[ ... ]
> @@ -82,6 +83,25 @@ allOf:
[ ... ]
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: qcom,mahua-tcsr
> +    then:
> +      required:
> +        - vdda-qrefrpt0-0p9-supply
[ ... ]
> +        - vdda-qreftx1-0p9-supply
> +        - vdda-refgen3-0p9-supply
> +        - vdda-refgen3-1p2-supply

[Severity: Medium]
The commit message mentions that the internal hardware block being fed here
is REFGEN4. Do these supply properties violate device tree property naming
principles by encoding the board-specific external regulator names
(vdda-refgen3-*) rather than the consumer pad name?

Should these required properties be renamed to correspond to the REFGEN4 pad
to avoid encoding board-specific regulator topology into the SoC hardware
schema?

> =20
>  required:
>    - compatible

[Severity: Medium]
The device tree binding defines #clock-cells and #reset-cells as provider
capabilities, but they appear to be missing from this global required list.

Does this omission allow incomplete device tree nodes (those lacking
#clock-cells and #reset-cells) to pass schema validation? Could this lead
to dependent drivers or subsystems silently failing at runtime when they
attempt to use these functionalities?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-tcsr_qref_=
0708-v8-0-62c42b5fa269@oss.qualcomm.com?part=3D2

