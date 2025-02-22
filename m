Return-Path: <devicetree+bounces-149903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 64729A40C18
	for <lists+devicetree@lfdr.de>; Sun, 23 Feb 2025 00:12:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 464AC174320
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 23:12:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EC5A20371C;
	Sat, 22 Feb 2025 23:12:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=erdfelt.com header.i=@erdfelt.com header.b="tFeK+qhI"
X-Original-To: devicetree@vger.kernel.org
Received: from out.bound.email (out.bound.email [141.193.244.10])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D18631FBC9F
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 23:12:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=141.193.244.10
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740265932; cv=none; b=XoODXwuCmpxZpMg7QX0qGt0cKgiONKRtrPQgldcTXq+u/qDC70Tv6u2tjjdZgDOxP+qsmFMFkpMmAmtmhSnZOP2DudgmdmAplEscurQT8hZU1uvzGX6W8UN5ikyCAjSuuX8yIHVNUL+zxj9n6kIkO/+bFCFn3M8WTj9QX8F4qOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740265932; c=relaxed/simple;
	bh=1lSEIZVAAIMNPh+8nD5a2LdFf1TeoRiBAzEuZtWXsHI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AKLhIMTHL1fsASlWXYlr3jXGtnYk3/0H4Byc+9UIU4ZEUHWUaYDEWXYOXtK5IZq/om3X6FuX/4DKfGTMfILV/YH5JHBDqv/37WuZbWlgMFtY61Q5EJRCBM4wfQk1itZxJuga5deHZxTppZF/MYMyBR2dx6wo+IBwk4N/9gaMHmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=erdfelt.com; spf=pass smtp.mailfrom=erdfelt.com; dkim=pass (1024-bit key) header.d=erdfelt.com header.i=@erdfelt.com header.b=tFeK+qhI; arc=none smtp.client-ip=141.193.244.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=erdfelt.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=erdfelt.com
Received: from mail.sventech.com (localhost [127.0.0.1])
	by out.bound.email (Postfix) with ESMTP id 4704E8A3369;
	Sat, 22 Feb 2025 15:07:09 -0800 (PST)
Received: by mail.sventech.com (Postfix, from userid 1000)
	id 34591160036F; Sat, 22 Feb 2025 15:07:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=erdfelt.com;
	s=default; t=1740265629;
	bh=rO5oMc5NnK+5OhYBeYB9HiC4kstar/l6abOfZI8x0zU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tFeK+qhInZPwmk40C8N9t24LVCw7lHi5cjCsmiBbQ8EkszYLJx0s6x8uxce9l8sXa
	 mW6A6XDBlOO9MF6dRVg6IKLq4bhPceuRMMXkZSh46y9HcxbhPTOMlzgj7HY6NWnUo6
	 bw4bdZCVdqFP3Mbtr3WeUlaXrx2WTW4lZpvZndpg=
Date: Sat, 22 Feb 2025 15:07:09 -0800
From: Johannes Erdfelt <johannes@erdfelt.com>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v7 4/5] arm64: dts: rockchip: Enable HDMI1 on Orange Pi 5
 Ultra
Message-ID: <20250222230709.GA16911@sventech.com>
References: <20250222193332.1761-1-honyuenkwun@gmail.com>
 <20250222193332.1761-5-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250222193332.1761-5-honyuenkwun@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sat, Feb 22, 2025, Jimmy Hon <honyuenkwun@gmail.com> wrote:
> Enable the only HDMI output port on the Orange Pi 5 Ultra
> 
> Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
> ---
>  .../dts/rockchip/rk3588-orangepi-5-ultra.dts  | 42 +++++++++++++++++++
>  1 file changed, 42 insertions(+)

Tested-By: Johannes Erdfelt <johannes@erdfelt.com>

JE


