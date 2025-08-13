Return-Path: <devicetree+bounces-204405-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 17950B255A2
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 23:39:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D3E793B9C2B
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 21:36:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF5F33009C4;
	Wed, 13 Aug 2025 21:35:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XM6yJV9B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBCE3009C1
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 21:35:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755120928; cv=none; b=Xt6fY0k65lnVFfHN/JL6RtYqUBJrX4wIEBBpunMcnYsTN448iVLVfiQlQrS17826T5fEUu5JuFgkGQ6DltfJPKH3r2YZQRKw5zGjnZtJZhCkFapOvESZi47q3ou9UVbeDJbPiHrXTPDEUM38CyYLU/PV6GrSRhqJLe/ywn+QvRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755120928; c=relaxed/simple;
	bh=JGDu2T4AA+CwFqW1EWB3SqKUF4ftHO3YFhNGuUoTrXs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rI2WCRR3Gkxk51pduUZE0V61SKS/Ts0ymm+Zn70ptjq1ZDTXFXU83Sxe1dL15PIBGGUMlGr43HiVgPNPJDrjcvpa+FOhB1d5oUpBDVqTrOQyvPKoLVSCoE4ztUalysoGKdv3GgeNCDcdk3qBtO34m+CspnSQxgvZetyzN6yYrJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XM6yJV9B; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3b9dc5c2f0eso157640f8f.1
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 14:35:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755120925; x=1755725725; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1XmXvWLJhlSpXOiiF4u4DdYe3hF2nbQcNLrAb9SCIeY=;
        b=XM6yJV9BoOnoRAkb5h86O8AqyjJ0vfzee/TziE2sAtZcEQi7STm390P1mSz5eCs8CO
         /LYLBDbAneeruufG9ECE0OHRq2T8riYy+Oh3PCtVcdalXsKzF+V4/nC469rs+ICActbw
         bI4/UiU4wXFdd7znphMoNbzv5/yBDedA+YdR+cweWw66w5FXc1CSXeMluDdrFB8tJAsh
         x+3MkJX3+r43WGJJsSORTiOQJtpe4NsmDwLv+f0kwEvNQeLmV6TQls/abr6bBVCAhHOz
         wmYjKrcMnwOed80/aeIvTeAIxLRN5vy2FpdiPnqfBTQBxXfI0BAL8ECWLNwXZP9E+71+
         9xIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755120925; x=1755725725;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1XmXvWLJhlSpXOiiF4u4DdYe3hF2nbQcNLrAb9SCIeY=;
        b=lkSdajAPW0nxUw4dDL84iZA4wVuI+jD/EChOY/HA+at6VIDtpknvnlSNwSy72aGJJ/
         xtPd36XCB+x+4GadiSpPp7fBnJBe/j1sQG4dhtt55+vePTJS4rTV7jsQGFX7Fs1QJH8x
         68/UGPJHzSAizNKXdTVycVb8CgE6fMse6Ss969SSJleNasBtJ3ny+ADcPL0HnCWNpV2s
         RNexThW8Uw/676mINqsVpEs6U5Ua/TZhW/jAplnyj95Qbs5K/6U8T6b47nosWu6GqJsM
         EDePoL/9ZyBAD1wEHhjOCp8qn8ZxsNKpLcX7FRCr+tEmnopIKp8/IthLyp1Z8RuuPzMx
         CKqQ==
X-Forwarded-Encrypted: i=1; AJvYcCXOvXLxdFjyIvaJjIkccudfo87su+49ZVK4CfI8M9FEefTqnmR+vC1uioxFNhcAeMoM396vYTGmoCta@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9bJel26XUWuWeTWVtBBr9eAE5/Aqon3uY+EyjWnukQvFFNSq+
	hTTcHvETKekiRyZAamZk8/o2xlWMdJBNAhsuCv1CwVl/SUorLVkFnRNRxUb0Pyb+T0asCAEelyu
	HDWvyDsU=
X-Gm-Gg: ASbGnctQhu029wU4JQgmCMN+GyuWqWtkJL2cNiLmAL5DPXSzlLqlZEwBxaFwcOqbtgo
	YTgktS/i5o0HgqjrznM00Xqg5bX5MZDYjZW63jb5SljzPP6RBbmTIiypTF3nTgM5G8qBBTgdYjI
	iKmZUsEE4eiCe5dIZl4SHfDajlZ977ZT3QfeMjihQY1xEqvIVHhGvJr64vRDM99jneehCyHHq4X
	hiNUxWrCQ0qcR3eKDEXg7ISbE694VflIMDL6wyN23yJ5xVUzSUjw9Ws1hQt8ce954l1y4tVWxRh
	rqzVaGOPqwrmtkGgiHyXG4P6oqnmqqjkMkXxeE0VGBY/ULgfaC0FJRFSmpqgXpKT+tyuPPEftMa
	kc73pRS5oMBqydEUq0Erj2HeQ/blKwGPkjFvyMU7d2hekgTis2ZshmBz/xfZzq4R6
X-Google-Smtp-Source: AGHT+IEXpcW7O5Udyxtt77HddjjtyRdwKlGTXAk1h299MQ76Ljg2rx6jkkZiaE782uOxs2v38udmMg==
X-Received: by 2002:a05:6000:25c6:b0:3a4:dc2a:924e with SMTP id ffacd0b85a97d-3b9e7438457mr554485f8f.6.1755120925461;
        Wed, 13 Aug 2025 14:35:25 -0700 (PDT)
Received: from [192.168.0.13] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c45346asm48738067f8f.39.2025.08.13.14.35.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Aug 2025 14:35:24 -0700 (PDT)
Message-ID: <0a049417-6545-4cdb-95cb-cf41c810b57c@linaro.org>
Date: Wed, 13 Aug 2025 22:35:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/7] media: qcom: camss: enable vfe 690 for qcs8300
To: Vikram Sharma <quic_vikramsa@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
 konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
 cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250813053724.232494-1-quic_vikramsa@quicinc.com>
 <20250813053724.232494-6-quic_vikramsa@quicinc.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250813053724.232494-6-quic_vikramsa@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 13/08/2025 06:37, Vikram Sharma wrote:
> The vfe in qcs8300 is version 690, it is same as vfe used in
> lemans(sa8775p). vfe gen3 have support for vfe 690.
> 
> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
> ---
>   drivers/media/platform/qcom/camss/camss-vfe-gen3.c | 3 ++-
>   drivers/media/platform/qcom/camss/camss-vfe.c      | 2 ++
>   2 files changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss-vfe-gen3.c b/drivers/media/platform/qcom/camss/camss-vfe-gen3.c
> index f2001140ead1..22579617def7 100644
> --- a/drivers/media/platform/qcom/camss/camss-vfe-gen3.c
> +++ b/drivers/media/platform/qcom/camss/camss-vfe-gen3.c
> @@ -13,7 +13,8 @@
>   #include "camss-vfe.h"
>   
>   #define IS_VFE_690(vfe) \
> -	    (vfe->camss->res->version == CAMSS_8775P)
> +	    ((vfe->camss->res->version == CAMSS_8775P) \
> +	    || (vfe->camss->res->version == CAMSS_8300))

I'd really prefer a patch setting the CSID and VFE versions as 
properties of their respective data-structures.

BUT, again this will do for now.

>   
>   #define BUS_REG_BASE_690 \
>   	    (vfe_is_lite(vfe) ? 0x480 : 0x400)
> diff --git a/drivers/media/platform/qcom/camss/camss-vfe.c b/drivers/media/platform/qcom/camss/camss-vfe.c
> index 99cbe09343f2..1d40184d7d04 100644
> --- a/drivers/media/platform/qcom/camss/camss-vfe.c
> +++ b/drivers/media/platform/qcom/camss/camss-vfe.c
> @@ -344,6 +344,7 @@ static u32 vfe_src_pad_code(struct vfe_line *line, u32 sink_code,
>   	case CAMSS_8x96:
>   	case CAMSS_8250:
>   	case CAMSS_8280XP:
> +	case CAMSS_8300:
>   	case CAMSS_845:
>   	case CAMSS_8550:
>   	case CAMSS_8775P:
> @@ -1974,6 +1975,7 @@ static int vfe_bpl_align(struct vfe_device *vfe)
>   	case CAMSS_7280:
>   	case CAMSS_8250:
>   	case CAMSS_8280XP:
> +	case CAMSS_8300:
>   	case CAMSS_845:
>   	case CAMSS_8550:
>   	case CAMSS_8775P:

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

