Return-Path: <devicetree+bounces-315389-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bBfvChxDPGprlwgAu9opvQ
	(envelope-from <devicetree+bounces-315389-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 22:50:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A7EC66C147F
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 22:50:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=XnjoIst1;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315389-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-315389-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 02F903036E62
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 20:50:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 440003E44EA;
	Wed, 24 Jun 2026 20:50:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABAAD37DAB1;
	Wed, 24 Jun 2026 20:50:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782334217; cv=none; b=eCYkr5/hWVz4ihSN/K4NvVZzNG8/TZGqoE+t9ZYCnZ1KWsmHtwJ446foJo/RoNvFBKJvpi37Jqf6+aBJsxSaWwlr4xdYfY3pZAjBvLqohP11Lq2itEZkTlBClLQeAzcYOLH4sW+H2CC3hiF0mkc3fWtHMBtCYYPlrr6sSx+S5Os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782334217; c=relaxed/simple;
	bh=j0rBgWVUy25YpWKsdpSWYY8GQbofvELkmFArhhiDd6w=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=u2GCV4ZDD6KPmXQ5Baz0C4IPRhpkBul8FyWV7Pm1GYvqBWnuWIDy3PtXNTRZKlWKFRwWm3WaPA+hzibxGpUdT649hS+w5y2W6g7J4tShKjFzCvKc52p/UnuFFjSJkBTFtl1ucG6ohodbfTCoWQw863jz3IZjrSv76bZBZaZgqXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XnjoIst1; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 849AB1F000E9;
	Wed, 24 Jun 2026 20:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782334212;
	bh=sugJ0uNedzcsQzvjSAJ3mfPObD/6hBsKY8i872vDn2E=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=XnjoIst1jxNKHyXp18BEJwIQ7cPnyYT3rearXsZx5VLIgdRLmRjsfRNeMs1wqkWVJ
	 TSIDR1X0d4KKD8uHRZzbfSpkn/4ZGN+J149+xmR4TwcIN/34Iv9QUdseO4YQolOUeG
	 oExv0ghjfwSYbiMUEHGvwMfvWgiiEHIYtv8Ih+HyZFLG5i9GtpyTpcRKlnQYIbD3+k
	 0okcw3p+pYRlO02qTxutdu3lhgbODSMfhW7l26GaIpL8G4WqN5eXBZy4O2Yzdp5hXo
	 Rc/ci/Nm5HIxDvsMsUkUZHMkcMVb7J0HbCmzHSFfukhlsgiQsEX6+GWqpBdQb5aDGx
	 wexzxMceT0evA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 2/9] media: subdev: Add set_pad_by_ep() callback to
 internal ops
Reply-To: sashiko-reviews@lists.linux.dev
To: Frank.Li@oss.nxp.com
Cc: imx@lists.linux.dev, Frank.Li@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260624-imx8qxp_pcam-v6-2-4b3f45920d2f@nxp.com>
References: <20260624-imx8qxp_pcam-v6-0-4b3f45920d2f@nxp.com>
 <20260624-imx8qxp_pcam-v6-2-4b3f45920d2f@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 24 Jun 2026 20:50:12 +0000
Message-Id: <20260624205012.849AB1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315389-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,sashiko.dev:url,nxp.com:email];
	FORGED_RECIPIENTS(0.00)[m:Frank.Li@oss.nxp.com,m:imx@lists.linux.dev,m:Frank.Li@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A7EC66C147F

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] Severe layering violation by tightly coupling the core Media Con=
troller framework with V4L2-specific firmware parsing.
- [Low] Typo in the callback documentation.
--

commit 3e6e9fb5a2a23ceb5cd559adeba28603dd1f9e0f
Author: Frank Li <Frank.Li@nxp.com>

media: subdev: Add set_pad_by_ep() callback to internal ops
   =20
This commit adds a set_pad_by_ep() callback to v4l2_subdev_internal_ops.
The callback is invoked while parsing firmware node endpoints and allows
subdevice drivers to configure media pad properties based on endpoint
information.

> diff --git a/include/media/v4l2-subdev.h b/include/media/v4l2-subdev.h
> index d256b7ec8f848..eb652eb76d33f 100644
> --- a/include/media/v4l2-subdev.h
> +++ b/include/media/v4l2-subdev.h
> @@ -935,6 +935,10 @@ struct v4l2_subdev_ops {
>   *	the v4l2_subdev structure. It is almost certainly required for any
>   *	sub-device that sets the V4L2_SUBDEV_FL_HAS_DEVNODE flag.
>   *
> + * @set_pad_by_ep: Set pad informaiton by fwnode endpoint, parsed fwnode=
 already

[Severity: Low]
This isn't a bug, but there is a typo in information (informaiton).

> + *		   saved into pad->vep. return < 0 means can't support this type
> + *		   endpoint. Set pad->flags according to pad->vep information.
> + *
>   * .. note::
>   *	Never call this from drivers, only the v4l2 framework can call
>   *	these ops.
> @@ -947,6 +951,7 @@ struct v4l2_subdev_internal_ops {
>  	int (*open)(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh);
>  	int (*close)(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh);
>  	void (*release)(struct v4l2_subdev *sd);
> +	int (*set_pad_by_ep)(struct v4l2_subdev *sd, struct media_pad *pad);

[Severity: Medium]
Does this callback signature enforce an architectural layering violation?

By omitting the vep argument, the callback design expects the parsed V4L2
endpoint configuration to be passed via pad->vep. struct media_pad is part =
of
the generic Media Controller API, which is shared across various subsystems
like ALSA and DVB.

Embedding the V4L2-specific struct v4l2_fwnode_endpoint directly into the
generic struct media_pad creates an inappropriate subsystem dependency and
wastes memory for all non-V4L2 media pads.

Could the V4L2-specific endpoint be passed directly as an argument to the
callback, such as:
int (*set_pad_by_ep)(struct v4l2_subdev *sd, struct media_pad *pad,
                     struct v4l2_fwnode_endpoint *vep);

>  };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260624-imx8qxp_pc=
am-v6-0-4b3f45920d2f@nxp.com?part=3D2

