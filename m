Return-Path: <devicetree+bounces-309277-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZgK7K6BeKGpiCwMAu9opvQ
	(envelope-from <devicetree+bounces-309277-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 20:42:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C89663634
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 20:42:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Nyukhxck;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309277-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-309277-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 80BCB3013BA6
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 18:42:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94799314A83;
	Tue,  9 Jun 2026 18:42:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 895603EB0FD
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 18:42:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781030557; cv=none; b=PCZh2Mw1JyuSsergWfzFftDoA5c3JGGo2ZHNbIbmV3+mZghallglZYRdzoif+9/vcyDG7EqGUEAKHr2wO7GtzRayRDHsJNgPmPkJX6ai27Hm/U7om3lJb/zURUj285DcItQhxB2Q/bYBGPxJ7fR6LY2WRA/3ba7cK8s8JoC43U8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781030557; c=relaxed/simple;
	bh=qCIowo6q21wIkLU1RqMFJOEAeXrA3k+bRT2fKTt/gvs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=gboPXyAUU6YQO36DPlk5kGTAWJplu2hqtX4KKGhFR2yFlylZrDiTsESq9pQeqnYeQTNgif9pNWkGNieXo4Cf9ImvHUhYYjj/7prBJxpLHrTIfHHWgP1SMw+swmjxiGqtUWUFgDZhw4+BLoDVhRuPxl9UDtOvKqrcnhQmechw3VU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nyukhxck; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 335711F00893;
	Tue,  9 Jun 2026 18:42:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781030556;
	bh=/+tWBtn5m6sUpr15bCJiRz2e5aX6lI86mYHVqAAw2NI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=NyukhxckzBY2YK/5lndQEBOEAn711GWDA8YAcjTz0ZOQMxt7nwgLK8guWFYcFJu5j
	 4+T+14/0NJlwPGO1nmpYiqVXXPeoAb1fG8QkaaN+ycFqpKDB1390Zw08WJNl4119rc
	 SXkoJhLnE6t3UBboWNdiWz7ilPjlXjw13ZcO9e4ljFsNAmirzNg9/o1jz9cZNaTWGB
	 Tmc5LcUXHZuU/380UNGar4mEKh7j2RWkGu/E845uxXgInsSYTSbDkZHmpkSd9CS/IQ
	 D78Gf1aN7l+Hds8H4+PGcTZHUld4N69GVw16S+unQlGyd0LADBVwAbgoNX95uVURC2
	 PUGPf1QVGcXrQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2] dt-bindings: leds: bcm6358: Convert to DT schema
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ninad Naik" <ninadnaik07@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260609181731.1379846-1-ninadnaik07@gmail.com>
References: <20260609181731.1379846-1-ninadnaik07@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 18:42:35 +0000
Message-Id: <20260609184236.335711F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309277-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:ninadnaik07@gmail.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,sashiko.dev:url,vger.kernel.org:from_smtp,lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 48C89663634

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The LED sub-node uses `additionalProperties: false` alongside `$=
ref: common.yaml#`, which silently rejects standard LED properties.
- [Low] Unused `#include <dt-bindings/leds/common.h>` in the device tree ex=
ample.
--

commit 7f21f3b199b43205368512a4bc4314dd320036e1
Author: Ninad Naik <ninadnaik07@gmail.com>

dt-bindings: leds: bcm6358: Convert to DT schema

This commit converts the text bindings for the Broadcom BCM6358 LED
controller to DT schema.

> diff --git a/Documentation/devicetree/bindings/leds/brcm,bcm6358-leds.yam=
l b/Documentation/devicetree/bindings/leds/brcm,bcm6358-leds.yaml
> new file mode 100644
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/leds/brcm,bcm6358-leds.yaml
[ ... ]
> +patternProperties:
> +  "^led@(0|1?[0-9a-f])$":
> +    type: object
> +    $ref: common.yaml#
> +    description: Each LED is represented as a sub-node of
> +      this device.
> +
> +    properties:
> +      reg:
> +        description: LED pin number (0 to 31).
> +        maxItems: 1
> +
> +      label: true
> +
> +      default-state: true
> +
> +      linux,default-trigger: true
> +
> +      active-low: true
> +
> +    required:
> +      - reg
> +
> +    additionalProperties: false

[Severity: Medium]
Does this restrict the child node to only locally declared properties,
rejecting the standard LED properties inherited from common.yaml#?

In DT schemas, additionalProperties does not consider properties evaluated
via a $ref. Could this cause validation errors if standard LED properties
are used in the device tree? Should unevaluatedProperties: false be used
here instead?

> +
> +required:
> +  - compatible
> +  - reg
> +  - "#address-cells"
> +  - "#size-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/leds/common.h>

[Severity: Low]
This isn't a bug, but the header is included here without any of its macros
being referenced in the example nodes.

> +    led-controller@fffe00d0 {
> +        compatible =3D "brcm,bcm6358-leds";
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +        reg =3D <0xfffe00d0 0x8>;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609181731.1379=
846-1-ninadnaik07@gmail.com?part=3D1

