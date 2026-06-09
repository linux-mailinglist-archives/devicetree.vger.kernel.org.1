Return-Path: <devicetree+bounces-308653-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id q5+ZH+icJ2qQzgIAu9opvQ
	(envelope-from <devicetree+bounces-308653-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 06:56:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A5265C529
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 06:56:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=WaairRZt;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308653-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308653-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5F227300614D
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 04:56:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 416CB3446AD;
	Tue,  9 Jun 2026 04:56:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A272231832;
	Tue,  9 Jun 2026 04:56:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780980966; cv=none; b=gtubiHyKDIEDRYgnhMDx7oZCfWfkpzA6YaDAtk/g6sx+HLvSxkxbH8PHNcK8OlGlEGeLRoGRtUHi5P9NgWsaOr/B2SRBK8Gj6AVaB+P+ygkFugl8/Q71W4FZfFU7wETq2APKlJmvJcOTvfhiGc0s2jEjqt8xmk8inhz7vLaFxzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780980966; c=relaxed/simple;
	bh=IC07BV97/pWTzMhgZv9xj6wge0AWj5XMyd9IVOiqKSw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=bZgW/EP63HghpslA66hOtAU91/x6lBRb666Mf83p7F7A2MLgMCZTatiBSkm+A+lsg7mhDxjI1r4bcZ/CDBxr0MkDuvnIWkhJhDha8IWwg7UvLogQw4QZ86HWCZdMeYH1DVVRQygnLuw77W+ErHuvKOALwYBLYdHqdUSj7Gcu0pY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WaairRZt; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44FE71F00893;
	Tue,  9 Jun 2026 04:56:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780980964;
	bh=LT7Wg1/XhplBkOl9vbYXYnbKdLFzAaFLgxre6//x3DI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WaairRZtamMahMIgxE4C4KB5bz5Zu/MU2M6GtE2aK05Tjj+tbAwD8ESqWkK6lx0mL
	 uixrR+JfSEzvhRv8r7t5hDcoPgOvNJViUPNtrUE53TDIvFZ8bTiJ8TOipXQXdKQoAu
	 kzI+zaCwB1IyXRlP6GOz5yiINHp0nhDGAEtorggXBqdBEuQqClh1WJL+VisDl5mfSc
	 Flf3Er2TabNPXZcBXChRsWAvDAava+eYYNejHuhpsNUdcBvkI6z7ObddKWgkn89wAR
	 djtX6lXN8sUS63bhyxXrc5xASA3RYKkksmXlfRZGih/43CytvhJkgfsrQBTkfKUqGs
	 8P7KZdy116gTA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 03/11] HID: spi-hid: add transport driver skeleton
 for HID over SPI bus
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jingyuan Liang" <jingyliang@chromium.org>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, dmitry.torokhov@gmail.com, linux-input@vger.kernel.org
In-Reply-To: <20260609-send-upstream-v4-3-b843d5e6ced3@chromium.org>
References: <20260609-send-upstream-v4-3-b843d5e6ced3@chromium.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 04:56:03 +0000
Message-Id: <20260609045604.44FE71F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[semihalf.com:email,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp];
	TAGGED_FROM(0.00)[bounces-308653-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jingyliang@chromium.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:dmitry.torokhov@gmail.com,m:linux-input@vger.kernel.org,m:conor@kernel.org,m:dmitrytorokhov@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 14A5265C529

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Embedded arrays `read_approval_header` and `read_approval_body` ar=
e used for SPI DMA transfers without cacheline alignment, risking memory co=
rruption.
- [Medium] Unchecked return values of reset operations in `spi_hid_dev_init=
` and `spi_hid_resume`
--

commit ea35a3a23739acaca367a8d250ef25c96d22df36
Author: Angela Czubak <acz@semihalf.com>

HID: spi-hid: add transport driver skeleton for HID over SPI bus

Create spi-hid folder and add Kconfig and Makefile for spi-hid driver.
Add basic device structure, definitions, and probe/remove functions.

> diff --git a/drivers/hid/spi-hid/spi-hid-core.c b/drivers/hid/spi-hid/spi=
-hid-core.c
> new file mode 100644
> index 0000000000000..02a7608c4b882
> --- /dev/null
> +++ b/drivers/hid/spi-hid/spi-hid-core.c
> @@ -0,0 +1,213 @@

[ ... ]

> +/* Driver context */
> +struct spi_hid {
> +	struct spi_device	*spi;	/* spi device. */
> +	struct hid_device	*hid;	/* pointer to corresponding HID dev. */
> +
> +	struct spihid_ops	*ops;
> +	struct spi_hid_conf	*conf;
> +
> +	enum hidspi_power_state power_state;
> +
> +	u32 regulator_error_count;
> +	int regulator_last_error;
> +	u32 bus_error_count;
> +	int bus_last_error;
> +	u32 dir_count;	/* device initiated reset count. */
> +};

[Severity: High]
Does embedding the read_approval_header and read_approval_body arrays direc=
tly
in this struct for SPI DMA transfers risk memory corruption?

When these buffers are passed as tx_buf to spi_sync() (e.g. in
spi_hid_input_sync()), they lack the ____cacheline_aligned directive. On
architectures with non-coherent DMA, cache maintenance operations could
encompass adjacent struct members.

Concurrent CPU writes to those adjacent members during the DMA mapping wind=
ow
will be destroyed, leading to memory corruption.

Should these buffers be cacheline aligned, or dynamically allocated?

[ ... ]

> +int spi_hid_core_probe(struct spi_device *spi, struct spihid_ops *ops,
> +		       struct spi_hid_conf *conf)
> +{

[ ... ]

> +	/*
> +	 * At the end of probe we initialize the device:
> +	 *   0) assert reset, bias the interrupt line
> +	 *   1) sleep minimal reset delay
> +	 *   2) request IRQ
> +	 *   3) power up the device
> +	 *   4) deassert reset (high)
> +	 * After this we expect an IRQ with a reset response.
> +	 */
> +
> +	shid->ops->assert_reset(shid->ops);
> +
> +	shid->ops->sleep_minimal_reset_delay(shid->ops);

[ ... ]

> +	error =3D shid->ops->power_up(shid->ops);
> +	if (error) {
> +		dev_err(dev, "%s: could not power up\n", __func__);
> +		return error;
> +	}
> +
> +	shid->ops->deassert_reset(shid->ops);

[Severity: Medium]
Can hardware reset failures be masked here?

The assert_reset and deassert_reset callbacks return integer error codes.
However, their return values are ignored in spi_hid_core_probe() (as well as
resume paths).

If deassert_reset() fails, the device may remain in reset, causing the driv=
er
to hang waiting for a reset response IRQ that will never arrive.

Should these return values be checked and handled?

> +
> +	dev_dbg(dev, "%s: d3 -> %s\n", __func__,
> +		spi_hid_power_mode_string(shid->power_state));
> +
> +	return 0;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609-send-upstr=
eam-v4-0-b843d5e6ced3@chromium.org?part=3D3

