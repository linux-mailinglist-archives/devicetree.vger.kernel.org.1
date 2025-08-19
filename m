Return-Path: <devicetree+bounces-206257-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 06115B2BD4B
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 11:28:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A526C5654EC
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 09:26:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 736CC322547;
	Tue, 19 Aug 2025 09:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ICYEgLv3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C817031AF27
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 09:22:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755595352; cv=none; b=dV0avAOsMNjhtGNvxX3Gq5H3H/LdZjkQd6GKx6N+8l7MKEaFP3ehSqvu8P2cL6PGGdsavmO9iNslv9UFjsbuL6jfCJ5vpQw8HlYGlXXU0cB5tFbPVIAOUy9Kz72MOdJKAehdiN5A4hOyTnPXo88Oj72m2G5NVZmW1UcLzqSLKTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755595352; c=relaxed/simple;
	bh=7RsH3VxpWgwtXG1eVErOEeFihCXGuj9RHQipyC2qkp4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CaLlLBXZNHV7JBVa/moQ8cgJlnORdfg2svND9Jcmi2oh6G512MRCgON+zE4JmysOyOf9+ZZCrQ8fGcL+ZKG+NDfu7oJWNIx9pVq3lwWD0UwkiC6funatJLNy4bU86AS7OqQ48b7RgtT4CpC4f9oPw8hOhP5I86vP8IwUlfQkWdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ICYEgLv3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57J90b7g027047
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 09:22:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KczFnqDzEs+8Gb7pivRJCslUzgY2ZS98+cXZUjdh5lA=; b=ICYEgLv3ITBdFBKr
	uvXfh7N/Y4K6UR7I6z0l/LLT8+qtcjGj56uYEbq8KzkijCu/+lZLh5HLBPmJ9YPY
	qgY4FP9o4zHREFtktO1RLFdhWX7WBfdm0VIbngG+uL5HgJx3HzP5LK+ewwd78dRF
	L/31KnStgx/WI18gKdrrPIUoM4KvgRzsmlzbs7Tmnbd1yRR7Re/1opsiIw9SOeLV
	euufvIQBHHwalR1X2pwXX4232jC5kqVJNcYcRaHeJCfWsSRbuuObelSWplReXcYT
	Jt3UPSB/VELqWlYzONXnCJ0zGub0iQCAAOeR7EBXfiZKXAczIgL9ZCg/dkWm1zXU
	70c/YA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jhjyfy90-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 09:22:28 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-76e2e614889so5088535b3a.0
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 02:22:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755595347; x=1756200147;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KczFnqDzEs+8Gb7pivRJCslUzgY2ZS98+cXZUjdh5lA=;
        b=B4nfHKd3gcb/2Nw6eoWWWk2sAD+JiqmDKN/Bjn+iH/lvldWrH2Zjn176LjKJpIyA4N
         d3r7LjofGtzpg98T6lFiNzoSRm+XRVU+JB7ScqnPg6CrvifqGr89ER7j9uiU8gLfw3tP
         k+9uLEa+CjUJ70pN7vZTyvL0/oLKGmaTvySqQuBdRnQI7aYttX5uc4ww4Xv8NSzn1DDc
         OramsKlJ+qta7D4tShk/TPK39e5i39lcNHa2U3omsId54MaL2KVtfnr7YjHte8BqHuiz
         ti/meFoF+EktDil2BtlyxAZKFeX+9Ln7I0EsZQN/Um5mHpv4WHOtySAHlyx9unz/mWXS
         7uBA==
X-Forwarded-Encrypted: i=1; AJvYcCVp6A1ob1Lz5U0ggiwR36J6s0USEttDxXMFCpsh3pYe91oz7Lt62sIei2TzrOUMvGkg5otDbEnM8wwF@vger.kernel.org
X-Gm-Message-State: AOJu0YzXaCyeFdT2NWAWpS08K6e/xfWr+eEmvZj1QnA+oHe+vQqiYiYY
	9fMftW1lOQ9ewpHuKQ4ojDZN/DXmnN13N917RFHxAEaZE/cPbG1l1/9BkwBIAGNVcZ45+ZvT5Ds
	dN1qQG/jaj1g1iwcOhvakdvhjKNKSZOiw06nChDmYTd/AUwhKMvRUI3+hFapPGEVB
X-Gm-Gg: ASbGncuyM0e4QHF4dMLephNAS0RjeeY3htQQLfo0IKkjkbpA3uHURtTHcet9dvf8adM
	esa9h4+5P5LX4JRF1A0zOoeLWhIaoLwjmS92sTDL5KcBFhklJyqqlVCRfl8aWe7P6ol27RAHRJz
	boZD/4njY1549I2T5ed6KoeQ/eCjMslv01+crwOFYr/zT1lJiocmFE2caa18uKrX53SrSDHe5RO
	swYmp3btuwIr5fGEqFHR4EUUJStJE11wpMoZTR8dar+FLcBwbnATKBocXAP5H6MLckLZujCSpj6
	Qxusrc1h+PCkyQm8EFH4X3CBaVRB5VsUtLrgLmef/rFHlyQHXIFRX5vUfq39B3A5D5bTm+Ehq98
	kZdncUdNrJAukq/lbgiKysJnBKrK0yA==
X-Received: by 2002:a05:6a00:3e16:b0:76b:cae6:ee8a with SMTP id d2e1a72fcca58-76e81102294mr2238139b3a.12.1755595347387;
        Tue, 19 Aug 2025 02:22:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFphi7ddJrn4OsHLiNEW55tJtpl5xzFPqO7FIxkJjqz5ACjMc6dZTHp/btM76pdxRLSv7Tocw==
X-Received: by 2002:a05:6a00:3e16:b0:76b:cae6:ee8a with SMTP id d2e1a72fcca58-76e81102294mr2238112b3a.12.1755595346893;
        Tue, 19 Aug 2025 02:22:26 -0700 (PDT)
Received: from [10.133.33.87] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76e7d524c95sm1906515b3a.81.2025.08.19.02.22.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Aug 2025 02:22:26 -0700 (PDT)
Message-ID: <20e7790e-6a30-4301-aa50-db180ceeb7a8@oss.qualcomm.com>
Date: Tue, 19 Aug 2025 17:22:19 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 6/6] drm/msm/dp: Add DisplayPort controller for QCS8300
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
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
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250819-qcs8300_mdss-v7-0-49775ef134f4@oss.qualcomm.com>
 <20250819-qcs8300_mdss-v7-6-49775ef134f4@oss.qualcomm.com>
 <brculyyu3dgc5nkj2cuzv3jkjzcouljy5o4jwr6mw33r6i7gt7@j6ur7yvwmky5>
Content-Language: en-US
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
In-Reply-To: <brculyyu3dgc5nkj2cuzv3jkjzcouljy5o4jwr6mw33r6i7gt7@j6ur7yvwmky5>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: R6AhI0ckkha7KlbfI4BjBTNYt08SrRQP
X-Authority-Analysis: v=2.4 cv=ZJHXmW7b c=1 sm=1 tr=0 ts=68a44254 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=ZXt-rHCGnEisyK7TIFQA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: R6AhI0ckkha7KlbfI4BjBTNYt08SrRQP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDAyOCBTYWx0ZWRfX9B9PPe96r2uo
 oFpSuQT9JfaZ4Y2D8prHvhNMGPyGWd+D548FJV4hL4sOxJ9YfLVzNR9B9WNNkfoJXT8+HtjSmMR
 6fBOKWwDB14TRRmTVHUF7oczBzg8RoVP5Il+ng/9WtQUClrwCllIkxORXUWlBz2qghW484UHn0Y
 yD4cJ+Oydw0aMTwa/Q0ISMO+qlYObJDtq9lbQD9yzmYtT91S0UpZAbnAwwBJnXEqnoAS8iDikvC
 ItriTpy+Dr+Csg/jq5f+fx+jyapp/vLLkLlt5RS/FIHGxJ++M16MF1aZGZ1LqYN3IDzHx0AqzGk
 ei1SfO6xC1hRPdnwDyoUpQYt4ydDiS9r9GBFo1Fj+dJZAARyrAr8+W7TBKm7cwUAleIRgMFGdFG
 fL6oNWGs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_01,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 phishscore=0 suspectscore=0 clxscore=1015
 bulkscore=0 spamscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508160028



On 2025/8/19 15:59, Dmitry Baryshkov wrote:
> On Tue, Aug 19, 2025 at 11:33:33AM +0800, Yongxing Mou wrote:
>> The Qualcomm QCS8300 platform comes with one DisplayPort controller
>> with same base offset as SM8650. But it requires new compatible string
>> because QCS8300 controller supports 4 MST streams. 4 MST streams will
>> be enabled as part of MST feature support. Currently, using SM8650 as
>> fallback to enable SST on QCS8300.
> 
> Hmm, no, you are not using SM8650 as a fallback. You are using the data
> structure for SM8650 for QCS8300. That's a different thing. It would
> have been using SM8650 as fallback, if you had declared device with two
> compatibles, qcom,qcs8300-dp and qcom,sm8650-dp, and then relied on the
> second entry (only) to provide a match and data.
> 
> Exactly the same comment applies to the UBWC patch.
> 
Got it, thanks, will correct it in next version soon..
>>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
>> ---
>>   drivers/gpu/drm/msm/dp/dp_display.c | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
>> index d87d47cc7ec3eb757ac192c411000bc50b824c59..bb4660585849d1a67921a28e7e12422e0c327ab2 100644
>> --- a/drivers/gpu/drm/msm/dp/dp_display.c
>> +++ b/drivers/gpu/drm/msm/dp/dp_display.c
>> @@ -187,6 +187,7 @@ static const struct msm_dp_desc msm_dp_desc_x1e80100[] = {
>>   };
>>   
>>   static const struct of_device_id msm_dp_dt_match[] = {
>> +	{ .compatible = "qcom,qcs8300-dp", .data = &msm_dp_desc_sm8650 },
>>   	{ .compatible = "qcom,sa8775p-dp", .data = &msm_dp_desc_sa8775p },
>>   	{ .compatible = "qcom,sc7180-dp", .data = &msm_dp_desc_sc7180 },
>>   	{ .compatible = "qcom,sc7280-dp", .data = &msm_dp_desc_sc7280 },
>>
>> -- 
>> 2.34.1
>>
> 


