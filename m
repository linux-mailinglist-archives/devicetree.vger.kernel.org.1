Return-Path: <devicetree+bounces-112613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 578989A2FCC
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 23:25:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 16E3C283E8C
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 21:25:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A0B51D3182;
	Thu, 17 Oct 2024 21:25:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KhRHIMdN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86E141D5CD3
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 21:25:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729200313; cv=none; b=mdr3/xDFjmCZAZTPyoIKKBm9VGlekUTS0/cq0iaoJL6vE13Pl5t/r6z9jjw8dECe96mWjsdQ8FJv++CNX1hDaxhJ4f8MihqnCCidZ55C2Kxz642B65VJRKxsrlvrotl8qsuehDenjVQJzjvoXinsAAnSfg2ifGyl+r1Y9H7CAS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729200313; c=relaxed/simple;
	bh=f3XSZjpMW+4pSNSq+5t+nHginY6jLJSrXAO6nlE9cZs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=t4ovgeBZ5bCMl5Cp69vEVrU8eOJ3MEKUvfP2nTcR3S+zojWAJj5O5cGz1nWagiLV2rMr6UJ9ggZ023G7EEb8fLC/glh4rj3KryddlLN23bq9bVz8eCYuiwGDCjLOHo//tn4yuH4K+jtE7GhXtI0wWPEFovxMStNKHtE91XFuNSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KhRHIMdN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49HFw1oE026711
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 21:25:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6V0PA1pbHT6De/zvPtGOGGXjIB2qbOpp2xwkNgIwcO4=; b=KhRHIMdNcsvOhkPe
	uItromkmi1BWhuNFe7ea7rs0UcJV5hPGHqI45i3gDdwAEuyrdpOANU9Ui4pCxzAw
	Pzu8DgEYp66uiyGoCEqAGfSmMbwr1FyGFXW2hiSeVjoyVcaC/46c7HvcP1PlalZa
	XbNr+kvKEpVUXQjx2uSv1EDMkOTmSFLOuAlZD8DZKPkB2n9Fyj7X7IR2OmwEid/7
	dWLJiuFuMONCZ6boU98S7zGV3OtaU1q9Qy7jUsul4FSmfHHZuMumYkGiw3bYaQCe
	hradrwluD4PgswzGuBn01zFYHFnX/VKc9D4wFy0h8OGvVpF8FujOHAq7yQc78zhG
	0trcHw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42a8w6p3wv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 21:25:06 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-46049d0c4b0so1766641cf.2
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 14:25:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729200305; x=1729805105;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6V0PA1pbHT6De/zvPtGOGGXjIB2qbOpp2xwkNgIwcO4=;
        b=P9xGs2uoSANacm0v0vySzBLP3ZQ2IKb5mEp/3csA0xAIAq/k/mLMId5nmQjO2uig8K
         6mIZWR07++EKCwK8sXdEAi3dQQ4od1DSTeG6NcynUZ4KOkev4DNPqsmmu9lV1wnES0J7
         IUUMlPrVuhnQCSQs0W6DG15H0QpUMJfL/GjJEs/eWD/E753QLCv97fU1ZutOcMVkNefA
         nHQec6OUdQc3XQVyq3uSM3TvibSPa+tyLQ7ta4vdycNy/T/DhPwG7faJDZab9CzpvyzL
         XYS9yVmst6+SqKKnAFvdS2W88/h1UBAvVQGQlj1hW8MRIeag+uB3Qo1guXGxuNrfl6XT
         Mgqg==
X-Forwarded-Encrypted: i=1; AJvYcCXySquyTJCQiGM27VdJPtd/rCX4zjb4UC6tDEHwMHTE3FmqxWVnjXXGZ9zdxKJr9AO7HPICb0x4jlQr@vger.kernel.org
X-Gm-Message-State: AOJu0YzNd7GtSe0R/14MP78O8S4njf/Q7eLxhyz3Bwas+Ak54vG5CS/f
	5gUkuVTfGvP4ENNFXtMbzHwcqFzjEij4mMg8RHmoBJoN4VgV1NTrImtlDauFMrCsQJxQaHTa9ZB
	Dywq1B63mF4VYc2u7fWhw4jHexrH9RKEyTonC+sSmaAB5OFyitHTJNzGGbaRP
X-Received: by 2002:a05:622a:1790:b0:460:a584:7b14 with SMTP id d75a77b69052e-460aece96b6mr1405971cf.1.1729200305446;
        Thu, 17 Oct 2024 14:25:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHGk/ZQpFtr4eYXVelF1QQ9saPRD8rq5WepP31nYkQliEgOxyubghQM68LJwB+eWOr/Ye4wNA==
X-Received: by 2002:a05:622a:1790:b0:460:a584:7b14 with SMTP id d75a77b69052e-460aece96b6mr1405691cf.1.1729200305035;
        Thu, 17 Oct 2024 14:25:05 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5ca0b08bc27sm24203a12.45.2024.10.17.14.25.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Oct 2024 14:25:03 -0700 (PDT)
Message-ID: <6787fffa-642a-4099-ba00-445dd2b865ef@oss.qualcomm.com>
Date: Thu, 17 Oct 2024 23:25:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/6] remoteproc: qcom: Add helper function to support
 IOMMU devmem translation
To: neil.armstrong@linaro.org, Mukesh Ojha <quic_mojha@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Shiraz Hashim <quic_shashim@quicinc.com>
References: <20241004212359.2263502-1-quic_mojha@quicinc.com>
 <20241004212359.2263502-4-quic_mojha@quicinc.com>
 <83e23090-0390-4c2e-91e3-e222baaa889a@linaro.org>
 <ZwPyE/rQOH181rqz@hu-mojha-hyd.qualcomm.com>
 <5fc9d581-14a6-45e8-8eda-4df49b81f15d@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <5fc9d581-14a6-45e8-8eda-4df49b81f15d@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: dwS4eQGHccyMqztNnSPi1ikpy_Dy88o5
X-Proofpoint-ORIG-GUID: dwS4eQGHccyMqztNnSPi1ikpy_Dy88o5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 adultscore=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 mlxlogscore=723
 malwarescore=0 impostorscore=0 priorityscore=1501 suspectscore=0
 bulkscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410170143

On 10.10.2024 8:59 AM, neil.armstrong@linaro.org wrote:
> Hi,
> 
> On 07/10/2024 16:37, Mukesh Ojha wrote:
>> On Mon, Oct 07, 2024 at 10:08:16AM +0200, neil.armstrong@linaro.org wrote:
>>> On 04/10/2024 23:23, Mukesh Ojha wrote:
>>>> From: Shiraz Hashim <quic_shashim@quicinc.com>
>>>>
>>>> Qualcomm SoCs runnning with Qualcomm EL2 hypervisor(QHEE), IOMMU
>>>> translation set up for remote processors is managed by QHEE itself
>>>> however, for a case when these remote processors has to run under KVM
>>>
>>> This is not true, KVM is a Linux hypervisor, remote processors have
>>> nothing to do with KVM, please rephrase.
>>
>> Thanks, perhaps something like this,
>>
>> "However, when same SoC runs with KVM configuration, remoteproc IOMMU
>> translation needs to be set from Linux host running remoteproc PAS
>> driver"
> 
> Thanks but I still don't see what KVM has to do here, KVM is an an optional
> Linux kernel feature, Linux can be configured without KVM and still perfectly
> startup those remoteprocs.

Mukesh, KVM is a very specific use case. What you're referring to is
really "no QHEE / Gunyah". We can do s/KVM/Hyper-V (or almost any
other software running at EL2) and your claims still hold.

Konrad

