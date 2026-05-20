Return-Path: <devicetree+bounces-300327-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MIHyAeL5DGpHqwUAu9opvQ
	(envelope-from <devicetree+bounces-300327-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 02:01:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id EC73958632A
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 02:01:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 61D28300D4C0
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 00:01:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CC821EA65;
	Wed, 20 May 2026 00:01:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i05RUWhK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4700828DC4
	for <devicetree@vger.kernel.org>; Wed, 20 May 2026 00:01:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779235292; cv=none; b=M1Mx9kRflRbgIsGP4zKx8Xx6FwM8AJgKpP/CWMjwVy8VR8D8GweQNrBrHBKHwTgvWEwzRKta7y7sOvCOSgsKscOTjaf8k5p3073H31uV94iGwPwpd/Qy1D+zPEZA2hX3Y4H5HnM7EgSPrdFpOF/z1pp62NOYVWpwBV2ufkmAQpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779235292; c=relaxed/simple;
	bh=ED2avvaZ4HKQRUzDJpkqWQjrdjLMupzz5F0vgv3/AZ4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=TkNVHt0uC4bqASfMkbRQoeBeu+bZOJlZPWKzKkX3FBXmYN4EfjdcgTNud0lsp4s+jLaOfFAWEDArBPaQSXjtWSnL+Qt1GK/gcMoC97WOF0CMbLmGOuSknvs7fUVGDE8qp1seR4AADLlU0cOCHIYnXDK/fzacvsRJvXm4nvLhILk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i05RUWhK; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ABB311F000E9;
	Wed, 20 May 2026 00:01:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779235290;
	bh=FecKT9/6SizZRuRc95oZh1GsnrtV2oGuue3IYqPLhCs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=i05RUWhKmPxH0/+QdTO5iyttbUFH05FNWuEBqMIo9MIkp5hsy9ZgG1JlAi+K2ferv
	 YOJI5G2Br8Y7haDV5e6pbkSJKJS543ly7qQ2wGbk1qsffpV8eNECtUSp3ZL6OX1fAR
	 UlJD9LqaHL5a3w7DjuKJnPFs11W8hARuXcIfmuJihogACj6eKC091sqBd56+uhTjWY
	 v+uk8DRBCX67UWLVIXCVmAAVbv4UFfrFqOmPib74+WRkydqqQX+TFfyZxG+rciIfEJ
	 iKfDKXraISnUscY6zNnxAx1C3Ml7d4xrrGkcjrR5vLjgA04SDUaRuVpYQsnUCIyvJl
	 m61kt0oj6Bk1w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 5/5] i2c: mt7621: make device reset optional
Reply-To: sashiko-reviews@lists.linux.dev
To: "Christian Marangi" <ansuelsmth@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260519223253.1093-6-ansuelsmth@gmail.com>
References: <20260519223253.1093-6-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 20 May 2026 00:01:30 +0000
Message-Id: <20260520000130.ABB311F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-300327-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Queue-Id: EC73958632A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Calling `device_reset_optional()` dynamically retrieves the reset =
control, acquiring mutexes, which causes a sleep-in-atomic panic during ato=
mic I2C transfers.
- [High] Probe deferrals (-EPROBE_DEFER) and fatal reset errors are ignored=
, causing the driver to initialize unreset hardware.
--

commit 9cb04554e65951eee40dcf78d9e980702bbacb5d
Author: Christian Marangi <ansuelsmth@gmail.com>

i2c: mt7621: make device reset optional

This commit changes the I2C reset logic in the Mediatek I2C driver to use
device_reset_optional() instead of device_reset(). This accommodates Airoha
SoCs that share the driver but lack a dedicated reset line.

> diff --git a/drivers/i2c/busses/i2c-mt7621.c b/drivers/i2c/busses/i2c-mt7=
621.c
> index 3cde43c57a2bc..fb9d9701bb10d 100644
> --- a/drivers/i2c/busses/i2c-mt7621.c
> +++ b/drivers/i2c/busses/i2c-mt7621.c
> @@ -91,7 +91,7 @@ static void mtk_i2c_reset(struct mtk_i2c *i2c)
>  	u32 reg;
>  	int ret;
> =20
> -	ret =3D device_reset(i2c->adap.dev.parent);
> +	ret =3D device_reset_optional(i2c->adap.dev.parent);

[Severity: High]
This is a pre-existing issue, but does this dynamic reset lookup cause a
sleep-in-atomic panic during atomic transfers?

If a transaction times out in mtk_i2c_xfer_atomic(), the code branches to
the err_timeout label and calls mtk_i2c_reset(). This function invokes
device_reset_optional(), which dynamically looks up the reset line via
__device_reset() and __fwnode_reset_control_get().

This lookup acquires the reset_list_mutex and performs memory allocations,
which could trigger a scheduling-while-atomic panic since
mtk_i2c_xfer_atomic() runs in an atomic context.

Would it be safer to fetch and cache the reset control at probe time using
devm_reset_control_get_optional_exclusive() and only call
reset_control_reset() during runtime?

>  	if (ret)
>  		dev_err(i2c->dev, "I2C reset failed!\n");

[Severity: High]
This is also a pre-existing issue, but does swallowing the error code here
break probe deferral?

During driver initialization, mtk_i2c_probe() calls mtk_i2c_init(), which
in turn calls mtk_i2c_reset(). If the reset controller is defined in the
device tree but its driver has not yet probed, device_reset_optional()
will return -EPROBE_DEFER.

Since mtk_i2c_reset() returns void and only logs the error, the I2C driver
incorrectly succeeds in probing instead of propagating -EPROBE_DEFER to the
driver core.

Does this leave the hardware in an unpredictable state from the bootloader?

>

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260519223253.1093=
-1-ansuelsmth@gmail.com?part=3D5

