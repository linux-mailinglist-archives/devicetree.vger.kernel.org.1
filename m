Return-Path: <devicetree+bounces-318987-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EJ3WMhDDRWpGEwsAu9opvQ
	(envelope-from <devicetree+bounces-318987-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 03:46:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 747396F2DB3
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 03:46:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=XuC6wZIZ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318987-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-318987-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8BF2B3020BC5
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 01:46:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98A5129B8D0;
	Thu,  2 Jul 2026 01:46:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DBC8220F2A
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 01:46:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782956812; cv=none; b=oRW+5SCKvL/7LHhVin3Qo6GrM1Sxl1rcbe3slah5JLhJSpnhmCnFdeymaL3pyVMcbDeOKD8ugik3gOiJyRVa9yOKjXisWMWIZyfjzHLVkQ49WIwaNMPqj/5hAA6bxCOV+11NSIoKGK/U+AIjCCxrkj7yIgCvBPzH22/y/gh9ysY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782956812; c=relaxed/simple;
	bh=W3AKyyC/OaCiObzut7w3ctuhA/gVyUuy8I3rbHH4Fno=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=uyrQz6acOjF4NPlhM/y0SZi8Ew/wDZep5fkbR3hHPgzXH9RKtcopnmceWheL5C56dbm6+x+p+HA8R1xByCQ8212SAnXKL6ZhOQCvvrwktckw/q7kCAAM7QaDGpnksF3dznyfU4UiokwObPptH37scYQZoSEBkyv2hIw+F73V2VA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XuC6wZIZ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6D7C1F000E9;
	Thu,  2 Jul 2026 01:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782956811;
	bh=px+hQtdip6LQth7j+dxapzNUQHQW7GAZ+96pQ1k0PIE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=XuC6wZIZkrKK7eGJTcSV4mFxYI1L5M0d1az79eIXeqYuLa58fwUlOHYMo/hH55vez
	 NHOHhnKUstqT3LEPDOa4wsh/Fxccpi78+sB6FoQpYXP7l25QrCJ2GDj9Kx1jHHoYlq
	 K+K6Xm9y4olcNzB1zYmtIovsaOUMIQYz5eE5cveaOABrIMPKeH3CKOg2m9zBvgtLCS
	 ylBpuGt8A02aRT7UwWNdCJnTqYkFTdQjqkFuZWgeDLd1pc+zLshRkEHtvOO03vqN9j
	 czaTKxCNcgvQTVGPvFysUEhN3On+KNaRdZVfHa2yBRS94Uf38wmyd/6lou1iH5860q
	 PXDwDM57I8jUQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/2] media: i2c: hm1092: add Himax HM1092 mono NIR
 sensor driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ramshouriesh R" <rshouriesh@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260702-hm1092-driver-v2-2-4f9f369d6a48@gmail.com>
References: <20260702-hm1092-driver-v2-0-4f9f369d6a48@gmail.com>
 <20260702-hm1092-driver-v2-2-4f9f369d6a48@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 01:46:49 +0000
Message-Id: <20260702014650.E6D7C1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-318987-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:rshouriesh@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 747396F2DB3

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The driver incorrectly returns `-EPROBE_DEFER` when the static f=
wnode graph endpoint is missing.
- [Medium] The driver fails to initialize and clamp V4L2 colorimetry fields=
 in `hm1092_update_pad_format()`.
--

commit e540c6418febd9d4f99cda20bb83d2a99d4aaeeb
Author: Ramshouriesh R <rshouriesh@gmail.com>
Subject: media: i2c: hm1092: add Himax HM1092 mono NIR sensor driver

Add a V4L2 subdev driver for the Himax HM1092, a 1 megapixel monochrome
near-infrared image sensor with a single-lane MIPI CSI-2 interface,
typically used as the face-authentication IR camera on laptops.

> diff --git a/drivers/media/i2c/hm1092.c b/drivers/media/i2c/hm1092.c
> new file mode 100644
> index 0000000000000..d0e417c9e35df
> --- /dev/null
> +++ b/drivers/media/i2c/hm1092.c

[ ... ]

> +static void hm1092_update_pad_format(struct v4l2_mbus_framefmt *fmt)
> +{
> +	fmt->width =3D hm1092_mode_560x360.width;
> +	fmt->height =3D hm1092_mode_560x360.height;
> +	fmt->code =3D MEDIA_BUS_FMT_Y10_1X10;
> +	fmt->field =3D V4L2_FIELD_NONE;
> +}

[Severity: Medium]
Does this code need to initialize and clamp the V4L2 colorimetry fields
(colorspace, ycbcr_enc, quantization, and xfer_func)?

If these fields are not overwritten here, they seem to retain arbitrary
user-supplied values when called from VIDIOC_SUBDEV_S_FMT, instead of
enforcing the correct colorimetry for a monochrome raw sensor
(e.g., V4L2_COLORSPACE_RAW).

[ ... ]

> +static int hm1092_set_format(struct v4l2_subdev *sd,
> +			     struct v4l2_subdev_state *state,
> +			     struct v4l2_subdev_format *fmt)
> +{
> +	hm1092_update_pad_format(&fmt->format);
> +	*v4l2_subdev_state_get_format(state, fmt->pad) =3D fmt->format;

[Severity: Medium]
Because the colorimetry fields aren't validated or sanitized in
hm1092_update_pad_format(), can this allow arbitrary or invalid values from
user-space to be copied verbatim into the active V4L2 state here?

This might potentially break V4L2 specification compliance and format
negotiation.

> +
> +	return 0;
> +}

[ ... ]

> +static int hm1092_check_hwcfg(struct hm1092 *hm1092)
> +{
> +	struct v4l2_fwnode_endpoint bus_cfg =3D {
> +		.bus_type =3D V4L2_MBUS_CSI2_DPHY,
> +	};
> +	struct device *dev =3D hm1092->dev;
> +	struct fwnode_handle *ep, *fwnode =3D dev_fwnode(dev);
> +	unsigned long link_freq_bitmap;
> +	int ret;
> +
> +	ep =3D fwnode_graph_get_endpoint_by_id(fwnode, 0, 0, 0);
> +	if (!ep)
> +		return dev_err_probe(dev, -EPROBE_DEFER,
> +				     "waiting for fwnode graph endpoint\n");

[Severity: Medium]
Should this return a permanent error like -EINVAL or -ENODEV instead of
-EPROBE_DEFER?

The device's fwnode graph endpoint is a static hardware property provided by
the firmware (Device Tree or ACPI). If fwnode_graph_get_endpoint_by_id()
returns NULL, it indicates a permanent misconfiguration rather than a
temporary state where a dependent resource is missing.

Returning -EPROBE_DEFER here could cause the driver core to continually ret=
ry
probing in the deferred probe workqueue indefinitely, wasting resources
rather than cleanly failing.

> +
> +	ret =3D v4l2_fwnode_endpoint_alloc_parse(ep, &bus_cfg);
> +	fwnode_handle_put(ep);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260702-hm1092-dri=
ver-v2-0-4f9f369d6a48@gmail.com?part=3D2

