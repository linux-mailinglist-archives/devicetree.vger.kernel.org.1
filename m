Return-Path: <devicetree+bounces-292419-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CJ88IQp992kpiQIAu9opvQ
	(envelope-from <devicetree+bounces-292419-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 03 May 2026 18:51:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D25234B69AA
	for <lists+devicetree@lfdr.de>; Sun, 03 May 2026 18:51:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AA050301573D
	for <lists+devicetree@lfdr.de>; Sun,  3 May 2026 16:50:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2275F2E8B81;
	Sun,  3 May 2026 16:50:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lp0gv1z/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1FA117BA6;
	Sun,  3 May 2026 16:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777827017; cv=none; b=aMbRcDZTrGvWZ73AKf6ixQ3HGeOEljx8ia+X2aKy+hmmQbLz2js3AQ8QK1Q8erx7hVK8ParyhucYYh4Ny68wCbfGfF1mZ5w8ZfmhWOXMiDqrlbzVZ5DhwqZnNYwkNSIVXFDVTSccf9w4prjpj+qnC/BXETV9NyVQwWOZkzOYcCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777827017; c=relaxed/simple;
	bh=EcIJ+6nR1kdFOG4fTTp8uLBQCqZk2MyerUY14rOlOSA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fYXEpkBxCjBiMheN/whtNfdhrhX5PZq220Ke/baSwl8ll2c9W5w4+ea1PBmNeSkLNtjk2+AKPfWKsF23PRuc+LLbYt2YISW/QZGcqFzAFSzGlxY9SZsfVzi8Vq+G5YCV2QUYYZMeVIS56sdyEgQpot61ibSNFJS8RevezeE0ztQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lp0gv1z/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9CB70C2BCB4;
	Sun,  3 May 2026 16:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777827016;
	bh=EcIJ+6nR1kdFOG4fTTp8uLBQCqZk2MyerUY14rOlOSA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lp0gv1z/9St8x7kSEsE5qrH6Uk67Q5ty4kT1IqtUMgeaA7dCVtmxE4u34QRnuxklE
	 O2I60cgzCIEnUc6iUZjOu3togYE/T2wlhMgXbWAgiBkuJqBYWfOONaPoUvwXBQhh/8
	 JZoiQ4rxka0GpD5g+h1EiI+StNJc95GjUTd90E/EKWYWCIjdJMeTquz1mjRKJ6aa+G
	 pYJ0hFTVoliKB2hwUpP5xD5t8lAB9/MRgG4F9+MBiPH8bndVILIIZDUe93HgMXtmi3
	 ZQjsW8/FQxyvlO8+PIQW9YBtvnfYaU7H7TA7KeFBqzma0aQIgXYOvES/mUIb9XkYhW
	 7GPvp1xrhWmFQ==
Date: Sun, 3 May 2026 22:20:12 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Frank Wang <frank.wang@rock-chips.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andy Yan <andy.yan@rock-chips.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Yubing Zhang <yubing.zhang@rock-chips.com>,
	Alexey Charkov <alchark@gmail.com>, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@collabora.com, devicetree@vger.kernel.org,
	William Wu <william.wu@rock-chips.com>
Subject: Re: [PATCH v4 00/16] phy: rockchip: usbdp: Fixes, DP 1-lane support
 and cleanups
Message-ID: <afd8xMS2hz208Lcl@vaman>
References: <20260428-rockchip-usbdp-cleanup-v4-0-7775671ece22@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260428-rockchip-usbdp-cleanup-v4-0-7775671ece22@collabora.com>
X-Rspamd-Queue-Id: D25234B69AA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-292419-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linaro.org,sntech.de,rock-chips.com,kernel.org,gmail.com,lists.infradead.org,vger.kernel.org,collabora.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vkoul@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

Hi Sebastian,

On 28-04-26, 18:13, Sebastian Reichel wrote:
> This series overhauls the Rockchip USBDP driver; apart from a
> a bunch of cleanups and small improvements the main goal is to
> get the driver ready for proper USB-C DP AltMode support.
> 
> Once this series has landed, it unblocks enabling proper USB-C
> DP AltMode on the RK3588 and RK3576 platforms incl. runtime PM
> for the Synopsys DesignWare DisplayPort controller.
> 
> Apart from this series, further changes are required on the
> DRM side. There are no compile-time dependencies between the
> DRM side and the PHY side, but the PHY side must be applied
> to avoid SErrors once runtime PM is added to the DisplayPort
> controller driver. Thus it would be really good to land this
> series in the next merge window.

Looks like sasiko has flagged 8 high warning, can you please check them

-- 
~Vinod

