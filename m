Return-Path: <devicetree+bounces-141066-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F430A1D4DD
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 11:54:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B50711885B2D
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 10:54:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07B871FDE33;
	Mon, 27 Jan 2025 10:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iPkEyI3a"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ECAE1FCD13
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 10:54:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737975261; cv=none; b=WEln8+oQIWv9iOR7szBBbpyd8F6OuIf9MObL++cy3uaRL8DmCEg1I7ta0lsz52QR2rlOgrEhh2kcOYY+4+dJXzVFQASVFxx+9SXoxidwTxqXH5N3AiXgBogqeKQqzEMadQJjvtlWtDWhygmnUp0yjkM1IxdQu/W/wlWNTGdKFD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737975261; c=relaxed/simple;
	bh=eoUjWMI2xXVc1bCu26t67OLjDxGsCRPjEglWJrKmVa0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dkyYfoYEbmxpWsaiE+16gtJ87XBnqZ674AVZyoqbL+bki1ocitV9oUkPHzrYo7Gvm5xxPOdopsoSAu3Aw8v4eI/n/yotfSfjppLUQ973JKLxJueERLdOknHlULJr7x9ZyeSdR49+d6q0jYEPZGCnnso0+KvS0I1kBmvtUdera1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iPkEyI3a; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50R6KZn2031836
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 10:54:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	G9HKj4wDiL7xDBm3wgQ+V7mP8yHsPldSV25Xyv02u98=; b=iPkEyI3aE2F0BFtG
	MfR8SklglgAlcvxJ0eYsMXFhHnPa1weS+jlRkzpJBOU4CKAibosWMlS1UrgmwzhM
	RSfax7RlAkGhVs+VJi1yT3ABIkNElI5cMXrg2MkeOf1ayKaE+P5Sz+GX72fEycWC
	myC1mcT0Gx6LeKlG0MiaA+ERl0kPegRpLAODz110nwMCEzJ67UmnUiCfji9Tw63C
	vNUM2sl9CpXRtTNXs+0nfdp2osdqbQB48QhPDOeM0u3PlLeiq3sXHDw7Bb9lEPcS
	a/dANSRyfRYvoeRedN7jyKKVg6F/Brmp1oCRad48s3LJzBEG/K6aL9D2SsAI6x+u
	utetXw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44e4su0gh3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 10:54:20 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-467975f1b53so13049181cf.3
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 02:54:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737975258; x=1738580058;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G9HKj4wDiL7xDBm3wgQ+V7mP8yHsPldSV25Xyv02u98=;
        b=urjwymKEJjGgg2MAQwch8A+NQbws9HzjktI7A6d8nSxcRAStR/M6QqBVuLslIHGrGx
         nAr1OUPvdz1A3e14g/rV0ZruL9ydVsRo3doA/tDjbgzNErbkkNLdh6c0/4pilFzAb7pB
         GYAbbcO4pCgRqmSpLHU3qLQr1/lvk40KeiUX2hUT6vbzkg0wWrvw00wgrX/r7zdohVMR
         ERq3vrRlQpqCQ/GlDkrfW2wFJ3Clkzm3lxP6Zf3un7Ux3o+OG/R5+H+rMsKdyPKws9Gb
         0XTSr1SBoBP2tv0wZ32AW3B5BkC0nfZYiK9jNU2qrxlijrKRLMGANknn99qvnaxLQPBs
         J0tQ==
X-Forwarded-Encrypted: i=1; AJvYcCWqcAdCjbKXTVlywJ0fbzQjQ7yMzm37RG4GIqDh0vKIKcCyKxR+tIzhDPd5ib6nV6Y79wkEj9NPWhEJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxsJMKQ4A45eeLDZHpTyZ0CbcXWEjXAxEHgb855nQqnQ0Zjm53h
	qUyEigj6ZV5t4PjN3jO46Z1bBVw7lRFxml/dtTieUwgrhnqvqpQg2q9otQgG5YTh3nfDcQrifsn
	GlFoHAFnluhFqkOB1iVQQFg95Q6XBPLcdgiiS/C1L0yK4eWaQ8Yl+POLWK2sa
X-Gm-Gg: ASbGncsasVfhpSgkYjq21SQoupPtWdmeflka/ofVzkeQJ6/ztq8n4GMNIq732DQDhxs
	Fl5Y8ZUT2zK/Ri7eM9q4URdHAdpA9UZs8BPYL99c+/Vu7cfGAJPOiG4k5h/rhmBmBOCSdkldmiR
	jo00D30wZQ+6fD9Ekz0SQAPrV+Aqvsfuy6OpU30wZ37orduITMvubvS5nKdpUoEKFRfS+4yKxda
	AF++mxd7VLFwOXoXv3GvgZrgCOxtJ0DrRk9YttoPRvKrZqP6ysgOxinaGgnKRMghLDT9YZYXoq2
	5myb12HyUpwAOd4J3+TG+8/eBRTX1p80LBFrv4PuKIOWX+7220qcF+8668I=
X-Received: by 2002:a05:620a:4252:b0:7b6:d252:b4e8 with SMTP id af79cd13be357-7be6320aecbmr2022597485a.7.1737975258622;
        Mon, 27 Jan 2025 02:54:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHLegkOXqfbmbDmOnvnddwfCzVxW7OtwuWsxf6by4w3Z0CSPVtQurx3VlxhCgCSewn5FxVG2Q==
X-Received: by 2002:a05:620a:4252:b0:7b6:d252:b4e8 with SMTP id af79cd13be357-7be6320aecbmr2022595585a.7.1737975258230;
        Mon, 27 Jan 2025 02:54:18 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab675e64dc9sm552735366b.45.2025.01.27.02.54.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2025 02:54:17 -0800 (PST)
Message-ID: <817ae72c-babc-4d87-b935-010b1651d301@oss.qualcomm.com>
Date: Mon, 27 Jan 2025 11:54:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: Add cpu scaling clock node
To: Taniya Das <quic_tdas@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_manafm@quicinc.com
References: <20241108-qcs615-mm-dt-nodes-v1-0-b2669cac0624@quicinc.com>
 <20241108-qcs615-mm-dt-nodes-v1-2-b2669cac0624@quicinc.com>
 <cgg3s6f555eb4jl5segz7irwx2kkza7w6zucfyo7myrbjhng3v@2qmyrobzakhd>
 <71635b71-71e4-4c17-add1-bf41ce770632@quicinc.com>
 <scfoxmstfqgvqmxovb7h5gulh6bjhgexs6yxe2n75izc7sawby@djphyr2ilei3>
 <97f5f5b1-b4f9-4d0d-88fb-4c7a0f1c26ac@quicinc.com>
 <CAA8EJppOHw5u_dMW=uXgyp3NSJmv9fwNvEL63NCqOpXUKPz5vA@mail.gmail.com>
 <608afa23-ca4e-48dd-b929-4466560a7e61@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <608afa23-ca4e-48dd-b929-4466560a7e61@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: fSricHoObJS35RRar7oQShYe5BMj3xOn
X-Proofpoint-GUID: fSricHoObJS35RRar7oQShYe5BMj3xOn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-27_04,2025-01-27_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxlogscore=999
 clxscore=1015 suspectscore=0 impostorscore=0 malwarescore=0 mlxscore=0
 lowpriorityscore=0 priorityscore=1501 spamscore=0 phishscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501270087

On 20.01.2025 11:57 AM, Taniya Das wrote:
> 
> 
> On 1/20/2025 4:06 PM, Dmitry Baryshkov wrote:
>> On Mon, 20 Jan 2025 at 12:34, Taniya Das <quic_tdas@quicinc.com> wrote:
>>>
>>>
>>>
>>> On 1/20/2025 2:16 PM, Dmitry Baryshkov wrote:
>>>>>> This doesn't follow the bindings, does it?
>>>>> I will add and re-use the closest target compatible.
>>>>>
>>>>>>> +          reg = <0 0x18323000 0 0x1400>,
>>>>>>> +                <0 0x18325800 0 0x1400>;
>>>>>>> +          reg-names = "freq-domain0", "freq-domain1";
>>>>>>> +
>>>>>>> +          clocks = <&rpmhcc RPMH_CXO_CLK>, <&gcc GPLL0>;
>>>>>>> +          clock-names = "xo", "alternate";
>>>>>> Are the DCVSH interrupts?
>>>>>>
>>>>> This target does not have DCVSH interrupts directly connected to the
>>>>> CPUFREQ-HW.
>>>> So, does it require a separate LMH driver, like the one used for sdm845?
>>>
>>> I will check how it is handled on QCS615 as it is closer to SC7180 and I
>>> didn't see any LMH handling there as well.
>>
>> At least sm6150-thermal.dtsi declares two LMH blocks.
> 
> QCS615 also has 2 LMH blocks, but the handling of interrupts will be done from the LMH driver, integration with CPUFREQ-HW driver is still under evaluation.

Currently platforms from the 8150 era, using drivers/thermal/qcom/lmh.c
expose the LMH device as an irqchip and pass the per-instance IRQ it
provides to cpufreq, instead of the latter directly consuming a GIC irq

Konrad

