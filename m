Return-Path: <devicetree+bounces-305651-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8u8zLLLTHmotVgAAu9opvQ
	(envelope-from <devicetree+bounces-305651-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 14:59:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F27762E3A9
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 14:59:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Q2aKHBxX;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305651-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-305651-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 59167304E401
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 12:58:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 249B123BCED;
	Tue,  2 Jun 2026 12:58:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A5BA30E82D
	for <devicetree@vger.kernel.org>; Tue,  2 Jun 2026 12:58:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780405129; cv=none; b=P9xb5j10QbpkqRHdHv80dXYEqHuWr2sayjX8raqRK3d/oUWZ3h8Xba+t7+y4ZUsK8dttzob96fpX18xTYkdncM0EF4rpikEp/LxraPWqcwnLoNVE7n8FpFE3VzIySj1HGHDXvptIwNKfB/rWGDVJEJslWEWN+AHTU2lGyWiU6cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780405129; c=relaxed/simple;
	bh=ZU1RXpehFwrLytNSRem6haBiWYJ/F5BFs4KuU6JDuPQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=YTrKZZNT4fkK1WCXpr0r89sOAbwdx8da4tXvndcOwA5RYfGBVmSXJLHxwt9vevBWGgNbFsaNcxs79MkVWS/PGgOvdqmjWDb+K0hDeTmSj1qxi7P6ATnaEGmNmNWD+tqqOxN4WRaif6aAbAESp+PpYuZBA2BDnlSMMY1e1dmVKos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q2aKHBxX; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6274D1F00893;
	Tue,  2 Jun 2026 12:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780405127;
	bh=tyWyWjcmgMqoUWyIwhzetYQVi4eG0lA9lX2DUMR+J04=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Q2aKHBxX7QPPIPdpg2tH0wUsJO+gR3t7bV5OWdub+bZjw5zlbr8+dHQH+z6c/Ph03
	 5EwAm0hkwZdx5XzcD7Z8FLps/pSrlB+rynlcyzfhtHdRGBY3bWILVhB8SJgcw/s/PW
	 4c4ULhXU+08kxC/vanqf1wwAT9WK566U8PebVNKYeKBEyZdvMe4qisPj6BVPzW43Rz
	 TpYDiQQNL0MY6il/0YlnGGHniN5KKu6qW6caHFOvi+3D5n6DuNkIHkmvDz8lM04lGA
	 dA7HydFsSMXZmITTn6Rb+p5393D/+iNW1BrNG+1bwm3gjMBGF90cZHIWyD73PcynRH
	 wOg1tSjxbKq0A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 4/5] ASoC: rockchip: spdif: Restore regcache
 cache-only mode on sync failure
Reply-To: sashiko-reviews@lists.linux.dev
To: phucduc.bui@gmail.com
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260602101608.45137-5-phucduc.bui@gmail.com>
References: <20260602101608.45137-5-phucduc.bui@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 02 Jun 2026 12:58:46 +0000
Message-Id: <20260602125847.6274D1F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-305651-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:phucduc.bui@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:phucducbui@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sashiko.dev:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1F27762E3A9

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The error paths in `i2s_runtime_resume`, `i2s_tdm_runtime_resume`,=
 and `rockchip_sai_runtime_resume` fail to restore `regcache_cache_only(...=
, true)` when `regcache_sync()` fails.
- [High] The regmap is initialized with `cache_only =3D false` but the devi=
ce is placed in `RPM_SUSPENDED` state at probe completion without setting `=
cache_only =3D true`.
--

commit 92568295e5eeb9d7ffb897ac4754fcc60c989c10
Author: bui duc phuc <phucduc.bui@gmail.com>

ASoC: rockchip: spdif: Restore regcache cache-only mode on sync failure

If regcache_sync() fails during runtime resume, the driver disables the
clocks and returns an error. This restores cache-only mode in the error
path so subsequent register accesses continue to use the cache while the
device is inactive.

Reported-by: Sashiko AI Review <sashiko-bot@kernel.org>
Closes: https://lore.kernel.org/all/20260522103713.6C09D1F000E9@smtp.kernel=
.org/

> diff --git a/sound/soc/rockchip/rockchip_spdif.c b/sound/soc/rockchip/roc=
kchip_spdif.c
> --- a/sound/soc/rockchip/rockchip_spdif.c
> +++ b/sound/soc/rockchip/rockchip_spdif.c
> @@ -94,6 +94,7 @@ static int rk_spdif_runtime_resume(struct device *dev)
> =20
>  	ret =3D regcache_sync(spdif->regmap);
>  	if (ret) {
> +		regcache_cache_only(spdif->regmap, true);
>  		clk_disable_unprepare(spdif->mclk);
>  		clk_disable_unprepare(spdif->hclk);
>  	}

[Severity: High]
This isn't a bug introduced by this patch, but while this change fixes the
issue in rockchip_spdif.c, the exact same error path exists in other
Rockchip ASoC drivers.

For example, in sound/soc/rockchip/rockchip_i2s.c:i2s_runtime_resume():

    ret =3D regcache_sync(i2s->regmap);
    if (ret)
        clk_disable_unprepare(i2s->mclk);

Because the error path drops the device back to the suspended state
without restoring cache-only mode, subsequent regmap accesses (like
reading from debugfs /sys/kernel/debug/regmap/) will bypass the -EBUSY
check in _regmap_read() and attempt to read directly from memory-mapped
registers. Accessing registers in a powered-off domain causes the AHB bus
to hang, resulting in an imprecise external abort and kernel panic.

Similar paths exist in rockchip_i2s_tdm.c:i2s_tdm_runtime_resume() and
rockchip_sai.c:rockchip_sai_runtime_resume(). Should these drivers be
updated as well to fully resolve the issue across the subsystem?

[Severity: High]
This is also a pre-existing issue, but does rk_spdif_probe() leave the
device exposed to a similar abort before the first resume?

In sound/soc/rockchip/rockchip_spdif.c:rk_spdif_probe():

    devm_pm_runtime_enable(&pdev->dev);

    if (!pm_runtime_enabled(&pdev->dev)) {

The regmap is initialized with cache_only =3D false by default. When runtime
PM is enabled, the device is placed in the RPM_SUSPENDED state and the
hardware power domain can be powered off.

Because config->pm_runtime is not set to true in the regmap configuration,
if a regmap read occurs (e.g., via debugfs) before the device is first
resumed via ALSA, wouldn't regmap attempt to read physical registers while
the power domain is off? Should rk_spdif_probe() explicitly call
regcache_cache_only(spdif->regmap, true) before completing?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260602101608.4513=
7-1-phucduc.bui@gmail.com?part=3D4

