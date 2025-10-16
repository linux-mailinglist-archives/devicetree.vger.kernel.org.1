Return-Path: <devicetree+bounces-227561-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 17372BE2AD8
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 12:12:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 51A87504A19
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 10:10:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED5E232C338;
	Thu, 16 Oct 2025 10:06:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QVXTragP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFAA831AF01
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 10:06:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760609204; cv=none; b=iedEV0N8fVtHoMTZSBr0I4tFqV/eGRnhOSpFLIfNLgJlW1X0ei0FrB6/KLmASiyz9jv00ZZNfJiH2bDb/XYh4e6oSQQXGVmeFO38gZr8gN/3hcFsFpvq5mCvOA/A+IhI8ASJDZUUeP7usMzXPAA2zrPr9kTunzszgaJQSDrY20c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760609204; c=relaxed/simple;
	bh=xpmb1rSKDBYVs0ZMo28LoKbxEVeTzVqOi0abcXdHxtA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mLurANKXa8K7GPRjgBPkegJITDJHqsNexsWE+qlyt36u/FPsX5HyTwiKNweRQiZFGRgZek9hx3W/OyfiZCZbBQmNLai8PrL7OZ5JlqhutO9WWGSX7Tq4CUEjkIjtTutHkmvk+Oy9es+LPSv0jKYyax6d7+VWsr4uatYBoz2vC94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QVXTragP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59G7g0ju005331
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 10:06:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	btLg6GN9YLzsz1xX+GGVP3PQNjxmkDe+f1IkrCL/lTU=; b=QVXTragPiypYlM/7
	h5oJHjRNN+N8hp9RgH1BhOBNzsGy75QmyIfZa6ZnMLuQqxpk/Stnbo1lLzYWpmsC
	p9wilW16SxOn3in3IervbDZLFCOa03v3CvGZK0IhuR0bxk+pdi/NxFdpguR02UnE
	VXVkObkSSAgW9GnXWuhrMsq2rTMFZqYoh8Gl0hAjy6AhzgCf5zRoqOH0pkAC3dml
	VYfGaYaEj4KiwPBhlte5sRSHho6SpPQDSezUPUJ3DvWVTC6vuLy8XrYLTEtwP/mG
	2BHUmDbDF4Pq3yoNSypQ3Ex3nCymZpsM3DX4nEh48dT8u3zxqS0O4OwiWanHx+IT
	eHW2SA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49rw1am4wn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 10:06:41 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-88f7d885f8dso22218085a.0
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 03:06:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760609200; x=1761214000;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=btLg6GN9YLzsz1xX+GGVP3PQNjxmkDe+f1IkrCL/lTU=;
        b=glvPBsqp64BBL73EIWKjh/qgOCgh0jkqBzETXpLO/H5nf/A7H7bp3c0E6m8tciwbWk
         2+PZ0Jv3qmMXsg5/77t9ltwsO300SMiexIjvAnO/xOl54/OfQLYO8mJJgK7ibQuvwDgh
         QS+0N/EkEQJNf4KDVEy0d07c9/PEEo26LL/hWlpuax1mHSvPGyr77rqYBFc0R9javlq4
         YXyWrWdBJYf8DA1rUFdhyLz/7iKfzY5dc0GWZOko+4XgsxHgqE7OcoA0Xo467Mm1cYTL
         L+TQpxAsgdIqOjfJhAF70t/wHYM6fgWhOglT7fAsxy1L0lNyoHt35wyxAtkej6n5YjCE
         Xx/A==
X-Forwarded-Encrypted: i=1; AJvYcCVf7862nqiUavouXKEabnprOaGWxZrS2NC0Q9AWYT2pPR/4l4BClntxpyQ+Rtt9LcrHsFbdsMWQ509x@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2HOAvBq+ve1KKBYke1kdJrYpaP6RMVZLjX9Dn1u67IOkjEYYj
	k3lJ6nJ9ClHWnMoKGwHwEH5CD+Sjr6IWiFSeKoj9oiY/ruTNZD4TLt2JzTLjuMD7RC8P3d+lKf7
	EwbSx18+30bufrehPwvAOUSaBq4+GsMBoe7Lzqh6oNfv8JbN0UdogmNuheQ8hvu+c
X-Gm-Gg: ASbGncvgiZDg+dJDSzd9rUVmXCa0xsbXI66DkvuOkiIUSPvINvaAX3fcDs6j1gqNbAR
	04JovxNcoZCcF6DpvfiAD5jCL7cqrdLPr3nKpoEI1w72Rn3zjLjPRLSoR9cSBNuD1WlVSMkHl31
	QbkUCeN2jgE6hYochLAQn/VOhh+BWTHPt0oi4GPvyYMDHZ7nw2XTaqaqb+DVc/gK00tHrB4EJ+o
	QQonUpA/9UDk4OrUXanxPvK+4j/wGGnT2zWU2IZZkhSWtB844eApdz5cDl+hsYL9auwDEhlX90B
	EoGcX07XY7huqOc0bnUeyhlgGXBg+IADygO2Cqw7ZEFi9RUNrVB8+rTLJLnitrvqKYb081ueCp0
	iZWvtWfdVWeN2DBl9T2Fv0102k0/60erQMNbIVWzvjc6iTpgGLgD9HD8n
X-Received: by 2002:ac8:5890:0:b0:4b5:e4dc:1ee5 with SMTP id d75a77b69052e-4e6eac94c8fmr330023531cf.3.1760609200484;
        Thu, 16 Oct 2025 03:06:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFA3ifaqe1DGct9SvZ69E0sm18fTKOHfHo1FLVxYmFpMb1EB/sg+To9f+tLAZtWy+wviEjOMQ==
X-Received: by 2002:ac8:5890:0:b0:4b5:e4dc:1ee5 with SMTP id d75a77b69052e-4e6eac94c8fmr330023151cf.3.1760609199881;
        Thu, 16 Oct 2025 03:06:39 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63a5235dccfsm15435695a12.9.2025.10.16.03.06.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 03:06:39 -0700 (PDT)
Message-ID: <8bd5486f-38a9-4104-8d09-234f642b45fe@oss.qualcomm.com>
Date: Thu, 16 Oct 2025 12:06:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/6] arm64: dts: qcom: r0q: add touchscreen support
To: Ghatto <ghatto404@gmail.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251014044135.177210-1-ghatto404@gmail.com>
 <20251014044135.177210-4-ghatto404@gmail.com>
 <e114504e-4bdd-46b9-b708-8eebc3075163@oss.qualcomm.com>
 <CAMQHOhfjsi1L+3j3TrcjEjPp3xkn94KOdsrVZvJCyUDFBBSeqg@mail.gmail.com>
 <d06a254f-bf54-4bdf-bd09-3ee5e5b31bad@oss.qualcomm.com>
 <CAMQHOhe=WYhtsjHMcRnJOi8UhnNNBfveTWRGSZ_bg24gFysAEw@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAMQHOhe=WYhtsjHMcRnJOi8UhnNNBfveTWRGSZ_bg24gFysAEw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=K88v3iWI c=1 sm=1 tr=0 ts=68f0c3b1 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=NEAV23lmAAAA:8 a=fGO4tVQLAAAA:8 a=EUspDBNiAAAA:8 a=6DzVY7LKAAAA:8
 a=Z3UwoYWmb9_2lah6h-gA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=C-ghHgbq7mZpV9eKepqE:22 a=poXaRoVlC6wW9_mwW8W4:22
 a=pHzHmUro8NiASowvMSCR:22 a=nt3jZW36AmriUCFCBwmW:22
X-Proofpoint-GUID: LD4rw6xOnylTYXpnmKz43t-E45eW-qO4
X-Proofpoint-ORIG-GUID: LD4rw6xOnylTYXpnmKz43t-E45eW-qO4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDAzNSBTYWx0ZWRfX84jBklIZo5Eo
 dT/E/iJ93ENM6K03Ccsv/4AaTOWNrIB8+iPKmMjvf3ePQZ9YNK9ZxJX4jkYhLAxrqtfdSPqGrM4
 hJddzPr1NdKxjLmTwHnHNdppBUFoMbB8Ns8T9Tbnkoghc72hQYclzP/5KYVIZzpwOTZi7hAsWLY
 45cQMLWDF/LoGpcXe6K1jZDPoRRwIpEmXx5pOOMzjxRW+88fmWBE3ZLVTzSJwhE3Lu5UkAks4Hw
 awgarQwlNmJJFcmFplRgFH+MP/HFMAqpGl2VSqQFk5IS3SMgS4hkldoI0jO2kGxHl5uDVdfGQ38
 6tqzPP3Z2Ab7AyQbEu/Dd3gC9hP+kWDew2Zj9BLwJwy7CVYS2JvTvUW08Y+i7yzyktVDY2jFxIC
 mGJW59zbMBGkP/AByJ0r0jznx36cYg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-16_01,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 impostorscore=0 priorityscore=1501 phishscore=0
 adultscore=0 clxscore=1015 bulkscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130035



On 10/14/25 9:04 PM, Ghatto wrote:
> On Tue, Oct 14, 2025 at 11:18 AM Konrad Dybcio
> <konrad.dybcio@oss.qualcomm.com> wrote:
>>
>> On 10/14/25 5:10 PM, Ghatto wrote:
>>> On Tue, Oct 14, 2025 at 7:01 AM Konrad Dybcio
>>> <konrad.dybcio@oss.qualcomm.com> wrote:
>>>>
>>>> On 10/14/25 6:41 AM, Eric Gonçalves wrote:
>>>>> Enable the ST-Microelectronics FTS2BA61Y touchscreen. This patch
>>>>> depends on "Input: add support for the STM FTS2BA61Y touchscreen".
>>>>
>>>> The second sentence doesn't really make sense to be included in
>>>> the git log
>>> I'll keep it to the cover letter then
>>>>
>>>>> The device has an issue where SPI 8 (the bus which the touchscreen is
>>>>> connected to) is not working properly right now, so
>>>>> spi-gpio is used instead.
>>>>
>>>> Some Samsung devices used to use spi/i2c-gpio intentionally, also
>>>> on downstream. I'm assuming this isn't the case for r0q.
>>> It isn't, the device uses fts2ba61y on the spi8 bus - I hosted the
>>> DT at https://github.com/ghatt-o/ss_experiments/blob/main/r0q.dts if you
>>> want to take a look.
>>>>
>>>> Did you enable gpi_dma1, qupv3_id_1 before spi8, when testing
>>> The driver probes, but it fails to recognize the touchscreen device
>>
>> Could you post a complete dmesg and the precise DT diff you used?
> https://pastebin.com/QkYa8nMp (android dmesg) mainline dmesg doesn't have

The link has expired 🙁

> any relevant information other than spi/i2c probing, however, I've noticed
> both on deviceinfohw.ru and the dmesg that for some reason the touchscreen
> is on spi0.0 (even though DT says 8) and I'm not sure if that means it's on SPI
> but on a bugged out bus or if it's really just spi on bus 0

It means that it's on the SPI bus that probed first (index 0) 

[...]

> +&spi8 {
> +       spi-max-frequency = <5000000>;
> +
> +       touchscreen@0 {
> +               compatible = "st,fts2ba61y";
> +               reg = <0>;
> +
> +               vdd-supply = <&vreg_l8c_1p8>;
> +               avdd-supply = <&vreg_l11c_3p0>;
> +
> +               interrupt-parent = <&tlmm>;
> +               interrupts = <46 IRQ_TYPE_LEVEL_LOW>;
> +
> +               pinctrl-names = "default", "sleep";
> +               pinctrl-0 = <&tsp_int_active>;
> +               pinctrl-1 = <&tsp_int_sleep>;
> +
> +               status = "okay";
> +       };
> +
> +
> +       status = "okay";
> +};

this won't compile ^

Konrad


