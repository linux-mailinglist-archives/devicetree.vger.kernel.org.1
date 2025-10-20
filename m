Return-Path: <devicetree+bounces-228839-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B31EEBF11D0
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 14:19:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 15AC34F3CF1
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 12:19:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 051B7319842;
	Mon, 20 Oct 2025 12:18:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ot25lxks"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D743303A27
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 12:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760962704; cv=none; b=OexOX83wz/+22TdMtTrHPoAyLhlZybOPVu3Raf1xTwGEtIhr4a2oI0l92srl/QaPbRDiZFM3X8S2ULNcAdnCOTKrKwuDSWuSF2za+CH5x/t0SvRZo0mmyB4fsgiQ4ZV+qpkMem/Xhhlo6eKLE/IqcTGtsGzHL/Ga1jjm5Vhrtnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760962704; c=relaxed/simple;
	bh=JQyBbrrNd0mm8U1Bo4j5gPqwKwaeQWPHs7T7FyQLS60=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=afjfvnW+Z+YrDrFkaeIOvzbCMtDUjToSNa/ntq79Ft1vR4oL49YemqS7ATtgkVysEIn4My2+cZVURWMqhnid5pbOWWzF4rtc5y86vFhUagOou8MB+eq2z/NZf7PWNgif9bTXqhbQ33VF8i3RvV2jtnUuHq2GinnaWMxRt9JVquw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ot25lxks; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59KBCRao022317
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 12:18:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cE7Dyq75Q/xcBqg7SFVSmiEHpS5H5EqL1ZTAD9WNYfQ=; b=ot25lxksyqYSoG5H
	IVDHlTFkozwKx1htJCf1Qrp1HoUg6l3P26UiOPzNbTor3HE5Dd/b/J+TpTyudrvh
	+/1x0njZ7IOk1Bg3En8PbZ/1UwBD0pDx4sm06VQwRkszcDlxUiLu0O8CCbBiNDlz
	VAJQ3seCVre3MbgFfPEQnHllE6YdW4hZGLFPVFQ+xG4nrKWcLoBRnG4LdAfCssVf
	xuR5Lx7VFEAbUMS6OjLcvSvDGFraNZxqSEJBgtLhV3qGkeXALMMMcNzPEQpjsBH0
	IVaENuL6P1KiTKbU8u01+I4YoBcFHUibCxm0U9VyZt13+tZM6dLhXjtJaoIbFV6O
	nWkXzg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v2gdvq9h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 12:18:22 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-87bb67409e1so15852796d6.0
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 05:18:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760962701; x=1761567501;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cE7Dyq75Q/xcBqg7SFVSmiEHpS5H5EqL1ZTAD9WNYfQ=;
        b=relJAyB9C8CNgOeyqkyllofaQiim28BKvv3SZ2HVoOEd4dbpEL1gAzc7WhoAwKEhzX
         J5PUNteCMA8Jyi4KZNOf+MaLqGLK8VifFNL0uZZezosF7Qu2sxtVUz+tMxtEn0v6vdov
         6oNpjyqmnUxCX03DmqUzpCu+VSYv19Vsb1dmw8a7LxrW12pO7Y9VsIWelWMUCjQQZPyr
         EPGEBDLCm/ML9ODy+mmDu8jmIJkvkUVlihD78xVAe+Qk2H4MCqDGfwGs4S7RkmWHeNC2
         RCM4SEp4rwtG8+G4CAIqnT11HDq49pFrmTs1X2ubiyasYSH9dPYB28Hn8V0ZPr8veyNU
         jbLg==
X-Forwarded-Encrypted: i=1; AJvYcCWBB8UnZOvmxJ4+AmUgk5oz9O3drWmv7XaXxiMveQsViBG7BnG3D6etH21rrI2lt7ADwo17Ukm0xcSZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2Ti2LFs+17C29wNK31s03SP61q3fVnUVBxciO9Gh8jbBwwVLY
	VFMQjPq1FIVtDUSoKbzvRpk7FkoPxLQmXgq2WlLLGz75hMTyN6cfYOdsBczI9NaTP1Ne/QEYiSS
	DXirsCJhONCED5gFIqWvB2Upneq8zMnBhV5iLBpN39++ZHEE4dj7FWFfN//mnxifi
X-Gm-Gg: ASbGncuApAkWY9ylQqH4N5prkQvA5ozz+WzxRxeF/RzgehTM4CNZGXRXGkeF5WTXNWi
	dN6M1H4ifnq3LQsAsGZfbcxi+aYv2R68livZp/m63FvHdA1cv1raRfSfSec6RY2UYf6Q6I/7wyP
	PMSlC4AME+7wGV43nJQmIkaWUGPDIt4T9gitW8ponhyDXn5hNxtbvqTSqV+Y+0sfYuCEnJbP+4A
	SaSGZzhPWRuOyZBi1hJNRtGw0CNvcwfAjlswP5Uo1+BB0BWxjjOpmQG81QG0PAme1GtQoTrLxvQ
	EVYZn9uvvHKli1wj/JyspSIpBn+RwNbwOJMnToXtEXVfiMciLtWzzE9o6jfxWgDMSBXrrAHW34a
	kUCZcuph+eFJOQ2J7ZNu/yx/Sau4qtA2WCN7tIeezpC2BsAFkMfF1iq8H
X-Received: by 2002:a05:622a:164c:b0:4d0:3985:e425 with SMTP id d75a77b69052e-4e89d30e815mr106752861cf.7.1760962701142;
        Mon, 20 Oct 2025 05:18:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFW2jzWducq/z4VlSauqwRLwVg5I8pR1dRqc7QS25V52ViV+2oVv1O7d8i8/hiKWBfxR/Ve2A==
X-Received: by 2002:a05:622a:164c:b0:4d0:3985:e425 with SMTP id d75a77b69052e-4e89d30e815mr106752711cf.7.1760962700696;
        Mon, 20 Oct 2025 05:18:20 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65eb03649dsm775507466b.50.2025.10.20.05.18.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Oct 2025 05:18:20 -0700 (PDT)
Message-ID: <7e5f753d-a26d-40fb-9cde-ec17eff85c27@oss.qualcomm.com>
Date: Mon, 20 Oct 2025 14:18:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/6] arm64: dts: qcom: r0q: add touchscreen support
To: =?UTF-8?Q?Eric_Gon=C3=A7alves?= <ghatto404@gmail.com>
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
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <7C2DF8E1-D84C-428C-B064-3D8CA16FEA29@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMCBTYWx0ZWRfXzeUer1LGQuI7
 wqEdJGhmSiZbYlpNHYGxLr3N2ztcnYh5irbYXOEA95P2dYYU6SfwNoUQz+BcNvHVsTvCB8E5FTN
 ufb7/U1Oe2GcKarzSPD0hCTa1yzeQXSoFdOr6j8xJNuhPlOZGl9QPJUwI+bSmwTvnVJozwfL7Te
 0KkEVRLSsBA7gjg3iDIgCUxOGikOHjsY9d7TtF2Gg3ZS2WsJQ6WGrqo3jPTTKBx5h2VG5E3PIYt
 1XUtx0y6F8yoTfY0aEwefGmaYfYcE79Z1v5g9s0iHbSebES2Zbah0oAaJjg+gcpgoo9Mu/DM4Pq
 RiobH2nHNemW9JDlFYXUy9x+UDH4Zvc/pLtHbr0PEeo/s2mQ/Raa0oAzId6gglWTLKA2N+jOiWF
 f4taRQPFKFHpJ4c1b+3Afqp1Cizy1g==
X-Authority-Analysis: v=2.4 cv=KqFAGGWN c=1 sm=1 tr=0 ts=68f6288e cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=NEAV23lmAAAA:8 a=fGO4tVQLAAAA:8 a=EUspDBNiAAAA:8 a=-Fjz05TWtv6Y-7odKH0A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: 1BQcy1xCANICKfshq5ziRZWn7t9ybdlp
X-Proofpoint-ORIG-GUID: 1BQcy1xCANICKfshq5ziRZWn7t9ybdlp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-20_03,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 phishscore=0 malwarescore=0 impostorscore=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180020

On 10/17/25 8:22 PM, Eric Gonçalves wrote:
> 
> 
> On October 17, 2025 5:20:43 AM GMT-03:00, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com> wrote:
>> On 10/16/25 10:08 PM, Ghatto wrote:
>>> On Thu, Oct 16, 2025 at 6:06 AM Konrad Dybcio
>>> <konrad.dybcio@oss.qualcomm.com> wrote:
>>>>
>>>>
>>>>
>>>> On 10/14/25 9:04 PM, Ghatto wrote:
>>>>> On Tue, Oct 14, 2025 at 11:18 AM Konrad Dybcio
>>>>> <konrad.dybcio@oss.qualcomm.com> wrote:
>>>>>>
>>>>>> On 10/14/25 5:10 PM, Ghatto wrote:
>>>>>>> On Tue, Oct 14, 2025 at 7:01 AM Konrad Dybcio
>>>>>>> <konrad.dybcio@oss.qualcomm.com> wrote:
>>>>>>>>
>>>>>>>> On 10/14/25 6:41 AM, Eric Gonçalves wrote:
>>>>>>>>> Enable the ST-Microelectronics FTS2BA61Y touchscreen. This patch
>>>>>>>>> depends on "Input: add support for the STM FTS2BA61Y touchscreen".
>>>>>>>>
>>>>>>>> The second sentence doesn't really make sense to be included in
>>>>>>>> the git log
>>>>>>> I'll keep it to the cover letter then
>>>>>>>>
>>>>>>>>> The device has an issue where SPI 8 (the bus which the touchscreen is
>>>>>>>>> connected to) is not working properly right now, so
>>>>>>>>> spi-gpio is used instead.
>>>>>>>>
>>>>>>>> Some Samsung devices used to use spi/i2c-gpio intentionally, also
>>>>>>>> on downstream. I'm assuming this isn't the case for r0q.
>>>>>>> It isn't, the device uses fts2ba61y on the spi8 bus - I hosted the
>>>>>>> DT at https://github.com/ghatt-o/ss_experiments/blob/main/r0q.dts if you
>>>>>>> want to take a look.
>>>>>>>>
>>>>>>>> Did you enable gpi_dma1, qupv3_id_1 before spi8, when testing
>>>>>>> The driver probes, but it fails to recognize the touchscreen device
>>>>>>
>>>>>> Could you post a complete dmesg and the precise DT diff you used?
>>>>> https://pastebin.com/QkYa8nMp (android dmesg) mainline dmesg doesn't have
>>>>
>>>> The link has expired 🙁
>>> https://pastebin.com/s4abJS9M shouldn't expire now!
>>
>> And yet it did!
>>
>> Feel free to just attach it to your message.. the list may bounce
>> it, but it will still reach the To/Cc recipients
> Attached the dmesg.txt file.

I'm interested in what happens early when the SPI hosts are programmed,
whether there's any additional debug messages.

If your log buffer is overrunning, you can add log_buf_len=8M to your
cmdline (which will make the buffer 8MiB long)

Konrad

