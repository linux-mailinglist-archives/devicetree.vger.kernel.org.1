Return-Path: <devicetree+bounces-295120-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gIi4ApSQAGqCKQEAu9opvQ
	(envelope-from <devicetree+bounces-295120-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 16:05:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D1250487A
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 16:05:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 422D530022CD
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 14:05:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDA4B39A802;
	Sun, 10 May 2026 14:05:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fqLBsYd0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8CFB39A800
	for <devicetree@vger.kernel.org>; Sun, 10 May 2026 14:05:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778421906; cv=none; b=WpGEAw9eEzgUqSMExGIVazJylMGwfCRe00BCbtUds0j8k1rzaxz8HX9yzg5AW+Hzl5sWV3U490VtwNI9/8om6I1pEHDgwggU5QAwWYxQHAf86hXtzPD9cAxwajSZvkngojlqgVscRFjF8mvjZN65eP79o07juouF94ZIDVWn5d4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778421906; c=relaxed/simple;
	bh=kQJe0yD/9QF8j9GQGYknO8/3z8HJPUTWfPVZDWfq/tk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Bh3eT1iLt1SNecnH23zJEvL/VhhszKLsVy6/eJJKcZs5AlmaW1deOYteZNPTpzzz8x0DcWzIuEAfuJU2bYC/xGFYtySDrbouuA52WHSm9iwQ87Au/ptaTVnt6BVCxnkokZ+2PNYp66MLRWmJoQLGamb5itWh7k2b0bYolV13fEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fqLBsYd0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F219FC2BCF6;
	Sun, 10 May 2026 14:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778421906;
	bh=kQJe0yD/9QF8j9GQGYknO8/3z8HJPUTWfPVZDWfq/tk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=fqLBsYd0TI5e9vtM0MWwYiD7vl3sLH6dpFxzAEGeTaYylTZ5iUPN1QHRb/REyHEIT
	 UimNaXx2Beu1XBjqmcqopWRb7RNNkVVYitYNeIwLXq1Hw47jzFbenIXO0Hkfr8w6V+
	 Bcn+U5XrWHpwGGIwJ+YrjIuuvBsu9cibrkdSW1Big7a6O4hxCUROJKe2vTU+3LY7tv
	 HyD6NTQq5o8345wB88UPbASSQiO3scsA1whlkcFnPui98uJi4sRIdIVEXS4l6aVqjg
	 ZwOZBTpImwktOaIIab+ykGMlr5IW6AHmNZEcyG5o/U7k1POSP/Jdb2zwRrIl+jHktL
	 qWv37QM3bV0zA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v5 11/12] net: airoha: Support multiple LAN/WAN
 interfaces for hw MAC address configuration
Reply-To: sashiko@lists.linux.dev
To: "Lorenzo Bianconi" <lorenzo@kernel.org>
Cc: robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260509-airoha-eth-multi-serdes-v5-11-805e38edc2aa@kernel.org>
References: <20260509-airoha-eth-multi-serdes-v5-11-805e38edc2aa@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 10 May 2026 14:05:05 +0000
Message-Id: <20260510140505.F219FC2BCF6@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: E4D1250487A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,lists.linux.dev:replyto];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-295120-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Probe fails completely when devices use randomly generated MAC add=
resses due to strict MSB validation.
- [Medium] Strict MAC address MSB validation creates a configuration deadlo=
ck, preventing users from modifying MAC addresses.
--

commit d9f17b062a5dbe5adb3be07d9c3f501106b25dd8
Author: Lorenzo Bianconi <lorenzo@kernel.org>

net: airoha: Support multiple LAN/WAN interfaces for hw MAC address configu=
ration

This commit extends the hardware MAC address configuration in the airoha
Ethernet driver to support multiple LAN or WAN interfaces. It calculates
the minimum and maximum lower MAC address bytes across all devices with the
same configuration, and enforces that they share the same upper 3 MAC
address bytes.

> diff --git a/drivers/net/ethernet/airoha/airoha_eth.c b/drivers/net/ether=
net/airoha/airoha_eth.c
> index fa37dbd76d579..623cac42dfb71 100644
> --- a/drivers/net/ethernet/airoha/airoha_eth.c
> +++ b/drivers/net/ethernet/airoha/airoha_eth.c
[ ... ]
> -static void airoha_set_macaddr(struct airoha_gdm_dev *dev, const u8 *add=
r)
> +static int airoha_set_macaddr(struct airoha_gdm_dev *dev, const u8 *addr)
>  {
>  	struct airoha_eth *eth =3D dev->eth;
> -	u32 val, reg;
> +	u8 ref_addr[ETH_ALEN] =3D {};
> +	u32 reg, val, lmin, lmax;
> +	int i;
> +
> +	lmin =3D (addr[3] << 16) | (addr[4] << 8) | addr[5];
> +	lmax =3D lmin;
> +
> +	for (i =3D 0; i < ARRAY_SIZE(eth->ports); i++) {
[ ... ]
> +			ether_addr_copy(ref_addr, netdev->dev_addr);
> +			val =3D (netdev->dev_addr[3] << 16) |
> +			      (netdev->dev_addr[4] << 8) | netdev->dev_addr[5];
> +			if (val < lmin)
> +				lmin =3D val;
> +			if (val > lmax)
> +				lmax =3D val;
> +		}
> +	}
> +
> +	if (!is_zero_ether_addr(ref_addr) && memcmp(ref_addr, addr, 3)) {
> +		/* According to the HW design, hw mac address MS bits
> +		 * must be the same for each net_device with the same
> +		 * LAN/WAN configuration.
> +		 */
> +		return -EINVAL;
> +	}

Does this strict MSB validation cause device initialization to fail if the
device tree does not provide MAC addresses?

If the driver falls back to assigning addresses via eth_hw_addr_random(),
the randomly generated addresses will almost certainly have different upper
3 bytes. Will this cause airoha_set_macaddr() to return -EINVAL for the
second interface, aborting initialization and failing the driver probe?

Could this also create a configuration deadlock when users try to change
MAC addresses from userspace?

Since tools like 'ip link' configure interfaces sequentially, attempting to
change eth0 to a new OUI would be rejected because its new MSBs won't match
eth1's current MSBs. Attempting to change eth1 first would similarly fail
against eth0. Is there a way for users to successfully change the MAC
address MSBs once the interfaces are initialized?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260509-airoha-eth=
-multi-serdes-v5-0-805e38edc2aa@kernel.org?part=3D11

