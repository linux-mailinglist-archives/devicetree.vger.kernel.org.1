Return-Path: <devicetree+bounces-307062-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Lr0yMYDtIWqPQgEAu9opvQ
	(envelope-from <devicetree+bounces-307062-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 23:26:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 250F164398F
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 23:26:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="eKFFrp9/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307062-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307062-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B511D30597BB
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 21:17:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40B273FA5D2;
	Thu,  4 Jun 2026 21:17:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8EC3603F7
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 21:17:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780607865; cv=none; b=GQuYF0SqXiXTBUXltutBcb8O/2GDQAzmlMTxEsXLmUa+UCxdaVWR2ez8daCO8iTi5E2aiKPBLizlTVcaHGFEhHavPepg7baocKKtVMPCsY46/2GDihYWUcBdrTcTuA6Sh/kDSpD0DuxCuESAvgykFmxheqXpp2o5PSl86cM39kY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780607865; c=relaxed/simple;
	bh=WmAbgDluotCCLHVgIaWwE+lEXDA3nNyh/FQR44VbgEg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=QJCpeEHZMvEkTpxmUvBFnNisrH/Rdp0mh+Tg0YCD/1qcqVguVTXQZvjYl01BWSCdGSR1tySRzYc0SFL924WKb8u1nH4YxJp9h5Vy0SnVY/8x7kSU8Rgr/chx3VmVUeJ/1UVoBCSXyG9BEIE3h8y5g/A45QSxMntnbq8w4/yoHp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eKFFrp9/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 896F61F00893;
	Thu,  4 Jun 2026 21:17:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780607863;
	bh=xJkDbBjbgV8bjvdmfjRf9sYWHhYas3V980Ff2V469TY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=eKFFrp9/sFpHGfEtaj58+raltdpR1+KWHD00bTgs6Uxltp7b54IVx0vWXkDLaUPNF
	 Hu3yu9fF1juBE1zeifhAUct/8dlY3Z+cp28DNX3dLdLM3dFo1B53F4nBb7UxaDmeGI
	 6wUEH0lLGx9vwDOS8wKiUJX6ot31/xDSXuszrcrI3tosgNEH02sxaaHcbF9CQGiMri
	 DuLbB1KZ1OBlWTXqASi1NPYYMWdyJMjmNA79LUCRUfSDrVelYXAuClKUZTKvSBUFbh
	 9Hi+L5383rPaUp3UUnkmJAMi59zK28/4YC1aDROg92ulBxxHbfBSEwzbxiGq4b9QOM
	 iel3PndHSwE2w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V10 5/9] iio: imu: inv_icm42607: Add PM support for
 icm42607
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chris Morgan" <macroalpha82@gmail.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260604201832.60656-6-macroalpha82@gmail.com>
References: <20260604201832.60656-6-macroalpha82@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 Jun 2026 21:17:43 +0000
Message-Id: <20260604211743.896F61F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-307062-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:macroalpha82@gmail.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_TO(0.00)[gmail.com];
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
X-Rspamd-Queue-Id: 250F164398F

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Critical] Missing `dev_set_drvdata()` causes a guaranteed kernel panic o=
n PM transitions.
- [Medium] Unnecessary start-up delays applied when disabling sensors durin=
g power management transitions.
--

commit 095604e6b5564d3e2f59fa7bf159761bbf791c56
Author: Chris Morgan <macromorgan@hotmail.com>

iio: imu: inv_icm42607: Add PM support for icm42607
   =20
Add power management support for the ICM42607 device driver.

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/i=
io/imu/inv_icm42607/inv_icm42607_core.c
> index 4448d63e95fd7..39620da92bd43 100644
> --- a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
[ ... ]
> @@ -72,6 +73,51 @@ const struct inv_icm42607_hw inv_icm42607p_hw_data =3D=
 {
>  };
>  EXPORT_SYMBOL_NS_GPL(inv_icm42607p_hw_data, "IIO_ICM42607");
> =20
> +static int inv_icm42607_set_pwr_mgmt0(struct inv_icm42607_state *st,
> +				      enum inv_icm42607_sensor_mode gyro,
> +				      enum inv_icm42607_sensor_mode accel,
> +				      bool temp, unsigned int *sleep_ms)
> +{
[ ... ]
> +	sleepval =3D 0;
> +	if (temp && !oldtemp)
> +		sleepval =3D max(sleepval, INV_ICM42607_TEMP_STARTUP_TIME_MS);
> +
> +	if (accel !=3D oldaccel)
> +		sleepval =3D max(sleepval, INV_ICM42607_ACCEL_STARTUP_TIME_MS);
> +
> +	if (gyro !=3D oldgyro)
> +		sleepval =3D max(sleepval, INV_ICM42607_GYRO_STARTUP_TIME_MS);

[Severity: Medium]
Does this unnecessarily delay suspend?

When inv_icm42607_runtime_suspend() turns the sensors off by passing
INV_ICM42607_SENSOR_MODE_OFF, the state changes (accel !=3D oldaccel and
gyro !=3D oldgyro).

Because of this, it seems the function will wait for the maximum startup
time before suspending, rather than only sleeping when the sensors are
actually turning on.

> +
> +	if (sleep_ms)
> +		*sleep_ms =3D sleepval;
> +	else if (sleepval)
> +		fsleep(sleepval * 1000);
> +
> +	return 0;
> +}
[ ... ]
> +static int inv_icm42607_runtime_suspend(struct device *dev)
> +{
> +	struct inv_icm42607_state *st =3D dev_get_drvdata(dev);
> +
> +	guard(mutex)(&st->lock);

[Severity: Critical]
Will this cause a NULL pointer dereference?

The PM callbacks retrieve the driver state using dev_get_drvdata(), but it
doesn't appear that dev_set_drvdata() is ever called during probe to
associate the state with the device.

Since pm_runtime_use_autosuspend() is enabled with a 2000ms delay in probe,
won't this reliably crash the kernel exactly two seconds after the device is
probed?

> +
> +	/* save sensors state */
> +	st->suspended.gyro =3D st->conf.gyro.mode;
> +	st->suspended.accel =3D st->conf.accel.mode;
> +	st->suspended.temp =3D st->conf.temp_en;
> +
> +	return inv_icm42607_set_pwr_mgmt0(st, INV_ICM42607_SENSOR_MODE_OFF,
> +					  INV_ICM42607_SENSOR_MODE_OFF, false,
> +					  NULL);
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260604201832.6065=
6-1-macroalpha82@gmail.com?part=3D5

