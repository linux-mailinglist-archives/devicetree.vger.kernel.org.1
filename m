Return-Path: <devicetree+bounces-309915-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TJd5N7qDKWqcYQMAu9opvQ
	(envelope-from <devicetree+bounces-309915-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 17:33:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3320766AD28
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 17:33:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Aobvwkql;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309915-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-309915-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2EEE63106FD8
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 15:28:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC441425CF5;
	Wed, 10 Jun 2026 15:28:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9E82404BC1
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 15:28:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781105306; cv=none; b=gT143LGQLCSV8d7iA41f7Vzl0AQe3+2vLvqwxp+cyGKRu2yl6GXF9g18ip26Jja4ERnQBpaE58ZcEMoLo/I8A2hHV1OKPUz85r9/ts0x/NeGTi+wiBJkOU1v60m/v+yqfYZo64cf+p+L0QB2wuSro6ElRneSrbeXo2HbmVEGMvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781105306; c=relaxed/simple;
	bh=2PWpYhfg3rtBtro2MR9qiPoWbpUfdRRwP4pRYnsFvWA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=FgiYlWgayL88JR+NtRqKeK97AI2rT1fhzm1QrwDRhE5f6gZesN3VXfVfXvkEdFhCH8R5Ho1biGiyp70HmVigAAqfPEBhHZ8VosjSKRfVvlxRXsWk4H8cbhf6R6QuNdDUpstuCb6IxErQoWTufzpumwx2ALAmyHUnyGRYK9NwvUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aobvwkql; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 299231F00898;
	Wed, 10 Jun 2026 15:28:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781105305;
	bh=xR8CQ9ynVnL8m9EcMEqt3j+d16oh7c83VXgDiC8ErxE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=AobvwkqlE3RTwov3tKwydoTgGqVj9u/kBGGmlGSLNT/utHz7EDojmD06F2SK3NirN
	 fWy+VW0vrYuT0TqmxLkY46L0qHH9oyb+T71/Em7TynwcBeL8z325Zs4VJ3fsGm8z1y
	 tm9k/FZJFrG/pbRf7lkfrCTpZsUaZa/8hQToa2A3h4l2X3c5pZ9qRmQc1Xl7+ODO9Q
	 eeodp69DIakpNx+obGksAyciGrxRpHcROlqfpGNXpFSjHuKxqBXhRJ9V0gvCuqr+w6
	 MC4IHNYpGQxgcuYHtLbC+R0aYuXU2VrPiYa7OKJLNzE/R1C6HtD/W8TJwnvas0pCtB
	 D81V1oDeizXVw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v4 05/13] net: ethernet: oa_tc6: Export
 standard defined registers
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ciprian Regus via B4 Relay" <devnull+ciprian.regus.analog.com@kernel.org>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260609-adin1140-driver-v4-5-0753e28ee004@analog.com>
References: <20260609-adin1140-driver-v4-5-0753e28ee004@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Jun 2026 15:28:24 +0000
Message-Id: <20260610152825.299231F00898@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-309915-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:devnull+ciprian.regus.analog.com@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,ciprian.regus.analog.com,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,smtp.kernel.org:mid,analog.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3320766AD28

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Missing bounds check before extending the receive SKB allows a mal=
formed or corrupted hardware response to crash the kernel via `skb_over_pan=
ic()` or NULL pointer dereference.
--

commit 0ab8a76f7ac8aad2293bc78260fe46bae8c49cec
Author: Ciprian Regus <ciprian.regus@analog.com>

net: ethernet: oa_tc6: Export standard defined registers
   =20
This commit moves standard Open Alliance TC6 register addresses and subfiel=
ds
into the public oa_tc6 header so other ethernet drivers can use them direct=
ly.

> diff --git a/drivers/net/ethernet/oa_tc6.c b/drivers/net/ethernet/oa_tc6.c
> index b37e398e30e37..97df38207827d 100644
> --- a/drivers/net/ethernet/oa_tc6.c
> +++ b/drivers/net/ethernet/oa_tc6.c

[Severity: High]
This is a pre-existing issue, but while reviewing the changes in this file,
I noticed a potential issue with SKB bounds checking in the receive path.

In oa_tc6_update_rx_skb(), the code unconditionally extends the SKB tail:

static void oa_tc6_update_rx_skb(struct oa_tc6 *tc6, u8 *payload, u8 length)
{
        memcpy(skb_put(tc6->rx_skb, length), payload, length);
}

This is called repeatedly for continuous chunks lacking an end_valid
marker via oa_tc6_prcs_ongoing_rx_frame().

If the MAC-PHY misbehaves or the SPI data is corrupted such that the
end_valid bit is missing for consecutive chunks exceeding the MTU size,
will this continuously append data to the SKB and eventually exhaust the
tailroom, triggering skb_over_panic()?

Additionally, if an ongoing chunk is received before a start chunk
(e.g., start_valid=3D0), could tc6->rx_skb be NULL here, leading to an
immediate NULL pointer dereference in skb_put()?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609-adin1140-d=
river-v4-0-0753e28ee004@analog.com?part=3D5

