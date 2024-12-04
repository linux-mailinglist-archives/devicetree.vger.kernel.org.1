Return-Path: <devicetree+bounces-126968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE699E3D78
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 15:59:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 38842B3E9F4
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 14:19:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 817C31F8AC4;
	Wed,  4 Dec 2024 14:18:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s9kRAenX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59CFF1F759E;
	Wed,  4 Dec 2024 14:18:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733321931; cv=none; b=OrWbS47KWlsVdfkhNZZbuLJDHwgLz9eqPgPfC5X6X5vQjT5sB3Q+4PS7dERQKBXeBQO5pwl6aVL1yaEW1ZtrwF5KvoezYXRnDH51vNOwFF5N3megvAH88ERQ+vu9QpvKpaC9gg79laJXGObORJAkrdcx5CWSkuwdVO+qWpTDtA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733321931; c=relaxed/simple;
	bh=Fs0kG04zp71DgQHcr3MV0SWPjFXHt61BmC4WUOKacWo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GV7R9RZpUQwUdJhjtJn6VGHXtQ1XMXuFrUik6r38I8Rg44/Juv6MQU5JrnJUlwhs5RE/wJbh9ADWpGhRtf/U1SCYgKY+myi5l70Jpjnbls4q3wdRCnPIY+8a4JZqPo73W05EARJ4DsMyCCwjppWxs9ba75+RCPEXOqnoXtdYNUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s9kRAenX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFCABC4CECD;
	Wed,  4 Dec 2024 14:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733321930;
	bh=Fs0kG04zp71DgQHcr3MV0SWPjFXHt61BmC4WUOKacWo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=s9kRAenXpzlwDAcIEs5FRkhITLP8swS9W5xKUHBTxctik2gCJrxIAVtX0d9dGHmaS
	 OyZjQfPkjtiY82YXgQfqVOYUw9zybklhAxXp9nck8ObzkjHHP72RkXdUxzr1TRkelq
	 /yRWxRp95Utsog/K4myPF7vc5mkk7oxiqUczQ9Kj/O/jO15fV48VF/38raU0fEp+z8
	 yQ3fX/XMuGzd4kpC6zRque7Je0CLOS3l4mD7tH05ILbHY6JqZCuzE90rSz1FYCrSij
	 QeOKJ1bH+uR+oyS5xfoFzovVMCY9WH8RJVYdcnlUInMMuu2Lfmu3tQNg0GqoJM5GCC
	 1FrrwzhYU0uyQ==
Date: Wed, 4 Dec 2024 08:18:49 -0600
From: Rob Herring <robh@kernel.org>
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: saravanak@google.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Abaci Robot <abaci@linux.alibaba.com>
Subject: Re: [PATCH -next] of: base: Add missing parameter description to
 of_get_next_child_with_prefix()
Message-ID: <20241204141849.GA169572-robh@kernel.org>
References: <20241129061155.52874-1-yang.lee@linux.alibaba.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241129061155.52874-1-yang.lee@linux.alibaba.com>

On Fri, Nov 29, 2024 at 02:11:55PM +0800, Yang Li wrote:
> The function of_get_next_child_with_prefix() lacked a description for
> the prefix parameter in its documentation. This patch adds the missing
> description to ensure all parameters are properly documented.
> 
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Closes: https://bugzilla.openanolis.cn/show_bug.cgi?id=12178
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> ---
>  drivers/of/base.c | 1 +
>  1 file changed, 1 insertion(+)

Thanks, but already fixed in upstream commit 0d40daa1c136 ("of: base: 
Document prefix argument for of_get_next_child_with_prefix()").

