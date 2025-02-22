Return-Path: <devicetree+bounces-149752-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B85FA40582
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 05:41:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C065D19C7147
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 04:41:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95A911FFC5C;
	Sat, 22 Feb 2025 04:41:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=erdfelt.com header.i=@erdfelt.com header.b="jDZVCFsY"
X-Original-To: devicetree@vger.kernel.org
Received: from out.bound.email (out.bound.email [141.193.244.10])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1043B1C3BEE
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 04:41:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=141.193.244.10
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740199295; cv=none; b=Ge4axWBc5qPbGTvBsoDjyRVhp9DBRnZuCdcALh+Ib0GdOxf6e4DtvBHaRmpaGIML7Q7WtrC8ZSGUvf3NpGLuWV2OQq87FsCsyV+K/4UNICBmBYtiqGJ4MhW1xThN/Y54WdN513CSCIvt6YBru8TlpKvephnXcKDLYUUzNmWqzWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740199295; c=relaxed/simple;
	bh=Zd2tsMV6V3o0SXF/ZI+SLruPkPCESfzUdXi1fnZl/4w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jWGprHWVtFvsAO9xkecFbq33A7H+cUOOCouE1ZIcIdGXvDDSC7+JqeuPy+W6b9rFc3pBJT8ZgfjKvim1x/4aDRHYIc1kchPT1EpSQJ+xl3gHN9jUAsags+H/yPQNi6P16SHrvDHkmRFM9uvReh4yqsWnlE/X8zswZE5HwNDI19g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=erdfelt.com; spf=pass smtp.mailfrom=erdfelt.com; dkim=pass (1024-bit key) header.d=erdfelt.com header.i=@erdfelt.com header.b=jDZVCFsY; arc=none smtp.client-ip=141.193.244.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=erdfelt.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=erdfelt.com
Received: from mail.sventech.com (localhost [127.0.0.1])
	by out.bound.email (Postfix) with ESMTP id 68E9E8A1124;
	Fri, 21 Feb 2025 20:36:32 -0800 (PST)
Received: by mail.sventech.com (Postfix, from userid 1000)
	id 51591160036F; Fri, 21 Feb 2025 20:36:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=erdfelt.com;
	s=default; t=1740198992;
	bh=KYidVVPbXZ8EndCbxcLt4iY9PCBO9quW0Sn8Sh3yyAM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jDZVCFsYVj0up9ILlSts8dv0EmlHIke6IPWh9AU7WtWN97dKRCnY0UuOswdkseXF1
	 Rxcm9Ut1PzwfY91SV6uIMyz/A9KlL1KrBVB7gx98C3aSyvzbTt8UaqmhUTiESVnLtO
	 /uGlavYX82YGNuYAmENU5Vx7M0uY9Ik+in9B1wPM=
Date: Fri, 21 Feb 2025 20:36:32 -0800
From: Johannes Erdfelt <johannes@erdfelt.com>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH UNTESTED v5 0/4] Orange Pi 5 Ultra
Message-ID: <20250222043632.GU16911@sventech.com>
References: <20250220041010.3801-1-honyuenkwun@gmail.com>
 <20250221231340.GS16911@sventech.com>
 <CALWfF7KW8_vAx49nNygKpLHNJQVpjvVdVpzYiTAWgQvSopHikw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CALWfF7KW8_vAx49nNygKpLHNJQVpjvVdVpzYiTAWgQvSopHikw@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Fri, Feb 21, 2025, Jimmy Hon <honyuenkwun@gmail.com> wrote:
> On Fri, Feb 21, 2025 at 5:13 PM Johannes Erdfelt <johannes@erdfelt.com> wrote:
> > I'll also see if I can give HDMI a test.
>
> Please report your results when you do. This is one of the differences
> from the Orange Pi 5 Max. The HDMI1 pinctrls does not use the default
> pinctrls like other RK3588 boards (including the Orange Pi 5 Plus).

No luck yet. I do see this message in the kernel logs 8 times at boot:

[   41.552751] rockchip-drm display-subsystem: [drm] *ERROR* failed to
get pll_hdmiphy0

I'll confirm with the vendor image that my HDMI setup is correct.

JE


