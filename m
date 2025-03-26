Return-Path: <devicetree+bounces-160758-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A292A71067
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 07:09:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A18977A233B
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 06:07:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0AF5186E40;
	Wed, 26 Mar 2025 06:08:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CwYiwTXk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3055C17A2F2
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 06:08:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742969293; cv=none; b=f+uEmou5JhOCK3q9+hyyHpDvoku9nEMsRX4v4HhjocfKvY+DgVbu7BZCAi/FAATEwjspzIPUtLEwpeSq8WYMXVcDL8JvAiw9qNGELSHXF7BAIj1f/bfRJcF5Bd3acP9oDdrDZlnGR1zQqLGpQ/U+W0+TnbCU3epl6TObH9gNiR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742969293; c=relaxed/simple;
	bh=DV8Dt4NQTcwtQhBu3ee6ir786TfXKELwP+K9zh18GmM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MkZMZ/w6f8SZZfAai7azwzN8IG240NswaNTlaiKHyo1I0XffYIBbkfY9zxRxxTd4f8UF5jbJPsFkIoVigH+a88u84OUH0zuWTPq5Zr9gBFwOlWIiJPnOy5uWr+/icONFmflbpnin14xImS27wxuoLMMML+DHT/lNnQWe0l4JBPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CwYiwTXk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52Q64eAT015120
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 06:08:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bs6P/y7OnnXl9wA9mcNU5vvj6Yur2Xri8LkAGJTa6fQ=; b=CwYiwTXkeMQo8M39
	2AWWOe8cSAhLOrKuostRhfIBPzVEn8sObh8qKBh8FepDOpWAK2LeyfvOlTHAV2PN
	0Ydl7bsIOJUkW/xSS0muvx1EM8WpAWJlHy/brDdDSV24DH9cHVLjIL26pLerQwx7
	r1b2EsEzyXahnp/lLb2Edt7jP317SIUld0NjS5OUdSphhBU/ZvAcvFgShidFLwGr
	iVm6zuSBClBNAbF85e0tHyvhheg4gLawUrPHXmKSluev39VLy9xZNUbTrrMTgpQi
	g28TdNq7AH6qyfv5uR/CmCzRGMISifCRJRfd+GaGTOSr+sx3JA+oOsFcd5CY+dh6
	FFzjFA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45m0xdscjb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 06:08:10 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-2ff68033070so10429638a91.2
        for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 23:08:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742969289; x=1743574089;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bs6P/y7OnnXl9wA9mcNU5vvj6Yur2Xri8LkAGJTa6fQ=;
        b=YUt7eRNJKu0dQdPOZoc3wg7JwgA7Z9dCf/AXZQr+stE1kBg9riO833r6ign2zucsPh
         mz8pN0AOJcPZ5dil/xJHLq7rNeLaysrtTTXOe0k2mOUw4nAjMCfp8boTlxUI6P5y7/FQ
         I70YM0au4k6RMVnRnhGOhJI0FdBEEgHFSr1/kWW9zjbfEeMOmWlr8vNsBDmGVaHH5oVT
         xcjs9x0kf67KIVlz+0XeURAzHo09SWjnlQkbEcNlNJq36kYuTNrQbmziqE2tzfipXznj
         odTPo9an8N/3+P/7hwTT/DFmHFDDz+syuhb47sjtfigboi2oAZYidjpbj8L2hYgY0bl7
         mWTA==
X-Forwarded-Encrypted: i=1; AJvYcCUh9lsis4lUBojtmCttVcBQ7AKZZp0JPa7ZX1ryKynRzM7J7uwFyrzofl2ZrPVprn0dV7j01OqpOSo3@vger.kernel.org
X-Gm-Message-State: AOJu0Ywk07/lRdi3h1IUfNMGlxDeez6WEZY995+ydyIAg7lyU3KcKfid
	sos9BKWUlkR3A22NI0L3V33+RGA09vm2LhiaVmLCZggW+3WBzoLJsxhNiJU1AU4gh1i+2tcgVcs
	h1kg6O2TP6ORTZCJlprezhhrOK2KtGhdAtpm/o9GfeX2A7MNRT1/z8x6cTsCP
X-Gm-Gg: ASbGncsbuZ3xj+A4eha2Y8Ko2G6gbo8sMCYRF1aXyrPDUSE2YoBdEIw6n2J7fWXX8f5
	3OTPBYrvEQ1/4yTRImC/MneMrGAdGkUY+7kE5sLM3E+NrBx6QknDChcxnxNMk/8ff8XeoxlYuHc
	DuYGCEFstt4qsJkwgw0kytZg4GqcX9jw8rNA3gBFGsrfRdgqGQdn49plG9ln4jnr0J88xkXGExL
	6M9QxSJjmb4qOJ4Cc4GpVzaW2YSAJdPLMwD50u7obs+poTRZJ7AEJF4MhKDeBkVtmoyWZ63fsii
	TQB6gcvI9fwxqhURTp+ZFu6PGcHp6r4pGN1C/H1q
X-Received: by 2002:a05:6a21:33a5:b0:1f5:882e:60f with SMTP id adf61e73a8af0-1fe42f2da7cmr26905140637.17.1742969289504;
        Tue, 25 Mar 2025 23:08:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFSUcFYBXOOAqPpsEodlNU/8h9WWE4B5xscY9kxh7baPG6T5AYHq6bhQtT/uMIVHhhESqO7RA==
X-Received: by 2002:a05:6a21:33a5:b0:1f5:882e:60f with SMTP id adf61e73a8af0-1fe42f2da7cmr26905106637.17.1742969289107;
        Tue, 25 Mar 2025 23:08:09 -0700 (PDT)
Received: from [10.218.35.239] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-af8a2a4747bsm10102367a12.68.2025.03.25.23.08.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Mar 2025 23:08:08 -0700 (PDT)
Message-ID: <45d1dbc5-bf6e-4fe8-bf2e-0d517190fc8f@oss.qualcomm.com>
Date: Wed, 26 Mar 2025 11:38:04 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 0/5] Add snps,dis_u3_susphy_quirk for some QC targets
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250325123019.597976-1-prashanth.k@oss.qualcomm.com>
 <ee0848ea-7a06-4f4e-9115-5e3c0ab8bf95@oss.qualcomm.com>
 <7029a455-47be-475d-b429-98031d227653@oss.qualcomm.com>
 <db0bbc62-ecf2-4f72-a0c9-462fbaadebc4@oss.qualcomm.com>
 <5k45tcntn2bhxqt35quzfm2dsq6eug3hgqdcrta25oy47zuqja@4jclvspwob5x>
Content-Language: en-US
From: Prashanth K <prashanth.k@oss.qualcomm.com>
In-Reply-To: <5k45tcntn2bhxqt35quzfm2dsq6eug3hgqdcrta25oy47zuqja@4jclvspwob5x>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Cdexke3ZQhGBsfYlvRTRVgTDy_VRqmUz
X-Proofpoint-GUID: Cdexke3ZQhGBsfYlvRTRVgTDy_VRqmUz
X-Authority-Analysis: v=2.4 cv=Q43S452a c=1 sm=1 tr=0 ts=67e399ca cx=c_pps a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=xMnwRdS-aKneeMBeM7YA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-25_10,2025-03-26_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 impostorscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 suspectscore=0 adultscore=0
 mlxlogscore=999 malwarescore=0 mlxscore=0 priorityscore=1501 clxscore=1015
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503260035



On 26-03-25 03:40 am, Bjorn Andersson wrote:
> On Tue, Mar 25, 2025 at 05:31:28PM +0100, Konrad Dybcio wrote:
>> On 3/25/25 4:01 PM, Prashanth K wrote:
>>>
>>>
>>> On 25-03-25 08:11 pm, Konrad Dybcio wrote:
>>>> On 3/25/25 1:30 PM, Prashanth K wrote:
>>>>> During device mode initialization on certain QC targets, before the
>>>>> runstop bit is set, sometimes it's observed that the GEVNTADR{LO/HI}
>>>>> register write fails. As a result, GEVTADDR registers are still 0x0.
>>>>> Upon setting runstop bit, DWC3 controller attempts to write the new
>>>>> events to address 0x0, causing an SMMU fault and system crash. More
>>>>> info about the crash at [1].
>>>>>
>>>>> This was initially observed on SM8450 and later reported on few
>>>>> other targets as well. As suggested by Qualcomm HW team, clearing
>>>>> the GUSB3PIPECTL.SUSPHY bit resolves the issue by preventing register
>>>>> write failures. Address this by setting the snps,dis_u3_susphy_quirk
>>>>> to keep the GUSB3PIPECTL.SUSPHY bit cleared. This change was tested
>>>>> on multiple targets (SM8350, SM8450 QCS615 etc.) for over an year
>>>>> and hasn't exhibited any side effects.
>>>>>
>>>>> [1]: https://lore.kernel.org/all/fa94cbc9-e637-ba9b-8ec8-67c6955eca98@quicinc.com/
>>>>>
>>>>> Prashanth K (3):
>>>>>   arm64: dts: qcom: sm8150: Add snps,dis_u3_susphy_quirk
>>>>>   arm64: dts: qcom: sm8350: Add snps,dis_u3_susphy_quirk
>>>>>   arm64: dts: qcom: sm8450: Add snps,dis_u3_susphy_quirk
>>>>>
>>>>> Pratham Pratap (2):
>>>>>   arm64: dts: qcom: qcs615: Add snps,dis_u3_susphy_quirk
>>>>>   arm64: dts: qcom: qdu1000: Add snps,dis_u3_susphy_quirk
>>>>
>>>> Are there more targets affected, from the list of the ones currently
>>>> supported upstream?
>>>>
>>>> Konrad
>>>
>>> My initial plan was to add it for all the QC platforms, but wasn't
>>> confident enough about it. Because we have seen the issue only on these
>>> targets and hence tested only on these.
>>
>> Okay, let's proceed with these and in the meantime please query internally
>> whether it could be applicable to others too
>>
> 
> But if it applies to all qcom targets, wouldn't it make more sense to
> add the property in the qcom glue driver?

Hi Bjorn, This issue was seen only on some targets 2 years back, so we
only tested on those platforms. I think its better to add it to other QC
targets only if we see that issue.

> 
> Regards,
> Bjorn
> 
>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> Konrad

Thanks for the review Konrad

Regards,
Prashanth K

