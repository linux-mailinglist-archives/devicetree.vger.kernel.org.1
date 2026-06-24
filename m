Return-Path: <devicetree+bounces-315085-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OR3/BoeJO2qnZQgAu9opvQ
	(envelope-from <devicetree+bounces-315085-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 09:38:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 613E16BC3C0
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 09:38:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=CUsVyjkN;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315085-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315085-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4255E3001B6D
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 07:36:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66A213812FB;
	Wed, 24 Jun 2026 07:36:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC4112E542C
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 07:36:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782286578; cv=none; b=fvpJEDAwrDnpNwLoeU4AChMkYXgJTl6t+o0KLSfDtu2A+rUsutBlW/njpDIWLudNNPCRmrJNAR51QhDscYuG52oVlpwgiMmVntCCFSscpI6J8tFXY+/B2fz5D0siwaKdhKJ9WEIjCSsBIaTZy97jw+97Qdh3vtKQ2FyEUT6mvpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782286578; c=relaxed/simple;
	bh=vafPXV1si9pBOoL2qUdPW+SwEuwM+AW9yDbEB92YKcc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=uU7rZ5KcEsEP6kBUtbJ4MSlIRIUpDtpEIC6jruIWxEW2Bz9DSZg2k2um03blUaxgNxMfvK79g757sQXMcQGT4ljdolPlysO7HCu6V7fh3v92XFD0VFbFTTFKLlEejkgNB7X2kPPoQrb1e7DDCyaE6vHnBIdbvMIRZdWZkc3w39w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUsVyjkN; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 292111F000E9;
	Wed, 24 Jun 2026 07:36:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782286577;
	bh=reTvX/fzJ8RzIlI37/Q2XlcCQQJa1sabqHByhmxzImU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CUsVyjkN0aiwW179ee/2nJsG3/liTXdZTbgQMZQXjDnBVU5UaWXDxraJCm7zGL9/y
	 cSyU8GE08OSFCui0QhYuGaZUas2MjydFYyayoalCPqnR0Q5hXezkEKlmHCGBTm057F
	 yWuTBTeVczMb0TtOAaCecRbmO+5NcZ5bNZC4eMTQxG9F5say2C1//yp32a6KZXtRvK
	 dJ5Bnkc/g1O3FZFROhjuCo5V8EfhXYKM7Hln0TUpY43zMuUlzGGSEz67d3iFj3O43y
	 0hBNrXDvLVAPGAeQ28Qs5/6ozW03dr2sCV7BLb/Li1AYCHlb6fKLsGt8Wh6bD7xCgX
	 crsT8AUuLX4LA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 7/9] media: chips-media: wave6: Add Wave6 thermal
 cooling device
Reply-To: sashiko-reviews@lists.linux.dev
To: "Nas Chung" <nas.chung@chipsnmedia.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260624072043.238-8-nas.chung@chipsnmedia.com>
References: <20260624072043.238-1-nas.chung@chipsnmedia.com>
 <20260624072043.238-8-nas.chung@chipsnmedia.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 24 Jun 2026 07:36:16 +0000
Message-Id: <20260624073617.292111F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-315085-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:nas.chung@chipsnmedia.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,chipsnmedia.com:email,vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 613E16BC3C0

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] Ignored error return in set_cur_state callback causes thermal fr=
amework desynchronization.
- [Medium] Initial thermal state changes during registration are silently d=
ropped due to a check for `!thermal->cooling`.
--

commit f2e1f0ee6d5cf6a10bb958433178a8d9e3143413
Author: Nas Chung <nas.chung@chipsnmedia.com>

media: chips-media: wave6: Add Wave6 thermal cooling device

Add a thermal cooling device for the Wave6 VPU. The device operates within
the Linux thermal framework, adjusting the VPU performance state based on
thermal conditions.

> diff --git a/drivers/media/platform/chips-media/wave6/wave6-vpu-thermal.c=
 b/drivers/media/platform/chips-media/wave6/wave6-vpu-thermal.c
> new file mode 100644
> index 0000000000000..91cd826e81195
> --- /dev/null
> +++ b/drivers/media/platform/chips-media/wave6/wave6-vpu-thermal.c

[ ... ]

> +static int wave6_vpu_thermal_cooling_update(struct vpu_thermal_cooling *=
thermal,
> +					    int state)
> +{
> +	unsigned long new_clock_rate;
> +	int ret;
> +
> +	if (state > thermal->thermal_max || !thermal->cooling)
> +		return 0;

[Severity: Medium]
Will this silently drop initial thermal state changes during registration?

When devm_thermal_of_cooling_device_register() is called, it can synchronou=
sly
trigger a state update before the registration function returns and assigns=
 the
pointer to thermal->cooling. Because thermal->cooling is not yet assigned,
this check evaluates to true and skips the hardware update.

[ ... ]

> +static int wave6_vpu_cooling_set_cur_state(struct thermal_cooling_device=
 *cdev,
> +					   unsigned long state)
> +{
> +	struct vpu_thermal_cooling *thermal =3D cdev->devdata;
> +
> +	thermal->thermal_event =3D state;
> +	wave6_vpu_thermal_cooling_update(thermal, state);
> +
> +	return 0;
> +}

[Severity: Medium]
Should the return value of wave6_vpu_thermal_cooling_update() be checked be=
fore
returning success to the thermal framework?

If wave6_vpu_thermal_cooling_update() fails, this function still unconditio=
nally
returns 0 and updates the local thermal->thermal_event state. This could le=
ave
the thermal framework thinking the hardware state has changed when the hard=
ware
is actually stuck in its previous state.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260624072043.238-=
1-nas.chung@chipsnmedia.com?part=3D7

