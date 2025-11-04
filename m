Return-Path: <devicetree+bounces-234816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 82863C31146
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 13:53:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A739C4F1258
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 12:52:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6B7E2EBDD9;
	Tue,  4 Nov 2025 12:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="I1ajb7Lz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="M2iOnrkE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA842EDD58
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 12:51:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762260714; cv=none; b=QvFBgQNS0tC+0edJQ2Lbv6IwTZDnCTrJn/xQevvz2+/YQ2ZobO1mx9QSAPVjq1kqzX71Mbvg88dIQRsO45DJ2AONTVeS3okoyqjfJeW97Lms6aaQdO5ved9v3KgVbyDw30tivdtrXMwtmWRbuzrj8bmNkoqDaCAvTmYgN5JTOGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762260714; c=relaxed/simple;
	bh=3GxJQierKYpfNjMAZtePaH/hGr/R23DzRiCAO2a8Wlk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UqBe+TnqOo7gBO1E4vwBGBVrzdz27g+bjOn4h+MGIc4DaFTiNoHnUkHU7ODVCToSxDvb9SDYMax32FACJoxwf1gv5hO3eenvx/RCJEAmcsJKVd1Gr0N2JEArxrE7dJmNZZ8MWvNJ4ymPsitDnk9HUixy4YyEdEm1rZmbgagK+MY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=I1ajb7Lz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=M2iOnrkE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A4CgEdw2026267
	for <devicetree@vger.kernel.org>; Tue, 4 Nov 2025 12:51:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nGMcEo5N0s57f7TFRVnqDseGGUisgNaE71hwEncLIRY=; b=I1ajb7LzVcNvA2Cb
	UNR20zxCt9nk8RxZKs6m4YLUTJSyS/wzfd9E/47jDt6J8yjSjqy8+MA8Q4CG+hlS
	KyxK/SknUpMmefNvjOBrB74MFkZJNUeTxFKpLTnuhargptacmW3AIvPFD2NT40TK
	PdbByGBjPf5Ib+hEJ75zwzNRYrcmEYfv7FMExCAr6CsjWqh61Z41wfCTBKYCg+Xv
	bqGVgSlZ3ZdrMo7bi7qJ+9vq8EndXWBNlaztBmkV6Brm3vZn8jq+CWDMyRVC837q
	GxCInT1XSOeWkRkLHylu7kSahwVkXMx4ASevvJdbe8csWpnpqp0r+T0NruEV/6zk
	IFF7qA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a7b6ps6r0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 12:51:52 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4eb86039d9aso15844711cf.3
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 04:51:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762260711; x=1762865511; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nGMcEo5N0s57f7TFRVnqDseGGUisgNaE71hwEncLIRY=;
        b=M2iOnrkEoNVIkrNqyonMOy+9yjxo2zHM4imrwXq9BN1fqu1n9+QvkRm+3XXe/7WhCZ
         VEWz0ljjsnAMVVXD01515Ze86AZIApFB7zuI3vJH+OGs0LtqdAOMmnHcWmUykLxwNM7w
         71hOuLEqdlAl9GRUsDAU2PGQr/qmyWDTZLT5u96OJWbcKQMcI9kKtIWr++6ggaMED0lA
         U7UikAcuc7Ol3I/YJ39hKl2UndQD+N4N6f+dV6XPqUEA+VAQI+W+gZ1zWqpXJ1xeGOPX
         9ZDWeLKnkSTV7rBqCrZI5d1vT5pwaE0kLS7jJHqdQT+sq2zbf6KgYdmw1iXuYmfoV4HL
         k3uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762260711; x=1762865511;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nGMcEo5N0s57f7TFRVnqDseGGUisgNaE71hwEncLIRY=;
        b=rlaJbdgbHnhA6zUdpAi5XOCIgXjHKU5x6UyV5dtst/RjdGcuFCqZKL0CXNCbUA1ahp
         Q7iznA+T1ILtsKv2OdMp7Ns8RYjMsLJ/xTL84euQRjofox6Nm/nJ//LsrY2L5NF9ccrD
         ZQ09sBM23Jx8V7x3zTNGRhhBUJnF9iVdnHDTbdoXkVDKe0BDUeAYdO5SeG0eDGkCfW6m
         Be9fZbltZnQPmHehPkF6+12GAhlgrtmD/4n27rFoeC3mV5PU9L5rGt7nI7r4MK0PRJm+
         Vzyf/wiys+u7jiZwADNVZp6/6/cNdCRhl8pncwrGQsjPp5Q2d0EDegSNXju6Qmzk+W0f
         oBxA==
X-Forwarded-Encrypted: i=1; AJvYcCWAzgGRyXvaC38BoidtQO5Zp9gITdp2irPBTvBCHygdR7YCAwsqKXSmfgYHE0o80QDMJjxu57jbekrt@vger.kernel.org
X-Gm-Message-State: AOJu0YzxlpFlhHdT/LtQGANam79jEXJtDNGBPaDNVV+ejr9ixqYcJhJj
	+OGba7d7j1opIs2Gpdqpexx3lEbYNO38vp/vEuH+Rp6NhDY3/lntY6OPXcFVLy7YvqGfqCLit73
	Yt/sPOHjwbg4WvbGBeptZFZDoFHJEtVOnHGaB/KKuogSqigY75JXLN6f78iJIfqjP
X-Gm-Gg: ASbGncuflRV6DViipS8ehmnHXXqMDOhiyKkxI8yf3pGtYmv67/r/PSXadjf1jufJsus
	ONIfHL3/qlE9KiOUpe8gyHuNrM6K1PcrqHx6CP7mfAjxWIvF61p+Y84sUmN5OviBm7ebEmJhkZ1
	vy7u3NnF44Zk9FCGNrfU8t0m9Um6md88ENP3kGSauAV/vhwObni21X14jjrLlHxA3GHxieVUBu/
	WwqqP6QkcLph7DcuWh6F2cLTDlyZaKf5g8t88gL7JmMJXfn/qnhmRMFC4QqbtNjYJF15M02zdC/
	q+sM4tQkSFu2GIla4ema1ddF7XovL2BbmSNd2TCrbm9ds8skZpYwDZbr/glSQC07g+w/C4eDeDK
	ppjIMFaOJUioAgWOwqWpkN1H5ywUy+6lDfwLsEqMgGzbpiHs4v3HdxNr2
X-Received: by 2002:ac8:7dd6:0:b0:4ed:6e12:f576 with SMTP id d75a77b69052e-4ed6e12f871mr3017511cf.8.1762260710941;
        Tue, 04 Nov 2025 04:51:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEU6St66hSeD14z+3rWOf4yGnqadyqQ8nRKgxFwlsUiVhjRLriVfJzPhJf5CQWAyyU+q101PA==
X-Received: by 2002:ac8:7dd6:0:b0:4ed:6e12:f576 with SMTP id d75a77b69052e-4ed6e12f871mr3017131cf.8.1762260710357;
        Tue, 04 Nov 2025 04:51:50 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b723f6e26adsm205948866b.43.2025.11.04.04.51.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Nov 2025 04:51:49 -0800 (PST)
Message-ID: <19ee7cf6-8b92-4221-b450-75b3e3d66e8b@oss.qualcomm.com>
Date: Tue, 4 Nov 2025 13:51:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] dt-bindings: soc: qcom: Add qcom,kaanapali-imem
 compatible
To: Bjorn Andersson <andersson@kernel.org>,
        "Aiqun(Maria) Yu" <aiqun.yu@oss.qualcomm.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Robert Marko <robimarko@gmail.com>,
        Das Srinagesh <quic_gurus@quicinc.com>, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Eugen Hristev <eugen.hristev@linaro.org>
References: <20251022-knp-soc-binding-v2-0-3cd3f390f3e2@oss.qualcomm.com>
 <20251022-knp-soc-binding-v2-1-3cd3f390f3e2@oss.qualcomm.com>
 <g2iviaqetgxf5ycz2otzkpmmc4goo7xuyjmttuu254bfzqqvkf@4vybjh4eghpm>
 <4eebcb7d-1eca-4914-915a-d42232233f9f@oss.qualcomm.com>
 <dwfvko3hszsoh4ihnz3qdpsugmocbkrbhosijdw5q3bxh64kuo@o74as2li74px>
 <lz4sbvzfiij3qsa4d7jeblmi2vfubc4ltf435sh6tcs53l6fbq@7f3tfm7yiyjc>
 <mwin3lfvpcwxxhsub2whcpibuayk36f4ljrodvithfygqad5w4@cg4h6peh4v4a>
 <ygqgzflpavwgd43e5zedgcijm3lz27nqlzprttalgcroedz45u@ztqkppajpyry>
 <a7cdd2b3-6097-4a8c-a639-af974292cc8b@oss.qualcomm.com>
 <x4rzktpij4ggnbvnuyoli65gugymli5acrmrlovglttpakaauw@o3vu23bjedul>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <x4rzktpij4ggnbvnuyoli65gugymli5acrmrlovglttpakaauw@o3vu23bjedul>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDEwNiBTYWx0ZWRfXwTms/s557jVV
 awqDEX6a79YKGSwItDiO5lBTJ0TJKg1TYOkREIqeXdKUhgKqS+Ip1vXjH7ZqPsb6A1pjSp5r3T5
 eqP+az/4qHb+OWIbHCzfBOpuz+kV/O9HSorVzHkBjGSGGm/bVsIpR8OhNhrzXqTe+6NgYlquNVT
 9ZCgpdT4LGq4wIbZWv5xOd8jhuVp4GNSF+KTk7X9Czukt7aAJwMRVMOZTFJFL1VL7/ePpcCE7AF
 qTqwXU4FEquITEx/lhCSBOL0uftfuY3g++SIL1vdD8DwurwvOFRZoEXg9kMTYyRP+AuM9V0qvSh
 iYEmdW04SnKynojRuyMQX1hVqotrReA57WaHSt30xYUr4TMf/Yx0xsbsT9xTC8R/avbbMxuZVkC
 DmK/2ij9jYmJr4NS/0kJdlbYfCUuww==
X-Proofpoint-GUID: vvznsqREapgd5TFJtsGWuESHCSIE-l5I
X-Proofpoint-ORIG-GUID: vvznsqREapgd5TFJtsGWuESHCSIE-l5I
X-Authority-Analysis: v=2.4 cv=Y4L1cxeN c=1 sm=1 tr=0 ts=6909f6e8 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=yiTxRK5lG8Kk4Q43fuEA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-04_01,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 suspectscore=0 phishscore=0 bulkscore=0
 impostorscore=0 spamscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511040106

On 10/29/25 4:37 PM, Bjorn Andersson wrote:
> On Wed, Oct 29, 2025 at 07:47:11PM +0800, Aiqun(Maria) Yu wrote:
>> On 10/28/2025 2:44 AM, Bjorn Andersson wrote:
>>> On Thu, Oct 23, 2025 at 03:06:00AM +0300, Dmitry Baryshkov wrote:
>>>> On Wed, Oct 22, 2025 at 05:42:58PM -0500, Bjorn Andersson wrote:
>>>>> On Wed, Oct 22, 2025 at 12:34:58PM +0300, Dmitry Baryshkov wrote:
>>>>>> On Wed, Oct 22, 2025 at 05:05:30PM +0800, Jingyi Wang wrote:
>>>>>>>
>>>>>>>
>>>>>>> On 10/22/2025 4:49 PM, Dmitry Baryshkov wrote:
>>>>>>>> On Wed, Oct 22, 2025 at 12:28:41AM -0700, Jingyi Wang wrote:
>>>>>>>>> Document qcom,kaanapali-imem compatible.
>>>>>>>>>
>>>>>>>>> Reviewed-by: Eugen Hristev <eugen.hristev@linaro.org>
>>>>>>>>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>>>>>>>>> ---
>>>>>>>>>  Documentation/devicetree/bindings/sram/qcom,imem.yaml | 1 +
>>>>>>>>>  1 file changed, 1 insertion(+)
>>>>>>>>>
>>>>>>>>> diff --git a/Documentation/devicetree/bindings/sram/qcom,imem.yaml b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
>>>>>>>>> index 6a627c57ae2f..1e29a8ff287f 100644
>>>>>>>>> --- a/Documentation/devicetree/bindings/sram/qcom,imem.yaml
>>>>>>>>> +++ b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
>>>>>>>>> @@ -19,6 +19,7 @@ properties:
>>>>>>>>>        - enum:
>>>>>>>>>            - qcom,apq8064-imem
>>>>>>>>>            - qcom,ipq5424-imem
>>>>>>>>> +          - qcom,kaanapali-imem
>>>>>>>>
>>>>>>>> Can you use mmio-sram instead?
>>>>>>>>
>>>>>>>
>>>>>>> Here is the node: 
>>>>>>>
>>>>>>> 		sram@14680000 {
>>>>>>> 			compatible = "qcom,kaanapali-imem", "syscon", "simple-mfd";
>>>>>>> 			reg = <0x0 0x14680000 0x0 0x1000>;
>>>>>>> 			ranges = <0 0 0x14680000 0x1000>;
>>>>>>>
>>>>>>> 			#address-cells = <1>;
>>>>>>> 			#size-cells = <1>;
>>>>>>>
>>>>>>> 			pil-reloc@94c {
>>>>>>> 				compatible = "qcom,pil-reloc-info";
>>>>>>> 				reg = <0x94c 0xc8>;
>>>>>>> 			};
>>>>>>> 		};
>>>>>>>
>>>>>>> other qualcomm are also using imem, could you please give more details on why
>>>>>>> we should use mmio-sram here?
>>>>>>
>>>>>> https://lore.kernel.org/linux-arm-msm/e4c5ecc3-fd97-4b13-a057-bb1a3b7f9207@kernel.org/
>>>>>>
>>>>>
>>>>> I considered exactly this when I wrote the binding back then...
>>>>>
>>>>> But the binding defines mmio-sram as "Simple IO memory regions to be
>>>>> managed by the genalloc API." and the Linux sram driver follows that and
>>>>> registers a gen_pool across the sram memory region.
>>>>>
>>>>> I believe IMEM is SRAM (it's at least not registers), but its memory
>>>>> layout is fixed, so it's not a pool in any form.
>>>>>
>>>>>
>>>>> What Krzysztof says makes sense, but rather than just throwing a yak at
>>>>> Jingyi, it would be nice if you provided some guidance on how you would
>>>>> like to see this turn out.
>>>>
>>>> I tested, pretty same approach seems to work:
>>>>
>>>
>>> Now you're shaving at random ;)
>>>
>>>> 	sram@14680000 {
>>>> 		compatible = "mmio-sram";
>>>
>>> You can put "pil-reloc-sram" wherever, because it will perform a
>>> of_find_compatible_node() to dig up some node with the compatible
>>> "qcom,pil-reloc-info" .
>>>
>>> In other words, this line created a genpool for something that really
>>> isn't a genpool, but luckily that didn't have any side effects.
>>>
>>>
>>> There are however other users of IMEM, such as the "reboot-mode", which
>>> relies on the "sram" device probing child devices, and is implemented by
>>> "syscon-reboot-mode".
>>>
>>> Perhaps the solution is to not support any new users of that?
>>>
>>>
>>> But no matter what, the definition "Simple IO memory regions to be
>>> managed by the genalloc API" will never be true for IMEM.
>>>
>>> And as this isn't a syscon, simple-mfd, or mmio-sram...how about making
>>> the fallback "qcom,imem" (in this same binding) and omitting any
>>> implementation until we need one)?
>>
>>
>> Totally agree. We can remove the "syscon" and "simple-mfd" compatibles
>> for Kaanapali.
>> For Kaanapali, the reboot reason does not rely on imem at all—it uses
>> nvmem cells instead.
>> Previously, the syscon-reboot-mode required "syscon" and "simple-mfd"
>> compatibles for older targets like APQ8064, which used imem as the
>> reboot mode solution.
>>
> 
> And there's
> https://lore.kernel.org/lkml/20250527-topic-ipa_imem-v2-0-6d1aad91b841@oss.qualcomm.com/
> which Konrad pointed out, which would also work with this model
> (qcom,imem fallback but no implementation).

Hm sorry I skipped this thread and started repeating similar points
in v3.

Ultimately I don't really care either way (mmio-sram vs generic node
acted upon by different drivers), but I do care about closing this
discussion..

Konrad

