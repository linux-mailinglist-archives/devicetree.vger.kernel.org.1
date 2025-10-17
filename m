Return-Path: <devicetree+bounces-228057-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 116B4BE728B
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 10:27:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 126A2420FCA
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 08:27:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 865D12773F8;
	Fri, 17 Oct 2025 08:26:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="p7UqfOQs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0967C284883
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 08:26:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760689615; cv=none; b=LD8lzp/u81GPqSf8Xut51tu7yJ6ibaSk0Odrpr41PQHMq3KAEYth5gjEL/SALNbrmXzNLuwUL07KKRj84fjvKlpv774v5gd2tZ2fXjwxZSRKr7MqJZY4WrCFN9RW7IdMWK2Gio1D+X+FGyyi0rXcxKzrz+YKflwHeAjsUYF9CrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760689615; c=relaxed/simple;
	bh=W1ab4XP/vKfyLvPZCWVMMkItYSbT3sjdMDhJbsFCZE0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IfcYApIrzoKatOXuA7cQBN3tyN6A6KzAglrYaVX21jwKYTn5UnEzdmQdGAkinWmM2fwlD33FhsYK7tpVeRda8yhB9w/vqQUIZJz/zLWzX4Zs4FUFRtcWMkoYCxfEzc4r7HevuKPFmk832QkdMIiO9BWrB+doyTIY5LlhTwVhxCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=p7UqfOQs; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59H8F8XI006528
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 08:26:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	W1ab4XP/vKfyLvPZCWVMMkItYSbT3sjdMDhJbsFCZE0=; b=p7UqfOQs7akhcvBl
	LZjWMZG8me13GguhAmhrzowv7BTnRO7C4Mg38uUJES/mgcSG6rI+UFUbXG5h92RG
	3p4TDFgwhtxmgcRS56oiaZBx+cPzwhPmX7RGDZrHWrMHBlDysQRkt57t91QWRNK9
	gRC3j4mCRUaluffuYpZJJ3LmjK7O4FWnJyasz6SKtiEzmkG2CFH1nZnT/gwelEJq
	Roo/IOipfELf0LUnIcZNYXTVEY++z+ZQ8SGK1dADFTAgPJJCgBo9mKRZH+J9JwnR
	Ch9gLX53SropsZ9IS45NT4RGD4e2XElNfxSsm9CqaR/aZn+g1Cy4snJc4PHSX3ZQ
	1eMIGA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qff13ecp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 08:26:53 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-32eb3736080so387553a91.3
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 01:26:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760689612; x=1761294412;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=W1ab4XP/vKfyLvPZCWVMMkItYSbT3sjdMDhJbsFCZE0=;
        b=nxv8vpdGpO8luzmwCyBKwURoDYy//zRn9SS9AfZbApTL+tj9W56P8vTxtoU28zgJp3
         OmIZ3tgaKCQZ1XwB/QReXzNXEpfqBs/y1rYQNDs7TDA93nv0qKnIxFjS8EgMx14vSo61
         rMO0HR+aiJ4lKKpxWdCX6zUEdTQ+McD4xDqGQzQjv0n90QrZF4lUOSQFvMYYYtbYiUiv
         oOxPieYLNjKwoDylfrMz33ByqdQOBYNY/NiwIzbawMcV1Hte9DYZsq8ttNTuoBbYlYJk
         +TmkjRc3mBwcr6hpppgnplpAIlUnCH2MirBzBtsYrhYptZq7mi7KkngYmkSApPhyNV2T
         ncYg==
X-Forwarded-Encrypted: i=1; AJvYcCU5khJUy7YQFmPTJ47cdyIeqaKJcjkyjoedGZqWx3tQE6sXAAV0ay4bjkWPgHTVVZGd5eRL1D7d2lv3@vger.kernel.org
X-Gm-Message-State: AOJu0Yzp1b3SF6gBXwAhk16JFeS19vzpPw62Ixig01xAYzwSrvswbNHJ
	7zXIUg8YhiAdDwpDNpL7y6AV1jQ6+AUwrEDBRoTr6Dsho7QT/p2adw6N7eszXc6Bm+5tyou5yro
	GW2ummBK9giBq39dYFe9256/KUnESwfjP5ZdT+5LE4Cw15YtfBGoZ/0opwDe5fGc94v0MvF3+
X-Gm-Gg: ASbGncuoUVCAj4UT5AD3Oe+WMN2SFGVKPHk9a8O8amr0+rtwC+1MrdSYW0huxmPJZ1u
	8j8iz3SN2XzYoWfMp7Ly2FvTiVqCv0l2ZVjLyYZcJ7CNI/SOul0jHmmFbumBaZoNymoStodzIKO
	9oE7LaA4d3HsCyNSsztH2I+6FUSPtHy1eFQiouL/nfhSlXg3LzUdjxoMGNATJ+urc3c5wzsCLrY
	zqWvfIVPzy1a1313geTU3kgRZknN1rnb1Z2A1ubDL3f5BkNNliazaff1fJqHy01PDm8PThddt6m
	mox3Df6PVZLbVwhqBo2kmN90dl/QcWHQ2sR3Uub0AnNJlqG/tlnTN7sq84WC6ri1E+ChEj7xlQ6
	FwdV68uRqnS2zUpVWomrWNu7YRHVAPnH9QW6PLjqpchVKckkmxFlKyAjY
X-Received: by 2002:a17:90b:1d09:b0:33b:b020:596c with SMTP id 98e67ed59e1d1-33bcf94bdc6mr1809900a91.8.1760689612090;
        Fri, 17 Oct 2025 01:26:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG11LgstWaYNgZ1s68woOATZnZcT4+E5t9urVq0Efp1rsjpDe8qtt+X2vM/fWmWeJco3S37WQ==
X-Received: by 2002:a05:620a:480c:b0:85f:a278:78bf with SMTP id af79cd13be357-8906ea9b701mr288979585a.3.1760689245872;
        Fri, 17 Oct 2025 01:20:45 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b5cb9f75f47sm754628366b.28.2025.10.17.01.20.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Oct 2025 01:20:45 -0700 (PDT)
Message-ID: <73d30994-3ec3-41bc-9b07-638d4173dfe6@oss.qualcomm.com>
Date: Fri, 17 Oct 2025 10:20:43 +0200
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
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAMQHOheTkKC8NcRrPxKZdB_h0SJGNJVMd4NUD7TE4becPouWyQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX33QiCFAqxWHU
 QK8z6G3rYKM4OMbnCyOAWSSC1yL8aSSDS0Wa0XdBej9k90Nbhy4A3r8IKAiZBvUQikhX2OlNR2o
 0XEfqt3bpJDsAOkETO/lmhCWSDy2UvBEqY8jPbvk3A7ncmIstjQn13ibb73N2qxb9AE1k8Wu5gW
 ZWF1ddGbzD1UJm6G/ROZAidTMJ3lHOI1QtZhfcLUPt8lRavlVtMNtjx9ahJED1eTOKFfNDT1Dym
 1pt7LmjRH16xdqKkTxFfM+S55YmBJw2f7tuH9izq2xxUblVc/K25ts0JZ/wQICDKmugG+cPn8Sb
 Pam0pREYMUfcCLUpZKmkC+MfuzL2qJ+JcuBDTX+iw==
X-Proofpoint-GUID: qx6agfT3Bgl33yqt8X4KziWTj9X0MvzL
X-Authority-Analysis: v=2.4 cv=PriergM3 c=1 sm=1 tr=0 ts=68f1fdcd cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=NEAV23lmAAAA:8 a=fGO4tVQLAAAA:8 a=EUspDBNiAAAA:8 a=7GU4dPUIjq6KxtgWSIwA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-ORIG-GUID: qx6agfT3Bgl33yqt8X4KziWTj9X0MvzL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-17_03,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 bulkscore=0 phishscore=0 lowpriorityscore=0
 spamscore=0 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018

On 10/16/25 10:08 PM, Ghatto wrote:
> On Thu, Oct 16, 2025 at 6:06 AM Konrad Dybcio
> <konrad.dybcio@oss.qualcomm.com> wrote:
>>
>>
>>
>> On 10/14/25 9:04 PM, Ghatto wrote:
>>> On Tue, Oct 14, 2025 at 11:18 AM Konrad Dybcio
>>> <konrad.dybcio@oss.qualcomm.com> wrote:
>>>>
>>>> On 10/14/25 5:10 PM, Ghatto wrote:
>>>>> On Tue, Oct 14, 2025 at 7:01 AM Konrad Dybcio
>>>>> <konrad.dybcio@oss.qualcomm.com> wrote:
>>>>>>
>>>>>> On 10/14/25 6:41 AM, Eric Gonçalves wrote:
>>>>>>> Enable the ST-Microelectronics FTS2BA61Y touchscreen. This patch
>>>>>>> depends on "Input: add support for the STM FTS2BA61Y touchscreen".
>>>>>>
>>>>>> The second sentence doesn't really make sense to be included in
>>>>>> the git log
>>>>> I'll keep it to the cover letter then
>>>>>>
>>>>>>> The device has an issue where SPI 8 (the bus which the touchscreen is
>>>>>>> connected to) is not working properly right now, so
>>>>>>> spi-gpio is used instead.
>>>>>>
>>>>>> Some Samsung devices used to use spi/i2c-gpio intentionally, also
>>>>>> on downstream. I'm assuming this isn't the case for r0q.
>>>>> It isn't, the device uses fts2ba61y on the spi8 bus - I hosted the
>>>>> DT at https://github.com/ghatt-o/ss_experiments/blob/main/r0q.dts if you
>>>>> want to take a look.
>>>>>>
>>>>>> Did you enable gpi_dma1, qupv3_id_1 before spi8, when testing
>>>>> The driver probes, but it fails to recognize the touchscreen device
>>>>
>>>> Could you post a complete dmesg and the precise DT diff you used?
>>> https://pastebin.com/QkYa8nMp (android dmesg) mainline dmesg doesn't have
>>
>> The link has expired 🙁
> https://pastebin.com/s4abJS9M shouldn't expire now!

And yet it did!

Feel free to just attach it to your message.. the list may bounce
it, but it will still reach the To/Cc recipients

Konrad

