Return-Path: <devicetree+bounces-322299-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 638vFGtETWo7xgEAu9opvQ
	(envelope-from <devicetree+bounces-322299-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 20:24:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id CDAAF71EA00
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 20:24:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=LAzTEjPi;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322299-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-322299-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 47ABF300D34B
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 18:24:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFE2F43C7D7;
	Tue,  7 Jul 2026 18:24:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A24D143C7DE
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 18:24:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783448679; cv=none; b=Ly09/XahZP7rVooWqfkBCCTg1OTg0iOZeKZW987UKjNrG24SoIVC8G75lGx4pnRu7AtBSjDCn5Hl1bGXkcJaBF/mZ48lgdVAFJ9Av+GkTW2QzUnowZiqq7UW8b00jXW0MiPYIFT1pfTpXVwUakTjVC03DpbwOkzhmuXDJlDv8ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783448679; c=relaxed/simple;
	bh=PQzBjNLMTdV0ZLdQHiUbm2yt96vGvbxUcnLx+/e+Df4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=qLowiqtFJveCJer6Ajd+gn11r5Vd5RDNZkvJWMeTiK+6qJcqafLV+fBVkzBhMxP8v4ponK7KeuPrdR/+ZXs8rAl5mv/AM8UPcgQ1tMUE6AmCRwOQ7ThR3EJ3fQyz9nV1FtRHQu1d7ovY7mmg92gpLTzWm0LhwqjMLjBf5CdIHfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LAzTEjPi; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01E5C1F000E9;
	Tue,  7 Jul 2026 18:24:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783448678;
	bh=uf2+YXtPE7pU+q12DEVXaMNeFEp2m9G5ZPDzmIk48oo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=LAzTEjPi+qIKJgEMrFMilAioEdU+lKjR3+r3An50UD0/67V1mhg9qxuYtLQXs963e
	 7JPSwPEIjIvC6Sonku3+hLHzEP83jLPhhlV+6V756O/ZkdzjwYP05LcUmgyicL0EOQ
	 sBfe5TQVljOK5vbzdzHUGXERo2wZ1uTSjuD8Lx5EhOhqp8Q4Rb0fj4RB7YEOVsv4n4
	 SZjshTc60/aQMj6Wie2vGAHaF2p98LWaLkyp+73A3LRmM0D+T6rpqzpDYSI22L7AxS
	 7QOTwnSiY4M1z2CBhiCbq1ueEdtW3ItkbP/zsijYyy65a+Hv2rH6CMlll1FpFdKB6Y
	 7VK5hUKhDoxXA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/2] clk: qcom: Add support for videocc driver on
 Qualcomm Maili SoC
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jagadeesh Kona" <jagadeesh.kona@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260707-maili_videocc-v1-2-ef0828c0bf6e@oss.qualcomm.com>
References: <20260707-maili_videocc-v1-0-ef0828c0bf6e@oss.qualcomm.com>
 <20260707-maili_videocc-v1-2-ef0828c0bf6e@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 18:24:37 +0000
Message-Id: <20260707182438.01E5C1F000E9@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-322299-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:jagadeesh.kona@oss.qualcomm.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CDAAF71EA00

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] CLK_MAILI_VIDEOCC incorrectly selects CLK_HAWI_GCC instead of a Mai=
li-specific GCC or its underlying dependencies.
--

--- Patch [2]: [PATCH 2/2] clk: qcom: Add support for videocc driver on Qua=
lcomm Maili SoC ---
commit d724606f8f1c3ef24540393df8039a38c743824d
Author: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>

clk: qcom: Add support for videocc driver on Qualcomm Maili SoC

This commit adds support for the Qualcomm Maili video clock controller
driver, allowing video clients to request videocc clocks.

> diff --git a/drivers/clk/qcom/Kconfig b/drivers/clk/qcom/Kconfig
> index 6fd4aac1b6cf1..0409a2e604b0c 100644
> --- a/drivers/clk/qcom/Kconfig
> +++ b/drivers/clk/qcom/Kconfig

[ ... ]

> @@ -156,6 +156,16 @@ config CLK_KAANAPALI_VIDEOCC
>  	  Say Y if you want to support video devices and functionality such as
>  	  video encode/decode.
> =20
> +config CLK_MAILI_VIDEOCC
> +	tristate "Maili Video Clock Controller"
> +	depends on ARM64 || COMPILE_TEST
> +	select CLK_HAWI_GCC

[Severity: Low]
Is this select intentional, or could this be a copy-paste error? It
appears CLK_MAILI_VIDEOCC is selecting the Hawi Global Clock Controller
instead of a Maili-specific GCC or its underlying dependencies.

> +	default m if ARCH_QCOM
> +	help
> +	  Support for the video clock controller on Maili devices.
> +	  Say Y if you want to support video devices and functionality such as
> +	  video encode/decode.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707-maili_vide=
occ-v1-0-ef0828c0bf6e@oss.qualcomm.com?part=3D2

