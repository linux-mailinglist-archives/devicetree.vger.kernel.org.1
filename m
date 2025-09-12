Return-Path: <devicetree+bounces-216426-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 47FABB54BDB
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 13:57:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B49C87A5AF6
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 11:56:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3880130CD94;
	Fri, 12 Sep 2025 11:54:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="F094I8Ky"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2D8430C622
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 11:53:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757678041; cv=none; b=Zkua4+vF280flTi7CVHICMt/MaVdbTsHz0y1bL+1DJmFHfDxc7rnNyllROIRrFeojXr+IHSYF3ITm1AW4ZEXr4ne5pERt7yib/ed/r2Funyh1Zh5Bzj6OLWLR8WJJwmQ82d3yfKodQpXAVw22PjdBBJ2sfj5ZKLxQglKqG000Ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757678041; c=relaxed/simple;
	bh=wph7RSmz1zwsGALV+zh23s9XdXCIIpVfa7QUyi66nFQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DkxViSopEUFdyqFWFQuxgDXKYwHMKM3KNcvFuqc5ofOr9Z6zw5Miz2Bh7IZHCJtr5Qc4t28fsAuMoz04EbfegQJfF5en6aJhkast/28iVY3XrXkhZ0y41XPVoekJaaN8NzJhU1LTx8auUFuKjkZoikMAimCkSDopLfu5eDhyLEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=F094I8Ky; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fFAd001312
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 11:53:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4BAbR0VkBTtMW5jEdUFfz9c4NlZZZn1XOV6N98HhO2c=; b=F094I8KyfbQuDqu/
	nok0Obhg9UzGh32wFsjO7nnXlM6e85X6uOGWukNleegPBr+QBvYzbR3ovtvzbs3y
	vDOGr8GFsDBhAEYZJBeNAgNr3xLizxvFdYPFeCGM2QKnsdNSHofJnECvzxum7lfT
	XOHVN6qh+sxB0TLFc3O28lHnWRNddr3Yigi0b9A5eY7/WKP1gkcdEHuiaCTsGFkw
	IXwqhGn1s6FOXlJmXdxk0pakwqS5TeUPqv+VUVO8waTeGpXtD9diy2gt/1ooi3JW
	CbgGhI0VkMoxluSvdQJLAlVcCH8sbOX0bvp7AB1EGg7fF8HMCGQ09fqPjJxA+pdF
	jtIZlg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 493f6h6hk3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 11:53:58 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b5205f75e9dso319418a12.2
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 04:53:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757678038; x=1758282838;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4BAbR0VkBTtMW5jEdUFfz9c4NlZZZn1XOV6N98HhO2c=;
        b=tsTzIeaYQqtal3bWEBOmB9Ofp1OJoOKRky284ADHgEpQp9gNKF/XJyh+Bpi2P0hLZa
         YHJO1ncQG84cV1Se6JuiPbFU+P+jdm8Y+J2W4EPiwEEl7BUYdgNgo/hz/sBUhesx2cja
         qIph5k79fOIoKRkSBlz4x1lW/kToFm8zjHlTAsEzlC4/J5H9t7wVKdJ2hXD/4rxPcwv4
         dk3cddxhF1oxKxt/Ppmy4i9i7DMordJt7q0T7A/hgzmHjPi7Z3QyYTkZZVDvmgOxdSuw
         WhnRizyUU9yImDzKT+UL/U+M2i9HrLJ0C/Ns11qyRI4AQx5aGH03S0GGyXdutK+Zxo8/
         cOJQ==
X-Forwarded-Encrypted: i=1; AJvYcCVoTIUD1tbI64Sah3qFt7Llw95hu+XLXcC0A7UOA8XaEYbEjx3YvJsIuWu2KiYLcwjr0sKkEH34kiua@vger.kernel.org
X-Gm-Message-State: AOJu0YxC2cCkOUmsqiKOGCCEP/Z3r17yD0Ci4/vNd9LlzYzY6NjpJ9KR
	crpnF2BdzdAk5JJqS03irKnAccCAnwJOpqHPYMbn+8ShT/7+hlzU+Ca/9jTOLJXEf8me9HxGrbs
	QJBKudTKNfQLALiyaTLmbPQKUJkO0+LwFPa+9V/rD7ILajGS0N2oEitYT/vC0i79X
X-Gm-Gg: ASbGncu4odzsMi2wFrJ5FBSSGdoIRfrxMSKB4esKH11TKabJs0ntQzD4y4mNk1ZfXBF
	ct44GC7RboVqZxG0H8CWgifU1PAgZpw+oeLgDu0Lug5TCWS5dIxpKYd5J6DO4J+kq6nNP25gG2i
	g5J9h8nTEo7KyOlwjDhYehPuZR6wTKq4hidSxNGPmPCSMhQiW8YK/kpZrjbQ4hTMS6JrsBkTyoJ
	q/oO6fd3zZwB3WYFy3uY/vg8a++xI5LcZNx51NnMnZXv6U1z+/I0w5pO2nSKIVKnFoa7BzxYSHV
	/Fjl3tIJPPWRza8LmBhgcEV3twbtx4+QDQz7qVxdlq4XSWsw/JU4pUt38jb5pC+NqnEm/K4Ha+9
	5qqu4NLyiIFgkT+4ViApfDyk7v3PgNQ==
X-Received: by 2002:a05:6a00:181e:b0:755:2c5d:482c with SMTP id d2e1a72fcca58-776121ec346mr1686418b3a.4.1757678038029;
        Fri, 12 Sep 2025 04:53:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHt3mxQMkv5DuTk0o7+8kWj/nU80uRbbQWBwndCE/G8QbqHBZ/ES9haTMqTr8/TVjovNYCW4w==
X-Received: by 2002:a05:6a00:181e:b0:755:2c5d:482c with SMTP id d2e1a72fcca58-776121ec346mr1686395b3a.4.1757678037556;
        Fri, 12 Sep 2025 04:53:57 -0700 (PDT)
Received: from [10.133.33.174] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77607c473b9sm5342655b3a.93.2025.09.12.04.53.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 04:53:57 -0700 (PDT)
Message-ID: <d9c55e72-0683-4eb3-a22f-015a799e2c79@oss.qualcomm.com>
Date: Fri, 12 Sep 2025 19:53:50 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/msm/dp: Add DisplayPort support for SM6150
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com
References: <20250912-add-dp-controller-support-for-sm6150-v1-0-02b34b7b719d@oss.qualcomm.com>
 <20250912-add-dp-controller-support-for-sm6150-v1-2-02b34b7b719d@oss.qualcomm.com>
 <budeqnh65mcmtc5rscbgvy2nz3woptxnht6sddzg7jhttsnx5f@bwf3kyvbrfaj>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <budeqnh65mcmtc5rscbgvy2nz3woptxnht6sddzg7jhttsnx5f@bwf3kyvbrfaj>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: dVXnwXwtmvL5EvhnnhukHdDnBcLGLcJi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEwMDE3NyBTYWx0ZWRfX6BYqWrPy1lxB
 cK49BAopll5CPLEbX2CYORV91gNF5H5w7anJH/tqKYVLdkudnY1J/5qQ40RWn+Q6FdMT6pEV+8g
 1Qy892yJGUbmwth/AY8UQtii6Yp2fsXUElXjdcuKjB18HnjdJj65rGTSbJkPFDvf+MkpcLHRpE6
 zwBuD0/nGD6nOrDcTiJtYpUU0pbH8UElFiwQrIRwgeNrEYzo1Z0DMgKHX/ELNo8uGUVo70eOSxM
 2lAk+/jGFo4zttz3CVJ2kI1yFsDWyKq1Vjq9xH9+mWUPTrpiqnGZ4JZ3fTi7qn07yiU52S545V9
 PJfn0Ly2Ljlw96XK+WSOvw8UqvDgsJ0SLur0Lq6HD1v7hQsi0ukzjUfxugLiztpE00Cgcd+gqik
 mKrZOgEQ
X-Authority-Analysis: v=2.4 cv=WPB/XmsR c=1 sm=1 tr=0 ts=68c409d6 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=NvjRSh8cQ8dmTSQMK6gA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: dVXnwXwtmvL5EvhnnhukHdDnBcLGLcJi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 clxscore=1015 priorityscore=1501 adultscore=0
 bulkscore=0 phishscore=0 suspectscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509100177


On 9/12/2025 7:47 PM, Dmitry Baryshkov wrote:
> On Fri, Sep 12, 2025 at 07:39:17PM +0800, Xiangxu Yin wrote:
>> Add support for SM6150 DisplayPort controller, which shares base offset
>> and configuration with SC7180. While SM6150 lacks some SC7180 features
>> (e.g. HBR3, MST), current msm_dp_desc_sc7180 data is sufficient. Listing it
> SM6150 supports MST as far as I can see.


Yes, but since msm_dp_desc hasn't been mainlined with MST enabled yet,
I went ahead and submitted it with this commit message.


>> explicitly ensures future compatibility.
>>
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
>>  	{ .compatible = "qcom,sm8350-dp", .data = &msm_dp_desc_sc7180 },
>>  	{ .compatible = "qcom,sm8650-dp", .data = &msm_dp_desc_sm8650 },
>>  	{ .compatible = "qcom,x1e80100-dp", .data = &msm_dp_desc_x1e80100 },
>>
>> -- 
>> 2.34.1
>>

