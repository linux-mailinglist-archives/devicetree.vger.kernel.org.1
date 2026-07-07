Return-Path: <devicetree+bounces-322086-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EbVXNKsHTWpjtwEAu9opvQ
	(envelope-from <devicetree+bounces-322086-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 16:05:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B05871C4F3
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 16:05:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=XVcT43nV;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322086-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-322086-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C999E301E7E8
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 13:58:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22DC34229C1;
	Tue,  7 Jul 2026 13:58:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7DE3422543;
	Tue,  7 Jul 2026 13:58:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783432723; cv=none; b=Q3n75dwKTUpGJQJ46bCTVohveoQ54Sqq7QIm6726GsFcVA5bO7MZUgAKo0t123W34q9SsR3RstqkE85Thby1zu9PekYz+qfso+autKg8t3wDh+RSlSTqRniKPVlZfw/NPT+JRK+lveQI37WB/flDP5dMLydd+WA3w8hDORimXy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783432723; c=relaxed/simple;
	bh=wG1CI6m/OcslDzCF/fiO2NDeZxfQ0urmKXaqy2O+Q5Q=;
	h=Date:Message-ID:From:To:Cc:Subject:In-Reply-To:References:
	 MIME-Version:Content-Type; b=AX1BT91jAWatIwYaqTtnzG6h7V83qKFoHygdqmpdgmxV4Spx01gY58KeyE6qSwM4gXlS5yEciqGbAbVVoAlvEoL9L4rgpolDH2AFHRunzE/6Cpb8E63MvwdF+NMdiFy8K9DFGffpouAcGVQu7hwh1RkVMeaJtOKbkEvWTNYFp/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XVcT43nV; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62B861F000E9;
	Tue,  7 Jul 2026 13:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783432722;
	bh=CJcM49RM2FlBZTuuqbu3ibPxbKkT8R770pCrHBILAwQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=XVcT43nVa9ADCQj7yGrCAhL2dagLOQb2tTPXVoiGP6OCfLnIXHqI4t75wsxUuaYFV
	 LQwxhgAymxZZLG1yjbzE8tpvbtLJxkaoetuqFb5ak/JGdiuLhZrPFGVz45TFHLEqC2
	 esJWvK9f4YXU+3FKiIeaWCh5jS0AsbdRVG8mhFakl9Q/EeS3eriaQCawOFbZttOhE3
	 U+3YcIit+kC6CvdwWj2gArxUnwHyolTyVX9vDZtbH96HzbPQ5/JnOTvzFmQ7tseRix
	 oYqJnBwCfZkv0kP0Vqix1eS3U1aUOR2ZJs/g3PnzE/sTeem+kJVnXj1MnzPYEcL1yT
	 s6+mhJLUq2BeQ==
Received: from sofa.misterjones.org ([185.219.108.64] helo=goblin-girl.misterjones.org)
	by disco-boy.misterjones.org with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <maz@kernel.org>)
	id 1wh6Js-00000002R7k-1z9a;
	Tue, 07 Jul 2026 13:58:40 +0000
Date: Tue, 07 Jul 2026 14:58:39 +0100
Message-ID: <865x2qq4ts.wl-maz@kernel.org>
From: Marc Zyngier <maz@kernel.org>
To: Yureka Lilian <yureka@cyberchaos.dev>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,	Krzysztof =?UTF-8?B?V2ls?=
 =?UTF-8?B?Y3p5xYRza2k=?= <kwilczynski@kernel.org>,	Manivannan Sadhasivam
 <mani@kernel.org>,	Rob Herring <robh@kernel.org>,	Bjorn Helgaas
 <bhelgaas@google.com>,	Sven Peter <sven@kernel.org>,	Janne Grunau
 <j@jannau.net>,	Neal Gompa <neal@gompa.dev>,	Krzysztof Kozlowski
 <krzk+dt@kernel.org>,	Conor Dooley <conor+dt@kernel.org>,
	linux-pci@vger.kernel.org,	linux-kernel@vger.kernel.org,
	asahi@lists.linux.dev,	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] PCI: apple: Integrate pwrctrl API
In-Reply-To: <8a80a170-a508-4a9e-8090-27cfcedb1cd4@cyberchaos.dev>
References: <20260707-apple-pcie-pwren-v1-0-5a281b182fe2@cyberchaos.dev>
	<20260707-apple-pcie-pwren-v1-1-5a281b182fe2@cyberchaos.dev>
	<86a4s3p2vy.wl-maz@kernel.org>
	<8a80a170-a508-4a9e-8090-27cfcedb1cd4@cyberchaos.dev>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?UTF-8?B?R29qxY0=?=) APEL-LB/10.8 EasyPG/1.0.0 Emacs/30.1
 (aarch64-unknown-linux-gnu) MULE/6.0 (HANACHIRUSATO)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
X-SA-Exim-Connect-IP: 185.219.108.64
X-SA-Exim-Rcpt-To: yureka@cyberchaos.dev, lpieralisi@kernel.org, kwilczynski@kernel.org, mani@kernel.org, robh@kernel.org, bhelgaas@google.com, sven@kernel.org, j@jannau.net, neal@gompa.dev, krzk+dt@kernel.org, conor+dt@kernel.org, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-322086-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:yureka@cyberchaos.dev,m:lpieralisi@kernel.org,m:kwilczynski@kernel.org,m:mani@kernel.org,m:robh@kernel.org,m:bhelgaas@google.com,m:sven@kernel.org,m:j@jannau.net,m:neal@gompa.dev,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-pci@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:asahi@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[maz@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maz@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,cyberchaos.dev:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3B05871C4F3

On Tue, 07 Jul 2026 13:04:21 +0100,
Yureka Lilian <yureka@cyberchaos.dev> wrote:
> 
> On 7/7/26 11:25, Marc Zyngier wrote:
> > On Mon, 06 Jul 2026 23:38:27 +0100,
> > Yureka Lilian <yureka@cyberchaos.dev> wrote:
> >> Integrate the PCI pwrctrl framework into the Apple PCIe host driver to
> >> provide standardized power management for PCI devices.
> >> 
> >> Notably, this allows enabling powering on the WiFi, SD card reader on
> >> various Macs by means of the pwrctrl framework before probing the ports.
> >> 
> >> Previously, a custom solution for powering on the WiFi and SD card
> >> reader was proposed[1], but we can now use the new pci-pwrctrl-generic
> >> driver for this purpose.
> >> 
> >> Link[1]: https://lore.kernel.org/lkml/20220502093832.32778-4-marcan@marcan.st/
> >> 
> > nit: this paragraph and the accompanying link don't belong in the
> > commit message and should be moved below the --- mark or even better,
> > to the cover letter.
> ack, will leave it out of the commit message of the individual commit in v2
> >> Signed-off-by: Yureka Lilian <yureka@cyberchaos.dev>
> >> ---
> >>   drivers/pci/controller/Kconfig      |  1 +
> >>   drivers/pci/controller/pcie-apple.c | 16 ++++++++++++++++
> >>   2 files changed, 17 insertions(+)
> >> 
> >> diff --git a/drivers/pci/controller/Kconfig b/drivers/pci/controller/Kconfig
> >> index 2247709ef6d6..af64630d28fa 100644
> >> --- a/drivers/pci/controller/Kconfig
> >> +++ b/drivers/pci/controller/Kconfig
> >> @@ -46,6 +46,7 @@ config PCIE_APPLE
> >>   	depends on OF
> >>   	depends on PCI_MSI
> >>   	select PCI_HOST_COMMON
> >> +	select PCI_PWRCTRL_GENERIC
> >>   	select IRQ_MSI_LIB
> >>   	help
> >>   	  Say Y here if you want to enable PCIe controller support on Apple
> >> diff --git a/drivers/pci/controller/pcie-apple.c b/drivers/pci/controller/pcie-apple.c
> >> index c2cffc0659f4..db038a9d4831 100644
> >> --- a/drivers/pci/controller/pcie-apple.c
> >> +++ b/drivers/pci/controller/pcie-apple.c
> >> @@ -30,6 +30,7 @@
> >>   #include <linux/msi.h>
> >>   #include <linux/of_irq.h>
> >>   #include <linux/pci-ecam.h>
> >> +#include <linux/pci-pwrctrl.h>
> >>     #include "pci-host-common.h"
> >>   @@ -825,6 +826,21 @@ static int apple_pcie_init(struct
> >> pci_config_window *cfg)
> >>   	if (WARN_ON(!pcie))
> >>   		return -ENOENT;
> >>   +	ret = pci_pwrctrl_create_devices(pcie->dev);
> >> +	if (ret) {
> >> +		dev_err(pcie->dev, "Failed to create pwrctrl devices: %pe\n", ret);
> >> +		return ret;
> >> +	}
> >> +
> >> +	ret = pci_pwrctrl_power_on_devices(pcie->dev);
> >> +	if (ret) {
> >> +		if (ret != -EPROBE_DEFER) {
> >> +			dev_err(pcie->dev, "Failed to power on devices: %pe\n", ret);
> >> +			pci_pwrctrl_destroy_devices(pcie->dev);
> >> +		}
> >> +		return ret;
> >> +	}
> >> +
> > Why is this done globally while the whole driver works on a per-port
> > basis, and that the proposed DT updates are also per port?
> 
> pci_pwrctrl_power_on_devices takes a struct device as parameter, but
> pcie-apple does not allocate device structs for the individual ports.
> This could be changed of course. But since pci_pwrctrl_* operate on
> the subnodes recursively, it works just fine this way.

Works fine is one thing. Being consistent with the way the rest of the
driver works is another. pci_pwrctrl_create_device() and
pci_pwrctrl_power_on_device() appear to do exactly what would be
required for a single port. They just needs to be exported made
global/exported.

> Additionally, we would like to be sure all the endpoints can be powered
> before we start initializing the individual ports. Otherwise we could
> end up in a situation where some ports are initialized but others are
> not when we realize some driver needed to power on the endpoints for
> port n is not yet bound.

How can a driver be bound to a device connected to a port if we
haven't been through the initial link-up dance, which is what
apple_pcie_setup_port() does? The power supplies are per-port for a
reason.

> There is no appropriate pci_pwrctrl API for checking for the
> availability without changing the state, so this is an additional
> reason to do it early.

Availability of what? To be clear, I'm not suggesting delaying
switching of the power. I'm merely suggesting managing it on a per
port basis.

Thanks,

	M.

-- 
Without deviation from the norm, progress is not possible.

