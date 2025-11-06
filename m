Return-Path: <devicetree+bounces-235630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 661FBC3ADD7
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 13:20:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D7E003B3102
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 12:15:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8651326D6F;
	Thu,  6 Nov 2025 12:14:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HamTd/yp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hcGDDnWH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACA05322A0A
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 12:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762431297; cv=none; b=JMLfeh7fLqvibFcjTgc/6dJANeHqj/GBRWJiuA9Ep86eGiuCDwpz5btePj69TeDWp3WztY0EZMXDc27qG0CExFtoC8TDp82s3oRreszyKGwoDR0oaxBf4nh5YFqJCQimKmQAQmLP6XWFLmM4yN5Og0d+fXw66AsypVAoTVg7+EU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762431297; c=relaxed/simple;
	bh=ekKRVsIQk2yTIi2O6W8XgAImjp0Xet2F/XBpm8Quheo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FMxeJSKB2e9YDIU+CM8w/xUTr58gNsFR/FgxX/OKTTpu5lM4QQXBRJ2p7DPBL2hHApY0bMVlpw7oYyNUa/qvl2gxyw7u+4c57tTsmpDPSjRwznmOnAe3m0ZeKzgU6uXz5tr7vV4ruV+qfMk1l8ZiiJnFQv0lvGuOzWZNi10Vm00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HamTd/yp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hcGDDnWH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A68jiVP3383532
	for <devicetree@vger.kernel.org>; Thu, 6 Nov 2025 12:14:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JLXA08kPYaUwpSm1uwFgestSzsTRbCn2xW73c/Hiq4g=; b=HamTd/ypDv1PDxKs
	pTU3tAaf9V1Ft9XKoViWk4FUJ5JCFMbLTXfB0UeUVZT0AbcKDYneC1JNm35wfX40
	1AgbJ9QO3cR3ieqm3NMzddD/eOcfW5UQG4ROgN1CP1YUBoM8VWgAx+LqJ071Zou4
	1BWV45APvi/ciEblgvYuNgapYbrT9KJFj2qlA1yYSEodUFN5Cj2rkD3SyCN1oLgC
	pUnGQqwjLrtR2ZshJOF/eOmSmF1tVrGcvCYj4LYAvRUGqMq9aTWzRS84eymC01BQ
	tulALSEutN2ULunCHNv6PBGYQe84KlvzSsIBy8ingQakUb57Jxt1lHv2G1zcM8XC
	shr5JQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a8reurhng-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 12:14:53 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-883618130f5so9772385a.1
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 04:14:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762431293; x=1763036093; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JLXA08kPYaUwpSm1uwFgestSzsTRbCn2xW73c/Hiq4g=;
        b=hcGDDnWHmZefrNjC53xCdzaHy97XchqWMc75ggWypX5NQY/JsQT1OMKYoTUj8k1Pw3
         HrvvokPsA6dFmClxhZgTF7utxajfU0sXTj72sQ7Z3cf+nzI2WlT0uT4uXNqrsTwW+gcv
         v9WqkgdcrAwNzJHUsJtv6hiZ5cBHxkScabDCsGjMCCxaMbmRdC/4Ls0i6CVmfgC/xbhy
         HbXigdd2I2PvwkrXBnKmyrfaIb0fMlWvebHDtnl5wLVhoJNEgLhIpxbYO564yyfupXEi
         oR4nTx8gr+Q/t4ndZ9JOFuQTxWNaN0KyIbT2K0e/2XR7yRWvln8orxIR0Vfj+Fhhg9zN
         5TOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762431293; x=1763036093;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JLXA08kPYaUwpSm1uwFgestSzsTRbCn2xW73c/Hiq4g=;
        b=kIYhQSw8GUmTSGKbD4sn6pGx1UvcmThwUGlvRFF1BQawJ6Skp9h6Xrv8pX7KG2TCWF
         MJq8LzfJZ625LgHTabQlF5nn/l2geR6mFtv+EcDS/5PZXH8z2w0IJaByU0+AIejp5MH+
         V2xHSV2I4qPtoUDesd+VWdExBTm1zAxXeb14TAyM/kHx603ET8ok5KYjVgUjCkjquCaK
         HoG3/Tbu+tC7DuR9IIcWeN6EaBbCbT3TE1SYf8I/xtYPO8zJdQe45KIBwEYjKxGtnQgv
         x6KY51lqbB9waHoSTh4R/buIM8UDE63bwo7S6hegSq6uhNQG/SS/VSXDsSY07fsUs/tf
         9iKg==
X-Forwarded-Encrypted: i=1; AJvYcCW9sehWUAoJvWVhVfnNxL6ybq6Y2JwBrfeVBUpXkd7PftaeyFfEGqsdix25c6iOYlHfjhAEfrSGPkwi@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1j8rZK++4ZIxJFFkQiHTdSlTq6TVNv0XE3bERJyvuVofC8fYr
	mdbdiqv1hcj5uiU3S7zCUZ45mtj2RjLsOcIPM6HoHRN3mTCQtkMph1K1neKSAYypr3GkL6kzz+F
	CXaVw3s0futBs21HuBpzsd+UJXC1/9AGCCQN47djP0xTtwVogXIS+0gpgDH6hoXl6
X-Gm-Gg: ASbGncuipmOuC7SqRkd0J04hA7ooWBfvQb8opHPiN75cl3UUjtXGWllKo8lpE54ATUt
	tlqwuqa906IcDUqTSf7dl55tr0r2s+BZpjRxb8nzaWWU6lKW3O9Jof5mHkzEUkZ3D/3RrcsQew7
	czF0Ve86DJrQaQA3gb5wjH7bZvP/FyZ0vNVd2ZtkW1EwOUegQ8dvfcA6YMNqw9t9L3Oi4l1ELy9
	K7S9yQdH23vRwtrTLAtnRbZ1Gly7tNbctmdJw//HWHavUvF/QuuGPYAkgGSSFcxmaAm2ZcOn9Xy
	puEXl5gFAKQX2L5KxaUTYnnitK6+gWajo4LOilwXdStaicYy+YmYTecvABmFpLIj62JUNM48YbC
	sxOOLPngRdaLJ/L5arcRk/E+xTEkvL3G9n7JNqOdzSuihEnK8K/gbWXei
X-Received: by 2002:a05:622a:1190:b0:4e8:9bf5:5ecd with SMTP id d75a77b69052e-4ed7212ab6bmr51316561cf.1.1762431292988;
        Thu, 06 Nov 2025 04:14:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGbHbT2S5J7YWDZlDRXl3mXy5NvTvkRuByNb/uQnt5fhSTJ+xry+0wZ84KARasofcaWgtF/dA==
X-Received: by 2002:a05:622a:1190:b0:4e8:9bf5:5ecd with SMTP id d75a77b69052e-4ed7212ab6bmr51316331cf.1.1762431292468;
        Thu, 06 Nov 2025 04:14:52 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72896c7e39sm202861366b.72.2025.11.06.04.14.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Nov 2025 04:14:51 -0800 (PST)
Message-ID: <ed1e6e3f-946b-481b-a183-c39771686c10@oss.qualcomm.com>
Date: Thu, 6 Nov 2025 13:14:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] PCI: qcom: Treat PHY as optional for the new
 binding
To: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20251106-pci-binding-v2-0-bebe9345fc4b@oss.qualcomm.com>
 <20251106-pci-binding-v2-2-bebe9345fc4b@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251106-pci-binding-v2-2-bebe9345fc4b@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA2MDA5NiBTYWx0ZWRfX6gZ04jooMykQ
 MJefCfsIFU3QtbnWgBRkMWAYP8PHE/dHLLwqRTRudkdPrzzRHk/llqEyoaolABrOXt4nl+WqP30
 M5P+RdffO9nSZp3BVPosecb5B0nPkyCRcGUUF5pU5LiXo/KVLM8uDG3C65ad4cScDjFTz/iMJrk
 3x4f/LZTZmH5KW1QsXakwGR5c8MLahE3TENefPUapUqsG2EvJemN10HVBOEgssd8PWbA1gKZaoS
 7ZM2kPoCMY8JZHcs14395P/6LZB30QCgWPRCwrzAuDpEdEbXEMXqC9QQx6PEAXV426pkZsFye0o
 vr+dm1eYTuOYDo4z5fIoevrgZcj9NNKe2JhdK9zj9XCzl+DV+48d1LTifI3J0iKpKvDqho15X0j
 6wzlJc1rgUN2HWqXfKBWNsxJpMg3pw==
X-Proofpoint-ORIG-GUID: x1OlixhogV8ohXCbHh0HXBQbUmjJKIeV
X-Authority-Analysis: v=2.4 cv=RrDI7SmK c=1 sm=1 tr=0 ts=690c913d cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=kYxvmccDk0iZALW1rmwA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: x1OlixhogV8ohXCbHh0HXBQbUmjJKIeV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-06_03,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 clxscore=1015 suspectscore=0 lowpriorityscore=0
 malwarescore=0 adultscore=0 priorityscore=1501 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511060096

On 11/6/25 12:27 PM, Manivannan Sadhasivam wrote:
> Some platforms like the old ARM32 IPQ/APQ platforms do not supply the
> 'phys' property in devicetree. Hence, treat the PHY as optional in
> qcom_pcie_parse_port(), so that they can work with the new binding model
> of specifying PERST# in Root Port node.
> 
> Fixes: a2fbecdbbb9d ("PCI: qcom: Add support for parsing the new Root Port binding")
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
> ---

Hm, I suppose they must rely on the PHY being pre-programmed then

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

