Return-Path: <devicetree+bounces-325384-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fIAnC1y8VGo/qQMAu9opvQ
	(envelope-from <devicetree+bounces-325384-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 12:22:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6558E749B9C
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 12:22:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=XgN9WUe6;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325384-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325384-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6BB8E301AAA1
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 10:22:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD8593E5575;
	Mon, 13 Jul 2026 10:22:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CBE33624C2;
	Mon, 13 Jul 2026 10:22:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783938137; cv=none; b=QupZLLs8lH7lNkV7JahIRh93oiooyzZ7eiUShw8Fi4T4XHtdEdee72kg8qqfoM3lRG9EYVJQQMOat8hbTwmdSRiu7185g/RVCNf6Xz4anYoih47jJqAM8VZi98CF8tA6g2LgMoTq+djAldxhWtaFokTVa75SsqXHbem5QD8/B9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783938137; c=relaxed/simple;
	bh=R5ftZJfvu1ynWrmV94BlRYoW0+PcFk/64l/8sBjbj7c=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=D0NdGLM8QSXkAL1X7TTDmwMyzmSJzPntuCduzyuztx6NK+Sll0wqobS8zLrgClsxLtoRBsXsbiAKm6wL6ZUheomzhyoKM8BzDwEXti6BIYl6LuPVALt4lbXf9rTDxd1FwJsOYZHJEe5H6kBxTh+mvL4x4imorS5Pm00zkqWf2R8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XgN9WUe6; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1AA21F000E9;
	Mon, 13 Jul 2026 10:22:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783938136;
	bh=Eq8hS1R6+eo021BfTfWoD768M8L1lfmNhZe8JDfHWkw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=XgN9WUe6pXxoZcH6TmzMg50UdWYLPY4ViW2zfv2gEI3DC0rtOhopBmfpJS52nIMJd
	 NLx71slmO+jUXdOdvGRLoNoKqjDdGpsv7brJPYsXJbM/grZuV5Y+tC0UI96dSMGoEM
	 FF26NhKuCk5kuMKV5+D7DXK6gMjndJu+M1Esg5+66azD1S9GpLiqXJ6Gm1GYGJ8ft+
	 tp6YLKmdFYIlTspM9XxNF4oV8qDC8W+5QzAJPlENDtEzwgYBFV1sL5E7McaGJfXKKg
	 bnvoAuRTIyiw8u+kDX92Vj/LsJ6gBHcmef5HJc2s/47bEXvbgQFwXE6+pyF0TVcboi
	 n2WR575VZnxOQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 2/2] thermal/drivers/imx: Add calibration offset
 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Haoning CHENG" <Haoning.CHENG@cn.bosch.com>
Cc: conor+dt@kernel.org, imx@lists.linux.dev, devicetree@vger.kernel.org, robh@kernel.org, Frank.Li@kernel.org
In-Reply-To: <20260713-b4-symana21-11221-imx-thermal-support-upstream-6-18-v6-2-88a378faeca5@cn.bosch.com>
References: <20260713-b4-symana21-11221-imx-thermal-support-upstream-6-18-v6-0-88a378faeca5@cn.bosch.com>
 <20260713-b4-symana21-11221-imx-thermal-support-upstream-6-18-v6-2-88a378faeca5@cn.bosch.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Jul 2026 10:22:14 +0000
Message-Id: <20260713102215.C1AA21F000E9@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-325384-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,bosch.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:Haoning.CHENG@cn.bosch.com,m:conor+dt@kernel.org,m:imx@lists.linux.dev,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:Frank.Li@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6558E749B9C

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Use-After-Free due to devm-managed IRQ outliving thermal zone unre=
gistered in remove
--

--- Patch [2]: [PATCH v6 2/2] thermal/drivers/imx: Add calibration offset s=
upport ---
commit 9fae0662c1aea3575b716baf0cd588bdc25d2359
Author: Haoning CHENG <Haoning.CHENG@cn.bosch.com>

thermal/drivers/imx: Add calibration offset support

Some boards need a small per-design correction to align the reported CPU
temperature with board-level measurements. Read the optional
fsl,temp-calibration-offset-millicelsius property from DT and apply it to
the i.MX6/6SX/7D calibration formulas.

> diff --git a/drivers/thermal/imx_thermal.c b/drivers/thermal/imx_thermal.c
> index 5aaacbc534786..5e3cff69aced7 100644
> --- a/drivers/thermal/imx_thermal.c
> +++ b/drivers/thermal/imx_thermal.c

[ ... ]

> @@ -629,6 +635,10 @@ static int imx_thermal_probe(struct platform_device =
*pdev)
> =20
>  	platform_set_drvdata(pdev, data);
> =20
> +	of_property_read_s32(dev->of_node,
> +			     "fsl,temp-calibration-offset-millicelsius",
> +			     &data->calibration_offset);
> +

[Severity: High]
This is a pre-existing issue, but does the devm-managed IRQ lifecycle create
a use-after-free condition during driver unbind?

When the driver unbinds, imx_thermal_remove() explicitly calls
thermal_zone_device_unregister(data->tz), which frees the thermal zone
object.

However, because the IRQ was registered with devm_request_threaded_irq()
in imx_thermal_probe(), it remains active until the driver core runs
devres cleanup after the remove function returns.

If a thermal alarm interrupt fires during this window, the handler will
execute:

imx_thermal_alarm_irq_thread()
    ...
    thermal_zone_device_update(data->tz, THERMAL_EVENT_UNSPECIFIED);

Could this dereference the already-freed data->tz?

>  	if (of_property_present(dev->of_node, "nvmem-cells")) {
>  		ret =3D imx_init_from_nvmem_cells(pdev);
>  		if (ret)

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260713-b4-symana2=
1-11221-imx-thermal-support-upstream-6-18-v6-0-88a378faeca5@cn.bosch.com?pa=
rt=3D2

