Return-Path: <devicetree+bounces-312341-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id X6Q9IMz7MGo7aAUAu9opvQ
	(envelope-from <devicetree+bounces-312341-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 09:31:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D774968CDC5
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 09:31:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ZttlWelk;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312341-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312341-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6475B3027D96
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 07:31:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE8374071FB;
	Tue, 16 Jun 2026 07:31:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9532840801C
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 07:31:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781595081; cv=none; b=LzPHajLDKmAEbASBWToiGOkOkAUsAU3Ly7MsYDV0Wp5NdmA7UEnUCr6JPJ9+M3QahqXNbXrT2t7BfVqSeZPM3CzmwsJ/eGomCttu3NkjapAJFJ9kqKbg6sGb9KDvHZHVxDutEk6wI0kpx/phwACPA9B8rwZev8QcYgxQiEFmchA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781595081; c=relaxed/simple;
	bh=MUvXesPFyZ2Y8sg0qQbkeioxs2j0YpJnqCRGVvvcNHk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=mXmUH/+KwL7h5NEDxsWOCMSyVjr13MXHQrytYfUFlNwFFietIOgmhAV3cXjxWq6I+61ylzMnpu1JvMTupSbFHp88LGGtzPQUIfKvHGPbFiewNDaYOsN0LMtApfH6d8XEqU7fi45ByRSrIo8aXtuGiu3VX7Iacp8FEXifQ33vOpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZttlWelk; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0530A1F000E9;
	Tue, 16 Jun 2026 07:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781595080;
	bh=Pb4xMFYA4+98XP5PXlkyTWl/J6Gi4mR7gtcLmsmTCIk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ZttlWelkbjumcE6zHN6KWMdddVzvpsrDnjCRr68YZ3ThqtJwoXq9CUWMdMvEawLNL
	 Ln7WGWMWWWd3dz6/x6hGhO30ca2FQGiyuPPyz1xtRIyT2BqVpIHfDs8kv5cmVCMun7
	 hzQWDJJJDDssKRhAktsxMsQWqBdJZEGH0ht6woEu2TH7KcOX6StfTH5QctG4sDhSyj
	 8jLy2AqTcjRHlNulZqiv2A/EjYQZaBp+3TlWFnZFL2T5ezqjQLCXIdn+XvdvRtLAFD
	 8elJ/JKvzSMQHA7Mr/9M4u6K3J3QaYPq02kOCHW/Am620w8DgJaj/DTAtjNAXrvGmr
	 xqdlBnZ458TYg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC v5 1/6] dt-bindings: iio: add Open Sensor Fusion
 device
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jinseob Kim" <kimjinseob88@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260616072242.3942-2-kimjinseob88@gmail.com>
References: <20260616072242.3942-2-kimjinseob88@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 16 Jun 2026 07:31:19 +0000
Message-Id: <20260616073120.0530A1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-312341-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:kimjinseob88@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D774968CDC5

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The binding uses a generic software protocol as the compatible s=
tring instead of describing specific hardware.
--

commit d9858298f5a88a8d0d1665f79878488487e06393
Author: Jinseob Kim <kimjinseob88@gmail.com>

dt-bindings: iio: add Open Sensor Fusion device

Adds the generic Open Sensor Fusion device binding for a serdev-attached IIO
sensor aggregation hub and documents the vendor prefix.

>     The opensensorfusion,osf compatible describes the generic Open Sensor
>     Fusion host interface. OSF GREEN is not the Linux compatible identity.
>     Likewise, OSF0 is the current wire magic and a wire-format detail, not
>     the Linux driver identity.

[Severity: Medium]
Does this approach align with Device Tree design principles?

Device Tree is typically intended to describe specific hardware components
(such as vendor,chip-model), rather than software interfaces or generic wire
protocols.

> diff --git a/Documentation/devicetree/bindings/iio/opensensorfusion,osf.y=
aml b/Documentation/devicetree/bindings/iio/opensensorfusion,osf.yaml
> new file mode 100644
> index 0000000000000..012a07fd69fe4
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/opensensorfusion,osf.yaml

[ ... ]

> +properties:
> +  compatible:
> +    const: opensensorfusion,osf
> +
> +  vcc-supply:
> +    description:
> +      Regulator supplying power to the Open Sensor Fusion device.
> +
> +required:
> +  - compatible
> +  - vcc-supply

[Severity: Medium]
Is it appropriate to constrain the compatible string to a generic software
protocol identifier here instead of a hardware-specific string?

Because this generic compatible string also requires specific hardware
constraints like vcc-supply, will future hardware variants that speak the
same OSF protocol but have different electrical needs (such as needing a
vddio-supply or reset GPIOs) be able to distinguish themselves without
clashing with these generic constraints?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260616072242.3942=
-1-kimjinseob88@gmail.com?part=3D1

