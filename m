Return-Path: <devicetree+bounces-300822-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0H9iFvTxDWrA4wUAu9opvQ
	(envelope-from <devicetree+bounces-300822-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 19:40:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C7DAA5943AA
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 19:40:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CD4D1301945E
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 17:28:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 940DA3A3826;
	Wed, 20 May 2026 17:28:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eqm4ExK6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 769EB3EF0D7
	for <devicetree@vger.kernel.org>; Wed, 20 May 2026 17:28:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779298123; cv=none; b=Cb2xqu0dsj0Moo8JYlzRpV9NQj+cKm8b1PnrepkSOV+ROtVWIt9n+q6R5B1/Cozsp1jcWp3wbkzWL0ilXox5UB8VojgSEnLowEDEYVN5rb6pU1UAsabcrCc8xYAMDDvXZO0XWbVQq5aERJuLTW6hEyH2LJi35smujG0NVK1wHOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779298123; c=relaxed/simple;
	bh=goGHFcQPFIupLAWO3BwhEGs357ZJJRJGMfqG11WvDQU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=t5vwbxu3NeGc7LBgkcScPpGkRQKZx+FAl1qE3gG2FDRz2r6DODXoKDjDG+ErZ8j0eSc07vpMyKOU9OuA+rbP2x/vnWUcKuK5fioPDkJqTKjGhDZMZj/X2mikdBoqMqX7kaLLDHxSI4LzNcF1k6s4yGS9K2nUdCaacczEGWoTixg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eqm4ExK6; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08A3C1F000E9;
	Wed, 20 May 2026 17:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779298122;
	bh=pHw1ABmohvkjGONsknk7imDc1hlKGW4n66I91m1dD/M=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=eqm4ExK64VHa2X5e6F1OSFfaR0+U8Dp4JcUzx4Om59q4PgDXsBbLZf3iJkBUYzLBC
	 SMAN0etkFIVlEecy0ngj2SnwEyHczWhnF+4h+kIF3hgWoGsykcp4+9ZpB0ZXLEOTNn
	 K9Ww/f962Om8GnpOjA3nBPEtNSbJN6GfDCNSOGpTg+vnLTzgkCD59EeU5ONckWOJmT
	 aRqvXF7/GaDpFPTrIRXfGPRdPFKSzZlVY0+aRcIbCTMldG+tT2kQ9v4L3WJqx8BPx1
	 KvKgw1X+iCpGwQhZ7zR2T6GoCE84dLcPen3wr253VumFop1oerT58d7nFt+loPNSOX
	 HJH16cSh3n2ag==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 6/7] dt-bindings: arm: airoha: Add the chip-scu node
 for AN7583 SoC
Reply-To: sashiko-reviews@lists.linux.dev
To: "Christian Marangi" <ansuelsmth@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260520155525.22239-7-ansuelsmth@gmail.com>
References: <20260520155525.22239-7-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 20 May 2026 17:28:41 +0000
Message-Id: <20260520172842.08A3C1F000E9@smtp.kernel.org>
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
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-300822-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Queue-Id: C7DAA5943AA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `#thermal-sensor-cells` property is not marked as required f=
or the new `airoha,an7583-chip-scu` variant, allowing incomplete device tre=
e nodes to silently pass schema validation.
--

commit 87c7f9a301f3391f2461e89c9c85f755bb4ba049
Author: Christian Marangi <ansuelsmth@gmail.com>

dt-bindings: arm: airoha: Add the chip-scu node for AN7583 SoC

Document support for the Airoha AN7583 chip-scu node. This variant is
similar to the EN7581 but adds a thermal sensor capability in addition
to controlling HW PIN and other peripherals.

> diff --git a/Documentation/devicetree/bindings/arm/airoha,en7581-chip-scu=
.yaml b/Documentation/devicetree/bindings/arm/airoha,en7581-chip-scu.yaml
> --- a/Documentation/devicetree/bindings/arm/airoha,en7581-chip-scu.yaml
> +++ b/Documentation/devicetree/bindings/arm/airoha,en7581-chip-scu.yaml

[ ... ]

>  required:
>    - compatible
>    - reg
> =20
> +if:
> +  properties:
> +    compatible:
> +      contains:
> +        const: airoha,en7581-chip-scu
> +
> +then:
> +  properties:
> +    '#thermal-sensor-cells': false
> +

[Severity: Medium]
Should #thermal-sensor-cells be explicitly added to the required list for
the airoha,an7583-chip-scu variant?

When a hardware variant adds a new provider capability, the corresponding
standard properties typically need to be explicitly required. Without it,
incomplete device tree nodes missing the thermal sensor cells property might
silently pass schema validation.

Could an else block be added here to enforce this requirement?

else:
  required:
    - '#thermal-sensor-cells'

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260520155525.2223=
9-1-ansuelsmth@gmail.com?part=3D6

