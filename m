Return-Path: <devicetree+bounces-304943-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kLcgKfcyHWoqWQkAu9opvQ
	(envelope-from <devicetree+bounces-304943-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 09:21:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E34DC61ACC6
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 09:21:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 74DD2301A3A5
	for <lists+devicetree@lfdr.de>; Mon,  1 Jun 2026 07:11:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E19F383325;
	Mon,  1 Jun 2026 07:11:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mR2xBMiC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF1E9258EC1
	for <devicetree@vger.kernel.org>; Mon,  1 Jun 2026 07:11:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780297865; cv=none; b=CM2c/Jd3AJ6M1QynDCXlLVoWnY+o8kKBS5jikSJLTaoFUZgYgY/Pjj1vz/9MBCDWkWSYcq73dAV/1+lWhYSLyKI2LFJlfTwyMm3Kbchal2pASb9j8lqT+MTBruvXlYX+cXPr/oql2zGkVtvhqDbj0DzMk0mGu7cJQL9nT9Ddz4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780297865; c=relaxed/simple;
	bh=vE/wzzQrJi32hd9cv9AjZNgU8J7BFn+3dw808wHFarQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=CGc1XY9W2ujN2y39BGV3tNHnQhZZs4oHApCXheWjD54owOz5U7RONfjICx83KM20TAtVFbn2dTMWe5arFUzuHS9A/x5bWW+N1xekC5FWefzvfelMw4P7l69+lqzyt2EeyiWZ8KO+sQriEpeyMw+t4QlGDqcbj3CyBSO1iGKJM9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mR2xBMiC; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE7C81F00893;
	Mon,  1 Jun 2026 07:11:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780297864;
	bh=x+WlBtt88x3iThS3KCXYYiNBfa23OtsVRyrmlfNzaMM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mR2xBMiCT66mpVi0QdKaj7LotraJmREioSipxv/4dls95HTml/M2fNO1fB9lvdx0J
	 UYqLkb6IkuntQDNfqhaHnUo0Aj6JF9eJg5N1ydMlR0Wr6bHBx4FHgtLBTph5BX4mIy
	 VYkqeONkzpLWb/bpGQs7r9nPvTpxV+42FdAhSEBacfKRwgF+q91oCED90RJHFHdnD3
	 f17g0lhd/0mseKQltg2Fus36TuOICM5xvaC57bHwfDcgxawQ/DDos8Y/3HQdR4vwOL
	 Q8yF23V7MIHjiXrl351k7acjDAd+uroci2o28JiYPBYhovX3cKSYTUXhyzQD/zgdiW
	 4fEroBVAbOW4A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 06/11] drm/rockchip: analogix_dp: Fix OF node
 reference leak via auto cleanup
Reply-To: sashiko-reviews@lists.linux.dev
To: "Damon Ding" <damon.ding@rock-chips.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260601065100.1103873-7-damon.ding@rock-chips.com>
References: <20260601065100.1103873-7-damon.ding@rock-chips.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 01 Jun 2026 07:11:03 +0000
Message-Id: <20260601071103.BE7C81F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
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
	TAGGED_FROM(0.00)[bounces-304943-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,rock-chips.com:email,sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: E34DC61ACC6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Stack buffer overflow caused by formatting an unbounded device tre=
e node name into a fixed-size array, with the resulting string being comple=
tely unused.
- [High] Uninitialized variable `port_id` is read if `of_property_read_u32(=
)` fails.
- [High] `drm_of_encoder_active_endpoint` returns an endpoint structure con=
taining a dangling device_node pointer, causing a Use-After-Free.
- [High] The function calls `clk_prepare_enable()` and `clk_disable_unprepa=
re()`, which can sleep, from within an atomic context.
--

commit 64019e228c078284dbae98e48cc02de08453152c
Author: Damon Ding <damon.ding@rock-chips.com>

drm/rockchip: analogix_dp: Fix OF node reference leak via auto cleanup

This patch converts the device node reference management in
rockchip_dp_drm_encoder_enable() to use the __free(device_node)
auto-cleanup helper. It aims to fix a reference leak where
of_node_put() was missed in early return paths.

Link: https://sashiko.dev/#/patchset/20260527024336.191433-1-damon.ding@roc=
k-chips.com?part=3D5 #1

> diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gp=
u/drm/rockchip/analogix_dp-rockchip.c
> --- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> @@ -206,7 +207,6 @@ static void rockchip_dp_drm_encoder_enable(struct drm=
_encoder *encoder,

[Severity: High]
This is a pre-existing issue, but does this function call sleeping functions
from an atomic context?

As the atomic_enable callback for the DRM encoder, this executes in an atom=
ic
context where sleeping is forbidden. However, rockchip_dp_drm_encoder_enabl=
e()
calls clk_prepare_enable() and clk_disable_unprepare(). Both clock APIs
acquire a mutex internally and can sleep, which could cause kernel warnings
or deadlocks.

>  	struct drm_crtc *crtc;
>  	struct drm_crtc_state *old_crtc_state;
>  	struct of_endpoint endpoint;

[ ... ]

> @@ -230,18 +230,22 @@ static void rockchip_dp_drm_encoder_enable(struct d=
rm_encoder *encoder,
>  	if (ret < 0)
>  		return;
> =20
> -	remote_port_parent =3D of_graph_get_remote_port_parent(endpoint.local_n=
ode);
> +	struct device_node *remote_port_parent __free(device_node) =3D
> +		of_graph_get_remote_port_parent(endpoint.local_node);

[Severity: High]
This isn't a bug introduced by this patch, but does the earlier call to
drm_of_encoder_active_endpoint() leave endpoint.local_node as a dangling
pointer?

Looking at drm_of_encoder_active_endpoint(), it parses the endpoint and
drops the reference before returning:

    ret =3D of_graph_parse_endpoint(ep, endpoint);
    of_node_put(ep);
    return ret;

When we pass endpoint.local_node to of_graph_get_remote_port_parent() here,
could this result in a use-after-free since the node's reference count was
already decremented?

>  	if (remote_port_parent) {
> -		if (of_get_child_by_name(remote_port_parent, "ports")) {
> -			remote_port =3D of_graph_get_remote_port(endpoint.local_node);
> +		struct device_node *ports __free(device_node) =3D
> +			of_get_child_by_name(remote_port_parent, "ports");
> +
> +		if (ports) {
> +			struct device_node *remote_port __free(device_node) =3D
> +				of_graph_get_remote_port(endpoint.local_node);
> +
>  			of_property_read_u32(remote_port, "reg", &port_id);

[Severity: High]
This is a pre-existing issue, but can port_id be left uninitialized if
of_property_read_u32() fails?

The port_id variable is declared on the stack without initialization. If the
"reg" property is missing or remote_port is NULL, port_id is never updated.

> -			of_node_put(remote_port);
>  			sprintf(name, "%s vp%d", remote_port_parent->full_name, port_id);

[Severity: High]
This isn't a bug introduced by this patch, but does this sprintf() write
potentially unbounded string data into the 32-byte name array?

Device tree node names (like remote_port_parent->full_name) can exceed 32
characters, which would cause a stack buffer overflow. Additionally, if
port_id was left uninitialized in the previous call, random integers could
be appended here.

Furthermore, is the populated name buffer ever used? The subsequent debug
print ignores it entirely:

    DRM_DEV_DEBUG(dp->dev, "vop %s output to dp\n", (ret) ? "LIT" : "BIG");

Can this sprintf() and the name array be removed entirely?

>  		} else {
>  			sprintf(name, "%s %s",
>  				remote_port_parent->full_name, endpoint.id ? "vopl" : "vopb");
>  		}
> -		of_node_put(remote_port_parent);
> =20
>  		DRM_DEV_DEBUG(dp->dev, "vop %s output to dp\n", (ret) ? "LIT" : "BIG");
>  	}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260601065100.1103=
873-1-damon.ding@rock-chips.com?part=3D6

