Return-Path: <devicetree+bounces-306715-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 90GFNWRDIWrACAEAu9opvQ
	(envelope-from <devicetree+bounces-306715-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 11:20:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE2063E77B
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 11:20:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=SUcrUcIE;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306715-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306715-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 120A231345FF
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 09:12:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EF9B3FC5B8;
	Thu,  4 Jun 2026 09:09:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04D713FCB1A
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 09:09:35 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780564177; cv=none; b=YSxT/AlqNg8+9StS3R8RoJYTiZG3YzWOXeVg5h9tG7huk7+eYJp0hhjH4BP6acxIXs/Dd7nq8qiWxYUUsiZiBqxoHllzjjni2aIBcuAbIKXaT+crfnJU39cJjoWLrwFr1139Mw4GOUwAf15C9xcROcRTOYCXTw7C1G2uDG2b5jE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780564177; c=relaxed/simple;
	bh=sUt77q4rsUWneScF9rv4cJv9Eg91jtFbLF1ktxnBaRg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=mQ7EpYJjfcbD2yuPnz+5BR8O42uLx7JRskkpcHU4E1wVIAejvSFSqYAD4aO2ShjEfHUQOzXupOzSEyAJmW/MFE+mhBZQHDXDN3VuBCLZSuA78w/Z+nYXSPJK9icJEXGtq8472UVhFzpRLRF80ZmC0stJGI2jxOex7budiToU588=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SUcrUcIE; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FC051F00898;
	Thu,  4 Jun 2026 09:09:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780564175;
	bh=3q579KPuijB082EPKTTXXCUaljELE9Y08YI1IIAXBtI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=SUcrUcIESqoXk75PIHzUgNFz+LZthwlmpYIaGWcTgmmbuqdCXZ9GnN0HxNVHwKRXV
	 f+1zevLQMM8dIiSrUx9xAtvCpA67nT/GnhrCYFQ55USxlvkgZJE2fNseKtwfqAO8eB
	 KNHYErba5Mbq0C3alpl9BvZWdUFCWd8PtWvbq94F3JWL5ZcJzNQReVXGQUsqIES+ES
	 CCeo754lej5T0WjuKuaQNferkHEyvCsh/V1dv/OfgCWmtjoK16iQx8JuEL1ix7VbAz
	 RQnbf5GMvrWa23DmDVahIGZQLsi4UXdEKyitC0cbMDtlnViUWWagd2KZLrYQVYlthl
	 wPE7YZCti/2lw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 3/4] drm/bridge: analogix_dp: Add validation for
 samsung,lane-count property
Reply-To: sashiko-reviews@lists.linux.dev
To: "Damon Ding" <damon.ding@rock-chips.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, dri-devel@lists.freedesktop.org
In-Reply-To: <20260604085220.2862986-4-damon.ding@rock-chips.com>
References: <20260604085220.2862986-4-damon.ding@rock-chips.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 Jun 2026 09:09:35 +0000
Message-Id: <20260604090935.7FC051F00898@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-306715-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,rock-chips.com:email,sashiko.dev:url,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FORGED_RECIPIENTS(0.00)[m:damon.ding@rock-chips.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2DE2063E77B

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

New issues:
- [High] The patch makes the deprecated and optional `samsung,lane-count` p=
roperty a strict requirement, causing an unconditional probe failure if it =
is omitted.

Pre-existing issues:
- [High] Missing handling for absent DT properties causes lane count and li=
nk rate to be incorrectly clamped to 0, breaking link training.
--

commit 65a66d32582ccfce55e0e84f53bc63077d25103c
Author: Damon Ding <damon.ding@rock-chips.com>

drm/bridge: analogix_dp: Add validation for samsung,lane-count property

Add validity check for samsung,lane-count to ensure DT-provided
lane count values are specification-compliant.

> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers=
/gpu/drm/bridge/analogix/analogix_dp_core.c
> index 8cf6b73bceac0..f23c2ae6e10d0 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
[ ... ]
> @@ -1260,8 +1261,11 @@ static int analogix_dp_dt_parse_pdata(struct analo=
gix_dp_device *dp)
>  		 */
>  		of_property_read_u32(dp_node, "samsung,link-rate",
>  				     &video_info->max_link_rate);
> -		of_property_read_u32(dp_node, "samsung,lane-count",
> -				     &video_info->max_lane_count);
> +		ret =3D of_property_read_u32(dp_node, "samsung,lane-count",
> +					   &video_info->max_lane_count);
> +		if (ret || !drm_dp_lane_count_is_valid(video_info->max_lane_count))
> +			return dev_err_probe(dp->dev, ret ? ret : -EINVAL,
> +					     "failed to parse samsung,lane-count\n");

[Severity: High]
Does this make the optional and deprecated samsung,lane-count property a
strict requirement?

If samsung,lane-count is absent from the device tree, of_property_read_u32()
returns -EINVAL. This causes the condition to evaluate to true, aborting the
probe with an error.

According to the device tree bindings
(Documentation/devicetree/bindings/display/samsung/samsung,exynos5-dp.yaml),
this property is marked as deprecated and explicitly optional because the
lane count can be read from the monitor. Does this patch break compatibility
with device trees that rightfully omit this deprecated property?

[Severity: High]
This is a pre-existing issue, but there is an underlying problem in
analogix_dp_full_link_train() when these optional properties are omitted:

analogix_dp_full_link_train() {
    ...
	/* Setup TX lane count & rate */
	if (dp->link_train.lane_count > max_lanes)
		dp->link_train.lane_count =3D max_lanes;
	if (dp->link_train.link_rate > max_rate)
		dp->link_train.link_rate =3D max_rate;
    ...
}

If the deprecated samsung,lane-count or samsung,link-rate properties are
rightfully omitted from the device tree, their corresponding limits remain =
0.

The driver then executes the above clamp logic, which incorrectly clamps the
valid DPCD values to 0. This completely breaks DP link training and results
in a non-functional display.

Should the driver ignore the limits if they are 0 (e.g., checking if
max_lanes is non-zero before clamping), allowing it to correctly fall back
to the monitor's DPCD capabilities? Fixing the probe failure above will
just expose this runtime breakage.

>  		break;
>  	}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260604085220.2862=
986-1-damon.ding@rock-chips.com?part=3D3

