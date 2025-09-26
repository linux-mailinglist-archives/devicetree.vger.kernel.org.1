Return-Path: <devicetree+bounces-221847-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1F9BA3771
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 13:19:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6457D5614AB
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 11:19:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DE34259C80;
	Fri, 26 Sep 2025 11:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VuRMzXKU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0B3225A35
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 11:19:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758885581; cv=none; b=D+xkdlD1onPr1ExlSAEyr5Va9QKW2FmGZT/h8LxEc7SkgjVEhwx2rb5XPtYPouZxWGyRAHEyhETwwp5g7T6i9gHG5LFdBz73Oqt1x+7YiiXpaVoR5kdFO9GmZvrQJaZEX4clctXGIvwTESu+rVjISOVMOyzyUl+TgIbO5kALI/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758885581; c=relaxed/simple;
	bh=0MA12SMzbZdT4kPY6eeM+o3pTZwdB/AFBWR34+cl6fw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=a2Q9yaXuPEmcf5C/yCOGa6Nv/dQEW844rhiF+hxQHaWA/Yv7WT6uHyOUOmR6mORCMqo27DlN3e6y281rjzhVzq0kLFirA48UT/7XSyAou2U6hcuXoOsxpLIhFA9yzxOQTH1foifRadNQXB/54tmi4o8Qf5raYzmvRpSfSC7dc48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VuRMzXKU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q8vpwg016258
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 11:19:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	A5iw9YhdKL6U7cNZ5d6DnDVFCM8BMpzQyf8d10H9FDs=; b=VuRMzXKU+gnS18kS
	t5LtFfQUglj8gilOALItOfxuzM48Em5gZ1ZofU7Vvw0ZbxAqkRCovwih9HX8TQKu
	FaTxdCQ/LW87dRqmFEaweEukAdTFhSLOJ91kdKfNLVpGzcLYJg2NOF7XoeFKdS+O
	LDnPvlanG8tL1uXevx1Kx1uCB2+1adPFhvoxdl6m8PuluPpgKAz8Kh22+AZJcH9L
	1rRELJOCVp+TKbhxL6vVYPfPFORzEDnfOY/iL+2idFT5/+w4t7hn+8vrI/3J2qLo
	MNBycUZe9CkjCPw0pOiEqB610w3plVZ0jcext/idrT25EVFsgg0nYB+WaAPxbCIS
	t7uHYA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0rjn8h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 11:19:39 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4d88b669938so5097861cf.2
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 04:19:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758885578; x=1759490378;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=A5iw9YhdKL6U7cNZ5d6DnDVFCM8BMpzQyf8d10H9FDs=;
        b=J491KeHBidZgCLyFNzfvDC5nCrjBMt83GIUAIKmicPhc6L4rcGccgSnoO9l9rRfRQq
         wzhOcx3+RUj3mZXo6uAUSsNqU3NHXGEcnvrN5HxYC/ZzwW7WCb9SDCc1zBj279c/Iyeq
         Q8c0em8qf8MpQu0lYSIPAO3lXcp+kXs7htF4Pcs6I0CoPZ3xpwlpWA6h3f+AxgbwYaOF
         IiGl8DGUY6lDbUDTUUz6eXn0WjjS8AaFZIHtS3IDJqbw3nNNwhNKHmJoO4pTquwrwiuJ
         s6YGjH9xLNF7KiviCHhdX/CWyiW8eJxC6K0/ecMYAkJIdmCng+L6gLKBnhLVNJAA4joj
         HJfA==
X-Forwarded-Encrypted: i=1; AJvYcCXiFHoCoSS2Nc65hRu8DGt9+KO8AYQN12iT+M2fRstk4aWpc2e2a/THmkjcETzTlYZGr4vdj3qNbLU/@vger.kernel.org
X-Gm-Message-State: AOJu0YwR/fhoQLIOosd5z8zNRxV0DuBR7NvKl/3t3wN4clBNGu/xSt6K
	aCKvZR7cbRT05ZXd6Hf1yd72uXwCo2mlz/M3nv1g2Hx0wdoim2usk/EGkWViPqbkVfk/Prb98tL
	UICUx6tlFLWz8toKyasIQ31eduQuTtHGEW0c2WmDlfv5DjElFO+DTLpwU0EFTirjJ
X-Gm-Gg: ASbGncs7wAv/S5uFPbfJyYq6jl5ESidxe/Tw6EZkaMHHIbefh6WdnJ916wbbaNS83ui
	oJfnxyIQHhGo/jxbuzSRGeE4Z2ErNbHzsPWO4qr3wuBVA522/Tn48X9PdOkfWCQV0RcLeJDUbUF
	CW/GSBJnU3VIKkFBr/ip9Q6IWjEGi5VtKTH0EUu+St2xAKW5pPBBjDgaQ/wra20Lzw6wgraSrOs
	cwDl5yv2hehw4zhQ/kczWwqctgzOhBJAGRsDPNWezpAIpxVzEoi3ITLC1nANCpQf5yVksQzO4ue
	rgdUzm8HzDIk/4eEfCqPjoVBTTwKF1AIlO4gZoBuRBp0L+SxMX8LJged3SfKgUC0N7qkPB6koqR
	wVN/pIWYXb91H4ulj1mdW8w==
X-Received: by 2002:a05:622a:24a:b0:4d8:7b08:64b1 with SMTP id d75a77b69052e-4da488a2d68mr64828201cf.5.1758885577781;
        Fri, 26 Sep 2025 04:19:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFLrcwSjz3KqiYGa3gmDGxvngYxxkxyuMkovjao2QxnzsDzIGy/cWZ23JNdN4fAp9j20t9gbw==
X-Received: by 2002:a05:622a:24a:b0:4d8:7b08:64b1 with SMTP id d75a77b69052e-4da488a2d68mr64827771cf.5.1758885577245;
        Fri, 26 Sep 2025 04:19:37 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b3544fcde34sm352788666b.73.2025.09.26.04.19.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Sep 2025 04:19:36 -0700 (PDT)
Message-ID: <7f61ee13-c73f-4b5b-918d-288368ac2cdc@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 13:19:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] drm/msm/dp: Update msm_dp_controller IDs for sa8775p
To: Mani Chandana Ballary Kuntumalla <quic_mkuntuma@quicinc.com>,
        dmitry.baryshkov@oss.qualcomm.com, marijn.suijten@somainline.org,
        swboyd@chromium.org, mripard@kernel.org, abel.vesa@linaro.org,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, robin.clark@oss.qualcomm.com,
        jessica.zhang@oss.qualcomm.com, abhinav.kumar@linux.dev,
        sean@poorly.run, airlied@gmail.com, simona@ffwll.ch,
        alex.vinarskis@gmail.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
        quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com,
        quic_riteshk@quicnic.com, quic_amitsi@quicnic.com
References: <20250926085956.2346179-1-quic_mkuntuma@quicinc.com>
 <20250926085956.2346179-2-quic_mkuntuma@quicinc.com>
 <652595ef-ef79-4c36-9979-b536ca65e1de@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <652595ef-ef79-4c36-9979-b536ca65e1de@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=dP+rWeZb c=1 sm=1 tr=0 ts=68d676cb cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=JnFwQ0sXLtjTzmeIXpcA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: WCaaK5STm_aDIHs0vPzQmsXEB6cUB18O
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX3SORW59zeSD3
 RT336uJX4k9Nd8L2IKVnzvdEmx4hT90z9EERnLRXReajjSn9Z6TaSw1uNmBMBUIM1W6ufYn2lXE
 csntoghK4J4i2Q7NGJ1OycEwvni4zfk4SQ3F4pMUHOfjK9L65gISIT12Egm5TYS1elZ3IXfX7OQ
 EPqoY+f8NHaujJA/wnjGXqrCNhwcCjvJWuJKk02x0m3BGuQ2QJguHQkt3H9IcvBaTLrDpkCUEqx
 SHEozQWZYXzIzL0+orcLjr08MAqLWdquu4EtbK58QC6OvylaU9sksPjR9zZYbGVdQhr2yN3cONZ
 ddt/6ByPBjbwV/SbQsYExGrTQfO7eMCxBbuDmB74xQrCUIs3WCK2kPBJNXzMTaBYhGzvlhoZSFL
 n/ZPX9dLBYCyF44v8NQO3p0n1Ln4vw==
X-Proofpoint-GUID: WCaaK5STm_aDIHs0vPzQmsXEB6cUB18O
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_03,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 spamscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 suspectscore=0 adultscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171

On 9/26/25 1:18 PM, Konrad Dybcio wrote:
> On 9/26/25 10:59 AM, Mani Chandana Ballary Kuntumalla wrote:
>> The Qualcomm SA8775P platform comes with 2 DisplayPort controllers
>> for each mdss. Update controller id for DPTX0 and DPTX1 of mdss1.
>>
>> Signed-off-by: Mani Chandana Ballary Kuntumalla <quic_mkuntuma@quicinc.com>
>> ---
>>  drivers/gpu/drm/msm/dp/dp_display.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
>> index d87d47cc7ec3..f247aad55397 100644
>> --- a/drivers/gpu/drm/msm/dp/dp_display.c
>> +++ b/drivers/gpu/drm/msm/dp/dp_display.c
>> @@ -133,8 +133,8 @@ struct msm_dp_desc {
>>  static const struct msm_dp_desc msm_dp_desc_sa8775p[] = {
>>  	{ .io_start = 0x0af54000, .id = MSM_DP_CONTROLLER_0, .wide_bus_supported = true },
>>  	{ .io_start = 0x0af5c000, .id = MSM_DP_CONTROLLER_1, .wide_bus_supported = true },
>> -	{ .io_start = 0x22154000, .id = MSM_DP_CONTROLLER_2, .wide_bus_supported = true },
>> -	{ .io_start = 0x2215c000, .id = MSM_DP_CONTROLLER_3, .wide_bus_supported = true },
>> +	{ .io_start = 0x22154000, .id = MSM_DP_CONTROLLER_0, .wide_bus_supported = true },
>> +	{ .io_start = 0x2215c000, .id = MSM_DP_CONTROLLER_1, .wide_bus_supported = true },
> 
> Well, did you see what happens when you try to plug in a display
> to a controller on MDSS0 and MDSS1 at once now?
> 
> (memory corruption)

No, my bad. I misread the code

Konrad

