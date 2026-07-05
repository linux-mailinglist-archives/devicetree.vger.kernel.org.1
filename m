Return-Path: <devicetree+bounces-320637-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AijCMflbSmr9BgEAu9opvQ
	(envelope-from <devicetree+bounces-320637-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 15:28:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2466270A1C6
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 15:28:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=oTYNKEsE;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320637-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320637-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E98A0300FB6D
	for <lists+devicetree@lfdr.de>; Sun,  5 Jul 2026 13:28:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66C2E3769F8;
	Sun,  5 Jul 2026 13:28:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F6419A288;
	Sun,  5 Jul 2026 13:28:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783258101; cv=none; b=NzRVp3+B7zIuWr+g0uJwnxTsWu1nXBi0XSz5PXpwzOiK7T2vFSD7wSB5q1emqmQ8+0AM+8i+hqpmQ6JC+CTaxxR5R0BAjkx/W2lig+29vXMWPdXdWGfQjxu3imvu7SQVFUMlrUy/XCKZyvY9GH0JvG5NCcHANPNK/RJy0u9cm5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783258101; c=relaxed/simple;
	bh=dES+qINWFOZduGnoHH4ZtYH/t4LOBY6IYerkE/LxDnM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=L/3vbJ+ZSmD0M9mrULpEufQLyEUfaSruMqMwuI9Q/MqFUSFVe2TiKB6dcAPVirvBHzY15FuKRVj0wvePXZKZ3behM54r1326xrw4sEAonNJ1qvg28tEfi1ddn2ugTEXCxtzwTsqHK5KizZNVLlWj8vN+JY4vYvIQLmS0Ahd2jj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oTYNKEsE; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9CA9C1F000E9;
	Sun,  5 Jul 2026 13:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783258100;
	bh=nwIKCzMbF3WhV0/U5Kax09BS2Yqe+Dc/s+El/RZSS0I=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=oTYNKEsEx4d1PsPgFGtUg4/c2OMf6yWC7/Jywz1rpOd3/zoJpJ0VssouxwCmyRlBO
	 fQ+wX9Q0J035ffgYjSX5+8aW1PbaoVCEU3JuIR0Dr+5RdMGkdX9Bi+8oowltVx4iOr
	 99Tbi2PGfHQbVcDuuHfS7Fe88NdbAGYAzbNk1m5xwVJ0YGT1bCDCYMb76joFsxKo5m
	 hcZkQLOXjAtazNHi0UIj/c7uu1fXwkROnZ/0eEdmuxr77mxNkHgZH98B7SXJH7gk5U
	 T7Fsw/Vu+mXoFnLx80sV2ZxOEd/Vb9eKncdE5/D8wOZKj4x6l4dQ2wVnRx+W2V3qnB
	 OBlIA17QlpV1g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 09/10] dt-bindings: arm: apple: Add M4 based devices
Reply-To: sashiko-reviews@lists.linux.dev
To: "Yureka Lilian" <yureka@cyberchaos.dev>
Cc: conor+dt@kernel.org, linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260705-apple-m4-initial-devicetrees-v1-9-e5655ee56523@cyberchaos.dev>
References: <20260705-apple-m4-initial-devicetrees-v1-0-e5655ee56523@cyberchaos.dev>
 <20260705-apple-m4-initial-devicetrees-v1-9-e5655ee56523@cyberchaos.dev>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 05 Jul 2026 13:28:19 +0000
Message-Id: <20260705132819.9CA9C1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-320637-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,cyberchaos.dev:email,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:yureka@cyberchaos.dev,m:conor+dt@kernel.org,m:linux-watchdog@vger.kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2466270A1C6

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Low] The top-level text description block in the binding was not updated=
 to list the new M4 devices.
- [Low] The inline comments for the newly added M4 MacBook Air models incor=
rectly label them as 'M3'.
--

commit 2d1ae3586bee901cafa8ffc62c9df52d3acdcf89
Author: Yureka Lilian <yureka@cyberchaos.dev>

dt-bindings: arm: apple: Add M4 based devices

This commit adds compatible strings for Apple M4-based devices. It introduc=
es
the apple,t8132 SoC and associated platforms like the new MacBook Pro, iMac,
MacBook Air, and Mac mini.

Looking at the top-level description block in this file:

Documentation/devicetree/bindings/arm/apple.yaml:
  Devices based on the "M3" SoC:

  - MacBook Air (13-inch, M3, 2024)
  - MacBook Air (15-inch, M3, 2024)
  - MacBook Pro (14-inch, M3, 2023)
  - iMac (24-inch, M3, 2023)

  Devices based on the "M1 Pro", "M1 Max" and "M1 Ultra" SoCs:

[Severity: Low]
Should the new M4 devices be added to this top-level description block to
keep the documentation in sync with the schema definition below?


> diff --git a/Documentation/devicetree/bindings/arm/apple.yaml b/Documenta=
tion/devicetree/bindings/arm/apple.yaml
> index e49403c73f9d2..3262292252d25 100644
> --- a/Documentation/devicetree/bindings/arm/apple.yaml
> +++ b/Documentation/devicetree/bindings/arm/apple.yaml
> @@ -315,6 +315,18 @@ properties:
>            - const: apple,t8122
>            - const: apple,arm-platform
> =20
> +      - description: Apple M4 SoC based platforms
> +        items:
> +          - enum:
> +              - apple,j604  # MacBook Pro (14-inch, M4, 2024)
> +              - apple,j623  # iMac (24-inch, 2x USB-C, M4, 2024)
> +              - apple,j624  # iMac (24-inch, 4x USB-C, M4, 2024)
> +              - apple,j713  # MacBook Air (13-inch, M3, 2025)
> +              - apple,j715  # MacBook Air (15-inch, M3, 2025)

[Severity: Low]
Are these inline comments correct, or should they say M4 instead of M3 for
the new 2025 MacBook Air models?

> +              - apple,j773g # Mac mini (M4, 2024)
> +          - const: apple,t8132
> +          - const: apple,arm-platform

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260705-apple-m4-i=
nitial-devicetrees-v1-0-e5655ee56523@cyberchaos.dev?part=3D9

