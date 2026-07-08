Return-Path: <devicetree+bounces-323225-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2pGBNJbQTmqRUgIAu9opvQ
	(envelope-from <devicetree+bounces-323225-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 00:35:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C616172AE77
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 00:35:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=IVW9Nlad;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323225-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323225-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E170C300E90F
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 22:34:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D4BF3FF8BE;
	Wed,  8 Jul 2026 22:34:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F9E33FF1B5
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 22:34:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783550096; cv=none; b=hrkNqvQ5O0lTb0hbfaqldxnppliGJMUGebPB/e5VzCHDlTC2lqlSD/U/Z/QvLEWHeSuzWzaUlNc+bUQwycY3R3MscIYQBXur5BrH8diBPQ5XrPslC2SJOHr4LOwbotEHgo7pA4afqXYOXGu7tKcveylI0bZkWcLSFbseFdlYqjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783550096; c=relaxed/simple;
	bh=wjGPeJxVr2gIF9CG0x9HxjCUYF5799R7Qs6oW59h7PY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=GD0gT0xTFkHVbbAFkfsVWU76HhQsoxMSTeCFSDOdRqenJu10jvuO0xnSNu3SXOfNOMd7GKVfcqm8DKIvnsFU5pCY/D0Y2RAeIGh6XUCD3uT0atQ1qkXvBU4yEaTJPUoFV3gquLs/D8dIQWfmCY/1b2ZAJM1JbGeNPcJhre5NnnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVW9Nlad; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D69DD1F00A3D;
	Wed,  8 Jul 2026 22:34:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783550095;
	bh=mYseExzuKs7tANp8e7nMIcZYAqqg7UL1HAqSrop4FXQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=IVW9NladYPCInN5FcbnPkGyKrzQnuggMH1FJHEs9ema+d5hq4/Z9h3h7kRVkFAZPu
	 U4P0k6tj0DbFWHhkesRSj1Ig+PAmqh5huhuWsX/VJ5Atq7yUbpfpUl5dsBA3Q+YBfn
	 NOlx+/FAMugcSMru9/r//Ms0mezc6uWV05vx4e1DQHrc6hjuSFULEkB1rlV+lqzk3C
	 /fW0z0MlXiqrFMrkceGndFTly+YkYOnvWBdK7XArjA7bflMPSBjiFybmWgGgcMekJe
	 W7e0FvEOZACLPZqiqaQSB1RnTt8U1UvEzTCSsV9XS90QzhutKTFQFu4TflksKtVJpF
	 V57fU+lynL5Aw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v5 04/13] net: ethernet: oa_tc6: Export the C45
 access functions
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ciprian Regus" <ciprian.regus@analog.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260708-adin1140-driver-v5-4-4aca7b51a58b@analog.com>
References: <20260708-adin1140-driver-v5-0-4aca7b51a58b@analog.com>
 <20260708-adin1140-driver-v5-4-4aca7b51a58b@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 22:34:54 +0000
Message-Id: <20260708223454.D69DD1F00A3D@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-323225-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:ciprian.regus@analog.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,analog.com:email,lists.linux.dev:replyto,smtp.kernel.org:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C616172AE77

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Missing forward declaration of struct mii_bus in oa_tc6.h
--

--- Patch [4]: [PATCH net-next v5 04/13] net: ethernet: oa_tc6: Export the =
C45 access functions ---
commit 396791ba4d15eb553624cdae104591b0ddf7be04
Author: Ciprian Regus <ciprian.regus@analog.com>

net: ethernet: oa_tc6: Export the C45 access functions

This commit makes the C45 access functions non-static and exports them so
they can be used by Ethernet drivers which set the OA_TC6_BROKEN_PHY flag.
It also adds the corresponding function prototypes to the oa_tc6.h header.

> diff --git a/include/linux/oa_tc6.h b/include/linux/oa_tc6.h
> index 62e3d89f80ed0..2660eefa35043 100644
> --- a/include/linux/oa_tc6.h
> +++ b/include/linux/oa_tc6.h
> @@ -31,3 +31,7 @@ int oa_tc6_read_registers(struct oa_tc6 *tc6, u32 addre=
ss, u32 value[],
>  			  u8 length);
>  netdev_tx_t oa_tc6_start_xmit(struct oa_tc6 *tc6, struct sk_buff *skb);
>  int oa_tc6_zero_align_receive_frame_enable(struct oa_tc6 *tc6);
> +int oa_tc6_mdiobus_read_c45(struct mii_bus *bus, int addr, int devnum,
> +			    int regnum);
> +int oa_tc6_mdiobus_write_c45(struct mii_bus *bus, int addr, int devnum,
> +			     int regnum, u16 val);

[Severity: Low]
Is a forward declaration for struct mii_bus needed in this header?

If linux/oa_tc6.h is included in a file without a prior declaration or
include for struct mii_bus, could it cause compiler warnings about the
struct being declared inside a parameter list?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-adin1140-d=
river-v5-0-4aca7b51a58b@analog.com?part=3D4

