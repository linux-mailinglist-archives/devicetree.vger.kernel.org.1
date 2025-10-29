Return-Path: <devicetree+bounces-232698-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E2A6C1A7E9
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 14:05:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5E1D51A622D9
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 12:59:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6508358D21;
	Wed, 29 Oct 2025 12:38:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7sIOY5C"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDA97358D1B;
	Wed, 29 Oct 2025 12:38:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761741529; cv=none; b=nc8akVCPvcqov7YyWN2bf0d3oFTPCl3dF0Q3ZheblOHFBm9Hc4FYqzCveuS6UeN6pxMDihVCxPXWduhLnEepsOgUpgugKBSXdab/5eT+H5brrRWR5dhx0bQhpC65FFblpLSrYp0nkdpuHC5+Zq14f2NFN341oCypC4iKLhSfoQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761741529; c=relaxed/simple;
	bh=io5APAxwYyBvLX7wqG3QvSQDvLAa+a6gJ1zgJnjDudE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=frvnfAjchQaPWdOO5C6OmP1SfnhH9AeiALlObcdX22LYX/XI5TbrPepe0Xttl5CQOhqsCswapiMlgqcnevPDPT98cK8RLdlt8KQ7X2kUSs4xLgMoHlyTUfAIzevT0zks+hUvW1zWmVVZ+pGa/vBXBHHHquIDP7iRO/09fd+nZ1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7sIOY5C; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37D19C4CEFD;
	Wed, 29 Oct 2025 12:38:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761741529;
	bh=io5APAxwYyBvLX7wqG3QvSQDvLAa+a6gJ1zgJnjDudE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=e7sIOY5CsIcoyyM2ffuDKsYUlQpy6tooFOGdX28GnNxxV6GQChmLwj9X9YYkmvxTQ
	 CaG1WOoW/nO4ZpkZcLcCevc7YC+Q/YoqKIPwctV1IpS6cCv1sjI9TiUi4I906QUrrp
	 xIeox15QVm6qQwroyPv3pnOnXPJQbx1TSyI88ui5lAvHu2oYSD8tXYBPAyhnqYERIn
	 iseQdI8NaqPcQuXFsZ1eaWWY8wL8QvWSOXM+QrSaBTgvMX/E+3DKjJSSYp+/NC9rGu
	 KzpPwtaEHol9f6B5qW6jcvyKE/8VIQaD+L/I778Js06NMXp5qbBhlbBxiYOo0mZvF3
	 1pofL5WpJKa2A==
Date: Wed, 29 Oct 2025 12:38:42 +0000
From: Drew Fustini <fustini@kernel.org>
To: Yao Zi <ziyao@disroot.org>
Cc: Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Michal Wilczynski <m.wilczynski@samsung.com>,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Icenowy Zheng <uwu@icenowy.me>,
	Han Gao <rabenda.cn@gmail.com>, Han Gao <gaohan@iscas.ac.cn>
Subject: Re: [PATCH v3 2/5] dt-bindings: reset: thead,th1520-reset: Add
 controllers for more subsys
Message-ID: <aQIK0lSzQCbjatET@gen8>
References: <20251014131032.49616-1-ziyao@disroot.org>
 <20251014131032.49616-3-ziyao@disroot.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251014131032.49616-3-ziyao@disroot.org>

On Tue, Oct 14, 2025 at 01:10:29PM +0000, Yao Zi wrote:
> TH1520 SoC is divided into several subsystems, most of them have
> distinct reset controllers. Let's document reset controllers other than
> the one for VO subsystem and IDs for their reset signals.
> 
> Signed-off-by: Yao Zi <ziyao@disroot.org>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  .../bindings/reset/thead,th1520-reset.yaml    |   8 +-
>  .../dt-bindings/reset/thead,th1520-reset.h    | 216 ++++++++++++++++++
>  2 files changed, 223 insertions(+), 1 deletion(-)

Reviewed-by: Drew Fustini <fustini@kernel.org>

