Return-Path: <devicetree+bounces-252438-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E20CFF29D
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 18:43:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 327E632D9468
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 16:30:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C51E35FF40;
	Wed,  7 Jan 2026 16:18:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pEqxtVM7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="N58qm9DT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A371A341077
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 16:18:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767802737; cv=none; b=ukHvRPajA6LstLDgCx6u7t0TVwQ91JjyWrISvWkJvnVojGvyflECrcH7NQTRldPebI6xuDYuPsE0zU5GGHSbp6QubfHi6UtbVKYcI+cGaWkSjMe0uG6CD0QwTidrnn6Mb7REBSf9ZW+x3KckSWtmxukENL2jgXrI7+7U63NdXww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767802737; c=relaxed/simple;
	bh=1pDR5v6cY7VSTmp4cJaRlX88gPqHH4JLmaZ7icbCC0I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HYCl/mM7uJM5ir7FHMjeX/AD9RwH/VtoheUQqSHX8XiWYmn3xCZbZPu8dqlsmy+L50fp60C48KNH5Uh/fuMLkLLOkRR873ytgWmLLlgJQAeW89cqZih5HfRfuDs70dsLet3q8Y1qL/SOnLqT0fh4JiEPCJEU656ZQ5ulwwT4+Jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pEqxtVM7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=N58qm9DT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6079efDn2988464
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 16:18:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=HwZBs/pI4tqrM+YdLcnJrTnM
	DuBq2S6J78a0HWSkjHk=; b=pEqxtVM7ihUy+zNFC6MGh7WxN7cbgbo08zA/hynY
	4qHlzmqRIEP0uOC/QZOS03kyXGH5cV6Jg1Zs7DorHDtEsn0pmksseXi9TztcuRcz
	HFPBO+TTEU1Gnn6x5m4n2gwHD97Qb0AYcPFYKpv/prYihzGuaHkWbGECD3AwA8YM
	hiuQ/x2DQg9FmXWIk3V+jB8rYHeA3S2OhQBI5+7mslQFkWvaG2HKPwWA4rmbB1Yz
	Ra7FvnhBpgzwyhxD2jxvUV4l8utAzuJszDeEqpfnZabgaz+OIHGPgEWeXvBGAeMf
	e1rQPyb225OO+q0LrD2i9CW+DPXQ2nljlVewAoQl6AikJg==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhn2ns7rp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 16:18:45 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-5dfc092492eso2111641137.0
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 08:18:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767802725; x=1768407525; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HwZBs/pI4tqrM+YdLcnJrTnMDuBq2S6J78a0HWSkjHk=;
        b=N58qm9DTElmWlFTUW29T77LCuMGqK0gS1noMO3ChRybzH39bdIahIAIa0QihFVNUQA
         6j1eVU6zd1O1ZpVbHXTss8ar8vEgQ2g68AHTyufxcMUoHusuuFM8tCjafkU6eRj7o+Ky
         z0wOLcPCEqVYEt82kdZ4BmBeRfwH7reZ9M53Fe8xvCceXZ3/T9GK76e8IFYTj5F1bvrd
         9U93DQHC5UO1Uj25wV1+6Q6jTDLqbrXp0BwLs7DaTmXGvpBH0WZNMEA765xF/UBzQ4Qt
         RaHfxkhw4dfZf/rsSzSvWL75m/SzqPlnPHNS/TgBcwMhmjrkwSpRRp5khyi+1Zd4jXMj
         8Dbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767802725; x=1768407525;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HwZBs/pI4tqrM+YdLcnJrTnMDuBq2S6J78a0HWSkjHk=;
        b=kwdX2MA0P+Nl5dBve8a73MAoYIoHcT4IrOmD0Zs2a7wnAzXVZlbYjTYgM0wGxmXgXT
         c9i7BhWkrC6NnA6E27iXF40LHOMK6cO4iqhFCOa0WkSz3gJZujRm/iouQfL7zX5hatlj
         G8lJbk20Dep7Fu/cM1RDcEH+ImCoQe04Hoii70VufES2hEs2yhpLHZp1kmdKgiZiofn4
         z2Zup92dczRGOWTT7mRXr6tOFtwx/Azunsovx9xtBZ47thpS1Xr7ewq3Xxbnzyle0k6X
         4FEtGD3tkPdDxyMpvHscqOo/kTm2siUrLoPDIhaxcbPbXu79w7iNRfkXz+T4UjOztbs8
         zyug==
X-Forwarded-Encrypted: i=1; AJvYcCWAyPQH3gNpcU7M9aH/tAoH6kQa8fVQHCP3j686b7Lv5VV6ynmdj0YjMN/VCvu8WdQRGhtAd4uQhkAR@vger.kernel.org
X-Gm-Message-State: AOJu0YwsteENPyRribpQUYMSDIs1vb7DUy1xAzFyh+sCcDf+KMHS738m
	qi4IemNhQI1mZ3MvwpycjzogAqDnyiKXP/rwbczTjDMG+5WgzCoEvq8HvLaliX2QLXsUdurSkRo
	D68HTMS1W4/VnoupTlc3e7EatgCAEPJF4/ffL2YxcdPYthtGw42IL4dwAbXzMfmBn
X-Gm-Gg: AY/fxX6GAMveLDCd/GQkY3gmuLoVelDkXLcgCUEVJ7IEHW+/0Tw14gstA85NpD7XNOG
	EVxpz/m6EFLiuJtn/TWtg0VzKkG2z3IruOzITkcYkyGtc1sIQ5HGKwIgzBJhCosrZ7rLExJ48yy
	UNXFiBnTUVeDQnqYs4DrTCJJdghjRZZXDFI5+rH3sGCzHOvT+rb8dyiwLbnOr33i8FnkywQC9P/
	OzNKEhDEly7RbjlLgzxgP6FvFNbZ1ppKG52f1QlY5JT/1ztY1tZyeV3O0KEEksxPsV6GjUap/i8
	NxtSrhs5goa+x19UsF9/2XRhx0XxeNm9OztTusiBxSkjfbSQjKuwrVWK1KUFT1NlykKjHf7UXIN
	Bm4pVFNwg/cpGHl0v5vdm4NA9jj9KBX91srWHSqNI9cpTEqxLay7clEJcjIdBv8y2f7YmVfn8Bb
	F022qh35tbBnDjAEQ5w3BAzYo=
X-Received: by 2002:a05:6102:fa5:b0:5df:b2cd:12b4 with SMTP id ada2fe7eead31-5ecb694854bmr888621137.24.1767802724703;
        Wed, 07 Jan 2026 08:18:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGHB5ZRn1QY/K6daz0KlPYsnYXAnz+5ET9h4x0F463Jjq+1VY5FCZCLE1JA9Bad2LVDmCS3+A==
X-Received: by 2002:a05:6102:fa5:b0:5df:b2cd:12b4 with SMTP id ada2fe7eead31-5ecb694854bmr888602137.24.1767802723486;
        Wed, 07 Jan 2026 08:18:43 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-382eb8a9c39sm12016941fa.23.2026.01.07.08.18.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 08:18:42 -0800 (PST)
Date: Wed, 7 Jan 2026 18:18:41 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Taniya Das <taniya.das@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 11/11] clk: qcom: Add support for GPUCC and GXCLK for
 Kaanapali
Message-ID: <lsvn2xjz6zxefs772tg26jg2cvfohbjcetrlxfn7mtq6ag5aig@ep6ofq4mrfrh>
References: <20260107-kaanapali-mmcc-v3-v3-0-8e10adc236a8@oss.qualcomm.com>
 <20260107-kaanapali-mmcc-v3-v3-11-8e10adc236a8@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260107-kaanapali-mmcc-v3-v3-11-8e10adc236a8@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDEyNyBTYWx0ZWRfX2kD+uV8xMnGw
 aPRn1tFlAF/rbuTprFXN4gdH5LijAwM8yHW8488OvcIjUR7KEAs00uxPInNea1UGvRm6jxrCxcl
 1ilnqXNtmmASQ37vV1suaeUKcPrw1WkFOe1jHkIgMdrCFU4kbD41qY1nz5l2icMvpfwUOfqq2B2
 WWh1NrvS9I/AFrpB7qJNtwQfNKuJ272pAEq57zhNSUFa+0s0C5gMHv3UFdodFnB5Wf+azVljjJe
 D/fxAP55SHifC9iMHu40efqXC7lmH8QwzfqM3EVgtfhfRuA5vGq6s11NGMxZoUKEE/cfU9BQGw7
 S7PrQKSkDxR7Tl5+Y+ivfPw4TzRBeBu/nsBmK+BVJwB+CKwW5ofNkmRrCVlH0n5kgesMT8i8184
 aD9Ijq+y/B35PY+VwYTne5A4HjMzbiNqv92YRfGCNdkuP6rJUriqtH+PsOxVMOhz4AFA4hbShKR
 zq0CbdXAH4jWSdf65hw==
X-Authority-Analysis: v=2.4 cv=CYEFJbrl c=1 sm=1 tr=0 ts=695e8765 cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=-momvpiiut8LGs_r7JQA:9 a=CjuIK1q_8ugA:10
 a=crWF4MFLhNY0qMRaF8an:22
X-Proofpoint-GUID: _rMaCdZ_d-OIKMD_Jd6Ab2uHTwdxKnv-
X-Proofpoint-ORIG-GUID: _rMaCdZ_d-OIKMD_Jd6Ab2uHTwdxKnv-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_02,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 suspectscore=0 clxscore=1015
 impostorscore=0 malwarescore=0 phishscore=0 spamscore=0 adultscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601070127

On Wed, Jan 07, 2026 at 03:13:14PM +0530, Taniya Das wrote:
> Support the graphics clock controller for Kaanapali for Graphics SW
> driver to use the clocks. GXCLKCTL (Graphics GX Clock Controller) is a
> block dedicated to managing clocks for the GPU subsystem on GX power
> domain. The GX clock controller driver manages only the GX GDSC and the
> rest of the resources of the controller are managed by the firmware.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/Kconfig              |   9 +
>  drivers/clk/qcom/Makefile             |   1 +
>  drivers/clk/qcom/gpucc-kaanapali.c    | 482 ++++++++++++++++++++++++++++++++++
>  drivers/clk/qcom/gxclkctl-kaanapali.c |  76 ++++++
>  4 files changed, 568 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

