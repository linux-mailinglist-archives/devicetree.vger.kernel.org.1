Return-Path: <devicetree+bounces-315278-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NZS7ABPvO2p1fggAu9opvQ
	(envelope-from <devicetree+bounces-315278-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 16:52:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 23BFF6BF50C
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 16:52:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=TRONyHXo;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315278-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-315278-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CF81730013A4
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 14:50:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7ABFD3BBFAC;
	Wed, 24 Jun 2026 14:50:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F75A3909AC
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 14:50:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782312645; cv=none; b=VdfQx7Fm8Jdhx26Ufl/MQexiPZb05mLxcYHnRmIhRbHh677+jg8wSyAR7a/SmNpBKCAWvhkeklpkBhLU8Vp/Qrd89+AXGdUZdq1OcGRyAnY+XWk02Y/dfKzvSzocReZ0mRL9NZZJVFkF29aHrio2PPFVQ6HrydrOz+IqW4qATZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782312645; c=relaxed/simple;
	bh=OGAaqMCX1dxQUNxc0ganSaxoivP6PYE7zwqBjTL4oNo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=i2fbz0jtjEa38A8diD1mj63Bpz29dtNQ7kJAMxnzBTXUvTi4MA2DP7fztzENcdVAYIcXZkgT72xSyChWeGeh5jlLXm4T6Sni5r4QSabhbVw0n9Lwn47obhl8DDqDsPEdyVzopvjd7au/RWV5TmxmWdcvje2ibDRMNQewZV2Gv1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TRONyHXo; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D91951F000E9;
	Wed, 24 Jun 2026 14:50:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782312644;
	bh=2ms2J2Dm+amULF3ZU20t4/y3caOYticGB2tbM/xZI0c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=TRONyHXosuaCXEpJZSumuJAxImY408t3aLVTlJdrzXl3o1qEP4BOMyo1HOcbYtOwW
	 gCoOFhNTMz/ssx/0hEUUkj3a3/3jEcbyIxSrtxJjeq319dUCF1gNm/R/W1HR1rbH2g
	 C5Qe9dc3md3zw+6DAljUmGviEBS+0Fh+hkKQxyNvQhQ4V59b7W5zoHTiWVJba2Ni6d
	 mz2N6pWqskiQmUyNUeeXj2drWslbI+qaxMOQow0a5p1JYno6k0lKai04eScbzGTaUt
	 Vj2Azvmua8PMYsw/SejWVg2eSMWGq2VxS9m8chPoyaGKXvtAUPF5ArNb6+/O1j6pef
	 qkmE7LW4wHhwA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 5/5] iio: adc: versal-sysmon: add oversampling
 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Salih Erim" <salih.erim@amd.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260624143722.4047649-6-salih.erim@amd.com>
References: <20260624143722.4047649-1-salih.erim@amd.com>
 <20260624143722.4047649-6-salih.erim@amd.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 24 Jun 2026 14:50:43 +0000
Message-Id: <20260624145043.D91951F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-315278-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:salih.erim@amd.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,smtp.kernel.org:mid,amd.com:email,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 23BFF6BF50C

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Software cache for oversampling ratios is initialized to 1 witho=
ut synchronizing with actual hardware state.
--

commit 943b70956fe7374b433e643428ed243156f1fcae
Author: Salih Erim <salih.erim@amd.com>

iio: adc: versal-sysmon: add oversampling support

This commit adds support for reading and writing the oversampling ratio
through the IIO oversampling_ratio attribute. It exposes shared oversampling
configuration at the channel type level for temperature and supply channels.

> diff --git a/drivers/iio/adc/versal-sysmon-core.c b/drivers/iio/adc/versa=
l-sysmon-core.c
> index 8f2c502d9cb6d..1b55d343982ef 100644
> --- a/drivers/iio/adc/versal-sysmon-core.c
> +++ b/drivers/iio/adc/versal-sysmon-core.c

[ ... ]

> @@ -846,6 +999,8 @@ int devm_versal_sysmon_core_probe(struct device *dev,=
 struct regmap *regmap)
> =20
>  	sysmon =3D iio_priv(indio_dev);
>  	sysmon->regmap =3D regmap;
> +	sysmon->temp_oversampling =3D 1;
> +	sysmon->supply_oversampling =3D 1;

[Severity: Medium]
Can the software cache become out of sync with the actual hardware state he=
re?

If the platform firmware previously configured the SysMon IP to perform
oversampling, hardcoding these values to 1 without reading the current
hardware configuration might result in the IIO sysfs oversampling_ratio
attribute reporting an incorrect value to userspace.

Should the driver read the hardware configuration (via SYSMON_CONFIG) to
initialize these fields, or explicitly reset the hardware ratio to 1 during
probe?

> =20
>  	ret =3D devm_mutex_init(dev, &sysmon->lock);
>  	if (ret)

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260624143722.4047=
649-1-salih.erim@amd.com?part=3D5

