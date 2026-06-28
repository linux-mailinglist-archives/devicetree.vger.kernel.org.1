Return-Path: <devicetree+bounces-316539-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Y0i0Gi6AQWqlrgkAu9opvQ
	(envelope-from <devicetree+bounces-316539-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 22:12:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EEDB46D4DCF
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 22:12:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=KzsE37is;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316539-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316539-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B887B3006B0A
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 20:12:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 459D13B19DB;
	Sun, 28 Jun 2026 20:12:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C687261A
	for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 20:12:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782677546; cv=none; b=oiBIdsAkYEuzw/wyyx6ycfqmoPH/3c6QB7mQnWQeu7D1XRsTx6MPnqpNtxnhJABF5UV+O3Ylle4nqUNuWVUcOiQ80QSKSGcphX2hcqPYYOjTCgu9yC0zR5IU09JwZGOECtfeln2fRNN6oq1XdhwW12AteyIAaAAR+EfZNrk+yU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782677546; c=relaxed/simple;
	bh=CIAVZ94nlb5rTXOGzyjjceEUtCbwgr2exHoHjG5THj0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=VI/YGwzhm4rS6kFA+hYfcyqiIlBi3jkrAapOGIqWKfCZ77OKx/TmdscSYV6PYyyxEG52xF3B/STWjcREGtsiWeNbVBp5MbEyeh0vHi4fe06ZJ4gSfHAlvJAogczisBA/uDmBxiSnx3MEg37eFyptc98ppBHZiWJxqZyqu0Iehus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KzsE37is; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C3E71F000E9;
	Sun, 28 Jun 2026 20:12:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782677544;
	bh=iH6iRs2SqZSMDX9kUcpTrhySAt9DRhr+by1l+54VVy0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KzsE37is/LLXDjxWqQb18f2DLakqJn7i1JwnXovkOE5FKYDRBCF9XnS2oPbRkvBqm
	 nSA9+ALYlWwIPfFUHCagwEuxcxGj5ogjlS/Qy5c9A5LRiLHdWit/C+ZvLpNUCuMd/A
	 DWnTQon0zWhfmOE+Xpx0y2KeJqY1LgUuYwfLsgo4qbLGew8q/IfquOBN6ok2qBxty/
	 Ir00XV5IT2AIQ6uy2JIiggQ+YGwDBZM9IFYtBjkVYvrJ6HqfZjEfonegWyev6HTpCf
	 H60zBHDzU3kZOdbp3muTd+dRoHEijwZmciHpJZl/hp3CYRCk91ywYQeAuhZcm0ISE5
	 NuSsowg4+plqA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC v5 09/12] clk: zte: Introduce a driver for
 zx297520v3 matrix clocks
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260628-zx29clk-v5-9-79ff044e4192@gmail.com>
References: <20260628-zx29clk-v5-0-79ff044e4192@gmail.com>
 <20260628-zx29clk-v5-9-79ff044e4192@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 28 Jun 2026 20:12:24 +0000
Message-Id: <20260628201224.9C3E71F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-316539-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:stefandoesinger@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
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
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EEDB46D4DCF

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Double free of the `adev` structure in the error handling path of =
`auxiliary_device_add()`.
--

commit a1d3be99b150f10999dcacbb8abe5f5789b34aee
Author: Stefan D=C3=B6singer <stefandoesinger@gmail.com>

clk: zte: Introduce a driver for zx297520v3 matrix clocks

This commit introduces a clock driver for the zx297520v3 matrix clocks.
It registers several multiplexers, gates, and inputs by utilizing the
shared zx_clk_common_probe() initialization routine.

> diff --git a/drivers/clk/zte/clk-zx297520v3.c b/drivers/clk/zte/clk-zx297=
520v3.c
> index bb3d64eff9096..17e1f741b48c9 100644
> --- a/drivers/clk/zte/clk-zx297520v3.c
> +++ b/drivers/clk/zte/clk-zx297520v3.c

[ ... ]

> +static int zx297520v3_matrixclk_probe(struct platform_device *pdev)
> +{
> +	return zx_clk_common_probe(&pdev->dev, pdev->dev.parent->of_node,
> +				   &zx297520v3_matrixclk_data);
> +}

[Severity: High]
This is a pre-existing issue, but does this error path result in a double
free if auxiliary_device_add() fails during probe?

Looking at zx_clk_common_probe() in drivers/clk/zte/clk-zx.c, the error
path handles a failure from auxiliary_device_add() by jumping to
adev_uninit:

drivers/clk/zte/clk-zx.c:zx_clk_common_probe() {
    ...
    res =3D auxiliary_device_add(adev);
    if (res) {
        dev_err_probe(dev, res, "Failed to add aux dev %s\n", adev->name);
        goto adev_uninit;
    }
   =20
    return devm_add_action_or_reset(dev, zx_adev_unregister, adev);
   =20
adev_uninit:
    auxiliary_device_uninit(adev);
adev_free:
    kfree(adev);
    return res;
}

When auxiliary_device_uninit(adev) is called, it drops the reference count,
which triggers the assigned release callback zx_adev_release(). This
callback legitimately frees the structure:

drivers/clk/zte/clk-zx.c:zx_adev_release() {
    struct auxiliary_device *adev =3D to_auxiliary_dev(dev);
   =20
    kfree(adev);
}

However, after returning from auxiliary_device_uninit(), the error path
unconditionally falls through to the adev_free label, calling kfree(adev)
a second time.

Since the structure is automatically freed in the release callback, is it s=
afe
to fall through to kfree(adev) here, or should the manual kfree be removed?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260628-zx29clk-v5=
-0-79ff044e4192@gmail.com?part=3D9

