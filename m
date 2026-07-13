Return-Path: <devicetree+bounces-325378-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IrmCCV+6VGq6qAMAu9opvQ
	(envelope-from <devicetree+bounces-325378-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 12:13:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id ACBCB749AB4
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 12:13:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=VoLD8bc7;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325378-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-325378-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8025B301424A
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 10:13:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 461433E5EF3;
	Mon, 13 Jul 2026 10:13:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F83A3C81A9
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 10:13:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783937624; cv=none; b=BPWZHxF+8a6PdA8aQsYIEMqU0z/aBerznA1563KASoUebtV+aA1/WujTdQQhYK9BRmuJueDqvAapMZWsUbdtevaZU4Xm6eNtstFlsVWwmd4dZXvZQR0QE5plXK2gePZmXzwPn27DIiFdiMRyeT1sM9WRhUYXsNj3Zp+TgHm9NGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783937624; c=relaxed/simple;
	bh=ANQVKZVbhHTMSOHkUCE5KkJ7tFRvj+HmDnrY7Lu+qw4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=YWvVO6wcW3UgoGrw8tD90UVhmUv27FrQQ3TH3kPvar0gdVKRbx73azxGO2UVLapd0rgeJWSHXmPauHGiLmZtAwM9xcyU3vwkDaE0mQuQbQEdQpSJqo0xyOt8COgL7FO+2A+gzHi0F4QEDXjFsGyG3VBIDVFPl023KpQ4/4EZnfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VoLD8bc7; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D12C1F00A3D;
	Mon, 13 Jul 2026 10:13:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783937622;
	bh=H7vQ7bWq9uCbycXa4tVFVOTqwgXO8ifRlZEJt7lWlb0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=VoLD8bc72E+UAuQ7u2oqxyFtPzYQLgI2ck/3jEN35bWXZdeEpc4rH7oq/9SOs+kzU
	 MfqGZrrK/LaPcftCNOem54TpKR5cL4HVTmq30ww1RJWZRZhjJgGYy9KpMUcHp/EJq4
	 G1EsRVECI2CjcFFQ8NskEdUoEFdS01e2q4oOvB4Jo6sos5h2FXfLA4OD2sba/EnAZE
	 +Kb8usRc0UAW4NS+CEW6d+Bwd1GkibNcb/+SV5cTGjo1GcatIbNTC4xDseB7Rr7tdq
	 IM691RfvsYuSMf0Rw0HmTcIunRVJiqlLkzhuhFUWihKWo1yCscb3nYVzk8Fc7m9qsH
	 Ug/GtQ7VkWHWQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 07/10] drm/mediatek: mtk_dsi: Add support for MT8196
Reply-To: sashiko-reviews@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
In-Reply-To: <20260713095837.16590-8-angelogioacchino.delregno@collabora.com>
References: <20260713095837.16590-1-angelogioacchino.delregno@collabora.com>
 <20260713095837.16590-8-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Jul 2026 10:13:42 +0000
Message-Id: <20260713101342.7D12C1F00A3D@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-325378-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,collabora.com:email,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ACBCB749AB4

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Integer overflow and time-domain unit mismatch (bps vs Mbps) in Qo=
S HW buffer calculations corrupts DSI thresholds.
- [High] Space domain unit mismatch (Bytes vs Buffer Units) in QoS threshol=
d calculations bypasses physical FIFO limits.
--

--- Patch [7]: [PATCH v2 07/10] drm/mediatek: mtk_dsi: Add support for MT81=
96 ---
commit b12ec6677a476992917258eedb82bde7663b944c
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Subject: drm/mediatek: mtk_dsi: Add support for MT8196

Add support for the new DSI IP found in the Kompanio Ultra MT8196 SoC.
This introduces the initialization of QoS parameters and can make use
of a DSI SRAM reserved buffer.

> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediate=
k/mtk_dsi.c
> index 2df2a9d5ec038..5af44c13bd5ac 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
[ ... ]
> @@ -753,6 +849,89 @@ static int mtk_dsi_set_dsc_params(struct mtk_dsi *ds=
i)
> +static void mtk_dsi_config_hw_buffers(struct mtk_dsi *dsi)
> +{
[ ... ]
> +	data_rate_per_buf =3D dsi->data_rate * dsi->lanes / 8 / buffer_unit;

[Severity: High]
Will this calculation overflow 32-bit arithmetic for typical displays?
Since dsi->data_rate is in Hz, a bandwidth over 1 Gbps combined with 4 lanes
will exceed the u32 limit before the division.

Also, is it intentional that data_rate_per_buf is calculated in units per
second instead of units per microsecond? Later in mtk_dsi_config_hw_buffers=
(),
it is mixed with microsecond constants and fill_rate.

> +
> +	/* Calculate valid threshold and avoid exceeding FIFO size */
> +	out_valid_thresh =3D MTK_DSI_DEFAULT_QOS_VALID_FIFO_US * data_rate_per_=
buf;
> +	out_valid_thresh =3D min(out_valid_thresh, MTK_DSI_MAX_FIFO_BYTES - 1);

[Severity: High]
Does this min() correctly clamp the threshold? out_valid_thresh appears to =
be
calculated in buffer units, but it is being clamped against a limit specifi=
ed
in bytes (MTK_DSI_MAX_FIFO_BYTES - 1, which is 1553). For an MT8196 where a
buffer unit is 32 bytes, this would allow up to 1553 buffer units (49,696
bytes), bypassing the intended physical FIFO limits.

[ ... ]
> +	pclk_mhz =3D dsi->vm.pixelclock / HZ_PER_MHZ;
> +	fill_rate =3D pclk_mhz * data->pixels_per_iter * dsi_buf_bpp / buffer_u=
nit;
> +
> +	/* Calculate QoS Anti-Latency parameters */
> +	sodi_hi =3D MTK_DSI_MAX_FIFO_BYTES * num_hw_buffers;

[Severity: High]
Is this mixing bytes and buffer units? MTK_DSI_MAX_FIFO_BYTES is in bytes,
but it seems to be multiplied by the number of hardware buffers here instead
of a byte-based metric.

> +	sodi_hi -=3D (fill_rate - data_rate_per_buf) * 12 / 10;

[Severity: High]
Could this subtraction cause an integer underflow? fill_rate is calculated
using pclk_mhz so it is a per-microsecond rate, while data_rate_per_buf is
a per-second rate. Subtracting a large per-second rate from a small
per-microsecond rate will wrap around.

> +	sodi_lo =3D (23 + 5) * data_rate_per_buf;
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260713095837.1659=
0-1-angelogioacchino.delregno@collabora.com?part=3D7

