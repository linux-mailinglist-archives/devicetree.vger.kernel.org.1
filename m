Return-Path: <devicetree+bounces-200105-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A5B29B13631
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 10:20:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 705AE7A5CB2
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 08:18:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F153B22A4D5;
	Mon, 28 Jul 2025 08:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZqJ3vKw/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E11225A3B
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 08:19:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753690797; cv=none; b=AnQhIMh4t775vswV9AXPG0GPCHJ8iWIffRoRhSvLCMksJyuHpeyTthlug7oTbGiAkTRRWVzaOatuZvoLVp/nDrxYY82CZ/x7sVqO7rv1lcChd4Sg+vdBdsL87CoX3Cizf4oUJeisxl+IBokn+rgS5QVnAIxJJtvsFWf3TypTsMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753690797; c=relaxed/simple;
	bh=k8n0r804RPCue8KVUZzax0URN/CldCx1tfSkQPdnc8g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Gvm+tOTJVdccZxNsyel4npmU4mqfzriK/Y/iyRzso5fCR6NWTp6/WGVVhzBqjSbtNzFq+POebrFqpOKoIDmoQG4lC4JyvgtuZfWAJ/vTo/qUSttKlhulrm1x5+Qsle7QjrbkT4kEbVdV0HCLgGpPxeibSWkohcX2caphK+W3eqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZqJ3vKw/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56S4rTie023321
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 08:19:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	c3/V22c4H9/4N87ToxYjpj2YTnx67TDaYm5Xeu+qWco=; b=ZqJ3vKw/3GvY4XkR
	u3CP1JJjp9JwcIxipYoHGHzZEbT+MvMBKeBaTicf7yJuUihKYUhTyE2SeRM0bA4i
	hht87B7LURdJ1xM0YJ+76Xn1V7YNMBA8ZTDupifYtDmK4sTM6vw+pZAVjHfwLRuJ
	sJQzQXG79WLFWma44upEaDxFSrKYEIhduEUkGSbeAftU1HlXVq+Bk30iF+YV7wQx
	XmN3ssE54IOxsp45/O1nmgVeLCoXXVMuF/t0lkWiDan60me4LLzjz7+wVxGsRyPU
	2ycHzt++gelNTdIQUJe3wRptMKuSZ0kwRV2IBn38EQg3yrmTG3+uR3+++n3PAVZG
	K/RKfg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 485v1x95ws-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 08:19:55 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-749294392e4so585852b3a.2
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 01:19:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753690794; x=1754295594;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=c3/V22c4H9/4N87ToxYjpj2YTnx67TDaYm5Xeu+qWco=;
        b=Ud8hv8CZC74tibJiKs0SMAvlxiLxzbpNjS/rfBDyuCKIYCwHd5s9Z3ceIsN2rkwQ1r
         0jLvkoH42EroI8BY2xKgtqDbnAagu0rCxezE58USwd4KwvfZ8Y6faZGMIyIQzI6E0GHr
         885/8FKUjIIgX5aERARWMNIIsh9sFEMp2qtFUU91r6JJbaReCjtaFpDA4RAHM/vDLyqZ
         3JwXDiP/ASIJ+mDCbB3Zmjz0VkueCnt3DuepovqyOBh/S9SoGmA59M479HVf/ssQb70d
         GJKqWSdum872Zn5TDZJ6nM8kWqzIpngrDIrquDrMcMab3CLZi3YEoquSWRo4DPmLss2b
         VKaQ==
X-Forwarded-Encrypted: i=1; AJvYcCWf/tg244W1ggmtBTeHbcVinBCwHlDf3f4T2gPTkhDX+FJIxaXcjP1WWgSjCLqR4fTwBASGvdsQoIXV@vger.kernel.org
X-Gm-Message-State: AOJu0YzH+5FtU+TvZKlqY7zBYJM3xl3RvCWTt4tFpf++/GrBkhD+i1/Y
	No5lhbGL025jutilMDRg4ixtBqfEjymYmpCbDJDMhBxRbkcJ/hYFXWQepEkZklorXb8n8x/TvJF
	QKRgXH8bNb9EtWYbVxSauOCq7bnu1XV1y4Lb0IaV+ZTogMp4zFta6IfX6dGpNong1
X-Gm-Gg: ASbGncvfAh/GDxBVcxCkq19NcgxsBBRT4B8jXj7G2gRl2EeZA/okISD0q2yQZyLfm4d
	RDsmmV5P+I9EbIAXz01WeBuiGIz9gVDZWB9wAtfO1J3Hlk45P4IDTO/MlXfZ32HlaNBGRhUJrWO
	Tip7a6kDU9l26JYTb0dNc3aLi2rZU5gH0MV4wGaX552VKgvp4LzIif/7xLaZG1fNNomWIBCVwHR
	4+RFT4G2C9qXlhM8WTiub+oChQxR+k0du5aGpqfvRA9GD2q1gn5qlyx9RcO7o8TF7tf49Wjjsqt
	ND8+FQIqIWkknJKN73TMMmRCrGZS7F0sAakT/brmq9FrGnedmujl+aQqEHqt0eS78rAxMF4Euf+
	4V6hRC5z+BYaMOiN/+AhSkkk=
X-Received: by 2002:a17:902:ea0d:b0:240:11be:4dbe with SMTP id d9443c01a7336-24011be58b5mr24214835ad.8.1753690794483;
        Mon, 28 Jul 2025 01:19:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGBHlvf/+jz4Co0OGrxgZgJllWx8x018fZVsC0zcR7Ey8G6AtlwbI1UqIOOzans4FRj4G1N0A==
X-Received: by 2002:a17:902:ea0d:b0:240:11be:4dbe with SMTP id d9443c01a7336-24011be58b5mr24214525ad.8.1753690793917;
        Mon, 28 Jul 2025 01:19:53 -0700 (PDT)
Received: from [10.133.33.112] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23ffdd687aesm28379815ad.67.2025.07.28.01.19.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jul 2025 01:19:53 -0700 (PDT)
Message-ID: <c3f191f1-1b83-4284-b164-64c5b3e3fd43@oss.qualcomm.com>
Date: Mon, 28 Jul 2025 16:19:44 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 12/13] drm/msm/dp: Add DisplayPort support for QCS615
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        fange.zhang@oss.qualcomm.com, quic_lliu6@quicinc.com,
        quic_yongmou@quicinc.com
References: <20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com>
 <20250722-add-displayport-support-for-qcs615-platform-v2-12-42b4037171f8@oss.qualcomm.com>
 <bca68e7a-cb36-4903-bde9-15cb1945c71e@kernel.org>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <bca68e7a-cb36-4903-bde9-15cb1945c71e@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI4MDA2MSBTYWx0ZWRfXyMHKsB6p2Xft
 HmBIRtGOxiGllJ8bP6F82MJts6aMaQoVjr8paNULg3PZfIGkQEiqI0UG8boFlgpY58frwT+DKcC
 Y3+l9vScx8YSxM9+VZFmTZ8ggthHHXsbebKEcoqPFjJSipzmMfq8wUZJw+GcZzjhGczrlNMIyb2
 Xi1aBkQb/HFnn+k08UvJjuSO0TkaaVxEZFin7WRaGy+8uxzvichz9QJQHb0hsUrtOTkOoKjrnby
 ODUlgKg4pfXbF6RTdHFs8PTJgbYug+R7qgqznREorhJTtplTIyHrMQ1+KxS/tvrhM8pzrnoQrz2
 HfeHRSh8cBwhI+EJj8JoMhMx3CnnpNBPTfi2BHYgfBviF4N+60ocnrEoA9D2gyunYtf2EgcWYY7
 11rVZe6lt56fDclWGpHbRXewttvoA572jMsv7PHoxKiUjpUSL9hREjwqSAwiAudQ8AdDsfyz
X-Authority-Analysis: v=2.4 cv=JKw7s9Kb c=1 sm=1 tr=0 ts=688732ab cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=E4FQgNMW2-BcOtG67-8A:9 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: z_G1FSEcLE3DpRw6Wokvgcnb6NojB9ax
X-Proofpoint-GUID: z_G1FSEcLE3DpRw6Wokvgcnb6NojB9ax
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-28_03,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 phishscore=0 lowpriorityscore=0 bulkscore=0 malwarescore=0 clxscore=1015
 mlxlogscore=999 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507280061


On 7/22/2025 5:21 PM, Krzysztof Kozlowski wrote:
> On 22/07/2025 09:22, Xiangxu Yin wrote:
>> The Qualcomm QCS615 platform comes with a DisplayPort controller use the
>> same base offset as sc7180. add support for this in DP driver.
>>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>> ---
>>  drivers/gpu/drm/msm/dp/dp_display.c | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
>> index d87d47cc7ec3eb757ac192c411000bc50b824c59..ddb22b50490035779904d4cab20e2fee7e0f9657 100644
>> --- a/drivers/gpu/drm/msm/dp/dp_display.c
>> +++ b/drivers/gpu/drm/msm/dp/dp_display.c
>> @@ -196,6 +196,7 @@ static const struct of_device_id msm_dp_dt_match[] = {
>>  	{ .compatible = "qcom,sc8280xp-dp", .data = &msm_dp_desc_sc8280xp },
>>  	{ .compatible = "qcom,sc8280xp-edp", .data = &msm_dp_desc_sc8280xp },
>>  	{ .compatible = "qcom,sdm845-dp", .data = &msm_dp_desc_sdm845 },
>> +	{ .compatible = "qcom,sm6150-dp", .data = &msm_dp_desc_sc7180 },
>
> So devices are compatible? Why are you adding this entry instead of
> expressing compatibility?
SM6150 uses the same DP driver configuration as SC7180 via msm_dp_desc_sc7180, but its hardware lacks features like HBR3.
Implicitly relying on msm_dp_desc_sc7180 may cause compatibility issues for SM6150 if the msm_dp_desc is extended in the future.
This is consistent with how other SoCs like SM8350 are handled.
> Best regards,
> Krzysztof

