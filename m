Return-Path: <devicetree+bounces-315629-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CokGO4gJPWrCwAgAu9opvQ
	(envelope-from <devicetree+bounces-315629-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 12:57:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4002A6C4E2B
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 12:57:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=W8VRvhCA;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315629-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-315629-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AA5C13021777
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 10:57:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3F54396585;
	Thu, 25 Jun 2026 10:57:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF5E33955D9
	for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 10:57:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782385030; cv=none; b=A4FNqdGE5V5OIF2iVeinntvarpraHAF7B1sFY/VbkNyayzXUBrcL7MZ+eLLpPAsxAQe9+EB7ZysGjwYjpi0WEaZnDfsPgmZHKfWV2CQ5KqwHBCwQY9msI45vSL2dMtGaaJ4RbyyQojMImqKm3SWpnGs8V2boKfa178C5ufSqqN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782385030; c=relaxed/simple;
	bh=GmPXOjMaYm/ihE6ccGODfpY6T3akMcy2BC8+odRq9Jw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=XqgT1AIrZ2+kDBYXNqly3P33Pi+x19CelFQekYcZLYr5oa1WCN5btFy/0ooiWVFRLcfBG5IhnDL8IJS+3dxQRYdTsQtaFgZ1vKaK+xz6Otqltj9Ncy320iRZiY04cjp/Q3ZoXQPikWzfUn3UbICo5wlw9zoF8ntXE1UaN6jY6OM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W8VRvhCA; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2C181F00A3D;
	Thu, 25 Jun 2026 10:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782385029;
	bh=fV2ib659qezFrvaaL0rykM25EsJezf5x9GgDxkQTRgo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=W8VRvhCAHM0niNlwGTsH+xNGALV37Dt/rZChItVrsROzB3LQ8yL/P1juXWKdcQ5TS
	 G9Ha+rTnumKwgIc/blXYA+q1wqB8G1PGLXALd4C8aS8ZRCzA1lZBMrRMAljz9JSyhK
	 SmZMc3mKiKXCSTLoyOoPH8vwHsW0kv5Nung0hSO4jC56zf1ABb/zMoS+55U0n/QJf+
	 pk4BRrzkR/JkZs6fWPoUqGeLPMCxaDLWmp264OJJy4nJ8MtRcHot536NB7Hx04mRgv
	 9gwfDKw1Z1ZSFXA8BFI0mQL3Rj+eCQjcv2ThjwXIwX4RgvzcOBojvcoq/vrzQa9V90
	 9M1v9pTEm9HMQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3] dt-bindings: pwm: st,pwm: convert to DT schema
Reply-To: sashiko-reviews@lists.linux.dev
To: "Charan Pedumuru" <charan.pedumuru@gmail.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260625-st-pwm-v3-1-ace9bff88529@gmail.com>
References: <20260625-st-pwm-v3-1-ace9bff88529@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 25 Jun 2026 10:57:08 +0000
Message-Id: <20260625105708.F2C181F00A3D@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315629-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:charan.pedumuru@gmail.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:charanpedumuru@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
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
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4002A6C4E2B

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The example device tree node uses an outdated compatible string ('s=
t,pwm') that violates the schema's own constraints ('st,sti-pwm'), causing =
dt_binding_check to fail.
--

commit d33b98ff54df0af652aa50944ad631d378f78938
Author: Charan Pedumuru <charan.pedumuru@gmail.com>

dt-bindings: pwm: st,pwm: convert to DT schema

This commit converts the STMicroelectronics STiH41x PWM/Capture controller
binding to DT schema. It changes the compatible string to "st,sti-pwm"
to match the hardware variant naming convention and removes pinctrl-names
from the required properties list.

> diff --git a/Documentation/devicetree/bindings/pwm/st,sti-pwm.yaml b/Docu=
mentation/devicetree/bindings/pwm/st,sti-pwm.yaml
> new file mode 100644
> index 0000000000000..c69073e79ce97
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pwm/st,sti-pwm.yaml

[ ... ]

> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    pwm@fe510000 {
> +        compatible =3D "st,pwm";

[Severity: Low]
Does this compatible string match the new schema?

The schema constraints above define the compatible property as "st,sti-pwm",
but the example node here still uses "st,pwm". Will this regression cause
the dt_binding_check validation to fail?

> +        reg =3D <0xfe510000 0x68>;
> +        interrupts =3D <GIC_SPI 128 IRQ_TYPE_LEVEL_HIGH>;
> +        #pwm-cells =3D <2>;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260625-st-pwm-v3-=
1-ace9bff88529@gmail.com?part=3D1

