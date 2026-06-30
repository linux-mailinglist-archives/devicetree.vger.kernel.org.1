Return-Path: <devicetree+bounces-317608-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id T5XeKbqUQ2qUcgoAu9opvQ
	(envelope-from <devicetree+bounces-317608-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 12:04:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 06AD66E2975
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 12:04:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=F4GGF3Pn;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317608-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317608-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2BBD93032746
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 10:00:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3F0E3E7166;
	Tue, 30 Jun 2026 10:00:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A13EC3E275E
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 10:00:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782813642; cv=none; b=Wzu2h5Db3B9xaonPwiuUGKtYCJTu0kuCi3iedjovnvOGGTtVc8WtklQfY/uDPSEbUKuF5qpzfE6/pp6JaLPWeUshZER3C8EdZVkZSenpSsR6noCvwN6nCfJx6T3zb/d6GurdXuQAwc3KeFJ8HxHPnAI9IEhKU1fTGvgxklBba3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782813642; c=relaxed/simple;
	bh=Jo/u/IrxWp2fEahL8m/3L5/s9zUpbR2+Q7/ck52lokM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=XxzphawW0oe8SGNe8I1SWBxq+eS6x1wSTRxumlWSxwXkI1yAqDt7bohV/6xM4nTX/HZHWfrql67DVtSrf7D/ZpEcCYTCTfnInNn3zG72GSR+8W8LoMq45gNKYZM6Q8rnoMERSysxmet2b3rIdNUsRChsuGRCJBfIiuWMH8Uxro4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4GGF3Pn; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22FB81F000E9;
	Tue, 30 Jun 2026 10:00:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782813641;
	bh=krf1iy1iyelIXavxHWzxNkZV2VB/PU2jNQAV+csvF84=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=F4GGF3PnCoTB4k9oHOySyieHKWwHKoOD5nLZlEvjjbE+K1Zv+c5UhDKMEG8wAkGMS
	 Kr1sJL+jzVGDTSO9jICRgoanmR3W7ii767FNtZU5TWrhcsnlW6ilaWxZYeg/dB6kpp
	 7R0WTmiL9d/5IOMJ5U9jLdP7o77f2gZwqVQKCrge9ZU2THSfa8zb9y40eg7lx+zXhA
	 8F1Muj0ClhinOQypHJqot6pRgs+PozlhfJvyCiYvmEU1VDolINU3W89VMY6lyRt4Z+
	 vQF4/hCWFaQfOl1raY0Ogagl9XLluf/2MoeceSvCvYQsS3oUeF88al8tPtDI/Of0u7
	 IPNm0VY7z/nag==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 06/13] nvmem: microchip-otpc: add tag-based packet
 lookup
Reply-To: sashiko-reviews@lists.linux.dev
To: "Varshini Rajendran" <varshini.rajendran@microchip.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260630093603.38663-7-varshini.rajendran@microchip.com>
References: <20260630093603.38663-1-varshini.rajendran@microchip.com>
 <20260630093603.38663-7-varshini.rajendran@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 10:00:40 +0000
Message-Id: <20260630100041.22FB81F000E9@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-317608-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:varshini.rajendran@microchip.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 06AD66E2975

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

New issues:
- [High] Use of `readl_relaxed()` for sequential FIFO stream reads and ASCI=
I tag matching causes data corruption and tag lookup failures on big-endian=
 systems.

Pre-existing issues:
- [High] Concurrent NVMEM reads lack serialization, leading to race conditi=
ons on shared OTPC hardware control registers.
--

commit 3ff90071d02f74b840b6a4d51b5716387dc75e88
Author: Varshini Rajendran <varshini.rajendran@microchip.com>

nvmem: microchip-otpc: add tag-based packet lookup

This commit adds support for accessing OTP packets by their 4-byte ASCII
tag while preserving backward compatibility with the existing ID-based
lookup. It caches packet metadata including the tag during probe and
changes the NVMEM memory stride to 1 to support tag-based offsets.

> diff --git a/drivers/nvmem/microchip-otpc.c b/drivers/nvmem/microchip-otp=
c.c
> index df979e8549fdb..bf8589048e17c 100644
> --- a/drivers/nvmem/microchip-otpc.c
> +++ b/drivers/nvmem/microchip-otpc.c

[ ... ]

> @@ -154,12 +233,11 @@ static int mchp_otpc_read(void *priv, unsigned int =
off, void *val,
>  	int ret, payload_size;
> =20
>  	/*

[Severity: High]
This is a pre-existing issue, but does mchp_otpc_read() need serialization
to protect against concurrent access?

The NVMEM core does not serialize reg_read callbacks. If two threads
concurrently access the NVMEM device (e.g., via sysfs and a kernel
consumer), they will interleave calls to mchp_otpc_prepare_read().

Because mchp_otpc_prepare_read() mutates the shared MCHP_OTPC_MR and
MCHP_OTPC_CR registers without holding any locks, could this lead to
hardware register corruption and invalid payload data being returned?

> -	 * We reach this point with off being multiple of stride =3D 4 to
> -	 * be able to cross the subsystem. Inside the driver we use continuous
> -	 * unsigned integer numbers for packet id, thus divide off by 4
> -	 * before passing it to mchp_otpc_id_to_packet().
> +	 * From this point the offset has to be translated into the actual
> +	 * packet. For this we traverse the table of contents stored in a list
> +	 * "packet" based on the access type - packet id or tag.
>  	 */
> -	packet =3D mchp_otpc_id_to_packet(otpc, off / 4);
> +	packet =3D mchp_otpc_resolve_packet(otpc, off);

[ ... ]

> @@ -190,6 +268,29 @@ static int mchp_otpc_read(void *priv, unsigned int o=
ff, void *val,
>  	return 0;
>  }
> =20
> +/**
> + * mchp_otpc_read_packet_tag() - read tag from packet payload
> + * @otpc: OTPC private data
> + * @offset: packet offset in OTP memory
> + * @val: pointer to store the tag value
> + *
> + * Return: 0 on success, negative errno on failure
> + */
> +static int mchp_otpc_read_packet_tag(struct mchp_otpc *otpc, unsigned in=
t offset,
> +				     unsigned int *val)
> +{
> +	int ret;
> +
> +	ret =3D mchp_otpc_prepare_read(otpc, offset);
> +	if (ret)
> +		return ret;
> +
> +	writel_relaxed(0, otpc->base + MCHP_OTPC_AR);
> +	*val =3D readl_relaxed(otpc->base + MCHP_OTPC_DR);

[Severity: High]
Since readl_relaxed() performs a CPU-dependent byteswap, will this corrupt
the 4-byte ASCII tag on big-endian architectures?

If the tag bytes are swapped, the tag lookup will fail against the
constants provided by the device tree.

This is also a pre-existing issue in the payload stream read loop inside
mchp_otpc_read(). In that loop, readl_relaxed() is used to pull sequential
FIFO stream data, which corrupts payload byte ordering on big-endian
systems.

Should these accessors be changed to use stream accessors to prevent
unwanted byteswapping?

> +
> +	return 0;
> +}
> +

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260630093603.3866=
3-1-varshini.rajendran@microchip.com?part=3D6

