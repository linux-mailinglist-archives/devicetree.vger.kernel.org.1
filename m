Return-Path: <devicetree+bounces-7337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B68537C01A6
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 18:31:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6FB00281CB4
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 16:31:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D868387;
	Tue, 10 Oct 2023 16:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="JOPnQdCu"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4520A2FE07
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 16:31:52 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FEA094
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 09:31:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696955509;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Cf2g84KWZibabOg5Y0fsYiGgR+PAP2xFlziRJuiWttw=;
	b=JOPnQdCuIYdkaALwwMAb7QZywL5ENKol2/BNamlSvYSEzjkGCsGn/+Dg4I0f1pnXxkceYP
	unkBMtIfdSUN4vzBoeFpqUFdfpq8AvfFjfiKQaxMFoC4I5RR3KVOf6+GSHRUdwmA7ja8N9
	7fYKy5MVYG5ZgtYocUYE69CCUnUEdig=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-383-RQdRJZaxNkWvuuUBHzygjg-1; Tue, 10 Oct 2023 12:31:48 -0400
X-MC-Unique: RQdRJZaxNkWvuuUBHzygjg-1
Received: by mail-ej1-f69.google.com with SMTP id a640c23a62f3a-9b822f5c156so473461566b.3
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 09:31:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696955507; x=1697560307;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Cf2g84KWZibabOg5Y0fsYiGgR+PAP2xFlziRJuiWttw=;
        b=WbQdEBZ78bT4snSDORJE6PPZwpU0lKViYl3ZUaCSiV+cAX1NffAvOD0SjzTzwjegbu
         P6+dfmoLK0anDkCHD+DeqfCU6TnXdzm+5O3Ia1bZvAi1nVQSmQQZfxq47EuiuF/Vwfej
         LIyPZOvHRhP/LkE7VHiYP5z309vDsyo1CJ0XRwrpqrTt3VAOHumH9MfPDN05/FHK4DTJ
         jye5SZnih4gAIAJ1sL9+CiPIHFoisxmR5/36QRubAl5Ce4FPpAD+WksLBQk+3gDiUbjX
         VdVfQG4sG7BkUFcb3C/BkXfl4Xf389UpBkBYCt0T0UVgXUuoLvsiQW43jX/R7P2pCu2a
         Ud5Q==
X-Gm-Message-State: AOJu0Ywumyk8ZymDel+bTkR7M9LRTOw55+EeRZUuIyEDMIXk/8x/N8cb
	exAY1KSc4sQHdsnCcivcY3jXygJBUEArWWPsDusfQ4zuoiCqfw/0BEn7YhqPYHKJzayiK1cldFb
	gK8NbpFDIU3Py/6uC98pYDw==
X-Received: by 2002:a17:906:8a64:b0:9a1:d29c:6aa9 with SMTP id hy4-20020a1709068a6400b009a1d29c6aa9mr16069480ejc.11.1696955506894;
        Tue, 10 Oct 2023 09:31:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGClLYRPDFww0sBjKrvTM/Spzqz91u3d3y4ItD8/C3zVG0gj1Uw0FLAJtwnyE66uijuqOQM/w==
X-Received: by 2002:a17:906:8a64:b0:9a1:d29c:6aa9 with SMTP id hy4-20020a1709068a6400b009a1d29c6aa9mr16069454ejc.11.1696955506572;
        Tue, 10 Oct 2023 09:31:46 -0700 (PDT)
Received: from ?IPV6:2a02:810d:4b3f:de9c:642:1aff:fe31:a15c? ([2a02:810d:4b3f:de9c:642:1aff:fe31:a15c])
        by smtp.gmail.com with ESMTPSA id g20-20020a17090613d400b009b96e88759bsm8905722ejc.13.2023.10.10.09.31.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Oct 2023 09:31:46 -0700 (PDT)
Message-ID: <3205eb86-f875-e597-9df6-628d5799cb12@redhat.com>
Date: Tue, 10 Oct 2023 18:31:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v7 02/20] drm/gpuvm: Helper to get range of unmap from a
 remap op.
Content-Language: en-US
To: Sarah Walker <sarah.walker@imgtec.com>, dri-devel@lists.freedesktop.org
Cc: frank.binns@imgtec.com, donald.robson@imgtec.com,
 boris.brezillon@collabora.com, faith.ekstrand@collabora.com,
 airlied@gmail.com, daniel@ffwll.ch, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, afd@ti.com, hns@goldelico.com,
 matthew.brost@intel.com, christian.koenig@amd.com, luben.tuikov@amd.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, corbet@lwn.net, linux-doc@vger.kernel.org
References: <20231010133738.35274-1-sarah.walker@imgtec.com>
 <20231010133738.35274-3-sarah.walker@imgtec.com>
From: Danilo Krummrich <dakr@redhat.com>
Organization: RedHat
In-Reply-To: <20231010133738.35274-3-sarah.walker@imgtec.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 10/10/23 15:37, Sarah Walker wrote:
> From: Donald Robson <donald.robson@imgtec.com>
> 
> Determining the start and range of the unmap stage of a remap op is a
> common piece of code currently implemented by multiple drivers. Add a
> helper for this.
> 
> Changes since v6:
> - Remove use of __always_inline
> 
> Signed-off-by: Donald Robson <donald.robson@imgtec.com>
> Signed-off-by: Sarah Walker <sarah.walker@imgtec.com>
> ---
>   include/drm/drm_gpuvm.h | 27 +++++++++++++++++++++++++++
>   1 file changed, 27 insertions(+)
> 
> diff --git a/include/drm/drm_gpuvm.h b/include/drm/drm_gpuvm.h
> index c7ed6bf441d4..932e942da921 100644
> --- a/include/drm/drm_gpuvm.h
> +++ b/include/drm/drm_gpuvm.h
> @@ -702,4 +702,31 @@ void drm_gpuva_remap(struct drm_gpuva *prev,
>   
>   void drm_gpuva_unmap(struct drm_gpuva_op_unmap *op);
>   
> +/**
> + * drm_gpuva_op_remap_get_unmap_range() - Helper to get the start and range of

Not a strong opinion on that, but maybe drm_gpuva_op_remap_to_unmap_range() would
be a bit better.

> + * the unmap stage of a remap op.
> + * @op: Remap op.
> + * @start_addr: Output pointer for the start of the required unmap.
> + * @range: Output pointer for the length of the required unmap.
> + *
> + * These parameters can then be used by the caller to unmap memory pages that
> + * are no longer required.

I think we should be a bit more precise on what this is good for. Maybe something
like: "The given start address and range will be set such that they represent the
range of the address space that was previously covered by the mapping getting
re-mapped, but is empty now."

> + */
> +static inline void
> +drm_gpuva_op_remap_get_unmap_range(const struct drm_gpuva_op_remap *op,
> +				   u64 *start_addr, u64 *range)
> +{
> +	const u64 va_start = op->prev ?
> +			     op->prev->va.addr + op->prev->va.range :
> +			     op->unmap->va->va.addr;
> +	const u64 va_end = op->next ?
> +			   op->next->va.addr :
> +			   op->unmap->va->va.addr + op->unmap->va->va.range;
> +
> +	if (start_addr)
> +		*start_addr = va_start;
> +	if (range)
> +		*range = va_end - va_start;
> +}
> +
>   #endif /* __DRM_GPUVM_H__ */


