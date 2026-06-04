Return-Path: <devicetree+bounces-306555-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YsCjL87gIGoy8wAAu9opvQ
	(envelope-from <devicetree+bounces-306555-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 04:19:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B3E9B63C75D
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 04:19:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="Iwf9ipt/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306555-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306555-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3E28D30CD524
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 02:08:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 525092D97B9;
	Thu,  4 Jun 2026 02:07:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F096175A6E
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 02:07:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780538848; cv=none; b=UNwh/YAcBo1gMqS1ENJyqM2zvCRe12XmFqA3H+OnXRLppF+NyhjBHVVSyITfHjDl7f8htHEUXnNznZpbh7t8XgQgsSUMTH8M/EdbEsihZPbKuQx25OgOiuulx1DZiJwAzSFlPnkXkqhhazvhCT3l1x52+3K5HsJa0TmPqfqmYNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780538848; c=relaxed/simple;
	bh=uPQ/LC7XjmZJDqvNF1OgHD9sfsre+CqQmLcQHV06wNQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=qQF3NMMdmGS13sZatrHC3TfioOT4nYfUgWtOS0cpd9syS62/+Z4jfc/xXHo4H7sl1ZzMxwnPwNSrRNq0DzMwHXbD/YRlANmMUfNE7OsAPawXWvKaVaSWuG6WBHwY+06B3TZzRLtd3lXn6mcQfrrLTMW5mKPt15caADA6b2tEirE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iwf9ipt/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95A0B1F00893;
	Thu,  4 Jun 2026 02:07:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780538846;
	bh=6WkFurCUem9g8lrAbGLGw6sJlyGKIQVkPVUeCs0VNL8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Iwf9ipt/84pBCl+nVkJLIclMERg9PiaX17CZ7kJ7wsHy3OXBe5e2b9H9ODhL+oHUu
	 R87akv8hL7BO3LX730qpeowL9a50b1JyVBbEWzaw9GovqCBXl6ReWOth1htxG1k95B
	 kTztNZqqDSSaXDwV9u83mcyGBeQWybJWDxJGYoIw+CdapwMGnao+p1WZROeEzvCdBR
	 h56XPJnzQQ1wHHjNPsIFxFgB8P+wMuZL8JeoaDDjxdh/qI1EOiH9mDanrkzwAZ04QU
	 Lm0M8vCSqD9tCb3XqgC3G8ElD0YmVjKDqexIoyLbDVLEVLeP4eZAUFulEvGtUOHP8e
	 Uubz91p5k2unQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 1/2] dt-bindings: i2c: ls2x-i2c: Add clocks and
 clock-frequency properties
Reply-To: sashiko-reviews@lists.linux.dev
To: "Hongliang Wang" <wanghongliang@loongson.cn>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260604015848.18643-2-wanghongliang@loongson.cn>
References: <20260604015848.18643-2-wanghongliang@loongson.cn>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 Jun 2026 02:07:26 +0000
Message-Id: <20260604020726.95A0B1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
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
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-306555-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:wanghongliang@loongson.cn,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,loongson.cn:email,smtp.kernel.org:mid,vger.kernel.org:from_smtp,microchip.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B3E9B63C75D

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The `clocks` property is used in the binding example but is not dec=
lared in the `properties` block, causing `dt_binding_check` to fail.
--

commit 2429ce4ee39320cf5271a51cef0c60497b97ce80
Author: Hongliang Wang <wanghongliang@loongson.cn>

dt-bindings: i2c: ls2x-i2c: Add clocks and clock-frequency properties

This commit adds clocks and clock-frequency properties to the
loongson,ls2x-i2c dt-binding examples.

Cc: stable@vger.kernel.org
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Hongliang Wang <wanghongliang@loongson.cn>

> diff --git a/Documentation/devicetree/bindings/i2c/loongson,ls2x-i2c.yaml=
 b/Documentation/devicetree/bindings/i2c/loongson,ls2x-i2c.yaml
> index 67882ec6e06af..baa26684bbed0 100644
> --- a/Documentation/devicetree/bindings/i2c/loongson,ls2x-i2c.yaml
> +++ b/Documentation/devicetree/bindings/i2c/loongson,ls2x-i2c.yaml
> @@ -33,11 +33,14 @@ unevaluatedProperties: false
> =20
>  examples:
>    - |
> +    #include <dt-bindings/clock/loongson,ls2k-clk.h>
>      #include <dt-bindings/interrupt-controller/irq.h>
> =20
>      i2c0: i2c@1fe21000 {
>          compatible =3D "loongson,ls2k-i2c";
>          reg =3D <0x1fe21000 0x8>;
> +        clock-frequency =3D <100000>;
> +        clocks =3D <&clk LOONGSON2_APB_CLK>;

[Severity: Low]
Will this cause dt_binding_check to fail? The schema specifies
unevaluatedProperties: false, and while clock-frequency is pulled in
from the referenced i2c-controller.yaml schema, clocks is not explicitly
defined in the properties block.

Should the clocks property be added to the properties block to prevent
validation errors on the example?

>          interrupt-parent =3D <&extioiic>;
>          interrupts =3D <22 IRQ_TYPE_LEVEL_LOW>;
>          #address-cells =3D <1>;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260604015848.1864=
3-1-wanghongliang@loongson.cn?part=3D1

