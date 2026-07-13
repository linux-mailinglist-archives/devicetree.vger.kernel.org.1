Return-Path: <devicetree+bounces-325791-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 31GDLdRhVWr+ngAAu9opvQ
	(envelope-from <devicetree+bounces-325791-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 00:08:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F2174F6F8
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 00:08:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Rm2Je8cW;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325791-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-325791-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CB8D8303743C
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 22:08:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72E9638644F;
	Mon, 13 Jul 2026 22:08:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C9E3859EF
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 22:08:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783980482; cv=none; b=fzZoXJ2fz0E2LWJbDAHZuO3jTP8PkDnoAlCG3IuRzRqk5vdFupsQBztEqgekLDffeT/z7zpXtboW0B+E384fzziHrv+8tFtx9nxoeRvHRPAIAOhjfEFfYd2FB+p0lhMmp6XX83MgF/AkWqXIV8THOGI2R0OFXFIlr134JxSnmj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783980482; c=relaxed/simple;
	bh=RpCOY4KwJjH0HGYnW+UZPYf6wB+TCembGmLW//r0O3E=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=u7j+SnIBWxoaLJuBqJieJdionmswytrXYcdUqLRxN/fLQMdzZRDGGB8iBw9gp7UA2Ix59fMSNxJn6JLlS7JFSenG+GJFvlU0VEAgTU6M//uss9xJgvXFRhtSxOc49UapZF47fJ6ncl+IEc9kDiBH1MiZCYNMpR1140aNLB/pl/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rm2Je8cW; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B3311F000E9;
	Mon, 13 Jul 2026 22:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783980480;
	bh=aIMqz7SRK3mM5SjY7XQkIA3XxC4+J7dIJfS+i+5fGWc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Rm2Je8cWFkUp/7Dsi4RWlzIFchJKLNg9sciHwFBLyEd/LayNsf4h50nuLWTeIWIcC
	 4f+pv2wg4/ZvWLG+YhX7zvvDPrZ2vQcTRIuySMsi4Q51g3wsC0Fl798IEAcv2VZsxN
	 5vtkmY1sG8Vu+1rD9oaAV6DRKoF+TVeD4oE1QHe2wd/cKvCcsJ6QdWOdmFNpAP07E4
	 yHDr0DZKCls0K00xKInA2MYVuJ5EkjN8v7N1SCkjVwApAcD4MGPr3wBvr128aL/ukg
	 e6mZ3RJb9R/qOLgIerRbOHz16lNhAYYKD52EVg/WLadvhy7RdGyJ6Epz+PRkBfbN2i
	 jeQyXp9jP2ing==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v16 02/10] dt-bindings: iio: imu: icm42600: Remove
 interrupts from required
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chris Morgan" <macroalpha82@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260713215842.69097-3-macroalpha82@gmail.com>
References: <20260713215842.69097-1-macroalpha82@gmail.com>
 <20260713215842.69097-3-macroalpha82@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Jul 2026 22:08:00 +0000
Message-Id: <20260713220800.9B3311F000E9@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-325791-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:macroalpha82@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 09F2174F6F8

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The device tree binding removes the `interrupts` requirement, ma=
king it optional, but the associated kernel driver still unconditionally re=
quires an interrupt to probe successfully. The driver fetches the interrupt=
 via `fwnode_irq_get_byname()` or `fwnode_irq_get()` and aborts the probe w=
ith `dev_err_probe()` if none is found. Relaxing the binding allows device =
trees to omit the interrupt property and pass schema validation, but such c=
onfigurations will unconditionally fail at runtime because the driver curre=
ntly lacks support for polling mode.
--

--- Patch [2]: [PATCH v16 02/10] dt-bindings: iio: imu: icm42600: Remove in=
terrupts from required ---
commit 161a6f84f50962ef8b7d4035dc0e3aa2eb3afb64
Author: Chris Morgan <macromorgan@hotmail.com>

dt-bindings: iio: imu: icm42600: Remove interrupts from required

This commit removes the interrupts requirement from the icm42600 device tree
binding schema. The commit message notes that interrupts are rarely required
for IIO devices.

> diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,icm4260=
0.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
> index 9b2af104f186d..f6f97ea030389 100644
> --- a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
> +++ b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
> @@ -67,7 +67,6 @@ properties:
>  required:
>    - compatible
>    - reg
> -  - interrupts

[Severity: Medium]
Does this change introduce a mismatch with the driver implementation?

If a device tree omits the interrupts property, it will now pass schema
validation, but it appears the driver will still fail to probe.

Looking at inv_icm42600_core_probe() in
drivers/iio/imu/inv_icm42600/inv_icm42600_core.c:

    if (irq < 0)
        return dev_err_probe(dev, irq, "error missing INT1 interrupt\n");

Will the driver need to be updated to support a polling mode, or should the
interrupt remain required until the driver can support operating without on=
e?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260713215842.6909=
7-1-macroalpha82@gmail.com?part=3D2

