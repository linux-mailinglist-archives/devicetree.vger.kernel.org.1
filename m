Return-Path: <devicetree+bounces-251142-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C71CEF5A3
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 22:36:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9C3C23014A36
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 21:36:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8BEE28488F;
	Fri,  2 Jan 2026 21:36:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UUYeNbfs"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F3091EEA49;
	Fri,  2 Jan 2026 21:36:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767389800; cv=none; b=NAlhKYMK6pRj7UeUf6ISVbx8CC9fDhFm6rJNRHlgjQ3sKR1pG1FyUWosqKVCEl3sSNt+wItWLxumPKhOp/4gJLLuCDx8qx6F+TdhUwYCBUZUITD9eo8vuMOchQ7GQqEl+SmhWtS/34ImDRb5Ixl/9GuMqqLlmradZShn6HwUVE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767389800; c=relaxed/simple;
	bh=yW6oXayh0o+HbSbuvsFt+MRv00gewhHUHogbhkNbV08=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=J7MdDjkA9xFHBv3GJMxu84J8ti4PR37lPyxn2TrlETLTCO7ygSXAKLS7HXa2TAb1Mes3CiqlnZsjqxLAb0uoDZb25x1904eaqQEFBkafeA7KFbs01kRjV1rt4DqVW9tjQIm1bKhR496X/O2xFZLH6YbctwTvw5OD3gjdlbr44rI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUYeNbfs; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4A6EC116B1;
	Fri,  2 Jan 2026 21:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767389799;
	bh=yW6oXayh0o+HbSbuvsFt+MRv00gewhHUHogbhkNbV08=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UUYeNbfsPwlNtvTHrnooNyD/eiwS/m+wkML3aedXBnlVaCK1OlkB845W0qSlPmcLu
	 P1s1bAXYHkj2eYX1cbgJhqBFJAjDLkGxBYdYWOiuNjlTzm+lpF2CDE9CjU1TMApdUf
	 lO8L0PfXldoNvftLIeQ2d/4HV/n0L8E54qLWjpEF0bYisrRgQ+e0+1K1+H8LsLJkt0
	 blWiEI9cEUVsaMmMyAuzAKlpHDT9OnpPfc4w2WoKHV0hNBBX5nVi7Rd97l+t7hqjWt
	 lHg3exXmKCt20R3nj/B1urwZ4ZvKYypL3asDNokeoupVXXxPUU5slzyGi3ezb00B6u
	 SQu+7BCycK9mQ==
Date: Fri, 2 Jan 2026 15:36:38 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Zilin Guan <zilin@seu.edu.cn>
Cc: Jianhao Xu <jianhao.xu@seu.edu.cn>, saravanak@google.com,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] of: unittest: Fix memory leak in unittest_data_add()
Message-ID: <176738979758.226449.11539290980243555444.robh@kernel.org>
References: <20251231114915.234638-1-zilin@seu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251231114915.234638-1-zilin@seu.edu.cn>


On Wed, 31 Dec 2025 11:49:15 +0000, Zilin Guan wrote:
> In unittest_data_add(), if of_resolve_phandles() fails, the allocated
> unittest_data is not freed, leading to a memory leak.
> 
> Fix this by using scope-based cleanup helper __free(kfree) for automatic
> resource cleanup. This ensures unittest_data is automatically freed when
> it goes out of scope in error paths.
> 
> For the success path, use retain_and_null_ptr() to transfer ownership
> of the memory to the device tree and prevent double freeing.
> 
> Fixes: 2eb46da2a760 ("of/selftest: Use the resolver to fixup phandles")
> Suggested-by: Rob Herring <robh@kernel.org>
> Co-developed-by: Jianhao Xu <jianhao.xu@seu.edu.cn>
> Signed-off-by: Jianhao Xu <jianhao.xu@seu.edu.cn>
> Signed-off-by: Zilin Guan <zilin@seu.edu.cn>
> ---
> Changes in v2:
> - using scope-based cleanup helper __free(kfree) for automatic resource cleanup.
> 
>  drivers/of/unittest.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 

Applied, thanks!


