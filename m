Return-Path: <devicetree+bounces-326117-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GgmXKfIaVmr3zAAAu9opvQ
	(envelope-from <devicetree+bounces-326117-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 13:18:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F117C753D44
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 13:18:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=XNWU5hcd;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326117-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-326117-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CAF27308CD10
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 11:16:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63E0C37475E;
	Tue, 14 Jul 2026 11:16:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F6B3655EA
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 11:16:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784027801; cv=none; b=P4dDT/yz6tTtVRnP18EoZ0R6FKIuzMnoxzpLwGK8GDP2KNlDt0l59JAyLg2GESdD9WQQIKFwUqeC+KdqcE6K/5WHi94tYcIrOguElIokvu3QG8ITtwdt7bBLgrnPzbAvzSD0SPi/mIMMj0BxsZiHebRfdzMM051arQptApt0/Sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784027801; c=relaxed/simple;
	bh=Z6Y34jKjuSYJSMyRBreQ7f8PcjGfzzNol+FGO+1pqzw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=PvuWN+QOsNaZA7Dx0defPqvAEitHfsJuTtrULEHmI07mbefAdc1pykJz44oe559Mq389ae642flWIlrpPpENpprKTH9jCm+BT5lDltW7T9Q2LnYAEzkFCTKk9S9r5kqyOEwGsv8V4GZjyvwblnNXiQPgyZSF4Ier/17z0fntMdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XNWU5hcd; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53ED11F000E9;
	Tue, 14 Jul 2026 11:16:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784027799;
	bh=oSD4Ijah9FPQnpFsXPHGC+3xDrLWI131nmYNXRf2k30=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=XNWU5hcdYIiy7MCgWaM27Nc/1xkAjjsTSBA8Rh85ON2QatM+IaYvPlhG4m5Dc7wEe
	 hERuii3QOMm2HlWQkb1lHcxMZ4IqiFd+cEbaEWuQ2EVSex8IyRpstRCB6uxJLWiLfG
	 wv8W2ZElsYFI+NqTgEmf/CtHf/qYcZjra0NRq+HbDE5r6o/5yZWOq5PKK/Pfni25aL
	 DRBdRI9p/6Gwiq87jSmuNxAY4xcnR7o/8kdelYQred+ieCpMzBKKIjSDalzFGdUN5C
	 lQlQFeze7g0DoRdc4JQ2QGMimdUA+M2ivJoMBmlewsg5fa/lZhcuUiOKYXwv3Y8WZ9
	 6f/gy6CO8ikaA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v16 2/2] drm/bridge: Add Lontium LT7911EXC eDP to MIPI
 DSI bridge
Reply-To: sashiko-reviews@lists.linux.dev
To: syyang@lontium.com
Cc: robh@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260714105828.2763677-3-syyang@lontium.com>
References: <20260714105828.2763677-1-syyang@lontium.com>
 <20260714105828.2763677-3-syyang@lontium.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 11:16:38 +0000
Message-Id: <20260714111639.53ED11F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-326117-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lontium.com:email,sashiko.dev:url,lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,bridge.dev:url];
	FORGED_RECIPIENTS(0.00)[m:syyang@lontium.com,m:robh@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F117C753D44

Thank you for your contribution! Sashiko AI review found 5 potential issue(=
s) to consider:
- [High] Dynamic devm allocation and bridge registration in DSI host attach=
/detach causes devres leaks and list corruption.
- [High] Asynchronous workqueue dereferences dangling `bridge.dev` if the D=
RM display controller unbinds.
- [Medium] Failure to clear `output_bridge` in `dsi_host_detach` prevents p=
anel re-attachment.
- [Low] Mutating `pre_enable_prev_first` of a downstream bridge object viol=
ates subsystem API layering.
- [Low] Unsynchronized reads of `lt7911exc->removed` in the asynchronous wo=
rkqueue.
--

--- Patch [2]: [PATCH v16 2/2] drm/bridge: Add Lontium LT7911EXC eDP to MIP=
I DSI bridge ---
commit f0896e2dbabe50d3cbe793868df9c6d4afd6db5f
Author: Sunyun Yang <syyang@lontium.com>

drm/bridge: Add Lontium LT7911EXC eDP to MIPI DSI bridge

This commit adds support for the Lontium LT7911EXC bridge chip, which=20
converts eDP input to MIPI DSI output. It implements firmware upgrades,=20
GPIO reset handling, and DSI host interface attachment.

> diff --git a/drivers/gpu/drm/bridge/lontium-lt7911exc.c b/drivers/gpu/drm=
/bridge/lontium-lt7911exc.c
> new file mode 100644
> --- /dev/null
> +++ b/drivers/gpu/drm/bridge/lontium-lt7911exc.c

[ ... ]

> @@ -344,14 +344,14 @@ static void lt7911exc_firmware_upgrade_work(struct =
work_struct *work)
> +{
> +	struct lt7911exc *lt7911exc =3D container_of(work, struct lt7911exc, wo=
rk);
> +	struct device *dev =3D lt7911exc->dev;
> +	const struct firmware *fw;
> +	u8 *buffer;
> +	size_t total_size =3D FW_SIZE - 4;
> +	u32 crc32, version;
> +	int ret;
> +
> +	mutex_lock(&lt7911exc->upgrade_lock);
> +	if (lt7911exc->removed)

[Severity: Low]
Should this read of the removed flag be protected by the ocm_lock? It
appears this can be evaluated concurrently with driver removal since the
lock isn't held here.

> +		goto out_unlock_upgrade;
> +

[ ... ]

> +out_unlock_upgrade:
> +	scoped_guard(mutex, &lt7911exc->ocm_lock) {
> +		if (!lt7911exc->removed)
> +			lt7911exc->upgrade =3D false;
> +	}
> +
> +	/* Notify DRM to re-trigger modeset after firmware upgrade */
> +	if (!lt7911exc->removed && lt7911exc->bridge.dev)
> +		drm_kms_helper_hotplug_event(lt7911exc->bridge.dev);

[Severity: High]
Could this dereference a freed drm_device if the upstream DRM display
controller unbinds before the firmware upgrade completes?

The I2C device has a lifecycle independent of the DRM display controller.
If the upstream DRM driver is unloaded, the drm_device is destroyed, but
the I2C device remains, leaving bridge.dev populated but dangling.

If a sysfs write triggers this asynchronous workqueue in that window,
it looks like it will pass a freed pointer to drm_kms_helper_hotplug_event(=
).

> +
> +	mutex_unlock(&lt7911exc->upgrade_lock);
> +}

[ ... ]

> +static int lt7911exc_dsi_host_attach(struct mipi_dsi_host *host, struct =
mipi_dsi_device *dev)
> +{
> +	struct lt7911exc *lt7911exc =3D dsi_host_to_lt7911exc(host);
> +	struct drm_bridge *bridge;
> +
> +	/* currently do not support connecting several DSI devices to the same =
host */
> +	if (lt7911exc->output_bridge)
> +		return -EBUSY;
> +
> +	if (dev->lanes > 4) {
> +		dev_err(lt7911exc->dev, "unsupported number of data lanes(%u)\n", dev-=
>lanes);
> +		return -EINVAL;
> +	}
> +
> +	bridge =3D devm_drm_of_get_bridge(lt7911exc->dev, host->dev->of_node, 1=
, 0);

[Severity: High]
Is it safe to dynamically allocate devm memory during panel attach?

If the downstream panel driver is repeatedly unbound and rebound by a
local administrator, this will repeatedly allocate devres memory without
freeing it, causing a memory leak.

> +	if (IS_ERR(bridge)) {
> +		dev_err(lt7911exc->dev, "failed to add DSI device\n");
> +		return PTR_ERR(bridge);
> +	}
> +
> +	lt7911exc->output_bridge =3D bridge;
> +
> +	/*
> +	 * Force panel-first enable order: the DSI output stream (0xe0b0)
> +	 * must not be enabled before the panel is powered on.
> +	 * This override is safe because LT7911EXC's transfer() is a stub =E2=
=80=94
> +	 * panel DCS commands are silently discarded and panel init is done
> +	 * by the chip's internal firmware. The panel driver's
> +	 * prepare_prev_first preference is therefore irrelevant here.
> +	 */
> +	lt7911exc->output_bridge->pre_enable_prev_first =3D false;

[Severity: Low]
Is it acceptable to modify the state of a downstream bridge object
that is owned and managed by another driver? Doing so bypasses the
subsystem API layering.

> +
> +	drm_bridge_add(&lt7911exc->bridge);

[Severity: High]
Does this corrupt the global bridge list if the panel driver is rebound?

When the downstream panel unbinds, lt7911exc_dsi_host_detach() calls
drm_bridge_remove(), which moves the bridge to the bridge_lingering_list
and destroys its mutexes.

If the panel binds again, this drm_bridge_add() will be called on the same
bridge structure, invoking list_add_tail() on a node that is already tracked
in the lingering list.

> +
> +	return 0;
> +}
> +
> +static int lt7911exc_dsi_host_detach(struct mipi_dsi_host *host, struct =
mipi_dsi_device *dev)
> +{
> +	struct lt7911exc *lt7911exc =3D dsi_host_to_lt7911exc(host);
> +
> +	drm_bridge_remove(&lt7911exc->bridge);

[Severity: Medium]
Does this prevent the panel from re-attaching later?

The detach function does not set lt7911exc->output_bridge back to NULL.
If the downstream panel driver tries to attach again,
lt7911exc_dsi_host_attach() will check if output_bridge is set and return
-EBUSY, leaving the display pipeline permanently broken until the bridge
driver is reloaded.

> +
> +	return 0;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714105828.2763=
677-1-syyang@lontium.com?part=3D2

