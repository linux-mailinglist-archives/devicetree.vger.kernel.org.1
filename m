Return-Path: <devicetree+bounces-234868-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8838DC31A2E
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 15:53:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C1C79349E58
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 14:53:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0827A32ED52;
	Tue,  4 Nov 2025 14:53:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fQzm5Yks";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IEQyT2xd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F9B832E75A
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 14:53:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762268016; cv=none; b=Onue2wWU40HmvRL2WKZkM5N9I/n5mPq/xJcHyJCUcGP16OhRlRz9azc5bQLlAEYU1dk+jZtTFm6AeD32CeMkvolrIF7qy2L/2on26YWr2ZgUZOPoEz90kP/YdqoSDmxDab0DDbOQnytWPRoRnrzOrbxFuJuZIjDM3Oh4NujDZDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762268016; c=relaxed/simple;
	bh=cHB74vdMdM/PyE60x2eafaIirCM8GUdqD0rzzIoXHxU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=V0THQMMk9Augz5tcBiJ94S+HgYxQ0bH50MZ+eXVfv1zE2P1pXK0P9+v9gso9inisfz7eHN8IoyJW4YUXeuGQldUv0VewG8MwadHnfuP++8+JQKo98hYKghIbTqcKckKrv2gk2OPzJMz3YRTnjoMyTJk/eCpsZ0d0HhuMVdrsFgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fQzm5Yks; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IEQyT2xd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A4CgUU21912755
	for <devicetree@vger.kernel.org>; Tue, 4 Nov 2025 14:53:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cHB74vdMdM/PyE60x2eafaIirCM8GUdqD0rzzIoXHxU=; b=fQzm5YkssjMO5gmp
	vSJVG0C0vDf82X/6QzblspP/83xyP61oXVkHDvtZEspedwRNgP4Krj9FfMf7fjG7
	NnGBKLl5n0y5gSmwCkOgXZAbk5cDOsblnwgLFH0CPaWoMAMIra1XviIlbDYfIpgh
	nZL7QIclDrJp3FW6gulLOJ6lb9h6XspSoX9ZQZJ0IrtZEOpPKh3K5h1I8JT48S9V
	XnQLBnc+EdBgyVP88ElXJmgOjIJX7qELQ1D3CZD9PoEgzgDOpj+9CrNlEARnDj0Q
	qWQ+jQIm2P/SUz6SPeXEE17COvsiDmpY3MchiT2Tk2SzwNl21yEDgNYS0Ta/8pf9
	TdY7Vw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a70exk8u8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 14:53:34 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8a223d563a3so189900685a.3
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 06:53:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762268013; x=1762872813; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cHB74vdMdM/PyE60x2eafaIirCM8GUdqD0rzzIoXHxU=;
        b=IEQyT2xdNH/79CoEYPwH1r7aTxJ5+P7xuiJFA8erUpdS7Jot2Pd6P1ZmHlNEZuObKV
         lBwYC0LmTuAJI3MSXOzvmneqCS0651VX7c9SuL9wJs0tYAWjF1IW6DQNRf2dgYgBAfWx
         4mqBqGM6C3NO/AWR59qhG+lfZtgh7JwvGfSwpNrKNIhT3CuCtcGHOM4KxmtO0qJ9REcG
         LRV5Szlw7dkSa3nB1pTxEwgE0F3jzIYpPx0H7pJEt2xw2SRIhE6RhGFytkTu0gWbHFAU
         WRX1/D1Rs22GcFb+lky6IGuMWx21PKqcxvPVYD1xNeg/tXm6FtGCTqxbTN3XbrStPwlG
         MURQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762268013; x=1762872813;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cHB74vdMdM/PyE60x2eafaIirCM8GUdqD0rzzIoXHxU=;
        b=EFQKsgdnu373XOBv22FmextlAFHU9jwbImYx04UZXWxwRTQN8aHssYXvNHXhbNH6kb
         HK1FQd5M/krTY9WcudRaSkFT5jtfIXpG24Rq5KsOZrXGi+/TGlJclwSSvTaDm/ST19fz
         NpUrbHOyVfu2+K+WZVVe3TeGJtFuvHBha9u+0oce8GpUrU9hKNwIR0unqX4oTLdPNZIB
         Uy8t2m0ZmIzWGEZaQQaeg32Pp++WVwXQ/03XNsaHcLWTSVYEidjpLl8200d2Ulwa/ySP
         lNhHcefuSnXZYcEjfmwr4FQxxhW9IU/j8SjyYyLVGy7FjFPqn5s45a1DsCxDUFW3LFD6
         zjlg==
X-Forwarded-Encrypted: i=1; AJvYcCWiofoxpFfgti3fAmVSZXVTWu4SrGWnJgzLtJFAUznHAEpSIK+hiTrXfbUIJ40s9potGeEh0g5+cPo4@vger.kernel.org
X-Gm-Message-State: AOJu0YwGic9z7cyZL/JrqejDkU/ApSkfDwgvQkn1pUpW1N8ubpaVNogS
	Qh8Bzln8zaFuRImpGQ8z8gPstRUo6SHHEforXLBOPriZGhzYX/xHNs5dBJHAnMOrq4CqnoB42fL
	2D/L32ilJXvCqwS/U3HdRfjwf5pVx0jQ+vbneBYGltA2QflKmatPFSB+Sm4aKtjOw
X-Gm-Gg: ASbGnctnV6+DlfRYQSG84XwPZ+vfnfRqHFeHPk+e1tI51+2khM/fJbCRQ6zTTMua/nS
	CasQ7U4AkH7eJdELYkvp8GZwsGKn8e2nKlDNfz6lzHjW2NR9UcysBl0TrSRCfRDUpOI/7plJ8yZ
	VylvcMiQ2bbcUidmbDMwSlRK/YpEy36LSXTDmPRKqztVw0cwNKwKAQp3v+AhxmKhcQJMyyFea6f
	GOn/WTK5dlfLqi3ZJ9kg1T2wdoImtCKfUHWCpc7OvScL2bZFFrU601FFRmUxxaBBDYR9Q9o/f2L
	8q7EIMqqtIChOdI/RtE2ifJT7CS3CviBQPGPn30VQppKYGEX+zwgGIkU2Ijo7j3yLbo9brJymBX
	BNDoChfa8o1AO/hTdLzSM30oG35TAJ1KpiSzfemInLyrqu7vopZ8PPxV0
X-Received: by 2002:a05:620a:31c6:b0:8b2:1f8d:f11d with SMTP id af79cd13be357-8b21f8df1c5mr31645885a.2.1762268013399;
        Tue, 04 Nov 2025 06:53:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFjbaCJNTd4JCMzhcP2fE6bDyiUfjuyPQRBF0MYao4qLk7yxcTazmOZsoPR2sao5ZTs0uBycg==
X-Received: by 2002:a05:620a:31c6:b0:8b2:1f8d:f11d with SMTP id af79cd13be357-8b21f8df1c5mr31642385a.2.1762268012756;
        Tue, 04 Nov 2025 06:53:32 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b723fe3b899sm228701566b.66.2025.11.04.06.53.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Nov 2025 06:53:32 -0800 (PST)
Message-ID: <6ce3c769-f733-4e0f-a4f7-7b1b39ba3c3d@oss.qualcomm.com>
Date: Tue, 4 Nov 2025 15:53:30 +0100
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
 <8bd5486f-38a9-4104-8d09-234f642b45fe@oss.qualcomm.com>
 <CAMQHOheTkKC8NcRrPxKZdB_h0SJGNJVMd4NUD7TE4becPouWyQ@mail.gmail.com>
 <73d30994-3ec3-41bc-9b07-638d4173dfe6@oss.qualcomm.com>
 <7C2DF8E1-D84C-428C-B064-3D8CA16FEA29@gmail.com>
 <7e5f753d-a26d-40fb-9cde-ec17eff85c27@oss.qualcomm.com>
 <E9C95D16-18DB-4AE9-8C50-BE3481A25FB3@gmail.com>
 <a04742f3-8a1b-4d69-acd9-5d8dbd5a8886@oss.qualcomm.com>
 <CAMQHOhdmf5TvF3bA4QcTdBY+A2ao1_bDXPPya5aiOjHJ0yLqbQ@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAMQHOhdmf5TvF3bA4QcTdBY+A2ao1_bDXPPya5aiOjHJ0yLqbQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=APHuRV3Y c=1 sm=1 tr=0 ts=690a136e cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=NEAV23lmAAAA:8 a=fGO4tVQLAAAA:8 a=EUspDBNiAAAA:8
 a=WALcMRDYb64__XNgrWQA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: A4BZ96OO9Vi8KwyNRJjUONllUm6_Irg-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDEyNCBTYWx0ZWRfXz+2xj+z2qzW/
 Fc+O/27PdV8oCrjCVOIgApZJtJufM+1zvng/0XEvaaL6Mwpw9aPtAn3s8DMqvTqOcAsDQKTHym4
 utXRiS091OuqqQpQyvutanIhJSAGPjSXWBx5sRZJosKdKQrz7EgZ6Pyk62gg8xc7KDCQD/4v5Kq
 6U66a+wIKffugfdXHSg/6hihnAQkoNSUU9ikr3VNosImU1p8DfUljZfY/guq8k9pTFyf1DaVne1
 6PMUYZ4ETNFSjI5DXNLH3XMSwFS2CvvdZ/BFTGArBye3o5dw9lKdkyUavw2wfu6RXHg2pI1iv2t
 DFzbTASAjw8UufiGgwPoIIRFXlNUm6z3NWIRh0xAcGmU11LPscAcPXKWnIAz5mAXesdoP0QTsTj
 WxhPl3l0lEe7ZOAu3klYbxxpY7R1kg==
X-Proofpoint-ORIG-GUID: A4BZ96OO9Vi8KwyNRJjUONllUm6_Irg-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-04_01,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 impostorscore=0 priorityscore=1501 phishscore=0
 suspectscore=0 adultscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511040124

On 10/31/25 10:06 PM, Ghatto wrote:
> On Wed, Oct 29, 2025 at 6:50 AM Konrad Dybcio
> <konrad.dybcio@oss.qualcomm.com> wrote:
>>
>> On 10/27/25 7:32 PM, Eric Gonçalves wrote:
>>>
>>>
>>> On October 20, 2025 9:18:18 AM GMT-03:00, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com> wrote:
>>>> On 10/17/25 8:22 PM, Eric Gonçalves wrote:
>>>>>
>>>>>
>>>>> On October 17, 2025 5:20:43 AM GMT-03:00, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com> wrote:
>>>>>> On 10/16/25 10:08 PM, Ghatto wrote:
>>>>>>> On Thu, Oct 16, 2025 at 6:06 AM Konrad Dybcio
>>>>>>> <konrad.dybcio@oss.qualcomm.com> wrote:
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>> On 10/14/25 9:04 PM, Ghatto wrote:
>>>>>>>>> On Tue, Oct 14, 2025 at 11:18 AM Konrad Dybcio
>>>>>>>>> <konrad.dybcio@oss.qualcomm.com> wrote:
>>>>>>>>>>
>>>>>>>>>> On 10/14/25 5:10 PM, Ghatto wrote:
>>>>>>>>>>> On Tue, Oct 14, 2025 at 7:01 AM Konrad Dybcio
>>>>>>>>>>> <konrad.dybcio@oss.qualcomm.com> wrote:
>>>>>>>>>>>>
>>>>>>>>>>>> On 10/14/25 6:41 AM, Eric Gonçalves wrote:
>>>>>>>>>>>>> Enable the ST-Microelectronics FTS2BA61Y touchscreen. This patch
>>>>>>>>>>>>> depends on "Input: add support for the STM FTS2BA61Y touchscreen".
>>>>>>>>>>>>
>>>>>>>>>>>> The second sentence doesn't really make sense to be included in
>>>>>>>>>>>> the git log
>>>>>>>>>>> I'll keep it to the cover letter then
>>>>>>>>>>>>
>>>>>>>>>>>>> The device has an issue where SPI 8 (the bus which the touchscreen is
>>>>>>>>>>>>> connected to) is not working properly right now, so
>>>>>>>>>>>>> spi-gpio is used instead.
>>>>>>>>>>>>
>>>>>>>>>>>> Some Samsung devices used to use spi/i2c-gpio intentionally, also
>>>>>>>>>>>> on downstream. I'm assuming this isn't the case for r0q.
>>>>>>>>>>> It isn't, the device uses fts2ba61y on the spi8 bus - I hosted the
>>>>>>>>>>> DT at https://github.com/ghatt-o/ss_experiments/blob/main/r0q.dts if you
>>>>>>>>>>> want to take a look.
>>>>>>>>>>>>
>>>>>>>>>>>> Did you enable gpi_dma1, qupv3_id_1 before spi8, when testing
>>>>>>>>>>> The driver probes, but it fails to recognize the touchscreen device
>>>>>>>>>>
>>>>>>>>>> Could you post a complete dmesg and the precise DT diff you used?
>>>>>>>>> https://pastebin.com/QkYa8nMp (android dmesg) mainline dmesg doesn't have
>>>>>>>>
>>>>>>>> The link has expired 🙁
>>>>>>> https://pastebin.com/s4abJS9M shouldn't expire now!
>>>>>>
>>>>>> And yet it did!
>>>>>>
>>>>>> Feel free to just attach it to your message.. the list may bounce
>>>>>> it, but it will still reach the To/Cc recipients
>>>>> Attached the dmesg.txt file.
>>>>
>>>> I'm interested in what happens early when the SPI hosts are programmed,
>>>> whether there's any additional debug messages.
>>>>
>>>> If your log buffer is overrunning, you can add log_buf_len=8M to your
>>>> cmdline (which will make the buffer 8MiB long)
>>> Is it that big of a deal though? spi-gpio
>>> works just fine for touchscreen.
>>
>> It's like using CPU rendering even though your computer has a GPU in it..
> Yeah, but CPU rendering is slow, while the touchscreen
> on spi-gpio is just as fast as it is on Android.

Sure it works, but your battery would like to have a word with you..
>> Plus we don't expect the upstream driver to have such odd issues, so I'd
>> really like to get to the bottom of it
> I don't think the log buffer is overrunning, where can I find the SPI host logs?

It clearly is, since it doesn't start with 0.0000000

Konrad

