Return-Path: <devicetree+bounces-260623-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iPtEChFzemng6gEAu9opvQ
	(envelope-from <devicetree+bounces-260623-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 21:35:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B8814A8A65
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 21:35:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2EE673006148
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 20:35:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DB0D371073;
	Wed, 28 Jan 2026 20:35:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JzJGyY69"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E73336EE5;
	Wed, 28 Jan 2026 20:35:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769632525; cv=none; b=TQ5GMVZhW+NBS0Pjh4JRxuqYbaSUa7os0OlpmMzAY2wDM2DkDfO3hp5OKkYDnKi0S7BAEB3pjkkoUCBDSt5Ng3UZlKHuDawoEyDLDi5a8P+aUm3kZ1hZkdALVeiQm2tutLn8N5jE944dZW/JtxBToBrfAnsgA/wK70loLZK1+4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769632525; c=relaxed/simple;
	bh=yrnUUci/5Ahsz40PLPK7R0htusSkB8akdUK58N6WXS8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=R9OCi2PQayl5ZBskGwub1zsNV9k3Zlm0/QNHCglPyK+bZD7pLHPLca70nKbKEJNHmsjXvsC2MlIyjBBVVsd/Sff6PsQsOuHfjNHWYnftfdffKEx72Pm8MM0acQBmX3VtzGvhmZMdD2YWDWuv4BnLWAMfANyaXT7yGSuPtfZ2CkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JzJGyY69; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E219C116C6;
	Wed, 28 Jan 2026 20:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769632524;
	bh=yrnUUci/5Ahsz40PLPK7R0htusSkB8akdUK58N6WXS8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JzJGyY690ZAhQVx+8Kmt2Sq//jhKMTPY7GWMxEIJHsuuL2XHLceWHtDPedYsO2H0B
	 p6HpsgEy4ovTugw+gd6Y6RJXeprchF/38ic2lABzQc5zdWHu2QtxdAhILsIC2r9zcT
	 8z7w5FzXoVPLV/ikIuCCUK+w1eAzZPlL/9ATO2dNOLrf4fNpybQU29HhpQ7eVzpEXg
	 cJtGIMmB5peUC2JfQx+9amd4rBUpLFVafc3tbcfr4b1ZZYE0tF2hk4lv8wigP/ayMi
	 KAnHC0P92ltnk0XYtkGO08rbyd0sCxaZK40RRWaM7tj7md+qsOARKJTrMfAz3H3Xd1
	 klvlqdXTbM8kg==
Date: Wed, 28 Jan 2026 12:35:23 -0800
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
	Icenowy Zheng <uwu@icenowy.me>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v6 4/9] dt-bindings: display/bridge: add binding for
 TH1520 HDMI controller
Message-ID: <aXpzC8MnShvc0tJv@x1>
References: <20260123092830.4046009-1-zhengxingda@iscas.ac.cn>
 <20260123092830.4046009-5-zhengxingda@iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260123092830.4046009-5-zhengxingda@iscas.ac.cn>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260623-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[29];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch,redhat.com,pengutronix.de,samsung.com,bootlin.com,disroot.org,vger.kernel.org,lists.freedesktop.org,lists.infradead.org,icenowy.me];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fustini@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[icenowy.me:email,linaro.org:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B8814A8A65
X-Rspamd-Action: no action

On Fri, Jan 23, 2026 at 05:28:25PM +0800, Icenowy Zheng wrote:
> From: Icenowy Zheng <uwu@icenowy.me>
> 
> T-Head TH1520 SoC contains a Synopsys DesignWare HDMI controller paired
> with DesignWare HDMI PHY, with an extra clock gate for HDMI pixel clock
> and two reset controls.
> 
> Add a device tree binding to it.
> 
> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
> No changes since v3.
> 
> Changes in v2:
> - Re-aligned multi-line clocks/resets in example.
> - Added Krzysztof's R-b.
> 
>  .../display/bridge/thead,th1520-dw-hdmi.yaml  | 120 ++++++++++++++++++
>  1 file changed, 120 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/thead,th1520-dw-hdmi.yaml

I've applied the bindings patches (1, 2, 4) to thead-dt-for-next as well
so that 'make W=1 dtbs_check' won't break for the next release of
linux-next.

https://git.kernel.org/pub/scm/linux/kernel/git/fustini/linux.git/log/?h=thead-dt-for-next

Please see my reply to patch 1 for the rest of my message.

Thanks,
Drew

