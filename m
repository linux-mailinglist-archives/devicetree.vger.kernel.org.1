Return-Path: <devicetree+bounces-189021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B5962AE6641
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 15:25:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B32CA3A78D8
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 13:25:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC1C477111;
	Tue, 24 Jun 2025 13:25:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cbul+x/5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0A4202983
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 13:25:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750771540; cv=none; b=DDpbebh+cus7hPhLMhsY5wz9b34aWlUEgmQsa8VlShq9qRroSW+9YOrUyXZe7gQL6XLmtWYt1f6lqllTT2KDjZwQsLu30SKp+j8i4Gi9AcvZG28iJXws/prY+3d6AQnhGVdnaR5L/kBoI963prZlk5hFTOCgjpmkeU3ZI5+aicM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750771540; c=relaxed/simple;
	bh=O//ctg+SgVaxYLIL04Z2pIwS9W/cpXKX5+4dHW6Gpu0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=M1igYxHJBlqOYurRkXgTxcCyLd9jHNIbyiMrghqknZNbDonqxkdsfD3IsfXpTJVemvyc3HNdMQgK8yZQqmvSMSLRFgCcvrurOrFePoTiTTZMDH/zjf8KTRlvAuS8sxKT5dmkO5SmVE7Oyg6h4vWsYF7XcrVjhC0zmg9NaT/gLKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cbul+x/5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55O983Oo008157
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 13:25:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	puqnTEAbiwXXvejvFqHMQDxLMczv/myXUOZnE8pspZY=; b=cbul+x/5zDFIJR/D
	zoSVQtmbiMSfUxpe5Joqf9z4WRN/GHRJKQ0dBU6x9qEJg99OMKXfIcwBvH3b1xKS
	ptuT422Jq2dJXuUPeXfMMZZ9nGfBNR7xzhA1qR/x7DySHcMDkT4KHsINHjPxOesO
	WOucqMNUgflVUTjdXu+Vmb2qpVLOlqXYYceD8zYGd3CROzOoQYzyBk64myVEjB51
	v5IqA74RHvP/s6bU1ajNvJFPg8ykX9B+aczmvV7f6QqhGuZGIydJrrDG2aIZVKzy
	z9thC8TevL2Na/Zn9CTrgN8KaVMLSN3ElMgDT1pVpSxE6T4Xxn/aTC2wwa1cOIz7
	tQn4Ag==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47f7ttudt2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 13:25:37 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d094e04aa4so175588285a.1
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 06:25:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750771537; x=1751376337;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=puqnTEAbiwXXvejvFqHMQDxLMczv/myXUOZnE8pspZY=;
        b=cQB3XGo5isSb3L3P6P/FDlhgNA6vzUr51I7Frm1bw6zJDKAVFDi2VQ9OCOeviICQlY
         C4UC4BGFf1pUh4IQZNX9pKjra5tYkhn+0Oibj9mx+NJFdKry5P9fM+h2mcKTzWusvPCN
         QdMVi1oshvp7EYAytrFow9u+UmcbipcZyULjUSBob4NSZ8SgmYgn/Mbo93QxCPvHBpUc
         pQHZZ/zdS+TKZqsML6rH4BgSFPQQo7+fD1nAHVAJZ3CNz5fF5MXZOkYLFflaZilP1guN
         l7itpwHMAgGNLojeQKHqeqTZq5ggAJrU5j335zdlUI+Ri8jCN0fU4nKKIJudKkYHUTaz
         acOA==
X-Forwarded-Encrypted: i=1; AJvYcCWFMUkz4ZVgNdma17c4IWYDgR+IynD5IRxZ8tdr59NGUS0YJSxrwCVWDZzwbU/STocIzLKBceOXG1jy@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3ETrF+HchtLArHxMH5fZkuDMS918exfi+CUGcjtmy8LgeXULS
	MUBkn5hcmIZ7OV7cKIJsHvQOl27Cve5+juaV5fF0+tZp0WnMtEJaNFATcnTSm483+jlY4NnkwEw
	3YL+iVjB9fGBcGoBf5gcQn8MYT+ZwHcfJmpR6S9I7FI9eAxhkI/R4BNkKnScDIIeh
X-Gm-Gg: ASbGncvKLN14GTyD15Hb8eAfEJz33Mc6VK+sU19oqBDfJvYquSOyNyvnNzG0V8OgTal
	Wz7opUwBQ5KcHQLURY1mOOilVywV/SDyj8fEOmgSZfkYpT1gmljdkiQqHJPdVXkMJkaZv9eDgvJ
	XY4Mg+1COPAcPCaOJnbkMsIXCsGNV1zfucnC0SeXR7Y8BX42Ff9cOrzF15OzNnZsMpO1jvxx/hd
	MUaRhmQ+oxG/pR8mBWQLgRv1ZpJr5rFG+3a7AWBEpL+lKbvEUMTqh+2DnUn7BfgnPqsxwSx01T1
	jIUkzWEErZK+eoBmKFXd2UdUGLbq10SFOc7Rsr+ZivEr7hgBvFDW4gkiOS5r5JnYvhJ6BR82l5C
	XsYM=
X-Received: by 2002:a05:620a:1b97:b0:7c0:b018:5941 with SMTP id af79cd13be357-7d3f98f6cc8mr773215885a.7.1750771536989;
        Tue, 24 Jun 2025 06:25:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFdrAg7gq+yCMSKsOWWwPNIbmt3jijAcQ2jxJTGwCS226EaL249p7Qlaj5TFZ6lHgo2gEcMWQ==
X-Received: by 2002:a05:620a:1b97:b0:7c0:b018:5941 with SMTP id af79cd13be357-7d3f98f6cc8mr773214385a.7.1750771536510;
        Tue, 24 Jun 2025 06:25:36 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0541b75b0sm864445466b.126.2025.06.24.06.25.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jun 2025 06:25:36 -0700 (PDT)
Message-ID: <cdf8428f-1407-4482-b946-804ffcdae3c7@oss.qualcomm.com>
Date: Tue, 24 Jun 2025 15:25:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] ARM: dts: qcom: msm8974: Start using rpmpd for power
 domains
To: Luca Weiss <luca@lucaweiss.eu>, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250621-msm8974-rpmpd-switch-v1-0-0a2cb303c446@lucaweiss.eu>
 <20250621-msm8974-rpmpd-switch-v1-4-0a2cb303c446@lucaweiss.eu>
 <50b0aa77-4ec5-412f-9ce5-6ec613dd0afb@oss.qualcomm.com>
 <d31bf707-0f8c-4f55-927a-a08c5310b7be@lucaweiss.eu>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <d31bf707-0f8c-4f55-927a-a08c5310b7be@lucaweiss.eu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=QINoRhLL c=1 sm=1 tr=0 ts=685aa751 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=wIXcl6-ah0yuBUIPcu0A:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: F6kNL1hOExrwTMMV6zy2x9DpBrJakWMN
X-Proofpoint-GUID: F6kNL1hOExrwTMMV6zy2x9DpBrJakWMN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI0MDExMyBTYWx0ZWRfXyeGXMAOwWKXG
 rEn786LjhYut4HGt96V+X0aVL8qg8QvCtc8dgRI6IWjRXtm2suBa0QYwTIHSFT1DrSrcehPk6et
 UM5ycia7q578LcMR+3j/ZV+cnpJV4Qtns+LpH33pHB9iSvcxbeU6uptWX5aM+qngjdD5nGhsZgI
 Thyu/UZoStkjnDJzqPLmsdhnMOK+k5fJ/AjlGnBYE/dY/F+4TPfQM5ZDORvq3XG39EEFs8PtmKL
 1oQ6ZQXH9+iY23vajXknHwpjAdm7mcPNSiPMLOyWz5WHdT4/U6X80vY9fb/PDSf10fj0lb/KQzy
 /7a68veNPfLzqzwApC/FtSU7a4LTeXztwxG3WOojkRy5EF8wtJBVgBZ3kN0ItMHw7xcXR81acBd
 fmiTAPTT8K42lShz+rNp8g2R/oLT5eGI+t7Joe92N066GP7aM0Hlsco9AH0cOumvwA/ZKcqY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-24_05,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 malwarescore=0 adultscore=0 mlxscore=0
 clxscore=1015 mlxlogscore=993 bulkscore=0 suspectscore=0 phishscore=0
 impostorscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506240113

On 6/23/25 6:44 PM, Luca Weiss wrote:
> On 23-06-2025 2:39 p.m., Konrad Dybcio wrote:
>> On 6/21/25 3:19 PM, Luca Weiss wrote:
>>> Due to historical reasons all msm8974 boards have used the CX power rail
>>> as regulator instead of going through the power domain framework.
>>>
>>> Since rpmpd has gained msm8974 support quite a bit ago, let's start
>>> using it and replace all usages of pm8841_s2 (CX), pm8841_s4 (GFX) and
>>> for the boards using pma8084 pma8084_s2 (CX), pma8084_s7 (GFX).
>>>
>>> For reference, downstream is using GFX power rail as parent-supply for
>>> mmcc's OXILI_GDSC GDSC which then is used for GPU, but nothing there is
>>> modelled upstream.
>>
>> if you use an opp table with described rpmpd levels and bind the GFX
>> domain to gpucc, it should propagate - check it out
> 
> I don't *really* understand what you mean here. I'd be happy if you provided an example (or better yet, a patch) for this.

sm6115

> 
> Also msm8974 does not have gpucc, only gcc and mmcc.

*oh*... right

You would then have to somehow selectively bind the OXILI_GDSC to
VDD_GX, for which I don't know if we have a good interface today..

Konrad

