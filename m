Return-Path: <devicetree+bounces-326740-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Exi+JB1CV2r9IAEAu9opvQ
	(envelope-from <devicetree+bounces-326740-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 10:17:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id F081C75BCB1
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 10:17:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=dMBO40nt;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326740-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-326740-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 93F25302F895
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 08:14:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A89F83C7DE1;
	Wed, 15 Jul 2026 08:14:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 840BF3C5DB8
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 08:14:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784103290; cv=none; b=sYjEkpQYgPNvQdxHjZPlx1eCElk+u0WSNJwC5ygOP0acYOMIXGXYW/Ckl5MiNNkaNJKxibCL4Pg5oSwJJxEPzjxe1uau/hvj0kxID43y0lt+29hm6v1EExzAv6s1nDql1btYv7RlX4q12Y6JBB4PLIwmolyomksYY9IREHDHBvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784103290; c=relaxed/simple;
	bh=qKzFkwQ3PIDfEMXzrdH6QtK+Bl9IE/4KPa88MWYN5Do=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=GoSt1H1cl8Vo4FTbhnQTga62690o+TzYurrlVRcntIdhLBcJnNtL11f/UQLBb8WmNNTKFBZRKHVwsO8e0u97GGRnywFjhlNW9O5Q6b0eD4cQZVyg0PbfrWvTgkC1h+pqLQaF0Abto5ITeuTwhnlDnc1WgCQ5fahuRUon+UOkgbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dMBO40nt; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE21D1F000E9;
	Wed, 15 Jul 2026 08:14:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784103289;
	bh=E3waBRTUI1atkwRN8YDNcT1vZNfGSiUzLdy7w7omAJE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=dMBO40ntkXe/SbsQl8AczFlEM6VKcrvPpwz7ayZms0Omv34UffUvJLrQDBcGmHoQB
	 Onk5bkZqlfnY+q0gfki9dEkh88t2W+bIZtpgfrKqyVEUwB1CzJLTYMc8TaRZ0LK8iT
	 ElVbiQkUzDDTPCD3Yxld8ToifWFXujzx1s4b9ZYcsnGwhMjSvbIZMN2+Z/LPJCkVq7
	 0umNYF7aHgYuMFBgtqYnba750ovuH6a8ziS1+z/ZVeaYaoSjWPHkEqEewbusyMQMNo
	 dLj8LszxPGKwZ15A+d3QL15k6KteD+PgZh7QdyTFLreuiKnNQAW0oWaEkmwAktiOy3
	 UfNnC1mnA/xfw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: iio: accel: mma8452: Add
 drive-open-drain
Reply-To: sashiko-reviews@lists.linux.dev
To: "Esben Haabendal" <esben@geanix.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260715-mma8452-open-drain-v1-1-b1dd2a440c60@geanix.com>
References: <20260715-mma8452-open-drain-v1-0-b1dd2a440c60@geanix.com>
 <20260715-mma8452-open-drain-v1-1-b1dd2a440c60@geanix.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 15 Jul 2026 08:14:48 +0000
Message-Id: <20260715081448.DE21D1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-326740-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:esben@geanix.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,geanix.com:email,sashiko.dev:url,smtp.kernel.org:mid,vger.kernel.org:from_smtp,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F081C75BCB1

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The commit introduces the `drive-open-drain` device tree property =
to configure the sensor's interrupt pin as open drain, but fails to provide=
 the necessary C driver implementation in `mma8452.c` to parse the property=
 and write to the chip's control register.
--

--- Patch [1]: [PATCH 1/2] dt-bindings: iio: accel: mma8452: Add drive-open=
-drain ---
commit 3050ccf4ccce6dad107c37d81a589ca6d501304b
Author: Esben Haabendal <esben@geanix.com>
Subject: dt-bindings: iio: accel: mma8452: Add drive-open-drain

This commit adds the drive-open-drain property to the mma8452 device tree
binding. This allows configuring the sensor's interrupt pin as open drain
rather than the default push-pull mode.

> diff --git a/Documentation/devicetree/bindings/iio/accel/fsl,mma8452.yaml=
 b/Documentation/devicetree/bindings/iio/accel/fsl,mma8452.yaml
> --- a/Documentation/devicetree/bindings/iio/accel/fsl,mma8452.yaml
> +++ b/Documentation/devicetree/bindings/iio/accel/fsl,mma8452.yaml
> @@ -39,6 +39,12 @@ properties:
>      minItems: 1
>      maxItems: 2
> =20
> +  drive-open-drain:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description: the interrupt line will be configured as open drain, wh=
ich is
> +      useful if several sensors share the same interrupt line. (This bin=
ding is
> +      taken from pinctrl.)

[Severity: High]
Is there a missing corresponding driver update to support this new property?

Looking at mma8452_probe() in drivers/iio/accel/mma8452.c, the driver does =
not
appear to query this property or program the hardware control register to a=
ctually
enable the open-drain mode:

drivers/iio/accel/mma8452.c:mma8452_probe() {
    ...
    /* Missing device_property_read_bool() for drive-open-drain */
    ...
}

If device tree authors use this property on a shared interrupt line expecti=
ng
it to be honored, but the driver silently leaves the sensor in the default
push-pull mode, could this cause a short circuit when one device drives the
shared line high while another drives it low?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260715-mma8452-op=
en-drain-v1-0-b1dd2a440c60@geanix.com?part=3D1

