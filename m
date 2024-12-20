Return-Path: <devicetree+bounces-132995-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 214449F8F45
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 10:48:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EACFD188927F
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 09:48:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 464A41A2643;
	Fri, 20 Dec 2024 09:48:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TnXttQgS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D33FE1A7044
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 09:48:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734688127; cv=none; b=cDiitRV54dh79RduLO7DpnIrUFlx7A1fwYbdqGbEKbePxGU2rCoJV/YMCGg/6cQWel6I65tGDTvj/5GH53m8MY7tp2fBFU1e2BqVSLXywzZ+XUdRbRkaCmzpoUdZHH/ruBKmrs9VrNSk7PYgQXft4ZgKt0Nes6WOIUDKOvIQ3yM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734688127; c=relaxed/simple;
	bh=/u9h2u8VCyh8Wn9919kX8kdRK2eFwLLsCmZITUi20AY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=c/v8MRZuH/4zOvgCHAaG3c+PuUcSJTvwmnPdT5iWEGPgsgZ2ltbWJlIiZqUs3rqzeWC3NILpmdKTGObd1kAtPT06At5cbUFXwRSSHwVpZnb4NfxrNVQm6LIA1KTxQwpTMR3pNPDKxL7dwuu4j/QJL5pP+M9cT7DJwkMI6zRHgg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TnXttQgS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BK8TF6F024287
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 09:48:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rVUKpvjNKYGH0d1LGTP6M2rnV3QaECUxpVoVBYXGfy8=; b=TnXttQgSCor7rJoe
	ZTBEftsaaXQeMsPvYEG6HAS4ZywCAggRUc0fj9YqhkUyaAK5MEE17GJItr7P8s+m
	oS95fkfGpPDhHflfjcPq+3lvpJVQL15DY3U/8YlscKeqKiGpdeDOOcL19dCOADRM
	cx+y4aw6AqTuRW0jdE7Mb715dmGANGaBDFjB6mOq8gJnXDMHsNDjJCMJAGR6gcF2
	bKtVe6IdhtdgVIlGrz2CdQoOT2Gtn//PsNZW2LHNQuCadDIpDXf8qcJtYezBSZhA
	a6lGQMpiSAvwu2AoEVzyIIs7KtTdwa/Y5FdTkz+Gq8+APwEacS7Q6xmKafS/U3pN
	fLjmMA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43mt1wss5u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 09:48:45 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6d880eea0a1so5084326d6.3
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 01:48:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734688124; x=1735292924;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rVUKpvjNKYGH0d1LGTP6M2rnV3QaECUxpVoVBYXGfy8=;
        b=E04f9mYKvnNeX9rSnQvCVuyvTvQX67Mu5k7aVUO4ZJZ1AVjfM9VTRZ0pLG/wK1BGd4
         l4iK4yeZH6Gm0dwxWXQSk6z1CBodtOXrhd5+WbQWGrVqUTrSQMzwA7eXJ94Jzm30OUj5
         XtXirOlZnLc6Ojh2l5nmSr0cUG0djJJdF9Dqh1fWzUvsgQXa/eGowjHlWVO5dSQVVEFO
         IfsTmY7al6z1KDsuv1iZdCgC7IU2wDTjtq5ZUQUDwFmbhQqbd+FxJNAjdW3WwmuN6GQo
         17Zi6h6MnQIEVP/ASYmkZDglyful0zqQFBaXAWabL3KOZRpbabJnP1gAodpqBm5VyKyd
         24QQ==
X-Forwarded-Encrypted: i=1; AJvYcCUY4c3YE9rnIAfMpyCbqVh1odRNcLgr5phs46zGeHkqyNDjlNu0axIyyIg6K+jtaksRBzIGsahuS+Uq@vger.kernel.org
X-Gm-Message-State: AOJu0YzaSdcaa3Xv8HTeMbIj4jRnKBSOMHAMe1cPcNunKnWhDnjiDD5b
	ciGad/Sz3+ZTUcALroRd9yUYbJE8g69o/v0YxXR+tUwyT88t87RGG1T50TT9FhKNJA68Sry8YDB
	lhR8fV6PzKeykKjq8nTl/Av+vz4MYjIaTdDIJTiPXAfKgn+ppiZDfpJef3XDj
X-Gm-Gg: ASbGnct/3wO9SvS2TsxW9KQBq8xq+fgh/+ngq1b9HWEygFnEYICQ1aysRcOVgymP6UF
	X5mJs7mALiPKROD7xENm2xfF2cUpERZUOzMf901Uong7rB14BvnZiP6MB1cI8s2NPsFv2H66RIb
	eVmDpTvUZffSXWee+bbExlyU2q5+HynyeHSd9Qd/GGoohON2BUqk3dkHM09LhmeeYY8OwMjH6S/
	vsNEty6//CRNqZ4VoS7/6/p0iITxLG3ST4ro6O6vLT51RZPGwo9VKbHG3m2IIOBszoznz6yfYd9
	t1r2w+qfPxbT17vdaVyjwqAD6Y8xVhyof3U=
X-Received: by 2002:ac8:7c56:0:b0:467:6379:8d2f with SMTP id d75a77b69052e-46a4a9a3aa9mr14362541cf.15.1734688123793;
        Fri, 20 Dec 2024 01:48:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHrggBl9ERFYcbqyZk1aIf/jeZFXwznISS8GkbxVKTIw+S69nHydV8TNBfU9FuwstBBRIOaUQ==
X-Received: by 2002:ac8:7c56:0:b0:467:6379:8d2f with SMTP id d75a77b69052e-46a4a9a3aa9mr14362341cf.15.1734688123444;
        Fri, 20 Dec 2024 01:48:43 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f011efdsm156471866b.134.2024.12.20.01.48.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2024 01:48:42 -0800 (PST)
Message-ID: <71d2135f-664a-465d-bc1f-051cc07c8537@oss.qualcomm.com>
Date: Fri, 20 Dec 2024 10:48:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: ipq5424: Add PCIe PHYs and
 controller nodes
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, bhelgaas@google.com,
        lpieralisi@kernel.org, kw@linux.com, manivannan.sadhasivam@linaro.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Cc: quic_srichara@quicinc.com, quic_varada@quicinc.com
References: <20241213134950.234946-1-quic_mmanikan@quicinc.com>
 <20241213134950.234946-4-quic_mmanikan@quicinc.com>
 <69dffe54-939d-47c3-b951-4a4dea11eae0@oss.qualcomm.com>
 <08fbde92-a827-4270-a143-cca56a274e6c@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <08fbde92-a827-4270-a143-cca56a274e6c@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: vvEP4vSDys6OVMah0nFBpn4XKVTxT0Go
X-Proofpoint-ORIG-GUID: vvEP4vSDys6OVMah0nFBpn4XKVTxT0Go
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 mlxlogscore=999 priorityscore=1501 mlxscore=0 spamscore=0
 clxscore=1015 phishscore=0 bulkscore=0 malwarescore=0 adultscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412200080

On 20.12.2024 7:42 AM, Manikanta Mylavarapu wrote:
> 
> 
> On 12/13/2024 8:36 PM, Konrad Dybcio wrote:
>> On 13.12.2024 2:49 PM, Manikanta Mylavarapu wrote:
>>> Add PCIe0, PCIe1, PCIe2, PCIe3 (and corresponding PHY) devices
>>> found on IPQ5424 platform. The PCIe0 & PCIe1 are 1-lane Gen3
>>> host whereas PCIe2 & PCIe3 are 2-lane Gen3 host.
>>>
>>> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
>>> ---

[...]

>>>  		tlmm: pinctrl@1000000 {
>>>  			compatible = "qcom,ipq5424-tlmm";
>>> @@ -168,11 +261,11 @@ gcc: clock-controller@1800000 {
>>>  			reg = <0 0x01800000 0 0x40000>;
>>>  			clocks = <&xo_board>,
>>>  				 <&sleep_clk>,
>>> +				 <&pcie0_phy>,
>>> +				 <&pcie1_phy>,
>>>  				 <0>,
>>
>> This leftover zero needs to be removed too, currently the wrong
>> clocks are used as parents
>>
> 
> Hi Konrad,
> 
> The '<0>' entry is for "USB PCIE wrapper pipe clock source".
> And, will update the pcie entries as follows
> 	<&pcie0_phy GCC_PCIE0_PIPE_CLK>
> 	<&pcie1_phy GCC_PCIE1_PIPE_CLK>
> 	<&pcie2_phy GCC_PCIE2_PIPE_CLK>
> 	<&pcie3_phy GCC_PCIE3_PIPE_CLK>
> 
> Please correct me if i am wrong.

The order of these is fixed by the first enum in
drivers/clk/qcom/gcc-ipq5424.c. The <0> entry must be at the end of
the clocks list for it to do what you want it to.

Konrad

