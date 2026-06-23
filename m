Return-Path: <devicetree+bounces-314914-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pMdrIXKyOmq8EAgAu9opvQ
	(envelope-from <devicetree+bounces-314914-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 18:21:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E139A6B8AED
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 18:21:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=dZlbVlNi;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314914-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314914-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E4BC63070A5D
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 16:18:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0995230C172;
	Tue, 23 Jun 2026 16:18:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02C572E717B
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 16:18:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782231514; cv=none; b=t1Hp1+apz6vl4wDPrW1BksgebIJODzlvT7Yxg3jitRxFDv0zdLcVwtdp/2Hc0QPWBTWJV7qepF/276FW9jyclD6rTQU/gGFccqzNHIM7u0U2SlcS7uCf+bwIwgDqgt83ZYhKjnddkfVHs+rCee9CTIg0wSyNemzuZBP0x2NkkF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782231514; c=relaxed/simple;
	bh=svoLY8cuhp/vWkr/Ot0X1DQqlrjcw7SeA+gas25JoEk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=YAUt+KJSTof45aTyrX6r7YoSeaov/QmUitHxtsp2qZXx5mMsA/y1/W/9T0t2nc9n9JTsDQu205bTbIRl6f0QDnWvk+do8ysJxbnqVgKFKGP62V6ZciX1qgmAGW9JzviSWBx1p97Tp8e3ETX5P9Q7kYSIXHtQbF9ZJyqI0z7smNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dZlbVlNi; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5DC2F1F000E9;
	Tue, 23 Jun 2026 16:18:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782231513;
	bh=n30mR+p4t6W1dX+at1vOiRbyRT19FMEBMZtsql6LLqU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=dZlbVlNijDk+3b4x9Tt/vge715SMdKdQur50x/4AFJfpXvxUXGCRHUybAEsa+7H3d
	 ootjOEAlkb01hOZEsGLIAFs+u4ENjpq97Qrh6t1Hst4tWN6t32MRF87/y3kTS9CBvm
	 NAKl26Tr/AVxOK8KfcjPdkk2Ym+UuT96a7+JkyXf4o10hM9VVRyNwXxtfqDwu67jci
	 HziV6uPv2V6XnFtA4O06xNfy63SGbE6XiR01Y3QjmyPSm08u9hNbHU4IfcZIJcs4N8
	 ufhsBLriYaLA1AqT1TNBUIT0PsJ4JK3u33zJ1wN61zJLmwCYeEzg9KOCTKqCfnkyd0
	 6LpSiE5exCa+w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: iio: dac: Add DAC8163
Reply-To: sashiko-reviews@lists.linux.dev
To: "Lukas Metz" <lukas.metz@gmx.net>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260623-dac8163-work-v1-2-5b508158faa0@gmx.net>
References: <20260623-dac8163-work-v1-0-5b508158faa0@gmx.net>
 <20260623-dac8163-work-v1-2-5b508158faa0@gmx.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 23 Jun 2026 16:18:32 +0000
Message-Id: <20260623161832.5DC2F1F000E9@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-314914-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmx.net];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:lukas.metz@gmx.net,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E139A6B8AED

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The schema does not properly enforce mutual exclusivity between `ti=
,internal-ref` and `vref-supply`.
--

commit c91535ac2ae4b61ce673dbacd2798488e644cdb0
Author: Lukas Metz <lukas.metz@gmx.net>

dt-bindings: iio: dac: Add DAC8163

This commit adds the device tree binding schema for the Texas Instruments
DAC8163 family of digital-to-analog converters.

> diff --git a/Documentation/devicetree/bindings/iio/dac/ti,dac8163.yaml b/=
Documentation/devicetree/bindings/iio/dac/ti,dac8163.yaml
> new file mode 100644
> index 0000000000000..bb4bad3893235
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/dac/ti,dac8163.yaml

[ ... ]

> +required:
> +  - compatible
> +  - reg
> +
> +allOf:
> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> +  - if:
> +      not:
> +        required:
> +          - ti,internal-ref
> +    then:
> +      required:
> +        - vref-supply

[Severity: Low]
Does this schema properly enforce mutual exclusivity between the internal
reference and an external supply?

If a devicetree incorrectly defines both the "ti,internal-ref" flag and a
"vref-supply" property, it seems this block will silently pass validation.=
=20
While it requires "vref-supply" when "ti,internal-ref" is absent, it doesn't
appear to forbid "vref-supply" (e.g., via `properties: { vref-supply: false=
 }`)
when "ti,internal-ref" is present.

> +
> +unevaluatedProperties: false

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260623-dac8163-wo=
rk-v1-0-5b508158faa0@gmx.net?part=3D2

