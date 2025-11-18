Return-Path: <devicetree+bounces-239730-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 156DFC68D8F
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 11:32:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id BEA242AD41
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 10:26:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFCF9353898;
	Tue, 18 Nov 2025 10:23:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Lv+GtSRj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QberCnGv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 060C934DCD7
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 10:23:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763461432; cv=none; b=lbSuAo/Ufm4Y32ouIK5HGRq1F8ql0E/UU32HcsMzkygQWqeE6up23y9R0LzeI97Fmp94zYUzrFE91cQr5Uvd/6Tr1kIswN4G8hj/2pnN0ViqyEASy+EezNp9IiJipR+lH4MYFuQ76BFM62Y0PTbJreUwne6WJLgSmluylKH2y7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763461432; c=relaxed/simple;
	bh=N3v+mSo8PfJtDG6wgdL10Ld1ZRAa94kimplQc23ZtTg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MKQ9qe9ZLkDHMXfWiQ7Ti362cabIgO2swuU9m5EY/Z+Es9DpVUauLpE6+5rLE4iqZBUIVzVYVgfoRBkU8Bn8cOzh6X6ytWK8munTF/urGVAjP73i9lsJIe3HWFa7khmv1xcS1nd3drYGRxt6F+1Yqh6GAqK8x3saQLCA0mQ/YzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Lv+GtSRj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QberCnGv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI6fo2H2343817
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 10:23:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IB2f1sdl/WATGyDc2pbmH3Hn7ObmxrKYTqXPDVDllRw=; b=Lv+GtSRjXk+Uykc7
	SylQPNRfW/iHPnRYwp7y+IFmC9SpSAolOyRVQvCS69Ki2WSc7LaqxFQzvQfAQFhe
	ARpbcDzvbIgjFjjqF6sauvUkEsLM+SLf94vNWKuLXeZI+s99V1U+kVHdGFrVH759
	aBZ3/oDMThVboqM5m1Euh8Fnsie6rJ41xsqFkTbZRpgV8AXsSg+kjEMU2mpTZpV4
	04Ahl8dMrAUI5P6d/Nb81QdT6GqkgH7eiX6WmV9Um2pUx3z+WRDgs2G8U3oHMkCY
	efVjEWpwOVTla6z1AD9F+3v1Qitz3xxp9Q1/e1/CfAYfvf/t78TlQtnibAyBEAmX
	pJZuoA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agkrn0pay-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 10:23:48 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-8800460ca8dso22275446d6.3
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 02:23:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763461428; x=1764066228; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IB2f1sdl/WATGyDc2pbmH3Hn7ObmxrKYTqXPDVDllRw=;
        b=QberCnGvbaZWdHTSl/uWPUglSH8Duayx982oRuDX0NvHy6pgmmbPPPPg2LsZ42aKF8
         JVz0wpL35AwmG6RU6XKGQSyRp4DNyh8BIVSmqK7pltfF8/UQCu+JwLzvx5xcukCXcbUu
         60HTST861YzAmzJIl4yYdOTPgndy3EPIfTPVHghQGoY7dVeBqbpB2KyaxA50NNxTe4xO
         7q8Piokxes5WqvIshFMh4N1hm1MKhEGth813/IMRM5JLKzemQKLhv9KXZxmnITf5G6ZQ
         v5hOm3M/zZY/HVUUblmrFGjbnp1+DQ7GCVtsVehLTtg0oywWi5ucK9ya2C3OdicS0+hI
         WXOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763461428; x=1764066228;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IB2f1sdl/WATGyDc2pbmH3Hn7ObmxrKYTqXPDVDllRw=;
        b=eAOBSqu1ZOL1r2zpsP68wX6u53S4iWkvSghia0UIdYIMbWedN8CNosGAoYG9HHhvBR
         1hRfZK6A0Yu5tJVbi4ltXZOTMDEwRdJIC5sa4JgYUTxXWqXlpPD/5a86Mj1GmkxVF2dT
         o7hDceic+SMVSCiOSZgPTuYtKcxrLJCPrhm0dzyiJSsbwiQIyOVPwf0l6pt1K373iT5/
         E/eI9UHWjMDPC0elD/xtAaDyM9jbyyVj64gXrKewtmfdPLUEWH6CPmUJAtDDMLshyWPU
         Q3gYeMPZ3ucMBAfVZNWTy8mBE982fSkXDRIYqYx7nUE15qpjIn+aHxT/OJtfb8rPmNlg
         HAPA==
X-Forwarded-Encrypted: i=1; AJvYcCVlzLUC3HLCc9K53cLdaqmg+qcTmbmwS/nONbGqXBFWpKyj4x4xmZRgBsJH+xIcmo/e+75VtF7iqPG7@vger.kernel.org
X-Gm-Message-State: AOJu0Ywl4uQzhfSxDCaFrXvS5t97nF+ZoLtwDIS83aBAbGRScusD9+sZ
	0kCxou/mvCpzlbnkkrhmlElIqetATkF0bTI9DnVFvZj0eJxXuZHDCX8Zyfk9FQNrGHIbhXXdYbK
	lsTIOK7uDOtwtsA3NWX8Jq7pV9A/LRy3kcrPlqgLt6LSrd946YidsZyuXZhBuUvz7
X-Gm-Gg: ASbGncuZSYoAwvYN+7pdmWyp9luo5HxINiuaRkUZW52Of5Auv5Ukme2eQ/T3N+FwCCw
	/G5VSgunsIS9bEq8vbP1pTcown6/hcEb/GWjsRlo/U7UKOS5SEQ8QZf8TIMELyB9YU6293Jco61
	azr3c4gI0uPyiSWlIu5W6aCZCUxokPwHvUeMd9q5+oyBtlTHI0qQBh9Hq/ZNIa3muke9f8vXq6+
	0FaMVNu9tbRrIvQSRpm68yaCQjo8oTUmBgAEKAMmMnPcrphWKzo616K4VIZPEG40lWR+ELFpUAN
	04tyoNm9iyBIEVxQ9KC5hfU5Y7vYSvIsXDOQv5TTIYJpI53ficbLhB105krQtyKhLwlSJcVBW74
	tnH9vVJo7ix3918+9XZk90/CDtdaelsJpbVxCq7FjsMCBaVLN8kFq0+7vRuPcB8guAyE=
X-Received: by 2002:ac8:57c9:0:b0:4ee:1588:6186 with SMTP id d75a77b69052e-4ee3182281emr18881761cf.11.1763461427919;
        Tue, 18 Nov 2025 02:23:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFvFSIxijEg7mgfrQqJSIF1H7QFN5Tct4RgmXu/nhX/G7pOuSHJr84BHcXXiafKCRqyZLH6Ww==
X-Received: by 2002:ac8:57c9:0:b0:4ee:1588:6186 with SMTP id d75a77b69052e-4ee3182281emr18881521cf.11.1763461427403;
        Tue, 18 Nov 2025 02:23:47 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fad456bsm1345508066b.21.2025.11.18.02.23.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 02:23:46 -0800 (PST)
Message-ID: <f04e005b-c527-4d60-a0bb-4611f9b34655@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 11:23:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: Add PCIe3 and PCIe5 regulators
 for HAMAO-IOT-EVK board
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
        qiang.yu@oss.qualcomm.com, krishna.chundru@oss.qualcomm.com,
        quic_vbadigan@quicinc.com
References: <20251112090316.936187-1-ziyue.zhang@oss.qualcomm.com>
 <20251112090316.936187-3-ziyue.zhang@oss.qualcomm.com>
 <rakvukrdsb3vpr4k22hgvbr2yc65me32uezwrqgn2573kblirt@7q7pgr3nkvso>
 <12bce4de-9491-4040-991b-529bc916983c@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <12bce4de-9491-4040-991b-529bc916983c@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: SA3Z5yACJcW6t4uQoCgCAY6ePEdxiYxD
X-Proofpoint-ORIG-GUID: SA3Z5yACJcW6t4uQoCgCAY6ePEdxiYxD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDA4MiBTYWx0ZWRfX3lsP+wCvXyY0
 DMstgls4c6L1ky64QAgMmy4+Dn8uFWyYDGwAcNdhCoKSzQ6QF13j+KxB7u4BnNgWGcahb1rSTBk
 AWmdOf+jiIu8p7mndpUgyG44U48pZpuQct0zoWrCrLxtR5X/yAuRnIpC35AuGno9vUeRpjjbI5c
 qEpK3RYuqgN2vxIi2MCJwUPv8K/fBAWk9spY3D08EYc37Wpf5KBdFkqkb+JpY1fkPnV/QAdWdtH
 cD4sbre+avqmRnLS5cRICPgijHIEJKIt8jNYspPtvL0aYXCxVq9aOmObiksQMgMLKv0mHHdCK39
 paTN2IN0EnHYJwimLkgC5YgZ+RcUvjhIqOudTdAVG81wdjprb9IM4izH5cRKifFVmNIvZ8a4fPw
 72VaFwGsptf2NjWc7iEIzbcv0ErN7w==
X-Authority-Analysis: v=2.4 cv=L+kQguT8 c=1 sm=1 tr=0 ts=691c4934 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=IK9dZxoMItTNHq3eVUAA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 malwarescore=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 adultscore=0 spamscore=0 phishscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511180082

On 11/18/25 11:11 AM, Ziyue Zhang wrote:
> 
> On 11/13/2025 5:16 AM, Dmitry Baryshkov wrote:
>> On Wed, Nov 12, 2025 at 05:03:16PM +0800, Ziyue Zhang wrote:
>>> HAMAO IoT EVK uses PCIe5 to connect an SDX65 module for WWAN functionality
>>> and PCIe3 to connect a SATA controller. These interfaces require multiple
>>> voltage rails: PCIe5 needs 3.3V supplied by vreg_wwan, while PCIe3 requires
>>> 12V, 3.3V, and 3.3V AUX rails, controlled via PMIC GPIOs.
>>>
>>> Add the required fixed regulators with related pin configuration, and
>>> connect them to the PCIe3 and PCIe5 ports to ensure proper power for the
>>> SDX65 module and SATA controller.
>>>
>>> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
>>> Reviewed-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
>>> ---
>>>   arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 83 ++++++++++++++++++++++
>>>   1 file changed, 83 insertions(+)
>>>
>>> +&pmc8380_3_gpios {
>>> +    pm_sde7_aux_3p3_en: pcie-aux-3p3-default-state {
>> What is sde7? Other than that:
>>
>>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>>
> Hi Dmitry
> 
> I’m not sure what “sde7” refers to specifically. I saw this name in the

It refers to "SD Express" which was connected to that PCIe host on some
flavors of the internal boards, and the naming must have stuck..

Konrad

