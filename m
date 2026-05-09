Return-Path: <devicetree+bounces-294951-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uOoYHOJ9/2kU7AAAu9opvQ
	(envelope-from <devicetree+bounces-294951-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 20:33:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D40D50101D
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 20:33:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6CD2D30039B9
	for <lists+devicetree@lfdr.de>; Sat,  9 May 2026 18:33:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B519F3C0607;
	Sat,  9 May 2026 18:33:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mDUqI+xm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BD613BD237
	for <devicetree@vger.kernel.org>; Sat,  9 May 2026 18:33:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778351582; cv=none; b=qXSFX5urKwlRAaMnLTvVVM2p33FJdIPqPEj0LdAJ6QycTQfTgSs6SEo7uG8fOaOCVhvmSlMjKDrOw0KuYG3uq/ZNJz0bzG0oaMlYKFZYNGk4cXCV7PCWUYTxKhtMu5jaEiYSzYk2Xz+ckbFnM3Qf6R+2e/iK8MjpjRdJir+ShKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778351582; c=relaxed/simple;
	bh=TCjADJHmpvOvNAv+un5AeBTlnjY49kQ6AkyIbS4xC9g=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ZEHd7I0sosFU4rKdSXxJJ9HYFPLRIQta1lan2AA4QK15GDu77sax8MjSl6rWIH+qkWrsIAbgLjo4O/YJPpBb27HQVQhIq9kSKB3deuwTBv77VRQUDQahbmtUESvbQuxusgyLaOJuszdxRAZB9VM290Q/It/+yaOMG7CjbgCtyNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mDUqI+xm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7140C2BCB2;
	Sat,  9 May 2026 18:33:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778351582;
	bh=TCjADJHmpvOvNAv+un5AeBTlnjY49kQ6AkyIbS4xC9g=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=mDUqI+xm5JjXGpsokOBZrOrwcATMp3zG3KENoERhpR00jBwwaZSwuYkfN44SWOGmP
	 VKZ2U81RMYrSj+q/0+bjdNwodXX1bx7FgGeoi9QGV6CxKbgLB4YGFo76dgpoOUr6PD
	 SRZOr+9WDRPn4vMPP3A51yLYh+h/L20ewnidTziDDuvJfK+qh55OjvdKDZKhA/CLO8
	 2g9FUnAmge7mVLfT5bYCk1JQXUEloykp/ELb/3Et0PVuFWSeKDmphL1y8L4quTJCkj
	 ek80hOcCFO/fqJfpCKC8mSFAdnVRvFyAeF5RDKaJnbpWt2+6rYJOtal/f0KpjfFgM2
	 QwK/Jj8OaPjkg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2] dt-bindings: iio: adc: Convert xilinx-xadc bindings
 to YAML schema
Reply-To: sashiko@lists.linux.dev
To: "Pramod Maurya" <pramod.nexgen@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260509180719.53704-1-pramod.nexgen@gmail.com>
References: <20260509180719.53704-1-pramod.nexgen@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 09 May 2026 18:33:01 +0000
Message-Id: <20260509183301.B7140C2BCB2@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 1D40D50101D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-294951-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,smtp.kernel.org:mid];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Invalid `minimum` and `maximum` constraints applied directly to =
the `reg` property in `channel@...` subnodes.
--

commit 5043f94915e880a0ca171308ea2b8d199810b756
Author: Pramod Maurya <pramod.nexgen@gmail.com>

dt-bindings: iio: adc: Convert xilinx-xadc bindings to YAML schema

This commit converts the Xilinx XADC and UltraScale System Monitor device
tree binding from the legacy plain-text format to a YAML schema. The
new binding covers the ZYNQ hardmacro, AXI softmacro, and UltraScale System
Management Wizard.

> diff --git a/Documentation/devicetree/bindings/iio/adc/xlnx,xadc.yaml b/D=
ocumentation/devicetree/bindings/iio/adc/xlnx,xadc.yaml
> new file mode 100644
> index 0000000000000..cfe753e3e8d19
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/xlnx,xadc.yaml

[ ... ]

> +    patternProperties:
> +      "^channel@([0-9a-f]|10)$":
> +        type: object
> +        description:
> +          Represents an external channel connected to the ADC.
> +
> +        properties:
> +          reg:
> +            description: |
> +              Pair of pins the channel is connected to.
> +                0: VP/VN
> +                1: VAUXP[0]/VAUXN[0]
> +                2: VAUXP[1]/VAUXN[1]
> +                ...
> +                16: VAUXP[15]/VAUXN[15]
> +            minimum: 0
> +            maximum: 16

Will these constraints work correctly on the reg property?

In dt-schema, the reg property is intrinsically defined as a uint32-matrix
array type. According to the JSON Schema specification, the minimum and
maximum validation keywords apply exclusively to numeric types, not arrays.

Placing these keywords directly on the reg property may trigger a
meta-schema violation during dt_binding_check or be silently ignored,
allowing out-of-bounds configurations to pass validation.

Should this use maxItems: 1 with the numeric bounds placed inside items,
such as items: [ { minimum: 0, maximum: 16 } ] instead?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260509180719.5370=
4-1-pramod.nexgen@gmail.com?part=3D1

