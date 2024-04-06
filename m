Return-Path: <devicetree+bounces-56806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 049D389A874
	for <lists+devicetree@lfdr.de>; Sat,  6 Apr 2024 04:22:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 20E971C212F2
	for <lists+devicetree@lfdr.de>; Sat,  6 Apr 2024 02:22:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE853EEC5;
	Sat,  6 Apr 2024 02:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="z5MLG2OT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB5AE14273
	for <devicetree@vger.kernel.org>; Sat,  6 Apr 2024 02:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712370154; cv=none; b=SbBpAQRO4zMpzhii6cqH7zuxS7UagFC+FsNZ0r7lTl0f8KsPg/5F2D3MDBLxfIkW07HAsHCt74cC3/8bpKP6X3H2HycQqEBQ6kk5ZfutWLu0cs69+DDKnPfjDUUuefnsZPLJU6HpDjg9UtofEvTjDhZ0hX4bFRZG5j6huDz+H/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712370154; c=relaxed/simple;
	bh=9sRTLUv7iI+opmqHequT8O/rcFP2Dt1+EuziegpIbuU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EK5r5W1UIEzbMoSaMzpKqw34PP4InNFhyd256NGQcnQfPNH7ofvRFtSdvdSHEGHgP5bev8lFWphLD/hSNcGeirUGi+tCA23mxksXT4bSY+eU27mrGOAJKtx2isKfSo6ourwBHsrb45tw0p1syzd7x3YLbXaDAZAGdonNnSn7fg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=z5MLG2OT; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2d109e82bd0so30595301fa.3
        for <devicetree@vger.kernel.org>; Fri, 05 Apr 2024 19:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712370151; x=1712974951; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0ZyKLzJVktAzILDZDjIRmvAZaNHxUI4+ew0iZ8nIBhA=;
        b=z5MLG2OTMrESeWWP9GUXppXq/8DuUH6C2Ic2qYiEZLSjPf/+PpTtYYxLEkCeIU0XJl
         fXwxR3EUkJqclKrU4BCQETVGOC7S8gSqAWp7O4zrNujcVLBTYi6qR7L3f0wJ24PsaJgo
         UaiPgq0UkSk9obLgphJ2g/8Zoh0TkMkLY5iWrpSak/ruALyf1je3xNwybN84GC/nHI7S
         gGxuCG2Qax9yFQA9GN1oSy0fIrEN5q+SV6ad5/u1EYNYmbnD9XCTLaY2+IQgpZrm12J0
         CZ/gsb2xzf1h26s2rOprhfjOHp6VmlUmGzlZmthklFYoQyMgbwPQJ7PRQkgT5MMjEjgm
         u6Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712370151; x=1712974951;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0ZyKLzJVktAzILDZDjIRmvAZaNHxUI4+ew0iZ8nIBhA=;
        b=mmHrryno72DdFht1phSyrsAhG3zMtPSR3oNE+BRe58yJYAzbU7j7jxM814kfPvPTsT
         N62WgdvM/JlwVh1wfRM8rfdTh8+wHrwjrjK3aZ+DWOoYezPMlUDN1g09vT/hMJ5/nzyH
         mfny36L/EWDEC8Adh6+wA7pOR02S9RyGNzts4jQjrH+y+qhLDrwM8EtVYuMfqEykBzyJ
         3olF+SH40Pu8fwSct3stElAknUCQl3b6fgED/tRNVSG+srkc1lFaNS/f9UVJE+YcJg50
         dEqg29prcHe9Hlnnl0NcR5jOk+w5XG4mtGW43JfstmEZAzoS5dzE63CQ3CG9MAWWZnmJ
         K3qg==
X-Forwarded-Encrypted: i=1; AJvYcCUPH6HrGceBc+jaXiLDPZKCTHITb4vWnKL2GAMv5mnq9auSSEVL1V1WCtuADUo8zVx4HgQBaLnKyNxrleptS/trHdTJGdsqNL3HlA==
X-Gm-Message-State: AOJu0YyW4w5C0cRe8DAS0Z+Wvl2sWgNmKG6HUc5WwpRuez+sBYVZ6eqp
	qcFfJJfuW8U56B+sEaldCVSfxk0wjn7lHh14n5d3gRtIKNEbT0DBkldEgRXEnEg=
X-Google-Smtp-Source: AGHT+IGvb4XRGR6EdNfCX6p/VaXQdYVMCyH8vn9vZL77k7LU0xmSF1owwRXRLY7RdG5Y7Nb4kOAN8g==
X-Received: by 2002:a2e:9805:0:b0:2d8:68ad:1e8b with SMTP id a5-20020a2e9805000000b002d868ad1e8bmr1928276ljj.52.1712370150743;
        Fri, 05 Apr 2024 19:22:30 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzyjmhyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a00e:a300::227])
        by smtp.gmail.com with ESMTPSA id f1-20020a05651c02c100b002d86145ecaesm338732ljo.86.2024.04.05.19.22.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Apr 2024 19:22:30 -0700 (PDT)
Date: Sat, 6 Apr 2024 05:22:28 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 1/6] soc: qcom: Move some socinfo defines to the header,
 expand them
Message-ID: <zua77x2vpfgahghxe33hrhimwh4wl4vu3ttvtao2xnwbvxfesm@rks7ue7cgwhu>
References: <20240405-topic-smem_speedbin-v1-0-ce2b864251b1@linaro.org>
 <20240405-topic-smem_speedbin-v1-1-ce2b864251b1@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240405-topic-smem_speedbin-v1-1-ce2b864251b1@linaro.org>

On Fri, Apr 05, 2024 at 10:41:29AM +0200, Konrad Dybcio wrote:
> In preparation for parsing the chip "feature code" (FC) and "product
> code" (PC) (essentially the parameters that let us conclusively
> characterize the sillicon we're running on, including various speed
> bins), move the socinfo version defines to the public header and
> include some more FC/PC defines.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  drivers/soc/qcom/socinfo.c       |  8 --------
>  include/linux/soc/qcom/socinfo.h | 36 ++++++++++++++++++++++++++++++++++++
>  2 files changed, 36 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/soc/qcom/socinfo.c b/drivers/soc/qcom/socinfo.c
> index 277c07a6603d..cf4616a468f2 100644
> --- a/drivers/soc/qcom/socinfo.c
> +++ b/drivers/soc/qcom/socinfo.c
> @@ -21,14 +21,6 @@
>  
>  #include <dt-bindings/arm/qcom,ids.h>
>  
> -/*
> - * SoC version type with major number in the upper 16 bits and minor
> - * number in the lower 16 bits.
> - */
> -#define SOCINFO_MAJOR(ver) (((ver) >> 16) & 0xffff)
> -#define SOCINFO_MINOR(ver) ((ver) & 0xffff)
> -#define SOCINFO_VERSION(maj, min)  ((((maj) & 0xffff) << 16)|((min) & 0xffff))
> -
>  /* Helper macros to create soc_id table */
>  #define qcom_board_id(id) QCOM_ID_ ## id, __stringify(id)
>  #define qcom_board_id_named(id, name) QCOM_ID_ ## id, (name)
> diff --git a/include/linux/soc/qcom/socinfo.h b/include/linux/soc/qcom/socinfo.h
> index e78777bb0f4a..ba7f683bd32c 100644
> --- a/include/linux/soc/qcom/socinfo.h
> +++ b/include/linux/soc/qcom/socinfo.h
> @@ -3,6 +3,8 @@
>  #ifndef __QCOM_SOCINFO_H__
>  #define __QCOM_SOCINFO_H__
>  
> +#include <linux/types.h>
> +
>  /*
>   * SMEM item id, used to acquire handles to respective
>   * SMEM region.
> @@ -12,6 +14,14 @@
>  #define SMEM_SOCINFO_BUILD_ID_LENGTH	32
>  #define SMEM_SOCINFO_CHIP_ID_LENGTH	32
>  
> +/*
> + * SoC version type with major number in the upper 16 bits and minor
> + * number in the lower 16 bits.
> + */
> +#define SOCINFO_MAJOR(ver) (((ver) >> 16) & 0xffff)
> +#define SOCINFO_MINOR(ver) ((ver) & 0xffff)
> +#define SOCINFO_VERSION(maj, min)  ((((maj) & 0xffff) << 16)|((min) & 0xffff))
> +
>  /* Socinfo SMEM item structure */
>  struct socinfo {
>  	__le32 fmt;
> @@ -74,4 +84,30 @@ struct socinfo {
>  	__le32 boot_core;
>  };
>  
> +/* Internal feature codes */
> +enum feature_code {
> +	/* External feature codes */
> +	SOCINFO_FC_UNKNOWN = 0x0,
> +	SOCINFO_FC_AA,
> +	SOCINFO_FC_AB,
> +	SOCINFO_FC_AC,
> +	SOCINFO_FC_AD,
> +	SOCINFO_FC_AE,
> +	SOCINFO_FC_AF,
> +	SOCINFO_FC_AG,
> +	SOCINFO_FC_AH,
> +	SOCINFO_FC_EXT_RESERVE,
> +};
> +
> +/* Internal feature codes */
> +/* Valid values: 0 <= n <= 0xf */
> +#define SOCINFO_FC_Yn(n)		(0xf1 + n)
> +#define SOCINFO_FC_INT_RESERVE		SOCINFO_FC_Yn(0x10)
> +
> +/* Product codes */
> +#define SOCINFO_PC_UNKNOWN		0
> +/* Valid values: 0 <= n <= 8, the rest is reserved */
> +#define SOCINFO_PCn(n)			(n + 1)
> +#define SOCINFO_PC_RESERVE		(BIT(31) - 1)

Please move these defines into the next patch.

> +
>  #endif
> 
> -- 
> 2.40.1
> 

-- 
With best wishes
Dmitry

