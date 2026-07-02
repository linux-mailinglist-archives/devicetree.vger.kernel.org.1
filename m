Return-Path: <devicetree+bounces-319530-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NVBUA5WoRmq0bAsAu9opvQ
	(envelope-from <devicetree+bounces-319530-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 20:06:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id DADDE6FBD60
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 20:06:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=OxUPW5Mt;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319530-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-319530-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7055F3028E7C
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 18:06:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C39A2346FB3;
	Thu,  2 Jul 2026 18:06:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABDEB37A83C
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 18:06:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783015569; cv=none; b=Q3TUemUjuQblM7AV3vl5aRpYXYueJz6YZVhVz3SUYDg1lH1j6hZXczDe8IeCF/iaHZW040FXxgARLCk9XEjQc+6MA+QTZyZk1XJhZ1dbcbun4F9Y3tiFPvDV/wskzsmm1tLg0Glo6IUdUU9ldiuid7rIOGt0SYUfT3tDoXmccw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783015569; c=relaxed/simple;
	bh=uAdBvMm2nmW4CQYMEN8NOpa5n4U950eaeUj4DzZG8V4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=M9/6tOPTQGoFBteVjPK0DS4ULcidM3PY9FGPvlvjIo0paUPw5orNKSVJhZaXgTCKkQx5sMlA91WU+FNF1tSlzfa+H+he8OdfmwcbuLxDY+j5pNOA3FcXmPabUWZNMqOSg8QXjJ0Zy7wDWL/A9qPueCvVCiP1TPdMskMCaXnkVCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OxUPW5Mt; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58FFE1F000E9;
	Thu,  2 Jul 2026 18:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783015568;
	bh=tMeeb6R3P0ahGFz46OVDZiE6KuunCQ6MMA6CgAup8UI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=OxUPW5MtfIEQuBMjU1KZg7GHKapDJa4ERR61WQg3nok+xfCi9/5kdS4BsMN3dRjK2
	 2kMSLKr7zjvYr0Ovz8zFSDbl0q4jP589xKV8cfkpjr0LFN7b7QUa6k2ZusGsncMxVY
	 Ck4TiDxnlJfHEL3EcP7UK9Y9ZfRxcPHul2Vml9t3NdkOmPI85Yq33AMAIyiMdQev34
	 slFef1iyvT7+ew9OtuZn4Wmqcd60yxQfJ441+S9fWDnBBOcPUeSlOlnPXw7fxzHFNI
	 LXDDZvlh7tBn0FmsoPHj9GDvdrZkLbdh0eP8ddtySoq+QjfL43DxrEPdficZ/ZfGVg
	 T+fkCQd6/G9kQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 08/15] clk: mediatek: Add MT8189 vlpckgen clock support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260701-mt8189-clocks-system-base-v1-8-2b048feea50a@collabora.com>
References: <20260701-mt8189-clocks-system-base-v1-0-2b048feea50a@collabora.com>
 <20260701-mt8189-clocks-system-base-v1-8-2b048feea50a@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 18:06:07 +0000
Message-Id: <20260702180608.58FFE1F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-319530-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:louisalexis.eyraud@collabora.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DADDE6FBD60

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The driver is missing the MODULE_DEVICE_TABLE(of, ...) declarati=
on for the OF match table, preventing module autoloading.
--

commit ee1b10c9e19991da4719281ac8913fc069799dd3
Author: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>

clk: mediatek: Add MT8189 vlpckgen clock support

This commit adds support for the MT8189 vlpckgen clock controller. It
provides the necessary muxes and dividers for clock selection in the
vlp domain for other IP blocks.

> diff --git a/drivers/clk/mediatek/clk-mt8189-vlpckgen.c b/drivers/clk/med=
iatek/clk-mt8189-vlpckgen.c
> new file mode 100644
> index 0000000000000..39ca051b9ef81
> --- /dev/null
> +++ b/drivers/clk/mediatek/clk-mt8189-vlpckgen.c

[ ... ]

> +static const struct of_device_id of_match_clk_mt8189_vlpck[] =3D {
> +	{ .compatible =3D "mediatek,mt8189-vlpckgen", .data =3D &vlpck_desc },
> +	{ /* sentinel */ }
> +};

[Severity: Medium]
Does this driver need a MODULE_DEVICE_TABLE(of, of_match_clk_mt8189_vlpck)
declaration here?=20

Without it, udev might not automatically load the module during boot when
the device tree node is encountered, as the modalias information won't be
generated.

> +
> +static struct platform_driver clk_mt8189_vlpck_drv =3D {
> +	.probe =3D mtk_clk_simple_probe,
> +	.remove =3D mtk_clk_simple_remove,
> +	.driver =3D {
> +		.name =3D "clk-mt8189-vlpck",
> +		.of_match_table =3D of_match_clk_mt8189_vlpck,
> +	},
> +};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701-mt8189-clo=
cks-system-base-v1-0-2b048feea50a@collabora.com?part=3D8

