Return-Path: <devicetree+bounces-297328-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4FTKAM9oBWpPWgIAu9opvQ
	(envelope-from <devicetree+bounces-297328-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 08:16:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9378653E3BD
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 08:16:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 568793014FF5
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 06:16:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E4B52857EE;
	Thu, 14 May 2026 06:16:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aoo90Bjy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CE141C5F39
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 06:16:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778739403; cv=none; b=T6mXsCPveC8zLn+CEfypItzcHQG3KJIjs5Pwtqr1tLpAXl+9DLQRoKyzixBoYSrSN1cW3aZZ1SBtAijy5AfDF1RgvnxRvPmfFiZM1W2L4PN2pyJOGZ092s3AP9Gpf2OvtN3rFEi4v5AFO8u8aE0MffXa5pJ36C9dmqky8CqFyj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778739403; c=relaxed/simple;
	bh=hclDBaOFRCvoS1b6RlvzmQmXuDbqv9qB9ZrXd/wiXVY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=B/5sAc4dcd6RWiVVjLIandkFVKAPH+QNDNPGPKzZy1BEe5y4pXkSnn1Fxcr57vW2ZVQ0dFod4YWMPQx8LOzIzXuE9ui2KLO6dwbOrjscv77SL6yQ7tcYbj+3TVGIGA6zGZbSr7HOVHRlc1WGvi8aqRtQvZrk+3nXVTnoKx4QSFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aoo90Bjy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6B43C2BCB7;
	Thu, 14 May 2026 06:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778739403;
	bh=hclDBaOFRCvoS1b6RlvzmQmXuDbqv9qB9ZrXd/wiXVY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=Aoo90BjyMT/kLGzAqqVDVgt5EPv6WIVBAhunpRHHhKJahQLnEcALPwSjiWQAg3vbE
	 x5RXZk63+oZeOca234bMNwCoi6wYX8Ylm2wxw8sMLLF8QZhdn3S5wW4Mxs8PDHA9rI
	 fyrAxxUeyJJd914CT92BV4NaNiSFYZRf9jICPfs5W2sGYmaWOFly7cjvKzcWM05cJ6
	 eKkGgzsQwbGH2END0RMEpqM4SpArPqBYTu91ISwV84YylGmWooWb0qjDY9MyxPVcj1
	 qdxS/ikQMDqulQwJe4dvCMbmbXP+mr57Tkdh9SvMqXIBXOM6qGYH0JgcHpK9lCPlwz
	 ZNkra2AB1HUlQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/2] clk: qcom: nord: negcc: add missing definition for
 the USB2 PHY reset
Reply-To: sashiko-reviews@lists.linux.dev
To: "Bartosz Golaszewski" <bartosz.golaszewski@oss.qualcomm.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260513-nord-clk-usb2-phy-v1-2-8eafcb2d5129@oss.qualcomm.com>
References: <20260513-nord-clk-usb2-phy-v1-2-8eafcb2d5129@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 06:16:42 +0000
Message-Id: <20260514061642.D6B43C2BCB7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 9378653E3BD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297328-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,smtp.kernel.org:mid,lists.linux.dev:replyto,qualcomm.com:email];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The newly introduced UAPI macro for the USB2 PHY reset is incorr=
ectly named `NE_GCC_QUSB3PHY_PRIM_BCR` instead of `NE_GCC_QUSB2PHY_PRIM_BCR=
`.
--

commit 6d297fb76d38d25ccff03c1716dff37d01275b24
Author: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

clk: qcom: nord: negcc: add missing definition for the USB2 PHY reset

This commit adds the missing USB2 PHY reset definition to the negcc clock
driver and its bindings. This enables adding the USB nodes in the device
tree.

> diff --git a/drivers/clk/qcom/negcc-nord.c b/drivers/clk/qcom/negcc-nord.c
> index 1aa24e2784e53..31442d39924a6 100644
> --- a/drivers/clk/qcom/negcc-nord.c
> +++ b/drivers/clk/qcom/negcc-nord.c
> @@ -1918,6 +1918,7 @@ static const struct qcom_reset_map ne_gcc_nord_rese=
ts[] =3D {
>  	[NE_GCC_USB3_PHY_SEC_BCR] =3D { 0x2d000 },
>  	[NE_GCC_USB3PHY_PHY_PRIM_BCR] =3D { 0x2b004 },
>  	[NE_GCC_USB3PHY_PHY_SEC_BCR] =3D { 0x2d004 },
> +	[NE_GCC_QUSB3PHY_PRIM_BCR] =3D { 0x2e000 },

Should this be NE_GCC_QUSB2PHY_PRIM_BCR instead of NE_GCC_QUSB3PHY_PRIM_BCR?

The commit message explicitly states the intention to add the USB2 PHY rese=
t,
and Qualcomm conventions typically use QUSB2 for USB 2.0 PHYs. Since this
macro is part of the device tree bindings, correcting this typo before it
merges will prevent the QUSB3 name from becoming part of the permanent ABI.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260513-nord-clk-u=
sb2-phy-v1-0-8eafcb2d5129@oss.qualcomm.com?part=3D2

