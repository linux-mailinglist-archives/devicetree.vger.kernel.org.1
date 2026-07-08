Return-Path: <devicetree+bounces-323228-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hHLuGJXQTmqQUgIAu9opvQ
	(envelope-from <devicetree+bounces-323228-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 00:35:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 044ED72AE72
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 00:35:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=cebueQPR;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323228-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-323228-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4BA0C301B038
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 22:35:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC77A3FE667;
	Wed,  8 Jul 2026 22:34:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7748381B1A
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 22:34:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783550098; cv=none; b=Rsessap10DzkGUVu3tQe6eriQipVszfUQb9z+zkmuanY85xqgpmRX47iAf3fuVNccIwryD1yRKUd6c2O7GAkI+TxGvaBUgjVc0YWYc520vnjfFm31h5U2MxPH9GbDFd1VSHx3qxnqezpLTB0yWFh6a4F/MyPCabW61Y5IIsd1JA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783550098; c=relaxed/simple;
	bh=Hy/+TgD2ob57RojBd0ASGw2wvDYs0Kl8MhD2tAIjgb8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=T0spORWVzWYzSpcvgaUjnvT+LQF28gdzEWkhkcqnBgftnMdIlEbfhl5FIprFC2C+RTl0zhVdQJw04GpfTMWh955eJ+xm+Zem694DFTdvVoVtEVsNxhO5x4b/TbK0rK9M5BxVA3zOz6k3eIIIGmCZCud6hCKZhG5zzHn5eG9dnuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cebueQPR; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B38A1F00A3D;
	Wed,  8 Jul 2026 22:34:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783550097;
	bh=EBd9YOh1Ze/PulixUdkPROwxUukMMNu8+BtVJApaO8Q=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=cebueQPR8FiSnA4u3kZpuiNOZKQf7GsbFpGTik2ScfDhcmW1n2BIZLT+CK2JoLBbk
	 wJcg2ByyoeJZrw1zw4qbl6wxTM0L080AjK6/1pi95nvTZv1JMod56NV7bh+e2yjFTD
	 kouHDZxgXffsQW3lww0QS8o7Dutkezy0ob/Pp5AZUmxlZoFowYxRmGEMEjNM1y66zE
	 kkLKuBn9e7Z0wObA7kSWbIeuc4fk0SEIT3P4uBYLn18tfsc/mvhSkCmiKysbfBU5rZ
	 V3twC7JA9f1KsPk4SqlZGRGHnTNQoU+wL7ccT/MAmUc3/hpm2W5Kq+WYONbnn0z9w8
	 b1d/tZdGAR3wg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v5 08/13] net: ethernet: oa_tc6: Use the
 read_mms/write_mms functions for C45
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ciprian Regus" <ciprian.regus@analog.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260708-adin1140-driver-v5-8-4aca7b51a58b@analog.com>
References: <20260708-adin1140-driver-v5-0-4aca7b51a58b@analog.com>
 <20260708-adin1140-driver-v5-8-4aca7b51a58b@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 22:34:57 +0000
Message-Id: <20260708223457.6B38A1F00A3D@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-323228-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:ciprian.regus@analog.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,analog.com:email,lists.linux.dev:replyto,smtp.kernel.org:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 044ED72AE72

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] This problem wasn't introduced by this patch, but the function `oa=
_tc6_mdiobus_read` assigns the integer return value of `oa_tc6_read_registe=
r()` to a boolean variable `ret`, causing negative error codes to be incorr=
ectly returned as `1`.
--

--- Patch [8]: [PATCH net-next v5 08/13] net: ethernet: oa_tc6: Use the rea=
d_mms/write_mms functions for C45 ---
commit cf33489c74af705521abd2c30e1068ed10134f47
Author: Ciprian Regus <ciprian.regus@analog.com>

net: ethernet: oa_tc6: Use the read_mms/write_mms functions for C45

Accessing PHY MMD devices requires control transactions to registers in
a memory map other than 0. Replace the current formatting of the
register addresses with the oa_tc6_read_register_mms and
oa_tc6_write_register_mms functions.

> diff --git a/drivers/net/ethernet/oa_tc6.c b/drivers/net/ethernet/oa_tc6.c
> index 955148d3cefc4..417c15d1ff423 100644
> --- a/drivers/net/ethernet/oa_tc6.c
> +++ b/drivers/net/ethernet/oa_tc6.c

[Severity: High]
This is a pre-existing issue, but I noticed it while reviewing this area.
Could assigning the integer return value of oa_tc6_read_register to the
boolean variable ret in oa_tc6_mdiobus_read truncate negative error codes?

drivers/net/ethernet/oa_tc6.c:oa_tc6_mdiobus_read() {
    ...
    bool ret;

    ret =3D oa_tc6_read_register(tc6, OA_TC6_PHY_STD_REG_ADDR_BASE |
                   (regnum & OA_TC6_PHY_STD_REG_ADDR_MASK),
                   &regval);
    if (ret)
        return ret;
    ...
}

If a read operation encounters an error and returns a negative error code
like -EIO or -ETIMEDOUT, will this boolean conversion cause the function to
incorrectly return 1 on failure?

Since the MDIO core interprets a positive return value as a successfully
read 16-bit register value, returning 1 could cause read failures to be
silently presented to the networking stack as successfully reading the value
0x0001, breaking error propagation on the MDIO bus.

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-adin1140-d=
river-v5-0-4aca7b51a58b@analog.com?part=3D8

