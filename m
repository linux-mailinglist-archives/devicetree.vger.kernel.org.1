Return-Path: <devicetree+bounces-209093-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D5F3B3482E
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 19:05:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B65334E35E2
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 17:05:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA0E03002B6;
	Mon, 25 Aug 2025 17:05:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="AePNfPAi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5032F0C6E
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 17:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756141536; cv=none; b=Yesfi1O4dswVXJuN2vuDeAl0ue0U3pkHYvmPacDAee30ckmuT0UTAh2+cGX0MvN1JZav66VhvBGfLwWXxJQXJ/6PpEWt+STjg8OFN5cLyU1bna1wn/jCe/cIsYKtvytWVfNB2ZaWXaX+g7CNl4kGpcSK7yl5CpCHBgMPxue8Umw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756141536; c=relaxed/simple;
	bh=LRBN+7pVsfRX4HBnwza1vs2Vuv7PT4DxF6o0fSGauMk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hVs5fYAlsWGJ7VOEXwPIYfvkkR4CuSwE9sHP1Hkk/vw/HUhY2wzbe4KCF6QDHgF/BYSPzzZm68rFVGbjgQTjAXs3EALzF4Ryyw/ZXEmmMBBLAsnI9Mv4QtuVmuQwLxCJp1owshHJa0kAZW9I/9joixry9CHd74mGbIjGheMe60s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=AePNfPAi; arc=none smtp.client-ip=209.85.219.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-70d9a65c353so41899756d6.2
        for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 10:05:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1756141534; x=1756746334; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=z6KxvMDzVSOwTyVOOifum1zHj+Q1NMnnZSanrfOQhBQ=;
        b=AePNfPAiZHUrBQkdhVEYcZPjYCX34plUwDXEpYwcQm+IGYN10n5ggcIsJsK1Ct1mtI
         TGb3lEJQu1Sr0ctftFMrxT+jZbmD487PKLnWG9MzSmxiuknk5blGABSQo326Ek244IV4
         3ScUjs2cXw2o3zFXjcUBgeL0tJpxaJyanY2liURl1UXgkjdKMuZvoWDBDNacHHd74W7n
         8HrcP7nJNsov8jfC1Y4l4rfoSOAVwvglYWs+IOatQWdrxZJ85eadjOYtiyACNKg/mVvc
         JKqA3jW5mXIGcIfYbESJHAzGGamzGv92sNOqQXNDcVwdJ3evBdkK124CE0ZDw5bvZJWN
         biFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756141534; x=1756746334;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z6KxvMDzVSOwTyVOOifum1zHj+Q1NMnnZSanrfOQhBQ=;
        b=sDJuBiuXHRnqo+LiKCsa8RLVptD5p4ZCpLuM3PINp4VwPvdMzrM/iNKfXzEB9OPg6e
         MO2w0Q/QBRo5NJ0D0GIf7tURyF7dl0SXm8n7TDcgn+8hvhbjDWxRnvJ92TI2ckPng1oN
         HeBkhr2n0++aPUS2F8zt2lNgxmTEV7BeKyLz/FnG3wJGggdUHqNLySwtKTA1xew7ARV+
         Cc1LiUSQyq44vkSBgp2QPDPFnvIzQWW9qGuzIlJat9w04o679+O+VZb2namxXkPonkyE
         SHwyAPD0v0EaoZKybxdj+nBh4tvT7noBo6TznwgketBjDCBy57rrgb+gcBtZ+DZvgdN0
         OWMA==
X-Forwarded-Encrypted: i=1; AJvYcCWiZwdXAg6+f79nH0r8DssL4aMRs+erdSmo2ICE+KVLTcFKZhv/oW4Shp+4NJwIqr0mbmGwdzbbWz6t@vger.kernel.org
X-Gm-Message-State: AOJu0Ywe0jVBzDKQbD1F+j3kZmk0drbz8zYUhqDtC/y5RE3PyMXxNfb7
	ZiyzJwW5QlvnKBwqONxUGcxWiwfgQDCgZvqcTUnPer7FAihMEtpnPy4AxyRswYCnVngmVIBCnc4
	sRAhq
X-Gm-Gg: ASbGncu7cnbyme+RIRRr+8nCVX5NwtnoXi785sTCnyc5lxurAzLqUfX6c4ZZbi7vcPK
	3Ck/tdg6r5WsQ50mFg5lw8G6LYVbg3n7pBPts1+0TflFNvDYKQ6utLbcTv27kQhnfnO/nudr+Lz
	VNHpKP5s5GJnQrbJ+oi5ONOd/aisqnSbuUNIN4IOOMB75JYW1v0KDaohUpk8404Oy7wRS9wIXEc
	vvYw+F6wmh16/z87AORbqXWGlHxIM+Y9jSSEdzJbUgFabheOt22FTmxK7tMkgaBE0cJc9q7elbV
	JlVp8+/MflZ1BOfzd1ylv1/FMKWUlycxfCw4wQve1T2cPir1hKtwXNLKIWz0+u7uiDIVbjK1Lif
	95ozVm+GMQLkSfI4u/zqkNyd31AzftZLWi+jLy3/acBuq/ShjX7iAQsEfWArjz57C3Ei9
X-Google-Smtp-Source: AGHT+IH8RaHjAylVQJBbbz2fVViy55MQyOlXslCXu2TNEUhwTy4uudrftYMxMziT/A2NjRI6tuUcow==
X-Received: by 2002:a05:6214:2a83:b0:70d:be38:8ee8 with SMTP id 6a1803df08f44-70dbe3890e3mr56021826d6.63.1756141533729;
        Mon, 25 Aug 2025 10:05:33 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-47-55-120-4.dhcp-dynamic.fibreop.ns.bellaliant.net. [47.55.120.4])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70da714727csm48193006d6.13.2025.08.25.10.05.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 10:05:32 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1uqadP-00000008iJN-3bFh;
	Mon, 25 Aug 2025 14:05:31 -0300
Date: Mon, 25 Aug 2025 14:05:31 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	nicolas.dufresne@collabora.com, p.zabel@pengutronix.de,
	mchehab@kernel.org, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com,
	linux-media@vger.kernel.org
Subject: Re: [PATCH v7 4/6] media: verisilicon: AV1: Restore IOMMU context
 before decoding a frame
Message-ID: <20250825170531.GA1899851@ziepe.ca>
References: <20250825153450.150071-1-benjamin.gaignard@collabora.com>
 <20250825153450.150071-5-benjamin.gaignard@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250825153450.150071-5-benjamin.gaignard@collabora.com>

On Mon, Aug 25, 2025 at 05:34:43PM +0200, Benjamin Gaignard wrote:
> diff --git a/drivers/media/platform/verisilicon/hantro.h b/drivers/media/platform/verisilicon/hantro.h
> index 81328c63b796..a28a181013b9 100644
> --- a/drivers/media/platform/verisilicon/hantro.h
> +++ b/drivers/media/platform/verisilicon/hantro.h
> @@ -12,6 +12,9 @@
>  #ifndef HANTRO_H_
>  #define HANTRO_H_
>  
> +#include <linux/dma-map-ops.h>
> +#include <linux/iommu.h>
> +#include <linux/iommu-dma.h>

This is an internal header it should not be included in drivers.

> +static void rockchip_vpu981_av1_restore_iommu(struct hantro_ctx *ctx)
> +{
> +	if (ctx->iommu_domain) {
> +		iommu_attach_device(ctx->iommu_domain, ctx->dev->v4l2_dev.dev);
> +		iommu_detach_device(ctx->iommu_domain, ctx->dev->v4l2_dev.dev);
> +	}
> +}

What is this supposed to do? Put it back to the default domain? Who
changed it away from the default domain?

Did some other driver change the attached domain (if so that's wild
and wrong)? The commit message hints at that but it should be
explained alot more.

This just seems wrong and goofy. Driver shouldn't be changing their
iommu domains if they are using the default domain at all. We now have
APIs to allow you to allocate wide chunks of IOVA space and manage
them directly. Maybe these 'multiple stream's should be doing that
instead of mucking with iommu domains?

Jason

