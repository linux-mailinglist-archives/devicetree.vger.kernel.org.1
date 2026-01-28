Return-Path: <devicetree+bounces-260600-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OHKkKSNwemlI6QEAu9opvQ
	(envelope-from <devicetree+bounces-260600-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 21:22:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CCC9A873E
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 21:22:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 55EB0303C602
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 20:22:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 742833358B8;
	Wed, 28 Jan 2026 20:22:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AM+gi55F"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E4F33123B;
	Wed, 28 Jan 2026 20:22:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769631762; cv=none; b=E3Xbv5vs2lgSwbdEN6PEDq+ycr5HmUwnOHD0lO+ltPN9qy5ythXhe+J71a42Px/nCENrY0co9YDvqrrwkNHg/vtmrDaAasKQJFQrferEbmf/kj+0dfWYWU3PhdYQOsFK68YSHhmMMY334LhpQN1MKT6c+KUXPnNLXc/zpv6jxE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769631762; c=relaxed/simple;
	bh=0ZVDhWmgwKp4rlcvX2aKmM2j+CKQarrY0wx8Yr1T3gU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RHaCX/0E6oyK+xxeqNrmBUiUseEQQgVffv/aUVapJgDwvxXA1ukasYxuzNawHumhXtIow+jrhY6Yq0tw8w5ANXdwtSOHjaoRwdR0KBz994AfvTceYCXXIFi0bYrsJGmtfXLTCfoa9Qck4+KB6mm5aJZV5jbiP1FGrV0N0XUjRHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AM+gi55F; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76572C4CEF7;
	Wed, 28 Jan 2026 20:22:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769631761;
	bh=0ZVDhWmgwKp4rlcvX2aKmM2j+CKQarrY0wx8Yr1T3gU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AM+gi55FMtmu+sZWz5UCYToHW91vi1dLcVwaSCwUs+ZRHjJKk/OachpAOXJwOvwgh
	 d3fe1JkJgN+MB1D7ONNrCBUi2RMl6ZCY2ffx/zlUC/LlMB7jViNt0zupQpFT+KQ7MS
	 sNefVfy6T7pPFzmbosaD6BhIU6q/P6qweBvXxvWYa0XMKtskmTcSoCMeW4T+YD/fsh
	 cjsbnqmIcUcM13qvAFaBYWawYsOC4/fw+BPRDFICPdhA8hN6c+pLkkLSQzCu2rJBaB
	 F27XPMZ+sffeXhw39fStjF1iD02B2JDlg7/VYeXphh0eIURqnfOnVKg6dXNdpCRE/K
	 7pLmiZckSQJHA==
Date: Wed, 28 Jan 2026 12:22:40 -0800
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
	Icenowy Zheng <uwu@icenowy.me>
Subject: Re: [PATCH v6 1/9] dt-bindings: vendor-prefixes: add verisilicon
Message-ID: <aXpwED5wSZbnIjae@x1>
References: <20260123092830.4046009-1-zhengxingda@iscas.ac.cn>
 <20260123092830.4046009-2-zhengxingda@iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260123092830.4046009-2-zhengxingda@iscas.ac.cn>
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
	TAGGED_FROM(0.00)[bounces-260600-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch,redhat.com,pengutronix.de,samsung.com,bootlin.com,disroot.org,vger.kernel.org,lists.freedesktop.org,lists.infradead.org,icenowy.me];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[iscas.ac.cn:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0CCC9A873E
X-Rspamd-Action: no action

On Fri, Jan 23, 2026 at 05:28:22PM +0800, Icenowy Zheng wrote:
> From: Icenowy Zheng <uwu@icenowy.me>
> 
> VeriSilicon is a Silicon IP vendor, which is the current owner of
> Vivante series video-related IPs and Hantro series video codec IPs.
> 
> Add a vendor prefix for this company.
> 
> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> ---
> No changes since v4.
> 
> Changes in v3:
> - Add Rob's ACK.
> 
> No changes in v2.
> 
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index c7591b2aec2a7..18f931f369198 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -1745,6 +1745,8 @@ patternProperties:
>      description: Variscite Ltd.
>    "^vdl,.*":
>      description: Van der Laan b.v.
> +  "^verisilicon,.*":
> +    description: VeriSilicon Microelectronics (Shanghai) Co., Ltd.
>    "^vertexcom,.*":
>      description: Vertexcom Technologies, Inc.
>    "^via,.*":
> -- 
> 2.52.0
> 

I've applied the bindings patches (1, 2, 4) to thead-dt-for-next as well
so that 'make W=1 dtbs_check' won't break for the next release of
linux-next.

https://git.kernel.org/pub/scm/linux/kernel/git/fustini/linux.git/log/?h=thead-dt-for-next

I wouldn't normally pick bindings patches but it is a short timeline if
we want to get some testing done in linux-next before sending v6.20 pull
requests. I have created an immutable branch thead-dt-v6.20-dpu-hdmi in
case that helps.

https://git.kernel.org/pub/scm/linux/kernel/git/fustini/linux.git/log/?h=thead-dt-v6.20-dpu-hdmi

I can drop the yaml patches from thead-dt-for-next if people think that
was the wrong thing to do. If we think that the driver changes won't
actually be ready for the merge window, then I can drop all these
patches from thead-dt-for-next.

Thanks,
Drew

