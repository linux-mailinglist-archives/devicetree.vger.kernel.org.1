Return-Path: <devicetree+bounces-313790-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id D0UkCmk+NWpKpwYAu9opvQ
	(envelope-from <devicetree+bounces-313790-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 15:04:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 726F86A5ED6
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 15:04:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=UPQELwqE;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313790-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313790-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 20CB83019F11
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 13:04:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF7CE382395;
	Fri, 19 Jun 2026 13:04:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F8F6379EEC
	for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 13:04:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781874278; cv=none; b=ugqk10y2xxyFqlrjV8UxZRT9laXiu9YSDt2zrLimXxQ++ZKHCSqQ8Wf3GldG14AJ+g0uMz0Vwm7nl5IGjYFwswoSGJyqau/bmzzRm6m3iFvBif/iV5Nav2S6UdzlhjoeHEr3uprAeVqkwb/zSWhzp7fJLM6xcFV97UkgBP5KExw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781874278; c=relaxed/simple;
	bh=x/q/f5ODg5QP5YKvB6+qZU4Kwcxj4G5iCu2mhgelh2A=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Mar0RQTDuwJoUreXJVA5+NqU7ndhySt72cc07fD9zQ2c2+sjAIUMuJY3kAZiqL1ZbYnAVuP/UFhWLIBBVXvkf4o2msxe8Gi+Cni2s8qoZGBUF1OIErh78RpRg4Eee9LI+bnv0MF82p7YR6VFYFXkiwqYr7YaW2bgzKIZh6ePw9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPQELwqE; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 233741F000E9;
	Fri, 19 Jun 2026 13:04:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781874277;
	bh=4Y7Cu7KlH9EFczzX6LoRbEdk0c97h21HMC/9oga3r/M=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UPQELwqE/jCW0qTxRGe/8PByvacOawA+Rjb8vO4FvlUqxE/F+Zdo3hdOVtcLtytSC
	 c3fXuirQ1geR4L6kMFlR7NT+M/k2oWTUYMiB4vqhUSOrtf4E1SAP957IhHoSpj/Nqt
	 LjQ9NR1XQvt1ZP6fTCsJyCsc1gdjmYSD9UL2h4x+LQ4tEXt0ovXZ/91TPcPs291nn5
	 KGr/THspywn7BB23Pk9cvf/shGBbUAXuUDLdircv7RhufhyLWMVuxX38DWKt5phkkG
	 332f4XTX3SCn4c93b71xARCnngHn8K7IP2XyaoAmq8AyzBvakpJLuRnbz/HfU3ZiQ9
	 Gh6m78EobpXIg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/3] media: i2c: add imx576 image sensor driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Himanshu Bhavani" <himanshu.bhavani@siliconsignals.io>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260619125439.55311-3-himanshu.bhavani@siliconsignals.io>
References: <20260619125439.55311-1-himanshu.bhavani@siliconsignals.io>
 <20260619125439.55311-3-himanshu.bhavani@siliconsignals.io>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 19 Jun 2026 13:04:36 +0000
Message-Id: <20260619130437.233741F000E9@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-313790-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:himanshu.bhavani@siliconsignals.io,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
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
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,siliconsignals.io:email,vger.kernel.org:from_smtp,lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 726F86A5ED6

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] Calculation of pixel_rate overflows on 32-bit platforms, causing w=
ildly incorrect pixel rate control.
- [High] Sensor is permanently left in register HOLD mode if an intermediat=
e control write fails.
- [Low] Unconditional assignment of dev_pm_ops produces dead code when CONF=
IG_PM is disabled.
--

commit 511969ab2e888f822293c83a79b2a96d1becf3a2
Author: Himanshu Bhavani <himanshu.bhavani@siliconsignals.io>

media: i2c: add imx576 image sensor driver

Add a v4l2 subdevice driver for the Sony imx576 sensor.
The Sony IMX576 image sensor with an active array size of 5760 x 4312.
The following features are supported: manual exposure and gain control,
vblank/hblank control, and 2880 x 2156 30fps (SRGGB10) resolution.

> diff --git a/drivers/media/i2c/imx576.c b/drivers/media/i2c/imx576.c
> new file mode 100644
> --- /dev/null
> +++ b/drivers/media/i2c/imx576.c
[ ... ]
> +static int imx576_set_ctrl(struct v4l2_ctrl *ctrl)
> +{
[ ... ]
> +	switch (ctrl->id) {
> +	case V4L2_CID_VBLANK: {
> +		u64 vmax =3D fmt->height + ctrl->val;
> +
> +		cci_write(imx576->regmap, IMX576_REG_VTS, vmax, &ret);
> +		break;
> +	}
> +	case V4L2_CID_EXPOSURE:
> +		cci_write(imx576->regmap, IMX576_REG_EXPOSURE, ctrl->val, &ret);
> +		break;
> +	case V4L2_CID_ANALOGUE_GAIN:
> +		cci_write(imx576->regmap, IMX576_REG_ANALOG_GAIN,
> +			  ctrl->val, &ret);
> +		break;
> +	default:
> +		dev_err(imx576->dev, "Invalid control %d\n", ctrl->id);
> +		ret =3D -EINVAL;
> +		break;
> +	}
> +
> +	cci_write(imx576->regmap, IMX576_REG_HOLD, 0, &ret);

[Severity: High]
Does this leave the sensor permanently in register HOLD mode if an
intermediate control write fails?

Looking at cci_write(), it immediately returns without performing any I2C
write if the error pointer (ret) already contains a non-zero error code. If=
 an
intermediate control write in the switch block fails, ret will hold an error
code like -EIO.

The final cci_write() will see this error and instantly skip clearing the
HOLD register, leaving the camera hardware in a stuck state where no further
register updates take effect.

[ ... ]
> +static int imx576_init_controls(struct imx576 *imx576)
> +{
[ ... ]
> +	imx576->vblank =3D v4l2_ctrl_new_std(ctrl_hdlr, &imx576_ctrl_ops,
> +					   V4L2_CID_VBLANK, vblank_def,
> +					   IMX576_VBLANK_MAX, 1,
> +					   vblank_def);
> +
> +	/* pixel_rate =3D link_frequency * 2 * nr_of_lanes / bits_per_sample */
> +	pixel_rate =3D div_u64(IMX576_LINK_FREQ_600MHZ * 2 * IMX576_NUM_DATA_LA=
NES, 10);

[Severity: High]
Does this calculation overflow on 32-bit platforms before the result gets
passed to div_u64()?

IMX576_LINK_FREQ_600MHZ is defined as (600 * HZ_PER_MHZ), and since
HZ_PER_MHZ is an unsigned long, the entire multiplication is evaluated as a
32-bit unsigned long on 32-bit architectures.

The result of 600,000,000 * 8 is 4,800,000,000, which exceeds the maximum
32-bit unsigned integer value and overflows to 505,032,704 before div_u64()
implicitly casts it to u64.

Could this be explicitly cast to u64 before the multiplication to ensure the
correct pixel rate is calculated?

[ ... ]
> +static struct i2c_driver imx576_driver =3D {
> +	.driver =3D {
> +		.name =3D "imx576",
> +		.pm =3D &imx576_pm_ops,

[Severity: Low]
Will this unconditional assignment produce dead code when CONFIG_PM is
disabled?

Assigning the dev_pm_ops structure directly prevents the compiler from
eliminating the imx576_pm_ops structure when power management support
is disabled.

Should this be wrapped with pm_ptr() to allow the compiler to discard the
unused structure?

> +		.of_match_table =3D imx576_of_match,
> +	},
> +	.probe =3D imx576_probe,
> +	.remove =3D imx576_remove,
> +};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260619125439.5531=
1-1-himanshu.bhavani@siliconsignals.io?part=3D2

