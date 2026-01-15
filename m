Return-Path: <devicetree+bounces-255777-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A7485D2860E
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 21:21:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B42D3300A36F
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 20:21:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F222A31ED83;
	Thu, 15 Jan 2026 20:21:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jvsGHI66"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CED7FEACD;
	Thu, 15 Jan 2026 20:21:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768508475; cv=none; b=UH5klqxOnZb97nGkGJh0by9aYvTWzlW8q8tygLHIovDUWrP+N6amCfWvKjMxLiVrezqMHPRmhf1CtUVJNenLhq888xQx9qHjB+i50P1xpiNdVAEyLN+uWM91Z/hzmNochoCO/e12zbGr+0KeyBGUykQPLZcLeIrjqyo8mRy9oNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768508475; c=relaxed/simple;
	bh=61MhA5iuhycBMiXYKJv8f3EeRlGr8JVFRfa9NW9FdnU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d6zR/OmoIvG+ovfCvaF6eX5dxxT0H9QXiJhIRkhoj7/v6jtclfu4N+qenQ5NEuauQNSm5Um1yFY/l3srMZFvajbvB2HqphiZv6Ty+rfBRuxciSOcYjNUpcnyNFavm+obzDR8zACTBiFWEAXqmGW/zfJtiFFEDymL/ECYtcF4jaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jvsGHI66; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02CA4C116D0;
	Thu, 15 Jan 2026 20:21:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768508475;
	bh=61MhA5iuhycBMiXYKJv8f3EeRlGr8JVFRfa9NW9FdnU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jvsGHI6600UsS+AEKxzRYHN7iKZKshgpEse071SQuWmNx9H0417gg+nuSSCl6DX9m
	 ThBBEPoBXReUMNt5+E/0MNx8+oje5wr4dX4vVNLXhC44+y+fcwLb6SZxpYLD55XiaU
	 py9Hy1KuJBvjj5UPzVLhMuLp0RD+pM8iGPm42rnorc1qE63EgwKYWtyvJFqZDj+nJ5
	 N5H9XloJQez5uwAUy1dKNx5kVPegd7ZAT+d76wcePkvAL5YXcvhQ2APPdYPJ5qaaNR
	 iI9RQqBtjyUm6A3OKjUyUFPYZWg82ZrKzFOZ1jz673/sE4y/zFDgQJ2CF4/N7PtRq2
	 HKxzib6SxOvqg==
Date: Thu, 15 Jan 2026 14:21:14 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Saravana Kannan <saravanak@kernel.org>
Subject: Re: [PATCH] of: guard pointers to key OF nodes with an #ifdef
Message-ID: <176850847300.1117426.16555405652845405929.robh@kernel.org>
References: <20260115091839.8206-1-bartosz.golaszewski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260115091839.8206-1-bartosz.golaszewski@oss.qualcomm.com>


On Thu, 15 Jan 2026 10:18:39 +0100, Bartosz Golaszewski wrote:
> We declare the pointers to some key OF-nodes unconditionally in
> linux/of.h but only export them with CONFIG_OF=y. If anyone uses them in
> code built without devicetree support enabled, the problem will only come
> to light at link-time. Add an #ifdef guard to catch it at compile-time.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
> ---
>  include/linux/of.h | 2 ++
>  1 file changed, 2 insertions(+)
> 

Applied, thanks!


