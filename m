Return-Path: <devicetree+bounces-316878-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6N8jMWRAQmr42gkAu9opvQ
	(envelope-from <devicetree+bounces-316878-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 11:52:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 271CB6D87B5
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 11:52:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=kiU5h7Uu;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316878-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316878-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BACD630226B5
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 09:47:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02FCB35F5FB;
	Mon, 29 Jun 2026 09:47:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E65582D8378
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 09:47:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782726429; cv=none; b=EQHOgQKtcfSbJDWvdkEktyvw7NoUA4imz9KYX7G/33r9YtjSmGsc8PAPvUi/nlMJFaaBC0liIgwbbmvPq+FwDFnF8DUDoZzQOb/jbsBPQycXl+Ea90lrbDBcUF98YxXqiOhbT/gUaVd2glfPmqVZpnRVvoYvYkcwUVQpM1IYak8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782726429; c=relaxed/simple;
	bh=vLnYfNt6wVJu2MbZFCkgeAoDnbnq7YgKlxy1niSnaRE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=M7Mg6TX9Xz0Zn0pgjHlGtiaxLAKRDXWIQh0Hb8lJimHEXM5OeGiRrLFwrTSbOJagcYBbScZ3LnvX89+UKxpQfz3TZQLd9TzQvo5EDyDdoZa9H6OKWHJYYGXSsziZeiyj5FJxda6Z1qLY2pvECwrcOYCNe+xsXqcvpNep2RLPWaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kiU5h7Uu; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2FDA91F000E9;
	Mon, 29 Jun 2026 09:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782726428;
	bh=25uXwRoYK3zia5mE2CwImEPPHOYkn1v2Gf8xHF2A5EU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kiU5h7UuokUwdlANijWDCOFklNPHwIplMIg1gGtb+SGyteXwi0kcYjAYUeq2d2Twa
	 OjxNOBDh42f22WGoRCO5XEn8ui0oZCRkkGYIhiOFsxHRf1VVC2xqCMe1W3xHKS9T0r
	 +hdqwiwkX+kiAymgEzL11wOzOaAcQQjl9qmA0CUAKhiH2ualkKS0x4mNRdI76tXNTY
	 YWTXNyPwFEv8AjlJ8UHCVcb1fQTGpOYwEBEI8H42stlEba5xMkWHcyyDD0eUbsC4Hi
	 Bypi1JlLUsYZACNBJqo9qKUo8cqTeQ6I4G+DhlEIdPOtAuwoOxBEnJSgTjzMQ1/stI
	 37QCtYU6bXROQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 8/8] usb: host: xhci-tegra: Add Tegra264 XHCI support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Wayne Chang" <waynec@nvidia.com>
Cc: olteanv@gmail.com, vkoul@kernel.org, robh@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org
In-Reply-To: <20260629093406.1118594-9-waynec@nvidia.com>
References: <20260629093406.1118594-1-waynec@nvidia.com>
 <20260629093406.1118594-9-waynec@nvidia.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 Jun 2026 09:47:07 +0000
Message-Id: <20260629094708.2FDA91F000E9@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-316878-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	URIBL_MULTI_FAIL(0.00)[vger.kernel.org:server fail,smtp.kernel.org:server fail,nvidia.com:server fail,sashiko.dev:server fail,sea.lore.kernel.org:server fail,lists.linux.dev:server fail];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:waynec@nvidia.com,m:olteanv@gmail.com,m:vkoul@kernel.org,m:robh@kernel.org,m:neil.armstrong@linaro.org,m:devicetree@vger.kernel.org,m:linux-phy@lists.infradead.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,linaro.org,vger.kernel.org,lists.infradead.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,sashiko.dev:url,lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 271CB6D87B5

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `tegra264_soc` struct explicitly sets `enable_firmware_messa=
ges` to `false`, contradicting the commit message that claims the only diff=
erence from `tegra234_soc` is `max_num_wakes`.
--

commit f38c91ea7436bccae268e6611e1931cff02f07ec
Author: Wayne Chang <waynec@nvidia.com>

usb: host: xhci-tegra: Add Tegra264 XHCI support

This commit adds XUSB host mode controller support for the Tegra264 SoC.
It defines a new tegra_xusb_soc struct for Tegra264 and adds it to the
OF match table.

>     The host controller is very similar to the existing Tegra234 XHCI,
>     except the number of max_num_wakes.

[ ... ]

> diff --git a/drivers/usb/host/xhci-tegra.c b/drivers/usb/host/xhci-tegra.c
> index 7d56f35ec9e71..9a55d5818efb0 100644
> --- a/drivers/usb/host/xhci-tegra.c
> +++ b/drivers/usb/host/xhci-tegra.c
[ ... ]
> @@ -2752,12 +2752,40 @@ static const struct tegra_xusb_soc tegra234_soc =
=3D {
[ ... ]
> +static const struct tegra_xusb_soc tegra264_soc =3D {
[ ... ]
> +	.lpm_support =3D true,
> +	.has_bar2 =3D true,
> +	.enable_firmware_messages =3D false,

[Severity: Medium]
Is this value intentional?

The commit message states that the only difference from Tegra234 is
max_num_wakes, but tegra234_soc sets enable_firmware_messages to true.

Setting this to false means the driver will skip sending the
MBOX_CMD_MSG_ENABLED command to the controller via
__tegra_xusb_enable_firmware_messages() during initialization.

If Tegra264 requires these messages for clock scaling or power management
like Tegra234 does, this omission might lead to performance or power
management issues. Could you clarify if this should be true, or update the
commit message to reflect this difference?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629093406.1118=
594-1-waynec@nvidia.com?part=3D8

