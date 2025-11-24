Return-Path: <devicetree+bounces-241487-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B72CAC7EF97
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 06:05:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 607FE346174
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 05:05:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC6782BE056;
	Mon, 24 Nov 2025 05:05:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="U4n1f8Na"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB3329D29A;
	Mon, 24 Nov 2025 05:05:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763960752; cv=none; b=mgvkDUvQ0+f+u/tjSVEwpMBOROwLSx4lzZoHSeOzBKPAqjLwf8/nfzAOWEKnWd6nIhWr27KV1MoMacQSlGCk3xZkSsGkC3DV08CM8dhGqzvf50JaKwuAaVkNKnLP+WsGqTf24JXV+ZIbjb8W/7PDIyvS7LY8TypQrJWnhV+B78c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763960752; c=relaxed/simple;
	bh=MmvYsdYLqi8x/SH3dyd0R5ZjK0zEZ9vTir8J+3U8sXY=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=aBaHMzIqOyrb6qaA6UedvDgT+LoTBeycJwLTcB6fEeSiNvvMECrx3DjyXNBzEu3gKwGZ2574/HlQGlNqge7X2e9tgr+0QDhShV/E3PisjR7fBWUXunjMVTJzgKY/myUd7ZbKyRMj9+dnanKX+ZkNI4K6AQV+0hMnl/FbEeuSlmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=U4n1f8Na; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1763960748;
	bh=MmvYsdYLqi8x/SH3dyd0R5ZjK0zEZ9vTir8J+3U8sXY=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=U4n1f8Nai6P/wji1kcpqWMJCN1Pgwyp7L6Hc/2dmWMe9f19pTgvDvuDOsuOtxq+pP
	 uQd8JsuBDJxBZZLBWlF+ssOO1J0kLRvyWePn4iSWYMkP6FJBnkxDMqGgppd1LfEMeh
	 W3rOt5uwLnflvUn5noi9fLGhdHojb/j9cQboiMr6wlA4yO/X3MKjIcM2Bnm50aPzmC
	 d8hBKLbK0+CssWRCUC/FuzkHdzmqT0tKta1IYs4FC6oRs2gTaYbKYuhjWKFWFBhn3L
	 XK3BCs8CsNEauTX5dKEm8YEvtLOVzfVF0/GG+EtjPFiYMcV04OC+80oi8JWMVtTVzZ
	 02lM+KhhKUmog==
Received: from [192.168.68.115] (unknown [180.150.112.38])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 563C464DF5;
	Mon, 24 Nov 2025 13:05:47 +0800 (AWST)
Message-ID: <9e322334bbb18d559c5f1a73947976218f84f3fc.camel@codeconstruct.com.au>
Subject: Re: [PATCH v3] ARM: dts: aspeed: clemente: add gpio line name to io
 expander
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: kimi.zy.chen@fii-foxconn.com, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel
 Stanley <joel@jms.id.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
	george.kw.lee@fii-foxconn.com
Date: Mon, 24 Nov 2025 15:35:47 +1030
In-Reply-To: <20251120-dts-add-gpio-to-io-expander-v3-1-cb650ac76f85@fii-foxconn.com>
References: 
	<20251120-dts-add-gpio-to-io-expander-v3-1-cb650ac76f85@fii-foxconn.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Thu, 2025-11-20 at 10:41 +0800, Kimi Chen via B4 Relay wrote:
> From: Kimi Chen <kimi.zy.chen@fii-foxconn.com>
>=20
> The chassis power cycle process requires a forced shutdown before
> cutting off the standby power. The SCM CPLD implements a hard shutdown
> host function that is controlled through the IO expander in the
> Clemente platform.
>=20
> This change adds a new GPIO line named "shdn_force_l_cpld" to the
> PCA9555 IO expander at line 10.
>=20

This doesn't line up with my count of where you've inserted it in the
gpio-line-names property? Is there some explanation for that? Are you
referencing pin 10 of the device? If so I feel it would be more helpful
to describe it as "IO0_6" or some such.

Andrew

