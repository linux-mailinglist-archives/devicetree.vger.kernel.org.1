Return-Path: <devicetree+bounces-312124-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sZwiG2syMGoaPwUAu9opvQ
	(envelope-from <devicetree+bounces-312124-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 19:12:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A459688B87
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 19:12:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=M09rdxgW;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312124-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-312124-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D2E0531A9697
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 17:01:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF62F411685;
	Mon, 15 Jun 2026 17:01:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6ED9410D09
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 17:01:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781542895; cv=none; b=Z3NNSZOGOj/OLKc21LxwvRqe6WpBI6G+zYBPUrxSGDvfeH7FnafIppxlVqgq+UfwBtF4fcznazhR2tMPUy7xHuRXNGWhA2H4pRTKWNZCsFDn7ovJ0aRTIhxafSM3ASGGwa5AWmddAvsSfRQ+VxCuQCYg1Ey132eLeIADQ7Egu08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781542895; c=relaxed/simple;
	bh=dngFGyCqtcPVoBuIfF83Utc+655ML0pAMyWr+K36zIM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=fvSD9n2nJtVCBPGID91DFQJu6PD3XQJNL4tdyCnqrjfh62JhbavHZ3N5O1KVFPTyuhbACJvppHnPz83bW+C3HweHPJwiDy5iW4OUxodQz5wPCE9t+PF+OF4p50umbH8VUqvVhYYCwlQIro+2EmRUBNg8IZ47T9ILkcOe1lohfv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M09rdxgW; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 978981F000E9;
	Mon, 15 Jun 2026 17:01:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781542894;
	bh=V8f2evove69pZ/88/th0PTytX1l84cKSyD/WZuQJBvY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=M09rdxgW3RDBNBEEQx+EeA6Tj8GykWTDsKDwpeTubuac7J/J9GqD87cRAkBsw08+8
	 1XwDb/g00zExRBbO28LjcL3f41Duk4X8p7uAae9RAFKSPzC6IHdG6xM6LlyuH0slHd
	 yxaUP8aEkjYmQrkuZ8yB7iMqiU5hEIQfNgxn7bMRrKOFCMNZKDg8hvr3ee+RUnbeY4
	 XwwY7sfUhHVilQrhwv7i5USdQMwJDj0UdFQg10kGrRXixilYDz6vCRwZxnJW+HyA7T
	 plBWT7PamLV7CPfuJJK23TrqZW1VFqv8sAxjCE+iF4RfbJiUHm1uH7ugEg1b6BwPxc
	 hEe15/ene3FNQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v5 13/15] onsemi: s2500: Added selftest support
 to onsemi's S2500 driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Selvamani Rajagopal via B4 Relay" <devnull+Selvamani.Rajagopal.onsemi.com@kernel.org>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260614-s2500-mac-phy-support-v5-13-89874b72f725@onsemi.com>
References: <20260614-s2500-mac-phy-support-v5-13-89874b72f725@onsemi.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 17:01:32 +0000
Message-Id: <20260615170133.978981F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-312124-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:devnull+Selvamani.Rajagopal.onsemi.com@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,Selvamani.Rajagopal.onsemi.com,dt];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[onsemi.com:email,lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0A459688B87

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Returning 0 from `get_sset_count` for `ETH_SS_TEST` triggers a `=
WARN_ON` in the ethtool core when `CONFIG_NET_SELFTESTS` is disabled.
--

commit 8adb07a1816e950bf0dedebd55b13b3a9497928e
Author: Selvamani Rajagopal <Selvamani.Rajagopal@onsemi.com>

onsemi: s2500: Added selftest support to onsemi's S2500 driver

This commit introduces ethtool selftest support to the onsemi S2500 MAC-PHY
driver. It exposes selftests by handling the ETH_SS_TEST stringset and
registering the self_test callback in the ethtool operations.

> diff --git a/drivers/net/ethernet/onsemi/s2500/s2500_ethtool.c b/drivers/=
net/ethernet/onsemi/s2500/s2500_ethtool.c
> index 85bd8ea50dd8c..334fac71ddea2 100644
> --- a/drivers/net/ethernet/onsemi/s2500/s2500_ethtool.c
> +++ b/drivers/net/ethernet/onsemi/s2500/s2500_ethtool.c

[ ... ]

> @@ -229,6 +230,8 @@ static int s2500_get_sset_count(struct net_device *nd=
ev, int sset)
>  	switch (sset) {
>  	case ETH_SS_STATS:
>  		return S2500_MAC_STATS_LEN;
> +	case ETH_SS_TEST:
> +		return net_selftest_get_count();

[Severity: Medium]
When CONFIG_NET_SELFTESTS is disabled, the dummy implementation of
net_selftest_get_count() defined in include/net/selftests.h returns 0.

Because the driver unconditionally registers the .self_test callback below
in s2500_ethtool_ops:

const struct ethtool_ops s2500_ethtool_ops =3D {
	...
	.self_test          =3D net_selftest,
};

Will returning 0 from s2500_get_sset_count() trigger a WARN_ON(test_len =3D=
=3D 0)
in the ethtool core ioctl path when a user runs "ethtool -t"?

Could this check for a 0 test count and return -EOPNOTSUPP instead to avoid
the warning?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260614-s2500-mac-=
phy-support-v5-0-89874b72f725@onsemi.com?part=3D13

