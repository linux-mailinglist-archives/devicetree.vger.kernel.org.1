Return-Path: <devicetree+bounces-315898-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hjGbJQ3mPWpO7wgAu9opvQ
	(envelope-from <devicetree+bounces-315898-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 04:38:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B20D6C9D44
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 04:38:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="Az/mQQX2";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315898-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315898-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DD798300B74B
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 02:37:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7934436998A;
	Fri, 26 Jun 2026 02:37:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E4531F981
	for <devicetree@vger.kernel.org>; Fri, 26 Jun 2026 02:37:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782441463; cv=none; b=P5LbUSGrfaNPU30DHw1PsGapdu7qzGJhNtVnDdNCXVT2c5ZaFKdoIqb8R/vmRW/L/y5i+6jC09qW0Pfs0X3cBVs+R5sWVXx2AR8bP1ezQGrhww5WfdufTBd8q1P4uFAfNJBcO637SXEOzhczd/hbXqkfJjWYoBTBqWb9TuLgxs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782441463; c=relaxed/simple;
	bh=HC0fkDqG1v9Y84Im5iCLyCNZvi3hSCIu/sOFS+8aRQE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=TswFcPtB/ClBf7VZotZLTS4BvPYWefjhuWIVxTws99pc4TmIcE5VFmlZVvEOTymA/5f7FJh8TxaO8hYVNnurlr6a/djQeRadJX1nD0zFZcY2c8QMsJ/37Llz3EJMf2TMuaoBw+LX61A6+9ksk/QXfP1RM9iFZ4QbZJFsbaEGd7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Az/mQQX2; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6FB891F000E9;
	Fri, 26 Jun 2026 02:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782441460;
	bh=aLeDCgxVFODfeqAdckpvDq7I3O3mBXeIuFhRV4X9TC4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Az/mQQX2vV7sJKTnRfjLt5tGw0pohI/5TcHvJ0dJNkUzb0MTPdSu+UZuvSLjzEEs7
	 HKrXmVP4F+Q8m2XeG7OjtVSa8L1LDa7xe1QLpooZJ1mctwtyUJALPyWtLD/tpPfSQT
	 AZw2Wte39+FQFAvNIizL0Qv8XdOBI/9GIzviHar9cNE6V2L8rYYhzID29SQsmGWLMx
	 Fcw8H1nI605S37seAkXoasQeM+EHD2aPXuaM9+tMp1I85KQrix48W4r7TzXZ6zlEBs
	 e7JsKdarVBXGoMprwNzCcVWQS2olRBZrpT4zIApzxaZh3uGIL+f3bqvV6zogorV/GC
	 xdc5JLYAIO3wQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 3/9] ASoC: loongson: Add Loongson-2K0300 I2S
 controller support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Binbin Zhou" <zhoubinbin@loongson.cn>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <4d3caa62d4275e1495505387198408f4d30d453c.1782439646.git.zhoubinbin@loongson.cn>
References: <cover.1782439646.git.zhoubinbin@loongson.cn>
 <4d3caa62d4275e1495505387198408f4d30d453c.1782439646.git.zhoubinbin@loongson.cn>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 26 Jun 2026 02:37:40 +0000
Message-Id: <20260626023740.6FB891F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-315898-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:zhoubinbin@loongson.cn,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,loongson.cn:email,lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0B20D6C9D44

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

New issues:
- [High] Missing hardware quirk reset sequence on system resume.
- [Medium] Read-Modify-Write on a volatile control register can unintention=
ally re-enable transient hardware states during soft reset.

Pre-existing issues:
- [High] Illegal overriding of platform device name during probe leading to=
 Use-After-Free and sysfs corruption.
--

commit b9499f3634cc6b7a7bad0f418f80a05c56aa0954
Author: Binbin Zhou <zhoubinbin@loongson.cn>

ASoC: loongson: Add Loongson-2K0300 I2S controller support

The Loongson-2K0300 I2S interface differs significantly from the
Loongson-2K1000. Although both utilize external DMA controllers, the
Loongson-2K0300 does not require additional registers for routing
configuration.

Due to hardware design flaw, an extra controller reset sequence is
required during probe.

> diff --git a/sound/soc/loongson/loongson_i2s_plat.c b/sound/soc/loongson/=
loongson_i2s_plat.c
> index ac054b6ce6322..82d95c6644ef0 100644
> --- a/sound/soc/loongson/loongson_i2s_plat.c
> +++ b/sound/soc/loongson/loongson_i2s_plat.c

[ ... ]

> @@ -87,11 +108,17 @@ static int loongson_i2s_plat_probe(struct platform_d=
evice *pdev)
>  	if (IS_ERR(i2s_clk))
>  		return dev_err_probe(dev, PTR_ERR(i2s_clk), "clock property invalid\n"=
);
>  	i2s->clk_rate =3D clk_get_rate(i2s_clk);
> +	i2s->rev_id =3D plat_config->rev_id;
> =20
>  	dma_set_mask_and_coherent(dev, DMA_BIT_MASK(64));
>  	dev_set_name(dev, LS_I2S_DRVNAME);

[Severity: High]
This is a pre-existing issue, but does calling dev_set_name() on an already
registered platform device cause a use-after-free?

Calling dev_set_name() here frees the existing kobj->name without renaming
the underlying sysfs directory.

Could this corrupt the kobject state and lead to kernel warnings upon device
removal?

>  	dev_set_drvdata(dev, i2s);
> =20
> +	if (i2s->rev_id =3D=3D 1) {
> +		regmap_update_bits(i2s->regmap, LS_I2S_CTRL, I2S_CTRL_RESET, I2S_CTRL_=
RESET);

[Severity: High]
Since this controller requires a reset due to a hardware flaw, does it also
need this reset applied in the resume path?

When the system suspends, power to the controller is typically lost. Upon
resume, the shared i2s_resume() function is called:

sound/soc/loongson/loongson_i2s.c:i2s_resume() {
	struct loongson_i2s *i2s =3D dev_get_drvdata(dev);

	regcache_cache_only(i2s->regmap, false);

	return regcache_sync(i2s->regmap);
}

Because LS_I2S_CTRL is typically a volatile register, regcache_sync() will
not automatically restore it. Will this leave the hardware design flaw
unmitigated after a suspend/resume cycle?

[Severity: Medium]
Does using regmap_update_bits() on a volatile control register risk
preserving unintended active states during the soft reset?

Since this performs a read-modify-write, if the bootloader or previous
uninitialized state left other functional bits active, they might be
logically preserved and kept enabled during the reset sequence.

Would it be safer to use regmap_write() to assert the reset while explicitly
ensuring all other functional bits are zeroed out?

> +		fsleep(200);
> +	}
> +
>  	ret =3D devm_snd_soc_register_component(dev, &loongson_i2s_edma_compone=
nt,
>  					      &loongson_i2s_dai, 1);
>  	if (ret)

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1782439646.gi=
t.zhoubinbin@loongson.cn?part=3D3

