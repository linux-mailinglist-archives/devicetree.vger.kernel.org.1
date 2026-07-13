Return-Path: <devicetree+bounces-325187-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jywHAoNyVGqZmAMAu9opvQ
	(envelope-from <devicetree+bounces-325187-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 07:07:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F482747337
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 07:07:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=OicoISbq;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325187-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-325187-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E5FE93001464
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 05:07:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76D0635F8C9;
	Mon, 13 Jul 2026 05:07:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67B6E353A86;
	Mon, 13 Jul 2026 05:07:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783919232; cv=none; b=BNccRXv7Aw8JtAJor/fCR32FZ13QXytcu4gRnNm0rhpu0ttd73xjQp3nWg5WsWlsQUQIm7840f1ZxiFPnW6L5lU3ddxt32BWiBG3833IaHTP0krsKWgFOwEQNf4CaCUGkH7KkgubZEHqmzGDd/beMIqsp+kK2nYbCSdhIdS0YD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783919232; c=relaxed/simple;
	bh=Y2L/ciGVrWzYolTiTDZIaSVjWhSNOzc+0zX1Dy0BaNQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=l9Vu6tCxiUeWYXltB1k75/X6GmERRhlBFl+rOYh64kb7nksQR5kaNSiyAdVr/5P6SnBuPaVfNFvxZMnl87ov2inXcuZT1U8zbKZPITWKYlMq7sZ4b5FZu34Pg1xEKiQmT6icQwp0IANOV9TJq9TSb15182C7xMThp85WpqYd1Uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OicoISbq; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6CC901F000E9;
	Mon, 13 Jul 2026 05:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783919231;
	bh=q2U7xmtogOkedtMhmF5YdkIVRdjdi8EoNr0JnfRtZng=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=OicoISbqs/RCkT1ywtokj4Urfq+NAXL2Htqgd4u4jFE9CHvPa32SopA2F3meJBV2p
	 zrw27djh3eJYCnTL+v8eCggtMDyXmWwxwzQQdlzKJpcaQRmlpTlGm62U4jdSMRmW24
	 JZD7OqWo/7VvGoPVm1F0JMVqQzZvpFuGwQy66s3GXEGGV/xZ6sI1XGojp2afCG/5m5
	 mNNuJ/HF9nJL6TZPivvl7S3lEGl5f4Bi58BD874/rjlb8+gDt9N2VfmUxk+s8Q3Mf+
	 ULLgAo9PptTPeBA36sghrZznpeXz2XKSc0VVfndV2pb77tVJmxzwlP8qg3glB5TSRo
	 PnwYZwD0DoFsA==
From: Manivannan Sadhasivam <mani@kernel.org>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 Frank.Li@nxp.com, s.hauer@pengutronix.de, kernel@pengutronix.de, 
 festevam@gmail.com, amitkumar.karwar@nxp.com, neeraj.sanjaykale@nxp.com, 
 marcel@holtmann.org, luiz.dentz@gmail.com, hongxing.zhu@nxp.com, 
 l.stach@pengutronix.de, lpieralisi@kernel.org, kwilczynski@kernel.org, 
 bhelgaas@google.com, brgl@kernel.org, 
 "Sherry Sun (OSS)" <sherry.sun@oss.nxp.com>
Cc: imx@lists.linux.dev, linux-pci@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org, 
 linux-pm@vger.kernel.org, sherry.sun@nxp.com
In-Reply-To: <20260713023435.235765-1-sherry.sun@oss.nxp.com>
References: <20260713023435.235765-1-sherry.sun@oss.nxp.com>
Subject: Re: (subset) [PATCH V6 0/4] Add PCIe M.2 Key E connector support
 for NXP i.MX boards
Message-Id: <178391922306.2569025.9086897176970533972.b4-ty@b4>
Date: Mon, 13 Jul 2026 07:07:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.15.2
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[26];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:amitkumar.karwar@nxp.com,m:neeraj.sanjaykale@nxp.com,m:marcel@holtmann.org,m:luiz.dentz@gmail.com,m:hongxing.zhu@nxp.com,m:l.stach@pengutronix.de,m:lpieralisi@kernel.org,m:kwilczynski@kernel.org,m:bhelgaas@google.com,m:brgl@kernel.org,m:sherry.sun@oss.nxp.com,m:imx@lists.linux.dev,m:linux-pci@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-bluetooth@vger.kernel.org,m:linux-pm@vger.kernel.org,m:sherry.sun@nxp.com,m:krzk@kernel.org,m:conor@kernel.org,m:luizdentz@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,holtmann.org,google.com,oss.nxp.com];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[mani@kernel.org,devicetree@vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mani@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-325187-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,nxp.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7F482747337


On Mon, 13 Jul 2026 10:34:31 +0800, Sherry Sun (OSS) wrote:
> From: Sherry Sun <sherry.sun@nxp.com>
> 
> This series adds support for NXP Wi-Fi/BT combo chips (88W9098, AW693)
> inserted into PCIe M.2 Key E connectors on i.MX95-19x19-EVK boards.
> 
> For M.2 cards that rely on PCIe L2 link state and wake-up mechanisms, the
> card must remain powered during suspend. Patch #2 uses the existing
> dw_pcie_rp::skip_pwrctrl_off flag to skip power-off during suspend and skip
> power-on during the init path.
> 
> [...]

Applied, thanks!

[1/4] PCI: imx6: Move pci_pwrctrl_create_devices() to imx_pcie_probe()
      commit: 2c5768344f88b86188c5915327bb00e6aad24990
[2/4] PCI: imx6: Add skip_pwrctrl_off flag support
      commit: f26b1c697a2bd72b1b68dca78ab1e95701a0ffb6

Best regards,
-- 
மணிவண்ணன் சதாசிவம்



