Return-Path: <devicetree+bounces-244876-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 980DDCA9EE8
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 03:33:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 472E530CCDC5
	for <lists+devicetree@lfdr.de>; Sat,  6 Dec 2025 02:31:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E04DE23BCED;
	Sat,  6 Dec 2025 02:31:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VsqwB7CV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fJ7RPUlD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7250023BD17
	for <devicetree@vger.kernel.org>; Sat,  6 Dec 2025 02:31:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764988277; cv=none; b=Ct4XPHOe6bnaWsAswH9BDJV8PCLH4TPnncfEgv+2H+I+UZ93mY3irJC6Crzu0r2lTJgR1NnMN2I028OoL13pASsqb6wLVhkN8uMaTJEJghRxqQP2QZzX5iqLcpIUQGDhMLRbvIvU+lWN/f+Ewunr44i9anfKiux+kQ1B6VjneGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764988277; c=relaxed/simple;
	bh=tf60x1YenFEMy2LGAuk7nx+ukOEr7WXd20AhfQdEims=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZyZC/HB6BemNM5Qc59vsUYb7Wj3bgQiBTnUOJwr+ygkegkdzdCroP5ageGSktelttMjDKvm11CUyQeLvvZ/W0Ngyw68fNgXZMjDAQmX3qqD4rGiMauWz6lIAhyPYt9iHAwKlpsQRFvxGl7th5dvJgBES1Q/4zu0FBLSjNKShfsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VsqwB7CV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fJ7RPUlD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B5KY1GM825575
	for <devicetree@vger.kernel.org>; Sat, 6 Dec 2025 02:31:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ZRtO3TYmHTQrUnXdt/8BxaRj
	1OPXEp1i7OmNj7Dvdos=; b=VsqwB7CVnCPvSGB5MuKH/57RREUQA4h8w2Nf9wou
	/G4OE78gMRQp4GXJU/GcPVLu2P+G0tfdu+WKpULAt9t178A9IiRXquuAnpFBG4QF
	9J6OhB39dDEsQTs3pqyqg4UQ5JxrIS1f2t6+VQcrfujXiVzMWB1ruEifBnogY5FO
	PM5bk4gIqwRWHVRkNsyARv8vbJiSVAS0PKc8nllhiBBfy3R3e8GvbJyOGOCp1LoB
	pH0pxUVbEcTplSHPcc5r33/GijOH68TLzssIykt0o64LNk6jYJ+pikLmBjG4w4L3
	b0adgPoheQNm4SaAfAP/ir7UBDX2bH3pw0As8StO3fuDOg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4av6hu0nky-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 06 Dec 2025 02:31:15 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-8823a371984so4187096d6.1
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 18:31:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764988274; x=1765593074; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZRtO3TYmHTQrUnXdt/8BxaRj1OPXEp1i7OmNj7Dvdos=;
        b=fJ7RPUlDODmHDIo/6qtsaY47Gizsc6NAgRMZBsFTSkWdkDnacEQubBfD0kug5FCnnn
         DAZ8/dEbYa0k4SgSxLfrrS4ZjKlnYQuxEUj+ls87nh3tdZne0MSY2Tq6iDtNEf+VKXm2
         on8OdDnn6mQ9M6pUs37oGqvaMdYHujNHz6EF8rqsr/VFKd/wS90y+19jPN2d7r1iGu6f
         NRqQYadm1PH3TgOJodmWYR2XU7mHKwtaQ2XgtfOz7uoouFRrGhWPjUYDfx+xZokagESy
         3PlIQZJdsxKThJS7BPeICkNeY/S6n9VQLhKPZOS80RoY1o0ab/a4AiUK+DKOGHSdk4bF
         rC8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764988274; x=1765593074;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZRtO3TYmHTQrUnXdt/8BxaRj1OPXEp1i7OmNj7Dvdos=;
        b=SndK6oyom2h0w5hxlODZedJ6jekFZSorzy+XxwQGxrJVoHYF5NJxmMdyMlr06hSGUy
         WksYi8F9YYKbyF+2kFGOUlHU8TJdYz3l41FPrh7jqWf1KcyBYM1Z/lngSHmmdFEBMNry
         +ANDv8EpjAjMewfboADBxmJK+6GaWoZsHYU4NexlxEmXaq4wQ/elvNKEcl9GZaGy+fwp
         mhasLxD+/0hmXB2XST0fqfHtWSGXsOyvSjp/2uXhU7TJJQ4S1IFsujijKRBN1EyQEe0O
         sbdY4gcw+GXDk2sI2OhM0PWw6orVvpnNtUaBzmEBcrheFPtPjK4AOmVmZ/humOZhdlyB
         a0Zw==
X-Forwarded-Encrypted: i=1; AJvYcCUvzTRFFikBoTLWxbV2j5Jobiq/tU1FrsegPGwWiN14To1+UJfNEGLSWpnmeC+rdAFxbtvDVevnRkZo@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2GQo/F+Q2TiNkOO4D9QarxeNGV8u9lHi/6fjKBjr//2hXObKM
	TLoB83f1HpyXRsKMxjw32+nki+iKt13dsbUrteiozkINOWIwPVRY+NK2Xq9qoOXWXToImSKe/mU
	qq6QDOsSvgoO6swjCo8XQPSO7fEWYwRrDUvn82Gdh6ZvRZvCzhaGKJlB3LVS5rl67
X-Gm-Gg: ASbGncudOAluAknDzLwXJdGMYOOTf5Wpyl1oBm1zFNh6lBAaZcL/DvRJziZNQ9ZrIF+
	SS56YmrzjPdmVggE9gVGHEqB9mIXZm9rlnQDo3YueCGob3AWryzZf29vl8giSdh9A0KwyxUXDsl
	QhVhbwNejOGBbk6RPYhchaxBwwMf3yJ2ySRG+c5XmO9jIsZYrXuOHEtMpVJd4E6cAieDgqCOHEI
	9uyVWHDRexYcYi6WsJenMkN/iJlil8Xc616LfUcUZW3E4AoFsTH9KSMD979bPXbDomxcbXnJj+u
	e3y9SsA5nPFfThn0zA/TLNtbazMi8NT7q+W6Wpory0gt/fIshTVGijKVuDkzSG+iX2zNpxgFBmb
	jOiA5NZVsFM0mBHFPuWqsg/pcmdlRFezeRGkQs9tNiiGGVOcVmgfYmHZIu01GrlNHRjnVqIdgPB
	jv1ImcTlfeOJvtkoJfg6ZSxxk=
X-Received: by 2002:a05:6214:4509:b0:87d:fbe9:9566 with SMTP id 6a1803df08f44-8883db1bd75mr21755766d6.26.1764988274435;
        Fri, 05 Dec 2025 18:31:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE04NAuZrnromDR9MbXM6eEIfNuiKMMl7Us1PS2BG+IPVypoFi0GdBxZkOLZlekK+UzNyC2TA==
X-Received: by 2002:a05:6214:4509:b0:87d:fbe9:9566 with SMTP id 6a1803df08f44-8883db1bd75mr21755486d6.26.1764988273934;
        Fri, 05 Dec 2025 18:31:13 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597dfa1573asm473037e87.3.2025.12.05.18.31.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 18:31:13 -0800 (PST)
Date: Sat, 6 Dec 2025 04:31:11 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Kumari Pallavi <kumari.pallavi@oss.qualcomm.com>
Cc: kpallavi@qti.qualcomm.com, srini@kernel.org, amahesh@qti.qualcomm.com,
        arnd@arndb.de, gregkh@linuxfoundation.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, quic_bkumar@quicinc.com,
        ekansh.gupta@oss.qualcomm.com, linux-kernel@vger.kernel.org,
        quic_chennak@quicinc.com, dri-devel@lists.freedesktop.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        jingyi.wang@oss.qualcomm.com, aiqun.yu@oss.qualcomm.com,
        ktadakam@qti.qualcomm.com
Subject: Re: [PATCH v5 4/4] misc: fastrpc: Update dma_bits for CDSP support
 on Kaanapali SoC
Message-ID: <l6pf6zoz3sfawnsdmtacczykg2dgnaw4x26dfg4o3al44y7fc5@vgzd5s4uygm6>
References: <20251202060628.1869967-1-kumari.pallavi@oss.qualcomm.com>
 <20251202060628.1869967-5-kumari.pallavi@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251202060628.1869967-5-kumari.pallavi@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA2MDAxNyBTYWx0ZWRfX6ATgJAhItnAG
 DMc5liLImxmdfThUxEMyDHoyPsuRXi38zn782sysfVFqXxIrVb9FQEWRTgqocFg9xF60QwpfPLS
 cAFi3NDvoYG97ja+tsOLJ68tMykESaiE+4+pu09WHXlB4twrv1eBiFk1PCvW3mUXAwMLf8p267Z
 wHlxY8detchZoO0S1s3BhGAiBli6+KLEypy+SN+VnTzJE6Hb5M0HWwpBJAYarpu3wkVCTjtke6/
 GI4MpE7aNbkvdzbp7g3sU+ENRMSpnoFy5JVInGlX0SILm9cKWzIrP2hvmqI/J3rRINwkwy4+VHU
 ibkXYgiJ2I51rbB/KKFZ2sJYfUGLLTrzyRZD32cShYNWyk91Wr93DTk20Fw37clkOYiq1c68HJt
 hWQtmEcxjlLuNoe3EQFB+XANsQtD0Q==
X-Authority-Analysis: v=2.4 cv=NPHYOk6g c=1 sm=1 tr=0 ts=69339573 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=BxukJQUEoHWD8WPs6VUA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: DhSMjXdMt9-3rYjEc9y95KCg5oYryUsY
X-Proofpoint-ORIG-GUID: DhSMjXdMt9-3rYjEc9y95KCg5oYryUsY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_09,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512060017

On Tue, Dec 02, 2025 at 11:36:28AM +0530, Kumari Pallavi wrote:
> DSP currently supports 32-bit IOVA (32-bit PA + 4-bit SID) for
> both Q6 and user DMA (uDMA) access. This is being upgraded to
> 34-bit PA + 4-bit SID due to a hardware revision in CDSP for
> Kaanapali SoC, which expands the DMA addressable range.
> Update DMA bits configuration in the driver to support CDSP on
> Kaanapali SoC. Set the default `dma_bits` to 32-bit and update
> it to 34-bit based on CDSP and OF matching on the fastrpc node.
> 
> Signed-off-by: Kumari Pallavi <kumari.pallavi@oss.qualcomm.com>
> ---
>  drivers/misc/fastrpc.c | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/misc/fastrpc.c b/drivers/misc/fastrpc.c
> index 6a67daafeaa1..c5d2c426fcbc 100644
> --- a/drivers/misc/fastrpc.c
> +++ b/drivers/misc/fastrpc.c
> @@ -269,6 +269,8 @@ struct fastrpc_session_ctx {
>  
>  struct fastrpc_soc_data {
>  	u32 sid_pos;
> +	u32 dma_addr_bits_extended;

s/extended/cdsp/

> +	u32 dma_addr_bits_default;
>  };
>  
>  struct fastrpc_channel_ctx {
> @@ -2189,6 +2191,7 @@ static int fastrpc_cb_probe(struct platform_device *pdev)
>  	int i, sessions = 0;
>  	unsigned long flags;
>  	int rc;
> +	u32 dma_bits;
>  
>  	cctx = dev_get_drvdata(dev->parent);
>  	if (!cctx)
> @@ -2202,12 +2205,16 @@ static int fastrpc_cb_probe(struct platform_device *pdev)
>  		spin_unlock_irqrestore(&cctx->lock, flags);
>  		return -ENOSPC;
>  	}
> +	dma_bits = cctx->soc_data->dma_addr_bits_default;
>  	sess = &cctx->session[cctx->sesscount++];
>  	sess->used = false;
>  	sess->valid = true;
>  	sess->dev = dev;
>  	dev_set_drvdata(dev, sess);
>  
> +	if (cctx->domain_id == CDSP_DOMAIN_ID)
> +		dma_bits = cctx->soc_data->dma_addr_bits_extended;
> +
>  	if (of_property_read_u32(dev->of_node, "reg", &sess->sid))
>  		dev_info(dev, "FastRPC Session ID not specified in DT\n");
>  
> @@ -2222,9 +2229,9 @@ static int fastrpc_cb_probe(struct platform_device *pdev)
>  		}
>  	}
>  	spin_unlock_irqrestore(&cctx->lock, flags);
> -	rc = dma_set_mask(dev, DMA_BIT_MASK(32));
> +	rc = dma_set_mask(dev, DMA_BIT_MASK(dma_bits));
>  	if (rc) {
> -		dev_err(dev, "32-bit DMA enable failed\n");
> +		dev_err(dev, "%u-bit DMA enable failed\n", dma_bits);
>  		return rc;
>  	}
>  
> @@ -2311,10 +2318,14 @@ static int fastrpc_get_domain_id(const char *domain)
>  
>  static const struct fastrpc_soc_data kaanapali_soc_data = {
>  	.sid_pos = 56,
> +	.dma_addr_bits_extended = 34,
> +	.dma_addr_bits_default = 32,
>  };
>  
>  static const struct fastrpc_soc_data default_soc_data = {
>  	.sid_pos = 32,
> +	.dma_addr_bits_extended = 32,
> +	.dma_addr_bits_default = 32,
>  };
>  
>  static int fastrpc_rpmsg_probe(struct rpmsg_device *rpdev)
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

