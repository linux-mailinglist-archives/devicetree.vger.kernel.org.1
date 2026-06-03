Return-Path: <devicetree+bounces-306235-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Cgl6OJcnIGorxwAAu9opvQ
	(envelope-from <devicetree+bounces-306235-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 15:09:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5487E637E77
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 15:09:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=pm.me header.s=protonmail3 header.b=ajtZWuca;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306235-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306235-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=pm.me;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1A9C0301CA6F
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 13:03:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96053480965;
	Wed,  3 Jun 2026 13:03:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-10629.protonmail.ch (mail-10629.protonmail.ch [79.135.106.29])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3788E477990
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 13:03:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780491800; cv=none; b=hFouj64ZXqsUkv/rrP6GMmiV3JJZzqNwbMj5iG+lNWAV2bMtgdNbJYP5H/zv7eBDgP5g4d6YEUrZs7Kxde8ArLAuf85e9osAIcecaT3CqQmi19EJVOJsTV6DOg+iW8GKCTNx04Q3jqYvbSyAVdSA2O4aMaI28H+nxfNLPMnL/lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780491800; c=relaxed/simple;
	bh=6UMsobXCw/eeeiTcDryt7GWsTtPXkHVN9I9JSawDq/s=;
	h=Date:To:From:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=Xjf5a96Xy5d1Yg6Rdl8463DRb2Z3N0CtYwoV0j5hAlvPbIhnVu2U/YvYxiOKYlyHFDZxDPdvbDZ69NVNpVNiEpBnmuddf/+M9DU/LZbnec8UZcW2mslh/OX1f3XLt3u3I/g2hZpZmLoG9OzX17h14V1FBgePRYk0pV0C8s6AMOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=ajtZWuca; arc=none smtp.client-ip=79.135.106.29
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1780491791; x=1780750991;
	bh=ozjq0z6xun0KKQNe4TBrfS/xRvkX1S9573CAfKsaYgM=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=ajtZWucabQ3/6F76/L5cGADu+qNYhPSzgJ6r2oXLN5U1xLhPzWNmRPG//SaGxpt6J
	 DDuMn5VhTZqeQ06b0aMHqozbqfnuFJvp8bcSgiZvbHnh9ctOIl8gXgvoLFq2HkbKLw
	 8QwxfnZZKNFQp4G3AMCX6wBEXOYixLzXiGvwrUo81rH0h0U7IUoPVbrelZX6VaPyLf
	 HzPnrXoetgjWwzRDcEPXxz3Z1uuodn2jFc5GaUfn6iyE5ASKJmJXwLIlzE8++BI6QG
	 aRC7cRoHssxb7ZoifxKHCOHk7PA/E3heuDGzU4oSMcvjl5PKdAEfTKsQ5Pneh1ka1O
	 jvUokaTZkXZ5Q==
Date: Wed, 03 Jun 2026 13:03:03 +0000
To: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <jesszhan0024@gmail.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
From: Alexander Koskovich <akoskovich@pm.me>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Alexander Koskovich <akoskovich@pm.me>
Subject: [PATCH 0/2] Add support for the BOE BF068MWM-TD0
Message-ID: <20260603-asteroids-panel-support-v1-0-109c6ac81c8f@pm.me>
Feedback-ID: 37836894:user:proton
X-Pm-Message-ID: 79248a0368e3d671c92455c05a409bb24fe6e20b
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:neil.armstrong@linaro.org,m:jesszhan0024@gmail.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:akoskovich@pm.me,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-306235-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de];
	FORGED_SENDER(0.00)[akoskovich@pm.me,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akoskovich@pm.me,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[pm.me:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,pm.me:mid,pm.me:dkim,pm.me:from_mime,pm.me:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5487E637E77

Add the bindings and driver for the BOE BF068MWM-TD0 panel used in the Noth=
ing
Phone (3a).

This series depends on support for DSC configurations with slice_per_pkt > =
1,
technically it boots up and displays stuff without it but you see artifacti=
ng
without it:
https://lore.kernel.org/linux-arm-msm/20260318-dsi-dsc-slice-per-pkt-v2-0-0=
a1b316f8250@pm.me

Signed-off-by: Alexander Koskovich <akoskovich@pm.me>
---
Alexander Koskovich (2):
      dt-bindings: display: panel: Document BOE BF068MWM-TD0
      drm/panel: Add BOE BF068MWM-TD0 panel driver

 .../bindings/display/panel/boe,bf068mwm-td0.yaml   |  77 ++++
 MAINTAINERS                                        |   6 +
 drivers/gpu/drm/panel/Kconfig                      |  11 +
 drivers/gpu/drm/panel/Makefile                     |   1 +
 drivers/gpu/drm/panel/panel-boe-bf068mwm-td0.c     | 432 +++++++++++++++++=
++++
 5 files changed, 527 insertions(+)
---
base-commit: 15a038bc8d93f92c80d9ba6844d4f16333234f39
change-id: 20260603-asteroids-panel-support-d55c929a89a8

Best regards,
--=20
Alexander Koskovich <akoskovich@pm.me>



