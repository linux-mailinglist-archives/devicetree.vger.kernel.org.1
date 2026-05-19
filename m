Return-Path: <devicetree+bounces-300323-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CDBdKTz2DGo1qgUAu9opvQ
	(envelope-from <devicetree+bounces-300323-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 01:46:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE8958618B
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 01:46:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4D662301994D
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 23:46:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13A95380FDB;
	Tue, 19 May 2026 23:45:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2x8f4Pr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E14AD345CBE
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 23:45:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779234359; cv=none; b=WFsfHGPmaNBen11y244+I8ElKiP/3v2AjJ+2O0BL5PGjd0Bp9EpgYDgj/uIstRNeYeNx8Ng4qHRCBgcuLjCrSJ4OuQYdjl2eaLlfKTechuw4NGpC4eHW9QxCg4glQbgS0QMwi8bSB3ZQfauD2le9W1d2z0iOsg8skKelrJyQDy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779234359; c=relaxed/simple;
	bh=fbE6MwUF6qHiYwOu1e+BxAgtGWZFbvsRq7c46rnrKCM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Ku2YmcZnHFpbBZgSf2wlISQDvH5RQ7c6B0PzfDWPiUWYMQLT3BnNnKxjTqeLCUE7cXQ75TQ5xKhQfdaRa6bSRUcBw/RGnUMMJB3EhO8ZwpwtqqvPieTZiPK7I572uA7V8fPBemPpsCzO/kFE+8IWIVoxmagqVRo4rJxQeRHXUX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2x8f4Pr; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8BB3F1F000E9;
	Tue, 19 May 2026 23:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779234357;
	bh=8v1kWYS+LHQby9xrjwjWdk2Xy6nJ5zbqeyPJGvWJqdw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Z2x8f4PrrvceToCD4KUP8/lUfbTYSX9I5+GcuPGx+UrnbK1ENkKl0NdAJNmUwvHeU
	 w3K6yLrPY2S4S+LMtjBREIzqlnr/q0HQ2BNgyR3umB4dGcaB2+U5yck4OMsuFgpwQU
	 mMt2h1l6wOUMrh8KG8iOlei2eV+Fxk1c+9H5wgfgQ8Zwe/s9MLW0Uu8cVh0lNQVF3R
	 PDXD22u5vdCf4vTGxcS3ztH6ZmXA4ozlF0HtpoKkke1iIXuvZTcty8eY1qlCh6oQUv
	 Qbq+4upaV0U0Zbx8eWTK+RtUs93ryswSQKpv7l3C4takVSQ9ekrGpNT9YAdD9ua8Ta
	 auPC9w4ZXcWCA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 4/5] i2c: mt7621: limit SCL_STRETCH only to Mediatek
 SoC
Reply-To: sashiko-reviews@lists.linux.dev
To: "Christian Marangi" <ansuelsmth@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260519223253.1093-5-ansuelsmth@gmail.com>
References: <20260519223253.1093-5-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 23:45:57 +0000
Message-Id: <20260519234557.8BB3F1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-300323-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Queue-Id: 9BE8958618B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Dynamic evaluation of `device_is_compatible()` in `mtk_i2c_reset()=
` causes a sleep-in-atomic bug.
- [High] The hardware reset routine acquires a mutex while executing in ato=
mic context.
--

commit 5cf3b78e15e95214810bba784c999fc11f06780f
Author: Christian Marangi <ansuelsmth@gmail.com>

i2c: mt7621: limit SCL_STRETCH only to Mediatek SoC

This commit introduces a new compatible string for Airoha SoCs and limits
the SCL_STRETCH feature to Mediatek devices. It enforces this by checking
the compatible string during the I2C reset routine.

> diff --git a/drivers/i2c/busses/i2c-mt7621.c b/drivers/i2c/busses/i2c-mt7=
621.c
> index d8fa29e7e0fa3..3cde43c57a2bc 100644
> --- a/drivers/i2c/busses/i2c-mt7621.c
> +++ b/drivers/i2c/busses/i2c-mt7621.c
> @@ -88,6 +88,7 @@ static int mtk_i2c_wait_idle(struct mtk_i2c *i2c, bool =
atomic)
> =20
>  static void mtk_i2c_reset(struct mtk_i2c *i2c)
>  {
> +	u32 reg;
>  	int ret;
> =20
>  	ret =3D device_reset(i2c->adap.dev.parent);

[Severity: High]
Does this device_reset() call sleep in atomic context?

When an I2C transfer times out during mtk_i2c_xfer_atomic(), the driver
branches to err_timeout and calls mtk_i2c_reset(). This reset routine calls
device_reset(), which eventually invokes __reset_control_get(). That
function unconditionally acquires the reset_list_mutex.

Acquiring a mutex in atomic context (such as during panic or reboot, when
mtk_i2c_xfer_atomic() is used) triggers a 'schedule while atomic' bug and
causes a kernel panic. Commit "i2c: mt7621: rework cmd/wait OPs to support
atomic afer variant" (Patch 1 of this series) directly exposed this sleeping
reset path to atomic execution contexts.

>  	if (ret)
>  		dev_err(i2c->dev, "I2C reset failed!\n");
> =20
> @@ -98,8 +99,12 @@ static void mtk_i2c_reset(struct mtk_i2c *i2c)
>  	 * Don't set SM0CTL0_ODRAIN as its bit meaning is inverted. To
>  	 * configure open-drain mode, this bit needs to be cleared.
>  	 */
> -	iowrite32(((i2c->clk_div << 16) & SM0CTL0_CLK_DIV_MASK) | SM0CTL0_EN |
> -		  SM0CTL0_SCL_STRETCH, i2c->base + REG_SM0CTL0_REG);
> +	reg =3D ((i2c->clk_div << 16) & SM0CTL0_CLK_DIV_MASK) | SM0CTL0_EN;
> +	/* Set SCL_STRETCH only for Mediatek SoC */
> +	if (device_is_compatible(i2c->dev, "mediatek,mt7621-i2c"))

[Severity: High]
Does evaluating device_is_compatible() here cause a sleep-in-atomic bug?

The mtk_i2c_reset() function is called from the I2C transfer timeout handle=
r,
which runs in an atomic context when the driver executes mtk_i2c_xfer_atomi=
c().

The device_is_compatible() function internally invokes
fwnode_property_match_string(), which unconditionally allocates memory using
kcalloc() with GFP_KERNEL. Allocating memory with GFP_KERNEL in atomic
context blocks and triggers a 'schedule while atomic' kernel panic.

Should the driver parse the compatible properties once during probe() and
cache the configuration (e.g., as a has_scl_stretch boolean) in struct mtk_=
i2c
instead?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260519223253.1093=
-1-ansuelsmth@gmail.com?part=3D4

