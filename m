Return-Path: <devicetree+bounces-210218-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id DF63CB3AD95
	for <lists+devicetree@lfdr.de>; Fri, 29 Aug 2025 00:36:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8E00A4E2646
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 22:36:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADABF26F2BE;
	Thu, 28 Aug 2025 22:36:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="H5RbBKcA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0376626B77B
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 22:36:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756420574; cv=none; b=ZNcElWDvBuE5MKqAec5dug615XGiQI/opfO5lb8mydGeBZ8z/xmI2hqn9THs9oFookUtb3T3Eg5Rg6lLMXgSxuX2vl4iqfmE2GgAk/c2Y1mJJ8cLO1kTcZ0sVIBcOIPWVeG2tTXKydenoYMjDSe+jPRdTiyWFVsNs02VtSLnj64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756420574; c=relaxed/simple;
	bh=WKDOcnId/fYiJ4MUHlzvu++y6Wq1vaCFpfHFQlstfI4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ngDDy+fFZaKiaqVFm3kDcFKIAz9BscoOyhqgzjfjR9Shesgt7N/9lFAI/uHSQrDzOAk3kNq7pLVOl1ZZHmIj9FZ5t8YbEPaFdc1zefhyPbBvx8ZDqQwffwgDhW4WICbIExHlUuWptiX7aBSfT1oNu2xje9aMj/8uf+VdOW6Jk6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=H5RbBKcA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57SLWcWn031290
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 22:36:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	y7VHqRENNJebegQN/o6tbEoCvsmRk6JgWzlghb8aS8g=; b=H5RbBKcA8dwgu68G
	Qd7Ho/1SX7BctuQEsXJOWYwxeWvB7zK0Sp0mdUlJCpzGCGouyd27GTXy4cuJzeyO
	e5NaQhU3tjj28KvUG2Tw1YvuChcS0zePh67E16QnE9ypcJNfFBX9aiJlR2fcJ9cf
	gnT0PhMCk/Ii8RoLeYjwghxS+SAHt6E3UCPGhQ8mApskpJGUU6VIeEg6bPzK9AOf
	y5a6DMt4/KZdLG2AGT6IkXL975rjHNQJUC2F8J6Pjy3r/9CzmSoJemJNpok2tXHC
	hkDWadfFQ04eUI74vjXNYYAWvINl7tY1vENAPsawqKW6zFquF2hQAEskWhLFyKNb
	yPhb0A==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48tn67j4gy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 22:36:12 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b302991816so21512441cf.0
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 15:36:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756420571; x=1757025371;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y7VHqRENNJebegQN/o6tbEoCvsmRk6JgWzlghb8aS8g=;
        b=F3pG/0DV+2RRiQVmM0KsJAGmWhhpmklIxV6Iy0IbRebg/WSrROlkbtL5kUF6XcvfNj
         EPqTVUbIfqQT7o1RJZ0ptQDrt7DKMP3basN/+BhYvnN+oEknMZUIm2RZG05Rf6thPp7x
         ti4TJaZGO1TPlO6mbI3itL/Br+Z2f5YnFfL+sQ28l7wozRzCMmAeE1KH365uwh6pCVqG
         TS48cXInVsjSs3mf0RqBWd74M6YRXXqAQZFfq1eUNXqqCKOOXXNjKkVQHFEFNn0HdhXP
         AHrfEc+aeoH1RTq3jpxszwirsrXZQcnESUJPkUF+1rC4sFVC2VRlfyFnY7lexJYLVV+W
         I5IQ==
X-Forwarded-Encrypted: i=1; AJvYcCVdn2i2+ROqWlzKGrtB4iQ7edABpaTG3ZUbxmMOrVLY6bUOaTgPlizQmWz7mUoHRk35emS08zZLhFN2@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2lZh95eEg58TxIXzN2+ALK7j1jUAbkiQsTlryJsrPBLs9TSVr
	cG3S+xIV7IgBoYJHnlSoEbY5N58L6Lpm/KYxscURbAC8bbajBqyGDlGVjolYrHLLn0Lt28R1V5Y
	Ro0j6sZd2oNYv40Ilw2N3BNxjJzC+eKp6zrYTIBra1veVBTwPic+oMY3ZuTRzeX2I
X-Gm-Gg: ASbGncs/37Db0MIEGdiF+M4Y0TRbJNmvBBon4csqpZzL84fgRus9xIp6gOQLntJpVTe
	OQ2TREOQm4BTlTBJpI8hMJxgNCx0eRK0B45TITgyYc5Z8k9eZ8PZz+8hdrQs8DZYa5rMPcuZgZ2
	Jbs2MmHJwTomNdrW9c2Rx56Yx0AAV3vR+eNOzJ6LoAlWTgiP6ZThVX0XY3TpT5mKYf/No73ICHv
	pqiGDwBHN3RtqFCQimWiHt4zsImeSAJSgQf7ZEORYedkKAjHirS1FxurFFMW2awZXX85Z4gt59x
	19xBs6UyNZTeOxhckkT5GbPZE9myFOheExOTRThqdcewkgPVM8E1CYxgpToAIp4I7wIfIO27yUa
	Ea56WdF61Gv+Uf7cT+gY4L4ghGRl6FJBoXmq+O2jy1No=
X-Received: by 2002:a05:622a:4119:b0:4b3:81b:c5ad with SMTP id d75a77b69052e-4b3081bcfdbmr33563001cf.80.1756420570694;
        Thu, 28 Aug 2025 15:36:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFgrEZRc/uiXvTH7Z0zYEjpMYvq3lZXxGw7EpCSWLs1tGYbdD4Ja4C6+txkoDZ9SwLFf/s6PQ==
X-Received: by 2002:a05:622a:4119:b0:4b3:81b:c5ad with SMTP id d75a77b69052e-4b3081bcfdbmr33562751cf.80.1756420570196;
        Thu, 28 Aug 2025 15:36:10 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0c3:3a00::4c9? (2001-14ba-a0c3-3a00--4c9.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::4c9])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f67852eeasm135474e87.100.2025.08.28.15.36.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Aug 2025 15:36:09 -0700 (PDT)
Message-ID: <fdbcb092-a6bc-4da4-b7ea-1954b56f5d74@oss.qualcomm.com>
Date: Fri, 29 Aug 2025 01:36:08 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: interconnect: add clocks property to
 enable QoS on sa8775p
To: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
References: <20250808140300.14784-1-odelu.kukatla@oss.qualcomm.com>
 <20250808140300.14784-2-odelu.kukatla@oss.qualcomm.com>
 <90b51e31-3217-4483-bb5b-ec328665a723@kernel.org>
 <28b97952-1b67-411f-a7fb-ddd558739839@oss.qualcomm.com>
 <ac83c453-c24d-4c4d-83bc-9ed13f2f9d1e@kernel.org>
 <7d3e5cf7-4167-4005-ba4b-c1915c254705@oss.qualcomm.com>
 <00f50d92-e4ea-4805-b771-147fa5f5ebe4@kernel.org>
 <249f8109-31b1-4cb8-a5a4-b30c27b2e987@oss.qualcomm.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <249f8109-31b1-4cb8-a5a4-b30c27b2e987@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI4MDA4NSBTYWx0ZWRfX9HlQH3NFqUKl
 jVCpdzf4vNSv6GFIsBRwACSDswrzR6eCeNYZ7FMYEujVgGPdVZ8UC210k8uylxKW6S4TrvN+eNp
 IuRr9kHdaRHB5YW42YqVBNptSqTXmAFsZytJjnZZzZjHScewcsueUaTodVj3KkCpuepEKjCFNQC
 kpb9qFd/+szCSrmQ+ju+szvtmbPflU+8wwyIfa3n0cNKVuNQ7VRO9wRrGUiScs0Iv2Ln0VH/ukL
 geuEdFl7TTkL+hPdg7/9fQh9Ngq0R/8JMpikDkD1WHfFECe/tYZvkovgBpq83WidNpvblZjCpxM
 SGYEY9zMnQVsqzp6GXpTxoD2Jj0qfn+poKFnU9Y6t1L0imn96FTVXNaS6G//mIZE6KgE9KsXaHe
 xNSs87I0
X-Proofpoint-GUID: -1SrBEDG6HgLOWly6dApZsJelSx6hF_W
X-Proofpoint-ORIG-GUID: -1SrBEDG6HgLOWly6dApZsJelSx6hF_W
X-Authority-Analysis: v=2.4 cv=P7c6hjAu c=1 sm=1 tr=0 ts=68b0d9dc cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=tJ9fhpcgm4yphQaQ0K8A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-28_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 clxscore=1015 impostorscore=0 priorityscore=1501
 adultscore=0 phishscore=0 malwarescore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508280085

On 28/08/2025 21:16, Odelu Kukatla wrote:
> 
> 
> On 8/24/2025 2:38 PM, Krzysztof Kozlowski wrote:
>> On 20/08/2025 10:51, Odelu Kukatla wrote:
>>>
>>>
>>> On 8/13/2025 11:32 AM, Krzysztof Kozlowski wrote:
>>>> On 13/08/2025 07:55, Odelu Kukatla wrote:
>>>>>
>>>>>
>>>>> On 8/12/2025 3:47 PM, Krzysztof Kozlowski wrote:
>>>>>> On 08/08/2025 16:02, Odelu Kukatla wrote:
>>>>>>> Add reg and clocks properties to enable the clocks required
>>>>>>> for accessing QoS configuration.
>>>>>>
>>>>>>
>>>>>> Nothing here explains why EXISTING hardware is being changed. I also
>>>>>> remember big discussions and big confusing patches regarding sa8775p
>>>>>> (its rename, dropping/changing all providers), and this patch feels like
>>>>>> pieces of it without proper justification.
>>>>>>
>>>>> Thanks for the review.
>>>>> I have added description in cover letter, i will add here as well in next revision.> And this is hidden ABI break, no justification, no mentioning either.
>>>>>> Again we are discussing basics of ABI breaking patches?
>>>>>>
>>>>> If you are talking ABI break if we load old DT which may lead to crash, we have .qos_requires_clocks flag which takes care of skipping QoS if required clocks are not enabled.we have addressed this issue through https://lore.kernel.org/all/20240704125515.22194-1-quic_okukatla@quicinc.com/
>>>>
>>>> Format your emails correctly, it's difficult to read.
>>>>
>>>> Your binding did not require reg and clocks. Now it requires reg and
>>>> clocks. This is called ABI break.
>>>>
>>>> Please follow Qualcomm extensive upstreaming guide, it explains this,
>>>> doesn't it? Or follow writing bindings...
>>>>
>>>
>>> Thanks for your review and guidance.
>>>
>>> I agree that adding reg and clocks properties to existing bindings is an
>>> ABI break. The sa8775p is a relatively older platform, and when the
>>> interconnect provider driver was initially upstreamed, QoS configuration
>>> support was not available in the framework. As a result, QoS was not
>>> enabled at that time.
>>
>>
>> That's irrelevant reason. Writing bindings since long time ask pretty
>> clearly to describe hardware completely, regardless whether Linux
>> supports this or not.
>>
>> It does not matter if you enable QoS or not.
>>
> I agree with you. Ideally, the bindings should have described the
> hardware fully from the beginning. However, this was not done at the
> time of initial upstreaming, and the driver was contributed by someone
> from the community. I’m working now to improve the binding by adding the
> missing pieces to support QoS configuration.


Well, no. The driver was crontributed by:

commit 3655a63f9661b1fff313d8795200ff420282a87b
Author: Shazad Hussain <quic_shazhuss@quicinc.com>
Date:   Wed Jan 18 15:08:25 2023 +0100

     interconnect: qcom: add a driver for sa8775p

That's definitely not 'someone from the community'.

-- 
With best wishes
Dmitry

