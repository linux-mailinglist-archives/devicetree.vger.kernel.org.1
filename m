Return-Path: <devicetree+bounces-254338-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 44801D1763B
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:52:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4191D301E1B2
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 08:52:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6733537BE84;
	Tue, 13 Jan 2026 08:52:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LjIkdpla";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FimEirxC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58DEA36AB4A
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 08:52:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768294341; cv=none; b=Z6+kIdlQ5TKfN6mtzbb7Iz+b9Dzm2Rc0zbmLE26YX0Sb3APc55TuVTVqPGxtM2fkpfVMMoVYyicetFF2/1+ThLbiZffHe9hb9w7eX+kD5ObJkYsKFQVWSqa2v2AL/3DrEvLG/3RUf6tmzg/CE45Pf1WuefeV26XC22TgNh/bRqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768294341; c=relaxed/simple;
	bh=YzbNl+xbvpUyD5ayuMrcbo/apNH7bMHu6PHtHnLxoYk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lDpFkM/9on1VEvBuQBILboevrM9Sviq7LFB6d0DWuM0KNRX3xr2XCmYR4027B/7AtauuDxqDKptGzsZnqWen9o6giAsZAphJfbOqX46+HFD0g+KY+TbMOWyJa8KVH7jceKOkUB9uK9eHtxchhK17JZbggde/KsawoxJtpqy/AbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LjIkdpla; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FimEirxC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60D7PY2m175851
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 08:52:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1lQXOd1KKTc9ZUkBgQZvbAmGnYcheIgsNLhqD8IWc+E=; b=LjIkdplarapmzQwz
	4Dwt73rSX22fVP32HBuAYLrmu9ts/KFyP3Oy9YIhTMqSLP8zUP3hUeb2pH4ES4GW
	sHaIJaCI7e/5uHPtaVCMQz0Otb1aGF469ALcM7yl7BnbxzBKs4MTIUF/Kxwo6qu2
	67yUCtAv8jel6qwAzRcxubuRA5TpUhJTDDvr+M48hOfVz9fiSNovUO5HyGcDqgbC
	b0NQba5BdV7kTCmmCT5jC4XZuFLmoK1P+U7yFO8mrs3bZ3ZgrpRSprBN5/ZZuOlP
	4emz4VOn5rytBfpEuA0ip2+iYlRQOArWmHF9YaZRiuD7HN8OjZEUaQv/PvVVsDzr
	oDtliw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bn52f2fj1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 08:52:17 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4f1aba09639so19753921cf.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 00:52:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768294336; x=1768899136; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1lQXOd1KKTc9ZUkBgQZvbAmGnYcheIgsNLhqD8IWc+E=;
        b=FimEirxCMlKPIkf6iVrjDK0QeH5CbXnflcMnz4ZXPd0/atLTJuZg3Qa0tlvxBuWUsD
         i3/qJq9E4zo5Dw9QN4RNj2Vg3+sHy/DX0YhC8XvggNSZKE+tjgXD59g4Fg1b9dxMY8gU
         CzGygdo0LpWbb1AhPKDH+vG1mFlxrh51e8I5pyz2ZHgTOt1csbYjlnLTHfBZ+wzsw2PQ
         b+uOhG6XNtcW8P8PPED6TwizBsPDHSztw8BGLtxrMmJ/vK5anjgn1IXetHelQ1k5giEb
         JPEdUEprUIieDfPcCLeRSKLqYpTLizf8A+ONYGhKyXKV6TDBsN4ilNXK7vidxjK5edx+
         +SGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768294336; x=1768899136;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1lQXOd1KKTc9ZUkBgQZvbAmGnYcheIgsNLhqD8IWc+E=;
        b=vUIP8nk2UyP22DXFITK9deeM2yejGxbIRHm68GPhTdDvvJZZoZ7vfXq8MTXcEebGtA
         ucWreuE1P+RB9PFlGyub9q3xsMW8EelvJ/OmxqAbDhfXZi7N0p6xw2L9NS0gkDkb/zel
         jaMlgWQDXxAFrfYDXfHvOjuaDOFxkB6o27KR/ldgn7tnQTkAfpBQ5MbAHuAh5ItzJJNx
         2KP6I1XX6+qjWYzJjGEYLdl84WvyaQh9ZHrheXoEdFM+gAm9fP3Cd+E09ZUUM5vJhfzX
         vdcfkFtG1hhauT4VcD7A8MRd15sRuDqPVnyr5NWGkl+R8IBk6ZnW2ksgeQuSHbyNcivx
         1ywA==
X-Forwarded-Encrypted: i=1; AJvYcCXixSkrsmdkVf3WzuwsI/hN1Eh08hXwiGokgq/g7Jfp4b9H4dNlOhOudU7jq5+cInZ0Am777KkQfEzL@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6KpzPkbl6bZ9O8RYn9EpVjFbH7tBOpJUzZwiZNpqx4d2PFeKp
	1ZEJ/wGASRuoP/REk8ueFZIgIC+LIhf/jQLiYOEhVzQrGbRTj4EhNO2wZ6J3RXgfZFKC3gZXjI7
	3jL1OyPQ21ByhC1203T4MiCjYDCqInDehA+Jd0btgwNGEkaRhRp6F2KPowLozhnQM
X-Gm-Gg: AY/fxX4XD9H3KwySROT5B2ZzBSdsKcqbmefLF97TFtFD5bzQpk47hUyTBsR4K9m/JVO
	JgIaaHbFaBA6s9JpzxzmVzozfFZZ3IvN/GkFLZGA5NRN/OMjdeqIuFSBlKz7VgzYexcRtkjF7Wx
	qKEydLXYiB3lyPu4wYtshVFzuj3N68WCH0QUnCBMHFpANkcRKdfwqF/pqmEFf99cBqMLFE9e/Ba
	jNJym5YLRt4Hxc8D0ob9OSqPp5psQkoCxPTgkpXg0RoHGueYNUe03j2RhpIxiYne7zDtx7lFqdx
	2tGFSivBW4q7rQtP5IPbsFKU4RKsqeYnBE9SqHkE+IalKkoS5RyPzylVSi8huRMPAkXrfcqrXWN
	JDVga+sCiamO3KAi0mISTAMCf/zr/cn+RlA75X+JvZAquHsAe7KiBTY8me10Z1Mfx9iM=
X-Received: by 2002:a05:622a:211:b0:4ee:2580:9bc5 with SMTP id d75a77b69052e-4ffb47cfe1amr231896231cf.2.1768294336590;
        Tue, 13 Jan 2026 00:52:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IETc6GdkVdeaY5/4I3Jcs/tlWW0K4PJHocn3Se4hiY8tlHeYxeD0etiISmOVNLOKDw8XBRHhQ==
X-Received: by 2002:a05:622a:211:b0:4ee:2580:9bc5 with SMTP id d75a77b69052e-4ffb47cfe1amr231896101cf.2.1768294336208;
        Tue, 13 Jan 2026 00:52:16 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a4cfe76sm2137792366b.40.2026.01.13.00.52.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 00:52:15 -0800 (PST)
Message-ID: <dc0d8efc-2cc4-4d37-832b-f4cb3c170722@oss.qualcomm.com>
Date: Tue, 13 Jan 2026 09:52:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/6] arm64: dts: qcom: Add Redmi Note 8T
To: barnabas.czeman@mainlining.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Gabriel Gonzales <semfault@disroot.org>, Kees Cook <kees@kernel.org>,
        Tony Luck <tony.luck@intel.com>,
        "Guilherme G. Piccoli" <gpiccoli@igalia.com>,
        Biswapriyo Nath <nathbappai@gmail.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-hardening@vger.kernel.org, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, linux@mainlining.org
References: <20260112-xiaomi-willow-v1-0-8e4476897638@mainlining.org>
 <20260112-xiaomi-willow-v1-6-8e4476897638@mainlining.org>
 <3d2qboek2kzsnsjmn7rqi6xkfotfchc7vdmyeprivu27l3rw2b@i5lbwsvxfwdb>
 <aa8d5d6f9301d94b56af4580210ffc88@mainlining.org>
 <nrudictx64m24ydh265c4ma7txfdmmncjqfl4xq6zxvk75lkzq@wu6vnehc3dqu>
 <abd31188336b3322b9322f1e6791320e@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <abd31188336b3322b9322f1e6791320e@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDA3NCBTYWx0ZWRfXybSzj7D+n6lJ
 MKPgJQZe8KAVzISGAfudR7vt3DgueI1acKH8FUR/QMvKBHIy4UUeC8KbsAOJAXBCtIHH/JsE8yv
 GrOG+L5AlB8LPEi3xEjq7TYCHwmHAhzVEhfHuWNEMcaaSZpMrgQmWlAI2R4AiDDK9ilsGipMXD6
 d5NE3KFsETuSXYq7LyA29fMI5LkusebvNjKugjQgIyoikQLe364zYV6aVtgbgO9BDWmAYGb2jYr
 wRea9PpRJLbtl3IsDqm8V6cJcd6a82bgIqBmMhBP+UhqXjo7KZNe216RJtHoSEMQ241xncdFvaw
 lF3OybgUgeV0vb60L9laYdXOGvui3LR0o6HDQomCcMaVTsQjb16lrd5TwGH7oUqtxVo3NrC3VHH
 Tw9WzlBR1suHL5BmMQzVERfr9UGTkDKgjrTFE6okuCQ3sZ6xJJwrc7cFUd9R7P4+w8jBd2RbJyd
 sJkSAUooRIPsKghURqg==
X-Authority-Analysis: v=2.4 cv=TcCbdBQh c=1 sm=1 tr=0 ts=696607c1 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=OuZLqq7tAAAA:8 a=LpNgXrTXAAAA:8
 a=dFmOiwFbY9cOzGFAODQA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=AKGiAy9iJ-JzxKVHQNES:22 a=LqOpv0_-CX5VL_7kjZO3:22
X-Proofpoint-GUID: JYtN-WUrRqP5EI7-ZskgeoKgnRqv8bns
X-Proofpoint-ORIG-GUID: JYtN-WUrRqP5EI7-ZskgeoKgnRqv8bns
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_01,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 adultscore=0 bulkscore=0 suspectscore=0
 lowpriorityscore=0 phishscore=0 spamscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601130074

On 1/13/26 1:49 AM, barnabas.czeman@mainlining.org wrote:
> On 2026-01-13 01:22, Dmitry Baryshkov wrote:
>> On Tue, Jan 13, 2026 at 12:41:43AM +0100, barnabas.czeman@mainlining.org wrote:
>>> On 2026-01-12 23:15, Dmitry Baryshkov wrote:
>>> > On Mon, Jan 12, 2026 at 09:13:29PM +0100, Barnabás Czémán wrote:
>>> > > Redmi Note 8T (willow) is very similar to Redmi Note 8 (ginkgo)
>>> > > the only difference is willow have NFC.
>>> > > Make a common base from ginkgo devicetree for both device.
>>> > >
>>> > > Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
>>> > > ---
>>> > >  arch/arm64/boot/dts/qcom/Makefile                  |   1 +
>>> > >  .../boot/dts/qcom/sm6125-xiaomi-ginkgo-common.dtsi | 302
>>> > > +++++++++++++++++++++
>>> > >  arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts  | 296
>>> > > +-------------------
>>> > >  arch/arm64/boot/dts/qcom/sm6125-xiaomi-willow.dts  |  13 +
>>> > >  4 files changed, 318 insertions(+), 294 deletions(-)
>>> > >
>>> > > diff --git a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
>>> > > b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
>>> > > index 163ecdc7fd6c..70be19357d11 100644
>>> > > --- a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
>>> > > +++ b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
>>> > > @@ -1,304 +1,12 @@
>>> > >  // SPDX-License-Identifier: BSD-3-Clause
>>> > >  /*
>>> > > - * Copyright (c) 2025, Gabriel Gonzales <semfault@disroot.org>
>>> > > + * Copyright (c) 2026, Barnabas Czeman
>>> >
>>> > Hmm?
>>> Original file was renamed to sm6125-xiaomi-ginkgo-common.dtsi this is a new
>>> file just the file name is same.
>>
>> Following Konrad's advice:
>>
>> Would the following addition to .gitconfig help?
> No, only until i am not creating the sm6125-xiaomi-ginkgo.dts and adding it to the stage.

JFYI it works on my machine (tm), the part with just additions is turned
into:

copy arch/arm64/boot/dts/qcom/{sm6125-xiaomi-ginkgo.dts =>
	sm6125-xiaomi-ginkgo-common.dtsi} (98%)

I'm on git 2.52.0 if that helps

Konrad

