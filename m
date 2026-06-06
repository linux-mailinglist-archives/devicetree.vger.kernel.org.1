Return-Path: <devicetree+bounces-307602-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mmMjEQ6wI2qjxAEAu9opvQ
	(envelope-from <devicetree+bounces-307602-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 07:28:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8992864C935
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 07:28:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Hfy6D2OX;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307602-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307602-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A01183021B32
	for <lists+devicetree@lfdr.de>; Sat,  6 Jun 2026 05:27:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DC062F3C22;
	Sat,  6 Jun 2026 05:27:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 000382264D6
	for <devicetree@vger.kernel.org>; Sat,  6 Jun 2026 05:27:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780723658; cv=none; b=G+fI4ZNQYafRQbLOcYjlH1pjfdwrr+Jo6+mdu6WI5+qg4mIh7CkbAITERrcaOTzAgGil07Mtyr7PoPRa5CxVhdwUFYEKz3EjJkLHCraiD4vniZh+XGeJmi4a9Xv1P8rANGF9a1dBWbU8h6FVDI/Sdz4zVPd7kogyupTC83GWEGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780723658; c=relaxed/simple;
	bh=NK3Q8OLs8apNPwMhhdC4yAd8nT/4QaarkrTNguWilYo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=pcEHOJGwws7ghNqOpUkRgtmKQCWhqadzqOivyFxNWSGiq9HtGW4B0nqSf343Eq/VlJxrXXk+triLSs3hEHLG906lkh1oJyT8osWC22l8fVO6H3uVCb15VpSBQDaDKDaPO0CZ/DTglzXk4k3HlSpdV5HYAfHflIgX4fAbPcpUbyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hfy6D2OX; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 438441F00893;
	Sat,  6 Jun 2026 05:27:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780723657;
	bh=++trZLkulDlKR+KwSBPZnEDNlugbKHhvuuthuJftWwY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Hfy6D2OXLbjprVMLKn/EPSnMg7aGgIrTwupAPISfitp4zNaBQqsaX5jSpt4j4Qdjm
	 BNvtL9gPZxZ25++rBg0O0MpZ+KM+fPSbHKsIAPhdIDrm7t3+wRunzn9zuAC2IAzuxH
	 aVZr/lnxWFucq8C9Kjv7v9ylaEXFtcmdHezno7JED9ghkuCP4kYugTZeu8BwJ4CQ+m
	 3Ewo4qITDyA6MtpBn/tCwVoyD9wN3uHo1c8qsDwqdk8SAbLv2wyZWih9tdfXYwljCY
	 0nQ3r0Txj1BwM713HSToOmvWRCNev4vG5YbM+5W6UlFPRK7BjlLSagV2ACkzQZQ9Zp
	 WuNZ5XOxrXDpQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 1/5] dt-bindings: iio: adc: add xlnx,versal-sysmon
 binding
Reply-To: sashiko-reviews@lists.linux.dev
To: "Salih Erim" <salih.erim@amd.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260606051707.535281-2-salih.erim@amd.com>
References: <20260606051707.535281-2-salih.erim@amd.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 06 Jun 2026 05:27:36 +0000
Message-Id: <20260606052737.438441F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-307602-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:salih.erim@amd.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,vger.kernel.org:from_smtp,lists.linux.dev:replyto,amd.com:email,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8992864C935

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Schema Validation Flaw: Ineffective `minimum` and `maximum` constra=
ints on `reg` arrays.
--

commit 68825d18816914117a9f77e82be41b25ec550f42
Author: Salih Erim <salih.erim@amd.com>

dt-bindings: iio: adc: add xlnx,versal-sysmon binding

Add devicetree binding for the AMD/Xilinx Versal System Monitor (SysMon).
The hardware supports up to 160 supply voltage measurement points and up to
64 temperature satellites. The channels are described as child nodes under
container nodes.

> diff --git a/Documentation/devicetree/bindings/iio/adc/xlnx,versal-sysmon=
.yaml b/Documentation/devicetree/bindings/iio/adc/xlnx,versal-sysmon.yaml
> new file mode 100644
> index 0000000000000..1ad58e3d61631
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/xlnx,versal-sysmon.yaml

[ ... ]

> +  voltage-channels:
> +    type: object
> +    description:
> +      Container for voltage measurement channels.

[ ... ]

> +    patternProperties:
> +      '^channel@([0-9a-f]|[1-9][0-9a-f])$':
> +        $ref: adc.yaml

[ ... ]

> +        properties:
> +          reg:
> +            minimum: 0
> +            maximum: 159

[Severity: Low]
Because the reg property is evaluated as an array in dt-schema, applying
minimum and maximum directly to it will be silently ignored by the JSON sch=
ema
validator.=20

Should these constraints be placed under an items array, or can they be
dropped entirely since the patternProperties regex already implicitly restr=
icts
the range?

> +            description:
> +              Voltage measurement register index assigned by the hardware
> +              design tool.
> +
> +        required:
> +          - reg

[ ... ]

> +  temperature-channels:
> +    type: object
> +    description:
> +      Container for temperature satellite measurement channels.

[ ... ]

> +    patternProperties:
> +      '^channel@([1-9a-f]|[1-3][0-9a-f]|40)$':
> +        $ref: adc.yaml

[ ... ]

> +        properties:
> +          reg:
> +            minimum: 1
> +            maximum: 64

[Severity: Low]
Similarly here, are these constraints ineffective because JSON schema ignor=
es
numeric constraints on non-numeric types like the reg array?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260606051707.5352=
81-1-salih.erim@amd.com?part=3D1

