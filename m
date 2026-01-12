Return-Path: <devicetree+bounces-253812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 79323D11806
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 10:31:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id F02303019693
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 09:31:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2825226738C;
	Mon, 12 Jan 2026 09:31:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b="0Fh48Bkc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1A53269D18;
	Mon, 12 Jan 2026 09:31:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.194.8.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768210295; cv=none; b=LwR8nL7jO/2SLbikRydVFfiw/AilY3qQ2Ch6Alr5VOFzLKY2Dab7uaEwmxsk8TAN+XIeMiO9V97gZpR5KtlYS07Z+/xtKtbgrh97z9aYKHbE88UblT9H47+tzzgVmMj0cRzJhh56WYSa0xriuszyY6GoUetBEk1U2Im+ezkT9F8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768210295; c=relaxed/simple;
	bh=EfmYhSCAL08r8vyHCGXsH/rCCkZL8BxEgHrDsSFGrx8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Hjxyi6dRueSQkkNFc3/wAzlOIB4otLwbmtXk6rF/WiFDleIDxOm+Y+7mjwwVi291SRKmPROnejW3k/Bj4b4CuayMzbbhKsSTkmAexOAvqK+58KBqBpFqd6tox30EiVgdT4yfVNK5AMcswTknKZdGU2AAuRmDfev8uMkF6irkMMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=0Fh48Bkc; arc=none smtp.client-ip=217.194.8.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dolcini.it
Received: from francesco-nb (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch [83.173.201.248])
	by mail11.truemail.it (Postfix) with ESMTPA id 39D001FAEB;
	Mon, 12 Jan 2026 10:31:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1768210291;
	bh=s3LRU1JMOrxpverMraSdvoJOfwQ2d8WQFmbgP0Dj6GY=; h=From:To:Subject;
	b=0Fh48BkctmxJDE4uLjJyY2eSpFTGZXrrj32Td53w2GYyWjPve4k6tyrJgoPN+t0FX
	 7QJQporLkHabZaE/w6Bvz+MSmM5z//l7+qw9kiDFUx2qC6GETaT/UUJrEB66otMWqh
	 Kq5oTKt3RckFBEDFV9kw5lmkzC836/VmJcNZk9F1xe95WzN6Wb6pHPCN+Qw1aYzoPN
	 ZIvEONosaEuiQ0BtijjeZCey8ZQb0gbqgNL0okUB3ASbx8GfuuvxnGp6QjtfvgUYEu
	 W3GxcbBucgHWXPg7befFqSSyAjVlK0d3rVKTOMj4cqCXjy7ckqeuQV2n9+OhE0o291
	 EAWgDIKe+mnXg==
Date: Mon, 12 Jan 2026 10:31:27 +0100
From: Francesco Dolcini <francesco@dolcini.it>
To: Liu Ying <victor.liu@nxp.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, andrzej.hajda@intel.com,
	neil.armstrong@linaro.org, rfoss@kernel.org,
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
	jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
	mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
	simona@ffwll.ch
Subject: Re: [PATCH 0/5] drm/bridge: simple-bridge: Add DPI color encoder
 support
Message-ID: <20260112093127.GA121274@francesco-nb>
References: <20250304101530.969920-1-victor.liu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250304101530.969920-1-victor.liu@nxp.com>

Hello Liu,

On Tue, Mar 04, 2025 at 06:15:25PM +0800, Liu Ying wrote:
> This patch series aims to add DPI color encoder support as a simple DRM
> bridge.  A DPI color encoder simply converts input DPI color coding to
> output DPI color coding, like Adafruit Kippah DPI hat[1] which converts
> input 18-bit pixel data to 24-bit pixel data(with 2 low padding bits in
> every color component though).  A real use case is that NXP i.MX93 11x11
> EVK[2] and i.MX93 9x9 QSB[3] boards may connect a 24-bit DPI panel through
> the Adafruit Kippah DPI hat.  The display pipeline is
> 
> i.MX93 LCDIF display controller(RGB888) ->
> i.MX93 parallel display format configuration(RGB666) ->
> on-board Raspiberry Pi compatible interface(RPi)(RGB666) ->
> Adafruit Kippah DPI hat(RGB888 with 2 low padding bits in color components) ->
> 24-bit "ontat,kd50g21-40nt-a1" DPI panel


Any update/progress/plan on this patch series?

Thanks,
Francesco


