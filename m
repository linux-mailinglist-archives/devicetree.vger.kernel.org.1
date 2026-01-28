Return-Path: <devicetree+bounces-260591-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UK0+GSxoemmB5gEAu9opvQ
	(envelope-from <devicetree+bounces-260591-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 20:49:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 04723A8424
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 20:48:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7A4753015895
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 19:48:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7ED48335089;
	Wed, 28 Jan 2026 19:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZR4m4kSB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 572C231A54E;
	Wed, 28 Jan 2026 19:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769629730; cv=none; b=uGcLnpC5ArDXCT3a1yA1XrPeluXOzw6oC7exRcXReSvSc5eQ5UI5KQQ6dU1RIiZPy4M/FEW/kb9QkqwrDSqqMJLjSwHQZmzytfPq5MfwK+STb9YmoXjYfYTp4OglIUeHToUQaxy3MB5brsIrWmgYrMDTDCqhhnAfFXQWkzjUaJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769629730; c=relaxed/simple;
	bh=4zt9hc3BBEaGcxjfty65LgYWsANjQMrfkrl4+EdZevs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RdKDsqMeURq3Lb3qnOjPKlDfAkODyDCI8awJ75joIUj/PZrHMYR3NOhsbTqtKLcLQx9EbJUbARco2cgQND9YyoFWROBcu7OWnTJe/oAx3IqaqzgtKA+5nj8ArAuTusLO9Of7x6kAwkBLBj0MIyk1h607EkQOCLricydrs+8QP8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZR4m4kSB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF4C4C4CEF1;
	Wed, 28 Jan 2026 19:48:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769629730;
	bh=4zt9hc3BBEaGcxjfty65LgYWsANjQMrfkrl4+EdZevs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZR4m4kSBzAMSHsbeBQ34bIcwQAsZVK+OE178Cx8QjpLqVZ645Gg5NOBjPTVif7Wdg
	 2jtmumLgu2VZ0EGB2gpNcViq/IV89Fa1xx0J5gGG97RPg+tPberSBmPjrWO/dDKu90
	 U2ELtlQtf3PCUr3Z/h1gMGZJA1fqKAE7fbY4TW8EPMqhTOYzAviYnQLwUJyNVTdI53
	 BTTAPgp24juLsdVvHNX5vePreHHTKj74IykwKaEUjcLWXD4tb7N9CFVCvuptLhIPdI
	 AXs7ZbXMkSsODGCnPZDFGwMA7ex1Lk3gA/3kncgyGU8osDrXaXu+8E1Z7sR2L2lYou
	 SvuvlPDbk+0WA==
Date: Wed, 28 Jan 2026 11:48:48 -0800
From: Drew Fustini <fustini@kernel.org>
To: Icenowy Zheng <zhengxingda@iscas.ac.cn>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>, Philipp Zabel <p.zabel@pengutronix.de>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Michal Wilczynski <m.wilczynski@samsung.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Han Gao <rabenda.cn@gmail.com>, Yao Zi <ziyao@disroot.org>,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	Icenowy Zheng <uwu@icenowy.me>, Han Gao <gaohan@iscas.ac.cn>
Subject: Re: [PATCH v6 6/9] riscv: dts: thead: add DPU and HDMI device tree
 nodes
Message-ID: <aXpoIBxC6vwZ27By@x1>
References: <20260123092830.4046009-1-zhengxingda@iscas.ac.cn>
 <20260123092830.4046009-7-zhengxingda@iscas.ac.cn>
 <aXpa5zPWNOM1oP/C@x1>
 <aXpnGA80OYY+aoMy@x1>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aXpnGA80OYY+aoMy@x1>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260591-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[29];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch,redhat.com,pengutronix.de,samsung.com,bootlin.com,disroot.org,vger.kernel.org,lists.freedesktop.org,lists.infradead.org,icenowy.me,iscas.ac.cn];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fustini@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,iscas.ac.cn:email,icenowy.me:email,samsung.com:email]
X-Rspamd-Queue-Id: 04723A8424
X-Rspamd-Action: no action

On Wed, Jan 28, 2026 at 11:44:24AM -0800, Drew Fustini wrote:
> On Wed, Jan 28, 2026 at 10:52:23AM -0800, Drew Fustini wrote:
> > On Fri, Jan 23, 2026 at 05:28:27PM +0800, Icenowy Zheng wrote:
> > > From: Icenowy Zheng <uwu@icenowy.me>
> > > 
> > > T-Head TH1520 SoC contains a Verisilicon DC8200 display controller
> > > (called DPU in manual) and a Synopsys DesignWare HDMI TX controller.
> > > 
> > > Add device tree nodes to them.
> > > 
> > > Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> > > Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
> > > Tested-by: Han Gao <gaohan@iscas.ac.cn>
> > > Tested-by: Michal Wilczynski <m.wilczynski@samsung.com>
> > > ---
> > > No changes since v4.
> > > 
> > > Changes in v3:
> > > - Adapting to the changed binding.
> > > 
> > > No changes in v2.
> > > 
> > >  arch/riscv/boot/dts/thead/th1520.dtsi | 66 +++++++++++++++++++++++++++
> > >  1 file changed, 66 insertions(+)
> > 
> > Reviewed-by: Drew Fustini <fustini@kernel.org>
> 
> I've applied this to tenstorrent-dt-for-next
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/fustini/linux.git/commit/?h=tenstorrent-dt-for-next&id=b6a400f45aaf391d15d70758df207bbf5a63811e

Sorry about my typo mistake. The correct branch is thead-dt-for-next

https://git.kernel.org/pub/scm/linux/kernel/git/fustini/linux.git/log/?h=thead-dt-for-next

Thanks,
Drew

