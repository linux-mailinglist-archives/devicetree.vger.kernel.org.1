Return-Path: <devicetree+bounces-244496-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D5584CA578A
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 22:28:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EB9DA307FC2D
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 21:26:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05AC92FF16D;
	Thu,  4 Dec 2025 21:26:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XifWmMFg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D191729ACC6;
	Thu,  4 Dec 2025 21:26:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764883583; cv=none; b=QbeUWMi5bkxS0P96l/lU27EIfcRCip1xmy8Sain+I4bkjUUjwepM26GkJm9J8+M8cYatjF+3m3R5UEqB77jlLPoLG9VqgQy6lrWQfwFo10/ylr76ZITjOzsUCbI5nwS99Eqf7PmOYksLzpaB1Z6dEVUoF0b2caxTMqNNIcoyt2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764883583; c=relaxed/simple;
	bh=ZusWwaEIlm7+T0smgbl+md/eVqDNZ5CJDe7YOlFXCk4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=n2zxpDZtFBVGv9XfhLMh7geal8KkLDRi/I3OiDa6JQtPWRcPg2fSNmOjBN8PE/glKugEIbkBG7xBhCA23qtoF3w8RHhlia6iKTrYeCHIrHzIJxMxStdsKagP59+wOFUsPJJEFCYqbTTOADfpq3OARFzL49ez7EGfmZY576myyUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XifWmMFg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B83C4C4CEFB;
	Thu,  4 Dec 2025 21:26:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764883581;
	bh=ZusWwaEIlm7+T0smgbl+md/eVqDNZ5CJDe7YOlFXCk4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XifWmMFggKBCw145pNTu8D8dPVVM8ZggmfKHpSwh9zHpwLSIM9dv61rDK7tMJ1gJm
	 IQ+CsUqdxp7J6x+0KlqkydgQStuY++OTmJf3kOvNtXjBMMRr63HMTlIxgeq4mYo4Qr
	 LBG/qZfMGY5rrF7MJenDpvs/3rke4PR9PFGn7Kppi71zYgnOSOOUY93gacsmnfUIbk
	 Mzxcrcd3F3QoVG3pyCsNTqsA7JpUYjhxft6CfihN4bTaiRi6ZmG7YDvaX1NA7WuA9u
	 LT6PP7VKW6x4eoPZLddHzSeu4B7GdpWOAeLO4XMQ9ffFq39/rnbTyx9M7qwAOutUtx
	 X7vpLwoLH7Elw==
Date: Thu, 4 Dec 2025 15:26:17 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Renjun Wang <renjunw0@foxmail.com>
Cc: maarten.lankhorst@linux.intel.com, sam@ravnborg.org,
	neil.armstrong@linaro.org, tzimmermann@suse.de,
	devicetree@vger.kernel.org, simona@ffwll.ch,
	thierry.reding@gmail.com, jessica.zhang@oss.qualcomm.com,
	linux-kernel@vger.kernel.org, airlied@gmail.com, mripard@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	dri-devel@lists.freedesktop.org
Subject: Re: [PATCH RESEND 1/2] dt-bindings: display: simple: Add HannStar
 HSD156JUW2
Message-ID: <176488357702.2194025.7613189083646464616.robh@kernel.org>
References: <tencent_D449AE627267BDD68BA41AD80EB3DFB5D407@qq.com>
 <tencent_8B5693A42B580AB3A5359849CCE23E67B407@qq.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <tencent_8B5693A42B580AB3A5359849CCE23E67B407@qq.com>


On Mon, 01 Dec 2025 22:21:53 +0800, Renjun Wang wrote:
> Add the HannStar HSD156JUW2 15.6" FHD (1920x1080) TFT LCD panel to
> the panel-simple compatible list.
> 
> Signed-off-by: Renjun Wang <renjunw0@foxmail.com>
> ---
>  .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


