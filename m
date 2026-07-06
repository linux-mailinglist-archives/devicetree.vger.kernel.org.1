Return-Path: <devicetree+bounces-320923-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 12v/NitnS2peQwEAu9opvQ
	(envelope-from <devicetree+bounces-320923-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 10:28:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 52AA770E182
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 10:28:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=OZ7npwXh;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320923-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320923-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4BA0930309F2
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 08:27:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E039E3AFAE0;
	Mon,  6 Jul 2026 08:26:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72E6B3F86FA
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 08:26:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783326407; cv=none; b=GRk82CBuWTkbEkvzigujzfd8kIdZ63sPP0Iqgss8f9GsSzIXj3okd24mg4aVOjgCX7mDGIHBvUK8hIeH0ngoCUoERFSKWR+KPTLFNvdpV0yRW98UX6H2whT5bp1a0pNMBSQenqsZNPbW2uxR3fAAXycuYwy4surD+wZ7hc6edes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783326407; c=relaxed/simple;
	bh=rD5h8d/iAF+ur2WswRzjAf+UkBoJdLYEHTmtem6U2Uo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=W9Gp/ZxiI+L4Txe5RRV+QbANcT/+X9K6dO9w7HsAKOJ1R5bU1lBvkM6XA8l3+0HnZQBlpcf3pnd3r5ITcorMk2E8aeB/AYQ4VCB0O6LK8ogE9F0fyGpSXHQyljhwx99RueLBYN9K7XysSKx81PGHhxtWItXRkBlZNrbv+MDYdCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZ7npwXh; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3308D1F000E9;
	Mon,  6 Jul 2026 08:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783326399;
	bh=nGsDWrhXHz+UtY283nxi7pzKUPN00CMDIM1ZHP9n0i8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=OZ7npwXhuYt9f/rqVFZPqT/P0KyeL5bTGqnfvZJowBLQLVH+fSu4BZrjsL3pwEjhw
	 qxKXtEvzWxOIvKI3a5LYkCFko0ioSG+LuG/cfoY471HV/GB+1KUd4zewaxg33RDGam
	 vDAcBDlZTNuFmFoNIPiVpTZ8s8IrQb0dZSS7xrDugEX6GqCuNtCOOrvAQCYrrohI8t
	 +UJuU0M9vUwy6caduSDbpDG45kHPPaWJ1pxTpWQj5Hwj4mM850L3R/+KQ2H0MeYU/V
	 iPVeqztU3cm8kcHSlt0JYbXxbES9swk5nVtdTo9kCfoxJFkm1B66TdSvIQ0ei68Zh3
	 JMDhm/EUvLfXw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/2] thermal: qcom: Add support for Qualcomm MBG
 thermal monitoring
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sachin Gupta" <sachin.gupta@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260706-spmi-mbg-driver-v2-2-f883ff1d8719@oss.qualcomm.com>
References: <20260706-spmi-mbg-driver-v2-0-f883ff1d8719@oss.qualcomm.com>
 <20260706-spmi-mbg-driver-v2-2-f883ff1d8719@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 06 Jul 2026 08:26:38 +0000
Message-Id: <20260706082639.3308D1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-320923-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:sachin.gupta@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid,vger.kernel.org:from_smtp,quicinc.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 52AA770E182

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `mbg_tm_set_trip_temp` callback incorrectly treats `INT_MAX`=
 as an out-of-bounds error, printing a spurious error message and returning=
 `-ERANGE` when the thermal framework attempts to disable the upper trip po=
int.
--

commit 11624a52601424e2e0de79b12ee193bdaf63ce36
Author: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>

thermal: qcom: Add support for Qualcomm MBG thermal monitoring

This commit adds a driver for the Qualcomm MBG thermal monitoring device.
It registers a thermal zone device and sets up interrupt handling for
temperature threshold violations.

> diff --git a/drivers/thermal/qcom/qcom-spmi-mbg-tm.c b/drivers/thermal/qc=
om/qcom-spmi-mbg-tm.c
> new file mode 100644
> index 0000000000000..fa2f10002253f
> --- /dev/null
> +++ b/drivers/thermal/qcom/qcom-spmi-mbg-tm.c

[ ... ]

> +static int mbg_tm_set_trip_temp(struct thermal_zone_device *tz, int low_=
temp,
> +				int temp)
> +{
> +	struct mbg_tm_chip *chip =3D thermal_zone_device_priv(tz);
> +	int ret =3D 0;
> +
> +	guard(mutex)(&chip->lock);
> +
> +	/* The HW has a limitation that the trip set must be above 25C */
> +	if (temp > MBG_MIN_TRIP_TEMP && temp < MBG_MAX_SUPPORTED_TEMP) {
> +		ret =3D regmap_write(chip->map, chip->base + MON2_LVL1_UP_THRESH,
> +				   temp_to_vtemp_mv(temp));
> +		if (ret < 0)
> +			return ret;
> +
> +		ret =3D regmap_set_bits(chip->map, chip->base + MBG_TEMP_MON2_MISC_CFG,
> +				      MON2_UP_THRESH_EN);
> +		if (ret < 0)
> +			return ret;
> +	} else {
> +		dev_err(chip->dev, "Set trip b/w 25C and 160C\n");
> +		ret =3D regmap_clear_bits(chip->map, chip->base + MBG_TEMP_MON2_MISC_C=
FG,
> +					MON2_UP_THRESH_EN);
> +		return -ERANGE;
> +	}

[Severity: Medium]
Will this cause spurious errors when the thermal core attempts to disable
the trip point?=20

When the thermal subsystem determines that no upper trip point is needed,
it typically passes INT_MAX for the upper limit to disable the trip point.
While this code correctly clears MON2_UP_THRESH_EN to disable the trip,=20
it also logs a "Set trip b/w 25C and 160C" error and returns -ERANGE.
The thermal core will then likely log its own error about failing to set=20
the trips.

Should we handle INT_MAX explicitly as a request to disable the threshold,
rather than treating it as an out-of-bounds error?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260706-spmi-mbg-d=
river-v2-0-f883ff1d8719@oss.qualcomm.com?part=3D2

