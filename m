Return-Path: <devicetree+bounces-224855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7501FBC8686
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 12:09:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 31DDC4E13A9
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 10:09:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92F5F2D77FF;
	Thu,  9 Oct 2025 10:09:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JXCcBTPR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FEF386352
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 10:09:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760004557; cv=none; b=X19U88nedSlaYJ/PS+LoHBCADH5nN8T/f37/eJDZ2msyL+hwMy8clrXa8kVhaNSvMg9G6+3bk+vI/VHuYLdQIcEfwFGPvcVD1oV2+88/VcsFF4MdtcvhYlGRY87olPrxuXFelc5uzejQfMRDayQqvjAMwTVcrTw0PP7wLyBFjIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760004557; c=relaxed/simple;
	bh=puyXQak5xCPes5C3V32+uKNZqqPJViEywLe19Swh2E4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ERU0/gv7xllN3+HaoyC5bWYCtNAxFZIp4XMM87oOPOb6XhYmboKXBAJjyrT2phSHB4Sz3Yu3cfaAUiGDsJfsNLkhTJj8xalhidMHt0ChMLngd7K+ISWV46bJH3BjUHZ2urTxEEQp6AcHwbKwbJoNOcpAZ1B5ZY2H9XqFOvl3XoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JXCcBTPR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5996EP4Q029764
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 10:09:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ht1MeJWzpyV8az6qvFclkme+Dolv3sGsYlW3nKW5fGk=; b=JXCcBTPR4EY5gF5K
	J4dWhqNDnBYI2yBzkAuq1/y32hI4tJDw9PAnK9FNmfJEyw8yzdYvl6bKsaLAjQXp
	U0+eHrgth5ZZ4fN/hZvTag2Mm+vTi5T7zFhHasj03bvzg4OHiLS/DCZxvaUYTB4x
	5yM5NXMAM+mar9U7bmnLMeUcVIzc8BPWZL7LOu4zguO9Rb93vN2ARtE26Hc2kd+w
	p5CF6fNCDKsSFJwl2Zbb47lyBKABZd8DmvS35gx9hLttNvbWxdEpBW2Xvw5S/1+H
	x2YHgYhgKwOzvudlJZXJK0YU3eYCrldJYixlzF3+KkHpvFd11xNPDaeYASF2a7jD
	bQFFog==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4nabt0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 10:09:15 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2697410e7f9so28633285ad.2
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 03:09:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760004554; x=1760609354;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ht1MeJWzpyV8az6qvFclkme+Dolv3sGsYlW3nKW5fGk=;
        b=PBvC28+KS0C2ifmSyiQwtn19P6UMEnmATbinZpKMYFFA4HCBFl4WWMIGo8fKDIXDKp
         LJKJN8/LQFJpQDSii3URCxXyacI+rlxePikNQrAtAx2CtnPGFGdVsR1oGj3QK6JAyrCh
         30rJwhi3fzbR8jTOLzK+um2lqZS1FCJbd2irxl7tDYbXjWbFbIQkTt7oMXTHi2ZxzBz0
         HkDm7Qf0c44kZFNnQlTrazRt2eK9kzVrW5oVe3wE6LH/GH2XJBZBS6m5sHFrfDK8d4o6
         kZ4F0V0IfKNcL3nlYN9dFoWzvMel4S6EvtEi8jVTwT0YaGo0G4s3abUCjmTBTR2tJY2I
         YOFQ==
X-Forwarded-Encrypted: i=1; AJvYcCWJSs1DNNqnsTgJ26iHHuAsQhV7xTadMlYJQnuyP9c4MgIAVJ3BR7tvSOAM5Y3VMJtGsY5o27C0K6Mj@vger.kernel.org
X-Gm-Message-State: AOJu0YwQEhhK3dQbe7XZdnbssL5LhMqn1qazVlaEvR8EwM00SCFGuNgB
	OyN7i4RJtLcVsbXhHHXvxtlLek8e/IEctrzF9Lgeomn9zH164X5+8YvD5ZAbQy4u4uN3edlLA6s
	9cKzMW3/hYClTQeVHHXUeUa3XXVtonrLI+UgJpmrj9KmYyyYTqFZuogL9QT3JjaQW
X-Gm-Gg: ASbGncsyN09FXi6p5TnjU1yKffGePPh03J36TBxRrckkHn2us+RbdE+dV05A49CaaFU
	COIX+30WgS46DxT9YRztHMElg4DJ+g3g7X7oNbDU5mJG451KdYslzQvapnlNP68SyeddGgUamm1
	ruUmL/UDOVunVyrONQW5tDIJcE9N6bGsGdgTXSAJcx9DkP3/08PfLU9PHoVC3G3Cq+eqGjBgg4i
	iUj4mNDpGYpmaYoZkHfqa9+Z++3mL6pnZs506FUEO3OVHyedn9kdXBPa1oMJk/0jdP3jyQo0JqJ
	XJkhvscle2u2gyYZ5DgkStmay5Uk7WkdXheDN0Viue+wnDemw2VcltwKSL3L6pwTU+A4H/Xs9T7
	ZPcMnINYqBrCo1q96Wr4JBFFuF6Yj+LU2hdcvfCgoy7xnMrwLICYBO1AJqWzs9zw=
X-Received: by 2002:a17:902:d481:b0:24c:7bc6:7ac7 with SMTP id d9443c01a7336-2902723d3e5mr91832195ad.18.1760004554448;
        Thu, 09 Oct 2025 03:09:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHbx041+jdp7rBtoEFzf+vebUcsdFZtILyK/9Cau44Kb79AycvWz2CsWtBIsKytzaPmMQlspg==
X-Received: by 2002:a17:902:d481:b0:24c:7bc6:7ac7 with SMTP id d9443c01a7336-2902723d3e5mr91831775ad.18.1760004553869;
        Thu, 09 Oct 2025 03:09:13 -0700 (PDT)
Received: from [10.190.201.224] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034e1ccc4sm23764105ad.42.2025.10.09.03.09.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 03:09:13 -0700 (PDT)
Message-ID: <6aed71d1-ece7-4b33-8060-ea3a51015a26@oss.qualcomm.com>
Date: Thu, 9 Oct 2025 15:39:09 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] dt-bindings: remoteproc: qcom,sm8550-pas: Document
 Glymur ADSP
To: Rob Herring <robh@kernel.org>
Cc: jassisinghbrar@gmail.com, krzk+dt@kernel.org, conor+dt@kernel.org,
        mani@kernel.org, andersson@kernel.org, mathieu.poirier@linaro.org,
        konradybcio@kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-remoteproc@vger.kernel.org
References: <20250924183726.509202-1-sibi.sankar@oss.qualcomm.com>
 <20250924183726.509202-5-sibi.sankar@oss.qualcomm.com>
 <20251002005434.GA2796203-robh@kernel.org>
Content-Language: en-US
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
In-Reply-To: <20251002005434.GA2796203-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ZJzaWH7b c=1 sm=1 tr=0 ts=68e789cb cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=K0PDbwUCbj7d31mOmPMA:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: 9Rq08Nj6wYJEjRHLlnQ5rHy9D6MVOA8O
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX82FDwsV48wdR
 Tm8MAAE7WoD2jMzReSAdcgiLF5tTGEvsWWefytFo+i5zzcO666goaxkgw6JPL+Bh/rWbqT1TY9Q
 LU7BkHYcvpYJMIpOVO4bbE0q2Sa/8TSQE3yLMsDpcSz7iHC6ZQShArYBwDi68AP0UTEaVyRQpqZ
 dI2r0NnOpcvfho+s1kNzfHAXU0LLXrbpHWB57n5iHVEj82z9wlEAI6fzkO9iKwWVts/0uxp/Ub/
 skHl2ygjO15l1lNP+9j1Jftrgd4uEdeUWtHFOOgZpdhnWvOscLc13x58qZeVjzL0WFMYKXwnuQ1
 iIaogPNNHp0E3C/70BIHxPMgo0iF/jbI5MGFvxnu67GTZ760mhbxM0AOsn5tq4fJgBSZEjEaZpU
 sG8E7FT+BTHGK7QsW7aZzmcW9noA7g==
X-Proofpoint-GUID: 9Rq08Nj6wYJEjRHLlnQ5rHy9D6MVOA8O
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0
 phishscore=0 priorityscore=1501 impostorscore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121


On 10/2/2025 6:24 AM, Rob Herring wrote:
> On Thu, Sep 25, 2025 at 12:07:25AM +0530, Sibi Sankar wrote:
>> Document compatible for Qualcomm Glymur SoC ADSP which is fully compatible
>> with SM8750 ADSP. Also with the Linux Host running on EL2, the remoteprocs
>> need to be hypervisor independent, the iommu property is mandatory to
>> ensure proper functionality.
>>
>> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
>> ---
>>
>> Dependencies:
>> Peripheral Image Loader support for Qualcomm SoCs running Linux host at EL2:
>> https://patchwork.kernel.org/project/linux-arm-msm/cover/20250921-kvm_rproc_pas-v3-0-458f09647920@oss.qualcomm.com/
>> This patch has a dependency on the iommu binding added in ^^ series.
>>
>>   .../bindings/remoteproc/qcom,sm8550-pas.yaml     | 16 +++++++++++++++-
>>   1 file changed, 15 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
>> index 2dd479cf4821..cba45ce2865e 100644
>> --- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
>> +++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
>> @@ -28,7 +28,9 @@ properties:
>>             - qcom,x1e80100-adsp-pas
>>             - qcom,x1e80100-cdsp-pas
>>         - items:
>> -          - const: qcom,sm8750-adsp-pas
>> +          - enum:
>> +              - qcom,glymur-adsp-pas
>> +              - qcom,sm8750-adsp-pas
>>             - const: qcom,sm8550-adsp-pas
>>         - items:
>>             - const: qcom,sm8750-cdsp-pas
>> @@ -95,6 +97,7 @@ allOf:
>>           compatible:
>>             contains:
>>               enum:
>> +              - qcom,glymur-adsp-pas
>>                 - qcom,sm8750-adsp-pas
>>       then:
>>         properties:
>> @@ -185,6 +188,7 @@ allOf:
>>           compatible:
>>             contains:
>>               enum:
>> +              - qcom,glymur-adsp-pas
>>                 - qcom,sm8550-adsp-pas
>>                 - qcom,sm8650-adsp-pas
>>                 - qcom,sm8750-adsp-pas
>> @@ -238,6 +242,16 @@ allOf:
>>               - const: cx
>>               - const: mxc
>>               - const: nsp
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          enum:
>> +            - qcom,glymur-adsp-pas
>> +    then:
>> +      properties:
>> +        iommus:
>> +          minItems: 1
> The min can never be 0, so it is already 1. Drop.

Ack, will drop it.

- Sibi Sankar

>> +          maxItems: 1
>>   
>>   unevaluatedProperties: false
>>   
>> -- 
>> 2.34.1
>>

