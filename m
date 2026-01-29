Return-Path: <devicetree+bounces-261022-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AJMxE6zFe2mDIQIAu9opvQ
	(envelope-from <devicetree+bounces-261022-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 21:40:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C613B44DD
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 21:40:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 03F6B3005304
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 20:40:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8CC93587C9;
	Thu, 29 Jan 2026 20:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hugHyr+5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95160357A24;
	Thu, 29 Jan 2026 20:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769719207; cv=none; b=KoJucj/Bdh0tFMhnyWtpBx5V1aMOuLjWG582WxYzlztcaZHqMEneSi88bgielvBWl5BMf5yoz1qNdd1M4n/hZVDYfO5UOIDA6SNXYEvjGs2hJL1Kn8hdAE8yMeWTzB4rtwWonjP7ejhcDjpxym/7u47c4o9ykykSPE1xuAApbQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769719207; c=relaxed/simple;
	bh=LAb5bVXMPi41pVUrYORqBL7gghLLXdUQzzwJ6WaC5JM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gA0lh4FK3EreCgBo2bR19ghXUtajdGn59a73JqVnqfzQogZ88GKjJph3fD4F0voz5+lOmKzmRLAzAgUAOfcp+hYwB3tJ9zqBYDDsdgK37VrWOqYpw/q7g3xPQzy/hF8tA0qNNor/AK0R0rDHuGcANoMEIb4+Hoxldc0rh6c3iVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hugHyr+5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE757C4CEF7;
	Thu, 29 Jan 2026 20:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769719207;
	bh=LAb5bVXMPi41pVUrYORqBL7gghLLXdUQzzwJ6WaC5JM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hugHyr+590rN9O8LXTJJbbKHZHH8Hr+igVKqJ1fHEe1ApNsw3T5Xlx5NZpLolWIHV
	 B/S/E+IVF7mOAUoj8ZIyRal8QihzDgPxOQ2uvtlK9gYiO02yFk/mvhEoLqZ7ZEoU9b
	 H/nYzmyZvrp4m4O/X99bOj+yAetENcG1ITuBvtj68dio4ydStSULuWp9x5+mEFGv3y
	 2lHQYhtnVBBo/3pIiC6Q+9eJg1QnwEvX160y6ZrMoXb/mEx4+PAX820Rk+NNt2jD6P
	 n6lV1zbThikCUOcDikHlBK2VyZ6cwUlwgpw4beeVLJy4eqGlqIg6dQd4+mbvGt+9JA
	 LwGPX7pQFq5sA==
Date: Thu, 29 Jan 2026 12:40:05 -0800
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
Subject: Re: [PATCH v7 7/8] riscv: dts: thead: lichee-pi-4a: enable HDMI
Message-ID: <aXvFpSNCR1WQbjp0@x1>
References: <20260129023922.1527729-1-zhengxingda@iscas.ac.cn>
 <20260129023922.1527729-8-zhengxingda@iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260129023922.1527729-8-zhengxingda@iscas.ac.cn>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261022-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[icenowy.me:email,iscas.ac.cn:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,samsung.com:email]
X-Rspamd-Queue-Id: 5C613B44DD
X-Rspamd-Action: no action

On Thu, Jan 29, 2026 at 10:39:21AM +0800, Icenowy Zheng wrote:
> Lichee Pi 4A board features a HDMI Type-A connector connected to the
> HDMI TX controller of TH1520 SoC.
> 
> Add a device tree node describing the connector, connect it to the HDMI
> controller, and enable everything on this display pipeline.
> 
> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
> Tested-by: Han Gao <gaohan@iscas.ac.cn>
> Tested-by: Michal Wilczynski <m.wilczynski@samsung.com>
> ---
> No changes in v5.
> 
> Changes in v4:
> - Rebased on top of v6.19-rc1.
> 
> No changes in v2, v3.
> 
>  .../boot/dts/thead/th1520-lichee-pi-4a.dts    | 25 +++++++++++++++++++
>  1 file changed, 25 insertions(+)

Reviewed-by: Drew Fustini <fustini@kernel.org>


