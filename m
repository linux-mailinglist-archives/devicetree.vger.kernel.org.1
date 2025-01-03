Return-Path: <devicetree+bounces-135220-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F240A0029C
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 03:08:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 72C42162F78
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 02:08:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F01D51DFD1;
	Fri,  3 Jan 2025 02:08:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=iinet.net.au header.i=@iinet.net.au header.b="ruzA1Nt7"
X-Original-To: devicetree@vger.kernel.org
Received: from omr008.pc5.atmailcloud.com (omr008.pc5.atmailcloud.com [103.150.252.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 514C4440C;
	Fri,  3 Jan 2025 02:08:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.150.252.8
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735870092; cv=none; b=GxNIgWC5/sTsT86OGCiX68iqIeSpdNWF2GNcbttfGnkGniiya9VTrzYsvRBGyGid+OjKz8JjaX2arKG0dBIrOJZOgOQQV1CNtCOKRchJFoSsaT+p2F2bmTgozBJYl9XKdLYipmPq68a7d1Tkcets1vCXCH0VTXNm/eWy54qMWr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735870092; c=relaxed/simple;
	bh=4V2hs8kW5VRbQXe4AtZkDWORAP2OrjTEij0gadQ25Ig=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LYnV4auDkW38EpRrVgE0v3VJQZ1SulrNxInnKIPfCJRfd4GCR3Tx3y2UpXrRXxpkcdIEWNx02w/UbIi+Zx6dx2BgNt7J9KD7OJIPfFHNR8tFaCVS0Ibm5E8Zzrlwsxmm/VVNRhtBCzC/0Roh2phynfGaxgaPEbA0roEyjUConu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iinet.net.au; spf=pass smtp.mailfrom=iinet.net.au; dkim=pass (2048-bit key) header.d=iinet.net.au header.i=@iinet.net.au header.b=ruzA1Nt7; arc=none smtp.client-ip=103.150.252.8
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iinet.net.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=iinet.net.au
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=iinet.net.au; s=202309; h=Content-Type:From:To:Subject:MIME-Version:Date:
	Message-ID; bh=7/6ew5IiiZOsll8icuTJclRE9oVHjHVxIu7OBlXdCZM=; b=ruzA1Nt7ASjGAW
	7qnduTWcjMVQ5xlr/sexsJ/VTLisYgKg1YRoug/IwP/++poZ3FBLjMsu6PhwUy3+vQNzkViM9a24m
	btlE1JFT3qZBURGcLJa1DsUC7u84HZ+FQkpEchJ8EMglBWOVVgBDwSl77/2QwXIMGGC6dp34ttC3G
	abBKkebnbjb1mLuxuUx3J48C9TYiYiMWeat9yo0bfmJyGOxtUH3Tw68Sg9bh9rwcCz6aLj1A5ge+e
	rnY9R9zPQneJqGl2j89uw9MMFGsra/tI2kTpC6sEdM6nu+Mms1LVnJoylCSXCMvu5jPpwlJDq2bll
	oVRH53MBMf7zShfa2Y6Q==;
Received: from cmr-kakadu03.internal.pc5.atmailcloud.com (cmr-kakadu03.internal.pc5.atmailcloud.com [192.168.1.5]) 
	by omr.internal.pc5.atmailcloud.com (Exim/cmr-kakadu03.i-08bfa4c5bdedaf3a1) with ESMTPS
	(envelope-from <gordoste@iinet.net.au>)
	id 1tTX6Y-000000001gR-32UT ;
	Fri, 03 Jan 2025 02:08:02 +0000
Received: from [220.233.184.101] (helo=[192.168.20.101])
	 by CMR-KAKADU03.i-08bfa4c5bdedaf3a1 with esmtpa
	(envelope-from <gordoste@iinet.net.au>)
	id 1tTX6X-000000004BP-22U1;
	Fri, 03 Jan 2025 02:08:01 +0000
Message-ID: <e88314d7-894c-48fd-a16e-5b32b6261bea@iinet.net.au>
Date: Fri, 3 Jan 2025 13:07:57 +1100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] of: dynamic: Avoid reversing sibling order
To: Rob Herring <robh@kernel.org>
Cc: Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20241230120315.2490-1-gordoste@iinet.net.au>
 <CAL_Jsq+4XVq6-i1+96ov7ysuBhWBxvt=oLB8n7mdpAh09wvvwA@mail.gmail.com>
Content-Language: en-US
From: Stephen Gordon <gordoste@iinet.net.au>
In-Reply-To: <CAL_Jsq+4XVq6-i1+96ov7ysuBhWBxvt=oLB8n7mdpAh09wvvwA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Atmail-Id: gordoste@iinet.net.au
X-atmailcloud-spam-action: no action
X-Cm-Analysis: v=2.4 cv=bPMQIu+Z c=1 sm=1 tr=0 ts=67774681 a=HSUqTxjWRdnMbJspRni59w==:117 a=HSUqTxjWRdnMbJspRni59w==:17 a=IkcTkHD0fZMA:10 a=VdSt8ZQiCzkA:10 a=x7bEGLp0ZPQA:10 a=BlpxbU0IJ8i0nV2WB50A:9 a=QEXdDO2ut3YA:10
X-Cm-Envelope: MS4xfBtNfpOAiLC8K2P3WU70TMbxOXqo/k+7+KXDB6vhqqAPywGlhTIpSpbMzCSY/QSYLrMiYo75Relx/DCzE+AI3LWEMF+TtA5D70kIHjF5CnSzTlIH/AIk g1x+3oTVbwHxZmjTU1p+jFqcoX5BGE8ZXwirFKdau37yejNSELzhhIiB32PGgzm8IZ6WEMgeasbJOw==
X-atmailcloud-route: unknown

On 3/01/2025 3:46 am, Rob Herring wrote:

> The order should not be significant. What are the nodes where the order matters?

The devicetree spec certainly doesn't make any guarantees of node order, 
so this is a reasonable question.

The driver in question is using the of_graph_* functions with a tree like:

ports {
	p0: port@0 { reg = <0>; endpoint { }; };
	p1: port@1 { reg = <1>; endpoint { }; };
	p2: port@2 { reg = <2>; endpoint { }; };
};

The driver navigates to p0 using various graph functions, because it 
needs to process that before any other endpoint. It then uses 
of_graph_get_next_port_endpoint to iterate through the remaining 
endpoints. However, when the DT is created by dynamic.c, p0 is last and 
no further endpoints are returned.  If the tree is created by fdt.c or 
pdt.c, everything works fine, because the list of siblings is in the 
order they were specified in the file.

> If the order matters, we create yet another problem with overlays
> because if an overlay adds a child node where does it go WRT existing
> child nodes? There is no way for the overlay to express that.
> 

AFAICS, this is the only example where child nodes are not inserted at 
the end, so a different order is guaranteed when the tree is loaded by 
this code (versus fdt.c/pdt.c).

For example, code using a phandle to access the "first" child of a node 
and then calling of_get_next_child() to attempt to iterate through the 
siblings will work fine - except on trees loaded by dynamic.c.

In the end, it's up to you. If this can't be changed, then we can fairly 
easily work around it. I just thought it was worth letting you know that 
the various tree-building mechanisms behave differently in this regard.

Happy New Year!

Regards
Stephen

