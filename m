Return-Path: <devicetree+bounces-145806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B63D5A325CD
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 13:25:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 853C47A2204
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 12:24:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D7F72080E6;
	Wed, 12 Feb 2025 12:25:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bVDA3rhg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68F172046BD
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 12:25:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739363119; cv=none; b=rb8H44v6IoG6MGPtMI5fco1qXmvREsmoWtXuuPDtWUgHGwl5NdKrA1OqsajYcX45wumLUPItBXHnbSdTjbygA6GUiiSelCwP0o6PK7xqaIZb6fn5JBfKc0372ELlPkZmrspHunEy07EbMAqxIfQfliRom1pQMRKcFHt5Cu4twDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739363119; c=relaxed/simple;
	bh=qCMQuOd6127OUz9tT0IGxaxcl3ESx7d1IxhUqjaUUwQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RILr74Q77DhgHquVi8ItHL+LRoLD71FppN73dYc6ea915yRSScBKATfLlzlYJO7ZPTXC1yCsNRGw3cgwhvkx+VRA2rSHSZrPMoVOBEGhV+vmOvqFCmXPH5tqt/19hC1lThfpPRMqm3nbtQAApkbf7CR00h9S/xHb1WBNWq2ZPwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bVDA3rhg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51C9qZnb013600
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 12:25:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UbcB1AWz3QueJjVm+z7IaoPIVQtiBjJzu3fLF4T7x4s=; b=bVDA3rhgotBg2MhX
	iN6EBS3a/I4GstUfJek3K6nklCSWSkTex/3ZfZGhpbx1v1HOuZZ8wqY31YGLZZO1
	VFlDS04Z9u+uE0ulMciZfHksofKHJZgoJSCNhV8riPdFEbbGHuitxi1aUvNNkWSP
	iLHlIe7b45GnthBJEI+YVM6giO0Zm11Ubk/GG/tYw5qGyrU6x1GsfdKQlLvREscQ
	nqb6zW9gwfwcYaigfWnfkphSayxlObNDOppqqZ2MUDOeueO9vzGv6jYgfmsY6dCt
	bgkozTzd3ODKFioxCdMKCFtJTE05XZy4Ee6Lnqmy4mee+kfFv1y7R43s9yuJnouh
	RIjY6w==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44rsd7rd9x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 12:25:17 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e444e99f26so11280296d6.1
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 04:25:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739363116; x=1739967916;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UbcB1AWz3QueJjVm+z7IaoPIVQtiBjJzu3fLF4T7x4s=;
        b=PBhTQwqk2AsR7fZK9ASCcvgZDILv7hgz2M0F5s/BVU5dxhxLcZlYZPkEGrLJPvq2Ew
         DVFf1dVRzgn868ODFtFah+qR/mHOC/WwdKp8bvE36LiM5iw19sIjAhz1H/IHFLsPSwqq
         YGnpIFrWBHFm/wuBWesceCd8WA0Zfd/5xeWOq+uSEay2pTpVAE5yR8oFyCl7NpPVlqDT
         ejz8i9MXWXwi1o2ZrovjG55kgjFbN8065REks/2kFTmlyG4pg7aF3YnjWd/NZSyKQQvv
         hdS4mympLtV9KuO6sw6FCABH/MzODPTfWWw152swvh8JyDV6I6kqhG8onS3xq3LM6+tR
         fBoQ==
X-Forwarded-Encrypted: i=1; AJvYcCWZyMG9ELhxHj28JTVi4AL9p1VFNsdGCnbdJFWhkhmPUv0M4GS6c6L6E9B0ohMZJe1ff88UKI8WAq7M@vger.kernel.org
X-Gm-Message-State: AOJu0YxunWY0iGEdvENe818o8QMj8EGMnOwyWGiRjG82Gv7objrpqPwp
	6ykrmuP69dc4lxG4vc7yEUdOe34qG8PVYjbhPP1o4x3MzOpWjfczXi0cyVyTTq4WSrikSjmmM+w
	m56V7Lb4zm6W8DiudsurJTuPI7SkHuYlIxjqtP5aMVVQkhdI+4koi5ox+43Qv
X-Gm-Gg: ASbGncvgQruFB3fWz+uVspeAGKO2Te17fX1H5p6EDQ9LChwTkDtCAfEWy8Qd2rUIfy9
	qZJX9F5Z6HA7rO/OmdtlDXEk7aHHCde1whWvpQaf2zsI0SVe4NcotIJ6UlHEtp5uuILEsELZFDC
	c3+2xVPhaOjSPEtNRprt/io3g08IwOuGY4rRoOrwgAFBhOqQUklGWFdmrTBztcgtbOtJt6Tmfv3
	E8vXC+jCebFnN5Nyc4tArbEvHMlKNqu3gbDnf49Qq0wU1gdcAKHvyAKH9pPzSzlTKU/ScTcprJj
	mVmGXua/MKwp/3JTZwVnDKupqtjEWOQqhchBZ+vtPbDo/KdkogPbEV6DIIk=
X-Received: by 2002:ad4:5bee:0:b0:6e1:8300:54dd with SMTP id 6a1803df08f44-6e46ed7ed94mr19147816d6.3.1739363116103;
        Wed, 12 Feb 2025 04:25:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IECkfJniEG1I6Ju5XhH0jZtnXEOb0hdwPP0TBFwXKQ/dTnxopH890xgz8LMEw9HIR+WBS3y/Q==
X-Received: by 2002:ad4:5bee:0:b0:6e1:8300:54dd with SMTP id 6a1803df08f44-6e46ed7ed94mr19147506d6.3.1739363115652;
        Wed, 12 Feb 2025 04:25:15 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab772f497c9sm1253695466b.7.2025.02.12.04.25.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Feb 2025 04:25:15 -0800 (PST)
Message-ID: <cba7e429-a54c-41d1-a7cc-5083cac6be41@oss.qualcomm.com>
Date: Wed, 12 Feb 2025 13:25:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] arm64: dts: qcom: sm7325-nothing-spacewar: Enable
 panel and GPU
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Danila Tikhonov <danila@jiaxyga.com>, neil.armstrong@linaro.org,
        quic_jesszhan@quicinc.com, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
        simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        robdclark@gmail.com, quic_abhinavk@quicinc.com, sean@poorly.run,
        marijn.suijten@somainline.org, jonathan@marek.ca, jun.nie@linaro.org,
        fekz115@gmail.com, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
        linux@mainlining.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20250203181436.87785-1-danila@jiaxyga.com>
 <20250203181436.87785-5-danila@jiaxyga.com>
 <4a232b8e-f63e-4f89-aa4e-257165150549@oss.qualcomm.com>
 <no4yqmep3b6k2s4cnucbujso67iavv57d7vrlnq3qn4vfexfka@secyoh4eqjk4>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <no4yqmep3b6k2s4cnucbujso67iavv57d7vrlnq3qn4vfexfka@secyoh4eqjk4>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: aN3-Q1LK1K7H5hA-jxUXuuclS4ai3yPx
X-Proofpoint-GUID: aN3-Q1LK1K7H5hA-jxUXuuclS4ai3yPx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-12_04,2025-02-11_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 clxscore=1015
 mlxlogscore=423 mlxscore=0 adultscore=0 spamscore=0 phishscore=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 bulkscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502120096

On 12.02.2025 12:53 AM, Dmitry Baryshkov wrote:
> On Tue, Feb 11, 2025 at 02:31:14PM +0100, Konrad Dybcio wrote:
>> On 3.02.2025 7:14 PM, Danila Tikhonov wrote:
>>> From: Eugene Lepshy <fekz115@gmail.com>
>>>
>>> Enable the Adreno GPU and configure the Visionox RM692E5 panel.
>>>
>>> Signed-off-by: Eugene Lepshy <fekz115@gmail.com>
>>> Co-developed-by: Danila Tikhonov <danila@jiaxyga.com>
>>> Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
>>> ---

[...]

>>> +
>>>  &mdss_dsi {
>>>  	vdda-supply = <&vdd_a_dsi_0_1p2>;
>>> +	status = "okay";
>>>  
>>> -	/* Visionox RM692E5 panel */
>>> +	panel0: panel@0 {
>>
>> Is there going to be a panel1, too? ;)
>>
>> Please drop the 0
> 
> No, dsi-controller.yaml requires panel@[0-3] and a reg entry.

I meant the zero in the label

Konrad

