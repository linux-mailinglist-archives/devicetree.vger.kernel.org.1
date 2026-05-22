Return-Path: <devicetree+bounces-301840-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8IAFORdeEGqDWgYAu9opvQ
	(envelope-from <devicetree+bounces-301840-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 15:45:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 601665B56CD
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 15:45:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E60E4304E4D7
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 13:19:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7176E3A1CEC;
	Fri, 22 May 2026 13:19:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PNGwS4ii"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 463183A1D07
	for <devicetree@vger.kernel.org>; Fri, 22 May 2026 13:19:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779455979; cv=none; b=fWMNDaQWSxEvaZwV0OGzObA9UeFaz8vnht/RSKou95ikL2s9Xd+FsZ4KJ7Xlu4IHqFMN4YHbSFN1Ydgkn7jo7tpgJT+t6CngociLnj456IyFNtYuCh+6mK2MeiNCqTB7cTVgQR3Sfx6zuScte0QBQVd0W6xzft1yU+FRiFx+ZTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779455979; c=relaxed/simple;
	bh=JZ74MWv6ephB/us4Veuwvr9grXxHBLw6d98TozlxDfo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ZLK3M1HSlfHdjV4SzOsw3mwYvy/JvsNcIC6K9PJelNlMBdbLccEv7yxbCaKpTGwgSqpnOyJQpu1DmQdbbzfSJoSK3by8wmyAQUFWripHHTushkVGS8ERy2fHD/IJF8sbQs7dVnWZW+0+iiD6M38K4lp0qUDHVEcGiVOKETIRafM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PNGwS4ii; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A38F91F000E9;
	Fri, 22 May 2026 13:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779455977;
	bh=ezTztFXvr++zBi1ikZuSSAYYUvKWdsXqDOHawB0j0tE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=PNGwS4ii7rBX5YgpKvPAdrd5wn1hpw4ol4rEjmTQZFcjBVTBDOOUIskhQjyTHt/di
	 NTnOrxSq9WW7ooAwQz9rZ49+O3SqpCTkaLBdQhBku99u+w0UTu21bB6OOZTN1RYJG5
	 wnCEZ2YK0VFjIShO8NnoeO0e/jY1V1/nUMQtghG9EaBvysP8b61Jv5zdY+fvDQiklL
	 r6co2i4ooYjKfDmmgVE3gT5EF/86czbf2HfxKxPxTu47+sIlvT9xtlRYcDvieAzE5O
	 JHj6dyOB8cz+sp/jhOqJo01xuTMlTlFJdevq24ZcZ1Y76qZf0EUbQScS4jgfaA2+hD
	 cd4W24VAX5+Ew==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 1/2] regulator: dt-bindings: document the SGM3804
 Dual Output regulator
Reply-To: sashiko-reviews@lists.linux.dev
To: "Neil Armstrong" <neil.armstrong@linaro.org>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260522-topic-sm8650-ayaneo-pocket-s2-sgm3804-v5-1-bd6b1c300ecc@linaro.org>
References: <20260522-topic-sm8650-ayaneo-pocket-s2-sgm3804-v5-1-bd6b1c300ecc@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 22 May 2026 13:19:37 +0000
Message-Id: <20260522131937.A38F91F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-301840-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: 601665B56CD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `enable-gpios` property is incorrectly marked as strictly re=
quired and lacks a `maxItems: 1` constraint.
--

commit f50493aa554fa5cd96589605f9a49a0134ff39ab
Author: Neil Armstrong <neil.armstrong@linaro.org>

regulator: dt-bindings: document the SGM3804 Dual Output regulator

This commit documents the sgm3804 single inductor dual output buck/boost
converter. It provides bindings for the positive and negative power rails,
including configurable voltages and active discharge functions.

> diff --git a/Documentation/devicetree/bindings/regulator/sgmicro,sgm3804.=
yaml b/Documentation/devicetree/bindings/regulator/sgmicro,sgm3804.yaml
> new file mode 100644
> index 0000000000000..3716eaf81aa99
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/regulator/sgmicro,sgm3804.yaml

[ ... ]

> +patternProperties:
> +  "^(pos|neg)$":
> +    type: object
> +    $ref: regulator.yaml#
> +
> +    properties:
> +      enable-gpios: true

[Severity: Medium]
Should enable-gpios have a maxItems constraint here? The core regulator.yaml
schema does not define a maxItems limit for enable-gpios, so setting this to
true allows an arbitrary number of gpios to be specified in the device tree
instead of a single enable pin per output.

> +
> +    unevaluatedProperties: false
> +
> +    required:
> +      - enable-gpios

[Severity: Medium]
Is it strictly necessary to require enable-gpios for these child nodes? If a
board design hardwires the hardware enable pins to an always-on supply to
conserve processor pins, the regulator would be constantly powered but still
configurable via i2c. Marking enable-gpios as strictly required will cause a
schema validation failure for those valid hardware configurations, even if
the driver currently expects the pins to be present.

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260522-topic-sm86=
50-ayaneo-pocket-s2-sgm3804-v5-0-bd6b1c300ecc@linaro.org?part=3D1

