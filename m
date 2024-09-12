Return-Path: <devicetree+bounces-102475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 970CA9772AF
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 22:25:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AED3028216B
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 20:25:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 639EF19FA86;
	Thu, 12 Sep 2024 20:25:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aanmxpyt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FEB8A5F
	for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 20:25:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726172750; cv=none; b=igSXcW1G+UnVKHUmwYHW/0vtiJQaU/KonluAKnDUUrIf4P56v/3o2H7bvyskiAiZdOIi2uzen0T87LVcuSDnLS2HFyc44sOmlbgX0At+qhckWa6Q4HtQFBKPDFU1Ab26EzmBucf/DCDcvg+1yB++uPDRJdR9Ft8VGa6gpBZ2ymM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726172750; c=relaxed/simple;
	bh=pRgZrtPJQowqjGdrrEok+KdaSZGZDSgABCUgoJne+vs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LQiw5SX1L9dxHHfOsqT7Is9f3GMa88n3ZLWcfiKfcejTcj2QwjXaxr+YvyBCMNSfbIvCddYoPDcHra1fMmm48eTWxomZdZdIjx+E6ZrdNOcc+YxtaQlRRVT0SbK7DwtrpAkx5VCuRFh5/DpwBI5fw3jJRLBBGmkvZZ3czC2219U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aanmxpyt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1D5DC4CEC3;
	Thu, 12 Sep 2024 20:25:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726172750;
	bh=pRgZrtPJQowqjGdrrEok+KdaSZGZDSgABCUgoJne+vs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AanmxpyttkO4BGYHnbFNkTyWRe1GtCsb6rjdTeAH0HKYO1lbdYI6P8NAC8kCK7xDV
	 Z/jVmvobiOST9LRpR1krblkfmPDgS+PT+c3b653/lLt9UAhSvoigaqARjuYnoQrY6g
	 4kDXYwUi/WyTcSTUNfWR3iWbMLxMap3t0yoPMiUttc6HpVac2glAEalJinEKUp5jMn
	 b/3/8TnoG+QTkglqOI0/vqx+/CbDLR1c3UQy4hFpILbVyIr5DJ5v2gI0iEWkiTrf83
	 xKtPesE7ZxUKdtaDFHcE4ZVC5GU4lnk7HaQr1nGOMDqfzkNZRx2Ax6sPVF6JTUH8+S
	 7YPikZ5KBjgWg==
Date: Thu, 12 Sep 2024 15:25:49 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Zhang Zekun <zhangzekun11@huawei.com>
Cc: saravanak@google.com, devicetree@vger.kernel.org
Subject: Re: [PATCH 3/3] of: property: Do some clean up with use of __free()
Message-ID: <172617274698.730898.3265664579804776904.robh@kernel.org>
References: <20240830020626.115933-1-zhangzekun11@huawei.com>
 <20240830020626.115933-4-zhangzekun11@huawei.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240830020626.115933-4-zhangzekun11@huawei.com>


On Fri, 30 Aug 2024 10:06:26 +0800, Zhang Zekun wrote:
> __free() provides a scoped of_node_put() functionality to put the
> device_node automatically, and we don't need to call of_node_put()
> directly. Let's simplify the code a bit with the use of __free().
> 
> Signed-off-by: Zhang Zekun <zhangzekun11@huawei.com>
> ---
>  drivers/of/property.c | 28 ++++++++--------------------
>  1 file changed, 8 insertions(+), 20 deletions(-)
> 

Applied, thanks!


