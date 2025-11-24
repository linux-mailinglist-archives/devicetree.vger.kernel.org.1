Return-Path: <devicetree+bounces-241473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C25C7EB9B
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 01:54:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 47EB93A3C69
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 00:54:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 858F33596B;
	Mon, 24 Nov 2025 00:54:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=163.com header.i=@163.com header.b="ccQtoVBJ"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8FDDDAB;
	Mon, 24 Nov 2025 00:54:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763945692; cv=none; b=S+M2xwD9Z1URKoZenXDOyzO5EQumZcmirSsIypxQGxzCI1E2qwTOmtxL17kO+dpd4MXJXGL0pTPjGHRWbuemDpX1+7zBxI4byC8mCHEpxWMcK8oLm8d0tUmD7b/+Qbub4fkPCaClKAeMyle4F3v2WopDUFqak6QpiyZ01S9qkiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763945692; c=relaxed/simple;
	bh=+tjng9tWNpJXzRw6RmT3s8rul1Av3/jTSsqhuCeS02g=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:Content-Type:
	 MIME-Version:Message-ID; b=GLur0sGDnkHZpAlqWn0pTfO7gNU7FpJIeNwwYz73cxz8RWsLcSYTpE2Ibz2yUrdL/Q1wKnYLF1XpbuQlOi8YU7IILUK27rH/fValVAWA4D0SDr7vDjr8uv1OyOhYd8/eMeIHkipkUQe3w+zo0Sf1sxyr7uLzq062LUeWYNgaFes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=fail (1024-bit key) header.d=163.com header.i=@163.com header.b=ccQtoVBJ reason="signature verification failed"; arc=none smtp.client-ip=220.197.31.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:To:Subject:Content-Type:MIME-Version:
	Message-ID; bh=1ojNoYcSRgOUItS36fhXAjSvyt7+UNGNmIcHggvRc3w=; b=c
	cQtoVBJuCsQ92yBqd5UX1B0lyf0g+pDfzW/dD/Yi8EJYfFOB2sa+bwy/hF/qTVrD
	2KjU10veZsWvO1H6xjD7U1n1yLoVTjK8aIPPp+LNcLYvAPU9Vv4DJGx/Vy7RmvYn
	wu0w+y6PxYjH2AfoV6eM5nmem3hCL627qDvjV4HTdY=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-144 (Coremail) ; Mon, 24 Nov 2025 08:52:47 +0800
 (CST)
Date: Mon, 24 Nov 2025 08:52:47 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Heiko Stuebner" <heiko@sntech.de>
Cc: dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org,
	andrzej.hajda@intel.com, mripard@kernel.org,
	jernej.skrabec@gmail.com, jonas@kwiboo.se,
	Laurent.pinchart@ideasonboard.com, maarten.lankhorst@linux.intel.com,
	rfoss@kernel.org, simona@ffwll.ch, tzimmermann@suse.de,
	knaerzche@gmail.com, devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	"Andy Yan" <andy.yan@rock-chips.com>, m.wilczynski@samsung.com
Subject: Re:Re: [PATCH v8 1/2] drm/rockchip: inno-hdmi: Convert to drm
 bridge
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2023.4-cmXT build
 20250723(a044bf12) Copyright (c) 2002-2025 www.mailtech.cn 163com
In-Reply-To: <8913609.MhkbZ0Pkbq@phil>
References: <20251016083843.76675-1-andyshrk@163.com>
 <20251016083843.76675-2-andyshrk@163.com> <8913609.MhkbZ0Pkbq@phil>
X-CM-CTRLMSGS: ARNM03BsdXM9MTc2Mzk0NTU2Nzc2MF9mMWFkMThkZGU5MGVhNWVjOWMxY2Q4N
 TIyODc1ODVlYw==
X-NTES-SC: AL_Qu2dAfWfuk0t4SecYOkfmUgWjuw/WsG1v/Ul1YBSP556jC3r1gsLcEV5OV7n7/K1KhiBjx+mVR1uxOl/e7Rgbog6ztD4kGMVyG9OqD90thYGFw==
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=UTF-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <7cc43fc7.843.19ab3595609.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID:kCgvCgDnUTxfrCNpAWAoAA--.919W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbCxR9lw2kjrF+srwAA3G
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==

CgpwaW5nLi4uLgoKQXQgMjAyNS0xMC0yMCAyMDo0NTozNCwgIkhlaWtvIFN0dWVibmVyIiA8aGVp
a29Ac250ZWNoLmRlPiB3cm90ZToKPkFtIERvbm5lcnN0YWcsIDE2LiBPa3RvYmVyIDIwMjUsIDEw
OjM4OjMxIE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgQW5keSBZYW46Cj4+
IEZyb206IEFuZHkgWWFuIDxhbmR5LnlhbkByb2NrLWNoaXBzLmNvbT4KPj4gCj4+IENvbnZlcnQg
aXQgdG8gZHJtIGJyaWRnZSBkcml2ZXIsIGl0IHdpbGwgYmUgY29udmVuaWVudCBmb3IgdXMgdG8K
Pj4gbWlncmF0ZSB0aGUgY29ubmVjdG9yIHBhcnQgdG8gdGhlIGRpc3BsYXkgZHJpdmVyIGxhdGVy
Lgo+PiAKPj4gU2lnbmVkLW9mZi1ieTogQW5keSBZYW4gPGFuZHkueWFuQHJvY2stY2hpcHMuY29t
Pgo+Cj5SZXZpZXdlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KPgo+QnV0
IG9mIGNvdXJzZSBJIHdvdWxkIGJlIHJlYWxseSBoYXBweSBpZiBzb21lb25lIHdpdGggbW9yZSBl
eHBlcmllbmNlCj5vbiBnZW5lcmFsIGJyaWRnZXMgY291bGQgYWxzbyB0YWtlIGEgbG9vay4KPgo+
Cj5IZWlrbwo+Cj4KPgo+X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+TGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwo+aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=

