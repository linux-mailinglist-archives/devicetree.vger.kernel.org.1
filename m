Return-Path: <devicetree+bounces-325697-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id t+D2Im4QVWpMjgAAu9opvQ
	(envelope-from <devicetree+bounces-325697-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 18:21:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CECD674D88B
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 18:21:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=meg+i2ha;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325697-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325697-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DAADB31327BA
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 16:16:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A48142737F8;
	Mon, 13 Jul 2026 16:16:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5BD833C182
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 16:15:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783959362; cv=none; b=QLGMa11zxFjPtLRDRY+e5H2mhuWGvugMbt/oWwqUeILn3Km9D5XzPNZ5bfk/q/R6ICAmC3X7r0pNFf2RcZRK9cFC5bS7BaMByYUbl61M5RQ9kOmCznYlIyLR2Oq1Sb+xJdJXyOblvpdwyABmNC+cjJNY6qadO2x4AL/ZPYWf0IE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783959362; c=relaxed/simple;
	bh=bLBJJ8I72oyqkeYpYpo3256N+dT0edptuGdgw4G0GHk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=YuLcquWL1Ms04wd4aipZKwMbar1R4C9iv6Wx51GlDJ5oQWlDCUVH4exEmQwLp+ZrNwo8tRxuBCIyZ0hn9z4T/FrRCEKWe0rsfjgfKZBX5Z4ubwec9zT1w6yHzqHqBgThB2DAo/v59oE16tTbcGuTjiEbn0Tv6eRuPUnNTsP8hls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=meg+i2ha; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 695FA1F000E9;
	Mon, 13 Jul 2026 16:15:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783959352;
	bh=V1TjLkS+6QW8UdC1X0uyNY0ZggZwLDw4bG2y2SXcvnc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=meg+i2haaOclTKSzs4AOVY1a8vbWAMUAs/rbTnkNupGiKbrKVG8lAX+Ep6Z/QnSAe
	 pURE1UI3qCcMPEpmnwJ9S6xrGU1egK3CAb9TdQTO9iDTILv76T6bQRUGUOcYkm7iZE
	 S7U08rKx8n1iEgpPRm8ybXnkuOlYCRuGlX7aNepmPcK4p4MkcuoydrGhcDj3kpNyfR
	 VHCpZpd4buTynJvjZGHwINITg21vfLekEDONLYMpu8jMupcrF531PIQAJVx0df/+D1
	 ZX5BxfeK8Sb+RYvEGOy223GDCkCATnsj+oY+l+97KV1oJSzbNMFiP13zfUn+SZB5cF
	 9Vqb8a29u3tKQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 04/11] clk: realtek: Introduce a common probe()
Reply-To: sashiko-reviews@lists.linux.dev
To: "Yu-Chun Lin" <eleanor.lin@realtek.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260713155630.3054636-5-eleanor.lin@realtek.com>
References: <20260713155630.3054636-1-eleanor.lin@realtek.com>
 <20260713155630.3054636-5-eleanor.lin@realtek.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Jul 2026 16:15:51 +0000
Message-Id: <20260713161552.695FA1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-325697-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:eleanor.lin@realtek.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[realtek.com:email,smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CECD674D88B

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Failure to check for error pointers in the `clk_hw_onecell_data` a=
rray leads to a potential kernel panic when registering clocks.
--

--- Patch [4]: [PATCH v10 04/11] clk: realtek: Introduce a common probe() -=
--
commit 2ca4c07d930b1b3a9fa36b5d566c53f338efd00d
Author: Cheng-Yu Lee <cylee12@realtek.com>

clk: realtek: Introduce a common probe()

This commit adds rtk_clk_probe() to set up the shared regmap, register clock
hardware, and add the clock provider. It also creates an auxiliary device f=
or
reset controllers if the #reset-cells property is present in the device tre=
e.

> diff --git a/drivers/clk/realtek/clk-rtk-common.c b/drivers/clk/realtek/c=
lk-rtk-common.c
> new file mode 100644
> index 0000000000000..cea7d94313daa
> --- /dev/null
> +++ b/drivers/clk/realtek/clk-rtk-common.c
[ ... ]
> +int rtk_clk_probe(struct platform_device *pdev, const struct rtk_clk_des=
c *desc)
> +{
[ ... ]
> +	for (i =3D 0; i < desc->clk_data->num; i++) {
> +		struct clk_hw *hw =3D desc->clk_data->hws[i];
> +
> +		if (!hw)
> +			continue;
> +
> +		ret =3D devm_clk_hw_register(dev, hw);

[Severity: High]
If a clock array populates unused slots with an error pointer like
ERR_PTR(-ENOENT) (which is a standard practice so of_clk_hw_onecell_get
propagates the error to consumers), will devm_clk_hw_register() try to
dereference it here since we only check for NULL?

Should this condition be updated to handle error pointers as well, perhaps
by using IS_ERR_OR_NULL(hw)?

> +		if (ret)
> +			return dev_err_probe(dev, ret, "failed to register hw of clk%d\n", i);
> +	}
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260713155630.3054=
636-1-eleanor.lin@realtek.com?part=3D4

