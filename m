Return-Path: <devicetree+bounces-326332-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QelHBNFPVmrk3AAAu9opvQ
	(envelope-from <devicetree+bounces-326332-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 17:03:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6020C756343
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 17:03:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=eaT1Ynb+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326332-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-326332-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 294023110BAC
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 14:58:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 769D54921B6;
	Tue, 14 Jul 2026 14:58:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70E624949E3
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 14:58:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784041137; cv=none; b=XmHb7bFxs3jltoIxM95QFQ9QvagfuD+KF6Hd/q5hK7tKDg/u147TiITUPZvAmNp2ecj8dskvnZ9GRb0QwJ+Tapz6OsYjp+FroYdf+fOzwV1ulpf0XKoNNPUE/z2qYwvPahQloOAm8A/keSdEpglPq/+hJoVqwTsuMGw45iRRFWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784041137; c=relaxed/simple;
	bh=f1XuMrnF/YjcND7FI9bYbJMoyc6AxC9pUrROFAx9ZrY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=j9kVwib3+J72JihwKjBoBUg8h62uOvq5hOKvzfU9v3I5u6Tb7ls66bkUU0di2c2OO6W4dW/Yz8A9OaU1QEiIOZ0h4ka9eBkThPSi+91+f2RiJs3VLATRR1uCyKEkqfu3zU4arB0EmZdVA70oVrDx3B1IzJ1zpLcf8Qq/j6+z+7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eaT1Ynb+; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 450031F00A3A;
	Tue, 14 Jul 2026 14:58:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784041134;
	bh=5LtOQBbn+zz+sVnFpArkVtoAIYK33tB5QjcARJ5IH+w=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=eaT1Ynb+a4SU0OiVldXn4vNoomjHQN/fvnBro7CZj9kv3rLRmbYZv5+aaVWuFjGaz
	 nD90gIfGTJ/vIH9V1nyXmisvts3NlmWIFXB98Jt8brFMpw9e9twDAPMz9x9q00VWTU
	 OQdyhCOzJcPQwRsDfa8ilLQvBrQpfecouAaObeuUnHSBDtf/pMbbyB+ArRIVoZLXcz
	 nC91Zcj/yvyJOyBgZagHLs7qgYFakjk5wMy5WR0q+QfX6qaqL/y+MkxJJRql6HoPIN
	 gSxzlBpdVn0bVcRUmmlkM04sWPqgjMEEvm1S8E30KC0V/3g0YjFeWWQlk30z8Fzvwh
	 tfqRGqYlKxBHw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 1/3] ASoC: dt-bindings: qcom,q6apm-lpass-dais:
 Document DAI subnode
Reply-To: sashiko-reviews@lists.linux.dev
To: "Mohammad Rafi Shaik" <mohammad.rafi.shaik@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260714145250.2473461-2-mohammad.rafi.shaik@oss.qualcomm.com>
References: <20260714145250.2473461-1-mohammad.rafi.shaik@oss.qualcomm.com>
 <20260714145250.2473461-2-mohammad.rafi.shaik@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 14:58:53 +0000
Message-Id: <20260714145854.450031F00A3A@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-326332-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:mohammad.rafi.shaik@oss.qualcomm.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sashiko.dev:url,smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6020C756343

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The node-level `oneOf` block defining `clock-names` combinations=
 incorrectly uses `additionalProperties: false` and `oneOf`, which will rej=
ect valid device tree nodes.
--

--- Patch [1]: [PATCH v5 1/3] ASoC: dt-bindings: qcom,q6apm-lpass-dais: Doc=
ument DAI subnode ---
commit b46d22527ffbe28aec4e679dc5521422e9052491
Author: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>

ASoC: dt-bindings: qcom,q6apm-lpass-dais: Document DAI subnode

Extend the qcom,q6apm-lpass-dais device tree binding to explicitly describe
Digital Audio Interface (DAI) child nodes. Add address and size cells to
allow representation of multiple DAI instances as child nodes, and define a
dai@<id> pattern to document per-DAI properties.

> diff --git a/Documentation/devicetree/bindings/sound/qcom,q6apm-lpass-dai=
s.yaml b/Documentation/devicetree/bindings/sound/qcom,q6apm-lpass-dais.yaml
> --- a/Documentation/devicetree/bindings/sound/qcom,q6apm-lpass-dais.yaml
> +++ b/Documentation/devicetree/bindings/sound/qcom,q6apm-lpass-dais.yaml
[ ... ]
> +patternProperties:
> +  '^dai@[0-9a-f]+$':
> +    type: object
> +    description:
> +      Q6DSP Digital Audio Interfaces.
[ ... ]
> +    allOf:
> +      - oneOf:
> +          - properties:
> +              reg: true
> +              clocks: true
> +              clock-names:
> +                items:
> +                  - const: mclk
> +            additionalProperties: false
> +          - properties:
> +              reg: true
> +              clocks: true
> +              clock-names:
> +                items:
> +                  - const: bclk
> +            additionalProperties: false
> +          - properties:
> +              reg: true
> +              clocks: true
> +              clock-names:
> +                items:
> +                  - const: eclk
> +            additionalProperties: false
> +          - properties:
> +              reg: true
> +              clocks: true
> +              clock-names:
> +                items:
> +                  - const: mclk
> +                  - const: bclk
> +            additionalProperties: false
> +          - properties:
> +              reg: true
> +              clocks: true
> +              clock-names:
> +                items:
> +                  - const: mclk
> +                  - const: eclk
> +            additionalProperties: false

[Severity: Medium]
Will this additionalProperties: false restriction inside the patternPropert=
ies:
'^dai@[0-9a-f]+$' block reject valid device tree nodes?

When additionalProperties: false is used inside these oneOf branches, it
restricts the node exclusively to reg, clocks, and clock-names. This means
standard meta-properties like status or $nodename will be rejected during
dtbs_check.

Also, if a device tree node omits the optional clock-names property (for
example: dai@0 { reg =3D <0>; };), won't it match multiple branches of the =
oneOf
block since the missing property vacuously satisfies the sub-schema propert=
ies
constraint in all branches? Because oneOf requires exactly one match, this
causes validation to fail and throws an error for multiple matches.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714145250.2473=
461-1-mohammad.rafi.shaik@oss.qualcomm.com?part=3D1

