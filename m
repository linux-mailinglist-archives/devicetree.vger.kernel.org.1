Return-Path: <devicetree+bounces-319669-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 30czAdLqRmrzfQsAu9opvQ
	(envelope-from <devicetree+bounces-319669-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 00:48:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0536FD4C2
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 00:48:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="mI/FKQhB";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319669-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-319669-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0E2E430325B9
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 22:45:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 842CC3CF04C;
	Thu,  2 Jul 2026 22:45:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ACE33BD64A;
	Thu,  2 Jul 2026 22:45:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783032343; cv=none; b=AtWykLfIezNAK0boE/+KJOa5x3vOKIqJlkhsiAwwwrO34qxF24DmWXkup2Z3VBMOissSgp41FLTQozXnz6g0gwCPNu5vgM9WSAqOAFzbnBOkYbRY1ik5iRmmTQCFwpc2QJUHhdXcj+0qTpTjdJovth8+r0Gif2K9J8Kz6U0Uj4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783032343; c=relaxed/simple;
	bh=ZDhOFrXbnL8IHVi4PbFk8oU76ut6ePD/O8wKa2ZRaPI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=NBO4ZYlfy1C/eoVRchzCil7r9BVk435pxf+r6y6oNDntldZv9vi8TJuZ7gHA58hiy/+VKKEIH8MLwaNSqXSLGVsgzTgb4/Q9XtrQRJYuWTjFPJphilmmSx2cvJ15u3tARm2IFSKD+R2EVdRHSYdyjm1mqANpE1V1TFCSXR3Aors=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mI/FKQhB; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0823C1F000E9;
	Thu,  2 Jul 2026 22:45:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783032337;
	bh=AkuUJ02p9pFNQTC2eOmk+zBCQiCsT0keFkPwXftKyRc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mI/FKQhBZWidGJGTRFz/vIv0NXmTaFO8Pc02/M4pvyKlH19wG6bpGqIWrsU0LKyXV
	 /M5TdhcXkJJr3rPUhmtOvyiFSLBRrH/IOAvCs0ziCQAsDfe2bD3Npcw4joUvJhcq+W
	 Yd/alTNBmFFGSV9xO6E3dxSVweV6237ZSJyQaIdL30HGxQK10eEAe8HXNJ/4Fwaylx
	 Lh9bU+SyC5LDQUk2AyTTjv588c4L3vzmswfv077RTJWjHpaA4qQ+IvSMRHN640RSqW
	 R0Vw0xRy/3dHUgMO2VsC7WkYLL8GOwf3WTkh6UrY4PXOrKDYaDea++AbjV4ynC2ow+
	 Eh2JO4AbWNKSQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 1/4] firmware_loader: expand firmware error codes
 with up-to-date error
Reply-To: sashiko-reviews@lists.linux.dev
To: "Marco Felsch" <m.felsch@pengutronix.de>
Cc: dmitry.torokhov@gmail.com, devicetree@vger.kernel.org, linux-input@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260703-v6-10-topic-touchscreen-axiom-v7-1-0d2a550a7ee8@pengutronix.de>
References: <20260703-v6-10-topic-touchscreen-axiom-v7-0-0d2a550a7ee8@pengutronix.de>
 <20260703-v6-10-topic-touchscreen-axiom-v7-1-0d2a550a7ee8@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 22:45:36 +0000
Message-Id: <20260702224537.0823C1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-319669-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,pengutronix.de:email,lists.linux.dev:replyto,smtp.kernel.org:mid];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,kernel.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:m.felsch@pengutronix.de,m:dmitry.torokhov@gmail.com,m:devicetree@vger.kernel.org,m:linux-input@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:dmitrytorokhov@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1F0536FD4C2

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The selftest script for firmware uploads does not inject and tes=
t the new 'firmware-duplicate' error.
- [Low] Missing ABI documentation for the newly added sysfs error string 'f=
irmware-duplicate'.
--

commit b451d666b20500e69051bac63ead44572b79d708
Author: Marco Felsch <m.felsch@pengutronix.de>

firmware_loader: expand firmware error codes with up-to-date error

This commit adds FW_UPLOAD_ERR_DUPLICATE to allow drivers to inform the
firmware_loader that an update is not required. It also updates the
test_firmware module to support injecting this new error state.

> diff --git a/drivers/base/firmware_loader/sysfs_upload.c b/drivers/base/f=
irmware_loader/sysfs_upload.c
> index efc33294212fd..82c4b1fedf4cd 100644
> --- a/drivers/base/firmware_loader/sysfs_upload.c
> +++ b/drivers/base/firmware_loader/sysfs_upload.c
> @@ -28,6 +28,7 @@ static const char * const fw_upload_err_str[] =3D {
>  	[FW_UPLOAD_ERR_RW_ERROR]     =3D "read-write-error",
>  	[FW_UPLOAD_ERR_WEAROUT]	     =3D "flash-wearout",
>  	[FW_UPLOAD_ERR_FW_INVALID]   =3D "firmware-invalid",
> +	[FW_UPLOAD_ERR_DUPLICATE]    =3D "firmware-duplicate",

[Severity: Low]
Since a new error string "firmware-duplicate" is exposed to userspace,
should this also be documented in
Documentation/ABI/testing/sysfs-class-firmware?

It looks like the new string is missing from the allowed error values
documented for the sysfs interface.

>  };
> =20
>  static const char *fw_upload_progress(struct device *dev,

[ ... ]

> diff --git a/lib/test_firmware.c b/lib/test_firmware.c
> index 7459bba65444d..a822d9641eb4c 100644
> --- a/lib/test_firmware.c
> +++ b/lib/test_firmware.c
> @@ -1134,6 +1134,7 @@ static const char * const fw_upload_err_str[] =3D {
>  	[FW_UPLOAD_ERR_RW_ERROR]     =3D "read-write-error",
>  	[FW_UPLOAD_ERR_WEAROUT]	     =3D "flash-wearout",
>  	[FW_UPLOAD_ERR_FW_INVALID]   =3D "firmware-invalid",
> +	[FW_UPLOAD_ERR_DUPLICATE]    =3D "firmware-duplicate",

[Severity: Medium]
Does the test script also need to be updated to exercise this new code path?

While this properly adds injection support to the test module, the hardcoded
errors list in tools/testing/selftests/firmware/fw_upload.sh does not appear
to include "firmware-duplicate", meaning the kselftest won't actually
inject or test this new error type.

>  };
> =20
>  static void upload_err_inject_error(struct test_firmware_upload *tst,

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260703-v6-10-topi=
c-touchscreen-axiom-v7-0-0d2a550a7ee8@pengutronix.de?part=3D1

