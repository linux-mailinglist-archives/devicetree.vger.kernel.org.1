Return-Path: <devicetree+bounces-130335-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A6D9EEFCC
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 17:21:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C599286379
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 16:21:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8F0D213E6B;
	Thu, 12 Dec 2024 16:11:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HuYk0AgO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFC5A237FFB
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 16:11:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734019881; cv=none; b=doSC+wieWNnnSPJggmsOWGjvB4gzArb7A13T9iGf8zDJXWJ10zauQUDxlBMeR+aMlIgpHAUGw8a5c/e3KP8cEJJGj+xXrXQt2RLAvNE3zguzSmcouyCGZ5NOGUMHmNN+KXkTzECxbhsDRZce4Ko1OCQCfP2fia7GkAjDbgZUfYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734019881; c=relaxed/simple;
	bh=dXF5alr3nkA4sLYcx0ahBi1JmELs74mAg4qLTyQDK0s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NLWrHMX3nBMfJDI5r/g8W3NWyw2EB4fCWbGJnnevU99F34kHb+Xjcb8BdfpGd/NRN0/xtCu5NMjBXCMJQOXXzVmbtMu9Wzo7mxhnozxawLQPVG7RV8/cIet9m6/JLkIbIzouGh6n4O/nn/DYkderuZasPRyjv+v1oqqZqud6ZKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HuYk0AgO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BCBM08O028134
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 16:11:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BiOSCtICkfmA4vxytEAY623sRmhmgOgepKEKhIeGLBE=; b=HuYk0AgORhC7WmiX
	RUNFGvuNWjFQ1qX65CY8SVT9ojxODbmVnAxqQKRainhNLGy5dRD0XhCxAAXFD4rH
	8yWLoVYDNqMycld45sFwLGVGnDiT3UzzkK6ag8tm+NA1ir8CoA/6n/tnCHh0u3iF
	xUTM1NP2c5VyMJLuxy20CYpGx9z02PlICXgdA9m2rosibB7AVW7gtJlRymsDvJ7l
	3J+NE5geetgjFs0q2hEbJyVHsRCOC/IcGjEGvCZxPbUP1hQg0T5jMUjh6aAiV0s1
	u2jVZt2OPw5AS2VeTqzwbvFKPXi8wGxANXcCamDODhMurkt499oljr6KyPJ5EfV0
	26Ib1w==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43fxw4rud7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 16:11:18 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-467616df6c8so1406301cf.0
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 08:11:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734019877; x=1734624677;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BiOSCtICkfmA4vxytEAY623sRmhmgOgepKEKhIeGLBE=;
        b=hyiolXQNaTjfWRah7eIm9pPIL0n9Xeq2Fu7YZpvpw6ZRLZ5LRwshyl3A+O5yjDIZIp
         LGEuAqmoej6nEWW9MloIdGUAR8VqfvfoR3QxBezLVljbKduq3oNLpPVSYZjggyJlxcmR
         6QVDQWTXmAa5I9Cge4X8FlsY8RGf076TUbh9R3qTig7D5FZZDExdRqt29+puIon+C4WR
         Shgf61XI2CAeRKat+As1ulEwp6uzvwyIe/lRmgRwsqJ8Q/yAhYJQkn7tBo9xEzmenFZf
         6rOA93lfOgf1jSsOW35LGj0e5PNeFkxmhI4aQqBQVZgWLOMwx+YnpY0RcdYdVX8M4Ky8
         JaXQ==
X-Forwarded-Encrypted: i=1; AJvYcCUG328dl3pL/WzxyarFRkp9CkLu3dB8kACghJCxOt1DWt7IGRmbH9jQOAxsezjjdkMEpIoSiSeVSiys@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2mMaUbNwXsG/l9Vu///SirAyvbJczKdTClEh4+SHw5i5rHAXr
	Zcd+e7eFs+FgncYtdtYoKaKTy8dZ9cjeCjD9uYGXJ+mZbmslQmUg9vdlVPBKDCALrMwMiTEs/FO
	XpUg3lO0M78HVMX+1D4Hqv5R1W9YfBNf7yrExQg7gfRAZBF6HnnE2IrBCKAYi
X-Gm-Gg: ASbGncuqz4I7va9a9NLND4vTM3KUuJUMFN0baF4OWF2G/NMSsCivG7jxnatSmiifReE
	iipiWpZ0N0088Pu7M7+g+KAKlvo+0w9jYErwis+2ht/D6KbFCLqOrVr1AZe2qh1AqPaPdYTZ77C
	KXizHdkd/+ZpYIMJ6mAhfKg3bIhosm+L7sVYJbz7A4aDRzlINcirgLlN7c7zemh4l9sMporicku
	8+uLLyQei1jlH2Tq2PpILR9C4HNdDSdQ83rTKyfO4CZbTG5vv1VJ5G8fBE4FcInl/hzHS22zt+T
	briyv5vXfPoRthEgpBuUNV+pUQ0QMFXv1QSLBw==
X-Received: by 2002:a05:622a:4d43:b0:466:8e17:cd1f with SMTP id d75a77b69052e-467a14eee88mr5929981cf.3.1734019877224;
        Thu, 12 Dec 2024 08:11:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHXG4K2xpTGfNJ6S6PvXxb4g2uE22kte381m+d1ycbDxgdpkjeTWw74mGy0LyTdNM54e5Jl2g==
X-Received: by 2002:a05:622a:4d43:b0:466:8e17:cd1f with SMTP id d75a77b69052e-467a14eee88mr5929771cf.3.1734019876722;
        Thu, 12 Dec 2024 08:11:16 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d14c7991a5sm10426669a12.58.2024.12.12.08.11.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2024 08:11:16 -0800 (PST)
Message-ID: <e8e438b3-f60d-4257-956b-a9c77496bf8c@oss.qualcomm.com>
Date: Thu, 12 Dec 2024 17:11:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: qcs615: add UFS node
To: Xin Liu <quic_liuxin@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, quic_jiegan@quicinc.com,
        quic_aiquny@quicinc.com, quic_tingweiz@quicinc.com,
        quic_sayalil@quicinc.com
References: <20241122064428.278752-1-quic_liuxin@quicinc.com>
 <20241122064428.278752-3-quic_liuxin@quicinc.com>
 <d4f7ca97-b37e-4b8f-918c-9976e4a9cf41@oss.qualcomm.com>
 <677251eb-d3c3-48e1-ba79-fb8ec1e29c6f@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <677251eb-d3c3-48e1-ba79-fb8ec1e29c6f@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: s-dF4vzX-PhFIjwE8dkCkLFSrSFlprot
X-Proofpoint-GUID: s-dF4vzX-PhFIjwE8dkCkLFSrSFlprot
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 impostorscore=0 clxscore=1015 phishscore=0 spamscore=0 priorityscore=1501
 malwarescore=0 mlxscore=0 bulkscore=0 lowpriorityscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412120117

On 9.12.2024 8:56 AM, Xin Liu wrote:
> 
> 
> 在 2024/12/6 5:21, Konrad Dybcio 写道:
>> On 22.11.2024 7:44 AM, Xin Liu wrote:
>>> From: Sayali Lokhande <quic_sayalil@quicinc.com>
>>>
>>> Add the UFS Host Controller node and its PHY for QCS615 SoC.
>>>
>>> Signed-off-by: Sayali Lokhande <quic_sayalil@quicinc.com>
>>> Co-developed-by: Xin Liu <quic_liuxin@quicinc.com>
>>> Signed-off-by: Xin Liu <quic_liuxin@quicinc.com>
>>> ---
>>
>> [...]
>>
>>> +
>>> +            operating-points-v2 = <&ufs_opp_table>;
>>> +            interconnects = <&aggre1_noc MASTER_UFS_MEM QCOM_ICC_TAG_ALWAYS
>>> +                     &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>>> +                    <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
>>> +                     &config_noc SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ALWAYS>;
>>
>> QCOM_ICC_TAG_ACTIVE_ONLY for the cpu path
> I need to ask you for advice. I have reviewed the ufs_mem_hc of many devices and found that all of them use QCOM_ICC_TAG_ALWAYS for their interconnects cpu path. Why do I need to use QCOM_ICC_TAG_ACTIVE_ONLY here?

QCOM_ICC_TAG_ACTIVE_ONLY instructs RPMh to shut off the interconnect
path when the CPUs go offline (without OS intervention) to save power
and bus bandwidth.

It's the natural choice for paths that directly connect hardware to
the CPU, as nothing else should be accessing these ports.

Currently, many platforms do not set that, because nobody cared enough
to point it out :(

One day when we lay some more groundwork on the suspend side, I'll
send a treewide fixup.

>>
>>> +            interconnect-names = "ufs-ddr",
>>> +                         "cpu-ufs";
>>> +
>>> +            power-domains = <&gcc UFS_PHY_GDSC>;
>>> +            required-opps = <&rpmhpd_opp_nom>;
>>
>> this contradicts the levels in the OPP table:
> The required-opps here corresponds to opp-200000000 in the opp_table below. Similarly, I referred to sm8550.dtsi, whose required-opps also corresponds to the opp table.

What I'm saying is, specifying required-opps of NOM here will make
VDD_CX always stay at >= NOM, because the vote is max()-ed

Konrad

