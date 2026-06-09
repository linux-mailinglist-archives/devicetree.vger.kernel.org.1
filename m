Return-Path: <devicetree+bounces-308893-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xv/zEuvgJ2p13wIAu9opvQ
	(envelope-from <devicetree+bounces-308893-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 11:46:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B0165E7B2
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 11:46:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=BYXJjpX+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308893-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-308893-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E1A1131A912C
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 09:34:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30A79390998;
	Tue,  9 Jun 2026 09:34:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8241EB9F2
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 09:34:27 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780997669; cv=none; b=WV+ec+Bj8N4df1a4CgLwj5MtylfA110u4SoufvltybW4M3fEQXsWCpOWwKEOLiTGivbIgedLwo4tdYE0QlVxNFgf8eyROS78tkw0YwBpLbGP5ZluX6/Rd+090ngaV+zzSQ8ygOYO5TKV5XG51s1HFuzjfjkTX5V05sGuIE85PSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780997669; c=relaxed/simple;
	bh=kOKYSP759XUq8IDvpz2lUnnCm5OktbkU1lS7AHsnbfk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=PpO2fge9LxG4M4Ac5Wl0AxlSmIpHJWI7AeP1kbGcAuKgutQDjdnIaLaMqEoxIcJlt1F+cZK88X6lFOlZtjlYjDXFr5/npLRfOQClDLJz+2kNxMgEkI8Nuc8fsGu9gRpkXiy87tEvwilTZYEtBMQmt63w7W74YKNZWldunuIUNTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BYXJjpX+; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB1631F00893;
	Tue,  9 Jun 2026 09:34:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780997667;
	bh=3Ux/oTgrEFu1qjTXUi9kJ7p+kzifhu0Q/0KVpHhR22I=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BYXJjpX+zF9+ULk0UeIe4tckVou+uOd1iv/rZQRTBweD6GUs40rAaOtyzMR4ln9eo
	 0J97vl0kfrnsxY8wxNq5xet1O8tq2BP78KTo8DTBtz7GlxgofGc+2W1o1/RTtuckvk
	 Ga+Lijy3cISR15ulJulpHV4faM6fvgZJpEU9EYFYWfYPkVuI8UTDozHR/PwyuZt+IV
	 OX5N7KT9ohBp+Y/GYPQhrTBK5av5+kDE1+gnoP/nfWxsCRDkJRgP5foIIH8Kwz09ds
	 naK30fdmEzMWK2aLF635sY4zl89ieB3HR5RYIqfdoaGUdbaAh0Vrc4WrfP/bjq3wyV
	 m22rYMy3OyiVw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/2] phy: qcom-qmp-pcie: Add support for ipq5210 PCIe
 phys
Reply-To: sashiko-reviews@lists.linux.dev
To: "Varadarajan Narayanan" <varadarajan.narayanan@oss.qualcomm.com>
Cc: vkoul@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, olteanv@gmail.com, robh@kernel.org
In-Reply-To: <20260609-pcie-phy-v2-2-83bc80e79fa6@oss.qualcomm.com>
References: <20260609-pcie-phy-v2-2-83bc80e79fa6@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 09:34:25 +0000
Message-Id: <20260609093426.CB1631F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-308893-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:varadarajan.narayanan@oss.qualcomm.com,m:vkoul@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:neil.armstrong@linaro.org,m:linux-phy@lists.infradead.org,m:olteanv@gmail.com,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,linaro.org,lists.infradead.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:email,vger.kernel.org:from_smtp,lists.linux.dev:replyto,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A6B0165E7B2

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The newly defined PHY initialization tables `ipq5210_gen3x1_pcie_e=
p_tx_tbl` and `ipq5210_gen3x1_pcie_ep_pcs_tbl` are never used, as the endpo=
int configuration mistakenly references tables from the ipq6018 SoC.
--

commit bf5e268631f81219e100892c439cbf010f5cd5f1
Author: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>

phy: qcom-qmp-pcie: Add support for ipq5210 PCIe phys

This patch adds support for a PCIe phys found on the Qualcomm ipq5210
platform.

> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualc=
omm/phy-qcom-qmp-pcie.c
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
[ ... ]
> @@ -3613,6 +3712,49 @@ static const struct qmp_phy_cfg ipq6018_pciephy_cf=
g =3D {
[ ... ]
> +static const struct qmp_phy_cfg ipq5210_gen3x1_pciephy_cfg =3D {
[ ... ]
> +	.tbls_ep =3D &(const struct qmp_phy_cfg_tbls) {
> +		.serdes		=3D ipq5210_gen3x1_pcie_ep_serdes_tbl,
> +		.serdes_num	=3D ARRAY_SIZE(ipq5210_gen3x1_pcie_ep_serdes_tbl),
> +		.tx		=3D ipq6018_pcie_tx_tbl,
> +		.tx_num		=3D ARRAY_SIZE(ipq6018_pcie_tx_tbl),
> +		.rx		=3D ipq5210_gen3x1_pcie_ep_rx_tbl,
> +		.rx_num		=3D ARRAY_SIZE(ipq5210_gen3x1_pcie_ep_rx_tbl),
> +		.pcs		=3D ipq6018_pcie_pcs_tbl,
> +		.pcs_num	=3D ARRAY_SIZE(ipq6018_pcie_pcs_tbl),

[Severity: High]
Are the newly added ipq5210_gen3x1_pcie_ep_tx_tbl and=20
ipq5210_gen3x1_pcie_ep_pcs_tbl arrays intended to be used here?

This configuration assigns the tx and pcs fields to the ipq6018 arrays, whi=
ch
appears to leave the new ipq5210 tx and pcs tables entirely unused. Could t=
his
result in incorrect PHY hardware programming for the endpoint?

> +		.pcs_misc	=3D ipq5210_gen3x1_pcie_ep_pcs_misc_tbl,
> +		.pcs_misc_num	=3D ARRAY_SIZE(ipq5210_gen3x1_pcie_ep_pcs_misc_tbl),
> +	},
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609-pcie-phy-v=
2-0-83bc80e79fa6@oss.qualcomm.com?part=3D2

