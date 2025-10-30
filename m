Return-Path: <devicetree+bounces-233155-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id F246EC1FA0A
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 11:45:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4F7ED4EA46F
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 10:44:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1E5C351FAF;
	Thu, 30 Oct 2025 10:44:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BzW+ctH5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iwLP20R0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4DA3358CE
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 10:44:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761821091; cv=none; b=Zurwm5KB/RbfUa0ok/3XFKphHImdDryfTjZNG5xGvZhXLSR3qtYqQQ65FsUANlrZHyYvzCtmWje3y+wStO0jx0fkwXgI+/M4HbgPJfi9EKP8q9kusSkXpPth3RE8n7LoRyqOSk6tQ+gxVJBvY8hZ4p9LBG4cVpvL2nnt2DxlKic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761821091; c=relaxed/simple;
	bh=NJ1SdBKZD17TzJiAYpxl3MwaFIw8Xn8sYW5G6pKGV/Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sd/5I1mmIFdYN6W1ee9T15Zq7p6kKQbeZZRwBmms247a2O8w4T/4nEJDr2FridYLZebnVKl/bpGSVcA4k4rnd8l1QgeKiYYm4h/l9OPaUxx8ocuFCLOPWbragz3bDFZL9I4b3HVrVobNfSNZmCnvlnPGH4M7YLD/k3pEFxYzmwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BzW+ctH5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iwLP20R0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59U9PJFe3509310
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 10:44:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hXIhpZNNzHDQ4WMOLENQxvtShf8hegEE13tUdSoj2XI=; b=BzW+ctH5iJtGdIbl
	A1bOVuk93E8W10adkencLcN4SzPfVjsS75jMcntyMjfEiKAokU50eBC8U2YuEkrB
	16B/fTx2KBirVdKJMOo4Xx8bowPNtTOFSqVwpPItfPYCnpY8VAhkVzyOXxjYc6Yy
	hWUf7zu/PZxP6c8DZsc3QeIxDgFvG2KOIoLcSmeXDvFA0bIkDXlPlL6S1CinpWJv
	4TG/Lg/68U1zDlGS7ha9ruCsWXLM6CO/VXO8R0SKdP8Fu/Z86RrALcsnFdHhtBGH
	lFq1Ssh0IcwPoQ6WDux3Su7Zh1/Br2ax3uNEuYaE5XMsRZmHsFuf9EeU/XvkcFZj
	U7jMNg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a45cdg7q1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 10:44:49 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b6ceeea4addso728921a12.1
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 03:44:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761821089; x=1762425889; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hXIhpZNNzHDQ4WMOLENQxvtShf8hegEE13tUdSoj2XI=;
        b=iwLP20R0QptD6WLqH4+HBiw13dpd9Kn3a1U3AE70dU3sgTdsSAenGtoIljMJruMyeT
         3WYrcfrPHUVPQ4+mHIVbwfMXLm3mdiMygY91SrnlHyypn3NbtsDdOtrXjmd0w+hywX/w
         lnwSo4mHBmKFZPp+ywvePGfzih6JlkLMqSqDS3u4X8gYB3r7cXGfd7Kv+6QmfAaYPJ82
         haYo/Dw07x0AHwfHLoPo2X/ipHxfML+OP0CeJ1ujIsligzrAmWfkIPCz6B1KTIgrT/cs
         arrVd7ja4wR3HXivHv8sd1WTbhrT1mdkfbn1YyoJ7E0hTU0SU1Flh1V+N9AXet2zFN/M
         oiyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761821089; x=1762425889;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hXIhpZNNzHDQ4WMOLENQxvtShf8hegEE13tUdSoj2XI=;
        b=uTj0/88qPKhfW+qj0pb0RYYOAoQyN97Sv21xEvWEQqR/22xOalB2FnI6de0SYjIHWz
         6PaMQOlq41V3uut3ZW81r9tyu707U9j3aqwVumWmiLR7NVTwXrByHS2GK3mv1xsdcwUI
         mFvQaI/ea7VaJ0WzMq5/paGNz5FArbhVTeOIMXOpYwKArezlxSAJ78ZR0I90byFC+EgN
         QbrQ/JZdMPJ8QV9OSimotgBUndvspIrBpdNsgwWbpgZkPgYjT0yomySF/enfxnad5038
         OflIYpOIaBTZjuozBE+kRc3S57iJqkNs0ivERI4T+DrPYxHvdwb4o2e/usX9umuz7gAA
         84bA==
X-Forwarded-Encrypted: i=1; AJvYcCVgwyQMyPClSknNineMYvN09651UUSaMX8LoY2qoNDA6LwVMHpvpHCZ2j4y7tx/1Sb8jMghThkpbiz1@vger.kernel.org
X-Gm-Message-State: AOJu0YxLkkKdXHskaiv1pToBt2W3PzLrODxgetpdSEOOZa7+iuy7LE2/
	398KLGEWD4xu/OKBpH656O74cYcSrAZaUCx0aKTFWmIiGQtws1E9NpkbMX53BEFix50E8AS0YZe
	5TITWtDTMrtk9KsawW7dfJYJFhRZxynS/QVB7ZnByyWn49Q59K4b9jcMmFainANWp
X-Gm-Gg: ASbGnctie0xEHPpKagz+IhiJj1W+PYSizx6Oy7MsM1mpTqhsgoW8NzguYD5go1Gcp2q
	CsQHrzkt9Z406gMPZkoExJq0NqM6bpb30F3PtNjV6Gmgqoot8KXlon9OrWBb779rd7pc4Adsi4M
	ieJxzDRIgq4GAG2pHdgGGO7s7MqPjcATbxP34IidOAoEHUu9JKJw4gUnmEuLk9/P7UIyAOiGusz
	zIy0k7tGBVs6d8rupBscvjxkBZMykXiguclgCMm3QUr6K4TzIx49v0BUXGlenUg6Ocd7Qll0qrR
	7tIU7RmPP5uObRhfUGSqhwRGZv8tqqFS36Myu7YOp2KoOQH0z5tl/Qgz6z/1y0yaDGmEK21Djqi
	8S9xrAaG6GUsi0cssnbQtjXLdVQk=
X-Received: by 2002:a05:6a21:2d05:b0:347:8414:da90 with SMTP id adf61e73a8af0-3478414dac4mr3238178637.0.1761821088724;
        Thu, 30 Oct 2025 03:44:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE7ZUbP1cNloe4SPPg3Fub3BgyfPmfkn49K9yBfTrZy1O62kWKmDpe2ebpcLzeLbVJEXw4OTw==
X-Received: by 2002:a05:6a21:2d05:b0:347:8414:da90 with SMTP id adf61e73a8af0-3478414dac4mr3238155637.0.1761821088211;
        Thu, 30 Oct 2025 03:44:48 -0700 (PDT)
Received: from [10.217.217.147] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b7128885251sm16213400a12.17.2025.10.30.03.44.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 03:44:47 -0700 (PDT)
Message-ID: <a52ff3b6-c5f3-48a8-a8d7-812026b0d87e@oss.qualcomm.com>
Date: Thu, 30 Oct 2025 16:14:43 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/24] arm64: dts: qcom: Introduce Glymur base dtsi and
 CRD dts
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-3-24b601bbecc0@oss.qualcomm.com>
 <2960a6fc-106b-4280-b4d4-9c1a3a449454@oss.qualcomm.com>
 <0a47016c-1d7e-4026-92bb-a13ac2ce169b@oss.qualcomm.com>
 <gg7srymb2dspk4jeycc5su5gjl434ymgzapqqyqw7yq2marzue@ql27qx2ptuo6>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <gg7srymb2dspk4jeycc5su5gjl434ymgzapqqyqw7yq2marzue@ql27qx2ptuo6>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: AJphZ36V5yi7zt1kWzq6y0ZsuIOaua3F
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDA4NyBTYWx0ZWRfX8tCzyINSrmDO
 kvU/4pDnQURBKyBZr3DYkRHRhIBqW8kXBEd46aaKx+MiOyJnJzJIskA8eiXRZ/yqeJ3gTG/Dw2F
 F/K6+MmpUyd2WQl2CXSrWaa+kzzsPJnK1tKarOYDOf92cgF4SD2sCHP7mL1KvnAEuYYo1/N3vMT
 ayROtIs+vOZmsRTTZDfb/J5noxqsmC4g8/Fd52nqmhoFl1UABIvFB4pJ4wJK9gRmYgewUKWKe6X
 12UPq6dJptsHrytdImdyg+nVj4xORzck8f1z+94eTvTYRKSCeGcVcQ3KVHV7y0M707LyaYH7wU7
 Pg9uQE3S+rzznq+2iku0W91C0A3d4mCIm9WciqdTzrFoC6j5j+ZleIIwjpGlKwwP6nS6okT8cGC
 qt+MGvOvyRkQFaemHsbbL3asU4ydJA==
X-Proofpoint-ORIG-GUID: AJphZ36V5yi7zt1kWzq6y0ZsuIOaua3F
X-Authority-Analysis: v=2.4 cv=ItUTsb/g c=1 sm=1 tr=0 ts=690341a1 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Z2WFzCv5d8wuYGPiYnEA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_03,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 suspectscore=0 spamscore=0 lowpriorityscore=0
 bulkscore=0 phishscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510300087



On 10/29/2025 4:06 PM, Dmitry Baryshkov wrote:
> On Wed, Oct 29, 2025 at 03:30:54PM +0530, Taniya Das wrote:
>>
>>
>> On 9/25/2025 3:46 PM, Konrad Dybcio wrote:
>>>> +		tcsrcc: clock-controller@1fd5044 {
>>>> +			compatible = "qcom,glymur-tcsr";
>>>> +			reg = <0x0 0x1fd5044 0x0 0x48>;
>>> We can map 0x1fd5000 - 0x1fd5094 inclusive, as that seems like a
>>> logical subblock (this would require adjusting the driver)
>>>
>>
>> Konrad, we encountered issues when trying to map regions beyond just the
>> clock reference registers. Normally, we map the entire address range of
>> a clock controller (CC) module in the device tree. However, for TCSRCC
>> where CLKREF_EN registers are located within shared modules like TCSR or
>> TLMM—we don't own the whole address space, and mapping the full range
>> can overlap with other devices.
>> To avoid this, we propose defining the base address as the first
>> register actually used, and the size to only include up to the last
>> register we use. This ensures we only map the relevant subblock,
>> preventing conflicts with other device nodes.
> 
> Then you need to behave slightly differently: map the full range at the
> basic device (TLMM, TCSR, etc.) and then create TCSRCC as a child device
> to that node (and use paren't regmap to access the registers).
> 

Dmitry, I agree that this approach is ideal. However, the current
hardware implementation isn’t consistent across multiple SoCs, which
means the driver design also needs to adapt. Given these differences, we
decided to strictly map only the range of hardware registers that are
actually used for clocks, rather than the entire module.

>>
>> So want to keep the mapping same from the start of clockref clocks.
>>
>>> There's also a laaaarge pool of various TCSR_ registers between
>>> the previous node and this one.. but we can leave that in case we
>>> need to describe it in a specific way some day
>>>> +			#clock-cells = <1>;
>>>> +			#reset-cells = <1>;
>>>> +		};
>>>> +
>>
>> -- 
>> Thanks,
>> Taniya Das
>>
> 

-- 
Thanks,
Taniya Das


