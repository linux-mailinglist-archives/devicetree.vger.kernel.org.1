Return-Path: <devicetree+bounces-318964-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5OdqL6eqRWp/DgsAu9opvQ
	(envelope-from <devicetree+bounces-318964-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 02:02:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C11CA6F2881
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 02:02:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Ii5Q4Sr9;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318964-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318964-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4021530382B6
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 00:00:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C69E364049;
	Thu,  2 Jul 2026 00:00:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA603612D5
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 00:00:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782950427; cv=none; b=n6CjFmq3mKA/s3PLCF/B5Bo7MuZjKg2DZL4GewO7vOToSt4mDvc0F3FR59KRJBtSNDq9J3qGdcVVfDmBfb/lK8Y4EidJeM/7q2xUKYu9yd5pN1UpH7ENgt4sXzU6w1EX7oJldXqeZYL7oVrd58FDQP+vpphviWs+Zur55OeBQXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782950427; c=relaxed/simple;
	bh=ZSY/NZVmKWtAWhaWC9ICQrjx9AZZud9eMm01rtCIndE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=UUtQn448BepjVgApO0vCb2gm7N20FZmovO5S1xtWKQMlA8i6+IcthYsDqSnp0wwiXiIww0pZsD6dP9GRlIZP/vP/KZIm2n0694hwkUxYcvrKwL0nK7WJ1p/++zZmbT3LDSMcmuFIU1PNBXZpBtfdkGqtqPNVvWoVvr7zPR6NOTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ii5Q4Sr9; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31AA81F000E9;
	Thu,  2 Jul 2026 00:00:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782950425;
	bh=ZSY/NZVmKWtAWhaWC9ICQrjx9AZZud9eMm01rtCIndE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Ii5Q4Sr9mZl2ZCbXmrqBHjlGCY5x/CmhIoJTBr+0cXgcSX8AoTxHyMloqHV5IgYeD
	 9Y7QT0zxbaVfNKi/OApKOqUTac/vJMkOXUV9I8/J5rvsfJ3YisLJ37Db7mrdzlXpC+
	 10dMl9l0e0GQzVmff0CaIJl4cdHZN407b52Fj6PDQUK3HshKiwn5BmkSegJ7xgk/en
	 RfUlH+8Ldo5NwK8ADixl7CQcIdON+5dPR6r9eBxHGM3NE42KhI3ZJrKMSfDzK2zGlh
	 OT10oyo4FYEWIsXNLvVzyytFFAdzzbGfN3TVZqTfxvNqwOfhBI0q8v13jb9h4aoaPj
	 p7uJR9+VBP8GA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 18/38] phy: rockchip: usbdp: Drop DP HPD handling
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org, olteanv@gmail.com, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260702-rockchip-usbdp-cleanup-v9-18-e31efbb62d2e@collabora.com>
References: <20260702-rockchip-usbdp-cleanup-v9-0-e31efbb62d2e@collabora.com>
 <20260702-rockchip-usbdp-cleanup-v9-18-e31efbb62d2e@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 00:00:24 +0000
Message-Id: <20260702000025.31AA81F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-318964-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:neil.armstrong@linaro.org,m:vkoul@kernel.org,m:olteanv@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,linaro.org,kernel.org,gmail.com];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,lists.linux.dev:replyto,vger.kernel.org:from_smtp,collabora.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C11CA6F2881

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Incomplete cleanup of DP HPD logic leaves a dangerous register wri=
te in the probe path, violating power domain constraints and risking a bus =
hang (SError).
--

Note: The format of this report has been altered to a free-form summary due
to restrictions on quoting the original patch code.

Commit: 985925db83ee1c14865f1eaca6f60b9245941678
Author: Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: phy: rockchip: usbdp: Drop DP HPD handling

This commit drops the HPD handling logic from the USBDP PHY driver. The
commit message notes that the registers involved require the display
controller power domain to be enabled, and that HPD should be handled
by the displayport controller itself.

[Severity: High]

This is a pre-existing issue, but it appears the cleanup of the DP HPD logic
might be incomplete, leaving a potentially dangerous register write in the
probe path.

In rk_udphy_get_initial_status() in drivers/phy/rockchip/phy-rockchip-usbdp=
.c,
there is a check to see if the DP PHY was pre-enabled by the bootloader. If
it was, the driver writes false to the hpd_trigger register via
rk_udphy_grfreg_write() and then sleeps for 100ms.

Since the commit message explicitly acknowledges that these registers requi=
re
the display controller (VOP) power domain to be enabled, does this write
violate those power domain constraints?=20

If the kernel disables the VOP power domain before this driver probes (for
example, due to asynchronous probing and the display driver suspending or
resetting its PM domain), could this write to hpd_trigger cause an
asynchronous abort (SError) and a subsequent kernel panic during boot?

Would it make sense to remove this remaining HPD trigger write in the initi=
al
status check as well, to fully decouple the PHY driver from the display
controller power domain?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260702-rockchip-u=
sbdp-cleanup-v9-0-e31efbb62d2e@collabora.com?part=3D18

