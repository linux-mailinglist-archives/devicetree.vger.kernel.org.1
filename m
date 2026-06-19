Return-Path: <devicetree+bounces-313683-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id U6QfC/vxNGotkwYAu9opvQ
	(envelope-from <devicetree+bounces-313683-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 09:38:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB566A4642
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 09:38:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=g1f9jlX8;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313683-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-313683-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D32A130812BB
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 07:37:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71782357D0D;
	Fri, 19 Jun 2026 07:37:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B456335BDB
	for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 07:37:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781854641; cv=none; b=jMe2klVQLMsZuAAj/KZRkLfl0///vdsKAcgHM3W7MKPESkJF4pBI0GGSRKfQcmLJiTn0WnZ0UNzCBRcMFTUpJozAKPbgK0zx9QGS2fOl0IeX1NTBSxqtUR+pBcrOa72OGnO1cYCTI+gsQSJUAQL4u47GVrhDQKLrfcD02O/YdFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781854641; c=relaxed/simple;
	bh=wkXMErwKUGut4lkZUQYLlPySSXb7zjQW250Sqk2EsT0=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZT0kkcqjqwtbVHgQId5tl/7qDt8OLNgVjmy/AtQBeF2MGNAMnS7MuPvXJ+pr5GMKF11flLcOPTqTbNpBOLsReN9BMy6AcMpzqGVIoqAqulhWNbr81YQ8ygumn73cGZayFdoiq61f/ZFSo/5nMV/JgLaNSHRQ0KcCzssrIfRTUA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g1f9jlX8; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 284D41F0155E
	for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 07:37:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781854639;
	bh=YnQ9MPAYpd0fxk76rGMZS9hOaWFlYma1+sDSqr8GlGA=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=g1f9jlX8G5K3xqMhw6dOWrgEVlni/Ezpn3Gza1D7DzGz0+7SPYXkoDwsul1rCZfLI
	 k0YFuXUB8ijYEzn9d5zccJ0oK/9KcY45dhv9S9C+lUZWfIiBDLNAmCUIQmzlWTUXUN
	 VskVK7wvA+0hx7VsjwUVDIdsgSyWBofCtMb3QCZSPxMHlOpjlzgW4njp9RxNNLo0Tc
	 IVf4G7xIioy+BPMzuKeLDioPxtCFnUg8AZz8uMolB6SLW+pNRVhLyS0Wv8uTmqVqlN
	 x5FMNQaWiEdbz0mZ9qW0kCQuUdkw9q8PuCwtxyB0oW7H/iDHnnOQ5ZzQagMa5QaQTf
	 DBLBbu7uIto5A==
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-396669329fbso25764611fa.0
        for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 00:37:19 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ+knqQhop+whcRojEvALA1QC9545kiIIE7EjnD6ivQIhixLOiMHf7eubAx6XRoYFl2N+34KxNJ+Hh06@vger.kernel.org
X-Gm-Message-State: AOJu0YzlaD8JlVmZ6an+Oos8KVPtCQNwlLRijt1VKvqcJy98g2dIF2Qi
	3mK+3azFZo6sYqGx1sKCHfXF2gZCA1mRn8qa/F8u/+7vsnBtYWXhLs4jXYMVV16Tp/mr00u8nZQ
	Cu04nNlKGdcHPHHOSBwLO0Ey7j+udZ0PbuDL2ByXZYA==
X-Received: by 2002:a05:6512:61c5:20b0:5a8:73c2:c90b with SMTP id
 2adb3069b0e04-5ad57229d41mr401564e87.20.1781854637750; Fri, 19 Jun 2026
 00:37:17 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 19 Jun 2026 02:37:15 -0500
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 19 Jun 2026 02:37:15 -0500
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260618101047.4185497-1-sherry.sun@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260618101047.4185497-1-sherry.sun@oss.nxp.com>
Date: Fri, 19 Jun 2026 02:37:15 -0500
X-Gmail-Original-Message-ID: <CAMRc=MfsNa4itdpyGtR16wMb+wMkJwg+9=QJF2-oOoVVfFCF3g@mail.gmail.com>
X-Gm-Features: AVVi8CfCeqYM86-ykNLbU8hxtvU1LP7wSiVMnCr70BLSiKSY_mF23r-WT1fp8gY
Message-ID: <CAMRc=MfsNa4itdpyGtR16wMb+wMkJwg+9=QJF2-oOoVVfFCF3g@mail.gmail.com>
Subject: Re: [PATCH 0/8] Add PCIe M.2 Key E connector support for NXP i.MX boards
To: "Sherry Sun (OSS)" <sherry.sun@oss.nxp.com>
Cc: imx@lists.linux.dev, linux-pci@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org, 
	linux-pm@vger.kernel.org, sherry.sun@nxp.com, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, Frank.Li@nxp.com, 
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, 
	amitkumar.karwar@nxp.com, neeraj.sanjaykale@nxp.com, marcel@holtmann.org, 
	luiz.dentz@gmail.com, hongxing.zhu@nxp.com, l.stach@pengutronix.de, 
	lpieralisi@kernel.org, kwilczynski@kernel.org, mani@kernel.org, 
	bhelgaas@google.com, brgl@kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-313683-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:sherry.sun@oss.nxp.com,m:imx@lists.linux.dev,m:linux-pci@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-bluetooth@vger.kernel.org,m:linux-pm@vger.kernel.org,m:sherry.sun@nxp.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:amitkumar.karwar@nxp.com,m:neeraj.sanjaykale@nxp.com,m:marcel@holtmann.org,m:luiz.dentz@gmail.com,m:hongxing.zhu@nxp.com,m:l.stach@pengutronix.de,m:lpieralisi@kernel.org,m:kwilczynski@kernel.org,m:mani@kernel.org,m:bhelgaas@google.com,m:brgl@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:luizdentz@gmail.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	FORGED_SENDER(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[lists.linux.dev,vger.kernel.org,lists.infradead.org,nxp.com,kernel.org,pengutronix.de,gmail.com,holtmann.org,google.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9FB566A4642

On Thu, 18 Jun 2026 12:10:39 +0200, "Sherry Sun (OSS)"
<sherry.sun@oss.nxp.com> said:
> From: Sherry Sun <sherry.sun@nxp.com>
>
> This series adds support for NXP Wi-Fi/BT combo chips (88W9098, AW693)
> inserted into PCIe M.2 Key E connectors on several i.MX EVK/MEK boards.
>
> For M.2 cards that rely on PCIe L2 link state and wake-up mechanisms, the
> card must remain powered during suspend. Patch 1 uses the existing
> dw_pcie_rp::skip_pwrctrl_off flag to skip power-off during suspend and skip
> power-on during the init path.
>
> Alsp the btnxpuart driver is extended to obtain a pwrseq descriptor via the
> OF graph on the UART controller device in patch 2.
>
> Sherry Sun (8):
>   PCI: imx6: Add skip_pwrctrl_off flag support
>   power: sequencing: pcie-m2: Add PCI ID for NXP 88W9098 and AW693
>     Bluetooth

Can this be applied independently without build-time issues?

Bart

>   Bluetooth: btnxpuart: Add M.2 Bluetooth device support using pwrseq
>   arm64: dts: imx8mq-evk: Describe the PCIe M.2 Key E connector
>   arm64: dts: imx95-19x19-evk: Describe the PCIe M.2 Key E connector
>   arm64: dts: imx8dxl-evk: Describe the PCIe M.2 Key E connector
>   arm64: dts: imx8qm-mek: Describe the PCIe M.2 Key E connector
>   arm64: dts: imx8qxp-mek: Describe the PCIe M.2 Key E connector
>
>  arch/arm64/boot/dts/freescale/imx8dxl-evk.dts | 56 +++++++++++++-----
>  arch/arm64/boot/dts/freescale/imx8mq-evk.dts  | 44 ++++++++++++--
>  arch/arm64/boot/dts/freescale/imx8qm-mek.dts  | 58 ++++++++++++++-----
>  arch/arm64/boot/dts/freescale/imx8qxp-mek.dts | 54 ++++++++++++-----
>  .../boot/dts/freescale/imx95-19x19-evk.dts    | 55 +++++++++++++-----
>  drivers/bluetooth/btnxpuart.c                 | 33 ++++++++++-
>  drivers/pci/controller/dwc/pci-imx6.c         | 36 +++++++-----
>  drivers/power/sequencing/pwrseq-pcie-m2.c     |  4 ++
>  8 files changed, 264 insertions(+), 76 deletions(-)
>
> --
> 2.50.1
>
>

