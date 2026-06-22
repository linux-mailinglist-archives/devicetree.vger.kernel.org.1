Return-Path: <devicetree+bounces-314491-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id uVdWAfhXOWqTqwcAu9opvQ
	(envelope-from <devicetree+bounces-314491-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 17:42:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EC0D96B0D3D
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 17:42:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=QpWZktXY;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314491-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314491-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E2E783012C46
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 15:42:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C58283C1092;
	Mon, 22 Jun 2026 15:42:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B124E3C0A1F;
	Mon, 22 Jun 2026 15:42:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782142943; cv=none; b=OqDmXQg6OmkT2u9yl8uWy+unDVso9bAdqL6UAW51vqt8DdK6Qn07bM6Eo0H9l9VUsGX5UMmKMtTFtU1UjOFhPPORSiTUrdnFAViJIdIoG9yAp03u30HBsoVIttqm1wgdXVORHQnF8QGwz8jbLQidLUIf9Fh3AWHHJoOjHv1Rxds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782142943; c=relaxed/simple;
	bh=DemoEo0SOlDZDn9K4lZLLKEwtb5DdtGHL6Gcq9T5edY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gkSziqNhDrUWTY1v50f1zFkru6vAve4yMcv7qmuIOnGRH3aKV97Nthutf5VJlbsPxFGSgf+Kwu2eDZSoFHF3VfNUta8L7FIQqmPYFmwgRC+kN9Htj2ehg+jGWORf+ORQmkKvpqGwVWq447wa0vXJfWF+586I23wdgdKMkei/UqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QpWZktXY; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7E631F000E9;
	Mon, 22 Jun 2026 15:42:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782142942;
	bh=h0E00buD9oFi1l3xPWxuJLb9QwIMsgt/Kp7Y9WZb8rM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=QpWZktXYyPViHwjudKgsTg97/fRthbwJv0/aE9xz87I0WB+0qZ0vwULG7Tfj4Yul6
	 3gJasZdeh5TGkhxrURJYtvHxLIZtV0Z+xSJfToUzbfQ+ubzAFQb1ala3gDj0cZyTJN
	 QFxruOvCX0OMIpTy10Yzy9h77zkShRtZ3Tg1J+k0j8cJfHAj8weJ2bhplVUdp4EPjN
	 zwlZkUbctMRDtYX7QvJPLurKJaIPu2ZrYTata5K9uSOufPxMZkDu4is6y1I+8HkJfa
	 3ufjkAyPkBRnCPxYfcvfZJSFTIk+S46VfJomoViLyeQpe9YFf8lm9uU7vvr88iicNb
	 fAIknGe2bI53A==
Date: Mon, 22 Jun 2026 17:42:08 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: "Sherry Sun (OSS)" <sherry.sun@oss.nxp.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	Frank.Li@nxp.com, s.hauer@pengutronix.de, kernel@pengutronix.de, 
	festevam@gmail.com, amitkumar.karwar@nxp.com, neeraj.sanjaykale@nxp.com, 
	marcel@holtmann.org, luiz.dentz@gmail.com, hongxing.zhu@nxp.com, 
	l.stach@pengutronix.de, lpieralisi@kernel.org, kwilczynski@kernel.org, 
	bhelgaas@google.com, brgl@kernel.org, imx@lists.linux.dev, linux-pci@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-bluetooth@vger.kernel.org, linux-pm@vger.kernel.org, sherry.sun@nxp.com
Subject: Re: [PATCH 2/8] power: sequencing: pcie-m2: Add PCI ID for NXP
 88W9098 and AW693 Bluetooth
Message-ID: <hpit5ljwbfui2dqnjzinrv5mteib3vmxkhwv3uyv3adcjlkljs@cl646qxhafcy>
References: <20260618101047.4185497-1-sherry.sun@oss.nxp.com>
 <20260618101047.4185497-3-sherry.sun@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260618101047.4185497-3-sherry.sun@oss.nxp.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[26];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:sherry.sun@oss.nxp.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:amitkumar.karwar@nxp.com,m:neeraj.sanjaykale@nxp.com,m:marcel@holtmann.org,m:luiz.dentz@gmail.com,m:hongxing.zhu@nxp.com,m:l.stach@pengutronix.de,m:lpieralisi@kernel.org,m:kwilczynski@kernel.org,m:bhelgaas@google.com,m:brgl@kernel.org,m:imx@lists.linux.dev,m:linux-pci@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-bluetooth@vger.kernel.org,m:linux-pm@vger.kernel.org,m:sherry.sun@nxp.com,m:krzk@kernel.org,m:conor@kernel.org,m:luizdentz@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-314491-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[mani@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mani@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,holtmann.org,google.com,lists.linux.dev,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EC0D96B0D3D

On Thu, Jun 18, 2026 at 06:10:41PM +0800, Sherry Sun (OSS) wrote:
> From: Sherry Sun <sherry.sun@nxp.com>
> 
> 88W9098 is a NXP Wi-Fi/BT combo chip with PCI device ID 0x2b43 under
> Marvell Extended vendor ID. AW693 is a NXP Wi-Fi/BT combo chip with
> PCI device ID 0x3003 under NXP/Philips vendor ID.
> 
> Add both chips to pwrseq_m2_pci_ids[] so that the pwrseq-pcie-m2 driver
> can create the Bluetooth serdev device when these cards are inserted into
> a PCIe M.2 Key E connector.
> 
> Both chips use "nxp,88w8987-bt" as the serdev compatible string, which
> is the entry point for the btnxpuart driver. The driver identifies the
> actual chip variant at runtime via chip ID auto-detection and loads the
> appropriate firmware accordingly.
> 
> Signed-off-by: Sherry Sun <sherry.sun@nxp.com>

Reviewed-by: Manivannan Sadhasivam <mani@kernel.org>

- Mani

> ---
>  drivers/power/sequencing/pwrseq-pcie-m2.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/power/sequencing/pwrseq-pcie-m2.c b/drivers/power/sequencing/pwrseq-pcie-m2.c
> index 94c3f4b7ee36..9217ffcfa6e5 100644
> --- a/drivers/power/sequencing/pwrseq-pcie-m2.c
> +++ b/drivers/power/sequencing/pwrseq-pcie-m2.c
> @@ -186,6 +186,10 @@ static int pwrseq_pcie_m2_match(struct pwrseq_device *pwrseq,
>  }
>  
>  static const struct pci_device_id pwrseq_m2_pci_ids[] = {
> +	{ PCI_DEVICE(PCI_VENDOR_ID_MARVELL_EXT, 0x2b43),
> +	  .driver_data = (kernel_ulong_t)"nxp,88w8987-bt" },
> +	{ PCI_DEVICE(PCI_VENDOR_ID_PHILIPS, 0x3003),
> +	  .driver_data = (kernel_ulong_t)"nxp,88w8987-bt" },
>  	{ PCI_DEVICE(PCI_VENDOR_ID_QCOM, 0x1107),
>  	  .driver_data = (kernel_ulong_t)"qcom,wcn7850-bt" },
>  	{ PCI_DEVICE(PCI_VENDOR_ID_QCOM, 0x1103),
> -- 
> 2.50.1
> 

-- 
மணிவண்ணன் சதாசிவம்

