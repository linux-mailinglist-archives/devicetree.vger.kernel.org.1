Return-Path: <devicetree+bounces-221795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B063BA3069
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 10:55:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C92414A6892
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 08:55:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4B0E29B216;
	Fri, 26 Sep 2025 08:55:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Xz6raaDi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53CF329A300
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 08:55:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758876921; cv=none; b=HeyY9g70XWzx2mEWOIt8V8pcmVUjM0/PKW1CVQhyLTfPU74UA2aWlz7/NzMhGaE+RhjuGzbwfMLK7HgYzvh8X2+/f5bvwiS2L7tX9yyRUjuk4tW/cJ26XNLr5JvMUDpV2kbDIrmUQMoyC/ZxqW9xQGxzYDF0nvERxSabYPCzLis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758876921; c=relaxed/simple;
	bh=H3oclPLZNC4FPP4H+RvI7lOCqvvODgPKvGIwZ8+Tfhc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mHN+srwja0R5tJcY8I6PA/lYdOJ4DzMzyHgyS9mTovVIiCsJ3J2+XspHT2mpRRKrhQ5nmN6NKcF20yjsQ08z+ruU04yabPiiqKj1uOUvwioVXcahdhxlxbxEbqf+CWCa63MRX4IlHT9MzAErPCgyHkbgXSejFcTBJlnpiy+qpXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Xz6raaDi; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q6pouC025374
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 08:55:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YZwahU0c/LPU8BcKe/dMgehNfskCJrh2bk5U3NX1qmk=; b=Xz6raaDiQz6E4hD/
	Xzj25pAphxef/808b8ckaykidndJvOY+tWWYQT3e7CIVN9czC2KvD8tvF2z2+9z3
	teIK/jMRH9Q60SU5kYvGxOoZhqP0BYoq0e+yUqsgZI0oBRDXwcAALyioEyPbfNpB
	PULoO8J8SMI/5b+fARKt6gsV0uGvxpTXNTvZUrL0MyF1Opq9nKvQ69yImBSd69EJ
	UgnL2qjhen3dxGQXYlS66YZlTi/OyJ7M2OpSGqFZkaug1SPgmApSvnTWbwoTGDOI
	iKdh20HrWzsKJADL7vtcjeaOwGUKe7W8AHSDEQJzT83XIX4bfzU2afSP5tt0YFQJ
	guYeuw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0u261r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 08:55:18 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-85e23ce41bdso50514085a.3
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 01:55:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758876917; x=1759481717;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YZwahU0c/LPU8BcKe/dMgehNfskCJrh2bk5U3NX1qmk=;
        b=O381Rt+QkoioeHqY39+72HfI0GfS7lildMk7r25BdYCwsHxG2YPYOw3JQtu2SSEIb7
         YB0efO2Moz/EUpxF0TGoBe2b+6QW1GXsYv8GoePRacmbjp2vGUZibL9rxEGgx5xT5eQz
         8qQFw7I/d4B2Ww4b7nAAQsycacVbhz4xBQ72/cFU7G4Rk6CizHb2klYctupoXNFhFpcS
         yZNLa34dHAgGWzwM5VsM2f/hkaYF8Ki4yzlEyXFEJtpUHpwJSuvmAyHwXPsF64ssghOM
         DInmqQBEZcw2iX+KKJMecO1t1b2+kTkr4b5+Rr0Xlqud8s5VPbVzB4V83V/EiM+PbTpV
         oWAg==
X-Forwarded-Encrypted: i=1; AJvYcCVi21AnvymOY+P9QfwqHwhn+jP5B+p1n4/H53Scd0U3lkR5nwPASNr/EqtPrNJWZQOfZLFjPhmoAOB3@vger.kernel.org
X-Gm-Message-State: AOJu0YzNdqhssfTpY0c2lbe98/q/a3Az258OnRFtzmzTGd0DI1VMmd7q
	vK1H1If3ils9AP7meqUxjcH1xx+8Ht7iqqkQ8xYaqys9wTSoe8Cnd7+zJa1bRe9NI97OLARZIGP
	FE/VQpzF3Xq2IPQ+WyM9Bg5OKI6u7TS1KwujvIKeSjZB2d5BwBS+RH07mYdXh43hW
X-Gm-Gg: ASbGnctDMbFnWB/msYt/xXzdaRPOClU0Ie5asqHeRxsJpZVcoLZ0wSaCRyvs7FV4agx
	fFsbceMIW/m81vW0IopyxgbQDIBb1Z5jHY4yTH6fBulfd9HiSV6nLaPl+A46KTgqTVhBOU3ugbY
	/Ju0J3BBz3pu357U8SftdxpBJ870pxVR2cZp36uHvGmTX7StPTToaNGlId0z6EtJkqrbadaVGsd
	Z8NFrs0EIT2oqqldxdrtOZWUgfD323pWdvaHZDgBynS8Li0q7i3AGHO+dho56e9rmGlUsKF+HrL
	Ph2MZ9VCFxaXjmuHddt3UlMagUa4yA8K0SrHl7Z4bwczNb+wG3T5YQmEMZg4Mt1r2tqa20IVL4v
	GgJOGo3tBdt2HnVFnLAgQaQ==
X-Received: by 2002:a05:620a:4722:b0:856:6bcd:4adc with SMTP id af79cd13be357-85ae6d81b82mr523497485a.9.1758876917364;
        Fri, 26 Sep 2025 01:55:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGRRY3Uq60Ht2WVCNKABn0E4Jb7bHcKPpmbGoeQFqat2Wl0O7Ko5BzeVbNeba66xZoL423QRA==
X-Received: by 2002:a05:620a:4722:b0:856:6bcd:4adc with SMTP id af79cd13be357-85ae6d81b82mr523495185a.9.1758876916746;
        Fri, 26 Sep 2025 01:55:16 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b35446f7547sm324068866b.67.2025.09.26.01.55.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Sep 2025 01:55:16 -0700 (PDT)
Message-ID: <9fcf3835-a88e-4e0d-a970-064d696c62a2@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 10:55:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 13/24] arm64: dts: qcom: Update pmh0104 dtsi for Glymur
 CRD
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v2-0-8e1533a58d2d@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v2-13-8e1533a58d2d@oss.qualcomm.com>
 <CAJKOXPfCFS4UDbN_SejG=zJt1Dt_mtz_p_+MGAaEr5SpK3ydRw@mail.gmail.com>
 <7eb0af93-7cc6-4b1f-beea-d5663c1bbd59@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <7eb0af93-7cc6-4b1f-beea-d5663c1bbd59@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: -ESON_b_t8FZVYJfloQDeERYbZbIjTRQ
X-Proofpoint-GUID: -ESON_b_t8FZVYJfloQDeERYbZbIjTRQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX4fyYGCP2mxoi
 8VjHzPbNL5O1ciAVClpm0p2y/8SR+IFCsc3/6j1fn1swD4PxippnAQ59CWu8ZEVV70qHMDPzNpB
 AxkM/E9leY7YR/uSk/8+dRZUEbKr9P606I+1vs/fQZUWAoer9oW3sc+9RtfJPOXRO8C0u8m4uHL
 BHEqWF6l9avuY0YF39Es9YoN2Be/YZ9qo+47u+5aoTMLkvMMLMEwpu7ZS0vF4OaW0AcYcxAvOrx
 CroTR+DGUv6fsgkBKBVAgi9YRE5REHIBh+0BnH1SKRnAi91uIL/184p0I5v6NSGAmDFQqSffguE
 M0xKXxh0wqgXzpQOK1VF4OkPE81bAU2N+pMmljJTYpT2tdVLjox6M/hNy07UGRg97Y5HpZqbOv3
 Vjlw0bo9BKeAEAM1jgziWZwOtVZJUA==
X-Authority-Analysis: v=2.4 cv=ZsHg6t7G c=1 sm=1 tr=0 ts=68d654f7 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=SJhbF7H-XdBiwAQF7hIA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_02,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171

On 9/26/25 9:07 AM, Pankaj Patil wrote:
> On 9/25/2025 1:25 PM, Krzysztof Kozlowski wrote:
>> On Thu, 25 Sept 2025 at 15:29, Pankaj Patil
>> <pankaj.patil@oss.qualcomm.com> wrote:
>>> From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
>>>
>>> Update the pmh0104.dtsi to include multiple instances of PMH0104
>>> DT nodes, one for each SID assigned to this PMIC on the spmi_bus0
>>> and spmi_bus1 in Glymur CRD board.
>>>
>>> Take care to avoid compilation issue with the existing nodes by
>>> gaurding each PMH0104 nodes with `#ifdef` for its corresponding
>>> SID macro. So that only the nodes which have the their SID macro
>>> defined are the only ones picked for compilation.
>>>
>>> Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
>>> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
>>> ---
>>>  arch/arm64/boot/dts/qcom/pmh0104.dtsi | 84 +++++++++++++++++++++++++++++++++++
>>>  1 file changed, 84 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/pmh0104.dtsi b/arch/arm64/boot/dts/qcom/pmh0104.dtsi
>>> index f5393fdebe957ea0caf4bbc16117374b4759bda3..d3ea7486d842ec813a79268fc1466e1513426d78 100644
>>> --- a/arch/arm64/boot/dts/qcom/pmh0104.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/pmh0104.dtsi
>>> @@ -6,7 +6,63 @@
>>>  #include <dt-bindings/interrupt-controller/irq.h>
>>>  #include <dt-bindings/spmi/spmi.h>
>>>
>>> +&spmi_bus0 {
>>> +#ifdef PMH0104_I_E0_SID
>>
>> NAK
>>
>> I'm surprised you decided to ignore all existing discussions and my
>> clear point in this.
>>
>> This is neither readable, nor maintainable.
>>
>> Please join community in discussing this, instead of coming with
>> another invention which I already said is poor.
>>
>> Best regards,
>> Krzysztof
> Please ignore this series, it was sent by mistake as v2 prior to v1.
> I've replied to the cover letter mentioning the same.
> 
> I'll update the v1 and re-post with all the comments taken care off.

(Please make sure you mark it as v3 then to prevent confusing the
tooling)

Konrad

