Return-Path: <devicetree+bounces-177894-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D6856AB9848
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 11:02:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D17751895D0D
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 09:02:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8ACA822FAF8;
	Fri, 16 May 2025 09:01:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZefljwAr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66D22222585
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 09:01:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747386115; cv=none; b=nyURus7CgG8Q0iyBiIwrqEhnC0YLeny1Fxu5Xd3Hed6931RSjFomXg7CQwXpkAgiCQ5Bu1mg8x2w0fPWd6G57TZ7O9uOv0fz7nBnG3E0UBEY0xhlpHw19NJaXQF9yMHUgdGv4cUb25Z7lTqofhgv5FtijqIxaY0QSLqX1/PURgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747386115; c=relaxed/simple;
	bh=7bT7R25mgjoEOCenNMiog5d8jmrLGzIX7hwwnkSWCAc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TTLj1R3cQTGNnHpI47ImtmbJZtXoovvkI85EEu16gKujFHBoXASQx+vxLhEV/+i1f7R3YJjIIjWDudod4Ihckt/F15+hqznzTcc8bF71ObiUdUGQ70oyW/hUpiiDhrk1i6OchFJJBdwrBuTiAHG8MnkQUzuU0lYScRvaASFJfzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZefljwAr; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54G3A2xL001810
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 09:01:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	crwjkXwm2Mz61rb2CTsqxEUEHdKgDUcWAhJbvyh6c70=; b=ZefljwArl0RZ+5yA
	w/twY6QCR1H5umDn0PkBv5sUhppB/T+ozvB+9nkuEo+7ucBaPG/yQloNRcXXB0CG
	Ot9UEY77w0Al8sVTW/DiG+4uvsUA5xBOeP3ZEcWigvO1FLaIJWWYrjnUmXm/96nF
	fuEVH7f8Zb038p1KfmJOiira5Kynnybz6BU730VNT2FW4RepTi1ZZ2T3loXhJ8/H
	mCe+6ziA5qwTxojmKzqjwhcB2732QPxK2D2kScXSpH6bHs201ThuwZgq5RJ6bjDh
	O9rUuvGpoqRC8cY47Ke75h8JsWRXZSg7dT07QHuUEAuxMcM7sdrtG2TcjN7zH8c0
	jm7Kdg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcrh7tg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 09:01:51 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5841ae28eso47232985a.1
        for <devicetree@vger.kernel.org>; Fri, 16 May 2025 02:01:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747386110; x=1747990910;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=crwjkXwm2Mz61rb2CTsqxEUEHdKgDUcWAhJbvyh6c70=;
        b=MqITqvbo0Z5xxm0H3soRmngoM7CFCGTsoGGNKQt5klEXFQwK+vDzhLA7ETsasQDHF7
         bhVFVayrck9e12Aj2oB6PkD/4mN8Sm6LhkrQY8XyHwfkSBB4JIwCo0VRr5RfFPl7LYya
         vV3EL6JZq6NpoC1MbJUTya8CUhmcHXvCyFajcAVQSrgZpWXNPPVSAca77uM5lXSPiQUE
         kOd67rkQGjEd0pBqGi4iBNc/2ZtJU9/Jkli8d94cHZ2pq+D1jHxeM0z8asHsd0JepcBO
         MsvGvQks0Ypu8E93zZrOUGxFjmsIZuIrG6SlfoXALgpwKaFhOHcSSEryMqGq+7mugAtY
         uqHw==
X-Forwarded-Encrypted: i=1; AJvYcCUrxog7mAoBhqGu8FCvk6zf3mIqpXonjanjz2HMz2iBtDXl/frvnofdx5Ze6qS6MchycEqizcW/bHKJ@vger.kernel.org
X-Gm-Message-State: AOJu0YyUQLcRruybQt6Q2pdJPqK3pQAldTo2kiKFwcr+w51SUk5M9Qk8
	0q1iGTnYTEUWGSlas/JZzkflCBacJPQfFv6B3bDdujwBWl6CNj8KUIKLKjeV5TQw1P715hTpHrY
	S3IeMAD7siBlaDy58/9MR05bYkE42DSugHUEFtaGreysU7Z/t9q/QIgzSYB4mQ7b6ceRe/1EG
X-Gm-Gg: ASbGnctIcDxmY9WzE6fn84CIsEchxyRTU73DZNYek0LrP5QAtvCDzdfly3ozJ33pdvl
	67NJsg0sYP578lXEmTWs12lc5KPX6dk5y9QQe5gBeibCWsi1cjKpioqpYma7/B59Kz1jDNX4vW4
	WUZ31TbOTkuIJ1EEBjRDGZ303nnc9lFf6Ck7K4IA4dvrigwN1crD/6YPEzaX/GSVcgxlO/WNqs2
	rOnsfKPpOkoboZHKu9UdsZWh4iJMMNibFHFfd6g5G0s/cZHEYcsXxOvec5E0Sl2BzqxJmNktncW
	E9WkPL7mjdnMG4rVjEza24QEE7YLu8odFgcmhto2CUaOa9HXoYgZbto5GRI/8lk1og==
X-Received: by 2002:ac8:7c4e:0:b0:47a:e6e1:c071 with SMTP id d75a77b69052e-494ae373c48mr13480481cf.7.1747386110013;
        Fri, 16 May 2025 02:01:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEk5/GJR09r13nfBtnkiEoEavjVSinfCHNYuKjToVdC/aopOQxGYHzKPdlMHftGKbnMw1zIxQ==
X-Received: by 2002:ac8:7c4e:0:b0:47a:e6e1:c071 with SMTP id d75a77b69052e-494ae373c48mr13480231cf.7.1747386109485;
        Fri, 16 May 2025 02:01:49 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6005a6e745fsm1094479a12.48.2025.05.16.02.01.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 May 2025 02:01:48 -0700 (PDT)
Message-ID: <5190dc77-3ea5-492b-ac52-8523d8188ab8@oss.qualcomm.com>
Date: Fri, 16 May 2025 11:01:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/6] clk: qcom: ipq5018: keep XO clock always on
To: George Moussalem <george.moussalem@outlook.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Luo Jie <quic_luoj@quicinc.com>,
        Lee Jones <lee@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250506-ipq5018-cmn-pll-v2-0-c0a9fcced114@outlook.com>
 <20250506-ipq5018-cmn-pll-v2-1-c0a9fcced114@outlook.com>
 <a3c3dbe8-b73e-40a4-b86f-ff9f371b1a46@oss.qualcomm.com>
 <DS7PR19MB888370ACC69E0A1ABC46D3BB9D91A@DS7PR19MB8883.namprd19.prod.outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <DS7PR19MB888370ACC69E0A1ABC46D3BB9D91A@DS7PR19MB8883.namprd19.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: FjaEv_fDxS-LTq0mbXSdKuCxbtSVUJiR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE2MDA4NCBTYWx0ZWRfX9iyFnQrGHcY8
 Q/k8iB4ogGyFzY5+BPTJ/DkbO9nUUi1vG6bpQCCMlvXuczFeNJ6QQQZk9fRF7rsYgI8F45Tv8J4
 NthfyHILjXUFVnCKVo4goRh/8/17Z6qC1kn3bFk2e8zDyrMJpZHluNn/7gaEoF2+zPKSpkCDwdE
 FhflVogU3e2ZaazqLinE9oO8po/OraGORLadFzoi3juFq+v7Cb//7CqN35zEiFxsjbi9gIirp9C
 cdNCf2pNd+0sA5dXW1uJaGmx9c/4YRK9pZl2YdZIGWZQ7+grlKWbb5opr7Zq0Le89jGQ699uI7A
 WYaA9pyXH7WQUMZ1qrR/07SQbs8353VT5GiW6OHAZGIb3eiXBPZmksOncHC0m2rWEKygde9IrWe
 QDDvBRS2DIkjSNSykLPk2k10cObRQQ7YUyHqoQWuKeoIKXUKtMM+coHSIU2566B4jUe5pral
X-Authority-Analysis: v=2.4 cv=K7UiHzWI c=1 sm=1 tr=0 ts=6826feff cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=UqCG9HQmAAAA:8 a=f-fEU4NQkEpfBDf4STYA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: FjaEv_fDxS-LTq0mbXSdKuCxbtSVUJiR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-16_04,2025-05-15_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 mlxscore=0 suspectscore=0 malwarescore=0
 phishscore=0 mlxlogscore=958 clxscore=1015 bulkscore=0 impostorscore=0
 lowpriorityscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505160084

On 5/14/25 10:04 AM, George Moussalem wrote:
> 
> 
> On 5/10/25 01:47, Konrad Dybcio wrote:
>> On 5/6/25 7:43 AM, George Moussalem via B4 Relay wrote:
>>> From: George Moussalem <george.moussalem@outlook.com>
>>>
>>> The XO clock must not be disabled to avoid the kernel trying to disable
>>> the it (when parenting it under the CMN PLL reference clock), else the
>>> kernel will panic and the below message will appear in the kernel logs.
>>> So let's enable the XO and its source CLK and keep them always on.
>>>
>>> [    0.916515] ------------[ cut here ]------------
>>> [    0.918890] gcc_xo_clk_src status stuck at 'on'
>>> [    0.918944] WARNING: CPU: 0 PID: 8 at drivers/clk/qcom/clk-branch.c:86 clk_branch_wait+0x114/0x124
>>> [    0.927926] Modules linked in:
>>> [    0.936945] CPU: 0 PID: 8 Comm: kworker/0:0 Not tainted 6.6.74 #0
>>> [    0.939982] Hardware name: Linksys MX2000 (DT)
>>> [    0.946151] Workqueue: pm pm_runtime_work
>>> [    0.950489] pstate: 604000c5 (nZCv daIF +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
>>> [    0.954566] pc : clk_branch_wait+0x114/0x124
>>> [    0.961335] lr : clk_branch_wait+0x114/0x124
>>> [    0.965849] sp : ffffffc08181bb50
>>> [    0.970101] x29: ffffffc08181bb50 x28: 0000000000000000 x27: 61c8864680b583eb
>>> [    0.973317] x26: ffffff801fec2168 x25: ffffff800000abc0 x24: 0000000000000002
>>> [    0.980437] x23: ffffffc0809f6fd8 x22: 0000000000000000 x21: ffffffc08044193c
>>> [    0.985276] loop: module loaded
>>> [    0.987554] x20: 0000000000000000 x19: ffffffc081749278 x18: 000000000000007c
>>> [    0.987573] x17: 0000000091706274 x16: 000000001985c4f7 x15: ffffffc0816bbdf0
>>> [    0.987587] x14: 0000000000000174 x13: 000000000000007c x12: 00000000ffffffea
>>> [    0.987601] x11: 00000000ffffefff x10: ffffffc081713df0 x9 : ffffffc0816bbd98
>>> [    0.987615] x8 : 0000000000017fe8 x7 : c0000000ffffefff x6 : 0000000000057fa8
>>> [    1.026268] x5 : 0000000000000fff x4 : 0000000000000000 x3 : ffffffc08181b950
>>> [    1.033385] x2 : ffffffc0816bbd30 x1 : ffffffc0816bbd30 x0 : 0000000000000023
>>> [    1.040507] Call trace:
>>> [    1.047618]  clk_branch_wait+0x114/0x124
>>> [    1.049875]  clk_branch2_disable+0x2c/0x3c
>>> [    1.054043]  clk_core_disable+0x60/0xac
>>> [    1.057948]  clk_core_disable+0x68/0xac
>>> [    1.061681]  clk_disable+0x30/0x4c
>>> [    1.065499]  pm_clk_suspend+0xd4/0xfc
>>> [    1.068971]  pm_generic_runtime_suspend+0x2c/0x44
>>> [    1.072705]  __rpm_callback+0x40/0x1bc
>>> [    1.077392]  rpm_callback+0x6c/0x78
>>> [    1.081038]  rpm_suspend+0xf0/0x5c0
>>> [    1.084423]  pm_runtime_work+0xf0/0xfc
>>> [    1.087895]  process_one_work+0x17c/0x2f8
>>> [    1.091716]  worker_thread+0x2e8/0x4d4
>>> [    1.095795]  kthread+0xdc/0xe0
>>> [    1.099440]  ret_from_fork+0x10/0x20
>>> [    1.102480] ---[ end trace 0000000000000000 ]---
>>>
>>> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
>>> ---
>>
>> [...]
>>
>>> +    /* Keep some clocks always-on */
>>> +    qcom_branch_set_clk_en(regmap, 0x30018); /* GCC_XO_CLK_SRC */
>>
>> this clock is not a clk_branch2 - its control register is different and
>> this call is incorrect - you can drop it altogether, as if the XO source
>> clock isn't running, the system is dead
>>
>>> +    qcom_branch_set_clk_en(regmap, 0x30030); /* GCC_XO_CLK */
>>
>> This one actually is likely supposed to be always-on too - does removing
>> these two lines do any harm?
> 
> removing these lines AND the clock structs works AND updating the parents for clocks that reference the xo_clk_src works. There kernel is not complaining about anything. The other option is setting the CLK_IS_CRITICAL flag. What would your preference be?

Let's do critical after all

Konrad

