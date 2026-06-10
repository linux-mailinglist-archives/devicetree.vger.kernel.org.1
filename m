Return-Path: <devicetree+bounces-309787-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3pwILB5YKWpuVQMAu9opvQ
	(envelope-from <devicetree+bounces-309787-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 14:27:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B592669448
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 14:27:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=WrDcvp90;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309787-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309787-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 83494311C88F
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 12:25:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6209A404BE4;
	Wed, 10 Jun 2026 12:25:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 836343F8EDA
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 12:25:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781094311; cv=none; b=OVpcmG5vbCIoe6tAxedAIJroLbojohirku7UZzqE0BZ38ntTazoAIlU12+FjTbG3WyiSdJZxg+tmKdAZFI0SdK5iWkVJROWSoo3S/pbn5SLvYoRt3ZiyVFS9uqS2WTN/KSSVqiIueN9rdiNjS/FgfOnd4z2H4j1pVcmrIbwS4N0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781094311; c=relaxed/simple;
	bh=HYT6Atc8s89Ca1f7Qi6HvHNXyQqtZf4+Vg5sMf0a04o=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=O5Q8iVpFnT+hnCvKzL+jN5p5BHBESB6noeWG/Ur3QcE66Z40ilIL5p2Qqt9IUrIAP71EgTGJCIUaXaq+WoRLy/ABvNC9sPeW1feBZ0duhA8SvLiQMFb9B1dACqB5hkEzANhR2LtWrceVj3ixcmbHsUDtBj+r4xVc0CjujE7bQVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WrDcvp90; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8AA091F00893;
	Wed, 10 Jun 2026 12:25:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781094308;
	bh=B35Umq57HQiE8ceFOZtAc6XbXgMcFQ6f57w9rBxG3PU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WrDcvp909kUHB2CXXAlTql4SHJG7N0Ln+Ul0vvO16/XNFsRM059C43+vXhN+fPfnv
	 vVewR2//DXXUdZRgP8HP34+3veCNvKwJu5KKlxsd6Wn25LAhhtaE5Al/gMebuQ0Gh6
	 7CXa+R6yfBKpimpweXH9tZrprV/Di/vfsoUqzJbPVWMtj7p4lGohYW8zAdc3W9EHts
	 z/p/HA24rGPUGPODCE8/cFyYiM/YzkYPILj/+QRuoB5Zxr2cjWnpoQSKI49HsPCdWc
	 Q8oL055tIKbLmlUAI5KGdRAD5FRh7d8T75Jwh2cvAAmgy2YO8NkFQFQhDK/lnTf3a+
	 cy7IGTr/9/rHw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: phy: qcom,qusb2: Straighten out SM6125
 and MSM8996
Reply-To: sashiko-reviews@lists.linux.dev
To: "Konrad Dybcio" <konradybcio@kernel.org>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, olteanv@gmail.com, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260610-topic-8996_61x5_qusb2phy-v1-1-d7135980e78f@oss.qualcomm.com>
References: <20260610-topic-8996_61x5_qusb2phy-v1-1-d7135980e78f@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Jun 2026 12:25:07 +0000
Message-Id: <20260610122507.8AA091F00893@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-309787-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:konradybcio@kernel.org,m:vkoul@kernel.org,m:linux-phy@lists.infradead.org,m:neil.armstrong@linaro.org,m:olteanv@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,lists.infradead.org,linaro.org,gmail.com,vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1B592669448

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Driver/Schema Mismatch: Driver unconditionally requests 'vdd' re=
gulator while schema removes it for MSM8996
--

commit 3e28a2c0425272ba6818b0dca5f1d04b00a00662
Author: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

dt-bindings: phy: qcom,qusb2: Straighten out SM6125 and MSM8996

This commit adds a specific compatible string for SM6125 with an SM6115
fallback. It also updates the MSM8996 bindings to require power domains
and operating performance points instead of a vdd-supply.

> diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/=
Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
> index 39851ba9de436..807d64aee547c 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml

[ ... ]

> @@ -182,6 +190,22 @@ allOf:
>          qcom,preemphasis-width: false
>          qcom,hsdisc-trim-value: false
> =20
> +  # On MSM8996, VDD is supplied via the MX power domain
> +  - if:
> +      properties:
> +        compatible:
> +          const: qcom,msm8996-qusb2-phy
> +    then:
> +      required:
> +        - power-domains
> +        - required-opps
> +    else:
> +      properties:
> +        power-domains: false
> +        required-opps: false
> +      required:
> +        - vdd-supply

[ ... ]

> @@ -196,10 +220,13 @@ examples:
>                   <&gcc GCC_RX1_USB2_CLKREF_CLK>;
>          clock-names =3D "cfg_ahb", "ref";
> =20
> -        vdd-supply =3D <&pm8994_l28>;

[Severity: Medium]
Does this removal of vdd-supply for MSM8996 create a mismatch with the
existing qusb2 driver?

Looking at qusb2_phy_probe() in drivers/phy/qualcomm/phy-qcom-qusb2.c, the
driver unconditionally requests all regulators defined in
qusb2_phy_vreg_names, which includes the vdd supply:

drivers/phy/qualcomm/phy-qcom-qusb2.c:qusb2_phy_probe()
    num =3D ARRAY_SIZE(qphy->vregs);
    for (i =3D 0; i < num; i++)
        qphy->vregs[i].supply =3D qusb2_phy_vreg_names[i];

    ret =3D devm_regulator_bulk_get(dev, num, qphy->vregs);

If a device tree omits vdd-supply to follow this new schema intent, will
the driver fail to probe with -ENODEV or log an unwanted warning when
falling back to a dummy regulator?=20

Should the driver be updated to handle the vdd regulator as optional for
hardware variants that use power domains?

>          vdda-pll-supply =3D <&pm8994_l12>;
>          vdda-phy-dpdm-supply =3D <&pm8994_l24>;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260610-topic-8996=
_61x5_qusb2phy-v1-0-d7135980e78f@oss.qualcomm.com?part=3D1

