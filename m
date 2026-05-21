Return-Path: <devicetree+bounces-301311-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0HxIEHAND2p7EgYAu9opvQ
	(envelope-from <devicetree+bounces-301311-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 15:49:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B18455A6433
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 15:49:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B882332F48B0
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 13:22:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A5313D6688;
	Thu, 21 May 2026 13:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a6jNkiBy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4E22494FE
	for <devicetree@vger.kernel.org>; Thu, 21 May 2026 13:20:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779369648; cv=none; b=NNo4w3WqG9Pc8uz9WZ8en3eWd9LH6Rwsj3tNpeOt2gg4m3/Nimc/GYO6MZBHv/DlEezdtn/wyBhcteq9ugNQ+kX6vRPBbWq+w0kds3k/rZTLALftMV6BayBVP+k7KSmkoewZHif4xIJ43h8GhBtwq/bdS6V1mfx+MtpiXlAVGys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779369648; c=relaxed/simple;
	bh=+jRf4uhriOPqmYfD86fU2Fxtikvrtc1cRlxoWUu260s=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=kPGG+pon09sANwAVV/gmnXvw9XrETOSxaVwJvKemJ/wuZNiOp8GJ+H+c0a6LadvuCkX0AsBuWaem9pOyJ/7zCRlk5tK9xEHZ9h25uieQITO18b/SKJhltmCLHsF+SYombxXzKSFTlTvey2x0OHhrr4jab/lvOr6pZf6r7y4A6Hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a6jNkiBy; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D5121F000E9;
	Thu, 21 May 2026 13:20:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779369646;
	bh=eCw9C/LvtkLqPVnvrvDoe/4Pvj+U81XUeCsrbZMJbrA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=a6jNkiByQhPD+NU0LItkCjHvfiEa0fhzVo2Pk4YrWo/8wVTGU6nQ6CuWvFihw08no
	 RXdsf/J8D/dtKF/WO3shGlNB93QwSlTNywyz9VlryaVLQcykSRbIjHIm99DfRgzhub
	 khkXasg+uDuouoOWUnqtwWpa70aP09A4fZIT2+05N2tjy+9uhHqD0nUwA3uJd3KsE/
	 M8//mW1uALJ1NKZmMtP/s2TaPM2lk334kpASJMwwPnIZOBdi9kr56V6DPwSozm1olM
	 a9yEBCzuXQC+AW3A206jlQajJmoVUIke+7UoPzR2KB3wTidY8RExrXd9PiDJST79Mq
	 N07pOczWwgynw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 02/22] dt-bindings: media: i2c: max96717: add
 support for I2C ATR
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dumitru Ceclan via B4 Relay" <devnull+dumitru.ceclan.analog.com@kernel.org>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260521-gmsl2-3_serdes-v12-2-b26d92931196@analog.com>
References: <20260521-gmsl2-3_serdes-v12-2-b26d92931196@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 21 May 2026 13:20:46 +0000
Message-Id: <20260521132046.9D5121F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-301311-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dumitru.ceclan.analog.com,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Queue-Id: B18455A6433
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The `reg` property constraint inside the `^i2c@[01]$` pattern is=
 missing `maxItems: 1` and incorrectly applies numeric constraints directly=
 via `items`, making the validation ineffective.
- [Low] The `anyOf` logic used to enforce mutual exclusion between `i2c-atr=
` and `i2c-gate` is overly complex and redundant.
--

commit 38012c69a8fca6511a921f6751ee84fefe0e14a1
Author: Cosmin Tanislav <demonsingur@gmail.com>

dt-bindings: media: i2c: max96717: add support for I2C ATR

This commit adds support for I2C address translation (ATR) to the MAX96717=
=20
device tree bindings. It introduces the i2c-atr property and associated=20
address pools while maintaining support for the legacy i2c-gate property.

> diff --git a/Documentation/devicetree/bindings/media/i2c/maxim,max96717.y=
aml b/Documentation/devicetree/bindings/media/i2c/maxim,max96717.yaml
> index d1e8ba6e368ec..976f6dd2c164c 100644
> --- a/Documentation/devicetree/bindings/media/i2c/maxim,max96717.yaml
> +++ b/Documentation/devicetree/bindings/media/i2c/maxim,max96717.yaml

[ ... ]

> +    patternProperties:
> +      '^i2c@[01]$':
> +        $ref: /schemas/i2c/i2c-controller.yaml#
> +        unevaluatedProperties: false
> +        properties:
> +          reg:
> +            items:
> +              minimum: 0
> +              maximum: 1

[Severity: Medium]
Does this properly validate the reg property? Since dt-schema parses reg as=
=20
a matrix (an array of tuples), applying minimum and maximum directly to=20
items causes JSON schema to silently ignore the numeric constraints, as the=
y=20
are being applied to arrays instead of numbers.

Additionally, the lack of maxItems: 1 allows multiple register regions to=20
incorrectly pass validation.

[ ... ]

> +allOf:
> +  - $ref: /schemas/i2c/i2c-atr.yaml#
> +
> +  - anyOf:
> +      - oneOf:
> +          - required: [i2c-atr]
> +          - required: [i2c-gate]
> +
> +      - not:
> +          required: [i2c-atr, i2c-gate]

[Severity: Low]
Is this anyOf block more complex than necessary?=20

The not branch evaluates to true when only one is present or when neither=20
is present, which completely subsumes the oneOf branch. Could this be=20
mathematically simplified to just use the not condition without changing=20
the validation logic?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260521-gmsl2-3_se=
rdes-v12-0-b26d92931196@analog.com?part=3D2

