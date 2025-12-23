Return-Path: <devicetree+bounces-249233-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F6ECDA19E
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 18:27:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B4F89302C4F8
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 17:27:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3B823446C5;
	Tue, 23 Dec 2025 17:27:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DpNZp3Y8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="INC2sUpI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5277D301477
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 17:27:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766510833; cv=none; b=Kg/9K7WMNylGXr91jHfBptapD0zFLSY7EuI+xdNHlXl7eELOyfqnUgC/iaH/IV1kpAcAgzsnWQiIxQeBgKaEaYrUuqA6PuWQTLXwrAeivfxS5vs0/qJDIJcUc0jrvOZs6tTiGWRkmax3f2//xSdc8U/4FF3CNegocy6nH89Lu+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766510833; c=relaxed/simple;
	bh=YzwHk1h5PQT35HsiDzIXWC2c4Nyg1mzMBWcD/+5qN1I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QyjeBDZlvcVYzuZz7zS1mmjUR/hMakpNbfS6wSJ33ndzD0fytGyrbFMp36nmxHw14JXvesO0/pzxWdV2w6JDVTH3z/0Z8lTAYDTgfhw68cVLbcDM5pzlEvRq7waNEbsCKh0CF+ZTPmW2BM7J8oPtQOhIeHUKG6A7Hwf/rzCO6WY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DpNZp3Y8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=INC2sUpI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNAUmCE1356371
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 17:27:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dOT7EwfbfDX7NAU7Z9zg/Z+3hTQvq0pbEfhiEz+zL6U=; b=DpNZp3Y8aNW2XYNG
	gHB9e7wg/uz+7dMZMFA41p/cigVooI0UwobkjxerlYks8Mb0uV6gOOlVHrBLNRgs
	fb37hc4NRQu+oUxPA+EixlxJWHXx5dd0QvvRN/du4C4CLkgWRwKuqHspI0GmwvZh
	W2GWDoMgdZpQG/WsYBnAkqjZqLSvZLU6QTGKLqubdsT7rx2McsoXazKmjAqAoped
	t30r262SGql88rtk//exbJlAqptjePdSUgkz6F+F+WK1I97XzE8lOuSf7pgbY6X+
	jSnAJDku2ZxlKZTmUdv8banB3oYU3/+WYl0UtGl7W1iK7i39QonZnU123FoNQk52
	+aDIrw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b78xc424b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 17:27:11 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4f34c24e2cbso16547241cf.3
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 09:27:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766510830; x=1767115630; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dOT7EwfbfDX7NAU7Z9zg/Z+3hTQvq0pbEfhiEz+zL6U=;
        b=INC2sUpIVmN8DqdcqfVNo6cA7pE14E3cAMyVEcsP+unMuPIuV2o65ETzO/VhKMqLCQ
         Z2ZyqRzuYkdfUrUiX0OG4mCUnDuy7SLRi/ELLlwRp4UkB0PYghtNC3xzT0x6Qt7Oj8V7
         DjXUDTy9jRgpUbCiJx7ufN0jcTIOeqgqBH44ZDPYQCtG3BbEQrC+MotCM2g+kPsPgMu/
         5H0xj8+lWAxSY08vvtbz4OVFlIJ98ioN/B+gyg1hwwqbFUbBl0xVViNatMzQYRXhR9Mo
         1WGi/OZFdVj7EOttYwUVHqV7GToOQCQ6b9/bYC5cRI09MaAbhnDrmUYcpAwbkFMSudsT
         IdPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766510830; x=1767115630;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dOT7EwfbfDX7NAU7Z9zg/Z+3hTQvq0pbEfhiEz+zL6U=;
        b=ZAMz1MOKh+RhXs7n04DOjBJpu9LZl6hTzBiVtb2g7aNfVawYEocefNRT/ECO6jDde7
         40yDVuD6Bb63JHVg/NTe9L3x0JPzRmvFnPSQ2MSnsyOmqxr15rJrr+exhS5AVCBa9JIK
         PzF+16vtLWkK1MuylaoIT5mRnPt3B0i3Ypej0CJIX/NR1vt5YZRNDgBJgaNPdJx9XcEQ
         fi+623UNqkqBPAHm1SX5+zzvL6dsBYjfaPRu+NY4NDNgnpP0fqv/ZlQlc36nSNk2AIvA
         0aImziuggmGfpGNtCZDep3Lmd4tr0vuzXBrOCvoKzNSftx9EDNKY4szX7Or4lXoY3vns
         hnPA==
X-Forwarded-Encrypted: i=1; AJvYcCXmNgDkYpms7/4GUAy3aTpwB3NQLpADQRoMUIn3NG9hxEJgVRdEMPbyxZpmLUTtslodLj2NQamq2MOi@vger.kernel.org
X-Gm-Message-State: AOJu0YwAbQzjI57B6vbfqbQzO4fw0YnYaSdUsLyABJJNdqBU0KHgIQ31
	eJHjt8ylv6t6E7ZUtjFOMybBAHG7AUM4eeooeE7UUEMAzHjv+F6TBCiuiDdraUdwaHVMV3YAzgz
	L1BGBf1xCWt7s4Bj9YhwXiuIWG79eMewvAIWOOjmGjXX/I/qCcalBBXC5Uh5KnDZl
X-Gm-Gg: AY/fxX4PZRVcyyVw0WwRUO776ljL96LyvpLMNRFxiiogt0diHGBTLqu8c8dSVUm4dWY
	5LyB/tmzyy+8IUwIFwsrzwaIXhzFJSzlHu9jokYYukCFcRcqgxTXY0GqmcxxMFCXUqgUmvLSFG9
	yixpAUVdZpjlLlpwrm7N0wlJhCIYXTDEWZp+xYcg1ygU/9A12rZLk9zRQMGKQrDHxssMXFzT7Ib
	kUMQ/t9W9joJiV2xiRCTwkfpiYF6j0KYFhawmcUK0nipoM2gwA0vwNVt0fLKpsiUYTZwPcJFcGn
	PsvjYaeg6vgPOxvyn7jY1KyKo8Pow/9qDsxkpKFMb0bHnbayCD+9J019K2wBRyT7wFgXX/jTup6
	zHHt8yyB7Iyy8Lb1JiFQvtPPblvW2f/ZloIDXKsQX1RJe0Pn7z42keFVl2hyNN0Dapg==
X-Received: by 2002:a05:622a:1982:b0:4ee:1718:dec8 with SMTP id d75a77b69052e-4f4abcee273mr168916411cf.3.1766510830335;
        Tue, 23 Dec 2025 09:27:10 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF099PwvaGY3E0+s71xr70p+4bCphaLo3cfBs0XSKhlksU9Qb8McMwrWStBk01hfygwF1tOcg==
X-Received: by 2002:a05:622a:1982:b0:4ee:1718:dec8 with SMTP id d75a77b69052e-4f4abcee273mr168916021cf.3.1766510829635;
        Tue, 23 Dec 2025 09:27:09 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b916b82e7sm15331785a12.35.2025.12.23.09.27.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 09:27:08 -0800 (PST)
Message-ID: <0593cc2e-0114-404f-929a-0860d60afefb@oss.qualcomm.com>
Date: Tue, 23 Dec 2025 18:27:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/4] Initial patch set for PURWA-IOT-EVK
To: Yijie Yang <yijie.yang@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20251222-purwa-v1-0-14ab9316e5ff@oss.qualcomm.com>
 <dmdtwsdwl2bl7mn6j4d4xv76h6bo57van3ni4zt3iapq5bonsp@rxoqan4nahud>
 <d8642ba4-9a6f-4fb2-bd0c-419ead2630d3@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <d8642ba4-9a6f-4fb2-bd0c-419ead2630d3@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: ILH5Q4FMG4jUqZ342OeMt5Sn56HLihV1
X-Proofpoint-ORIG-GUID: ILH5Q4FMG4jUqZ342OeMt5Sn56HLihV1
X-Authority-Analysis: v=2.4 cv=cuKWUl4i c=1 sm=1 tr=0 ts=694ad0ef cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Lmo0ds7W6JHZdixPqlIA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDE0NCBTYWx0ZWRfX5SN82y0JHlMP
 s/jOKY4yulFDPotKGuTwAdO5FHVUbZj0r4HKm/wPPSPtCtw8i5YEczvXiu0Nd5EggPiAfPoWS8p
 EdF8UIAjK0yHRqxeER8r0b5TIYrZp9pUnl+SSQDvum8Lc+A/rOg/8ZoGnHoyz3uOpYY/6R8ViX2
 zJ0sRf1awL57xcifN6uzFcUNDExuVN5fO5aN6hpRx/33uqYEj/G+iQC558h+m4jHbPPgSemmqJx
 CJzZnv22ORLQhM+9BXrbLJeqgldCQYMcg4lmm32wzJ1be/NJDlGehxqxVYKXL0Z8A0eSgvmmm9X
 DgafI0jfx5P5shLn+aPUIr9yhHbxndxhnJmOW+IasJFV1I1R/bwIicsnPJ606GCHJy0/Hpv7dy/
 I1v1Ll59XwbjQxR6EMHC17AkkHj0I982Hw+PjOSh2xZJz5oIROw5YVjgXGT6P9dzF1kET6Ptjga
 JcKyk0qSEO55MpEezIg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_04,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 spamscore=0 lowpriorityscore=0 adultscore=0
 phishscore=0 clxscore=1015 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230144

On 12/23/25 3:12 AM, Yijie Yang wrote:
> 
> 
> On 12/22/2025 5:18 PM, Dmitry Baryshkov wrote:
>> On Mon, Dec 22, 2025 at 02:03:25PM +0800, YijieYang wrote:
>>> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>>
>>> Introduce the device tree, DT bindings, and driver modifications required
>>> to bring up the PURWA-IOT-EVK evaluation board.
>>>
>>> Purwa and Hamoa are IoT variants of x1p42100 and x1e80100, both based on
>>> the IQ-X SoC series. Consequently, the two common files in this series are
>>> prefixed with 'iq-x-iot' to reflect this relationship.
>>>
>>> PURWA-IOT-EVK shares almost the same hardware design with HAMOA-IOT-EVK,
>>> except for differences in the BOM. As a result, most of the DTS can be
>>> shared between them.
>>>
>>> The changes focus on two key hardware components: the PURWA-IOT-SOM and
>>> the PURWA-IOT-EVK carrier board.
>>>
>>> Hardware delta between Hamoa and Purwa:
>>> - Display: Purwa’s display uses a different number of clocks, and its
>>>    frequency differs from Hamoa.
>>> - GPU: Purwa requires a separate firmware compared to Hamoa.
>>
>> Is it just a separate firmware, or does it use a different _GPU_?
> 
> It uses a different GPU.

I think it would be useful to call this paragraph "Hardware delta between
Hamoa-IoT-SoM/EVK and Purwa-IoT-whatever - because now Dmitry is asking
about differences between Hamoa-the-SoC and Purwa-the-SoC which we
expressed in purwa.dtsi

Konrad

> 
>>
>>> - USB0: Purwa uses a PS8833 retimer, while Hamoa uses an FSUSB42 as the
>>>    SBU switch.
>>>
>>
> 

