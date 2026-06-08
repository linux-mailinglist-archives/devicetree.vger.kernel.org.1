Return-Path: <devicetree+bounces-308046-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OiqiEGlqJmqzWAIAu9opvQ
	(envelope-from <devicetree+bounces-308046-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 09:08:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 98CEF653649
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 09:08:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=lVumnqtC;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308046-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308046-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 728863009B11
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 07:08:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 621BF385D9C;
	Mon,  8 Jun 2026 07:08:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93EC637C906;
	Mon,  8 Jun 2026 07:08:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780902502; cv=none; b=A4PDSdtrRYP0jNRS9LDUq67WYlpV0oQ4EKU0fvxatN2J2PGO506gYEcmUKr+r8JsHea8nEEDJa+Z5V835hE4npfKF0RC3bu2/fV4OJHyYQoxT53/UScL3et6l7nOvwBdJvXQgjv8F2OagD/61oLdK7vLb8ck3zArRZfdY8x6B40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780902502; c=relaxed/simple;
	bh=MSp1zFVTzzyrEteGAegFOP1tnfbkgBe1/3oS6QZ68ys=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=gqh3UzD4Cql82deybvDaZTyneCq8L0YdvEwJGZjvN+a26r4JphnPVTog0GpcN77/L9Wx51HdWUOO+uoTLWI/JWv8iikH2nqDSCHnc3CqaPCZETS5mk9PvmniM0Px+CU7H9E4JAJxcMYeZ//0xntldfR1cQhEFNLC75Es4PrzUjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lVumnqtC; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CCBF31F00893;
	Mon,  8 Jun 2026 07:08:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780902500;
	bh=awD455x8uXP7MLUpzp45rI5BDx4pZOgCn5eBKrrLO5s=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=lVumnqtCnKdebttKd4BmkKf/740e6B8KpHSWTbG2oszOk1NX/Dspa6ozIezKd+7Lw
	 MEyHXNxrSTDoZEfKLKrbqYWPRqsgnGawCdDmv9cRjsalR98vdjaYz3ILU8LkMblzIe
	 Jbc+5V3BprpnpEkTMQg01gwToUq1vDGwiZgDZ1PYz06/CPanV0UIxbWiSfVIxxdTpV
	 Q5AjqHqWOxdaKkSdYxVgG7NGetK79gMPlxvYsSmOUPB7J2AU0vdLTPHlnbFAxQ1ZrV
	 +nwkRrDLNgQKIxgkul5mZ9tBovBNrqAs/+RA1SVHq32iucStTfuA/pCdL+UQrOKa2b
	 2NcSr92Fa40RQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/7] wifi: ath11k: enable support for WCN6851
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, linux-pci@vger.kernel.org
In-Reply-To: <20260608-sm8350-wifi-v2-2-efb68f1ff04c@oss.qualcomm.com>
References: <20260608-sm8350-wifi-v2-2-efb68f1ff04c@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 08 Jun 2026 07:08:19 +0000
Message-Id: <20260608070819.CCBF31F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,smtp.kernel.org:mid];
	TAGGED_FROM(0.00)[bounces-308046-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:dmitry.baryshkov@oss.qualcomm.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:linux-pci@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 98CEF653649

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The newly added WCN6855 hw1.1 support is missing a corresponding=
 MODULE_FIRMWARE() declaration in pci.c.
--

commit f54482207008ed0cfb8ad9e52b108a170f4c03af
Author: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

wifi: ath11k: enable support for WCN6851

The WCN6851, found e.g. on SM8350 platforms, is an earlier version of
WCN6855 platform. It identifies itself as hw1.1. Copy WCN6855 hw 2.0
configuration to support hw1.1 version.

> diff --git a/drivers/net/wireless/ath/ath11k/core.c b/drivers/net/wireles=
s/ath/ath11k/core.c
> index 8dacc878c0068..78a226ca081c7 100644
> --- a/drivers/net/wireless/ath/ath11k/core.c
> +++ b/drivers/net/wireless/ath/ath11k/core.c
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
Since this adds a new firmware directory for hw1.1, should there be a
corresponding MODULE_FIRMWARE(ATH11K_FW_DIR "/WCN6855/hw1.1/*") declaration
added to drivers/net/wireless/ath/ath11k/pci.c alongside the existing
entries for hw2.0 and hw2.1?=20

Missing this might cause tools like modinfo or dracut to not recognize the
dependency, potentially leaving the firmware out of the initramfs.

> +			.board_size =3D 256 * 1024,
> +			.cal_offset =3D 128 * 1024,
> +		},

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260608-sm8350-wif=
i-v2-0-efb68f1ff04c@oss.qualcomm.com?part=3D2

