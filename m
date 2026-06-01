Return-Path: <devicetree+bounces-305080-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uFcDLrJdHWojZwkAu9opvQ
	(envelope-from <devicetree+bounces-305080-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 12:23:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 432F161D48D
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 12:23:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 638B831134F1
	for <lists+devicetree@lfdr.de>; Mon,  1 Jun 2026 10:12:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 916B4399CE6;
	Mon,  1 Jun 2026 10:08:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wzms7WvA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B66F39B955;
	Mon,  1 Jun 2026 10:08:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780308534; cv=none; b=DVkP44jRcIY/E3mBJcGAxKpzwo26fNAWNcvk7JK+aUbpWJLin6Yx7e/ruCowQtmYj4trhz57r2SXWCDJePHHT4fW0KYknVV6A78CLp3Iomcn2dPNyDT3Wg6/72JHugwqQHG4Q48p8HKvuXvo5BIj7b5mMe3abzixkNektUeSbrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780308534; c=relaxed/simple;
	bh=R4mYYEmDJ9gTvdUtErgR622YMLcx4VlrjZvp5PSHW3w=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=cg8z2+L5RtSW10/NM2R0CAViofxBn6Y79XBF/vsoH7iqExw0cvYCx0ZdGuH3r7x7QBkR+umsQlFWCvt3aDoAhFOu+3cza2djE7jpz+lRm/WKSdW9trxL11K0i7T5ggY2BW4Yr9tO5RF03BTpoSvpul6UgS1h3JsxXpbFOC0cuqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wzms7WvA; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 780DA1F00893;
	Mon,  1 Jun 2026 10:08:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780308527;
	bh=LHAflIBpzNeVthrg0b+HUI1/J82M7tmuuRym7eiA+nM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Wzms7WvAbXn0HePgD1TjT3H1wPNSo3BnSaZjOP5DAWcmtSDX41PrW0oxOGh3PxUyI
	 1Gzg2Rgip1m9ktyIBkaownjTsU0X79WyOodcTQiLFPOkkYni0YAC+JvqB/u7BtGwqR
	 iCHyiZf3Ar8VcQTtsBsMgaDi37rOmTixNiBxlCOGXRvqYb6/UuIQL+wyshrNevfYak
	 Lx38TC6mzGASvLf+VP2q+POYx6VX09bCwF2kC3pWDaf4TnQwKD6dEO756miPgUEOvq
	 JV8kqee3DkwQEI9gv4RTmkYR6oPU4scKNqnRf0LszVRBBGz3mIOau1ugeZugFKPbBk
	 KarEifAXkkfgA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/7] wifi: ath11k: enable support for WCN6851
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-pci@vger.kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260601-sm8350-wifi-v1-2-242917d88031@oss.qualcomm.com>
References: <20260601-sm8350-wifi-v1-2-242917d88031@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 01 Jun 2026 10:08:47 +0000
Message-Id: <20260601100847.780DA1F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,lists.linux.dev:replyto,qualcomm.com:email,sashiko.dev:url,smtp.kernel.org:mid];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-305080-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: 432F161D48D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Missing MODULE_FIRMWARE() declaration for WCN6855 hw1.1
--

commit 9dd00bb0ca92daf6393c487f5ce3b3c5fb3cc6a4
Author: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

wifi: ath11k: enable support for WCN6851

The WCN6851, found e.g. on SM8350 platforms, is an earlier version of
WCN6855 platform. It identifies itself as hw1.1. Copy WCN6855 hw 2.0
configuration to support hw1.1 version.

> diff --git a/drivers/net/wireless/ath/ath11k/core.c b/drivers/net/wireles=
s/ath/ath11k/core.c
> index 3f6f4db5b7ee1..7e997016cf6e9 100644
> --- a/drivers/net/wireless/ath/ath11k/core.c
> +++ b/drivers/net/wireless/ath/ath11k/core.c
[ ... ]
> @@ -393,6 +393,98 @@ static const struct ath11k_hw_params ath11k_hw_param=
s[] =3D {
>  		.cfr_num_stream_bufs =3D 0,
>  		.cfr_stream_buf_size =3D 0,
>  	},
> +	{
> +		.name =3D "wcn6855 hw1.1",
> +		.hw_rev =3D ATH11K_HW_WCN6855_HW11,
> +		.fw =3D {
> +			.dir =3D "WCN6855/hw1.1",

[Severity: Medium]
Since this configures the driver to request firmware from the "WCN6855/hw1.=
1"
directory, does this also require a corresponding MODULE_FIRMWARE() declara=
tion
in drivers/net/wireless/ath/ath11k/pci.c?

Without the MODULE_FIRMWARE() macro for this directory, userspace initramfs
generation tools may not be aware of the dependency. This could result in t=
he
firmware being omitted from the initramfs, causing request_firmware() to fa=
il
if the driver is loaded during early boot.

> +			.board_size =3D 256 * 1024,
> +			.cal_offset =3D 128 * 1024,
> +		},

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260601-sm8350-wif=
i-v1-0-242917d88031@oss.qualcomm.com?part=3D2

