Return-Path: <devicetree+bounces-233574-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC5DC239A5
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 08:47:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id CEFAB34B39F
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 07:47:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63AB82E9EDA;
	Fri, 31 Oct 2025 07:47:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="I+zic/XK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="haMFiFmK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E729C15E8B
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 07:47:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761896848; cv=none; b=sNriWsSDOhJ0L2mgD8MHA9rNiMgnWsq0qyetTf9749zS5+94K2fTiSgl/o/SOZ13X/Q1T7xBBPRrQkEA3M6tRDZkCoE3OPGiMCU8W3fUUoRAGHaeDbKbLIPu3ea02mO9tzofAV6AXm/AcsV9caRUQur2FStC4xp5Khvtzb1uCj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761896848; c=relaxed/simple;
	bh=/8TrqVOKuqZOnd4iu/m6xVRRaU9USAIqMhVGeVGdvJM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nEqBMgLKWTTfS5AbxG7THNn68vylwDA+eDHxaivWVSXX1dMejHJ2aps3agXnV323XC3V78oPNqqM8xsmlJ/whta3q1TaD7JleD8F15Rt1C43C2D8exSO2SFaiDHXuATSJoIYuh1mMuWs3pIAzTI0xSdY3gufPXYdAUMn2fH2nsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=I+zic/XK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=haMFiFmK; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59V39TD1102648
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 07:47:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ElQX51HCLZGHK8sK6/6r6fFyIPtOhGLYhgQkqsOGOoc=; b=I+zic/XK/3Dch8UO
	bMe/e9MaOWivZEwS8p2lmAwYyR6IzzajSdcS3/ll2Up7ojOGinvHDdKo6BnP7uQx
	sR5Cx7mQjSgyJHL1onxABIkRO8fVoyp9sJmXEwQzI1iU2ggQFZKvlvXyOywg2zc3
	W37Y0LnlSyIfr++jbrdf+2iqst1RC4AnIPGzoZjdZi5GxLkk0cUTGQTGCeZF2/li
	usO9JEVXHM6e2StJ5ur2pxbNQiSkutL+iUTg38r/Knar+ti+2LmrY3YOs7/I1913
	zQvkAAVJOKS5hMIV+6qg4ig2UZ52pX7n12PFTszZEcAkjZ1XmCeAkG7wMAcG3mJZ
	gi9wTQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a4ahdjb0e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 07:47:26 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3409148acc0so477447a91.1
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 00:47:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761896845; x=1762501645; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ElQX51HCLZGHK8sK6/6r6fFyIPtOhGLYhgQkqsOGOoc=;
        b=haMFiFmKGMdumS7zyaQlMuXDANWvX/o4n1NlSP2SGH5bNqDXx/1qJzVBiFYmNAM5mE
         QPPZL7ZdDJpZqomc/ftUStpoXWyEdVQAS7z81RgP+3SvLZLMCoKAZqbE+ywOIkp8tg4E
         J/kB+kiwDkbwch3ZLFunUyshKe1gotLtE8tA5+J4u9tnYTJeX+mj4BclqCJ0YZ1sS+tk
         bQ2SBFhJ5MeNPOUun5zwUaCji5ksCvrqSSZCHktzNyCFCY9HkjU3B3GVNl/ux44r8pxv
         BoVDPoTXkSnrCtjaYF/6y/xka9hM4f1oa4CYvxeBpVQmm0QmGWvo58e2hOxugnTt/Osf
         Al6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761896845; x=1762501645;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ElQX51HCLZGHK8sK6/6r6fFyIPtOhGLYhgQkqsOGOoc=;
        b=VRrsRnLp/zooqn+MZzIF5nbV3c5+Ty1cVtHOQfWhshJnlaXikMcb+5YWyRWSjWyUYI
         yGfl/La7djMrTH3gr9yvHW6SnYq0Gyfaybe24n2GHUEKrppNx+rs5MOj4r2TC0acqBPE
         3bdvBPU37uqsNRfYqKHK6zS/z12ew8gFga5+1G/0tAHkQS6pT5Yk2LnUQ87B62jKfGh9
         6H5Ne9KYjY/Tl0nd+KX0huRLnTQITThYedVp3rB9Te/GfsUcFaZcV67omq9PXVkE4qsb
         2iEZS7EtgiA7Fa43TJRNgL0tOWD9bN3QYBOhZYbAF39A7KVw2eN9fRCBVibDrRzTD38k
         Ye+A==
X-Forwarded-Encrypted: i=1; AJvYcCXwBtI9pmBe7rXOdyz5izT+NxSo/Q8UeyenQF9+OC3k6vNQBzpYgJYDL/5Kbzjcsnb+1ZdyXHlSkoZk@vger.kernel.org
X-Gm-Message-State: AOJu0YxFEEZAvdkqSCbQxR2zgVasz2dWYObvTNtBAkKzmRY3c2TH3NfK
	B157gq62uhRTIYgo2vjkHxlVtuTxKu6K9k9AVQoeX2AUDgil9pFcVv3v1Rz/MdnAZ9QoE96f5U2
	AGu2PwDycHiLmEHjB/siDmitJ4+z8SLV+FVrl5pf4lAYGWCYRclrIRXXbvDZcimyF
X-Gm-Gg: ASbGncvjJCwIlrhJfkDIDznGk+ljOBDY3YFjKUa55KDd2UX6+DX8Hwm5Yrgmkwl741g
	ABqEye+YjJV26CI5i0zkcIqqYQEbv+P7SY/5+b2CAQQ/22DfG/UY+uOr5O9oCB3EcE3+yX/M+oe
	mMEwi3Cbm3dabIH6vsHw3yaEE3NwlNR0kY/WMUtyibwd8BexDixgy50A5lDrwOsVbPpauYn1ju3
	gOgd1cnnfgg1Ka7+KoAe6nflg43LwLdTPLaQTyjxEs8PbN+rLbJaj2k58x97ziPOIg2/GHJgsbY
	ohocJSbehz6EDPS4tMhhN1tSF2JXvWHgXfvYBAG6wniGBhI114rIGU0oRIAGs7TdVCw7ELDVSpr
	xWRRYp5NvVN6X+3R/Ntxi+sSz1g3TOhOa/Q==
X-Received: by 2002:a17:90b:3fce:b0:32e:52aa:3973 with SMTP id 98e67ed59e1d1-34082fc932fmr3833638a91.8.1761896845581;
        Fri, 31 Oct 2025 00:47:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEQVBJuvCo5/hatKTvNGJuLoUUgkps0P3BQUlziGGX4u7kohcIQyss6ZSPki1VFt+9IvtDaWw==
X-Received: by 2002:a17:90b:3fce:b0:32e:52aa:3973 with SMTP id 98e67ed59e1d1-34082fc932fmr3833614a91.8.1761896845117;
        Fri, 31 Oct 2025 00:47:25 -0700 (PDT)
Received: from [192.168.1.3] ([122.178.56.191])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34091b48934sm1244591a91.0.2025.10.31.00.47.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Oct 2025 00:47:24 -0700 (PDT)
Message-ID: <125f4812-e333-4245-af54-f693d01bd534@oss.qualcomm.com>
Date: Fri, 31 Oct 2025 13:17:18 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 1/3] arm64: dts: qcom: sm8750: Add USB support to
 SM8750 SoCs
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20251024151521.2365845-1-krishna.kurapati@oss.qualcomm.com>
 <20251024151521.2365845-2-krishna.kurapati@oss.qualcomm.com>
 <eczsb4xsrfowfalgjaoy7azkrriitaietkjjkl2smceeasie3j@uc5ynursx3ot>
Content-Language: en-US
From: Krishna Kurapati PSSNV <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <eczsb4xsrfowfalgjaoy7azkrriitaietkjjkl2smceeasie3j@uc5ynursx3ot>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMxMDA3MCBTYWx0ZWRfX4x+lDGkA+ZRO
 Kq7+lpEgLpWrxiF9OZNmWnHLPeb2RK5hKOurT86aBlA+a/3Bg3MoOYISmjWI1JxR7xed0po4ycM
 Sx0AyR5gW9GI+IIYOsb3lmkDhzWMQxUxX6EB9iKhntYBTbYXj+glTx3yp0068oQ6+hLlxEtzw1n
 9aYSPZpuYINwtvfyG9LJTTtMkNl3WQtt0RtSGE0xuMuZQ340Nn0r91zgY7suujQIdNNVrN5htjp
 q7izdXWWfY7W0S1+V1q3orLzUHtv1kmSYXDzMqFFipXp0ZAq4TN8OSfwUf7jiTxBjMklvpuSZIY
 eunoHFcs9zPaeg0Z4nf3nz6wUVICiAVGfEL5qG7KkEpOBWlzRHrmUvgVOG8JBIqTF7LrSGjmYat
 4aBh/gSU4Qeg+i2S+/Nft5tE3o3NOg==
X-Proofpoint-GUID: q9F1j7fyQ8zAjuAOejygXbotgz9VpO5o
X-Authority-Analysis: v=2.4 cv=TsnrRTXh c=1 sm=1 tr=0 ts=6904698e cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=nBTQbq2h+7tEuhtSPO5ERQ==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=RHaVzu8l3JqjrsztCWoA:9
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-ORIG-GUID: q9F1j7fyQ8zAjuAOejygXbotgz9VpO5o
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-31_01,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 spamscore=0 bulkscore=0 phishscore=0 suspectscore=0 adultscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510310070



On 10/29/2025 2:44 AM, Dmitry Baryshkov wrote:
> On Fri, Oct 24, 2025 at 08:45:19PM +0530, Krishna Kurapati wrote:
>> From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>>
>> SM8750 chipset contains a single DWC3 USB3 controller (rev. 200a), SS
>> QMP PHY (rev. v8) and M31 eUSB2 PHY.  The major difference for SM8750 is
>> the transition to using the M31 eUSB2 PHY compared to previous SoCs.
>>
>> Enable USB support on SM8750 MTP and QRD variants. SM8750 has a QMP combo
>> PHY for the SSUSB path, and a M31 eUSB2 PHY for the HSUSB path.
>>
>> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>> [Konrad: Provided diff to flattened USB node]
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/sm8750.dtsi | 158 +++++++++++++++++++++++++++
>>   1 file changed, 158 insertions(+)
>>
>> +
>> +		usb_dp_qmpphy: phy@88e8000 {
> 
> You also need to update gcc clocks properties.

ACK.
Will add the qmp pipe clock in the last entry of gcc properties.

Regards,
Krishna,

> 
>> +			compatible = "qcom,sm8750-qmp-usb3-dp-phy";
>> +			reg = <0x0 0x088e8000 0x0 0x4000>;
>> +
> 


