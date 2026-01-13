Return-Path: <devicetree+bounces-254722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 890ACD1B4C7
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 21:54:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C697330CB8B0
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 20:53:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14AA231ED95;
	Tue, 13 Jan 2026 20:53:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VlH/BiqW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bubgec4K"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C41F7318ED7
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 20:53:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768337630; cv=none; b=Sx9hJ/8Gon2at98Q3z94nHiVKcuGHXfcrF+RhOU/8RYjf47Ewnt91rfSEXtarKIgD7hzRkr/s7lUUI7j5zR1IMVfKECKIPd71qnLJeN/J1hQWuHbKLrqDcYzwaeHUOxyj1WLi4mnss9TeZM+orKct/9MKcHgrHn1n5bp5spDszY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768337630; c=relaxed/simple;
	bh=/7bIFzYyfl+31sKjQggmwqyoEPNR5xP3+nn03WYuGRA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LS07c5MLJGOl+SMWGllWUazq3FUPMJzy31M4D/gVHjhA7MXN/EoaLuaCLypjDtACyNdxVvGPrvYGkmu+U5C0YM9CYnbww8rpSpZuMOpyE1HU0F7tIaauktQksB0zTYTWOXLFeyC2CZ7uk1iMjWbNlw778qEKQpvxYxTnvkeArlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VlH/BiqW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bubgec4K; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60DH7UAu1120587
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 20:53:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0ZWU+g9QjzL0tqtxM6fgFHBpVcn+auaOkUPAWt/mGUY=; b=VlH/BiqWg9vWw2o6
	LfhC0Hg6qQRKgdxjBq6UFdRqXVK/hBcEfDLjf99DCEF4vb/ycdb99XBxdd/6B/ui
	11G9FCS0+1Haim9B/DmcM4RE7DCZWwXpescN577xB2mIzHkQvnYxRGBYuphRNySd
	vtkv+DQmMCqlI/tRLtlw4YTAFD/UHPMeemReduwClZLr3lu6kn0BsP9QL+e7HvL+
	ITecF1zT5kefyRd5PF8v34DWTLbJGU9g9Pw91Tnu2+pK7MyR94DiMP9WKBVgq7Io
	atGjd0Y+3tz83AEoOkyAhPe0KEl9SJOjtjSkmD6tvgP33TyTAzpRQhynxjC9XceP
	29fXNA==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnt63rr4x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 20:53:47 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-2ae29a21e7eso263158eec.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 12:53:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768337626; x=1768942426; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0ZWU+g9QjzL0tqtxM6fgFHBpVcn+auaOkUPAWt/mGUY=;
        b=bubgec4KKgmz+DWq2PG6lVQ3Hyp1OKAM9wCXKprCm+6n3/BLwQViGopY95sFEdbES/
         E3r9E79jfkFiZXuVuVf3Ju6bWShq1eKcWb3uCyIA1kYVkIFes4wt/9lWUGeT83wxBlPB
         WvxAgKifXR+wknRvYPFDFHyJw4hOt4hQ/dVYaEsga+2KoNN6g76ngxnsNm+hGy9iSd9U
         5kWouV12HQ5QRQ953KOwbP8Tr/R1Q4ByCLwPlcRdxMIs5uAydvYT0QG1HMe+amMoRMY4
         O4YJpiNDWq922wByK9hEkbf4YHHx0MRrX4OBZHP8ruHz6isRXFkZPNFfWbr4IgA/yPpL
         kKHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768337626; x=1768942426;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0ZWU+g9QjzL0tqtxM6fgFHBpVcn+auaOkUPAWt/mGUY=;
        b=DPvk/ozltQVwVgf4dSL7FPaOMFb1Im6Z7FToc4IzfNgETypSC1sBCfd7bsPXCq214/
         O1Nuc8mDiX7B329DdLNx/nxl2cnXfeufxWtdIT/wSukHBaL/qopruTcXMVbXOD7GGccp
         6tW8mcZVUKysSxRVfKeglXkvYgZQ0ox7rzNQ295UDI5+VPWp0pAqd25J30igwQ6eCVoB
         C+4wegfEWYydCCGp0J3iZqqHFP8EcC8iHnIsEtEIPtuqlOnJU7/LRsPfMbkYaYLJ6X0e
         lO/cILwEncarOh0wm+Tml5E+ykJUDkEnVFiK5t5FLcWVFYe5WJUm2ahkdISy9S3zq+Gs
         dJAg==
X-Forwarded-Encrypted: i=1; AJvYcCXAYQ+nDuDMZmL5LOglqhA3eMORhc2z3pFMk0qmdR5l0AqP4x7U3168+k47moKs7bR6ibTxI3v2nsty@vger.kernel.org
X-Gm-Message-State: AOJu0YyUZq9GhRctXrlakrzsfOSTymHXe9+dtcsd1IQcqi/uzHussxCT
	FG+LZI6ljPWNlTQ8achwwAcS0Izctmf4q0pcGSd44u7+e5MI58lqOoXiv553U6O4LBc87TkudFO
	/t4GM2OF5r1zSjVdAh4zXwP75bdHFRGNSqJUMIYjbOGO2DpdPNdFYpCPCv7g1wJpPnDONqwQ6
X-Gm-Gg: AY/fxX6mqtdztidfhexmolGRK/nVygydT7wDQ//uHcOPEDTSf/Qe4T/88J4eP3YvvtX
	18M+T+Exbt8XixG19JN+FhZyMNaUEZToKoWKsCiKmJEwgM607tEASTGHzkI7yb37veAVEeVKoHy
	ApKZGw4Dc1cXc2f0GuD7wLlYwtjcX6rnNb6uGLspdjbvXt1lt4v74igvEskc2B5WNPfKd5IWEU+
	X5y8iI/JM+K4WrwlmCpGbmRLQRpTVrI2VW3vnUztuvJRMFsssU1rqMXigXACFH47QX6aTPGem+e
	cbaR4GKcVXPInePNY9OD9b/5wPBzi4/gdOT5HWFlVjC52hBBhNketiBuIDeWDyEb+s14Jjv1ici
	0sj9yDk/Fe0vWu9PxLHv1ndsX3vrg2bOmVFqOQMIXTkTO3HImySjc1VHOAqrb9CkQBg==
X-Received: by 2002:a05:7300:5353:b0:2ab:9c11:4c91 with SMTP id 5a478bee46e88-2b486de3db6mr365846eec.12.1768337626298;
        Tue, 13 Jan 2026 12:53:46 -0800 (PST)
X-Received: by 2002:a05:7300:5353:b0:2ab:9c11:4c91 with SMTP id 5a478bee46e88-2b486de3db6mr365816eec.12.1768337625723;
        Tue, 13 Jan 2026 12:53:45 -0800 (PST)
Received: from [10.62.37.112] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b1707b21dasm20399681eec.27.2026.01.13.12.53.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 12:53:45 -0800 (PST)
Message-ID: <61801034-225f-429c-9f34-f80044506bf3@oss.qualcomm.com>
Date: Tue, 13 Jan 2026 12:53:43 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/5] media: qcom: camss: Add SM8750 compatible camss
 driver
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com
References: <20260113-sm8750-camss-v2-0-e5487b98eada@oss.qualcomm.com>
 <20260113-sm8750-camss-v2-2-e5487b98eada@oss.qualcomm.com>
Content-Language: en-US
From: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
In-Reply-To: <20260113-sm8750-camss-v2-2-e5487b98eada@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDE3MiBTYWx0ZWRfX1AZHTjucciAX
 aZh1YUNJAsSqgssDAuzCpyVn010MWEgYL2LV42AMb2LVTjjiosVB0kRdykcSlGZmqHsRXk4/eE2
 +CX48vyq2qLoTx0nu1kzD+iodCtnQktiNbHTW3EK4IoMXgn1kQ3ZaFstF/dAT9tgdKPsGPtEQfA
 zKpp9dvgBC5n6QudqA4CJ0RMvA88ibsvPwjhLg1nMXMl0L8slqe9Vdwsxs1Dz0/ad6J5BxxJeJU
 ZDvNm1FAooBkKEsM42V7QTo4y3Jny0Q9PX1V/tx1plj69LkJitGbyud8/ZbAT1R1dOyogJjqekM
 7OKxvmOFNpWZq0miFpTFVwBlEMMDySW/PToq6yPHFWWyj3ITIV/zdR12UxkX9xzY7LtYuFNygNM
 LpnK/dF6nvGF2zfGUYzseWjOvnAbEAEq1AN5Y0T7LyylTfu3sAUC5mZ6/cDaPdE2VcDlOVjjFjC
 JmkCQJhpN36QptJ1GXw==
X-Proofpoint-ORIG-GUID: P6HRGLzaO6yYfbFxGSWbUgkELenIVbUc
X-Proofpoint-GUID: P6HRGLzaO6yYfbFxGSWbUgkELenIVbUc
X-Authority-Analysis: v=2.4 cv=EujfbCcA c=1 sm=1 tr=0 ts=6966b0db cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=6gQvxzz4ZpawDXRFAvoA:9
 a=QEXdDO2ut3YA:10 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_04,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 bulkscore=0 impostorscore=0 phishscore=0
 spamscore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130172


On 1/13/2026 2:28 AM, Hangxiang Ma wrote:
> Add support for SM8750 in the camss driver. Add high level resource
> information along with the bus bandwidth votes. Module level detailed
> resource information will be enumerated in the following patches of the
> series.
>
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Hi Hangxiang, I believe some reviewed-by tags are missing for these 
patches. Can you please double check?
> ---
>   drivers/media/platform/qcom/camss/camss.c | 22 ++++++++++++++++++++++
>   drivers/media/platform/qcom/camss/camss.h |  1 +
>   2 files changed, 23 insertions(+)
>
> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
> index 36ff645d9c1e..56f20daeca3e 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c
> @@ -4066,6 +4066,20 @@ static const struct resources_icc icc_res_sa8775p[] = {
>   	},
>   };
>   
> +static const struct resources_icc icc_res_sm8750[] = {
> +	{
> +		.name = "cam_ahb",
> +		.icc_bw_tbl.avg = 150000,
> +		.icc_bw_tbl.peak = 300000,
> +	},
> +	/* Based on 4096 x 3072 30 FPS 2496 Mbps mode */
> +	{
> +		.name = "cam_hf_mnoc",
> +		.icc_bw_tbl.avg = 471860,
> +		.icc_bw_tbl.peak = 925857,
> +	},
> +};
> +
>   static const struct camss_subdev_resources csiphy_res_x1e80100[] = {
>   	/* CSIPHY0 */
>   	{
> @@ -5487,6 +5501,13 @@ static const struct camss_resources sm8650_resources = {
>   	.vfe_num = ARRAY_SIZE(vfe_res_sm8650),
>   };
>   
> +static const struct camss_resources sm8750_resources = {
> +	.version = CAMSS_8750,
> +	.pd_name = "top",
> +	.icc_res = icc_res_sm8750,
> +	.icc_path_num = ARRAY_SIZE(icc_res_sm8750),
> +};
> +
>   static const struct camss_resources x1e80100_resources = {
>   	.version = CAMSS_X1E80100,
>   	.pd_name = "top",
> @@ -5518,6 +5539,7 @@ static const struct of_device_id camss_dt_match[] = {
>   	{ .compatible = "qcom,sm8250-camss", .data = &sm8250_resources },
>   	{ .compatible = "qcom,sm8550-camss", .data = &sm8550_resources },
>   	{ .compatible = "qcom,sm8650-camss", .data = &sm8650_resources },
> +	{ .compatible = "qcom,sm8750-camss", .data = &sm8750_resources },
>   	{ .compatible = "qcom,x1e80100-camss", .data = &x1e80100_resources },
>   	{ }
>   };
> diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
> index 616ed7bbb732..2a53524dec93 100644
> --- a/drivers/media/platform/qcom/camss/camss.h
> +++ b/drivers/media/platform/qcom/camss/camss.h
> @@ -91,6 +91,7 @@ enum camss_version {
>   	CAMSS_845,
>   	CAMSS_8550,
>   	CAMSS_8650,
> +	CAMSS_8750,
>   	CAMSS_8775P,
>   	CAMSS_KAANAPALI,
>   	CAMSS_X1E80100,

Thanks,

Vijay.


