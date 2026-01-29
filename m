Return-Path: <devicetree+bounces-261021-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mGPpGpTFe2mDIQIAu9opvQ
	(envelope-from <devicetree+bounces-261021-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 21:39:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F8DB44C8
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 21:39:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2D97D3014125
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 20:39:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 790CA3587BB;
	Thu, 29 Jan 2026 20:39:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qSxkpHzV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5620E357A24;
	Thu, 29 Jan 2026 20:39:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769719185; cv=none; b=QlnxxGbs0RuNMIcH69oGxPhmdNohCyL3Grd/NdxVtTYWAseFy1gtfLwILzmkV1NP8RGVQgFW7Mt1dLjDfbYgbnxhYhqxn5m0nL3/1AZActKUpzOQVHyCvSiBtNuMasRLnCBb0c1Fj/NQKmefkh7K2NjUdukEj4JRJ2dK4KHmE1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769719185; c=relaxed/simple;
	bh=I2XKr5np989B+pWFOlR34GmPzvPNXdc/qQeX07JQAkg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O/Snm/ws30lVp7iEXoYDDc+Qy9PwzUBJRfD8iLnFViNhjGkbXxhvTbOU1VVn2aFLuVTWmkZW+DPoQOqV9ZsICsI50PkorM48O9tJYRShZAqbFfO5kNH2SUHjwbkB615ixliEyf++iwkCIDNiU4kGA/f4dm/5iYRYtqGtrXZZWzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qSxkpHzV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3817C4CEF7;
	Thu, 29 Jan 2026 20:39:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769719185;
	bh=I2XKr5np989B+pWFOlR34GmPzvPNXdc/qQeX07JQAkg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qSxkpHzVhlw/obTzm96L8FCd6Zg9xmzhDvsreuCMrdLsgY/ZcwoYANS2tptv1zvWR
	 pgejeVocfZabblUdomu7lQwIDh8PvyDSmJ9yOmKuBYHENGntFnsl43n5xPY0qsSSuW
	 5ebzDeh8rB5hOZImkhBCuCBnVvcUuy1TgJpt6SMd/VIEWAI9B/u5QT7amtqdVK0cc/
	 ER827WoQndLGDifnxbVNycXjVmJh3tBklh2jtWYdk6LKvZa4lqPwy9jfprBQ9R07Km
	 YcGsjwYk7D59M+rxNAy330W81ifS0gzk66xHwSYOqwb954LGAw4Jv2+3cwMQMSSctU
	 jd+aYK6/cJiGA==
Date: Thu, 29 Jan 2026 12:39:43 -0800
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
	Han Gao <gaohan@iscas.ac.cn>, Yao Zi <ziyao@disroot.org>,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	Icenowy Zheng <uwu@icenowy.me>
Subject: Re: [PATCH v7 6/8] riscv: dts: thead: add DPU and HDMI device tree
 nodes
Message-ID: <aXvFj22hB14TRDFk@x1>
References: <20260129023922.1527729-1-zhengxingda@iscas.ac.cn>
 <20260129023922.1527729-7-zhengxingda@iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260129023922.1527729-7-zhengxingda@iscas.ac.cn>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261021-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch,redhat.com,pengutronix.de,samsung.com,bootlin.com,iscas.ac.cn,disroot.org,vger.kernel.org,lists.freedesktop.org,lists.infradead.org,icenowy.me];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fustini@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,samsung.com:email,iscas.ac.cn:email]
X-Rspamd-Queue-Id: 90F8DB44C8
X-Rspamd-Action: no action

On Thu, Jan 29, 2026 at 10:39:20AM +0800, Icenowy Zheng wrote:
> From: Icenowy Zheng <uwu@icenowy.me>
> 
> T-Head TH1520 SoC contains a Verisilicon DC8200 display controller
> (called DPU in manual) and a Synopsys DesignWare HDMI TX controller.
> 
> Add device tree nodes to them.
> 
> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
> Tested-by: Han Gao <gaohan@iscas.ac.cn>
> Tested-by: Michal Wilczynski <m.wilczynski@samsung.com>
> ---
> No changes since v4.
> 
> Changes in v3:
> - Adapting to the changed binding.
> 
> No changes in v2.
> 
>  arch/riscv/boot/dts/thead/th1520.dtsi | 66 +++++++++++++++++++++++++++
>  1 file changed, 66 insertions(+)

Reviewed-by: Drew Fustini <fustini@kernel.org>

I will create a pull request for the DTS patches if Thomas applies the
bindings and driver patches.

Thanks,
Drew

