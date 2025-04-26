Return-Path: <devicetree+bounces-171168-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF4EA9D9E8
	for <lists+devicetree@lfdr.de>; Sat, 26 Apr 2025 11:54:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 71C8B1B66806
	for <lists+devicetree@lfdr.de>; Sat, 26 Apr 2025 09:54:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4362324EABC;
	Sat, 26 Apr 2025 09:54:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XqJ1iq1W"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C31152222C0
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 09:54:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745661261; cv=none; b=OkH5XwQv9P/NAbwLsITzvVm9UWkklgQVhn6KU1GVc2gYauYINCAYOn++6VOlDey68udjZVb97viNRBKf42oZmi65L3MNOdFn7SyrnkcqhF5W2Ly1RqXUMvoml5tZp4Xy1baxSJgF7zrP44iciy6QWTQs2Vn6TiwS625MqV2vW1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745661261; c=relaxed/simple;
	bh=E5IobAi/dA7bePCWkMdHzHuLjZ8cTyeul54B2zGVTwk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Wy20rPHt4JSi+tWaqBv/sO//cLFj4BFExwCUyfYZT3HGNeBb/ZiWGEE6jr2tPROBfWJBD816ceD09pL9fF9aIv4JLBnlpxpQcOEgpgNvfDwSsEZRCvwqQPswYlLCCf/2k/1FYk8WbufPhQbFIlUujX1ywWbaGJ+ReVbEo1CW7Uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XqJ1iq1W; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53Q4BwjI001025
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 09:54:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KTVIpIKJMgx7PL6j/16nNJybn4tGFA1d8wmMtkAAWGA=; b=XqJ1iq1WKxa+Yht5
	IwibmeM9cQ90mvdWksMdv6QKoE679f9w65ahFHJiNdrHJH1TpeVyg2Kl2hKmd6f4
	i5RDdkoueXCLulfY9pQnmIGt/0jzKsB5i9DK20jCu6v+GTk4iJ3lJuViFEuuxSNh
	IeD/bNQxSP8du4Yn5Ld05EOjqoLPQaD/W6Vnch2q/Qe8ZW2oHMNX6MUI9Em2Ik8a
	5WiS5Ik8AERwcgfw7c4A4ncPRBqqbzXjHwqvRTxcG5+/eawraU5VxzOTpW352f6v
	/LgDWYW1Gq+H6+i26b3lfQSXqFqWUVNpEWq08+0A3lpgj1CQXdxcHdYkoMK7xMv7
	pfQ0eQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 468r8hgq9m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 09:54:18 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-478f933cb4bso2366881cf.3
        for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 02:54:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745661257; x=1746266057;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KTVIpIKJMgx7PL6j/16nNJybn4tGFA1d8wmMtkAAWGA=;
        b=AD5WjFRSceEbxCv1FLY0wBanr6/W8cflAOaCS9Y35CHLmB96fWEB2Mjts+z6YfmRMg
         0Ql3DH1AHmK+SBGgsAyFQVWhZiPuB71h1H/9JFGwK3f3mqE0Kt+ggWg+63lFZg37YbtZ
         d9pEVDu8R97z8kftczQi99NLkaJAU6kzAFijQSyT2yo4j5op14ooCwEbRUnkq8L3DqRk
         +Ab6Q5Ssa0GTXNh3L+xj1U7mz/Z8OOPHk71Z4MH1dVsr0OLc4eowWB04JHfpNMOBiQMl
         4VkvylwnUaUNmupAIwAddbuIC38HW3KnqWZAeHakgDLzB7q1LRhQz7LenmBR73YZpU16
         BIxA==
X-Forwarded-Encrypted: i=1; AJvYcCV3VHxT4/kvsJclCi/Jcy48q36ZueNnrudo7jCCfmpIAO/5qlOoYHBG1dTl4XfuajFIC5uGesKYTnmy@vger.kernel.org
X-Gm-Message-State: AOJu0YwBn1a6qG01CCu8r/ucdvDJa2IsLekGnYLsPaHiniyW+IbLsnfh
	W0BSdCPG2OY/gF/fj4TCKzJQaBXq/tnnjh6Ps1nxUseguSaYu8nO5lYUhkV3oahUKD2U6l5s+Cp
	sGxpd4fveQv77R06pVowmTDiKgS6hSA5AN7SqNsOA3wP51/6KxkxC6nTjBli7
X-Gm-Gg: ASbGncuLjV8ekXtZ4pcKw41zaGwM72v4me1zzFWr9B0OCRC5Q/wRBbiT41UQtcBD6Gi
	lygv40H+A4dFvoBqgSG21YQvDoc5sY7Mt9jBa7w8u9XUei4rCosaEAzlrNNwBSPakW7ACH+/DEg
	JntYZWuzw5KXRO+LPAXNB906m1g+VP1IHuxwtLBrOXB9NiEtrOKY/rbiRmDLqJhcHQxJ8yhtIIA
	aMVCJCGyYeZCKIPG5zeO5LJ5y+dELMg+dUL+tgyvxrZaXtsQkfJziNcFjh3iLovQorTr6wigCYs
	veAdrc+B0C5gEAMNLbVGgInxp6tkn5iA7fMlOZrb6xGQQ8FQm/+T4PZDG8Gs9EBF7gE=
X-Received: by 2002:ac8:5f12:0:b0:47a:e6e1:c071 with SMTP id d75a77b69052e-4801cf53297mr34927021cf.7.1745661257710;
        Sat, 26 Apr 2025 02:54:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFZNvX/ilxEAdVDSLaCIbroQr1WR3nh5RCJRq54/cavOxBSuNVxeIwqJJRqmEBtDmqNHuf1Hg==
X-Received: by 2002:ac8:5f12:0:b0:47a:e6e1:c071 with SMTP id d75a77b69052e-4801cf53297mr34926821cf.7.1745661257308;
        Sat, 26 Apr 2025 02:54:17 -0700 (PDT)
Received: from [192.168.65.154] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e595abfsm264941066b.86.2025.04.26.02.54.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Apr 2025 02:54:16 -0700 (PDT)
Message-ID: <3510a805-66db-4796-8deb-e798a6d0ce37@oss.qualcomm.com>
Date: Sat, 26 Apr 2025 11:54:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] arm64: dts: qcom: qcs615: add ADSP and CDSP nodes
To: Lijuan Gao <quic_lijuang@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: kernel@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250423-add_qcs615_remoteproc_support-v1-0-a94fe8799f14@quicinc.com>
 <20250423-add_qcs615_remoteproc_support-v1-5-a94fe8799f14@quicinc.com>
 <654e4b69-dac2-4e05-bbe7-61a3396da52d@oss.qualcomm.com>
 <774c2476-937b-4d3a-b0dc-d66f12d9f60e@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <774c2476-937b-4d3a-b0dc-d66f12d9f60e@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 63JiJY9LCfm68TzxAvMZun6x9IT03gMo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI2MDA2NSBTYWx0ZWRfX4VK/hIKvrlF5 D+rHNvwFdbB0TCtFeDEJB4W3TAZodAzPV3wrehh5IgzpfRsHm9ZYcxissQ7ISRcRbQ7ZO602IuF dSFcWhp5FZeAQ3LnXL4mGpkWABgzhH32IUp3eOWb/vRrpysMCQZuIXMGZOjaY1Ldn0KpfYEqrey
 UOX84zKePtOWjtawDbPp5DodbpkJYBqiXUOfPjz7hfkaCMPB47ACfS2rANgzWvnMVLroDQSbdhz 9ViBSTgLglS/Os/SeqdCKuNtiiXuzwIXacXU0pavXwVFVk6DTlG1iRZiluQLgLtYqxtU0QoLVG0 fVesWZsfqiMhk36q8Z7QbsJlcALDlpYeGE28bERP7H7n4nsdAcFEFc9LdM7nGNkPJ+iGdahXeR1
 OnmvCtZzpyGNkeVuivxnoHFxLJqb7gKI8l8fw9/g31yiZa+7Aifxx4lClfwADdfcgh4pVEbm
X-Authority-Analysis: v=2.4 cv=cfzSrmDM c=1 sm=1 tr=0 ts=680cad4b cx=c_pps a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=YhQMvyRDPdZ9LwTnx6IA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 63JiJY9LCfm68TzxAvMZun6x9IT03gMo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-26_02,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 lowpriorityscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 priorityscore=1501 spamscore=0 mlxscore=0 mlxlogscore=707 adultscore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504260065

On 4/24/25 9:56 AM, Lijuan Gao wrote:
> 
> 
> 在 4/23/2025 5:34 PM, Konrad Dybcio 写道:
>> On 4/23/25 11:17 AM, Lijuan Gao wrote:
>>> Add nodes for remoteprocs: ADSP and CDSP for QCS615 SoC to enable proper
>>> remoteproc functionality.
>>>
>>> Signed-off-by: Lijuan Gao <quic_lijuang@quicinc.com>
>>> ---

[...]

>>> +        remoteproc_adsp: remoteproc-adsp@62400000 {
>>> +            compatible = "qcom,qcs615-adsp-pas", "qcom,sm8150-adsp-pas";
>>> +            reg = <0x0 0x62400000 0x0 0x100>;
>>
>> The size is 0x100000 (1 MiB)
> 
> Sorry, my mistake. I checked the latest datasheet, and the size should be 0x4040. I will update the register size for both ADSP and CDSP

Yes you're right

Konrad

