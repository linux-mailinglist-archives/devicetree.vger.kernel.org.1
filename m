Return-Path: <devicetree+bounces-232005-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 386AFC13ABF
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 10:03:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2D290501D32
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 08:57:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A8C02D7D42;
	Tue, 28 Oct 2025 08:57:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TBO6I8p8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0684C2D7387
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 08:57:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761641875; cv=none; b=Upz4eelcgqvr5k1vx3i/celiKCvIl982xqwu8nhdmn113g76osUCP+EavrTuFbEv9r9Pzpz4lx1dAx1cd//D/h3H9WAMH/pyBpoNL6Ts+VZMEde3dG7JZMRdNeV7z6+BrbdZTUHGoLIg2JKgDDQqEqL3BS4FyzOXspiwDJaTV+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761641875; c=relaxed/simple;
	bh=Po/OwM9V+OyVxIQbYkgr3J1I7800Wn9hWVECYoUXxiE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tGbM+F/Wxhe47K/aVJHbEDalceNCntAPvYLgJBcOjLv8f1B31zPRICXmhIeV0gochLLpe9W9u0XIdNQGxLH22ZgezoPouyfKHlzP+UkJNdCJeLeWjvcMYbdG+ZxIC+1EDszgh1YPA9yjlRN1//MD9awfZehH2HYvCE+QGV8+ENk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TBO6I8p8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 316D5C4CEE7;
	Tue, 28 Oct 2025 08:57:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761641874;
	bh=Po/OwM9V+OyVxIQbYkgr3J1I7800Wn9hWVECYoUXxiE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TBO6I8p8d3zkx25cynfoklgHh56/lM2llBbcIjHissGO95JJU6PQ5ZICXVi6ek0W+
	 Dl4ySXYkcWDIBDjeIdTed3TWq+ijM9P4NdhXX1d3vQEYJxyuTU9VfPQnXj2P9RYi5f
	 j/OZCIeUDCIoX6zzoBgOh9iTFH0l37OcOLxwsH488MJWcuD9w65PtDSkpGni07IkPg
	 TdjxQWF7nmvmIhE86Pr/n1xpg2bPfppdihqY9afqrPNMxZKFA9Vqj/cKsqUHu94oj2
	 HyHCKnlNTCI6Akp5+8MD2tuOTGijlA5GGTFfcs7qSn9pseqbHD2pPK1Adh02T73FqG
	 hSbwa7uMgQyaQ==
Date: Tue, 28 Oct 2025 09:57:52 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, jonas@kwiboo.se, dsimic@manjaro.org, amadeus@jmu.edu.cn, 
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 4/5] dt-bindings: arm: rockchip: Reorder the Radxa board
 entries
Message-ID: <20251028-cunning-furry-slug-4fd3dc@kuoka>
References: <20251027122641.39396-1-naoki@radxa.com>
 <20251027122641.39396-5-naoki@radxa.com>
 <67e7badd-4b38-4f93-872b-e51a43281d3b@kernel.org>
 <6B986FE9E161F74F+f2826946-a3e9-4618-b5c8-6e29f9f6b83c@radxa.com>
 <1fc497ee-3363-49c9-93eb-20acd4373df9@kernel.org>
 <A39F9BCC6572BA03+67736ed4-86a0-4a78-98af-b2f39aeb785e@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <A39F9BCC6572BA03+67736ed4-86a0-4a78-98af-b2f39aeb785e@radxa.com>

On Tue, Oct 28, 2025 at 04:29:41PM +0900, FUKAUMI Naoki wrote:
> Hi Krzysztof,
> 
> On 10/28/25 16:26, Krzysztof Kozlowski wrote:
> > On 27/10/2025 23:30, FUKAUMI Naoki wrote:
> > > Hi Krzysztof,
> > > 
> > > On 10/28/25 04:08, Krzysztof Kozlowski wrote:
> > > > On 27/10/2025 13:26, FUKAUMI Naoki wrote:
> > > > > Reorder the Radxa board entries alphanumerically, with the following
> > > > > exceptions:
> > > > 
> > > > 
> > > > Why? You must explain that in the commit. What sorting is being used by
> > > > this file? Why do you think your re-order matches that sorting rule?
> > > 
> > > I understand there is no rule, only your preference. Thanks.
> > 
> > 
> > Really there is no? Are you sure?
> 
> Could you please tell me what sort of sorting is being used for this file?

I don't know. I am asking you, because if you re-sort something you
clearly must have know the sorting rule. Otherwise without knowing what
is current sorting rule, how can you be sure that you sort it correctly
instead of just making a mess more messy?

Best regards,
Krzysztof


