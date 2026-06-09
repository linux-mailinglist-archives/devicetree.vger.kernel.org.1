Return-Path: <devicetree+bounces-308657-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UtbiMiqeJ2rpzgIAu9opvQ
	(envelope-from <devicetree+bounces-308657-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 07:01:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D7065C570
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 07:01:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=aZo8sicr;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308657-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-308657-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 019D03012C4F
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 05:01:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2178532D0E3;
	Tue,  9 Jun 2026 05:01:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05FB82FFFA5;
	Tue,  9 Jun 2026 05:01:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780981284; cv=none; b=BjNuRvzt6vb0/RLGJph5fsetUZF/Kt5F7SoaOAKP6+2E+P1FiaOmLlLaXC235M+CVAiiUMQHNWxdQmMY1kACj7cl8WgP3rgIJs3fCwQBEvF7AlK0br/7MJuypVcRz4F5kWoiI2W1EIqFnjajSxylJOrsXwt81udm2zo558JbcWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780981284; c=relaxed/simple;
	bh=ynmUeUjXvWEyDNLw2h/GlqAPMLTYX/6Tj2q0nC8BOis=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=McPxUVhMoZ20wFIKNmVyBIGGeE3uhQHwuZ3q4eABniqrHebeF8WHbJkL/lt1Ae5EGMvFdHRNr1NniBJ28LOZs6yTJfhF0RhunROVe98QM/9QyvHTzR/SS9QhEMeTwX4fh8bDJaCHjYFYxb9BUA1EoAlRiNPtyzj/i5aWO4cVVxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZo8sicr; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 480F71F00893;
	Tue,  9 Jun 2026 05:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780981282;
	bh=SxVnS4f4PFryJmFXXmeh466sR8wOIrgQ5x/TdsyQPsM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=aZo8sicr8mQXbd4s/2FiGevzyeqZcLYj/jrOy1reXrC47piWTp9aEU8SJRK7uneDM
	 eYv9OnFillw9fpKREwuJHEbqXnueJ094raAmkpiSO+ATcXhDnES5dSjWZ/tytr03BQ
	 Bn93XBSwLuR45/8pRERmqJBYZwrg/VwG8p43CHVqamkfdnYBAy0MzpTTsl63x6SFQV
	 QM/lw8QN0BSReSXhE5+lLfSUGYzdou3QPoEnJtZ5BintSc4bY+YXGccwp196+r3xL0
	 9bL9eL2PB3AsevP+aAZuygtqU8Bt14Pd91SUuETxAvk8bMO0IQjhCPRgAVepe+r2m8
	 7SVu3yiYS83rA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 07/11] HID: spi_hid: add ACPI support for SPI over
 HID
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jingyuan Liang" <jingyliang@chromium.org>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, dmitry.torokhov@gmail.com, linux-input@vger.kernel.org
In-Reply-To: <20260609-send-upstream-v4-7-b843d5e6ced3@chromium.org>
References: <20260609-send-upstream-v4-7-b843d5e6ced3@chromium.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 05:01:21 +0000
Message-Id: <20260609050122.480F71F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,lists.linux.dev:replyto,smtp.kernel.org:mid,semihalf.com:email,vger.kernel.org:from_smtp,sashiko.dev:url];
	TAGGED_FROM(0.00)[bounces-308657-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jingyliang@chromium.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:dmitry.torokhov@gmail.com,m:linux-input@vger.kernel.org,m:conor@kernel.org,m:dmitrytorokhov@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D2D7065C570

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] spi_hid_acpi_deassert_reset() silently fails to execute the ACPI _=
RST method, breaking device initialization.
- [High] Use-After-Free due to flawed cleanup ordering: the reset workqueue=
 is cancelled before the HID device is destroyed.
- [High] The shared buffer `shid->response` is read without holding `output=
_lock`, leading to data corruption if concurrent HID requests occur.
--

commit 8f475e9d4e137ed8f5267ef4406acd64e1baca61
Author: Angela Czubak <acz@semihalf.com>
Subject: HID: spi_hid: add ACPI support for SPI over HID

This commit detects and adds ACPI support for SPI HID devices.

> diff --git a/drivers/hid/spi-hid/spi-hid-acpi.c b/drivers/hid/spi-hid/spi=
-hid-acpi.c
> new file mode 100644
> index 0000000000000..298e3ba44d8a0
> --- /dev/null
> +++ b/drivers/hid/spi-hid/spi-hid-acpi.c
> @@ -0,0 +1,253 @@
[ ... ]
> +static int spi_hid_acpi_deassert_reset(struct spihid_ops *ops)
> +{
> +	struct spi_hid_acpi_config *conf =3D container_of(ops,
> +							struct spi_hid_acpi_config,
> +							ops);
> +
> +	return device_reset(&conf->adev->dev);

[Severity: High]
Does device_reset() work correctly here?

Since conf->adev->dev is the internal ACPI device structure without its fwn=
ode
set, ACPI_HANDLE() will return null, causing __device_reset() to skip the A=
CPI
reset.

Also, looking at spi_hid_dev_init(), the return value of deassert_reset()
is ignored:

drivers/hid/spi-hid/spi-hid-core.c:spi_hid_dev_init() {
    ...
	shid->ops->deassert_reset(shid->ops);
    ...
}

Should it evaluate _RST directly or use &spi->dev instead, and should the
return value be checked to prevent hardware reset from silently failing?

> +}

[Severity: High]
Can the cleanup ordering lead to a use-after-free regression during removal?

In spi_hid_core_remove(), cancel_work_sync() is called before
spi_hid_stop_hid():

drivers/hid/spi-hid/spi-hid-core.c:spi_hid_core_remove() {
    ...
	cancel_work_sync(&shid->reset_work);

	spi_hid_stop_hid(shid);
    ...
}

Since spi_hid_stop_hid() calls hid_destroy_device(), the HID device is still
accessible to userspace between the work cancellation and device destructio=
n.

If a userspace process concurrently issues an ioctl during this window,
spi_hid_sync_request() will timeout, and the error handler in
spi_hid_get_request() could incorrectly schedule reset_work. Once removal
finishes and devm frees the shid structure, could the mistakenly scheduled
work execute and dereference the freed shid pointer?

Should spi_hid_stop_hid() be called before cancel_work_sync() to prevent th=
is?

[Severity: High]
Can the shared buffer shid->response be read while corrupted if concurrent
HID requests occur?

In spi_hid_sync_request(), output_lock is acquired via scoped guard and is
implicitly released upon function return:

drivers/hid/spi-hid/spi-hid-core.c:spi_hid_sync_request() {
    ...
	guard(mutex)(&shid->output_lock);
    ...
}

Functions like spi_hid_ll_raw_request() call into spi_hid_sync_request()
and then read from shid->response after the lock has been released:

drivers/hid/spi-hid/spi-hid-core.c:spi_hid_ll_raw_request() {
    ...
	ret =3D spi_hid_sync_request(shid, ...);
    ...
	ret =3D min_t(size_t, len,
		    (shid->response->body[1] | (shid->response->body[2] << 8)) + 1);
	buf[0] =3D shid->response->body[3];
	memcpy(&buf[1], &shid->response->content, ret);
    ...
}

If multiple threads concurrently issue ioctls, could the second thread acqu=
ire
output_lock and overwrite shid->response with its own data before the first
thread has finished reading it?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609-send-upstr=
eam-v4-0-b843d5e6ced3@chromium.org?part=3D7

