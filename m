Return-Path: <devicetree+bounces-15692-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6585E7EB512
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 17:42:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F06DE1F2554F
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 16:42:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7B233FB1C;
	Tue, 14 Nov 2023 16:42:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="GERmnqXC"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC3413E476
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 16:42:39 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80230123
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 08:42:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1699980157;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=S0c77MRIfmEGYCNMMqVyI2qPOnHUBgvpZCQHCynNgK8=;
	b=GERmnqXCS6btgTnkvNuXwSapr4qSlrZNXnedtzpItu6Alli8MhEmNFIZ1B2bfAhuVLH6FH
	PmjrjMpyRn5mvrsWxxQWmmHGvzkG3XCeJiUGL4YCkefKnwA52PQVDGTIV3pfQMzyHU1A/h
	xx01W3rsJ3vqk7XbDym1ycEAvVshJSM=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-422-cWMchE8HOraqVTSWM38uZg-1; Tue, 14 Nov 2023 11:42:36 -0500
X-MC-Unique: cWMchE8HOraqVTSWM38uZg-1
Received: by mail-ed1-f69.google.com with SMTP id 4fb4d7f45d1cf-54061ad6600so3922222a12.3
        for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 08:42:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699980155; x=1700584955;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S0c77MRIfmEGYCNMMqVyI2qPOnHUBgvpZCQHCynNgK8=;
        b=ohmaFxGUTmCRNNgXJz8QHXsyc4c/aFqX6AohrSVC7iQwyhLgE0+EB+y3bJUpyOEE+t
         Rhl2y2/DuWZZKPHJtw2kv9Tx5J1KY9WhJrlc43uE/2In7G8LmB8+STtYhdXpVMF4vyga
         EcjnW+h+FgYKGok6Bc6js2Oh/Y3E+SLOecwZmWysL2afk7aNLnWC1n0huBnJAQsNCNZ4
         Q5LZm1Mr79+5Pz6Bq2/TtIogwHOyq3Mzb8y6293BsweNiUBJ9upC9NHwExkbwbggYTIh
         eY5opY3OgDWRJrYWKvSbBBmdOHa1hriTXOP/osAWMgBrtFkuBuWZtUl9uT2YQMgg2tfV
         pxgA==
X-Gm-Message-State: AOJu0YyQCzquRcKAicThbRcCedhfNK69pOSiTzPizLbfR3a0Q0R0K9S3
	YMGX4JfFdd53vTVE8+scttc+O6xrEoJfJUkIbsIdtMyvw3C1wkFQ/Qf9i0UaHyue8r/Pb+IjTk6
	ABXgQQNQFEBm71gmz9jmN1g==
X-Received: by 2002:a17:906:4f13:b0:9df:bc50:2513 with SMTP id t19-20020a1709064f1300b009dfbc502513mr7274339eju.65.1699980154876;
        Tue, 14 Nov 2023 08:42:34 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHfn4c24R5W4bd+EVwrMNaRwBMuNVIsC9zYOUo2FKiKsCdAOBsvD6dioe9WjEOnxb9D3QGFVw==
X-Received: by 2002:a17:906:4f13:b0:9df:bc50:2513 with SMTP id t19-20020a1709064f1300b009dfbc502513mr7274298eju.65.1699980154501;
        Tue, 14 Nov 2023 08:42:34 -0800 (PST)
Received: from ?IPV6:2a02:810d:4b3f:de9c:abf:b8ff:feee:998b? ([2a02:810d:4b3f:de9c:abf:b8ff:feee:998b])
        by smtp.gmail.com with ESMTPSA id y19-20020a170906525300b009a13fdc139fsm5766753ejm.183.2023.11.14.08.42.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Nov 2023 08:42:34 -0800 (PST)
Message-ID: <e517d560-3a1f-4e79-9bec-acdc77784bcd@redhat.com>
Date: Tue, 14 Nov 2023 17:42:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 02/20] drm/gpuvm: Helper to get range of unmap from a
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
References: <20231031151257.90350-1-sarah.walker@imgtec.com>
 <20231031151257.90350-3-sarah.walker@imgtec.com>
From: Danilo Krummrich <dakr@redhat.com>
Organization: RedHat
In-Reply-To: <20231031151257.90350-3-sarah.walker@imgtec.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/31/23 16:12, Sarah Walker wrote:
> From: Donald Robson <donald.robson@imgtec.com>
> 
> Determining the start and range of the unmap stage of a remap op is a
> common piece of code currently implemented by multiple drivers. Add a
> helper for this.
> 
> Changes since v7:
> - Renamed helper to drm_gpuva_op_remap_to_unmap_range()
> - Improved documentation
> 
> Changes since v6:
> - Remove use of __always_inline
> 
> Signed-off-by: Donald Robson <donald.robson@imgtec.com>
> Signed-off-by: Sarah Walker <sarah.walker@imgtec.com>

Reviewed-by: Danilo Krummrich <dakr@redhat.com>

Want me to apply the patch?

> ---
>   include/drm/drm_gpuvm.h | 28 ++++++++++++++++++++++++++++
>   1 file changed, 28 insertions(+)
> 
> diff --git a/include/drm/drm_gpuvm.h b/include/drm/drm_gpuvm.h
> index c7ed6bf441d4..c64585dc4e8e 100644
> --- a/include/drm/drm_gpuvm.h
> +++ b/include/drm/drm_gpuvm.h
> @@ -702,4 +702,32 @@ void drm_gpuva_remap(struct drm_gpuva *prev,
>   
>   void drm_gpuva_unmap(struct drm_gpuva_op_unmap *op);
>   
> +/**
> + * drm_gpuva_op_remap_to_unmap_range() - Helper to get the start and range of
> + * the unmap stage of a remap op.
> + * @op: Remap op.
> + * @start_addr: Output pointer for the start of the required unmap.
> + * @range: Output pointer for the length of the required unmap.
> + *
> + * The given start address and range will be set such that they represent the
> + * range of the address space that was previously covered by the mapping being
> + * re-mapped, but is now empty.
> + */
> +static inline void
> +drm_gpuva_op_remap_to_unmap_range(const struct drm_gpuva_op_remap *op,
> +				  u64 *start_addr, u64 *range)
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


