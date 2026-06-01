Return-Path: <devicetree+bounces-305079-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mFklNIZdHWojZwkAu9opvQ
	(envelope-from <devicetree+bounces-305079-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 12:23:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 486D861D461
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 12:23:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E6DBF334449E
	for <lists+devicetree@lfdr.de>; Mon,  1 Jun 2026 10:10:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95F3E39BFE6;
	Mon,  1 Jun 2026 10:06:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jbss0VgF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C93139BFEF
	for <devicetree@vger.kernel.org>; Mon,  1 Jun 2026 10:06:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780308368; cv=none; b=ApUVrbZheFRC6BrMA3DfB1Hg9u0kkred8iAvgW/cTX+G04rZj1iW5yPjtVBJvLjAQrEKqidC6LHbXVWIXIdCqua8R2ukeKHjtLbGtB3uiyLpnfKh/vj1xzRGYw7E52K65PxV8s/w1AKsdvk1YjvoZMTL8XxogudBkB3Qr9nNGbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780308368; c=relaxed/simple;
	bh=DRuQSfdmTT4plwywUzQpVxeBS7Z6OZ/EES/qbaurygU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=hIQqgeOEMCY5D4W/jti6GRE2h4/AlqpWn1ZFd9HEEQnDUlcdzvTrooa7acXvc6LBcWBdUl4POmI4wGwlMT+Kib8TTQwKlH8uLHaNkM3H4dxnKZ+WPHBNb1VgRrIrds97impz4hUAWLJrBpV194ekVI6EmCxbOajtzMZJC8FZfO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jbss0VgF; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4F931F00898;
	Mon,  1 Jun 2026 10:06:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780308362;
	bh=OzKGpcuQlwqSdJvWXebRotXcJzWT9M21VNbYnAXmfA4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jbss0VgFGGJKIPeTOz04zzOYwLJYvRSDKmoTEmJJiAD+6owvN7G3VUeIaByL2ctBw
	 qbOvngAXC39rBJsWpRuScjjts3p3/3dgoJfPlYwtyUWruJkphMmb/R1Y5Ah7DHVkwu
	 EG5bR+H+VOdkOuD+xNVSYSSgyH292busIGD+ofiJeLM6xw+3EGoAbs0evz+eerhoLY
	 IlB7PYIOK2FtQIh7OJrr8VBoJ3aSaYN/TkZqJIPDDRKeqiGHKU5VfhlyF3r4mPywbn
	 mM/0jDZR7L8MsMIZdeYjjdztkTJxDOiZUBMl9o8FM6qwLI29sUOXGoikDuncNDzwn6
	 EWO2whEkSx3NA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: pinctrl: Add UltraRISC DP1000
 pinctrl controller
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jia Wang via B4 Relay" <devnull+wangjia.ultrarisc.com@kernel.org>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260601-ultrarisc-pinctrl-v2-1-07ac5130a96d@ultrarisc.com>
References: <20260601-ultrarisc-pinctrl-v2-1-07ac5130a96d@ultrarisc.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 01 Jun 2026 10:06:02 +0000
Message-Id: <20260601100602.A4F931F00898@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-305079-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,wangjia.ultrarisc.com,dt];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Queue-Id: 486D861D461
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The conditional schema constraints fail to prevent non-LPC pins (Po=
rts A-D) from being assigned the 'lpc' or 'espi' mux functions.
--

commit 579eeac83b351ad50317d72079e0436d73706e08
Author: Jia Wang <wangjia@ultrarisc.com>

dt-bindings: pinctrl: Add UltraRISC DP1000 pinctrl controller

This commit adds the device tree binding documentation for the pin controll=
er
found on the UltraRISC DP1000 RISC-V SoC. It defines properties for ports
A-D and LPC pins, including supported mux functions and pin configurations.

> diff --git a/Documentation/devicetree/bindings/pinctrl/ultrarisc,dp1000-p=
inctrl.yaml b/Documentation/devicetree/bindings/pinctrl/ultrarisc,dp1000-pi=
nctrl.yaml
> new file mode 100644
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pinctrl/ultrarisc,dp1000-pinctrl.=
yaml

[ ... ]

> +patternProperties:
> +  '.*-pins$':
> +    type: object
> +    unevaluatedProperties: false
> +    allOf:
> +      - $ref: /schemas/pinctrl/pincfg-node.yaml#
> +      - $ref: /schemas/pinctrl/pinmux-node.yaml#
> +      - if:
> +          properties:
> +            pins:
> +              contains:
> +                pattern: '^LPC([0-9]|1[0-2])$'
> +        then:
> +          properties:
> +            function:
> +              enum:
> +                - lpc
> +                - espi

[Severity: Low]
Does this schema allow Ports A-D to incorrectly select the lpc or espi
functions?

The if-then block restricts LPC pins to the lpc or espi functions, but it
appears to lack a reciprocal constraint preventing non-LPC pins from being
assigned to these functions.

Because lpc and espi are included in the base function enum defined later in
the schema, an invalid device tree might silently pass schema validation if=
 it
mistakenly assigns the lpc or espi functions to Ports A-D.

Would it be helpful to add an else clause here, or a separate if-then block,
to explicitly forbid lpc and espi on non-LPC pins?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260601-ultrarisc-=
pinctrl-v2-0-07ac5130a96d@ultrarisc.com?part=3D1

