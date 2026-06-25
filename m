Return-Path: <devicetree+bounces-315643-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id a9V7O6YOPWrowQgAu9opvQ
	(envelope-from <devicetree+bounces-315643-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 13:19:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B166C50D8
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 13:19:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=hzfdEp29;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315643-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315643-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C817830316F8
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 11:18:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EF403DA5AF;
	Thu, 25 Jun 2026 11:18:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485533DA5AD
	for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 11:18:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782386318; cv=none; b=ElDnyhs2sv6+bkILBxbi3dIQISlo6xeEEtVdlGNqis8rPIq3vfthoF+73mc56FxV7F4o1jwiGHN0wyus7l8oJFXFW1WN5/sZhEpk7l0JJxX2CYW62m1clZ1G19Y3L1dDn4xbHWvbYqg7nxXBdC6D/2QgDKX/daHl510xrBLtNXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782386318; c=relaxed/simple;
	bh=xp9aKdXYDUqHSeLZ47Kh03QM4ilxZ03UaX17WKMzmV0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=X3mAZslaK093za6ifb1JgHWN4vP+hu+WjSgCDIb+gra6alJlnFqANklKvQqRnDDj6Yt2CJpGPqKpAtJqnXtu/u0BxldqmY02xFvKfQQinSuXeUMSwjiH3vSlyxkFYkrZo2fdlxuUqqBGdTSmBrqomsFpoYJ3eNNF56SU+/wYFpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hzfdEp29; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B22B51F000E9;
	Thu, 25 Jun 2026 11:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782386312;
	bh=FTlFv5wOZiYCFjzHs5UXZSWg4myGoj7qa9O2ZY39FuY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hzfdEp29C1TnmYJ4J3yhx5qaDGAxWNXvqpqeY+LOzPO2AOrNDnzF1mw500TwFBAJD
	 +jEmvGHumrEtAHLhSzonj69gKllBQIfJ8d1FsuvezZNQdzzf+pYTwLIn9U49jB3Y4y
	 zdnC7SWG+vUjp2BFI5uHkxQrLheFeyzdyhWMitb8UOzn6ontvVd1xnKFZiV5R/LKTj
	 D5T+avNlrzvErbLASEcIPeidzxIlGFIYYt4VlZBLvIOP620U7Vf527GrEVOMIBKBn5
	 9mT0Z4j+gbdPK3bRwASOVcZqKAC2gZ05t7rmRFE2SOtHHVndIcIqKOrt4J3MvRDrKm
	 V4likf5X5zCuw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: iio: adc: Add Nuvoton MA35D1 EADC
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chi-Wen Weng" <cwweng.linux@gmail.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260625110638.38438-2-cwweng.linux@gmail.com>
References: <20260625110638.38438-1-cwweng.linux@gmail.com>
 <20260625110638.38438-2-cwweng.linux@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 25 Jun 2026 11:18:31 +0000
Message-Id: <20260625111831.B22B51F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-315643-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:cwweng.linux@gmail.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:cwwenglinux@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,lists.linux.dev:replyto,nuvoton.com:email,vger.kernel.org:from_smtp,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 52B166C50D8

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Missing `resets` property for a hardware block that has a dedicated=
 reset line.
--

commit 1f48c0ec2f3eb7b2358c1e0e2db87a26859d5fc5
Author: Chi-Wen Weng <cwweng@nuvoton.com>

dt-bindings: iio: adc: Add Nuvoton MA35D1 EADC

This commit adds the devicetree binding for the Enhanced ADC controller
found on Nuvoton MA35D1 SoCs. It describes the register region, interrupt,
functional clock, and standard channel child nodes.

> diff --git a/Documentation/devicetree/bindings/iio/adc/nuvoton,ma35d1-ead=
c.yaml b/Documentation/devicetree/bindings/iio/adc/nuvoton,ma35d1-eadc.yaml
> new file mode 100644
> index 0000000000000..ae7ad0f7689ab
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/nuvoton,ma35d1-eadc.yaml

[ ... ]

> +properties:
> +  compatible:
> +    const: nuvoton,ma35d1-eadc
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1

[Severity: Low]
Is the resets property missing from this binding? The Nuvoton MA35D1 SoC
explicitly provides a reset line for the Enhanced ADC block (defined as
MA35D1_RESET_EADC0 in include/dt-bindings/reset/nuvoton,ma35d1-reset.h).

Should the resets property be declared here and added to the required list
to accurately reflect the hardware dependencies and avoid dt-schema
validation errors if a board uses the reset line?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260625110638.3843=
8-1-cwweng.linux@gmail.com?part=3D1

