Return-Path: <devicetree+bounces-326120-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DveVCwIdVmpDzQAAu9opvQ
	(envelope-from <devicetree+bounces-326120-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 13:26:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 724D8753E17
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 13:26:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=H9oOBYlO;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326120-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326120-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A488E3052E51
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 11:25:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED376382299;
	Tue, 14 Jul 2026 11:25:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC65F376A0C
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 11:25:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784028318; cv=none; b=ASsrXjCHAuoHrAOrftvhTOtTxcmvbDFFOSsoh+A5fTBSWdfXqW80yAK/A9kzgHDapWZ2/bE49yQ9iq42K/zbVQT7jCq9Er7mXWbwod2L0Tp5RkM1OrRNI4iiNwRwnES7XeCPYA0S63G1wjWEraUg0tXg/d0r+tpZN1bfay2oa48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784028318; c=relaxed/simple;
	bh=B2EkBM4BCAY+8OtM61gNg5KypiDJCeNnoFF5wjbVvxY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=nO8dVahMRJgFFivdDJEI2hy/hKlZF0mNSM5eShyQgVGAeIWom5osqXPd/FlLRAAhF1y+lSF6I9HocHZzSACXqbrUEIXsv/avyz0AyoylJtnXmzfb5OU+MC+b9QdyTG84CyBDMX4E2q64awOK/HTOfeDS4uNV++vYq958W3k4j0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H9oOBYlO; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 224631F000E9;
	Tue, 14 Jul 2026 11:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784028317;
	bh=XpxyQITV0oRAs5xAdKV35MbJwcSHIpqG+NWft8YOFek=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=H9oOBYlOyoUuJg2Ml3aPvS3PQnN1YevJdIZiReitMYXzx88Sud2q1fUV1JdEGj3xD
	 WrridOHSt96oFUCDiy99dHU+u8V1mKgS6P8XWoYIDsCsIcGvGcpTjqLkZr8Qi4oV0q
	 KuDtGJD7fSUVTQvq0ULdLHocrqR96gv2TqTqLCYqzLebyr1u7h+PlaVpvkngGNm2o+
	 qZxe7LS+r11wDJn0pAYogkLJYrZWw1LvIelkqGbpCcnMqCvTRgEhlMQuW0IAytAABJ
	 F0XrWc+DQt80MZwDEnUn6incvkJ6XtxftrvSKpADBCzJzKKPasq8Jru6UNiTFRidSv
	 qVNppRPlDgMFA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 02/17] iio: ABI: raw, scale and offset for
 frequency/phase channels
Reply-To: sashiko-reviews@lists.linux.dev
To: "Rodrigo Alencar" <rodrigo.alencar@analog.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260714-ad9910-iio-driver-v8-2-36939c3c07d2@analog.com>
References: <20260714-ad9910-iio-driver-v8-0-36939c3c07d2@analog.com>
 <20260714-ad9910-iio-driver-v8-2-36939c3c07d2@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 11:25:16 +0000
Message-Id: <20260714112517.224631F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-326120-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:rodrigo.alencar@analog.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid,analog.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 724D8753E17

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [Low] Missing ABI documentation for 'in_' scale and offset attributes for=
 frequency and phase channels.
- [Low] Incorrect KernelVersion inherited for new ABI entry `out_phaseY_raw=
`.
- [Low] Documenting ABI attributes for a non-existent IIO channel type (`fr=
equency`).
--

--- Patch [2]: [PATCH v8 02/17] iio: ABI: raw, scale and offset for frequen=
cy/phase channels ---
commit 757abc8c6b95afb7c57d216bb7e4723c3c34e298
Author: Rodrigo Alencar <rodrigo.alencar@analog.com>

iio: ABI: raw, scale and offset for frequency/phase channels

Consider scale and offset attributes for frequency and phase channels.
Frequency channels are going to be introduced later alongside a DDS
device driver which is going to leverage those new attributes.

> diff --git a/Documentation/ABI/testing/sysfs-bus-iio b/Documentation/ABI/=
testing/sysfs-bus-iio
> index 90047189c3ebe..7ef0db8dad40f 100644
> --- a/Documentation/ABI/testing/sysfs-bus-iio
> +++ b/Documentation/ABI/testing/sysfs-bus-iio
> @@ -441,6 +441,10 @@ What:		/sys/bus/iio/devices/iio:deviceX/in_voltageY_=
i_offset
>  What:		/sys/bus/iio/devices/iio:deviceX/in_voltageY_q_offset
>  What:		/sys/bus/iio/devices/iio:deviceX/in_currentY_offset
>  What:		/sys/bus/iio/devices/iio:deviceX/in_current_offset
> +What:		/sys/bus/iio/devices/iio:deviceX/out_phaseY_offset
> +What:		/sys/bus/iio/devices/iio:deviceX/out_phase_offset
> +What:		/sys/bus/iio/devices/iio:deviceX/out_frequencyY_offset
> +What:		/sys/bus/iio/devices/iio:deviceX/out_frequency_offset
>  What:		/sys/bus/iio/devices/iio:deviceX/in_tempY_offset
>  What:		/sys/bus/iio/devices/iio:deviceX/in_temp_offset
>  What:		/sys/bus/iio/devices/iio:deviceX/in_pressureY_offset
> @@ -474,6 +478,10 @@ What:		/sys/bus/iio/devices/iio:deviceX/in_voltage_s=
cale
>  What:		/sys/bus/iio/devices/iio:deviceX/in_voltage-voltage_scale
>  What:		/sys/bus/iio/devices/iio:deviceX/out_voltageY_scale
>  What:		/sys/bus/iio/devices/iio:deviceX/out_altvoltageY_scale
> +What:		/sys/bus/iio/devices/iio:deviceX/out_phaseY_scale
> +What:		/sys/bus/iio/devices/iio:deviceX/out_phase_scale
> +What:		/sys/bus/iio/devices/iio:deviceX/out_frequencyY_scale
> +What:		/sys/bus/iio/devices/iio:deviceX/out_frequency_scale

[Severity: Low]
Should the 'in_' variants for these scale and offset attributes be
documented here as well?

The description added later in this patch for in_frequencyY_raw mentions
that scale and offset are applied, but only the 'out_' variants are
being documented here.

>  What:		/sys/bus/iio/devices/iio:deviceX/in_currentY_scale
>  What:		/sys/bus/iio/devices/iio:deviceX/in_currentY_supply_scale

[ ... ]

> @@ -2147,7 +2155,16 @@ Description:
>  		specific attributes. This is useful for userspace to be able to
>  		better identify an individual channel.
> =20
> +What:		/sys/bus/iio/devices/iio:deviceX/in_frequencyY_raw
> +What:		/sys/bus/iio/devices/iio:deviceX/out_frequencyY_raw

[Severity: Low]
The commit message notes that frequency channels will be introduced
later. Is it standard practice to document ABI attributes for a channel
type (like IIO_FREQUENCY) before the channel type exists in the IIO
core?

> +KernelVersion:	7.3
> +Contact:	linux-iio@vger.kernel.org
> +Description:
> +		Raw (unscaled) frequency reading from channel Y.
> +		Units after application of scale and offset are Hz.
> +
>  What:		/sys/bus/iio/devices/iio:deviceX/in_phaseY_raw
> +What:		/sys/bus/iio/devices/iio:deviceX/out_phaseY_raw
>  KernelVersion:	4.18

[Severity: Low]
Does grouping out_phaseY_raw here incorrectly imply that it was
introduced in KernelVersion 4.18, rather than the current release?

>  Contact:	linux-iio@vger.kernel.org
>  Description:

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714-ad9910-iio=
-driver-v8-0-36939c3c07d2@analog.com?part=3D2

