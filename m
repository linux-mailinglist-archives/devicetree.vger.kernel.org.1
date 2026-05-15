Return-Path: <devicetree+bounces-298360-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OD2GLJklB2oEsQIAu9opvQ
	(envelope-from <devicetree+bounces-298360-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 15:54:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B07B0550D19
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 15:54:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1061F30A558A
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 13:36:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37B183DE42F;
	Fri, 15 May 2026 13:36:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GlTMVHzH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1563E3D3482
	for <devicetree@vger.kernel.org>; Fri, 15 May 2026 13:36:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778852170; cv=none; b=sTNMMuUQ5rnzngAmR7nUNaMjgS9CFWsl9Q2VKj3So1z1pK2Wb+FppCiRQDBBGuFlqD+zmHltYlnzYjtQbo5oxITNwGQTHUtjZtLgJ2Ws9mix7LOYXRjNOuPgwfzOtMaP3n2/1LboPEwohFiKS2bRDZ45ldz15V1N5zl1jGMV42E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778852170; c=relaxed/simple;
	bh=6cychEZsMounqtjuNUVfyd6f9LFz7sXxrj2M8/XHQ+A=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ic0bg+VyZ6x/O53glrfSVILXl4imbhBj5bJyYqBa41G1X6PJoUCJaaWjBGWuNWp8L6xNK97L0cxTFwS0us2jCfK5/AxJPGdvV8TdMemtL6oKRtuIwdeAfkrZYX+/JOa2hliOyTPAcWK6/Cn2PHqRULU/8yrynDfmFNITH27VL+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GlTMVHzH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 755D2C2BCB8;
	Fri, 15 May 2026 13:36:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778852169;
	bh=6cychEZsMounqtjuNUVfyd6f9LFz7sXxrj2M8/XHQ+A=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=GlTMVHzH60r5Et1FsjcbYAOubzVLPEL5StMry0fLOVpfC4Cjj18oR/Ah/IYf3KE+K
	 YswOJ0XvRFje7b+cOcVLiTxBa28upQs0L36M+P8r9PKZ9OHcyeUiltJNtqXCAPNr4p
	 mpSwVOFJ/sCPnccgDnQ6lgycuo9L7ryL7jMZ9OqQ7Gj0oXw4/nfXaDCrCtZg80ftiz
	 j2Xi/mUg7tNtVAgxm3mExsUlHYgkbeib98k5g65j3dH0obAus8ESSuLM6CfOOdTT6t
	 RSNORHLvDV3k4/47cU2OdxClr/o2xNt3PKdisE8IkYnn/BlYrxmxQ+l+9aQLZZaKQt
	 VgoFNKKxSb3tw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V7 05/11] iio: imu: inv_icm42607: Add PM support for
 icm42607
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chris Morgan" <macroalpha82@gmail.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260515130018.237378-6-macroalpha82@gmail.com>
References: <20260515130018.237378-6-macroalpha82@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 May 2026 13:36:09 +0000
Message-Id: <20260515133609.755D2C2BCB8@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: B07B0550D19
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-298360-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,lists.linux.dev:replyto];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Unconditional assignment of runtime PM callbacks using RUNTIME_PM_O=
PS causes dead code when CONFIG_PM is disabled.
--

commit 2b859f6a3a3693a6dff734a7ea031d9f3a2a527f
Author: Chris Morgan <macromorgan@hotmail.com>

iio: imu: inv_icm42607: Add PM support for icm42607

Add power management support for the ICM42607 device driver.

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/i=
io/imu/inv_icm42607/inv_icm42607_core.c
> index 1088c5c7076f8..e27ad0319a125 100644
> --- a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c

[ ... ]

> +static int inv_icm42607_runtime_resume(struct device *dev)
> +{
> +	struct inv_icm42607_state *st =3D dev_get_drvdata(dev);
> +
> +	guard(mutex)(&st->lock);
> +
> +	return inv_icm42607_enable_vddio_reg(st);
> +}
> +
> +EXPORT_NS_GPL_DEV_PM_OPS(inv_icm42607_pm_ops, IIO_ICM42607) =3D {
> +	SYSTEM_SLEEP_PM_OPS(inv_icm42607_suspend, inv_icm42607_resume)
> +	RUNTIME_PM_OPS(inv_icm42607_runtime_suspend,
> +		       inv_icm42607_runtime_resume, NULL)

Will this result in dead code if CONFIG_PM is disabled?

Unlike SYSTEM_SLEEP_PM_OPS which internally wraps its arguments with
pm_sleep_ptr(), RUNTIME_PM_OPS does not use pm_ptr() for its callbacks.
This leaves the static inv_icm42607_runtime_suspend and
inv_icm42607_runtime_resume functions compiled even when PM is disabled.

Could this be updated to use pm_ptr() for the runtime PM callbacks, or
alternatively use the DEFINE_RUNTIME_DEV_PM_OPS macro?

> +};
> +
>  MODULE_AUTHOR("InvenSense, Inc.");

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260515130018.2373=
78-1-macroalpha82@gmail.com?part=3D5

