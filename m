Return-Path: <devicetree+bounces-177893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 19FF8AB9834
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 11:00:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0BF5AA00C7B
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 09:00:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4B2B20B7FE;
	Fri, 16 May 2025 09:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YOy6A7NP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD791624DD
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 09:00:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747386054; cv=none; b=GkX3t+2WUMwjhjbsXIhtaaKf6OaUNhEKMkX1SJUrUKqpDGdNDnTny3n2SY9cUCEcIWXYLg9P+8fKDe6VKqc8SUWS8+mKZjTZA9US4loVlyQWvb+pv85TKzzSLsZUUnckPeQEJOuws49td895IHED2vMp1Ext0bTuRcO1pe3hyYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747386054; c=relaxed/simple;
	bh=jnZhFIc60EpD17GuUJxPaSX4JS1jVvOVrSRcJ4Ikqws=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uj9apJnnGEow9I0Be2gYUyITPNF+PQ8pKg8V6vDvD1pUGQA8wN1sYGubFnCUYtLjstgH0aMpxpM73LimjQVO6JXqOq25xuwZSDxhJVVGqgZyNJ9BkD0ZR/JP63FnBADL9Sfqh9WEj3+u1I3n2ut2J+uCvEzx0JRhUlCgswtIdP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YOy6A7NP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54G2vppE024323
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 09:00:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	emNqD3+84OsoC1sz/sXLny32zR/CcxC3pmnwMkCRoCM=; b=YOy6A7NPx6grlFyP
	xIY8FjBE6HADmb0Dksh2OqNTkJCjHnpZl9scKhjH8jipX/dAPYOWESQPyJ7aH4kK
	o8mKWhf9m7FNJnJAqUj9aFvPLeBpMrkOkugSLQFf9jEQfGyKZcX4RJMc9sDcyO8+
	yNXuHxV7nZAjApOBM18obg3e0u92oWcD7e3nfkxOxBpg7xf9b/usDQbvxNigP4g7
	PcZ8W9IQXs1ib/TSOvT77adv4fmIWMeo2JtCCaGsx3VKHzwMUgdYXvFlycEQ8htT
	hc/zXNJkvnU3yaw7XIYfNIyyYNH4qWCJnt6J5LUd0XdF1bcm4GS5jsaSsQWRjARO
	A954PA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcn1jqr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 09:00:52 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6f89a2df0deso5007946d6.0
        for <devicetree@vger.kernel.org>; Fri, 16 May 2025 02:00:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747386051; x=1747990851;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=emNqD3+84OsoC1sz/sXLny32zR/CcxC3pmnwMkCRoCM=;
        b=Hf8W5dLf6M3AbZlIM0UgY4etO4uIw42GoAmfW1XDAQgPeG7x7k/b+bqBpM4jKX0Lzo
         Kc7W1PDFxLHKDCAGxbQ3xYOtI/sG2uPpoMcPmhZWrKQBfqmekqCdbq2SFIZzccS8wIlV
         qJKpTRtnsIsOMDilBp5pN05wGOP4uYzDjkJ3q6lA2B6aLltAyBHisEyaoVdYdXgLjzXh
         OVV2+HHnvQTDxtjel7V6W2jXun7V1CUHBqODKZDFEbxAFydyvplDLV4x6fBjYLEM7FJ5
         jPOl83KF1E1xKtKLkB3U3CUs/t1ku6R7Q79vd6ysQPx+vfLAAKbbsTYlUDk4chLlv4v9
         sJTA==
X-Forwarded-Encrypted: i=1; AJvYcCVHSEBu1PdlCFvEsPcWMXVqtAOqi78B//WuRwtJiQDsrEzGz0kmIV5jmGKwirGBM6ut7JgHXb8qZn9B@vger.kernel.org
X-Gm-Message-State: AOJu0YxL9kw1Dv2EjSd7zYl+V8yx8Nq+LYYuRvP47JNaMzKCFwLCIwuM
	jONWET++MxV1++8rO8sxXgMicmNn3XsqajhpLdB5EyYAzl7cqk8hMpkOVO9a0z3gjLA0VTwzpsW
	fXRkB7Cp1Kik92C2vENIiuiCk62+piTobYPXR8tmk6brNGkuphrE0ovsESbR7gAdj
X-Gm-Gg: ASbGncsmXdNJtbY1q/z6JGYevArBWShAJyn/187/khSVR1U+8KCMyx9NvyhX1E56gAz
	uH3CIk1nD95AFCiGYuWpASAz98O5ytr7WYvy+4k9ULEXPizBxFXr41mAiRtKrjjfhiwZC5vqN/h
	saoW+VtDxCbhlQ8XfQXqEnUrCvPM1bbrNSUjo0tKGbiez/+YY11C2mH8sEG+TiIvvZEZbJgzSCt
	t4AZnikxQK9J6Hj8lg6gVaHNxRjIhpaKN5ZEZxeGxi3hvg1qV7FPUGB3Pl79ptiIdlqxUB/fCmN
	1r7CsQzX8poPw66LCE6xfR4uyufCDcGg486zZh6eIzxiNpx/GK8fHOlS3QGy3d5e9g==
X-Received: by 2002:ad4:5f8e:0:b0:6d9:2fe3:bf0c with SMTP id 6a1803df08f44-6f8b087cad8mr16035456d6.4.1747386050632;
        Fri, 16 May 2025 02:00:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFssDUTPLfA8FG52oie+qg7EwCQlej6WrDyiMpP6WkKB2iMQNNW99VeHioL7oGkK8GI+fj7kg==
X-Received: by 2002:ad4:5f8e:0:b0:6d9:2fe3:bf0c with SMTP id 6a1803df08f44-6f8b087cad8mr16035296d6.4.1747386050098;
        Fri, 16 May 2025 02:00:50 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6005a6e019asm1055150a12.36.2025.05.16.02.00.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 May 2025 02:00:49 -0700 (PDT)
Message-ID: <f5e1510f-3496-4f5e-b093-623d3b4be428@oss.qualcomm.com>
Date: Fri, 16 May 2025 11:00:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: sa8775p: Remove max link speed
 property for PCIe EP
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com,
        quic_nayiluri@quicinc.com, quic_ramkri@quicinc.com,
        quic_nitegupt@quicinc.com, Mrinmay Sarkar <quic_msarkar@quicinc.com>
References: <20250514-update_phy-v2-0-d4f319221474@quicinc.com>
 <20250514-update_phy-v2-2-d4f319221474@quicinc.com>
 <8ba99df8-012b-4883-af6a-970dd9f877f6@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <8ba99df8-012b-4883-af6a-970dd9f877f6@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 7z-Bdj29e74aUAtsMKpcCfZlJEdKQooO
X-Authority-Analysis: v=2.4 cv=HZ4UTjE8 c=1 sm=1 tr=0 ts=6826fec4 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=4QkPWBSfZRwaAYBdk_UA:9 a=QEXdDO2ut3YA:10 a=ZXulRonScM0A:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 7z-Bdj29e74aUAtsMKpcCfZlJEdKQooO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE2MDA4NCBTYWx0ZWRfX239DerwAsvYu
 WCAICX7fz23BpaoqwAop9hkYAKcDIA7Rj32adFoHw43PohDSBXnxQNCSL306MTGOtKnaBvGNMC4
 rRa7n9SH6nLLEIPU97pkOX7wNcfi/iXvlaXlut8Mt0O+BsE3Cmk96xOzZRmiR7NANHbyuRFOO7m
 mbD+oDJ31xkCGmq9LvtTJzLTZizZPn995ezVep6AS7cD9iG5VD4IUsrXWX/DxeUNzAthKDh1sDv
 z1A53lc89azF5vaxh2uwjRXZX0Psr7dkIxcHgHRsv8YCxv2zztLKLaFu4BjDPEHR5vsSuQ7M7b2
 OuA3wYwAhBj7D/P/3tFNIDF6MvSB43uk5GUlE8igqq4fN65n9C9zHKLq14UWZWCiDPUhw1rpFZ1
 8w8M2tEGnjxCgXjHMRbcUvv9De6UO1vg8Bv+w6K3AOZqLKOLmh6J8BOmPLO3xd/9iZbmpqzk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-16_04,2025-05-15_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 spamscore=0 clxscore=1015 priorityscore=1501
 suspectscore=0 mlxscore=0 mlxlogscore=933 lowpriorityscore=0 malwarescore=0
 bulkscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505160084

On 5/14/25 6:38 PM, neil.armstrong@linaro.org wrote:
> On 14/05/2025 13:37, Mrinmay Sarkar wrote:
>> From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
>>
>> The maximum link speed was previously restricted to Gen3 due to the
>> absence of Gen4 equalization support in the driver.
>>
>> Add change to remove max link speed property, Since Gen4 equalization
>> support has already been added into the driver.
> 
> Which driver, PHY or Controller ?

Controller, see 

09483959e34d ("PCI: dwc: Add support for configuring lane equalization presets")

and commits around it

does this change depends on the patch 1 PHY settings update ?

That I'm curious about too, but I would guesstimate no

Konrad

