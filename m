Return-Path: <devicetree+bounces-224538-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E240BC4FAF
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 14:51:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 96601352968
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 12:51:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CF9E25392D;
	Wed,  8 Oct 2025 12:50:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FYpw7sr5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04D522494F8
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 12:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759927855; cv=none; b=e+ILDK13Gz5FETP4H39i8Q+ZK86cTAtsb3Nn7VavpHS2Z06KeTnPvuSEm1SM6p9FzykLMhDHN/WkKhmP1hJbigwhutT4szolWHYru3M2OZpUCQaKKdUKeUqpzQasc00D6N2SGYwGV+XdlA6RsoKDM5Le4NTFfJQ7CHtcSdhzUQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759927855; c=relaxed/simple;
	bh=0b2N98FdQpH0Wdd6mea5Yi+O7il5kziKC3shD0jRcLw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OkHQpRe1Kw+QQ8a5+Em22JVd1ZzAQ3FyRRCQrKzEAT4fLBhPk1qBBvV0lBhBJucO8ZyfiCiRfDZZKKw6FGeP8K2h+7JlXY5hFU2jkEdY7z/q4x8xiUYv/zX9LpO3ooxPF39bqqTCwjtztaAyWWZgDSaj5PaaM5ps35p97URSCso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FYpw7sr5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59890NeW031343
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 12:50:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HjXA54200/MazhziXIpKEeI9K5n9Bf0pQfwu9EvIxC4=; b=FYpw7sr5rxcDfAem
	UzAZ/lwkxo2ODXO5AvoIyUUBbP5OAwJFOM1WVVHFO6hIXDd2cJaZp2Z7x+hbOXTF
	aBF+Cj6OWwrP+fC73ZljkOYMxTwmzXa1nxTonQK4N4nxl8IQ+U6kuJOISiPAAhCP
	sVYY2rheAg30xW39mxiHfR/b+SZBLU2pEX1Ji/pnVXKL8RpAbzFcQzb+De4U4AL7
	As3sKNXCezKByJ8MaovHjo8mRCRMqDK8aRnyI77oo9t85gwrJnjimzpanMf3K+wK
	NO+dPXdbUahdeXC4ngpTg5OUpWD+OuruBY5X/xSXSGcTx0587E0ioz0hUb7UEwCP
	gZ70kQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jvv7tdya-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 12:50:53 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4d6c3d10716so13761171cf.2
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 05:50:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759927852; x=1760532652;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HjXA54200/MazhziXIpKEeI9K5n9Bf0pQfwu9EvIxC4=;
        b=ZFhD8hRb6se7Fz1XJdjxTKhXqo3bfPJFqo+hqoxnB00MmTfHsjimGaHWy2SiRd5lYk
         gsIaCBGkdWMpa6ycIEE3jP3X/X1dbvHufnlUqTRpu3qK/42T7+SN9vtlkE5PwAHpF3Mw
         y7llhrpWH+SzIUQOVzyu9gk6zDpR41EeqDHBCWQZU+MdgH5CguQ5QlqHgc210V1PucI9
         wvu3Va1Tu71/PMEgQhNanDAl+BKIH2jK/ODm7G9YFN7w9U4dA3e+PhBOfcXtV46bLRfk
         P0LwgcisVv0sU2UE6sepe4imuTM4v1q0PE/KKtfKrSQ5O0jifKsmRRDJVivAiWk3o6Mv
         6wkQ==
X-Forwarded-Encrypted: i=1; AJvYcCVteR5rGN4uxBNvc2BP0YINUhviwYxYAhOMCvZjtSSjWUaQ+zvAi+hqQFIMkikYdT/2i1mrIyoa9ZbO@vger.kernel.org
X-Gm-Message-State: AOJu0YyPwwa6qGPjO1pEVuXuaCvI6b54hiGHRM7uAKHxp589j5j5cgJa
	uIoPKpl3P0uocW6MRJr62mcIwk7i929dVegDMwghKrviYbhdoXKD3WxClylB/9JyYLUrsnaTOLt
	mzdby5hVJ5WAUHj/P3osuNb6i/DiU30hRBbf6PFbnEjwa8SjomQ8nPZ5xxQe+9PVG
X-Gm-Gg: ASbGnctueTOHvWE3WRAHrMIV9sQHfGPkUb4ghGC/c/y7z8obfQXrhLZKuuM2SWc31lW
	K9menz+l3lpYM+AUrhDIYiuf3trYPxS6xah4TbSCa6yLVp3o3HeaPullrr/qtO7ydCsUBGIrp0y
	ECfO/SCxcXoMbk4fqGzVPE2HwvzKvZCUuF+wFOkeg+qjwHICvmU3wdTtYL31T6PK997obb+hS+h
	TuqPtfZzjZ4sFFIfN82q3OSeoZDa9QSi0pd0gSMlFTe3v7IIbMWLY7wVcBHyGnCq6nHru20Yf9x
	bWp1JnDdcYXfFFJELqAC4jd4gp1GeVoEEFROe4AOtY78dXtIdtHXeHRURTXTbI+ENKr/6uoMNkb
	2LQKagI5rCam7ueYsXpCdHeyhix8=
X-Received: by 2002:a05:622a:60c:b0:4d9:ac87:1bdc with SMTP id d75a77b69052e-4e6ead0aba7mr29848741cf.6.1759927851717;
        Wed, 08 Oct 2025 05:50:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGd3wvG1Ynm7djM218qT3jkj11ov7+KlyDnSw0DDL6cJyrMjJ5qDwiZKjNKdh5U87l7RnzuDg==
X-Received: by 2002:a05:622a:60c:b0:4d9:ac87:1bdc with SMTP id d75a77b69052e-4e6ead0aba7mr29848301cf.6.1759927851051;
        Wed, 08 Oct 2025 05:50:51 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4869b4e49esm1648890166b.72.2025.10.08.05.50.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 05:50:50 -0700 (PDT)
Message-ID: <b14ca601-56d8-4ecc-8813-b9b642646a0c@oss.qualcomm.com>
Date: Wed, 8 Oct 2025 14:50:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] arm64: dts: qcom: lemans: add mdss1 displayPort
 device nodes
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Mani Chandana Ballary Kuntumalla <quic_mkuntuma@quicinc.com>,
        marijn.suijten@somainline.org, swboyd@chromium.org, mripard@kernel.org,
        abel.vesa@linaro.org, andersson@kernel.org, konradybcio@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        robin.clark@oss.qualcomm.com, jessica.zhang@oss.qualcomm.com,
        abhinav.kumar@linux.dev, sean@poorly.run, airlied@gmail.com,
        simona@ffwll.ch, alex.vinarskis@gmail.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
        quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com,
        quic_riteshk@quicnic.com, quic_amitsi@quicnic.com
References: <20250926085956.2346179-1-quic_mkuntuma@quicinc.com>
 <20250926085956.2346179-3-quic_mkuntuma@quicinc.com>
 <e3400ab5-c4ea-455a-b8ea-d4fba2ece85d@oss.qualcomm.com>
 <6uo2w4lscjlx5mtio2xw3xgyyu6kem6kavtdxtu7cbyix6kews@h2ou2awbppzy>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <6uo2w4lscjlx5mtio2xw3xgyyu6kem6kavtdxtu7cbyix6kews@h2ou2awbppzy>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAzNyBTYWx0ZWRfX3UK59oM+E0ks
 PwQwEFcNtz9hvO/rm/ReJqeV2KC+3YqmS0tqea4AnMCcVpVBpshTwTm8iM4GsmuKV4L1nhenZcy
 YsgQ1/Wz06Be4qSrlbeYWLdD68BFnuLX+YVYzx/GO26NY34hyeShOnBskiQU+SlgTkDhCqXCeGJ
 zLU6T5ENkyOu2XOMzL0tVNlJ+UhlecfeQvtyc77ShbMtviE2RaIxfLp1r29LTbJK/v3HI0WYmVV
 uYxgPr3EorME7Hj5Arj8YJveKxveNYP0dngPQYAtp3G/8aNxjsC330JyDnV8GdJzhLvMdK+x1MV
 WG+KX6RLWH8itbpCCQc4DuolAvhy3g4Zgr8a/AK8TnRnU/qsHKLPiKNvHA+GPqD9fc2Dy3Rq/iW
 TWiPt35KpFmIka24chKamvRilPsAEQ==
X-Proofpoint-ORIG-GUID: WKFgM9gnxrl4NPvJYYg0huSjHWRcOVcH
X-Authority-Analysis: v=2.4 cv=WIdyn3sR c=1 sm=1 tr=0 ts=68e65e2d cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=COk6AnOGAAAA:8 a=Nc9AMxU9nlP_Mo_kQ7EA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: WKFgM9gnxrl4NPvJYYg0huSjHWRcOVcH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 bulkscore=0 spamscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040037

On 10/8/25 2:49 PM, Dmitry Baryshkov wrote:
> On Wed, Oct 08, 2025 at 02:40:35PM +0200, Konrad Dybcio wrote:
>> On 9/26/25 10:59 AM, Mani Chandana Ballary Kuntumalla wrote:
>>> Add device tree nodes for the mdss1 DPTX0 and DPTX1 controllers
>>> with their corresponding PHYs.
>>>
>>> Signed-off-by: Mani Chandana Ballary Kuntumalla <quic_mkuntuma@quicinc.com>
>>> ---
>>
>> [...]
>>
>>> +			mdss1_dp0: displayport-controller@22154000 {
>>> +				compatible = "qcom,sa8775p-dp";
>>> +
>>> +				reg = <0x0 0x22154000 0x0 0x104>,
>>
>> sz = 0x200
> 
> Hmm, why? I think the memory map specifies these sizes.

Yeah and I went in line with the allocated region size (not last register)

[...]

>>>  		dispcc1: clock-controller@22100000 {
>>> @@ -6872,6 +7115,8 @@ dispcc1: clock-controller@22100000 {
>>>  				 <&rpmhcc RPMH_CXO_CLK>,
>>>  				 <&rpmhcc RPMH_CXO_CLK_A>,
>>>  				 <&sleep_clk>,
>>> +				 <&mdss1_dp0_phy 0>, <&mdss1_dp0_phy 1>,
>>> +				 <&mdss1_dp1_phy 0>, <&mdss1_dp1_phy 1>,
>>>  				 <0>, <0>, <0>, <0>,
>>
>> You need to remove the same amount of zeroes that you added
> 
> Nice catch. Which means that somebody was sending untested patches.

It would work.. until someone tried to add DSI to the second row of zeroes
instead of the first one

Konrad> Nice.
> 

