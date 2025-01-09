Return-Path: <devicetree+bounces-137061-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B7EFAA07671
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 14:05:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E90A73A770C
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 13:05:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70C5121771A;
	Thu,  9 Jan 2025 13:05:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Yv4Z+FB8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC725BA2E
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 13:05:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736427949; cv=none; b=e3kUaa0W2pDc6ZyGgib5CpYWlLLL+MjPYzikmxkAknasBKFgSFoaqdlcSEU/Q2bT2AWCPxtRV8qJmL3AgXgVN+XfyQixZcxvKYWYfED+MPh8NnOfAKtVa/zz8KAJvOQz36pqgtregz76jiti+FUs5uv9BLnc16kYgoevk4n0xFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736427949; c=relaxed/simple;
	bh=hv0Z48CBXo8n9qGVG9lOihR0ZB7ky+BMfpnB1lIPlB4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QoKIJXoGdP2XBG1HD+Vj/5+k9y8imIEH8Cm0wx9/C8BxkNgwzT0k8KZnymNy5iyB2WPlXCNdOvL3MDb7tjBT6+G6lCrtNHq84xQzu9DZurUJMvvA4Cw/Ek0YG5aAYBLNxe5oTI3WsnlldggHB8QukPE7aa6/4jzsh6LoVskj5pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Yv4Z+FB8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 509ChDO9005340
	for <devicetree@vger.kernel.org>; Thu, 9 Jan 2025 13:05:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HiRDVKL9kVnpKKAsGXSy8oxHeheGb7IoT7PnB/GHq0M=; b=Yv4Z+FB8nzBRMeTn
	QL01ngmlvevZy0KuJQUMaDqbf80BEp9GyRtnOVAN5g59o+erx0LhqL5LdjpcFryC
	942YUtApj6s9tES/4Gaq9Lyqia9nRj3uiKYn6x/l9L5hYC5OsKpAFhzZIST2apJQ
	nfQsXUIXr/uMcfWINtQTWzjbMV3i57wxRpe4Em5LmQ3x1+4uZjf3xWPnZsPxhPCi
	RigPYzlutS2zmlsAwqLovF0ADs9B936fiEfj18kktmT5lMyyLGjtlxxPhYLuIgcU
	gbF5YdgydlK3ay5RDEfNzmIpKpdcvQ6js9iqr0pCUNkcS7+0kbHaQufffrHaQ2vd
	3YpReA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 442epxg1kn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 13:05:46 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-46b3359e6deso1816261cf.2
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 05:05:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736427946; x=1737032746;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HiRDVKL9kVnpKKAsGXSy8oxHeheGb7IoT7PnB/GHq0M=;
        b=ZWdU+Fgxrzz/A+DsRspSRA8ZZ0ZKiCq+VcKE3DQpNxseXnwfsl0LDNXDwtxSNT4xdQ
         JmDvPQ2VnjWXBLTViy7OPczCG9acBSLOEpflH426AiramIUX1Kb2J7nEgX81xi7sKBg5
         Y3f6nlF/Jelw2HPUUkoTIWYI6y4t5kTKu27QY3u4Z3/Lu6nhlNattfKLz9W+7oN6t1Y3
         Is2mme+u55GpSsSFGqBJytu60UAgR9eiZmu8eg7uBwlWFB+7mQPmObo5QJdOm5MbAl40
         2HMekVF/PUX1FdzhE4qNRjW0UxpSOMpRTqbP7tfCASZyhgZJr3zoITcy0FPDZRslCPkC
         xZ3A==
X-Forwarded-Encrypted: i=1; AJvYcCUfJqMjjmIelEhz/SsVh5fo2YWEnfejvRThNcLsYi4N6TGS8hlRog7+keUVPVj35ffdokZ52yknQOcG@vger.kernel.org
X-Gm-Message-State: AOJu0Yx16cA9CFLpD3KpXpjx+E9cbk6UxvQes6CfZ7Tvr5pZsp986Omf
	fJ9k/ia9CfyavVyzKC9Vpx4dUop1M5H1i60aA+WQt2bkd4Sx+tdk1jWsANKZwFJbPW04wQQOsUt
	L23YAp7GZUBoDQmiVWdSPCS9L9b5nRBk3SZ2y3XgZLybM/EKAtjFfKlDxnEab
X-Gm-Gg: ASbGncvcd2SerORkM2/whDvd3bXVOtrwLEgs8yI2K63aR2FD/AXNrPFYPqaXnxuEw9f
	Sc1gays/ttrT82Rvq5/gtC0UcVtYm5YK2WuLSn+dpyusARvV6FzCK7J8lCa9Z85ammK8GQVgQMT
	BjIOB2Gxp5CoopSI7jHuLdLPha1s+PZ4Ui1uA+xBubQrkOU7ktUn46xxjLIrVcHc3SsMgahky0D
	dn19x3y44tR7cPuHydrCdvxEHkNGgkg07bfSIaYWreb+RB7Z43Jh/9pOKgPE7WMEWjYuP2hBQI5
	ydwet2fifxJVaRWhi5c/M2sf6fm5cfNMFq4=
X-Received: by 2002:a05:622a:1210:b0:464:af83:ba34 with SMTP id d75a77b69052e-46c71078bf3mr37280491cf.10.1736427945615;
        Thu, 09 Jan 2025 05:05:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFnuutlU5qr5zogpC+C0tbrXXVyKhsU8IwbRDyy5c75aDR1N/TQNvVOizimRbx6rRgtViKSEA==
X-Received: by 2002:a05:622a:1210:b0:464:af83:ba34 with SMTP id d75a77b69052e-46c71078bf3mr37280341cf.10.1736427945074;
        Thu, 09 Jan 2025 05:05:45 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab2c95b1bb6sm69082266b.159.2025.01.09.05.05.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2025 05:05:43 -0800 (PST)
Message-ID: <ac145c57-1db3-4747-88e2-02825f958d5a@oss.qualcomm.com>
Date: Thu, 9 Jan 2025 14:05:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/4] media: venus: pm_helpers: use opp-table for the
 frequency
To: Renjiang Han <quic_renjiang@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
        Vikash Garodia <quic_vgarodia@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241219-add-venus-for-qcs615-v6-0-e9a74d3b003d@quicinc.com>
 <20241219-add-venus-for-qcs615-v6-2-e9a74d3b003d@quicinc.com>
 <fde279ad-27ed-4947-a408-23139bcd270a@oss.qualcomm.com>
 <351a9654-ffa1-4727-b772-95d4ed113c81@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <351a9654-ffa1-4727-b772-95d4ed113c81@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: ame3T8w_P7lq3josL-TRFeVF5VodWw7L
X-Proofpoint-GUID: ame3T8w_P7lq3josL-TRFeVF5VodWw7L
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 adultscore=0
 lowpriorityscore=0 clxscore=1015 bulkscore=0 malwarescore=0 mlxscore=0
 spamscore=0 phishscore=0 priorityscore=1501 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501090104

On 2.01.2025 6:38 AM, Renjiang Han wrote:
> 
> On 12/23/2024 10:17 PM, Konrad Dybcio wrote:
>> On 19.12.2024 6:41 AM, Renjiang Han wrote:
>>> The frequency value in the opp-table in the device tree and the freq_tbl
>>> in the driver are the same.
>>>
>>> Therefore, update pm_helpers.c to use the opp-table for frequency values
>>> for the v4 core.
>>> If getting data from the opp table fails, fall back to using the frequency
>>> table.
>>>
>>> Signed-off-by: Renjiang Han<quic_renjiang@quicinc.com>
>>> ---
>>>   drivers/media/platform/qcom/venus/pm_helpers.c | 53 +++++++++++++++++++-------
>>>   1 file changed, 39 insertions(+), 14 deletions(-)
>>>
>>> diff --git a/drivers/media/platform/qcom/venus/pm_helpers.c b/drivers/media/platform/qcom/venus/pm_helpers.c
>>> index 33a5a659c0ada0ca97eebb5522c5f349f95c49c7..b61c0ad152878870b7223efa274e137d3636433b 100644
>>> --- a/drivers/media/platform/qcom/venus/pm_helpers.c
>>> +++ b/drivers/media/platform/qcom/venus/pm_helpers.c
>>> @@ -43,14 +43,20 @@ static int core_clks_enable(struct venus_core *core)
>>>       const struct venus_resources *res = core->res;
>>>       const struct freq_tbl *freq_tbl = core->res->freq_tbl;
>>>       unsigned int freq_tbl_size = core->res->freq_tbl_size;
>>> +    struct device *dev = core->dev;
>>> +    struct dev_pm_opp *opp;
>>>       unsigned long freq;
>>>       unsigned int i;
>>>       int ret;
>>>   -    if (!freq_tbl)
>>> -        return -EINVAL;
>>> -
>>> -    freq = freq_tbl[freq_tbl_size - 1].freq;
>>> +    opp = dev_pm_opp_find_freq_ceil(dev, &freq);
>>> +    if (IS_ERR(opp)) {
>>> +        if (!freq_tbl)
>>> +            return -EINVAL;
>>> +        freq = freq_tbl[freq_tbl_size - 1].freq;
>>> +    } else {
>>> +        dev_pm_opp_put(opp);
>>> +    }
>> I'm not super convinced how this could have ever worked without
>> scaling voltage levels, by the way. Perhaps this will squash some
>> random bugs :|
>>
>> Konrad
>  Thanks for your comment.
>  The default value of freq is 0, and then dev_pm_opp_find_freq_ceil is
>  used to match freq to the maximum value in opp-table that is close to
>  0. The frequency values ​​in opp-table and freq_tbl are the same, and
>  dev_pm_opp_find_freq_ceil is used to assign the minimum value in
>  opp-table to freq. So the logic is the same as before. I'm not sure if
>  I've answered your concern.

We talked offline, but for the record: my concern here was about
clk_set_rate() not scaling RPM/h voltage corners, which this patch
fixes

Konrad

