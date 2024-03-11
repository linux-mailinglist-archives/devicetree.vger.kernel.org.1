Return-Path: <devicetree+bounces-49894-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2479F878698
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 18:47:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9AD731F232E8
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 17:47:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 133DD51C58;
	Mon, 11 Mar 2024 17:47:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="YCr3TBI/"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464CC4D9E8
	for <devicetree@vger.kernel.org>; Mon, 11 Mar 2024 17:47:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710179246; cv=none; b=nDTZJfrnB8L+gTDQo5vfj507UELxgRiC7CiM6Zve5Iz9I+BrpFM20trWXiNdxyyMYKnLBrQFryvpWfIVjMvdWOUZPNzCZEevkmOng7UPHKo67R2qBYsTBSx7F+pSRJKISjrhm2VUVcDTuIQdrOwuvwxB6FvxNxm1kurFGp8gAls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710179246; c=relaxed/simple;
	bh=r7uClMLuZYE7AgrhsTWV2qszim5tbe2WKWP659ugFwM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=J8ZngCxewK6sgoPe8v+UK8ybuzCIH+GHX4OIkvBtP1LiUb4mSC29pQGJPUnR26/3ZrQtGHAe4LJ/fIJKxkc1Pl8wTQ8hv5VnVsCTqJgSe+OEQAOCLrPuAnVoHtAUXah9NYcBVk73A+pTuGioswdnb/FiPAPnDsrFdFR6W+uDiw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=YCr3TBI/; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1710179243;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=e3tUcIlJ5o5Hs/7+gdyglVV0O0xMiKwtCqd2APcSMtU=;
	b=YCr3TBI/ENR1AkFjyEC9HN8lU7DyV0Yx9vVQpC2Ue5fEHaeSSL6abopXJkC+1W+OiX5TOY
	aJkD+Doa7e4QvgvSa+vmgsevFuTaD1qNWGiqfjxx8RidKOBbQ63C1Rqk1jVkVWH8rnbxOI
	yxnekcZDM0jA8kEDtAA4HJjLY2jfIxU=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-631-FTojZXEpPaeQ0-EOrajl2A-1; Mon, 11 Mar 2024 13:47:21 -0400
X-MC-Unique: FTojZXEpPaeQ0-EOrajl2A-1
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-690d9826bc2so9609136d6.2
        for <devicetree@vger.kernel.org>; Mon, 11 Mar 2024 10:47:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710179241; x=1710784041;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e3tUcIlJ5o5Hs/7+gdyglVV0O0xMiKwtCqd2APcSMtU=;
        b=SFAFfDmdXoRE8TGU910jeD4KbRFKGnCms+0RO8WTamfaUmjnufeu7IOGwhd04/kAXU
         OAIiWzjcoJjOsrfuBCwPd2kr3HNvdfpMvEMYIqWv4nz2mHrvBl349ZGCcQjPPH1KUhOQ
         tQj5zBZgATCSnKXYdgiJSpvyUa4LNLhZD3aHqAfdFDmKFJ36yDN7FtzDrRkjL53Urnvl
         Q6x820Vz+kD+RSiZWbvnkzHzGaN4Bj8DmXFOeXUxCYNif93HrbeZiAPSgI7SDr72g6O3
         7I/bIywzTGQKJLXLAr681HdO+H/rG6s4KgejZkbb+W74FxTxY9qVErOgJLaOVmUeAdzE
         /Xgw==
X-Forwarded-Encrypted: i=1; AJvYcCWR6ApHL/g8MBdRw1j3pPLKKVrXZeBnKssHSEkz552o9SHm3Yk/xLqlhoLwMLK0RQPAJXWVwWVezJDt4VEhD2iqAaEtasoivwbDqw==
X-Gm-Message-State: AOJu0Yxl8RiuDWL/B+vWKDyEzFDSu1jOKhJ75q/YWkL3cQJ7ToOc3Tzj
	vBRDoW60AAsNxQAk4xVkmilVj7dLbdJAQxBwU/cGn2dNRkfnlarX5ba8APeuuo/C17pWR0xGdNw
	sEP2xbeIaEn30PRegI0jCMyyTgg68sUXKna29xPmp+WvXibW0YSb3nhJw+nI=
X-Received: by 2002:a05:6214:247:b0:690:db88:9eb with SMTP id k7-20020a056214024700b00690db8809ebmr1672462qvt.50.1710179241537;
        Mon, 11 Mar 2024 10:47:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGKkd3g/GU6B6xqvPUivb+7iFgK8i45ZkaZeEfZReIDlgxd3Q+6lkyFcUHq8gFduAC17Jv0uw==
X-Received: by 2002:a05:6214:247:b0:690:db88:9eb with SMTP id k7-20020a056214024700b00690db8809ebmr1672446qvt.50.1710179241228;
        Mon, 11 Mar 2024 10:47:21 -0700 (PDT)
Received: from localhost (ip70-163-216-141.ph.ph.cox.net. [70.163.216.141])
        by smtp.gmail.com with ESMTPSA id n13-20020a0cfbcd000000b00690bb839b5bsm2842551qvp.135.2024.03.11.10.47.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Mar 2024 10:47:20 -0700 (PDT)
Date: Mon, 11 Mar 2024 10:47:19 -0700
From: Jerry Snitselaar <jsnitsel@redhat.com>
To: Stefan Berger <stefanb@linux.ibm.com>
Cc: mpe@ellerman.id.au, linux-integrity@vger.kernel.org, 
	linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, jarkko@kernel.org, 
	rnsastry@linux.ibm.com, peterhuewe@gmx.de, viparash@in.ibm.com, 
	devicetree@vger.kernel.org
Subject: Re: [RFC PATCH v2 1/3] powerpc/prom_init: Replace
 linux,sml-base/sml-size with linux,sml-log
Message-ID: <s2a42qzx4pp7fvgde4p5t7pcwsop4wlm266e2gdgr2gb5y77cn@udrmavhiwqoo>
References: <20240311132030.1103122-1-stefanb@linux.ibm.com>
 <20240311132030.1103122-2-stefanb@linux.ibm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240311132030.1103122-2-stefanb@linux.ibm.com>

On Mon, Mar 11, 2024 at 09:20:28AM -0400, Stefan Berger wrote:
> linux,sml-base holds the address of a buffer with the TPM log. This
> buffer may become invalid after a kexec. To avoid accessing an invalid
> address or corrupted buffer, embed the whole TPM log in the device tree
> property linux,sml-log. This helps to protect the log since it is
> properly carried across a kexec soft reboot with both of the kexec
> syscalls.
> 
> Avoid having the firmware ingest the whole TPM log when calling
> prom_setprop but only create the linux,sml-log property as a place holder.
> Insert the actual TPM log during the tree flattening phase.
> 
> Fixes: 4a727429abec ("PPC64: Add support for instantiating SML from Open Firmware")
> Suggested-by: Michael Ellerman <mpe@ellerman.id.au>
> Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>
> ---
>  arch/powerpc/kernel/prom_init.c | 27 +++++++++++++++++++--------
>  1 file changed, 19 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/powerpc/kernel/prom_init.c b/arch/powerpc/kernel/prom_init.c
> index e67effdba85c..6f7ca72013c2 100644
> --- a/arch/powerpc/kernel/prom_init.c
> +++ b/arch/powerpc/kernel/prom_init.c
> @@ -211,6 +211,8 @@ static cell_t __prombss regbuf[1024];
>  
>  static bool  __prombss rtas_has_query_cpu_stopped;
>  
> +static u64 __prombss sml_base;
> +static u32 __prombss sml_size;

Should inside an #ifdef CONFIG_PPC64 since prom_instantiate_sml() is?

>  
>  /*
>   * Error results ... some OF calls will return "-1" on error, some
> @@ -1954,17 +1956,15 @@ static void __init prom_instantiate_sml(void)
>  	}
>  	prom_printf(" done\n");
>  
> -	reserve_mem(base, size);
> -
> -	prom_setprop(ibmvtpm_node, "/vdevice/vtpm", "linux,sml-base",
> -		     &base, sizeof(base));
> -	prom_setprop(ibmvtpm_node, "/vdevice/vtpm", "linux,sml-size",
> -		     &size, sizeof(size));
> -
> -	prom_debug("sml base     = 0x%llx\n", base);
> +	/* Add property now, defer adding log to tree flattening phase */
> +	prom_setprop(ibmvtpm_node, "/vdevice/vtpm", "linux,sml-log",
> +		     NULL, 0);
>  	prom_debug("sml size     = 0x%x\n", size);
>  
>  	prom_debug("prom_instantiate_sml: end...\n");
> +
> +	sml_base = base;
> +	sml_size = size;
>  }
>  
>  /*
> @@ -2645,6 +2645,17 @@ static void __init scan_dt_build_struct(phandle node, unsigned long *mem_start,
>  		}
>  		prev_name = sstart + soff;
>  
> +		if (!prom_strcmp("linux,sml-log", pname)) {
> +			/* push property head */
> +			dt_push_token(OF_DT_PROP, mem_start, mem_end);
> +			dt_push_token(sml_size, mem_start, mem_end);
> +			dt_push_token(soff, mem_start, mem_end);
> +			/* push property content */
> +			valp = make_room(mem_start, mem_end, sml_size, 1);
> +			memcpy(valp, (void *)sml_base, sml_size);
> +			*mem_start = ALIGN(*mem_start, 4);
> +			continue;
> +		}

Same question as above.

Regards,
Jerry

>  		/* get length */
>  		l = call_prom("getproplen", 2, 1, node, pname);
>  
> -- 
> 2.43.0
> 


