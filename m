Return-Path: <devicetree+bounces-250612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 62249CEA6B9
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 19:09:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4939C3017868
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 18:09:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34B7132E136;
	Tue, 30 Dec 2025 18:09:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DiJG+jKA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75188322B94;
	Tue, 30 Dec 2025 18:09:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767118187; cv=none; b=D1RYuP64dhKF0C3TJJnkV/8RgZEZeLI72ElN12Q/gBK7NNSpDnHAnIsNBefvAdSYAEPoTWYh3Z6eFqVvzk+Hj9NHlpTU/z6o17hZDkn4MRYNNZThEmVhsT615U/86oY2CvSuhxHANS5iC99ESzlnYiWHvxef3k9bq8/Q3XaykgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767118187; c=relaxed/simple;
	bh=Rq4gzWYvKaCzBowIalNSM90v/P7ZIsGWqKW5cOVsHjw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iRVMUkV9aF5evJE3Vk7N9ki6B2KDmzXdbK80KqImUZJ5QRW0LYAK/lbpExjPhaz/yGo1MX3jdJRpnH0SSmbOR5i1myYOraSnzj5Su4316ab6mYTRlz4SejHXQemreNtsIbDnBFJGJDDMWfS3pD4numwXGqL+z03objD3N84cTD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DiJG+jKA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 783E5C4CEFB;
	Tue, 30 Dec 2025 18:09:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767118186;
	bh=Rq4gzWYvKaCzBowIalNSM90v/P7ZIsGWqKW5cOVsHjw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DiJG+jKA9KVY169KjSnhUpY2QDhQQg0p1V4BvlI48kCYgvZzv1jWu+4lTjn9N+eQA
	 m6HjWb27khMmbNU8tAfjjjao4RNirV34VdSNCY36VkCiAFtM7rbIf/MqU62M+cwUXf
	 deuTK+90aIPvf/rfjKJg2o4ZzZHgRs9ff+osSp0D4tDVBdqmrXTU7T4hqeZuVd4Ngf
	 CygiNzcITw+WeSZSAyoMxJP4KqI5CGIU6Kk5vDLUfRLZzt2ExgGwknpOwpNV9Y8SUB
	 QNhg976PBMFxzi59nDS8pwqfgGb3t16S3VJt268Hxj5pLigk3snoMRHaqmht4c5qcc
	 lhYT3DtOi7OXw==
Date: Tue, 30 Dec 2025 12:09:45 -0600
From: Rob Herring <robh@kernel.org>
To: Zilin Guan <zilin@seu.edu.cn>
Cc: saravanak@google.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Jianhao Xu <jianhao.xu@seu.edu.cn>
Subject: Re: [PATCH] of: unittest: Fix memory leak in unittest_data_add()
Message-ID: <20251230180945.GA885892-robh@kernel.org>
References: <20251230065859.1046756-1-zilin@seu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251230065859.1046756-1-zilin@seu.edu.cn>

On Tue, Dec 30, 2025 at 06:58:59AM +0000, Zilin Guan wrote:
> In unittest_data_add(), if of_resolve_phandles() fails, the allocated
> unittest_data is not freed, leading to a memory leak.
> 
> Fix this by freeing unittest_data in the error handling path before
> returning.

Please change the function to use cleanup.h instead so this bug can't 
happen again.

> 
> Fixes: 2eb46da2a760 ("of/selftest: Use the resolver to fixup phandles")
> Co-developed-by: Jianhao Xu <jianhao.xu@seu.edu.cn>
> Signed-off-by: Jianhao Xu <jianhao.xu@seu.edu.cn>
> Signed-off-by: Zilin Guan <zilin@seu.edu.cn>
> ---
>  drivers/of/unittest.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/of/unittest.c b/drivers/of/unittest.c
> index 388e9ec2cccf..8622a8ac1814 100644
> --- a/drivers/of/unittest.c
> +++ b/drivers/of/unittest.c
> @@ -2031,6 +2031,7 @@ static int __init unittest_data_add(void)
>  	rc = of_resolve_phandles(unittest_data_node);
>  	if (rc) {
>  		pr_err("%s: Failed to resolve phandles (rc=%i)\n", __func__, rc);
> +		kfree(unittest_data);
>  		rc = -EINVAL;
>  		goto unlock;
>  	}
> -- 
> 2.34.1
> 

