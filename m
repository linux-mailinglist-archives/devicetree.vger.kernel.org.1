Return-Path: <devicetree+bounces-308743-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BaGOK8C6J2r31AIAu9opvQ
	(envelope-from <devicetree+bounces-308743-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 09:03:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB3665D04A
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 09:03:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Krwm9K4+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308743-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308743-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3CF253045DFE
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 07:00:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17B813D8122;
	Tue,  9 Jun 2026 07:00:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEE4B3D0BFB
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 07:00:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780988425; cv=none; b=QbS6HcSCkKc6n4HjQYSTzz/ofQs2aW5bSwVffLvDtIiwJN1NPMfimFBGj3VN+XGOW566PcjM2tJAwW8byeTrWwUDxxN7Bh67jFPOy0R42NennhQmaLRzeYZXdLlx3uzEC0t2M7Gj3mWDPLYC0OIVMwZQFsxRPTxPyVhOgZ5FcgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780988425; c=relaxed/simple;
	bh=bJqd/kv9zGH505WOzA7dTHFeOiQ1p9M4cQXKsvk7+ic=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=kWARB6btaZyNT1kIPSs9I/mZZemdQ7VuYQbRW3pg8rvDeM+FrTN7xIHzu/mTvjhzl4sYtBRI+7smDJBxAQThlzqvcS5P8X5JWy5h369L4Ag1/OTEI6Cl8KFu20Ru4fnZJ23n3ylIw8a+x3L1GVFjAWFpimrZZWRb4PwaFY2q0Fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Krwm9K4+; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C0981F00898;
	Tue,  9 Jun 2026 07:00:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780988423;
	bh=LHwm751FuIFbTU3/srrm7Q59n6q8eHkvD2E6+vFH69Y=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Krwm9K4+kUbltnOlWCvXLmkLHvWqUxjdxItFWUeHxJWaXCq8/2Vrq2VvFAPGdmTGL
	 /xA8lg1B+uOjmi2YE4aiFpWnUht6dflQux5VodpvUQtCcx+GtPNKtX7KL54FSvr+CE
	 juj8vZGCrTon8zJKO6RNTXK8VZPA2XsY+uAH+TYKiyvLv2vCi4kITobNJFF0y1eG1O
	 4P/YV07XMMAHP19SPdk8KdFrTYGqKVeX6IKki8oW8VlCj1uLSurqSNUJFAULt8Hwlb
	 2RYtTH7mBO/HHd+16sdeaiAHsHDIddMNnUY3b9qNwyUDaaz7kJlt37cCoiCtZM8cv/
	 lu+b8GvApcTcA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: thermal: tsens: add ipq5210 &
 ipq9650 compatible
Reply-To: sashiko-reviews@lists.linux.dev
To: "Varadarajan Narayanan" <varadarajan.narayanan@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260609065447.4024695-2-varadarajan.narayanan@oss.qualcomm.com>
References: <20260609065447.4024695-2-varadarajan.narayanan@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 07:00:22 +0000
Message-Id: <20260609070023.3C0981F00898@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-308743-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:varadarajan.narayanan@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0CB3665D04A

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Missing schema validation constraints for `qcom,ipq9650-tsens` d=
ue to omitted compatible string in `allOf` conditional blocks.
--

commit 4b153774882bf21dfe2ec762bc94eb3a253bf2ac
Author: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>

dt-bindings: thermal: tsens: add ipq5210 & ipq9650 compatible

Add the compatible for the thermal sensors on the ipq5210 and ipq9650. The
ipq5210 uses ipq5332-tsens as a fallback, while ipq9650 is added as a
standalone v2 TSENS compatible with combined interrupt.

> diff --git a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml b/=
Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
> index 7d34ba00e684f..a927650c119b9 100644
> --- a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
> +++ b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
> @@ -92,6 +92,13 @@ properties:
>            - qcom,ipq5332-tsens
>            - qcom,ipq5424-tsens
>            - qcom,ipq8074-tsens
> +          - qcom,ipq9650-tsens

[Severity: Medium]
Should qcom,ipq9650-tsens also be added to the allOf conditional blocks that
enforce constraints for related TSENS v2 hardware?

The commit message mentions this is a v2 TSENS compatible with a combined
interrupt. However, it appears the compatible string was omitted from the
if-then blocks further down in the schema.

For example, the conditional that enforces interrupt-names must be 'combine=
d'
currently checks:

  - if:
      properties:
        compatible:
          contains:
            enum:
              - qcom,ipq5332-tsens
              - qcom,ipq5424-tsens
              - qcom,ipq8074-tsens

Similarly, the conditional that enforces the reg property is strictly requi=
red
for v2 variants omits qcom,ipq9650-tsens.

Without being added to those conditional blocks, won't nodes using
qcom,ipq9650-tsens silently pass dt_binding_check validation even if they o=
mit
the reg property or have incorrect interrupt-names?

> +
> +      - description: v2 of TSENS with combined interrupt
> +        items:
> +          - enum:
> +              - qcom,ipq5210-tsens
> +          - const: qcom,ipq5332-tsens
> =20
>        - description: v2 of TSENS with combined interrupt
>          items:

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609065447.4024=
695-1-varadarajan.narayanan@oss.qualcomm.com?part=3D1

