Return-Path: <devicetree+bounces-233010-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B693AC1E377
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 04:38:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5EDF33ABC07
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 03:38:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 736A52C3277;
	Thu, 30 Oct 2025 03:38:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YmmWK9mh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DYLWeGY1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D60232C0270
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 03:38:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761795525; cv=none; b=gzLGu0cwqESkvY5rYRbDLGQnrTB4ZI/STKM2/YJIuBycvKGzb9yZX/2yYzH7fWCxPZCJ9Gpvsf2JldcPC7MV+0FrZAdXnnmtAOVqfq9wbss3ysVpwT8+HOu38YgAcQuTMwzjec3hMyxe8k42pcd+29YF/XMpUV1pfoh68xGyKS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761795525; c=relaxed/simple;
	bh=VSHG8DAhQjKVcCyq5B5QW7BaODCyRga+pKRT+PEcoCE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=g5Sk2heZMQumP87SIxUHV3m6OiF00sDaS7y7clKXcHpMsmqplHIeEcGUNPctdFCeyIWt52Y51H9i60cZrEcQVe8ab+88SsiYZNGFn2H0C9omFJcResj9uMTQP/9YsNBsN7kZJ4GBZZxTz+H4sbE6dtj2a9U/HF1laizvnPza/jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YmmWK9mh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DYLWeGY1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59TM2rKN1699886
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 03:38:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8cTGlLixs0EcG4dKWmS5DgH7TjtJvlrFipCs1gJW+1M=; b=YmmWK9mhT2/HxmP2
	d/nFKs3NQn4xlGvZZfIFG5MSrL3wNBGzzzVHkjrBYqKjMtp6d9O8Q+yEH+BI9Agd
	UdVzS/cq64ZiTm/qTUrq1gJ/XNX52oZhy8VDJYarB9G6gvVC2JYAknbBUtHPbEf0
	MCOlLD755Tx5npzVGJqQlVMchCTMw7bZ68LjrZsPb0nMDCllscrLvRBaWnr0DzZp
	9mfy05Wa7L+DYSVNG4c9nXNr5yv2kUaZKCNlscxbLBYon318zPTxzAteBic5quaC
	XPU9Ed62Qqph09EaEuqTnIC5OY59+k+C2bYrJBFuHUPjWvb9UrjRgUU8lJRPgrI0
	vr3Eng==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a3ucj8s5n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 03:38:42 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-340299e05easo499289a91.0
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 20:38:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761795521; x=1762400321; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8cTGlLixs0EcG4dKWmS5DgH7TjtJvlrFipCs1gJW+1M=;
        b=DYLWeGY1NrY00mAjn6t18OaLibQ/GBvqORaqXvw2n0nigG4UgG6kiPPe3lvKvvmiVx
         yOLh2aSK7Ga9c7qIFR5KBCw7u8sKbStr+fzttwe+QKHmxrxbdiqvOAzSeTMUmt5rqgHq
         s90OUsXRhDbeu0b6tt3Nv/wGVuAPJiGBksz9aZau/I6+3fPCawhzSA4+AW9EYcT+Kzqn
         I4WCsULyhSUtiPmiZka98s0F/Qo9JLtvJsT6VP+X16XRz0BqAU1Ryccaw4GqTucBY0s2
         F0MkYJJGLoUr7a373sWWUvst/vk2vgPX9fCq+d+KnUeZicNRGvzFKpPc6aRWvLc156K/
         6MMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761795521; x=1762400321;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8cTGlLixs0EcG4dKWmS5DgH7TjtJvlrFipCs1gJW+1M=;
        b=CfvQYaK5hMG8SiV4mMWQY0C7XHEwnhxPbSt0IRKrPTW2gMtzv5vc/7o3HxZZ6vxPrK
         sRCyBrmOgk48BVuKgJakrqZ/n5FG9Ne9dU7SSMYycZDAKKO/L0YWTwvtA4GWFKkV7LzQ
         BCvLczd7QUdQz/Nrn9HZY2trkAh2kQJDZZEKo3bjns1vsamkgkRfEiLuWT5A+5WOHyDo
         gIF0hhtUxgU0N73zJud+rx5sCz/38sTd9RChdK0qhyXHScClgtIKoKrldpbmYC8f2Jra
         XGxiPA/EGbC2d1IeASUvAMO80sOlPvolCzthFSaULLkRwSnNMtldG27x12JM3DG22tho
         vVZw==
X-Forwarded-Encrypted: i=1; AJvYcCWOw8FxtCTuxd0C6jkPqrv+Z7JNHpv9gYDdbL7pW8/tEd68KGGbLecYYmeGlwHEOq5G0+cvysOBZoqA@vger.kernel.org
X-Gm-Message-State: AOJu0YyPjsRw64EoORzeVYr4r0xPmj4TZQzihs3VKR74fGw083BoRMmY
	OVIfFM/W1lnuSeWbqfp8OJX0o7oEJXChXIvQWgEgb8QEbH2ekQLhxYpIiatm7MWg28u2HS+Z+JZ
	v9uT1Sdw52lk8TTcrnkbafbqRv6yTrvMzLoRRPtfcoqErcp5zV/cLjQZBYU+WkvyJ
X-Gm-Gg: ASbGncvHVwF3xioNq6cbzGlIkaE5URmkT1uUZmy1+fTyfEHeLyp7ver/JjoWwuDn/e3
	i5MazEqZJug+VRdynMSdoxe3ESO3e8Yu3YGCvdKuNHhWZf8Hh+slg7xgYIRp4LOFN/wzaCZgfbp
	lV270CaXAhW9+GtKxS7tGB/LSZfqknxSbyv6So8Zt5pcNonSAtoPsVqTq4K0g+C0ANSoWzLGGrq
	N1cS+Elzop5UKYscw8wBcJnztVfgZ3cAntPFvHDO7KwAeCGLyHC48OP7RImM1sgyKS7qSph69Vb
	e6H/jTHrWQ80sHj8v/iapL8cbFzWt1Dn285xK9t9g1P+2AmZuAJSdOoB0PbbFbot8ZPnouQ6hDt
	1q+jTK5IgQqyvBz3a5qUs8eqBtHxRsNw=
X-Received: by 2002:a17:90b:38cb:b0:32d:e07f:3236 with SMTP id 98e67ed59e1d1-3403a2a22a8mr5280692a91.22.1761795521540;
        Wed, 29 Oct 2025 20:38:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IETSXZA/9AUH+eCeARyftxGQaYC5tfLi6TMdi8gQWvqS2Cl78YWh6ARpNw6aUIpThTzHdcxfQ==
X-Received: by 2002:a17:90b:38cb:b0:32d:e07f:3236 with SMTP id 98e67ed59e1d1-3403a2a22a8mr5280661a91.22.1761795520939;
        Wed, 29 Oct 2025 20:38:40 -0700 (PDT)
Received: from [10.218.35.45] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3402a5ba7fesm3305920a91.9.2025.10.29.20.38.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Oct 2025 20:38:40 -0700 (PDT)
Message-ID: <a876f8d4-969a-40a8-8988-2f716a742741@oss.qualcomm.com>
Date: Thu, 30 Oct 2025 09:08:28 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 7/8] arm64: defconfig: Enable TC9563 PWRCTL driver
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        chaitanya chundru <quic_krichai@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Jingoo Han <jingoohan1@gmail.com>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, quic_vbadigan@quicnic.com,
        amitk@kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, jorge.ramirez@oss.qualcomm.com,
        linux-arm-kernel@lists.infradead.org,
        Dmitry Baryshkov <lumag@kernel.org>
References: <20251029-qps615_v4_1-v7-0-68426de5844a@oss.qualcomm.com>
 <20251029-qps615_v4_1-v7-7-68426de5844a@oss.qualcomm.com>
 <CAMRc=McWw6tAjjaa6wst6y3+Dw=JT8446wwvQ0_c5LHHm=1Y-Q@mail.gmail.com>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <CAMRc=McWw6tAjjaa6wst6y3+Dw=JT8446wwvQ0_c5LHHm=1Y-Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDAyNyBTYWx0ZWRfX+NyPQqw0oSqT
 QOKKF7KK05mlheBwadU9CadfpABadGahNbqMzJAQ89LmzwiM/OdAuQuW8XApnEwwzhjh2k1y8S3
 X2cQLo18RQZsUfEhAn7194fTjOw9LnESu9GHzmwUz9sK0legY3M0j4Lih+rpKiNcSu9ohQmiyL+
 71Dhmt0Bn08x40CtbGST3IP23hpEWB/PvkZA89fqOd7FE+A2dAbmnEtsr/BIoJjY2v1XWoxWRQV
 R+i2RVcf1kuPlP0fJayQsA7CSmAx3nPFRIQfzpW67SSxUyJIApym8KYZ4uuhrLX+OZDJnBNNAZC
 ociRWFF5Z3FkmJ8gwWSi9xjLXZx9dguo6F8U9XLb7pY5jlyOT2K3foxcEWDlUyNWz2DbVmjaS1S
 qlfrymhU88P0w7yy1kBmUQvoxRI0kg==
X-Proofpoint-ORIG-GUID: 4WdLId31guSdMEaaYQP6XU1Ri7TEBA25
X-Authority-Analysis: v=2.4 cv=V+RwEOni c=1 sm=1 tr=0 ts=6902ddc2 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=0FT5JWsqCLsmEzCoxIcA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: 4WdLId31guSdMEaaYQP6XU1Ri7TEBA25
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_01,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 malwarescore=0 bulkscore=0 suspectscore=0
 priorityscore=1501 spamscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510300027


On 10/29/2025 6:45 PM, Bartosz Golaszewski wrote:
> On Wed, Oct 29, 2025 at 12:30 PM Krishna Chaitanya Chundru
> <krishna.chundru@oss.qualcomm.com> wrote:
>> Enable TC9563 PCIe switch pwrctl driver by default. This is needed
>> to power the PCIe switch which is present in Qualcomm RB3gen2 platform.
>> Without this the switch will not powered up and we can't use the
>> endpoints connected to the switch.
>>
>> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
>> ---
>>   arch/arm64/configs/defconfig | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
>> index e3a2d37bd10423b028f59dc40d6e8ee1c610d6b8..fe5c9951c437a67ac76bf939a9e436eafa3820bf 100644
>> --- a/arch/arm64/configs/defconfig
>> +++ b/arch/arm64/configs/defconfig
>> @@ -249,6 +249,7 @@ CONFIG_PCIE_LAYERSCAPE_GEN4=y
>>   CONFIG_PCI_ENDPOINT=y
>>   CONFIG_PCI_ENDPOINT_CONFIGFS=y
>>   CONFIG_PCI_EPF_TEST=m
>> +CONFIG_PCI_PWRCTRL_TC9563=m
>>   CONFIG_DEVTMPFS=y
>>   CONFIG_DEVTMPFS_MOUNT=y
>>   CONFIG_FW_LOADER_USER_HELPER=y
>>
>> --
>> 2.34.1
>>
> Can't we just do the following in the respective Kconfig entry?
>
> config PCI_PWRCTRL_TC9563
>      tristate ...
>      default m if ARCH_QCOM

Ack, I will do in next series

- Krishna Chaitanya.

> Bart

