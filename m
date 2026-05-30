Return-Path: <devicetree+bounces-304486-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AENtJ5gzGmp+2AgAu9opvQ
	(envelope-from <devicetree+bounces-304486-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 02:47:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 555B160A4EE
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 02:47:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 21A00300D4D1
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 00:45:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2623A1F3D56;
	Sat, 30 May 2026 00:45:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GbzcCp23"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3161A9FAB
	for <devicetree@vger.kernel.org>; Sat, 30 May 2026 00:45:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780101939; cv=none; b=gL593Lme0asQbQ2SX2in7uM2NSG56LCe9Se9lgsb0JLQ6KUyql6D92v8JApnhIdL636cnvRPc4NmyxpDHlPMXnrCtcvgoW/NJ12xbTqjk4WEfrJPK4AagiH69UNJVt/4bcWW0ouLezrRlaKEjODUDmx2BT6Gc7cemJ8q3zJsORI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780101939; c=relaxed/simple;
	bh=bgOyXp4WPxQ5rcdTAw4JUnQkOjE12WdfRpfcAN71Xlc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=l8ybHvaevV0FZ0XgtWtgE+ipcDtLeqRn3AgoFxxQoAbT4c5UN/l9IkKshGZES9fEhlWCm25m1mHOx+XQGM9SK7UHed37NYbr6cQ/A0UR2Yvq1fKJXp/Zlmcej7JoK0r2OVrdZejTrjhMuhJqFBjv8la9V3YKfraUmLmwHpEtfPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GbzcCp23; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D1BE1F00893;
	Sat, 30 May 2026 00:45:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780101937;
	bh=u17r1BotL8EYi7xscICZmk5HqnD+coyQrha/RKHOoAU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=GbzcCp235K5URr/S1Qt1+/SluIFf49mgOzkSbFfyo+nx/ID4B2zM4X9uRlg9C2HQT
	 S3K9tAJAG6fRJfyoD8kDboPs50JW2yDDvkCenfZFbnUHCSGHcXHowbkXa4b4b3toBD
	 OCgCxiXW23n1Pe8Ki3sp2k2ysffAzT8GQ7f3FA7dBqE8tpri5UA8O2AGx0IERAToEW
	 PPnZJ1DILWlFSmEOGwWN2wzwkFTAWreGvd0I9gVZ5IlyvX/a3ky+Pt2IBTw/BH+Ps6
	 akx4BFgkp6E4EyN+o02qP+LLZhdIf1f9+6J1mafhJ8tpqPvvVn9CuVcaPAPMM8qS6c
	 z1YdpJSft/S6w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v4 1/6] dt-bindings: net: Add support for
 Airoha AN8801R GbE PHY
Reply-To: sashiko-reviews@lists.linux.dev
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260521-add-airoha-an8801-support-v4-1-1e4837d30ef4@collabora.com>
References: <20260521-add-airoha-an8801-support-v4-1-1e4837d30ef4@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 30 May 2026 00:45:37 +0000
Message-Id: <20260530004537.8D1BE1F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-304486-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,smtp.kernel.org:mid,collabora.com:email,lists.linux.dev:replyto,sashiko.dev:url]
X-Rspamd-Queue-Id: 555B160A4EE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The binding incorrectly redefines the standard `function-enumera=
tor` property to configure hardware offload modes instead of using it as an=
 ordinal identifier.
--

commit e8af54668e8a0d612e75cb2d23647751c0b3640f
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

dt-bindings: net: Add support for Airoha AN8801R GbE PHY

Add a new binding to support the Airoha AN8801R Series Gigabit
Ethernet PHY.

> diff --git a/Documentation/devicetree/bindings/net/airoha,an8801.yaml b/D=
ocumentation/devicetree/bindings/net/airoha,an8801.yaml
> new file mode 100644
> index 0000000000000..fb2f70ceb33ab
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/airoha,an8801.yaml
[ ... ]
> +    patternProperties:
> +      "^led@[0-2]$":
> +        type: object
> +        description: PHY LEDs
> +        $ref: /schemas/leds/common.yaml#
> +
> +        properties:
> +          reg:
> +            enum: [0, 1, 2]
> +
> +          function-enumerator:
> +            enum: [0, 1, 2]
> +            description: |
> +              Specifies a function for offloading LED functionality to t=
he PHY:
> +              0 - No offloading
> +              1 - Link Availability
> +              2 - Network Activity

[Severity: Medium]
Does this code misuse the function-enumerator property?

According to the standard LED subsystem schema
(Documentation/devicetree/bindings/leds/common.yaml), function-enumerator is
strictly defined as an integer used when more than one instance of the same
function is needed, differing only with an ordinal number (e.g., LAN 1, LAN=
 2).

Using it here (and in the subsequent PHY driver commit) to configure
hardware-specific offload modes conflates an LED ordinal with hardware
behavior configuration.

Could this establish a non-compliant device tree ABI that might break
standard LED tooling?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260521-add-airoha=
-an8801-support-v4-0-1e4837d30ef4@collabora.com?part=3D1

