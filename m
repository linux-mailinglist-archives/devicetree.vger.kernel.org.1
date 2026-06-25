Return-Path: <devicetree+bounces-315700-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /dNuJEw0PWrfywgAu9opvQ
	(envelope-from <devicetree+bounces-315700-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 15:59:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C65E6C654D
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 15:59:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=hxzCeslC;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315700-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315700-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9111D308E70D
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 13:58:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A242834C9A3;
	Thu, 25 Jun 2026 13:58:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77AF3357CEC;
	Thu, 25 Jun 2026 13:58:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782395896; cv=none; b=aTL87sraGAurnQ8Tu0Ou1/ewZSpxkDfVh8O37PyhBhYdPXeTfYz5pdDsEhSiYkvyOMvYwYQ+KPJ7OScdOAbFwD+6BSpdlB2U0OHi6wBvFiAt2PixDKgLmFLouI4vnSdzoQdNlCqAWjVo/wuobR/vJhe/VCD8TCOaMJYSr3RcGFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782395896; c=relaxed/simple;
	bh=RGff6wbAowP+PbMvxE3XECwfvAVmOKFM/zfNKT7rMnE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=E57K/GZo7C3Z7DtJuz+Kdij9dCCC6DeU3PmR0/iJFAtz73Vfh7d7TzEQQ8cmvx6cTzkAhKylwVm9Qzvwg98/UjiJgyazecsCfbQ7vUEkNncx1SfBNBpesuaCMlXhFy1FEwwzCwKa6x+xop7CGb7a7dap09fCOHNA23jmirWMjnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hxzCeslC; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64D931F00A3A;
	Thu, 25 Jun 2026 13:58:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782395895;
	bh=KaLc+quV2pMprMYuRbpfQ+2ZIV/dZbs72AcURaa/OQ0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=hxzCeslCh1paaQ8/HrAjwhqZTAelNUsRIjBPlx5RHMj5LtK3w3RfPFIdBadUna4DE
	 nq1McAB8FAmEl6SanbsC8zX00pnFnB6gdenCE1yK7Mls2mrfPpqdZOZlICMJhSlCHp
	 owurHl9hTH3dFmHUYBNfsXeZ/YfGAJiT09NVgU0XtajdCDy1VixADEppORjAVB+AyL
	 Srwy1bXrdRe68sJOuwDd4A+yc7YovE0g0Us/8eSiN14f8ViGgKT0ZL6emGWChcULD7
	 Dh/5U9EcTyLwdZL405n5v1knnQqGzFwMJGNORvcn0/wvDL+xcomdrFyxBqnGOlVI/m
	 +67YJTWsze+KQ==
Date: Thu, 25 Jun 2026 15:57:54 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sherry Sun <sherry.sun@nxp.com>
Cc: "Frank Li (OSS)" <frank.li@oss.nxp.com>, 
	"Sherry Sun (OSS)" <sherry.sun@oss.nxp.com>, "robh@kernel.org" <robh@kernel.org>, 
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, 
	Frank Li <frank.li@nxp.com>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, 
	"kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>, 
	Amitkumar Karwar <amitkumar.karwar@nxp.com>, Neeraj Sanjay Kale <neeraj.sanjaykale@nxp.com>, 
	"marcel@holtmann.org" <marcel@holtmann.org>, "luiz.dentz@gmail.com" <luiz.dentz@gmail.com>, 
	Hongxing Zhu <hongxing.zhu@nxp.com>, "l.stach@pengutronix.de" <l.stach@pengutronix.de>, 
	"lpieralisi@kernel.org" <lpieralisi@kernel.org>, "kwilczynski@kernel.org" <kwilczynski@kernel.org>, 
	"bhelgaas@google.com" <bhelgaas@google.com>, "brgl@kernel.org" <brgl@kernel.org>, 
	"imx@lists.linux.dev" <imx@lists.linux.dev>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-bluetooth@vger.kernel.org" <linux-bluetooth@vger.kernel.org>, "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>
Subject: Re: [PATCH V2 1/8] PCI: imx6: Add skip_pwrctrl_off flag support
Message-ID: <ozh6q3xazym5dfwvp4re7zwaqcaqmms7pbrzwelzsfldxs6lju@bshacga5usqs>
References: <20260623030736.1421537-1-sherry.sun@oss.nxp.com>
 <20260623030736.1421537-2-sherry.sun@oss.nxp.com>
 <ajqZBM6IkbDLiVu2@SMW015318>
 <VI0PR04MB121147C305022511469FB603A92ED2@VI0PR04MB12114.eurprd04.prod.outlook.com>
 <ajwOvZUlOEQzmjsu@SMW015318>
 <VI0PR04MB12114BCBD405505888063284492EC2@VI0PR04MB12114.eurprd04.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <VI0PR04MB12114BCBD405505888063284492EC2@VI0PR04MB12114.eurprd04.prod.outlook.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315700-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:sherry.sun@nxp.com,m:frank.li@oss.nxp.com,m:sherry.sun@oss.nxp.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:frank.li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:amitkumar.karwar@nxp.com,m:neeraj.sanjaykale@nxp.com,m:marcel@holtmann.org,m:luiz.dentz@gmail.com,m:hongxing.zhu@nxp.com,m:l.stach@pengutronix.de,m:lpieralisi@kernel.org,m:kwilczynski@kernel.org,m:bhelgaas@google.com,m:brgl@kernel.org,m:imx@lists.linux.dev,m:linux-pci@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-bluetooth@vger.kernel.org,m:linux-pm@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:luizdentz@gmail.com,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[27];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[mani@kernel.org,devicetree@vger.kernel.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mani@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[oss.nxp.com,kernel.org,nxp.com,pengutronix.de,gmail.com,holtmann.org,google.com,lists.linux.dev,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,nxp.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0C65E6C654D

On Thu, Jun 25, 2026 at 07:25:46AM +0000, Sherry Sun wrote:
> > Subject: Re: [PATCH V2 1/8] PCI: imx6: Add skip_pwrctrl_off flag support
> > 
> > On Wed, Jun 24, 2026 at 07:09:26AM +0000, Sherry Sun wrote:
> > > > Subject: Re: [PATCH V2 1/8] PCI: imx6: Add skip_pwrctrl_off flag
> > > > support
> > > >
> > > > On Tue, Jun 23, 2026 at 11:07:28AM +0800, Sherry Sun (OSS) wrote:
> > > > > From: Sherry Sun <sherry.sun@nxp.com>
> > > > >
> > > > > Use dw_pcie_rp::skip_pwrctrl_off to avoid powering off devices
> > > > > during suspend to preserve wakeup capability of the devices and
> > > > > also not to power on the devices in the init path.
> > > > > This allows controller power-off to be skipped when some devices(e.g.
> > > > > M.2 cards key E without auxiliary power) required to support PCIe
> > > > > L2 link state and wake-up mechanisms.
> > > > >
> > > > > Signed-off-by: Sherry Sun <sherry.sun@nxp.com>
> > > > > ---
> > > > >  drivers/pci/controller/dwc/pci-imx6.c | 36
> > > > > +++++++++++++++++----------
> > > > >  1 file changed, 23 insertions(+), 13 deletions(-)
> > > > >
> > > > > diff --git a/drivers/pci/controller/dwc/pci-imx6.c
> > > > > b/drivers/pci/controller/dwc/pci-imx6.c
> > > > > index 0fa716d1ed75..ff5a9565dbbf 100644
> > > > > --- a/drivers/pci/controller/dwc/pci-imx6.c
> > > > > +++ b/drivers/pci/controller/dwc/pci-imx6.c
> > > > > @@ -1382,16 +1382,20 @@ static int imx_pcie_host_init(struct
> > > > > dw_pcie_rp
> > > > *pp)
> > > > >  		}
> > > > >  	}
> > > > >
> > > > > -	ret = pci_pwrctrl_create_devices(dev);
> > > > > -	if (ret) {
> > > > > -		dev_err(dev, "failed to create pwrctrl devices\n");
> > > > > -		goto err_reg_disable;
> > > > > +	if (!pci->suspended) {
> > > > > +		ret = pci_pwrctrl_create_devices(dev);
> > > >
> > > > Is possible move pci_pwrctrl_create_devices() of
> > > > pci_pwrctrl_create_devices
> > > >
> > > > and call it direct at probe() function, like other regulator_get function.
> > > >
> > >
> > > Hi Frank,
> > > That makes sense. However, if we move pci_pwrctrl_create_devices () to
> > > probe(), we may need to add the following goto err_pwrctrl_destroy
> > > path in imx_pcie_probe() to properly handle errors from
> > > pci_pwrctrl_power_on_devices(), is that acceptable?
> > 
> > Can you add a API devm_pci_pwrctrl_create_devices() ?
> > 
> 
> Hi Frank, we cannot unconditionally destroy the pwrctrl devices
> when probing fails by using devm API.
> Since we need to check the return value of
> pci_pwrctrl_power_on_devices() for example EPROBE_DEFER to decide
> whether to destroy the pwrctrl devices to avoid the deferred probe loop.
> 
> You can find more related discussion here.
> https://lore.kernel.org/all/tutxwjciedqoje5wxvtin4h637auni5zzpvb7rtfg4uticxoux@yfl6xg7oht7t/
> 

Yes. Ideally we should try to do a blocking wait in the pwrctrl core until all
the pwrctrl drivers are probed, instead of deferring probe. Hopefully, I'll get
to it soon.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

