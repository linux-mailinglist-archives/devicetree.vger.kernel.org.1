Return-Path: <devicetree+bounces-47767-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 326EB86E730
	for <lists+devicetree@lfdr.de>; Fri,  1 Mar 2024 18:29:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C99C3281DF7
	for <lists+devicetree@lfdr.de>; Fri,  1 Mar 2024 17:29:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CE2F8825;
	Fri,  1 Mar 2024 17:29:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nlWKVeHW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66CA0848D
	for <devicetree@vger.kernel.org>; Fri,  1 Mar 2024 17:29:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709314151; cv=none; b=LhU7b3fAbvO0PC+miC6ZA1uDg8N5Wt9UvBc6r22uqoK4rk27Pcu20aDpIYAZTs3Icbcs+Hf+spHne6d8W1LmHHyGBZbSjmEXWDxLQS4Mk/AXkagaPN5ovC4mBmJ58Yw6GXoJQbZPph1qWN00LGjitPmQ/XK1JV1XfFBJ+/Lmt+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709314151; c=relaxed/simple;
	bh=dBroICzuIky6ss8WWg6pr7PkdERntM7x2EXIFa1cyrk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=M1aYpLcuu974iueFSZ2m7Erly5a7ZRZxsv1v1rvyoYuSlwZ+GvB30bXp3iqcTeugdeXU+DyryFMaDqyULpjGBalTU5RvNcP/zvMkxzzFPXDR/x+eWL3K+OnY+aTFo/U/5hmsdeJImjT5Jm3vGmHw2LTxauIQGbd55tVe9ree7Mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nlWKVeHW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A810FC433C7;
	Fri,  1 Mar 2024 17:29:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709314149;
	bh=dBroICzuIky6ss8WWg6pr7PkdERntM7x2EXIFa1cyrk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nlWKVeHWRPwC4cvq/RXPXIdxnuzisTPWMUomXKH8CIq4rlrxmSzSHMcsdNw2JE0bN
	 UJ84KQWIufc5jjyftrUpF1ggnIp4ehglTxnKX0SQXFrYKbfJ2G6hbTBqmpPkUxA0CL
	 adj2WdnGY3caHpHs1+NGqJPGL482mMN/QOJO3dV+uZWiTm1Y+EFB+3S6nEMK3ondFS
	 /PeSKvGoUgLkJXcRRz6+kIsFQ0bxreWu/accpZJv2rNZVoCCiVv9d4Q7cMZTHONBjz
	 TXY+DZ1I0HyMYKRCJ31ZQro3ezlDobZvr7nUBP4SIXaszbuwgc2lgGdMgOd+LACOU/
	 BmUoBy+jwfMLg==
Date: Fri, 1 Mar 2024 11:29:07 -0600
From: Rob Herring <robh@kernel.org>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: kernel@pengutronix.de, Frank Rowand <frowand.list@gmail.com>,
	Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH] of/platform: Inform about created platform devices using
 pr_debug()
Message-ID: <170931414536.2438329.2578791758443288308.robh@kernel.org>
References: <20240222153119.2026363-2-u.kleine-koenig@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240222153119.2026363-2-u.kleine-koenig@pengutronix.de>


On Thu, 22 Feb 2024 16:31:20 +0100, Uwe Kleine-König wrote:
> For most nodes with a compatible property a platform device is created.
> For some an amba device is created instead. For the latter
> of_amba_device_create() emits a message at debug level about the node
> the device is created from. Add a similar message to
> of_platform_device_create_pdata() to inform about the whole list of
> created devices.
> 
> This also gives the right context for the following messages that
> inform about created child devices.
> 
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/of/platform.c | 2 ++
>  1 file changed, 2 insertions(+)
> 

Applied, thanks!


