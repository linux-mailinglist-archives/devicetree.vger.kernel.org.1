Return-Path: <devicetree+bounces-154023-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D803A4E85B
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 18:20:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 661D942597B
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 17:13:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97382299B54;
	Tue,  4 Mar 2025 16:50:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LnKSGZ6W"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 129172512F8
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 16:50:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741107057; cv=none; b=ThnM89MPZSQXeFstuTDwhEQ7KN3hXDwi6OMiR3cp5y59tZS843RLw4Y5K2fahLjP/BYADuU1VRDVJY+avIvVKoyQAhEu63YmrT4Ydonw2ZvrWlJAmV0UxmyJ7LhzCqPgWkMxiJVxDfgoGeVQodJUXn3hm3mBQcbr5ZqYqzFSpLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741107057; c=relaxed/simple;
	bh=4RFYlaNdV3WhrdxEC9D3J9GzPcuRDBI0yIBQjLj03KA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cF2Cqtg8Syx0SMu32W4ww2SZloCzycTU/elr0CNuwYEefdes+e6EHEtj9tkqiSi0+TxuNnCzgsAVmLSRd0m4RTPgP83wxav7jto9ZzfPYJQaCaKFnmlx0WbfC3BCSbZAEDXtJ44RqP9JN8zj6xNUy1BARoIWUyE6H2B6qA5rDlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LnKSGZ6W; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 524ACQtX005995
	for <devicetree@vger.kernel.org>; Tue, 4 Mar 2025 16:50:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JnwyaU3JlcPGpgvlX3B6lDWi5ibaBzsG39kIqRDdvi0=; b=LnKSGZ6WzA3Gdaz0
	fO5lFxEYzA4ZiHf6o6/ZX4sTjgFtKh1jtt8S2dnh3/tO9f//1y/YoUyVLhd+U1rK
	VRHX21qiPh00UCqlHaS9ll7NJFMMWHalCOmDBSwG1vvL3ZXPBYsiJNqhwcysHo17
	2LRXBgewpdzGOTPG1A5jDp+5S26lqpKs6p+oeqpG1dAEEzZ74bxSprOxV1cjqBhP
	EM2+PbrS4xWzkOfOvU2JjaMIVxK95ZmlEA/6/TpwDCz3vt/mPnxr3kP1rEwvoY3P
	5TEL7t24JgVkoafWwmIMKqlAtbbQ/oBTSGthzIzJdPx1EHozy2kfVfdrUrti2Ftd
	WHnSwg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 455p6tjh41-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 16:50:55 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6e89698ae63so7504536d6.3
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 08:50:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741107054; x=1741711854;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JnwyaU3JlcPGpgvlX3B6lDWi5ibaBzsG39kIqRDdvi0=;
        b=QIHqb9BDEY8aFk9d0DotYlQRMYVLOFdrGEdeNzckEoceKhNfgJZumK90GAu05HB6y6
         NAIzyltb4DSWaDePPczRL5xnOBejX5i/WAs96xvQWoJ5u1/fdIlpU/TaY0yxcbEa6wZa
         usKaxLDI7PTSUGwPTqlnPIzll4XFr+mMkSo22xoQk1b/Xi6tgWzHV3ZVB6tlgRqvUpjA
         kdU3u6kLGQsFg/k6Zvb0RkTaU9PrXoT0S12ZUViFFi75+x/WwuBxBfWmqpt3LYNMW/k6
         bXgzsOUuF2tzCDGfgRZFLdJwHK2q0+kfrotNgbfibJcAyxBTZRADdYAWKgVV5GpchhRB
         Rp7w==
X-Forwarded-Encrypted: i=1; AJvYcCUU2/0rfTzWpTypSfbJua+0Ww31YK+18x2ICdfIzwwNhP2fsC27OUfcW9udeMnVLUN/7iENS1Ph+jTR@vger.kernel.org
X-Gm-Message-State: AOJu0YwJ9G358mOppgZHuCQmlSKMXXwA8mRV+oi7mrGD5vBh4mSLrTXJ
	SChDSI9+2hf1I+tx+s7ORD/VvQxvEZeFij7rkKdLyOQ/vdl7Tdye9HMRzKh/BRiV7LhnfmBd/Ny
	w5eP4uTqDk/eifhSLwSIyN3vWUgcu45IeBvvZjKdDQdk45YVXDjrKdUa0AQVm
X-Gm-Gg: ASbGncvs+Tj3bJlYY6AsGY7Buao9lWbbcezhIG3rULO+LDzIFYn84lOvmiEnrdw2wp6
	h39TxB7MwCOBkwc7lSAjgjG84wshKetmunha8Qk6aZ2EfUdvOxH9eBd/zm+L9qgjiu23GdMDfpV
	NRc9hhxxnUUxv2yx0lZGvWd44FdZwrjPz45AZ0QzrDW+NWmKtBXv/xXlh7AhdIyv5g6XVaszOwq
	nLKosSe48V2AgLa8ULn1dL+YOq4g0PrtSjBD7pfp3Iq4At8IlBJKPZgEh451FMYM5iq1vE2TSEs
	GhtTYwQpwfXSUUqdIBnw4XpfZoFic+WF3Fljelq5eWNS4L21LM5kE+rMptYyKq+e52YTAg==
X-Received: by 2002:a05:6214:2249:b0:6e6:60f6:56db with SMTP id 6a1803df08f44-6e8dc2274b3mr15831326d6.6.1741107054347;
        Tue, 04 Mar 2025 08:50:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFf87lGftwctD13xLBr9ieIfLbY5PRnLIDpwQlrO1FKZ7RBee9kzNRBgBFxtoKck0poA3iYWQ==
X-Received: by 2002:a05:6214:2249:b0:6e6:60f6:56db with SMTP id 6a1803df08f44-6e8dc2274b3mr15831146d6.6.1741107053902;
        Tue, 04 Mar 2025 08:50:53 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac202dff7d7sm56462966b.169.2025.03.04.08.50.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Mar 2025 08:50:53 -0800 (PST)
Message-ID: <04b2df01-82c6-45af-a4bd-b899b404ccce@oss.qualcomm.com>
Date: Tue, 4 Mar 2025 17:50:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/8] arm64: dts: qcom: sc8280xp: Add Venus
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
        Vikash Garodia <quic_vgarodia@quicinc.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Johan Hovold <johan+linaro@kernel.org>
References: <20250304-b4-linux-media-comitters-sc8280xp-venus-v1-0-279c7ea55493@linaro.org>
 <20250304-b4-linux-media-comitters-sc8280xp-venus-v1-7-279c7ea55493@linaro.org>
 <77475c23-c173-4512-b257-d7b01fa2054d@kernel.org>
 <d4d658a3-e276-4e0f-ae71-5efd077e8a12@oss.qualcomm.com>
 <10ab5c5a-68c5-4f5c-9484-a5a8fc420ad3@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <10ab5c5a-68c5-4f5c-9484-a5a8fc420ad3@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=HZbuTjE8 c=1 sm=1 tr=0 ts=67c72f6f cx=c_pps a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=KU1-Q2Yg5eEZC9oVEj4A:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: SR8iGOk84EpQzK29my1CO87DDE1Coiuq
X-Proofpoint-ORIG-GUID: SR8iGOk84EpQzK29my1CO87DDE1Coiuq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-04_07,2025-03-03_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 adultscore=0 mlxscore=0 spamscore=0 clxscore=1015 phishscore=0 bulkscore=0
 priorityscore=1501 impostorscore=0 suspectscore=0 malwarescore=0
 mlxlogscore=762 classifier=spam authscore=0 adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2502100000 definitions=main-2503040134

On 4.03.2025 5:49 PM, Bryan O'Donoghue wrote:
> On 04/03/2025 16:41, Konrad Dybcio wrote:
>> On 4.03.2025 3:02 PM, Krzysztof Kozlowski wrote:
>>> On 04/03/2025 14:07, Bryan O'Donoghue wrote:
>>>> From: Konrad Dybcio <konradybcio@kernel.org>
>>>>
>>>> Add the required nodes to enable Venus on sc8280xp.
>>>>
>>>> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>>>
>>>
>>> SoB and From do not match.
>>
>> .mailmap breaks this
>>
>> I previously worked around this by kicking the relevant entries from the
>> file, but that in turn broke base-commit in the cover letter
>>
>> Konrad
> 
> OK with you if I switch your email to kernel.org here ?

I personally don't mind as I'm still the same person, not sure if
Linaro will be a fan of removing their name from the author field
though

Konrad

