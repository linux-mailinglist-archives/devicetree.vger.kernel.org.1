Return-Path: <devicetree+bounces-304522-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KBH8FaI1Gmp+2AgAu9opvQ
	(envelope-from <devicetree+bounces-304522-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 02:56:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C3660A804
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 02:56:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 677C93093294
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 00:49:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 365A52DE70D;
	Sat, 30 May 2026 00:49:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cr8oRwjx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECF32D0603
	for <devicetree@vger.kernel.org>; Sat, 30 May 2026 00:49:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780102157; cv=none; b=KKSN3EERLxUybs12RPG0Er/XkCgyUmOXKhE7q/rDPPBj52YVNhIIChGz5K3EnvaKBwbVlmAxEQ7CnE7cnMzLA0/C7pth/yBItknY5jrDNpqxz5xy8jUsDKX8SlOEcNx20Odqjd5JES7HVJQdt9rlizo4n7qCEv7fgOf/mP0u/WQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780102157; c=relaxed/simple;
	bh=LrJSf1TFxlnhISZJGb/Z8L/TRk/s2hZvfv7zxy3i4Z4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=t6SK6nzLayfXcbdY3vpW6ly92huHYdt0pMGa7CviA9BMKnbMvb0L1/rJDukqLHQf/izJMRlhPXYq/INaNglvHjRQDqogZmnN0mOcR3gnNp53irkuT7aY83Kkv82MrX839bZflr0SMEsgyojmeiZGjMDbugj09T75RsBqdoLMGnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cr8oRwjx; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE8311F00899;
	Sat, 30 May 2026 00:49:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780102156;
	bh=eqbMM9kO1iE01uPoYSQmzQTUrSCWreiMABbnTMa9Pks=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=cr8oRwjxn7LEwObpX83+tFlyaANBI83NvM2OvHusRWRn/5ElxKmKOmoVLKXcYTo7A
	 Xm4Ila06PkMH60CjLA2Djr2D7jEkXKuIj/MfQsHley0EbKmOcHyd+VvVtaqFReTm/U
	 L671o9b4+5836qrmRpLa9ZslC95w92U+ArBWm7vxj8Y8OsmHE9zN3CZReYlOFxiFHT
	 sSbToC0GYQluWjHnsdikbICFb5AdVUvlbumo1ej2ds4QgYm3AuSARIET52lI4Xt389
	 5Bpl92F5cECL2y1ZHAEyOxqpnjZEFXfw5ljHSrIre6EGGmLBCK221c3P5Ca5nd5liC
	 YizLqLikJyJiQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v2 03/10] net: ethernet: oa_tc6: add
 OA_TC6_BROKEN_PHY quirk flag
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ciprian Regus via B4 Relay" <devnull+ciprian.regus.analog.com@kernel.org>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260527-adin1140-driver-v2-3-37e5c8d4e0a0@analog.com>
References: <20260527-adin1140-driver-v2-3-37e5c8d4e0a0@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 30 May 2026 00:49:15 +0000
Message-Id: <20260530004915.BE8311F00899@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-304522-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,ciprian.regus.analog.com,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,analog.com:email]
X-Rspamd-Queue-Id: A2C3660A804
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] A use-after-free can occur in `oa_tc6_exit` due to calling `kthrea=
d_stop` on a potentially exited SPI thread.
--

commit 2df5842f4d484126d9bd25fecac7f531ed8e5916
Author: Ciprian Regus <ciprian.regus@analog.com>

net: ethernet: oa_tc6: add OA_TC6_BROKEN_PHY quirk flag

This commit adds the OA_TC6_BROKEN_PHY quirk flag, allowing drivers to mana=
ge
the PHY manually by skipping oa_tc6's internal PHY initialization. It also
converts oa_tc6_init() to take a configuration structure to avoid extending
the function signature in the future.

> diff --git a/drivers/net/ethernet/oa_tc6.c b/drivers/net/ethernet/oa_tc6.c
> index baba5aad84dfa..7ae3639beaddd 100644
> --- a/drivers/net/ethernet/oa_tc6.c
> +++ b/drivers/net/ethernet/oa_tc6.c
[ ... ]
> @@ -1277,24 +1284,28 @@ static int oa_tc6_check_ctrl_protection(struct oa=
_tc6 *tc6)
> =20
>  /**
>   * oa_tc6_init - allocates and initializes oa_tc6 structure.
> - * @spi: device with which data will be exchanged.
> - * @netdev: network device interface structure.
> + * @config: pointer to a caller-filled structure describing the MACPHY
> + *          (SPI device, net_device, and config flags).
>   *
>   * Return: pointer reference to the oa_tc6 structure if the MAC-PHY
>   * initialization is successful otherwise NULL.
>   */
> -struct oa_tc6 *oa_tc6_init(struct spi_device *spi, struct net_device *ne=
tdev)
> +struct oa_tc6 *oa_tc6_init(struct oa_tc6_config *config)
>  {

[Severity: High]
This is a pre-existing issue, but can calling kthread_stop() in oa_tc6_exit=
()
lead to a use-after-free?

In oa_tc6_spi_thread_handler(), if oa_tc6_try_spi_transfer() returns an
error, the kthread function returns. This causes the kthread to exit and its
task_struct to be automatically freed.

Later, if the driver is unloaded or an error handling path invokes
oa_tc6_exit(), it unconditionally calls kthread_stop(tc6->spi_thread).

Since kthread_run() does not acquire an extra reference for the caller,
could kthread_stop() dereference the freed task_struct, potentially leading
to a kernel panic?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260527-adin1140-d=
river-v2-0-37e5c8d4e0a0@analog.com?part=3D3

