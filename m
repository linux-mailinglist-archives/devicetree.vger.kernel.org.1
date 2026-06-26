Return-Path: <devicetree+bounces-315981-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GliHEZAxPmobBQkAu9opvQ
	(envelope-from <devicetree+bounces-315981-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 10:00:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A3F6CB304
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 10:00:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=l98AsZbc;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315981-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315981-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 42E7B302EE86
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 08:00:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9ACF3E3DAB;
	Fri, 26 Jun 2026 08:00:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9CE43DB32E
	for <devicetree@vger.kernel.org>; Fri, 26 Jun 2026 08:00:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782460813; cv=none; b=DqpV3HHedV+B+xxN3bQvNe6Q605wSTpjc++/3L4UQPFoOfwLJpAM+bIgmIDh8Mw7zjddvd9Ybav9PCaenPKOpXY/aBvWmr3EFTrebgE6++G+4AJxWlXDoekJxlC9PpoMR5+I68+xWNDUaoWRiY/nVjJk7CqF2Ngnivqamft/baY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782460813; c=relaxed/simple;
	bh=zXnqmnMBsui0S12+79yYS83DGfU1KEDQllOcEpz7zs0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=jMQeV10Ajiq6N5DqO2bk04NcaTAcL4Qq8T4F9TB+zobKVbk7rhq/XLOgeYANVWE7fP20dxleeuJ+hdHhD8MVp8erXAs6XZv8xMxgy4ct3xdToDhYzbl+2lD1ovHRgkmnXcLhCqFe+kZQh9JZ8GuNY8Kb/y7G2uVo0u/QbUwURTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l98AsZbc; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C593F1F000E9;
	Fri, 26 Jun 2026 08:00:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782460812;
	bh=QflDPfYKo1q3NPmvfU1mW+6sHkESYmQCq3tRJGGg9kA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=l98AsZbcT1L4XXg8ITDEFF+xcGgER/cbfsDH2QlCC3/+eHsjpSkoFqHNBkKPq6YEi
	 b2dXxBIOkxlZiIZUAQYnJiFDIO6f8fFwny1JwAT6XFRtVPD/worg+ER+aK9ENxGgi1
	 yn1dLwXaUnJfKe1msCnOx4sEduK2YrmjVVJHP4RYdK/Ro7ZlhPysidYsPalY+ZqjGa
	 prm2FrufNtkOFsP0PWz6SGsMWNVL74S+SC/xRpBFasfzZGa9VxuPgF1QJ4xF63OP/g
	 k87KgnOr3HPC62V1nUU2Hiha7AHLtHDkjh+7tXmsy72IE7ohKy7VaOqPoKxmlMiN25
	 ZgsOOXCKSFbtw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 2/2] reset: mediatek: add syscon-based reset
 controller driver
Reply-To: sashiko-reviews@lists.linux.dev
To: peter.wang@mediatek.com
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260626074820.2537772-3-peter.wang@mediatek.com>
References: <20260626074820.2537772-1-peter.wang@mediatek.com>
 <20260626074820.2537772-3-peter.wang@mediatek.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 26 Jun 2026 08:00:11 +0000
Message-Id: <20260626080011.C593F1F000E9@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-315981-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:peter.wang@mediatek.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto,mediatek.com:email,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 94A3F6CB304

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The driver incorrectly uses read-modify-write operations (`regmap_=
write_bits`) on dedicated set/clear registers, causing spurious resets or c=
lear operations on unrelated hardware lines.
- [Medium] The temporary array `arr` is allocated with `devm_kcalloc`, perm=
anently wasting memory for the lifetime of the device.
--

commit 51d3326953762868e035e2bcec526fcc8e9e6083
Author: Peter Wang <peter.wang@mediatek.com>

reset: mediatek: add syscon-based reset controller driver

Add a new reset controller driver for MediaTek SoCs that expose reset
lines through memory-mapped registers managed by a syscon node. The
driver reads reset configurations from the mediatek,reset-bits property.

> diff --git a/drivers/reset/reset-mediatek-syscon.c b/drivers/reset/reset-=
mediatek-syscon.c
> new file mode 100644
> index 0000000000000..da8aa646cee76
> --- /dev/null
> +++ b/drivers/reset/reset-mediatek-syscon.c
[ ... ]
> +static int mediatek_syscon_reset_assert(struct reset_controller_dev *rcd=
ev,
> +					unsigned long id)
> +{
> +	struct mediatek_syscon_reset_data *data =3D
> +		container_of(rcdev, struct mediatek_syscon_reset_data, rcdev);
> +	struct mediatek_syscon_reset_control *rstc =3D &data->mrstc[id];
> +	unsigned int val =3D BIT(rstc->assert_bit);
> +
> +	return regmap_write_bits(data->regmap, rstc->assert_offset, val, val);

[Severity: High]
Since the hardware uses separate set and clear registers, could using
regmap_write_bits() here cause an unintended read-modify-write cycle?

If the register is Write-1-to-Set, reading it might return the current
status, and writing that back will unintentionally write '1' to other
active lines in the same register. Should this use a direct regmap_write()
instead?

> +}
> +
> +/**
> + * mediatek_syscon_reset_deassert() - Deassert a specific reset line.
[ ... ]
> + */
> +static int mediatek_syscon_reset_deassert(struct reset_controller_dev *r=
cdev,
> +					  unsigned long id)
> +{
> +	struct mediatek_syscon_reset_data *data =3D
> +		container_of(rcdev, struct mediatek_syscon_reset_data, rcdev);
> +	struct mediatek_syscon_reset_control *rstc =3D &data->mrstc[id];
> +	unsigned int val =3D BIT(rstc->deassert_bit);
> +
> +	return regmap_write_bits(data->regmap, rstc->deassert_offset, val, val);

[Severity: High]
Similarly, for the deassert (Write-1-to-Clear) register, does using a
read-modify-write operation here risk unintentionally clearing other
unrelated reset lines that happen to read back as '1'?

> +}
[ ... ]
> +static int mediatek_syscon_reset_probe(struct platform_device *pdev)
> +{
[ ... ]
> +	if (count % 5 !=3D 0) {
> +		dev_err(dev, "mediatek,reset-bits count (%d) must be a multiple of 5\n=
", count);
> +		return -EINVAL;
> +	}
> +
> +	nr_resets =3D count / 5;
> +
> +	arr =3D devm_kcalloc(dev, count, sizeof(u32), GFP_KERNEL);

[Severity: Medium]
Since arr is only used temporarily during probe to parse the device tree
properties and is not needed afterwards, does using devm_kcalloc()
unnecessarily keep this memory allocated for the lifetime of the device?

Would a standard kcalloc() followed by a kfree() at the end of the function
be more appropriate?

> +	if (!arr)
> +		return -ENOMEM;
> +
> +	ret =3D of_property_read_u32_array(np, "mediatek,reset-bits", arr, coun=
t);
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260626074820.2537=
772-1-peter.wang@mediatek.com?part=3D2

