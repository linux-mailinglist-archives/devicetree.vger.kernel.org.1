Return-Path: <devicetree+bounces-302057-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iO0PL4LXEGrYeQYAu9opvQ
	(envelope-from <devicetree+bounces-302057-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 23 May 2026 00:24:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB1F5BB1A7
	for <lists+devicetree@lfdr.de>; Sat, 23 May 2026 00:24:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 286B8300E27F
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 22:22:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B82D1379C43;
	Fri, 22 May 2026 22:22:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i44dmlB/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FD0D3438AB
	for <devicetree@vger.kernel.org>; Fri, 22 May 2026 22:22:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779488538; cv=none; b=RsjEaIGb2CYVNbwwi5zjhb93qozHToyh+vsxpDSj6VbvaCi1Tto9xTYr9hAZ38kp9WWayMkB5q0gs/7cO9xtwf+OGwNamORL/uw+iPwY263fu/tt2r30coYKvVf19QqLkPXfMPiVrL85gYKaVfo16y/HpuSuwEfw+0yQtG4FLfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779488538; c=relaxed/simple;
	bh=yROgnCFwrHVFRaLYVX20geZ6+/w9BlR+AdcU61Xkek4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=qAYA5pewR4kuLwGkK1x/jeSwJgL4GrHn8TtHZJ+m3Z+FnewJmZ8m8gRR7LTcbrPSggpjZmx21PQR7p+kbndzvBLIZxomdhZDn9swOcj3ssL+T6wkejvfFJktx8zNXqPV7F/Ci2Bsl73JcXS5jBtMYPonZ4QN3hE3W+4IMXQQFXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i44dmlB/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A35D71F000E9;
	Fri, 22 May 2026 22:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779488536;
	bh=mHE82GazhipH4Lk6O8q9r9xDVtSp4o4NLjNqTC/zOlE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=i44dmlB/oom1NeBD1w9o4NAvpRJWSDa6yolS1g6p517jATd32LjTnxBKer7dhNLBI
	 lHBaNph+WrgVsXg6mk3SbwndZGNZLKn3aWOe85hY3m9f07LT8Hl3ck487YQkV/evJr
	 Iu4WjeBlL8z31VAj3ljxrsUIcZHuXg7KQAV5RM41R5xalqTeRQJyqDjWWDms587Ugv
	 BHDe1848kAq5TKWMvltTEkPn2h9dug+uqVNtk+p7KYFUR9I68DDAnF0fojBGwwE6NN
	 T1Tn22d9bI9vKpmsSsITKfGc69sa3YgJq9Wk7DSFMhN50/5FRJCCjgh5kq2vVEQDBS
	 WhATfCA85OeYg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 3/8] media: rockchip: rkcif: add support for rk3588
 vicap mipi capture
Reply-To: sashiko-reviews@lists.linux.dev
To: "Michael Riesch via B4 Relay" <devnull+michael.riesch.collabora.com@kernel.org>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260522-rk3588-vicap-v5-3-d1d1f5265c56@collabora.com>
References: <20260522-rk3588-vicap-v5-3-d1d1f5265c56@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 22 May 2026 22:22:16 +0000
Message-Id: <20260522222216.A35D71F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-302057-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,michael.riesch.collabora.com,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Queue-Id: 1FB1F5BB1A7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

Pre-existing issues:
- [Critical] Missing NULL pointer check for `match_data->mipi` in `rkcif_mi=
pi_isr()` leads to a kernel panic on devices without MIPI support.
- [High] Incorrect read-modify-write logic when clearing pending interrupts=
 in the W1C `RKCIF_MIPI_INTSTAT` register.
- [High] The hardirq handler calls a function that acquires a mutex, leadin=
g to a sleep in atomic context BUG and potential deadlocks.
--

commit dbb001c2e64feff7a8b087afc4307525237930d8
Author: Michael Riesch <michael.riesch@collabora.com>

media: rockchip: rkcif: add support for rk3588 vicap mipi capture

The RK3588 Video Capture (VICAP) unit features a Digital Video Port (DVP)
and six MIPI CSI-2 capture interfaces. Add initial support for this variant
to the rkcif driver and enable the MIPI CSI-2 capture interfaces.

> diff --git a/drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.c b=
/drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.c
> index 9e67160a16e46..bc9518f8db507 100644
> --- a/drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.c
> +++ b/drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.c
[ ... ]
> @@ -631,6 +762,13 @@ static int rkcif_mipi_start_streaming(struct rkcif_s=
tream *stream)
>  	rkcif_mipi_stream_write(stream, RKCIF_MIPI_CTRL1, ctrl1);
>  	rkcif_mipi_stream_write(stream, RKCIF_MIPI_CTRL0, ctrl0);
> =20
> +	/*
> +	 * TODO: This bit has a different meaning on the RK3568, but it is
> +	 * set there by default anyway. While correct, this is not exactly
> +	 * nice and shall be reworked during the next refactoring.
> +	 */
> +	rkcif_mipi_write(interface, RKCIF_MIPI_CTRL, RK3588_MIPI_CTRL_CAP_EN);
> +

[Severity: High]
This isn't a bug introduced by this patch, but I noticed an issue in the
surrounding code for rkcif_mipi_start_streaming() and
rkcif_mipi_stop_streaming().

The RKCIF_MIPI_INTSTAT register is Write-1-to-Clear (W1C), which is
demonstrated by the ISR reading and writing back the exact same value to cl=
ear
interrupts. However, in rkcif_mipi_start_streaming():

    int_temp =3D rkcif_mipi_read(interface, RKCIF_MIPI_INTSTAT);
    int_temp &=3D ~int_mask;
    rkcif_mipi_write(interface, RKCIF_MIPI_INTSTAT, int_temp);

Does this sequence incorrectly write 0 to the intended stream's interrupt b=
it,
failing to clear it, while writing 1 to any currently pending interrupts of
other active streams?

Could this erroneously clear interrupts for concurrent streams before the I=
SR
can handle them, potentially leading to timeouts or dropped frames?

[Severity: High]
This is a pre-existing issue, but I noticed a potential sleep in atomic
context BUG related to the stream stopping logic.

When stopping a stream, rkcif_stream_stop_streaming() (called from process
context) sets stream->stopping =3D true and waits.

The hardware interrupt handler detects this flag and directly calls
rkcif_mipi_stop_streaming():

rkcif_mipi_isr()
    if (stream->stopping) {
        rkcif_mipi_stop_streaming(stream);
        ...

rkcif_mipi_stop_streaming()
    state =3D v4l2_subdev_lock_and_get_active_state(&interface->sd);

Since v4l2_subdev_lock_and_get_active_state() acquires a mutex, and it is
being called from the hardirq handler rkcif_mipi_isr(), will this trigger a
sleep in atomic context BUG and potentially deadlock the CPU?

>  	ret =3D 0;
> =20
>  out:
> diff --git a/drivers/media/platform/rockchip/rkcif/rkcif-dev.c b/drivers/=
media/platform/rockchip/rkcif/rkcif-dev.c
> index b4cf1146f1311..be3a174b9aab0 100644
> --- a/drivers/media/platform/rockchip/rkcif/rkcif-dev.c
> +++ b/drivers/media/platform/rockchip/rkcif/rkcif-dev.c
> @@ -53,6 +53,20 @@ static const struct rkcif_match_data rk3568_vicap_matc=
h_data =3D {
>  	.mipi =3D &rkcif_rk3568_vicap_mipi_match_data,
>  };
> =20
> +static const char *const rk3588_vicap_clks[] =3D {
> +	"aclk",
> +	"hclk",
> +	"dclk",
> +	"iclk",
> +	"iclk1",
> +};
> +
> +static const struct rkcif_match_data rk3588_vicap_match_data =3D {
> +	.clks =3D rk3588_vicap_clks,
> +	.clks_num =3D ARRAY_SIZE(rk3588_vicap_clks),
> +	.mipi =3D &rkcif_rk3588_vicap_mipi_match_data,
> +};
> +

[Severity: Critical]
This is a pre-existing issue, but I noticed a potential NULL pointer
dereference related to the mipi match data.

In the global interrupt handler rkcif_isr(), it unconditionally calls
rkcif_mipi_isr():

rkcif_isr()
    ...
    if (rkcif_mipi_isr(irq, ctx) =3D=3D IRQ_HANDLED)
        ret =3D IRQ_HANDLED;

Inside rkcif_mipi_isr(), the code iterates up to mipi_num:

rkcif_mipi_isr()
    for (unsigned int i =3D 0; i < rkcif->match_data->mipi->mipi_num; i++) {
        ...

For devices that do not support MIPI (such as rockchip,px30-vip) where
match_data->mipi is not defined (NULL), won't any hardware interrupt
triggered by the DVP interface cause a guaranteed NULL pointer dereference
and kernel panic?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260522-rk3588-vic=
ap-v5-0-d1d1f5265c56@collabora.com?part=3D3

