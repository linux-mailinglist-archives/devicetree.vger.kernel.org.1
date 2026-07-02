Return-Path: <devicetree+bounces-319239-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OQWeDlM/Rmr0MgsAu9opvQ
	(envelope-from <devicetree+bounces-319239-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 12:37:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E06C6F6024
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 12:37:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=laXk5rXI;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319239-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319239-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3FE2131C4767
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 09:53:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D052F47F2C0;
	Thu,  2 Jul 2026 09:48:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DC01416D0C
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 09:48:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782985717; cv=none; b=A3uqTFnvw2Z5kAWZ+kREAEbkXVV+QvaA489ne+A818/p6zSyNCb08GJINtLTUP8KPtcyw6AACi8AR3MuRNdBT80Lb0Kwns3+O1QTVSHK8WMQ0jaxi5IKupoHJwra3ftuPplnXgCtTz0KiDHGj54KS3V+TwOgRtS3p5DJ/oYtmJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782985717; c=relaxed/simple;
	bh=2yPpFh1KhKGay/Ce1+fUKeKoY3zrQYP0qtYRPirWat0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=lAMPsghXR3BD61w9EcrErQ1HcWmWxqFLzybSMm45dPKoxhSvSo2k+27nQu/tbNxURSfbZLFnDY4hGDZekFdne3cnyuP073uRGmhtXRtfbiBKLPLU15mcIOzPotYMprQGZi1a246owgOULj8D7GQtK4XF+ILyoy2YZdzP2Th0/tU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=laXk5rXI; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DFDA11F00A3A;
	Thu,  2 Jul 2026 09:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782985716;
	bh=uvCew2dWaxcd307MeK3+Az1QWGDtYdmUj5QmNI8C2TM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=laXk5rXI0QYbTENyNc8qk5DAVp48ELeR6g5cB9bNAsWHDl+HEwqWWbnEinRaNJyoG
	 XVH1/MYySWhaOq4uAYITA09m5eBAAR5URvD5qUqg3Xjsa1vJUiCMyPyVR1HO0xbi0O
	 M1AWV8fQvBZ2VS13EssAmeQaPMtd+iNbujP1ODKauVjrOKiBOYN/sZyTuNkN66jemj
	 hNTN0qRPIEyaBGJLZMQjhXfOEXxVsZhTebphtHo1+f2vuWj/LtFuoucmBfk6p+fKD2
	 qeNHxFVbZITYkSiq3T4a+heiathmQZ3pc3mpZcFmTv8LrWBnzA6a+Guc95qrVjbdRp
	 8RnUEx6vsj6sw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 1/5] dt-bindings: clock: airoha: Add PHY binding for
 Serdes port
Reply-To: sashiko-reviews@lists.linux.dev
To: "Christian Marangi" <ansuelsmth@gmail.com>
Cc: linux-phy@lists.infradead.org, conor+dt@kernel.org, robh@kernel.org, vkoul@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260702093812.15918-2-ansuelsmth@gmail.com>
References: <20260702093812.15918-1-ansuelsmth@gmail.com>
 <20260702093812.15918-2-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 09:48:35 +0000
Message-Id: <20260702094835.DFDA11F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-319239-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:ansuelsmth@gmail.com,m:linux-phy@lists.infradead.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:vkoul@kernel.org,m:devicetree@vger.kernel.org,m:neil.armstrong@linaro.org,m:olteanv@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[lists.infradead.org,kernel.org,vger.kernel.org,linaro.org,gmail.com];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,lists.linux.dev:replyto,vger.kernel.org:from_smtp,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9E06C6F6024

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The `#phy-cells` property is implicitly allowed for the `econet,=
en751221-scu` compatible, contradicting the commit message which states it =
is exclusive to the Airoha AN7581 SoC.
- [Medium] The `airoha,en7581-scu` variant gains a new PHY provider capabil=
ity, but `#phy-cells` is not added to its required properties, and the sche=
ma example is not updated.
--

commit 6d3a613072b0007e76d5846629212f75c8dfc300
Author: Christian Marangi <ansuelsmth@gmail.com>

dt-bindings: clock: airoha: Add PHY binding for Serdes port

This commit adds the #phy-cells property for Serdes port selection,
specifying that it is currently supported only for the Airoha AN7581 SoC.

> diff --git a/Documentation/devicetree/bindings/clock/airoha,en7523-scu.ya=
ml b/Documentation/devicetree/bindings/clock/airoha,en7523-scu.yaml
> index eb24a5687639e..913ddc16182b8 100644
> --- a/Documentation/devicetree/bindings/clock/airoha,en7523-scu.yaml
> +++ b/Documentation/devicetree/bindings/clock/airoha,en7523-scu.yaml
[ ... ]
> @@ -65,6 +72,8 @@ allOf:
>          reg:
>            minItems: 2
> =20
> +        '#phy-cells': false
> +
>    - if:
>        properties:
>          compatible:

[Severity: Medium]
The commit message states that the #phy-cells property is currently support=
ed
only for the Airoha AN7581 SoC. However, looking at the allOf conditional
block:

  - if:
      properties:
        compatible:
          enum:
            - airoha,en7581-scu
            - econet,en751221-scu

Since econet,en751221-scu shares this block and does not explicitly have
'#phy-cells': false like the previous block, does this implicitly allow the
property for it and contradict the commit message?

[Severity: Medium]
Additionally, since the airoha,en7581-scu variant gains a new PHY provider
capability, should #phy-cells be added to its required properties list?

The example for airoha,en7581-scu in the same file is also missing the
property:

      scuclk: clock-controller@1fb00000 {
        compatible =3D "airoha,en7581-scu";
        reg =3D <0x0 0x1fb00000 0x0 0x970>;
              #clock-cells =3D <1>;
              #reset-cells =3D <1>;
      };

Would it be better to update the schema to mandate the property and update
the example to include #phy-cells =3D <1> so incomplete device tree nodes do
not silently pass schema validation?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260702093812.1591=
8-1-ansuelsmth@gmail.com?part=3D1

