Return-Path: <devicetree+bounces-154017-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C2926A4E81C
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 18:15:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 13256188F1B5
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 17:08:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC36429AB0A;
	Tue,  4 Mar 2025 16:46:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ex0v6HYO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472EA29AAF2
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 16:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741106785; cv=none; b=bYLuO/+ILa7PNUrvu1Jr9AMrk4AFMqiEl9oUfcS/jsE+nFLGw07DeutfrJV2JELk7s2Wa1zpmxwRpkwXBvGH0J5cY5FU7U/N1kVMt7OjMWG9Tl/pynYoqS7qxTL991CDDjJ47D46b/4KwEu+YRjqGJJAAAl9zqrMdnigVI0gM60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741106785; c=relaxed/simple;
	bh=Z3R5Pcaqs1+G0Vmv6xCvvwsCj1j/WFqkmCVrvqCYFug=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nIFiwBM216MgD3ZHKwvv3YQk8pwHwKTfjLtCD+D65fO5/3sFvxp5ZF5lCXDA8FrzDM56kPL4Q1POzg95K2UJ9cOdBu9HbuMQLeAJQb3ndKNXZOvkRcIgOqr+9OZCsdq1E2tgQTccVGHik5Tv1fEcJXfhRdNPk1vF6dJLYs2U69o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ex0v6HYO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 524ABeU4010333
	for <devicetree@vger.kernel.org>; Tue, 4 Mar 2025 16:46:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	y7brEcXtfbjcqoYB3XEQrIfgtnniuwEzqWd+mi+OW4A=; b=ex0v6HYODe9nYu+h
	fABau/0Xk1AapsRzLSzGrEjXmgpJVW+3+Bo++AAklQOGGVWGk2FfwYZtkM/D3Dp6
	CK6oe0LIFznNuAPFpkR/kTFkf471dAsC66byl2YASvmiJ3VaZfSifhmSU9BsJ2EU
	NDHRFtAdprgeD/3bmEzV65uFRnFPBmcz5OFXBqQNrlLjWsgdHz0EF3umNo8M8KeM
	3B3o30dhCIYfbYri6raIqiSW8x/iMMpnQnJrmQ8ub8VzgJmqmRt40AKzpxPxDx3y
	WiKQcgpT6vV9m/I8u/rFMdrI1RwNe1spPx9/9ceaCnUFgeOqm/4NUL2bzExKev5W
	NpCHwg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 455p6wjfmq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 16:46:22 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c3cdff1f3bso15324485a.2
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 08:46:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741106782; x=1741711582;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y7brEcXtfbjcqoYB3XEQrIfgtnniuwEzqWd+mi+OW4A=;
        b=ULIZxWzs9sjQU3hkRwYWNOCo/gonsFdAhwjP56JnNaESfqpYchYA4HX2mx5sTRhQU8
         rQ+lrdVV80SrFHBA4FJkftVE7z5XkBl4Ylnwp+On+Q3JwwWUuH6763diT83xTIPqSPOG
         fYhXbtA+lVTEcFb66XPqA4PAteCVk3kYDUrV/TqJFQkD139LpMr2phr2h/DtkDHVoBia
         wuNUzZvMoq4iCLna2xPfBB7/3abEH8prcQOvJvVYYQxLE4hzsLfOeOLAOjGgszwtH5BL
         LK4W6Rud8to4eDIVA3KOisJR/ID2Eq71HZpVeSi5rKRyQnzcMP+zEVECQUGAtzzkOvzG
         HGfQ==
X-Forwarded-Encrypted: i=1; AJvYcCUExg/9Pt1ZlryW7BkBAYcyAAhjpxkXJQtwBBVDOqyZvLTJ+Hpjd1Uq+Cr6xXim3wjNup8/w/syWaeu@vger.kernel.org
X-Gm-Message-State: AOJu0YzOXVWUVpsgcq7SKxdddNwHe0p/dPkUHR4pCg6Mb/FzTNxO5Wxs
	3TL4aytmd24h5FXSWwDhJGBNpwW1+GKbsz02XNZiSKzNXK1/hG3Q8jJiyrFNEk+8S7v7f+IgtZa
	siE3sjiQIovxD6rLQJ3IbCSe8OZ8ppnuuuA/AkptrXKPhb+UfmdV3A+gJmTqB
X-Gm-Gg: ASbGncvuvA+nRq5EpGLTYJsS3XHeViEh6P7/nyB8b/5Yso93iyNd+qw2X7NBfdnoBGh
	W8OFt5m69O3t3lsMQwrY+IzdRSKGYbAiQz66qHhYCXCgccbzn8X9YwnEjqznRKTltj9VWJn2rkJ
	8mXvjnjo629nKlwrunQd4SmHsdHQlwtfWul/zEz4ALgfBzNP1SiYE2/j/uRdy3bQEHAWe64PmG/
	MD6gVBxFH9uOfun+JoqGyxC/b7+QGsPd648618cyPzEAL3kN8t7ktiV0HTmPTyPRlexroW4Kbas
	5oc5P+fu88eICePWqFYf5HbwkoZxy9nnIFFm+5+ltG9KhB7p/fD/bd2mgcba7+1g5KD0lA==
X-Received: by 2002:a05:620a:1721:b0:7c3:d3a0:578d with SMTP id af79cd13be357-7c3d3a05813mr100264685a.14.1741106782075;
        Tue, 04 Mar 2025 08:46:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF7EoTqVks4QCeBflC74F5I6vZviIdM8z0vuE9z7wp5fUI+aWIRcwJklBDc/2TUsnKYZjW+4A==
X-Received: by 2002:a05:620a:1721:b0:7c3:d3a0:578d with SMTP id af79cd13be357-7c3d3a05813mr100262585a.14.1741106781753;
        Tue, 04 Mar 2025 08:46:21 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac1fb09be0dsm97722866b.5.2025.03.04.08.46.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Mar 2025 08:46:21 -0800 (PST)
Message-ID: <f8efc961-2fbe-496b-93d2-55f9072bd08c@oss.qualcomm.com>
Date: Tue, 4 Mar 2025 17:46:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 2/2] mailbox: tmelite-qmp: Introduce TMEL QMP mailbox
 driver
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sricharan Ramabadhran <quic_srichara@quicinc.com>
Cc: jassisinghbrar@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        andersson@kernel.org, konradybcio@kernel.org,
        manivannan.sadhasivam@linaro.org
References: <20250228045356.3527662-1-quic_srichara@quicinc.com>
 <20250228045356.3527662-3-quic_srichara@quicinc.com>
 <lakoxihaqlu3vq42eoqtlip23ggdieizotyzax5up5n6ndbwsi@ddqyzvsdtmkv>
 <1359984c-2ace-450b-a3ff-bac0b9fb5cc9@quicinc.com>
 <2xpu26pu4ovnchumwx7xzlp2gldpfgsurnhuqaioygb4a6xmsp@ygmpk6furqs6>
 <3e326578-ab46-4d7e-ad1e-3d572613498b@quicinc.com>
 <CAA8EJppXHXafwx+GPh0UhFLRLW5DNj8RwXdO4+fDdXp=SE13Uw@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAA8EJppXHXafwx+GPh0UhFLRLW5DNj8RwXdO4+fDdXp=SE13Uw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=EZcyQOmC c=1 sm=1 tr=0 ts=67c72e5e cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=AQ-p2TLc_isDrXhQJ_kA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 43gQhJG3OWkFwS_b6OI5m2pd2YkfqpuG
X-Proofpoint-ORIG-GUID: 43gQhJG3OWkFwS_b6OI5m2pd2YkfqpuG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-04_07,2025-03-03_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 mlxlogscore=734 suspectscore=0 bulkscore=0
 clxscore=1015 priorityscore=1501 spamscore=0 impostorscore=0
 malwarescore=0 classifier=spam authscore=0 adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2503040134

On 4.03.2025 10:46 AM, Dmitry Baryshkov wrote:
> On Tue, 4 Mar 2025 at 10:33, Sricharan Ramabadhran
> <quic_srichara@quicinc.com> wrote:
>>
>>
>>
>> On 3/3/2025 6:34 PM, Dmitry Baryshkov wrote:
>>> On Mon, Mar 03, 2025 at 03:58:42PM +0530, Sricharan Ramabadhran wrote:
>>>>
>>>>
>>>> On 2/28/2025 12:03 PM, Dmitry Baryshkov wrote:
>>>>> On Fri, Feb 28, 2025 at 10:23:56AM +0530, Sricharan R wrote:
>>>
>>>>>> +          dev_err(dev, "Failed with status: %d\n", msg.resp.status);
>>>>>> +          ret = msg.resp.status;
>>>>>
>>>>> return msg.resp.status (is it really errno?)
>>>>>
>>>> ok, yes error.
>>>
>>> The question was if it is an errno, not if it is an error.
>> status != 0 is an error always.
> 
> Is it an _errno_ ?

Dmitry's asking whether the status conforms to the Linux's errno.h
ABI. If not, add something like:

ret = msg.resp.status ? -EINVAL : 0

Konrad

