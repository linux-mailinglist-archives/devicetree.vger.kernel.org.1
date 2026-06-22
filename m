Return-Path: <devicetree+bounces-314353-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vWiDObYEOWoFlgcAu9opvQ
	(envelope-from <devicetree+bounces-314353-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 11:47:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 626B96AE661
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 11:47:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=mhxTz+1F;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314353-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-314353-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B740F30FEB8E
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 09:39:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7F643A16B9;
	Mon, 22 Jun 2026 09:39:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316D636654F
	for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 09:39:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782121165; cv=none; b=MxIyhWg/FIhYxAqoGDw+C6IMpObptp8UBFdVg59DhATJDJ09n82G8l0tJRwWgFIOgdh6UROBE089amP7M3XlltW1I3CwLYCJfOebnLc6hWOuiXL9oL2enotga6UuCntiKqCxTzDvnQ8ryyMVEhie+HbEh1j6Lp1tuhbauqYLl9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782121165; c=relaxed/simple;
	bh=kKj8uPxAYsg41xBtgAyKzDOYzPziCYf0c2MnLTv1ss4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=qnt3HUxUUx8g4K4jyAANzbgx1YPSp9EunGBakt8VymwV3yEzndY45V3qEF7AMuor7eHjfjzPT+HbIjcOgly9yd4MOXkCjiWIRwq13sqxoQQ+A7A4t6lBLE8gB5u+YPvVSROCzXdliTA5KzAzJGrFEpM4Jq42t6ll4/l7gZW0yKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhxTz+1F; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFD8E1F00A3A;
	Mon, 22 Jun 2026 09:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782121163;
	bh=FA1zIG9t9UX8iueBnMuL8+gE547HOG5RO4KyhyTwGoY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mhxTz+1Fsbc+jI2hPZfCIU91y48/ymPP1juNMIetMC/JneK9Td8IRkS11ID5k0Ltj
	 KF/MUJomaqTAXn4RHAF9JhZw18vJBAU2jEO7BMs8g7UzcjvHBzYELPNO6W2Ze+QaA5
	 wReWo4YdtVth+qUhkZpGL3gaIG5u3iYnO4HhnyRr6ZaAxkkBYVTt9mYgcCUpTCvG97
	 7m30pEP6ndUOcbqFEaYOjdMZAcAiKNXb7j+21uZ3sKFtzVb1sdcyexrFFbLR2sbBop
	 JwUIPwYPHrVsf86KYtkwbgMnWuYgIIEuHgzj5vXBFcNGYKhjFOi+PtXGX7UB8lZLZu
	 ZJMJ2cG515/xA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 1/4] dt-bindings: gpio: realtek: Add
 realtek,rtd1625-gpio
Reply-To: sashiko-reviews@lists.linux.dev
To: "Yu-Chun Lin" <eleanor.lin@realtek.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260622092335.1166876-2-eleanor.lin@realtek.com>
References: <20260622092335.1166876-1-eleanor.lin@realtek.com>
 <20260622092335.1166876-2-eleanor.lin@realtek.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 22 Jun 2026 09:39:23 +0000
Message-Id: <20260622093923.BFD8E1F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-314353-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:eleanor.lin@realtek.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 626B96AE661

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The binding defines the GPIO controller as an interrupt controll=
er but fails to include `interrupt-controller` and `#interrupt-cells` in th=
e `required` list.
--

commit c069bdfb1e6325b567084e608f2dc45bf15e2fcf
Author: Tzuyi Chang <tychang@realtek.com>

dt-bindings: gpio: realtek: Add realtek,rtd1625-gpio

This commit adds the device tree bindings for the Realtek DHC RTD1625 GPIO
controllers. It introduces support for a new per-pin register architecture
that includes separate register blocks for configuration and interrupt cont=
rol.

> diff --git a/Documentation/devicetree/bindings/gpio/realtek,rtd1625-gpio.=
yaml b/Documentation/devicetree/bindings/gpio/realtek,rtd1625-gpio.yaml
> new file mode 100644
> index 0000000000000..f13c910b73c69
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gpio/realtek,rtd1625-gpio.yaml

[ ... ]

> +  interrupt-controller: true
> +
> +  "#interrupt-cells":
> +    const: 2
> +
> +  gpio-ranges: true
> +
> +  gpio-controller: true
> +
> +  "#gpio-cells":
> +    const: 2
> +
> +required:
> +  - compatible
> +  - reg
> +  - gpio-ranges
> +  - gpio-controller
> +  - "#gpio-cells"

[Severity: Medium]
Since this binding defines the hardware as an interrupt controller, should
interrupt-controller and #interrupt-cells be included in this required list=
?=20
Omitting these provider properties might allow incomplete device tree nodes=
=20
to pass schema validation, which could then cause runtime failures for=20
drivers attempting to use the undocumented functionality.

> +
> +additionalProperties: false

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260622092335.1166=
876-1-eleanor.lin@realtek.com?part=3D1

