Return-Path: <devicetree+bounces-280709-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EKTnGBcmxGmZwgQAu9opvQ
	(envelope-from <devicetree+bounces-280709-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 19:14:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA6D32A630
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 19:14:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F30CF30162AB
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 18:11:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 457DE2D0635;
	Wed, 25 Mar 2026 18:11:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b="HTPL/eyb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD52E38CFE8;
	Wed, 25 Mar 2026 18:11:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.194.8.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774462263; cv=none; b=WHIqe2nwWaIWBVpsu78w4PkAVsDx0N6Pgcl+qoYl7XSnD2IOnSjRxAsheoOhE9+CoI4jWXZaZo/tSTlKSb6sjPsrDtkDIjMEo9kACrjxaGxyeU1jLGJi8xr/QnU6J7BRRYQntOQE+oZuXhr03/gwZDoD5XGgn5Q+sUWWpFZeTns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774462263; c=relaxed/simple;
	bh=4oQhPIsk8s+gU+3OK/VIznAuU6Se1gTBR1Cbpou/cBs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PR8ow/sp5CBROIm+kygwPH4SCDdmZI/vVpkljWk1RPSSlQK/28aSsllID+7Cx0tVoYoIpJIBrnhZXBWcNecuuR+RW2Tq+I+3JqWaF3Oml0TovuzXAVqtWnNLqnX4tsPab4h+oD3fE0a7VS44iJq4/RGtYsNH2Vvvxny4NkRjp/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=HTPL/eyb; arc=none smtp.client-ip=217.194.8.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dolcini.it
Received: from francesco-nb (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id 85DE4201FE;
	Wed, 25 Mar 2026 19:10:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1774462259;
	bh=PCkaHroi7JtzDDzze2vqbAGbk2FNNhsqXTmz4G6Yku4=; h=From:To:Subject;
	b=HTPL/eybTJsPutz99rLH2Kc9XS4yCKQ9tVvt21D/Dny52UiEPN0dwgsarYfUsCclo
	 HUEZrkXRQ3dWgbNIfhphDb1MDgEBR3uTaC5SvK6gQUs2m/kaZtPBT7DBrAcieKcSLp
	 6qR9DUeyTDM8T6cQ1VaR//JHQLsvD2YG/0FT6l6q9cEEgtmM4GW61ReIkxl5vk+pe4
	 VCl7KK32sRv5RtZLa1rpNi//kTvBnN00RZywG7SHxqPhEVNnsXMY3auZHlwSqfjuKM
	 j5xt4vSS3t+FFhFhwxchbv/INVOC9stGTSGlNFEMMvOpGFxU03EmKid9TGJgwwlQgP
	 j3ancjOf701Yw==
Date: Wed, 25 Mar 2026 19:10:57 +0100
From: Francesco Dolcini <francesco@dolcini.it>
To: Frank Li <Frank.li@nxp.com>
Cc: Franz Schnyder <fra.schnyder@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Franz Schnyder <franz.schnyder@toradex.com>,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Francesco Dolcini <francesco@dolcini.it>
Subject: Re: [PATCH 3/3] arm64: dts: freescale: imx95-toradex-smarc: Use
 gpio-hog for WIFI_UART_EN
Message-ID: <20260325181057.GB2972@francesco-nb>
References: <20260325-mainline-update-imx95-v1-0-b5ebe976655b@toradex.com>
 <20260325115513.707914-1-fra.schnyder@gmail.com>
 <acP3NiGvRCc1SgjE@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <acP3NiGvRCc1SgjE@lizhi-Precision-Tower-5810>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[dolcini.it,none];
	R_DKIM_ALLOW(-0.20)[dolcini.it:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-280709-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,pengutronix.de,toradex.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,dolcini.it];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[francesco@dolcini.it,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[dolcini.it:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,dolcini.it:dkim,toradex.com:email]
X-Rspamd-Queue-Id: AFA6D32A630
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 25, 2026 at 10:54:46AM -0400, Frank Li wrote:
> On Wed, Mar 25, 2026 at 12:55:11PM +0100, Franz Schnyder wrote:
> > From: Franz Schnyder <franz.schnyder@toradex.com>
> >
> > On the Toradex SMARC iMX95, the WiFi UART signals are shared with the
> > JTAG. The WIFI_UART_EN signal is used to select between these
> > two functions.
> >
> > Configure the signal as gpio-hog and drive it high to select the UART
> > function by default. Add a label to override the hog in derived
> > device trees.
> 
> gpio hog have problem about probe order, are you sure gpio device probe
> before pcie?

This is not about PCIe, we are talking about UART here. Specifically the
module is a combo Wi-Fi/BT device, with Wi-Fi over SDIO, and BT over
UART from NXP.

In any case, this DT is going to be used also by the boot firmware that will
configure the GPIO hog way before the Linux driver probes.

The DT files from the Linux kernel are used also by other projects.

> I have not seen any place refer to wifi_uart_en.

There is none (as of now). This is there to make it easier for a user
that needs access to debug to adjust this node enabling the JTAG
functionality.

Francesco


