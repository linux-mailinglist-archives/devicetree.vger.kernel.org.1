Return-Path: <devicetree+bounces-323207-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TTpPCDLKTmqsUAIAu9opvQ
	(envelope-from <devicetree+bounces-323207-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 00:07:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8362472AC7F
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 00:07:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="JOVleI/Q";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323207-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323207-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EE62A30374BB
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 22:06:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98A692E4257;
	Wed,  8 Jul 2026 22:06:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78AD8233929
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 22:06:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783548417; cv=none; b=BcrXNCjxuuQKK5yp92aiNRFL2YokHq74S7aDRRN8QzOiSsREuN4biBnLNyFuzBdPN87gYKe4KdpHqEeuxYQxmyGhWiGAo01zl/G2VnCbMG/Ny6OhF0Z/gBwjKhlWmQMjv+iCq9tSw2uP1Zmdw7YxmQk+H1WkOtIgvOSaPjHMBD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783548417; c=relaxed/simple;
	bh=ZiLu5hdy52NPXW4RSTl+YfYDFrvNzUhu4QwCe4aNsvc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=MecKpZfByfuvbRdo050rE7t9kfHw7gIqgQryTKuWd+73mO+l6vMyCbxoBfpK5ogol7qKnRLFiH2QhuaeoGP9mQGEVBffcvGa0wyyd6go1K4yf4V0iSr5d4vaMrpyQYgltqvwJ9J09VxaS3APnywgO+l6U5uHvsVPl81HRUJPmI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOVleI/Q; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B323E1F000E9;
	Wed,  8 Jul 2026 22:06:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783548416;
	bh=WwwQNL4FDTzLpQnrRMiXnMvqOgpuNzzaDKuvB3TpRKE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=JOVleI/QhrbOPXzWWzQ3q8yKPPonhsIIZCaWZlBJ32UoSSFICbqpq4EEhk9e7oxNi
	 5jUf+TUJjEPUr5AlJIuu5ZY46M3PDLvv6eM0aEzXzU2xOHjNLaggN2thq3CPt3PaRB
	 Z8JgBBf9qBaSuwkTZyPeFjLBsNY88KRCYoDaqIK1tZ50SdKi76Zm7E90a6Jid/lYBR
	 A6hGb74qxIlp97SXKv395UXuAMj5SGMI0gqMNlGiE+BT+WhwhhW3XSPZXBk/Ob4P56
	 KuiOe0oPTmGY9MFnl0yumRV8RBxw99WSPqDErB5Z4W/DNJOickm46CP/SrEP9H+HYe
	 MOMeGTX3bpQRA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 06/14] drm/rockchip: vop2: Fix VOP2_MAX_DCLK_RATE
 overflow on 32-bit
Reply-To: sashiko-reviews@lists.linux.dev
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>
Cc: conor+dt@kernel.org, dri-devel@lists.freedesktop.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260709-dw-hdmi-qp-yuv-v3-6-a4a982a9f2e7@collabora.com>
References: <20260709-dw-hdmi-qp-yuv-v3-0-a4a982a9f2e7@collabora.com>
 <20260709-dw-hdmi-qp-yuv-v3-6-a4a982a9f2e7@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 22:06:55 +0000
Message-Id: <20260708220655.B323E1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-323207-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,smtp.kernel.org:mid,collabora.com:email,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:cristian.ciocaltea@collabora.com,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
X-Rspamd-Queue-Id: 8362472AC7F

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The driver calls multiple sleeping functions from CRTC atomic enab=
le, disable, and flush callbacks, violating DRM atomic context rules.
--

--- Patch [6]: [PATCH v3 06/14] drm/rockchip: vop2: Fix VOP2_MAX_DCLK_RATE =
overflow on 32-bit ---
commit 4edf4257240708c6864fcd134b29f53d0456d685
Author: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

drm/rockchip: vop2: Fix VOP2_MAX_DCLK_RATE overflow on 32-bit

VOP2_MAX_DCLK_RATE is defined as an unsigned long and is used scaled by
the color-depth ratio. On 32-bit architectures, this can overflow when
multiplied. This patch changes the constant to unsigned long long to ensure
64-bit arithmetic is used.

Link: https://lore.kernel.org/all/20260623203310.9F8C81F000E9@smtp.kernel.o=
rg/

> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/d=
rm/rockchip/rockchip_drm_vop2.c
> index e9f5d015b6458..2cd04bedaa2c0 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> @@ -102,7 +102,7 @@ enum vop2_afbc_format {
>  	VOP2_AFBC_FMT_INVALID =3D -1,
>  };
> =20
> -#define VOP2_MAX_DCLK_RATE		600000000UL
> +#define VOP2_MAX_DCLK_RATE		600000000ULL

[Severity: High]
This is a pre-existing issue, but I noticed some potential atomic context
violations in this file.

During non-blocking commits, the DRM core invokes CRTC callbacks like
vop2_crtc_atomic_enable(), vop2_crtc_atomic_disable(), and
vop2_crtc_atomic_flush(). These run in an atomic context where sleeping is
strictly forbidden.

However, the driver appears to invoke sleeping functions on these paths.
For example, in vop2_crtc_atomic_enable():

    vop2_lock(vop2);
   =20
    ...
   =20
    ret =3D clk_prepare_enable(vp->dclk);

Similarly, in vop2_crtc_atomic_disable():

    vop2_lock(vop2);

And in the flush path via vop2_crtc_atomic_try_set_gamma_locked():

    vop2_lock(vop2);

Because vop2_lock() acquires a mutex and clk_prepare_enable() can sleep,
does this violate the atomic context requirement and potentially cause syst=
em
instability or deadlocks during display state updates?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709-dw-hdmi-qp=
-yuv-v3-0-a4a982a9f2e7@collabora.com?part=3D6

