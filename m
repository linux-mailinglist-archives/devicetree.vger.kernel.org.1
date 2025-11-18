Return-Path: <devicetree+bounces-239725-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 42062C68C3F
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 11:18:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4DBE9356692
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 10:14:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06001332907;
	Tue, 18 Nov 2025 10:12:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nQGnFtnr";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IPUyin9w"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E51A331A46
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 10:11:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763460720; cv=none; b=qFuTip6noU9mZ3ynXggWZ2hFoba0SWXYcvIMqpS1Oc3jdvlP4VVQzQaIrSDH9cZLRnsPbrn81PWBFLDSw33kPFJsA2EdCgq/3tchKtXiL5Cyw74nwlSLa7Aqa7TkN+YV20eVZwPPVnuen446kCmDp4b7NIL5pQ630fkmsSx1NK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763460720; c=relaxed/simple;
	bh=2k8kp2eCR6II4n4tUCL2G0L3QQg9MS54ilVfxnRiAaQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lzFUxDrfINnt77IKKcvII54goIAln/bDdOOXf9N+ArLIYA8STMfONSXynSKtZcoMRtNBvgnsDvFMLmTvzRaHCljAwiSiIxzjUGvW/QJWC+FH3LHlgKX46B5svxzUHKrO1YJu9vP77K0gWVIM8pUJNCbvBlAMuGsjMyU5eA//zFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nQGnFtnr; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IPUyin9w; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI6fQ5K2343376
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 10:11:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KsUDUPxoq1t6MjKduGIYJdoPPwEgISWzAZ7LFsDaIFs=; b=nQGnFtnrJESm64mR
	9pEc4QGS9+y/0mQ5OuNcwYcNBN7K9xcBXlAZDMp3AESCmTFz6V4EtRyMRhEok4FE
	LJlTT7GbrrR5JD/PzKyzc1ItEtLZtrnFYMd3p1CStYB1LamauxsLJ/Vxu9dE6eWk
	sNGBuKh/xOWdXERN2tINpi6JyN7Z499XZZ7UF37dVO74mRhpBy4BVbzX6Slp8a/k
	vVDWFOIGBUuoT4WZ+dC3O2E09RSTsmIUOQA3YrwJZmz8zBS8PkEbCE/SyB3PW+3g
	iHXBEcNt1S3G0aV7cwlkcczhwsXkck9+4QYTxIP5O3gPGA81pEQJCyhpNgsHHus7
	FctMpg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agkrn0n4v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 10:11:57 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-299ddb0269eso28020365ad.0
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 02:11:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763460717; x=1764065517; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KsUDUPxoq1t6MjKduGIYJdoPPwEgISWzAZ7LFsDaIFs=;
        b=IPUyin9wB/Vj6H+ZgeTe7FQvnCbZtFe/t9i3L99WcMLdy2R/Zx5bSXNIeLW3qGU3j/
         vM207TqagJu3qEpYf88CvI3fbvtYxsOLkZqZoElD7CGPDxVSONqMalsc0doQ7oY8CLk9
         IjH/QoCZqyXhwFrJX25541VFH2HfdcEBKf6IQzsIZj+PKtSO9v/B1Y9SG5r5sdspQPOY
         AqttR7Ya6kSzqpzyk8vQ1Q1mUs09vs+g7hd7/atZnOR2PQ1tHeI+tPJtDbOtn3dQv+f3
         irSaGjRVa02XCYYFqjIZ2Nk9pbBfzOxpRn1K2d7szCD+DAMKfUmns3MZjhG1b90NZtyD
         CirQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763460717; x=1764065517;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KsUDUPxoq1t6MjKduGIYJdoPPwEgISWzAZ7LFsDaIFs=;
        b=S6X9MSt8sZ2awWQwL+kgQAjbRtYfG+YWTaDTwbFKvY/DNpyFPwZbCKo/5LjxXLXyvq
         20jI2Cw3eKTlMxnZU1OdZgwtPOJs99LBk2c21ot2ewlbBZuEjydCdJCdaRaVaSsIm1Yl
         alqM3ZbBwcP1+Khd4vddtQugwhA+g2ulNsb2pseth9WRdfcp92QewbSHly+6Nqv42Cx/
         dYzdPPbdVGRo4G7X/dsyjWvjpwcbf5qzcNVIIunmOy8nW88KMCZDCvuCexF5FdUQ65pt
         55p0rr22/Xld9jQcjtcrEALVfQRHj0SQu3lAaS78xQeqz9B04d1PQLQfQtbBXJfJHFKi
         K7kQ==
X-Forwarded-Encrypted: i=1; AJvYcCXGmZLeXq451NJ/Wa62jBwwoiWpfIdruM9DAnLiU+hPfLykOPltPpOTtEBSwv7eIUUEYxPng3mnoTiL@vger.kernel.org
X-Gm-Message-State: AOJu0YxjaQtZe0Leh26nq+NJEEyfUIOFVStFR6td06pBXTtloU3q4hvG
	FbgbHLm3lPV+gzC4pkINNkK370t/Hf/XFwUXl7GSb0RRyMozhjBEe7kD17Sm4gzugTe1sRewlT4
	PUidNBeMm3c/WuDwpoq6RymI5Ut9QaVrDW6ZY2RJ+1soRthboAbaOW5FOvBLH/ruy
X-Gm-Gg: ASbGncvZDgMpAoVfBqnp7fCMoLbgR1U4lOpps7xG9bwrK0vYwszODRSrJQJ2ib/vMRf
	Ut4XSu3m4c6ZTOFEU+IMUh9TsmOphTuYL/aLLp4P0gYjPiDEqCyiKPKpcZIUyJiG27rCFnsrzCE
	uXg9dq7OaCttckqK++weujZXeLVae/8AVLdCHCKOslX9moS9oeeWKyyrtGDYzRQ73p87wd1jktv
	KhEblC3SdGVBIg5AY3aBkTnPZn6zuWjbzPavDzrZnigcPu2t8UEpy1GyrJOla/oXPvsfBe1M7Gg
	FNzoloo/7i8SdZ3ljf8AsY+Gd22KtTLUJYX0DxpCID4fpWcY3xssZmZR4EKdB2+It2DmM9Jz/fN
	wIbV/m4YnYrVtfwtP2tBow+FulQycKvXyB2B8jeh7QIaZsqJolwAbKnQ2hcIAnxpQ
X-Received: by 2002:a17:902:f647:b0:298:42ba:c422 with SMTP id d9443c01a7336-2986a73303amr176999565ad.31.1763460716847;
        Tue, 18 Nov 2025 02:11:56 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFSElhq/foZIVZg0t4wjamD5rzsGK+/4gwbgY+RGs+mSFiFVT1jM6xTJZ07fGy9cGHEujc8lw==
X-Received: by 2002:a17:902:f647:b0:298:42ba:c422 with SMTP id d9443c01a7336-2986a73303amr176999195ad.31.1763460716345;
        Tue, 18 Nov 2025 02:11:56 -0800 (PST)
Received: from [10.133.33.100] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2986e5ef32asm133115195ad.39.2025.11.18.02.11.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 02:11:56 -0800 (PST)
Message-ID: <12bce4de-9491-4040-991b-529bc916983c@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 18:11:47 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: Add PCIe3 and PCIe5 regulators
 for HAMAO-IOT-EVK board
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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
Content-Language: en-US
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
In-Reply-To: <rakvukrdsb3vpr4k22hgvbr2yc65me32uezwrqgn2573kblirt@7q7pgr3nkvso>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: eCuxDMmyQ1QyhdXOjYtLDibMkcg3heNp
X-Proofpoint-ORIG-GUID: eCuxDMmyQ1QyhdXOjYtLDibMkcg3heNp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDA4MSBTYWx0ZWRfX2io9mbjDoIlD
 5dBrO7AxGRyQ1H7dLDiHI6fF2in9Y8Tb6SdtmxCxjPRsihYQvmjmObG8xZIeCyDW01KYgBgm8Pq
 BbOsEPsQone5xSK+VMSgBbmyj7YOkFyRKU1pI0uV5B8UPWGk+OmjGds5hSi+i8hVX/XuSd0YAN+
 05sS6qGZYPKjrGU3ccNS7TPLYrbdJSBF6KRaL/MQnoqievOf3Ds5Ufp0Z3PTwdFLPHbtubx3UVZ
 v7JCx2Oq+s1/Txa8xzj/4JmKm7mJes/0aIZLbr5spZ44BuYLRSrNWyjXlxsjLX+k3frnz9SVS7n
 wVWuZevriPkxbZJ3dwbCT1zkumJYxpQC9J/EiyMj2Kmd+LW10vsnyjFia8il1qrnXD0CmpQA6Iq
 OWjjN+Fv0wpZTMqWjaEmefAAaqA5HQ==
X-Authority-Analysis: v=2.4 cv=L+kQguT8 c=1 sm=1 tr=0 ts=691c466d cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=0FT5JWsqCLsmEzCoxIcA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 malwarescore=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 adultscore=0 spamscore=0 phishscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511180081


On 11/13/2025 5:16 AM, Dmitry Baryshkov wrote:
> On Wed, Nov 12, 2025 at 05:03:16PM +0800, Ziyue Zhang wrote:
>> HAMAO IoT EVK uses PCIe5 to connect an SDX65 module for WWAN functionality
>> and PCIe3 to connect a SATA controller. These interfaces require multiple
>> voltage rails: PCIe5 needs 3.3V supplied by vreg_wwan, while PCIe3 requires
>> 12V, 3.3V, and 3.3V AUX rails, controlled via PMIC GPIOs.
>>
>> Add the required fixed regulators with related pin configuration, and
>> connect them to the PCIe3 and PCIe5 ports to ensure proper power for the
>> SDX65 module and SATA controller.
>>
>> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
>> Reviewed-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 83 ++++++++++++++++++++++
>>   1 file changed, 83 insertions(+)
>>
>> +&pmc8380_3_gpios {
>> +	pm_sde7_aux_3p3_en: pcie-aux-3p3-default-state {
> What is sde7? Other than that:
>
>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>
Hi Dmitry

I’m not sure what “sde7” refers to specifically. I saw this name in the

schematic, and the pin is labeled PM_SDE7_AUX_3P3, so I used that naming

in the DT.


BRs

Ziyue

>
>> +		pins = "gpio8";
>> +		function = "normal";
>> +		output-enable;
>> +		output-high;
>> +		bias-pull-down;
>> +		power-source = <0>;
>> +	};
>> +
>> +	pm_sde7_main_3p3_en: pcie-main-3p3-default-state {
>> +		pins = "gpio6";
>> +		function = "normal";
>> +		output-enable;
>> +		output-high;
>> +		bias-pull-down;
>> +		power-source = <0>;
>> +	};
>> +};
>> +
>>   &pmc8380_5_gpios {
>>   	usb0_pwr_1p15_reg_en: usb0-pwr-1p15-reg-en-state {
>>   		pins = "gpio8";
>> -- 
>> 2.34.1
>>

