Return-Path: <devicetree+bounces-314991-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EtYpLXvvOmp5MAgAu9opvQ
	(envelope-from <devicetree+bounces-314991-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 22:41:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5D06BA125
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 22:41:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Y+i0J6Eh;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314991-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314991-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7362230075D7
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 20:40:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 461943A6F11;
	Tue, 23 Jun 2026 20:40:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD33395ADC
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 20:40:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782247245; cv=none; b=EYu8i5hP7vx+lHyMbpdUX6Ea8MQ9QmnSy8325+tg137llH1/DLx+/DcNry7yMkDbWemEKRASsy/2b1CmDjFnfDjPDJQGFQnHQtZB0mNGXlVcUj4SJwFkL69Yn7XUQ2GXyh8HrSDGkoqiVuNXkya/MfoOTq+d/JPxFxZc2L9GP1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782247245; c=relaxed/simple;
	bh=kbg5OAfafgq29fo8OONYMYf3OCJ6T/LszsluN7gjgCs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Avbpmosf17FehSDtU5q1ACnMiP9YGR1tafn6f9c9Ki6v863gCn4EO4xeQAVIQtBGwAGm8X28MuwHaSjKBoHYRvEH2uu/3xcRRMLREbGVizOdKJCf7I++U0iXdXR79lrXEjWLqpg+IThueRftAyov/yfWGtNxcjU3fvFE5HJ9s8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+i0J6Eh; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6B921F000E9;
	Tue, 23 Jun 2026 20:40:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782247244;
	bh=J+gk5L5yw4PN+kPDrLzlGnj7v2zg2XZU/CjzwFcHYk0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Y+i0J6Ehno69SWmN3U/JA4xqv8o8I7/en979cShv2OBxFISZ55Ns8JDJrWCsNrkXF
	 zX8zgqiIyOI48tI4X1gf5A/b34FTOO30D2C7jf9EWiEsnNFOvfGdTD1Z41tr7YGZ5U
	 3bOaHm1EPt85G2ScWl+E+XyjLmAChTKmG2J4iN8LkpcaayepFDOVHSyn3RBuxtUh54
	 AgrYuKZBk9XigSl1Qvjqctw8mb8HjihdsH28LOMFwz4JcmTUpPFoHlMC0LCLzXUDT3
	 eaCKiksrLeFaZILrghUHFATQMGEorXc6iZH3DozcXg+r1P2UChW694bJGIf32V0vqi
	 vRZ5hd9TP+LDw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 08/10] drm/rockchip: dw_dp: Add runtime PM support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: dri-devel@lists.freedesktop.org, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260612-synopsys-dw-dp-improvements-v3-8-dc61e6352508@collabora.com>
References: <20260612-synopsys-dw-dp-improvements-v3-8-dc61e6352508@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 23 Jun 2026 20:40:43 +0000
Message-Id: <20260623204043.C6B921F000E9@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-314991-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,collabora.com:email,vger.kernel.org:from_smtp,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:dri-devel@lists.freedesktop.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1D5D06BA125

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Runtime PM initialized without matching active hardware state, cau=
sing clocks to remain permanently enabled.
- [High] Using devm_pm_runtime_enable() in a component bind callback ties P=
M lifecycle incorrectly, causing Use-After-Free and devres leaks.
--

commit 77c03b774daaa80f329daaa791a8229e9e24ad9e
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

drm/rockchip: dw_dp: Add runtime PM support
   =20
Add support for runtime PM to the Rockchip RK3576/3588 Synopsys
DesignWare DisplayPort driver.

> diff --git a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c b/drivers/gpu/drm/=
rockchip/dw_dp-rockchip.c
> index 9c53f1d2c29ab..1f53228e56d9f 100644
> --- a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
[ ... ]
> @@ -213,6 +218,12 @@ static int dw_dp_rockchip_bind(struct device *dev, s=
truct device *master, void *
>  	if (IS_ERR(dp->base))
>  		return PTR_ERR(dp->base);
> =20
> +	pm_runtime_use_autosuspend(dev);
> +	pm_runtime_set_autosuspend_delay(dev, 500);

[Severity: High]
Since dw_dp_bind() enables the clocks (via devm_clk_get_enabled() when
setting up the base dw_dp struct), shouldn't we call
pm_runtime_set_active() before enabling runtime PM here?

Without it, the PM core assumes the device starts in RPM_SUSPENDED state.
When the device resumes, dw_dp_runtime_resume() will enable the clocks
again (incrementing the enable count to 2). When autosuspend fires,
dw_dp_runtime_suspend() will disable them (decrementing the count back to
1), meaning the hardware clocks are never physically disabled.

> +	ret =3D devm_pm_runtime_enable(dev);

[Severity: High]
Does using devm_pm_runtime_enable() here tie the PM lifecycle to the
component platform device instead of the DRM master?

The rockchip_dw_dp structure is allocated using drmm_kzalloc() earlier in
this function, which binds its lifetime to the DRM master device. However,
devm_pm_runtime_enable() attaches the devres action to the component device,
whose lifetime spans the full probe/remove cycle.

If the DRM master is unbound, dw_dp_rockchip_unbind() will execute but it
does not disable PM runtime or flush the autosuspend timer. The DRM core
will then free the drmm-managed memory.

Could an autosuspend timer firing after unbind cause a use-after-free
regression in dw_dp_rockchip_runtime_suspend() when it tries to access the
freed dp pointer? Repeated bind/unbind cycles might also endlessly leak
devres actions on the platform device.

> +	if (ret)
> +		return dev_err_probe(dev, ret, "failed to enable runtime PM\n");
> +
>  	connector =3D drm_bridge_connector_init(drm_dev, encoder);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260612-synopsys-d=
w-dp-improvements-v3-0-dc61e6352508@collabora.com?part=3D8

