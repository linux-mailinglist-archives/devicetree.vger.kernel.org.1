Return-Path: <devicetree+bounces-319667-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EuTBJzTpRmq4fQsAu9opvQ
	(envelope-from <devicetree+bounces-319667-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 00:41:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC5E6FD445
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 00:41:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=oGsCOYBz;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319667-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319667-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1219C300D176
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 22:39:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEDFC3D1CB0;
	Thu,  2 Jul 2026 22:39:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 628B83D1A98;
	Thu,  2 Jul 2026 22:39:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783031988; cv=none; b=ZtN1F2rb7qtsjwsOiJ22Ol6KjAW3PQiSUHfvZVMpwaqR9EEcnkbz/ArroKA5a9IH+wQHPS2eIG8ET7lNiT5A+NuQzrkEEBw7nZ4UGslwiHoZkhZyY6M7FQbVEhjdBcz6JFXhZk0LvkAEXtFYgRdsJGWCO+MfaXsKI7LU7o3lPto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783031988; c=relaxed/simple;
	bh=NdZaO696DkukDhX4+tjxMVKmN9Oqn57Y3wITxefbmcE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=TauEUQ9pucBXsTqzZuzwIPM6YAIG336GsdYldCUsJhVf6gbGeLQOPrpLQ4NQs1aj03JSIcRA/tthSeLs6txqDg15zJB2opSENTtOX+3MjmeioqYpEQC4CsYOFogshZpNVTcm/F54nzXLWG9o6lY2sD/pTY7Zl9w2t+SFlqMSbZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oGsCOYBz; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B7D01F000E9;
	Thu,  2 Jul 2026 22:39:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783031983;
	bh=Ap9DrUTnqXlN5zm9ulmcbFUjVW/LtzCwBm0PFq/FCdM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=oGsCOYBzAYaZDtZMwF8/n0lB8Tsn7BfRLAm1WpRuXsjMI8SH5pAH5jrqjx+cLURgd
	 GGf7Xa3fCjybsKManjUYT7RVUYKyRlMQv1PDfkewAKcqNlUiEaL6eNrTvqtXQNF5fC
	 WFM/iydpwKOR8N40JqTdfS8QKg3TwECnYKV4bVaVOvDAPTOrdaMEfjEnY97ccne3Oa
	 9Hn1K/0DRlVTj+R50B8IuUZk7+E0ctWu9FNHn7XXffBQf39pD/ZEpMA6+Y+URgs3S9
	 aJ0N2XIn5w52e8L8U92f03OGoHGaHhIceAdc66oEnPuXhS0H/CUCBn3BUNrh2Hejas
	 UW52zSslnwvlQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 1/4] firmware_loader: expand firmware error codes
 with up-to-date error
Reply-To: sashiko-reviews@lists.linux.dev
To: "Marco Felsch" <m.felsch@pengutronix.de>
Cc: devicetree@vger.kernel.org, robh@kernel.org, linux-input@vger.kernel.org, conor+dt@kernel.org, dmitry.torokhov@gmail.com
In-Reply-To: <20260703-v6-10-topic-touchscreen-axiom-v6-1-1aa50ba3bc5a@pengutronix.de>
References: <20260703-v6-10-topic-touchscreen-axiom-v6-0-1aa50ba3bc5a@pengutronix.de>
 <20260703-v6-10-topic-touchscreen-axiom-v6-1-1aa50ba3bc5a@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 22:39:42 +0000
Message-Id: <20260702223943.6B7D01F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-319667-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,pengutronix.de:email];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:m.felsch@pengutronix.de,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:linux-input@vger.kernel.org,m:conor+dt@kernel.org,m:dmitry.torokhov@gmail.com,m:conor@kernel.org,m:dmitrytorokhov@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1BC5E6FD445

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The newly added "firmware-duplicate" sysfs error string is omitted =
from the sysfs ABI documentation and the corresponding selftest script.
--

commit 59f39aaf73939b5dbe553a0c6fe3c5d3c9ce3d78
Author: Marco Felsch <m.felsch@pengutronix.de>

firmware_loader: expand firmware error codes with up-to-date error

This commit adds FW_UPLOAD_ERR_DUPLICATE to allow drivers to signal
that a firmware update is not required. It also updates the error
strings in the core sysfs interface and the test firmware module.

> diff --git a/drivers/base/firmware_loader/sysfs_upload.c b/drivers/base/f=
irmware_loader/sysfs_upload.c
> --- a/drivers/base/firmware_loader/sysfs_upload.c
> +++ b/drivers/base/firmware_loader/sysfs_upload.c
> @@ -28,6 +28,7 @@ static const char * const fw_upload_err_str[] =3D {
>  	[FW_UPLOAD_ERR_RW_ERROR]     =3D "read-write-error",
>  	[FW_UPLOAD_ERR_WEAROUT]	     =3D "flash-wearout",
>  	[FW_UPLOAD_ERR_FW_INVALID]   =3D "firmware-invalid",
> +	[FW_UPLOAD_ERR_DUPLICATE]    =3D "firmware-duplicate",

[Severity: Low]
Since firmware-duplicate is now exposed to userspace, should it also
be documented in Documentation/ABI/testing/sysfs-class-firmware? The
existing documentation lists the other expected error strings but is
missing this one.

Additionally, does this require an update to the selftests? Looking at
tools/testing/selftests/firmware/fw_upload.sh, the errors list is
hardcoded:

errors=3D"hw-error
	timeout
	device-busy
	invalid-file-size
	read-write-error
	flash-wearout"

Without adding firmware-duplicate to this list, the new error injection
capability added to lib/test_firmware.c might not be exercised by the
test suite.

>  };
> =20
>  static const char *fw_upload_progress(struct device *dev,

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260703-v6-10-topi=
c-touchscreen-axiom-v6-0-1aa50ba3bc5a@pengutronix.de?part=3D1

