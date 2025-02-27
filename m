Return-Path: <devicetree+bounces-152197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 88309A484AE
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 17:21:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 296271890C54
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 16:15:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 147C91A9B2A;
	Thu, 27 Feb 2025 16:08:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YyIFrR4G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7707F1A8F89
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 16:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740672516; cv=none; b=k3vEAcSoxkyN+x0EIrBvgDpGTdIE6lH2UXxZwEB80p0a8LYRyZo6KfYGBQe+noxf1KlUS5EbP67W19nTKyZuL36LKwLtzxUb0TxHkztiaJe899E8f4n0vNBr8y7kQuWDt8LdkRMZU5OLlzYiIk1Yi52gqjYmqSaaFXbkK/OEAvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740672516; c=relaxed/simple;
	bh=XM6Brp88bVea510+9dHCm/kJImSPWYA2w1vpsAIwc9g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BzYKZOxewFZ3sCqFguYTeCoAdAewwAMejNLXZCzWv7wnzsN5vCsAYvmVZGMgUeQC9DNMNou+k0UgqvcVn588H1naQ5idWYLggsKgDy0J62eY/R1XXjTWfwzTlYnv44YNAjItb3pcw6L0TGIXTn7bdxUYjU7EyImxL5HdgpDrQWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YyIFrR4G; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-548409cd2a8so1116366e87.3
        for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 08:08:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740672512; x=1741277312; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8MSynCSxU/EJe8V1Ql1pW3EuovTtqAL4RYWUe0Gkt+w=;
        b=YyIFrR4GUEVcN7kBkQOfFG8Xj6Iy5wTbDxXgl3d6+Pqq6dIaKK7vDyBqvEV2mcCoUP
         vxeMI5vKVC0iDVjuF15j6FywxpstE0D0ry25XFRETIq0jF9IW9UaV9RaWUTbpZQP7tkX
         xCw1BbRMdvZaHLWIqcEIvBqB/EoFDKxIVObT3U7aIbfR9JUQOiohWlHMoCPCe2qy5veQ
         bQMmJID78TOXDE2kWritIudRAJLcPxhYXxVnUuhaUfeieV4AsTCx/6Jd5yLF6Km+MNgt
         bFQTHzuipLCjNcGxivdgIWwXqcrS1xaMbeLfKyGWKhF2n+ewy21x0H1Wka4chzMfGjre
         w7SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740672512; x=1741277312;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8MSynCSxU/EJe8V1Ql1pW3EuovTtqAL4RYWUe0Gkt+w=;
        b=bbaHKB33J2FYnJy5pWKxSRCbYR+uOwwj1rWVV6xZBGF0+uAbXuxjsa8er67w1Fnp1z
         5iovyHDxr0MP5XYRxo6g/6+/V3oZmWGM3jAd22gQn0oUdMjy+U+MJBTKAOa6fdAR07pj
         pZSx80A4MELc8j0cXtos+8E9HMmUXarG4Gas0XColBaUzH9R8mrPhtjmkM89YZLy+RKD
         uncdsLyhpM/Xmmi9ExAXyoH0i640WvGw9rvp95VtA7ZJZycOjK5XwekUYOFrJANHsyNS
         hIh1yFepv5ZrohdbgZ56dwtuE9sg+OD7H/3Lcr5bOBaBesPNkhfIt1MlUBfoQUndWVxZ
         +0jw==
X-Forwarded-Encrypted: i=1; AJvYcCVnM6ab9WrREj8NuP0sLo4Z1g6Dm3UTkJZkGp1OFPNt0ikfLvy5QMIiwz4ZHVcc1ye5JHv++Zj+WfKw@vger.kernel.org
X-Gm-Message-State: AOJu0Ywf2vCjh5ldds05JNKY1NdhuaUJaWSuKclkz87xUcsQSXwqJ1Mx
	rUO4iW3JGl2N8UdhmOAKvcf0zGZepMKQzYYFVe+bGXNlDxjJcLpG1FLOHM+BiVI=
X-Gm-Gg: ASbGncsBua49g8+7NIhGyI2cDWYuaQEYArQYvZrusNGFcV1knuuonPp+wir6lPC587Q
	Wxb6WBfxS+FDyUNg3SXH5vvvdU8jqBL2TvZizYGPaCszNAuyWkytU9gK6qFou22DoflpmlzRWv7
	GlgNzw0t19FcqScaTtawex/dCcQHOg3u6TZCApKdyUIqqNNl1wP69ecYOk1HU6It9cPeoWwUtYL
	BT72y5J+URBwQRQ/SSl80O2vx1eu9oGyGOZK9w/v91QJm8KHa5sUDnwKqWkrQYf8txfrBp307v2
	szvW9r728ySbbtNoKffxLZqJJo8m5rEh6I3lmgaq1ImF0uUJ6+WsY6jXMDT4EPIxV1xUSw/BOKG
	T8yYoVg==
X-Google-Smtp-Source: AGHT+IEQzmuoS9H/Yzq87aXTU0VRLHo7mHqgbgUV7114Toj+TL1SlVVpSt2e8g8LP4hRC73xBqYbAw==
X-Received: by 2002:a05:6512:ba5:b0:545:e7f:cf33 with SMTP id 2adb3069b0e04-548510ddc55mr6665448e87.28.1740672512284;
        Thu, 27 Feb 2025 08:08:32 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549443b1292sm197427e87.108.2025.02.27.08.08.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2025 08:08:31 -0800 (PST)
Date: Thu, 27 Feb 2025 18:08:28 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Odelu Kukatla <quic_okukatla@quicinc.com>, Jeff Johnson <jeff.johnson@oss.qualcomm.com>, 
	Mike Tipton <mdtipton@quicinc.com>, Jagadeesh Kona <quic_jkona@quicinc.com>, 
	Sibi Sankar <quic_sibis@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V9 2/7] interconnect: core: Add dynamic id allocation
 support
Message-ID: <bv73i444oh4oakgqet7brkdpmusvpf4x5nbi7kgfvykts43roj@jnc5ps2sazeb>
References: <20250227155213.404-1-quic_rlaggysh@quicinc.com>
 <20250227155213.404-3-quic_rlaggysh@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250227155213.404-3-quic_rlaggysh@quicinc.com>

On Thu, Feb 27, 2025 at 03:52:08PM +0000, Raviteja Laggyshetty wrote:
> The current interconnect framework relies on static IDs for node
> creation and registration, which limits topologies with multiple
> instances of the same interconnect provider. To address this, update
> the interconnect framework APIs icc_node_create() and icc_link_create()
> APIs to dynamically allocate IDs for interconnect nodes during creation.
> This change removes the dependency on static IDs, allowing multiple
> instances of the same hardware, such as EPSS L3.
> 
> Signed-off-by: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
> ---
>  drivers/interconnect/core.c  | 13 ++++++++++++-
>  include/linux/interconnect.h |  3 +++
>  2 files changed, 15 insertions(+), 1 deletion(-)
> 



> diff --git a/include/linux/interconnect.h b/include/linux/interconnect.h
> index 97ac253df62c..8b0f892aaed2 100644
> --- a/include/linux/interconnect.h
> +++ b/include/linux/interconnect.h
> @@ -20,6 +20,9 @@
>  #define Mbps_to_icc(x)	((x) * 1000 / 8)
>  #define Gbps_to_icc(x)	((x) * 1000 * 1000 / 8)
>  
> +/* macro to indicate dynamic id allocation */
> +#define ALLOC_DYN_ID	-1

Nit: ICC_ALLOC_DYN_ID

With that fixed,

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> +
>  struct icc_path;
>  struct device;
>  
> -- 
> 2.43.0
> 

-- 
With best wishes
Dmitry

