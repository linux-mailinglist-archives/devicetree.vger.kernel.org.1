Return-Path: <devicetree+bounces-223326-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A59C0BB3734
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 11:25:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3B42B3A9F4C
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 09:25:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F04A2F5A11;
	Thu,  2 Oct 2025 09:25:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pTw6Msln"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74AB52D1936
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 09:25:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759397139; cv=none; b=XA5fO2KEc/IEmy19FXgU5to9X5vZ8NdExrRKlTRYStRLJOXE39J7G+/+6iXRhkRhMcWz9HF6yGzfDI0BeEhAKAshtI5dB3hk9Obh/avB3W1/P2wuFrRPgOlfGyepZHzY9BfMdEezr6jvOs49TiqVMJYwRws0Il6IxOv6Jc+7c9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759397139; c=relaxed/simple;
	bh=QIjy2yf6o2jJe85ecrKch9cqju6Z0sbCqBtL4JGnSpI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ia95JoOKQksCMkXagIq28W/3ua+5jO/ff9EzgBZddIIc0iPjkBm1U5+qqPUOSi8NjXyxzrnwkLxd4VC4oHvWQFmB66U2n2omedNVtUxx7xyoL7w9umfp/T2PKwLTFR9XgDtPrtDnwy7ZtZeiqAlJ08rjIwhcHwgj5AXbPfQ/qFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pTw6Msln; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5929Hg2d005988
	for <devicetree@vger.kernel.org>; Thu, 2 Oct 2025 09:25:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ym6eluAggcgIvp0Thkkg4CLDKN+rNhJeqBnpJq6zkC0=; b=pTw6MslnzYGs0Eqt
	12glB41e6ZBg+iPjtIdRR1NJQzTbk1nqrjvORZ1DWEeaOCuqb9KPUBaDu+1OYmmS
	+OgmXob1yyfHJacy8KBFlas1/osfikKCWmP79jfnme7lMyozQZkjkiXzrd0GPcj2
	fKrythIy+tDfZALWZuqAkaowphhE9MCqMubeFKQ2UoxGhQW8Lsd81PUvYa2gXihI
	f5JRhz2+5NVHKx3DuWL+AocaUB8aEJpw20LnHM8+jNgwzm9SGUA1IkphSSxDcbaT
	ZmkFuJdcXnet3w1J2eBG7EahDHX5XJ7ijznavB+fIxur+MObZ0iA89cAD2qOL59s
	Fa+9gQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e851qbwc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 09:25:36 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7821487d16bso1600080b3a.1
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 02:25:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759397135; x=1760001935;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ym6eluAggcgIvp0Thkkg4CLDKN+rNhJeqBnpJq6zkC0=;
        b=mgAjT5gdi10XlIjeQ8iH+GSx1ES5BifmSfVRpTSO9wsOcILKlSI4yJ6athLWLUrLU0
         Qfm7TNedvY8anDeWfRR10WdElkwmP0qkhUsL6MiQnrTJ7vX4KqyYFkKCp+CkRykim5Yw
         ia/epdxcsNJkQzhNl1fuV/b/bJpF18mKD6uAyZOlxaUNluRvRdiBwKXGMUuEdEmFhJWk
         BDN9k6c866ijpOay9Oy4PUE0hvmHUaho+65wJnsysgr+C++QT46BixRfE1L4doqr5NCc
         axcHL3LbT8BKVzct84BEwZoKa5AbQYJ9iuJjXSMTWC4A5cFIEgARIadfyMh06hYDUYl/
         9fLg==
X-Forwarded-Encrypted: i=1; AJvYcCVQRz7wogphk9By6DVDODrnUEoSSII5rB88ZAqoCGkKMTmkDbC45j8vrzOLpzhI2kK4F4m8Js9s7TML@vger.kernel.org
X-Gm-Message-State: AOJu0YwipXPAi4YTn2qVgMnu6pkwhYSIjYljDLCO+xWOv2AmA/k6JiVJ
	OZz1EvubmZr+ovp3QLpgIc9kW6cDSUity2UilngJKod0FiHZai+ftGNM++yI7vaPL7pwfzL1cBY
	EDOtUtNwu0F12pgHpodZqKlOEYQHiYuG15ffxVWerw3FvFcMCle9YzKyj0C8gV1P3z/89vGfL
X-Gm-Gg: ASbGncs6l8PzBejB8HbU4RGZQyrKkTONtFNytoaHTBVsV5/KyJeobBz9L/AX4ZxJqlH
	ju2+Ig+J4B7bO90fjsP3Cyb2ds8GmaxSeSRJcyL7Gu6hU5GtL0UfsN+BdcL/hmWVL+w1t09NvTD
	InN4A+fLOrwtKdL+tN+plQPJZOyk+1E0eteOxorJMkANyg4EvHJ6UMpVuOqxDIJDS1bnWlMyaoM
	CahoGGcbLNUA6j1loXgPMHouHHxVVzEwRDVlU5ydp0uWeM18fZQGzpDZyyqd6JYdsHCv4m0F5Vr
	1pygWFEzklCwTo9dXDmbfUN/n8eWzUVmgw/54c8/USpWNnUadjz8a6NvCS9Uor8vAB+u/J1zu8p
	+d3g=
X-Received: by 2002:a05:6a00:3c90:b0:781:24cb:13f4 with SMTP id d2e1a72fcca58-78af3febc14mr7667413b3a.1.1759397135370;
        Thu, 02 Oct 2025 02:25:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFNe6ghhwwrcxRByuxJo0YvwHIPuPdciu3xgbXjfL3zoDA9TRjBYzAe6HmDSK6sgrUFpuWJHw==
X-Received: by 2002:a05:6a00:3c90:b0:781:24cb:13f4 with SMTP id d2e1a72fcca58-78af3febc14mr7667394b3a.1.1759397134783;
        Thu, 02 Oct 2025 02:25:34 -0700 (PDT)
Received: from [10.204.101.186] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78b0206d61dsm1777541b3a.69.2025.10.02.02.25.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Oct 2025 02:25:34 -0700 (PDT)
Message-ID: <49b1a824-ab94-a279-76a2-ca8202afe5ce@oss.qualcomm.com>
Date: Thu, 2 Oct 2025 14:55:29 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 2/8] media: iris: Add support for multiple clock sources
Content-Language: en-US
To: Bryan O'Donoghue <bod@kernel.org>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vishnu Reddy <quic_bvisredd@quicinc.com>
References: <20250925-knp_video-v1-0-e323c0b3c0cd@oss.qualcomm.com>
 <wHDGE-3W4iT6q0SbfIiC5wUXzRLx3qetMZKZtBFc5O3fvelroLvZujrLPvBSsq3OI-RmEQFBmSpCfnbXnZe6pA==@protonmail.internalid>
 <20250925-knp_video-v1-2-e323c0b3c0cd@oss.qualcomm.com>
 <9d89b2b9-e17f-4179-8ab2-4d4779688317@kernel.org>
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
In-Reply-To: <9d89b2b9-e17f-4179-8ab2-4d4779688317@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=OJoqHCaB c=1 sm=1 tr=0 ts=68de4510 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=xnYoEnnbrRl5MAMu4KYA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzMiBTYWx0ZWRfX3wIqCx6zcq7X
 2tVHHpWPCRv37e8PMmLt3GuyE3jxmPDa6jphyv7zqg2hCHByBzJi3OAgvZbKD4XjZS7htDkBZzt
 YJuiJA0rOBMdqtuOnLCRj5ZKIs1Nu1nl/13JwyapGDJ8RiXHoM1lqkfwos3zyUHPER5SOf74CAE
 3FU+hduDo2s/IkwrlV+zjurcy1U0r9l+X+4uZ+GHFCHGpXacLfjaTaOfHzuH0euWd3m/OLCfgXB
 UGPb01iFBatgb88bGSVtSovOp2R7QMoUeuHE+1SdSGvdKn0KA7MbG84KpF9guI1i8NVSLm2IWgz
 Nqc7vPba2sjSxqyCGAzwwx4k/T8dpEujOr6VyQrLtQxwhHJ4cveyaKSgJFvNIYwEE71o8ExPeP6
 4PY/n5V6wzEMarG+ViICi4SZjwO6Uw==
X-Proofpoint-ORIG-GUID: xsk93j7L-sEbseM8Q8zcJvphQOmWGeZp
X-Proofpoint-GUID: xsk93j7L-sEbseM8Q8zcJvphQOmWGeZp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-02_03,2025-10-02_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 bulkscore=0 impostorscore=0
 suspectscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270032


On 9/26/2025 5:29 AM, Bryan O'Donoghue wrote:
> On 25/09/2025 00:14, Vikash Garodia wrote:
>> vpu4 comes with more than one clock sources running the hardware, so far
>> it was clocked by single clock source in vpu3x and earlier. Configure
>> OPP table for video device with these different video clocks, such that
>> the OPP can be set to multiple clocks during dev_pm_opp_set_opp(). This
>> patch extends the support for multiple clocks in driver, which would be
>> used in subsequent patch for kaanapali, when the platform data is
>> prepared.
> 
> You need to fix the commit log here a bit.
> 
> vpu4 depends on more than one clock source. Thus far hardware versions up to
> vpu3x have been clocked by a single source using dev_pm_opp_set_opp().
> 
> This adds support for multiple clocks by
> 
> - Adding a lookup table
> - Using devm_pm_opp_set_config to set the array of clocks
> - See comment below about breaking into two patches below
> 
>>
>> Co-developed-by: Vishnu Reddy <quic_bvisredd@quicinc.com>
>> Signed-off-by: Vishnu Reddy <quic_bvisredd@quicinc.com>
>> Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
>> ---
>>   .../media/platform/qcom/iris/iris_platform_common.h  |  1 +
>>   .../media/platform/qcom/iris/iris_platform_gen2.c    |  9 +++++++++
>>   .../media/platform/qcom/iris/iris_platform_sm8250.c  |  6 ++++++
>>   drivers/media/platform/qcom/iris/iris_power.c        |  2 +-
>>   drivers/media/platform/qcom/iris/iris_probe.c        | 20 ++++++++------------
>>   drivers/media/platform/qcom/iris/iris_resources.c    | 16 ++++++++++++++--
>>   drivers/media/platform/qcom/iris/iris_resources.h    |  1 +
>>   drivers/media/platform/qcom/iris/iris_vpu_common.c   |  4 ++--
>>   8 files changed, 42 insertions(+), 17 deletions(-)
>>
>> diff --git a/drivers/media/platform/qcom/iris/iris_platform_common.h
>> b/drivers/media/platform/qcom/iris/iris_platform_common.h
>> index
>> 58d05e0a112eed25faea027a34c719c89d6c3897..df03de08c44839c1b6c137874eb7273c638d5f2c 100644
>> --- a/drivers/media/platform/qcom/iris/iris_platform_common.h
>> +++ b/drivers/media/platform/qcom/iris/iris_platform_common.h
>> @@ -206,6 +206,7 @@ struct iris_platform_data {
>>       const char * const *opp_pd_tbl;
>>       unsigned int opp_pd_tbl_size;
>>       const struct platform_clk_data *clk_tbl;
>> +    const char * const *opp_clk_tbl;
>>       unsigned int clk_tbl_size;
>>       const char * const *clk_rst_tbl;
>>       unsigned int clk_rst_tbl_size;
>> diff --git a/drivers/media/platform/qcom/iris/iris_platform_gen2.c
>> b/drivers/media/platform/qcom/iris/iris_platform_gen2.c
>> index
>> 36d69cc73986b74534a2912524c8553970fd862e..fea800811a389a58388175c733ad31c4d9c636b0 100644
>> --- a/drivers/media/platform/qcom/iris/iris_platform_gen2.c
>> +++ b/drivers/media/platform/qcom/iris/iris_platform_gen2.c
>> @@ -633,6 +633,11 @@ static const struct platform_clk_data sm8550_clk_table[] = {
>>       {IRIS_HW_CLK,   "vcodec0_core" },
>>   };
>>
>> +static const char * const sm8550_opp_clk_table[] = {
>> +    "vcodec0_core",
>> +    NULL,
>> +};
>> +
>>   static struct ubwc_config_data ubwc_config_sm8550 = {
>>       .max_channels = 8,
>>       .mal_length = 32,
>> @@ -756,6 +761,7 @@ struct iris_platform_data sm8550_data = {
>>       .opp_pd_tbl_size = ARRAY_SIZE(sm8550_opp_pd_table),
>>       .clk_tbl = sm8550_clk_table,
>>       .clk_tbl_size = ARRAY_SIZE(sm8550_clk_table),
>> +    .opp_clk_tbl = sm8550_opp_clk_table,
>>       /* Upper bound of DMA address range */
>>       .dma_mask = 0xe0000000 - 1,
>>       .fwname = "qcom/vpu/vpu30_p4.mbn",
>> @@ -848,6 +854,7 @@ struct iris_platform_data sm8650_data = {
>>       .opp_pd_tbl_size = ARRAY_SIZE(sm8550_opp_pd_table),
>>       .clk_tbl = sm8550_clk_table,
>>       .clk_tbl_size = ARRAY_SIZE(sm8550_clk_table),
>> +    .opp_clk_tbl = sm8550_opp_clk_table,
>>       /* Upper bound of DMA address range */
>>       .dma_mask = 0xe0000000 - 1,
>>       .fwname = "qcom/vpu/vpu33_p4.mbn",
>> @@ -930,6 +937,7 @@ struct iris_platform_data sm8750_data = {
>>       .opp_pd_tbl_size = ARRAY_SIZE(sm8550_opp_pd_table),
>>       .clk_tbl = sm8750_clk_table,
>>       .clk_tbl_size = ARRAY_SIZE(sm8750_clk_table),
>> +    .opp_clk_tbl = sm8550_opp_clk_table,
>>       /* Upper bound of DMA address range */
>>       .dma_mask = 0xe0000000 - 1,
>>       .fwname = "qcom/vpu/vpu35_p4.mbn",
>> @@ -1017,6 +1025,7 @@ struct iris_platform_data qcs8300_data = {
>>       .opp_pd_tbl_size = ARRAY_SIZE(sm8550_opp_pd_table),
>>       .clk_tbl = sm8550_clk_table,
>>       .clk_tbl_size = ARRAY_SIZE(sm8550_clk_table),
>> +    .opp_clk_tbl = sm8550_opp_clk_table,
>>       /* Upper bound of DMA address range */
>>       .dma_mask = 0xe0000000 - 1,
>>       .fwname = "qcom/vpu/vpu30_p4_s6.mbn",
>> diff --git a/drivers/media/platform/qcom/iris/iris_platform_sm8250.c
>> b/drivers/media/platform/qcom/iris/iris_platform_sm8250.c
>> index
>> 16486284f8acccf6a95a27f6003e885226e28f4d..1b1b6aa751106ee0b0bc71bb0df2e78340190e66 100644
>> --- a/drivers/media/platform/qcom/iris/iris_platform_sm8250.c
>> +++ b/drivers/media/platform/qcom/iris/iris_platform_sm8250.c
>> @@ -273,6 +273,11 @@ static const struct platform_clk_data sm8250_clk_table[] = {
>>       {IRIS_HW_CLK,   "vcodec0_core" },
>>   };
>>
>> +static const char * const sm8250_opp_clk_table[] = {
>> +    "vcodec0_core",
>> +    NULL,
>> +};
>> +
>>   static struct tz_cp_config tz_cp_config_sm8250 = {
>>       .cp_start = 0,
>>       .cp_size = 0x25800000,
>> @@ -333,6 +338,7 @@ struct iris_platform_data sm8250_data = {
>>       .opp_pd_tbl_size = ARRAY_SIZE(sm8250_opp_pd_table),
>>       .clk_tbl = sm8250_clk_table,
>>       .clk_tbl_size = ARRAY_SIZE(sm8250_clk_table),
>> +    .opp_clk_tbl = sm8250_opp_clk_table,
>>       /* Upper bound of DMA address range */
>>       .dma_mask = 0xe0000000 - 1,
>>       .fwname = "qcom/vpu-1.0/venus.mbn",
>> diff --git a/drivers/media/platform/qcom/iris/iris_power.c
>> b/drivers/media/platform/qcom/iris/iris_power.c
>> index
>> dbca42df0910fd3c0fb253dbfabf1afa2c3d32ad..91aa21d4070ebcebbe2ed127a03e5e49b9a2bd5c 100644
>> --- a/drivers/media/platform/qcom/iris/iris_power.c
>> +++ b/drivers/media/platform/qcom/iris/iris_power.c
>> @@ -91,7 +91,7 @@ static int iris_set_clocks(struct iris_inst *inst)
>>       }
>>
>>       core->power.clk_freq = freq;
>> -    ret = dev_pm_opp_set_rate(core->dev, freq);
>> +    ret = iris_opp_set_rate(core->dev, freq);
>>       mutex_unlock(&core->lock);
>>
>>       return ret;
>> diff --git a/drivers/media/platform/qcom/iris/iris_probe.c
>> b/drivers/media/platform/qcom/iris/iris_probe.c
>> index
>> 00e99be16e087c4098f930151fd76cd381d721ce..ad82a62f8b923d818ffe77c131d7eb6da8c34002 100644
>> --- a/drivers/media/platform/qcom/iris/iris_probe.c
>> +++ b/drivers/media/platform/qcom/iris/iris_probe.c
>> @@ -40,8 +40,6 @@ static int iris_init_icc(struct iris_core *core)
>>
>>   static int iris_init_power_domains(struct iris_core *core)
>>   {
>> -    const struct platform_clk_data *clk_tbl;
>> -    u32 clk_cnt, i;
>>       int ret;
>>
>>       struct dev_pm_domain_attach_data iris_pd_data = {
>> @@ -56,6 +54,11 @@ static int iris_init_power_domains(struct iris_core *core)
>>           .pd_flags = PD_FLAG_DEV_LINK_ON | PD_FLAG_REQUIRED_OPP,
>>       };
>>
>> +    struct dev_pm_opp_config iris_opp_clk_data = {
>> +        .clk_names = core->iris_platform_data->opp_clk_tbl,
>> +        .config_clks = dev_pm_opp_config_clks_simple,
>> +    };
>> +
>>       ret = devm_pm_domain_attach_list(core->dev, &iris_pd_data,
>> &core->pmdomain_tbl);
>>       if (ret < 0)
>>           return ret;
>> @@ -64,16 +67,9 @@ static int iris_init_power_domains(struct iris_core *core)
>>       if (ret < 0)
>>           return ret;
>>
>> -    clk_tbl = core->iris_platform_data->clk_tbl;
>> -    clk_cnt = core->iris_platform_data->clk_tbl_size;
>> -
>> -    for (i = 0; i < clk_cnt; i++) {
>> -        if (clk_tbl[i].clk_type == IRIS_HW_CLK) {
>> -            ret = devm_pm_opp_set_clkname(core->dev, clk_tbl[i].clk_name);
>> -            if (ret)
>> -                return ret;
>> -        }
>> -    }
>> +    ret = devm_pm_opp_set_config(core->dev, &iris_opp_clk_data);
>> +    if (ret)
>> +        return ret;
>>
>>       return devm_pm_opp_of_add_table(core->dev);
>>   }
>> diff --git a/drivers/media/platform/qcom/iris/iris_resources.c
>> b/drivers/media/platform/qcom/iris/iris_resources.c
>> index
>> cf32f268b703c1c042a9bcf146e444fff4f4990d..939f6617f2631503fa8cb3e874b9de6b2fbe7b76 100644
>> --- a/drivers/media/platform/qcom/iris/iris_resources.c
>> +++ b/drivers/media/platform/qcom/iris/iris_resources.c
>> @@ -4,6 +4,7 @@
>>    */
>>
>>   #include <linux/clk.h>
>> +#include <linux/devfreq.h>
>>   #include <linux/interconnect.h>
>>   #include <linux/pm_domain.h>
>>   #include <linux/pm_opp.h>
>> @@ -58,11 +59,22 @@ int iris_unset_icc_bw(struct iris_core *core)
>>       return icc_bulk_set_bw(core->icc_count, core->icc_tbl);
>>   }
>>
>> +int iris_opp_set_rate(struct device *dev, unsigned long freq)
>> +{
>> +    struct dev_pm_opp *opp __free(put_opp);
>> +
>> +    opp = devfreq_recommended_opp(dev, &freq, 0);
>> +    if (IS_ERR(opp))
>> +        return PTR_ERR(opp);
>> +
>> +    return dev_pm_opp_set_opp(dev, opp);
>> +}
>> +
> 
> I think this should be separated out from the clock setting and table usage into
> a second patch because you can end up with different clock frequencies here than
> before and being pedantic, I think that ought to be made explicit in the commit
> log.

The idea here is to keep the usage of the table alongwith introduction to clock
table. This way it even makes code review easier on how the table is utilized in
getting the opp and setting it.

Regards,
Vikash

> 
>>   int iris_enable_power_domains(struct iris_core *core, struct device *pd_dev)
>>   {
>>       int ret;
>>
>> -    ret = dev_pm_opp_set_rate(core->dev, ULONG_MAX);
>> +    ret = iris_opp_set_rate(core->dev, ULONG_MAX);
>>       if (ret)
>>           return ret;
>>
>> @@ -77,7 +89,7 @@ int iris_disable_power_domains(struct iris_core *core,
>> struct device *pd_dev)
>>   {
>>       int ret;
>>
>> -    ret = dev_pm_opp_set_rate(core->dev, 0);
>> +    ret = iris_opp_set_rate(core->dev, 0);
>>       if (ret)
>>           return ret;
>>
>> diff --git a/drivers/media/platform/qcom/iris/iris_resources.h
>> b/drivers/media/platform/qcom/iris/iris_resources.h
>> index
>> f723dfe5bd81a9c9db22d53bde4e18743d771210..6bfbd2dc6db095ec05e53c894e048285f82446c6 100644
>> --- a/drivers/media/platform/qcom/iris/iris_resources.h
>> +++ b/drivers/media/platform/qcom/iris/iris_resources.h
>> @@ -8,6 +8,7 @@
>>
>>   struct iris_core;
>>
>> +int iris_opp_set_rate(struct device *dev, unsigned long freq);
>>   int iris_enable_power_domains(struct iris_core *core, struct device *pd_dev);
>>   int iris_disable_power_domains(struct iris_core *core, struct device *pd_dev);
>>   int iris_unset_icc_bw(struct iris_core *core);
>> diff --git a/drivers/media/platform/qcom/iris/iris_vpu_common.c
>> b/drivers/media/platform/qcom/iris/iris_vpu_common.c
>> index
>> bb98950e018fadf69ac4f41b3037f7fd6ac33c5b..bbd999a41236dca5cf5700e452a6fed69f4fc922 100644
>> --- a/drivers/media/platform/qcom/iris/iris_vpu_common.c
>> +++ b/drivers/media/platform/qcom/iris/iris_vpu_common.c
>> @@ -266,7 +266,7 @@ void iris_vpu_power_off_hw(struct iris_core *core)
>>
>>   void iris_vpu_power_off(struct iris_core *core)
>>   {
>> -    dev_pm_opp_set_rate(core->dev, 0);
>> +    iris_opp_set_rate(core->dev, 0);
>>       core->iris_platform_data->vpu_ops->power_off_hw(core);
>>       core->iris_platform_data->vpu_ops->power_off_controller(core);
>>       iris_unset_icc_bw(core);
>> @@ -352,7 +352,7 @@ int iris_vpu_power_on(struct iris_core *core)
>>       freq = core->power.clk_freq ? core->power.clk_freq :
>>                         (u32)ULONG_MAX;
>>
>> -    dev_pm_opp_set_rate(core->dev, freq);
>> +    iris_opp_set_rate(core->dev, freq);
>>
>>       core->iris_platform_data->set_preset_registers(core);
>>
>>
>> -- 
>> 2.34.1
>>
>>
> 
> ---
> bod

