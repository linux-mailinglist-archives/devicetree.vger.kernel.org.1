Return-Path: <devicetree+bounces-326468-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HTJ3OhmQVmo39QAAu9opvQ
	(envelope-from <devicetree+bounces-326468-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 21:38:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E537585A6
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 21:38:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=dolcini.it header.s=default header.b=KLkmofSR;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326468-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-326468-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=dolcini.it;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8B95C302526C
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 19:37:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B77FE3DCD8D;
	Tue, 14 Jul 2026 19:36:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B9A44C641;
	Tue, 14 Jul 2026 19:36:35 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784057798; cv=none; b=Xngyxlif+Ezz9SVO61PnwtfYNRdQkWemaduoL6MBL0yIW+0gJDK0Y/hqFlGyy8iBo5p9rjrHH7yZ19T8WNysSuVxBi6FH5ernhaaqWkMeKGcHD8RW2IzUGcFWfZW+P9am5Y4oj5lNb96C/C3wDn/a4iAavYwiNuUpoUE0uM1Cb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784057798; c=relaxed/simple;
	bh=skbhAi8pTUy8oSaNNYI6jEo0KjVaw8Twt6vyvVAhe9s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qp5C+GDA0RV6HtmkeVL8EA+l2SAFhxPsE1UMrkuU1wR/dIM4pD8olJUJ12y6IRrD+dkuyoRjqxgjTT8pXLYgxLZ+dn+dAqu1yYwoEKIJk1vNwG5eRHiLsB0CcNmXNLgjJM4LxUoBS0s1+Mzh0ZtFJPegkwfpqgha5LD05UpZ6rE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=KLkmofSR; arc=none smtp.client-ip=217.194.8.81
Received: from francesco-nb (xcpe-178-82-120-96.dyn.res.sunrise.net [178.82.120.96])
	by mail11.truemail.it (Postfix) with ESMTPA id D7B871F8C1;
	Tue, 14 Jul 2026 21:36:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1784057792;
	bh=ouG4gU2sMxcP7NnkE/ZCp7siG/EcEqz4Sk7+xu/lKZg=; h=From:To:Subject;
	b=KLkmofSRNvGp46eG5l7vx8V8L3VWhoxxkU0Qzios6IVZWT3JpLVXNXwOivqOqVmPd
	 sKtwfZ5GN719FY3GWAyiu7jqsgou3YE6aQYbNGOifKGrtsbBN3aXT4aq+XC/EPSmiX
	 cDUQTAuRXJJSjuOz6wiqeNQlRcbNzl4dWC68kqDFfJDPZGOIrR+2hnGuLWYv8JDp4S
	 rPiH7+i3nNht+tpnPz5rNIAUofST5jjdtDCwWaoBcj6JEzzNvp/w/FMMnBqLKeRFIi
	 KKT7/5yyufWUTZiT/+binA7KtPbKrRxfeKw5RqnO8tx9eJYfYmqQlvIzT05Sv+GpOL
	 bVakEGMeY31zw==
Date: Tue, 14 Jul 2026 21:36:27 +0200
From: Francesco Dolcini <francesco@dolcini.it>
To: Liu Ying <victor.liu@nxp.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	p.zabel@pengutronix.de, airlied@gmail.com, simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
	kernel@pengutronix.de, festevam@gmail.com, tglx@linutronix.de,
	vkoul@kernel.org, kishon@kernel.org, Frank.Li@nxp.com,
	lumag@kernel.org, aisheng.dong@nxp.com, agx@sigxcpu.org,
	u.kleine-koenig@baylibre.com, francesco@dolcini.it,
	dmitry.baryshkov@linaro.org
Subject: Re: [PATCH v9 00/19] Add Freescale i.MX8qxp Display Controller
 support
Message-ID: <20260714193627.GA9616@francesco-nb>
References: <20250414035028.1561475-1-victor.liu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250414035028.1561475-1-victor.liu@nxp.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[dolcini.it,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[dolcini.it:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-326468-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:victor.liu@nxp.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:linux-phy@lists.infradead.org,m:p.zabel@pengutronix.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:shawnguo@kernel.org,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:tglx@linutronix.de,m:vkoul@kernel.org,m:kishon@kernel.org,m:Frank.Li@nxp.com,m:lumag@kernel.org,m:aisheng.dong@nxp.com,m:agx@sigxcpu.org,m:u.kleine-koenig@baylibre.com,m:francesco@dolcini.it,m:dmitry.baryshkov@linaro.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	FORGED_SENDER(0.00)[francesco@dolcini.it,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[dolcini.it:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[francesco@dolcini.it,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,lists.linux.dev,lists.infradead.org,pengutronix.de,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,linutronix.de,nxp.com,sigxcpu.org,baylibre.com,dolcini.it,linaro.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp,dolcini.it:from_mime,dolcini.it:dkim,francesco-nb:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E3E537585A6

Hello Liu,

On Mon, Apr 14, 2025 at 11:50:09AM +0800, Liu Ying wrote:
> Hi,
> 
> This patch series aims to add Freescale i.MX8qxp Display Controller support.
> 
> The controller is comprised of three main components that include a blit
> engine for 2D graphics accelerations, display controller for display output
> processing, as well as a command sequencer.

...

> 
> To follow up i.MX8qxp TRM, I changed the controller name to "Display Controller"
> instead of the previous "DPU".  "DPU" is only mentioned in the SoC block
> diagram and represents the whole display subsystem which includes the display
> controller and prefech engines, etc.
> 
> With an additional patch[1] for simple-pm-bus.c, this series facilitates
> testing a LVDS panel on i.MX8qxp MEK.
> 
> Please do NOT merge patch 14-19.  They are only used to facilitate testing
> the LVDS panel.

What's the plan to conclude this work? What's the latest status?
I am looking forward to have a way to use the i.MX8QXP display with
mainline, but to my understanding some required changes on the SOC dtsi
are not merged.

Can you help?

Thanks,
Francesco


