Return-Path: <devicetree+bounces-223826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E8BFEBBDF6F
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 14:09:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 476973A69FA
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 12:09:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A452E275AE3;
	Mon,  6 Oct 2025 12:09:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EmRt41tv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13A9A262FC0
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 12:08:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759752541; cv=none; b=ZW3ZQ+7w9QQ19042hDzdM3TV9TDrYRG4sDbOibmEndTHCRDKuDi5Ewv9qS6D5lmamDQYbIyPkhzDVY9kr9NC86vnLDa+Htyy5JRhI1plAToXNMviJ+tveyP2I9O1WtEA0SIn5EPeGVI/5jwFbKHWUPRNfIiTPt4EAl7py9IDZwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759752541; c=relaxed/simple;
	bh=hrqK/XFzvEiAZUlds01NLi1j42ROedVIuEKHM25cYJ0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VMpX1F7SlBncNSTxl9eVvA2TEDx3V6AyefIqr8+Ywxw9NrY5n+1bLIezgv8WAxgbhHFu8b0bCi9TOSpVtEzWX/Njp4UbLM6/uTdY8qoPTrBXawmGyndK/nBXfnxH74lF4vKIVok+s9dsOPiF6dI3wvckob2rW+OqM0SreGN+zX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EmRt41tv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 595Mnwih006757
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 12:08:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HNgg2RXM9k9KELLP5e9ztNxYJsbYYa1dg1GbAma4nx4=; b=EmRt41tvImqz4VUv
	355WGeyN0Gb4/ActV7Oxhv+/xm+uUOypwaqvoVmPKy3IiXT2Htol6RbIU7i7u9q2
	iOWLsMh+gJNLYoPFAURdBMUOPnVaZToYFyzD3dbn7I0zr6z65yst6uerMhIayNpk
	m3j/3jQ2KriXVc2R8keIynL9H1JKuO2qqQaH3lr3pHKOkEnJ+3ttYjYhf+NB8vKU
	sCbLV7TzT6zsjK6DTSi3WEQyhK0usLwJfDY+sPf7BkhglMkTZt29t5qGrzRuU+8x
	QspsoMgH2UTBS0bf6k1t/TXoW4PFAYTJVuCq6JwZxEHh52V5r2KOL2nK03hbznoe
	lN3wMQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jtwgkuq4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 12:08:58 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4e0f9bedf1aso15457051cf.0
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 05:08:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759752538; x=1760357338;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HNgg2RXM9k9KELLP5e9ztNxYJsbYYa1dg1GbAma4nx4=;
        b=tUVwqfPD1Vwt84FrpHpqDb5O8Sexk/cu03Vj3xfBGwIbyAmhUIEGUk+c5HIj8gi+CV
         t/otPpimpKWzZ7B4ldoGknias/LwQTdue8DhaFrQidZobFpn1CfEKkmlRPHdNZ/ZS1ns
         +eKhjLzqdew3nerK11TTWuJI3X3ZqE4q5ZvJCK6TlKZWyylorW0nnZ6CXzsUoiollSQd
         +YdEt5+kM/DheqaQGAeS3eg8BItk96BQopU7LW1c0iURvyHnTSWAvYVMph9gwPU58kID
         IOBagz+hGUer3JPf2EHH6SoAS3wF5EQj4EA/EKhVOSq8zY/sIIwEQNRj7ILO2poJs4WN
         aPcQ==
X-Gm-Message-State: AOJu0YwgGfXBVbtK1I8VRTnYDZMpKff+oMjRaPvRWtEjQFuPnw6HdUrz
	mLOVT38AglW3QAjuQmQfk52dVfEJX16FhENprUyxcZgZIFhj4zYPqLrRrCyUzBlUNzs080HE8Qw
	5Jm7V1F6gxDokmhoOLper+cCooiM53eRO5HZn+i/nOIGqNahcZYnCA8+bFJj2cr/3
X-Gm-Gg: ASbGncuFAF1k2BW1Fxiblenfev+UdlkBg9BmsKA5FdJSJrZ9Q7G7ktRw/0uucFafTX0
	gm8V/fXTcn7Vvv5XkyJQ7N0pSNjY0WKqwXmC+/hlkz4UXaZkiuakX2nyO/9OwSqFT8u62np6pbl
	Igaznkm6n8RbAj5lXbjVVK0Vb/6cLHfaxpEvVtLX49295tDgTfQJWLzwyxkYX3G2ggZ6e10/pR4
	BhI8Sht4yORLQc/eIyHOMukhXs2mad2ngw6VODDoahaO94htj2Yblq+YiKfuIhP1uYtKYgiZQJa
	Pj+Hb3gZ/bEvd3H3AiN+CvaMWMEV7TeWvITwD6WjNOKINbgf/5GgMk3dm+8w82UIsK12MkSj7mj
	mJpwAMzZX3sA6VPnI4YwhWE6TadE=
X-Received: by 2002:ac8:5a96:0:b0:4d2:c24f:8495 with SMTP id d75a77b69052e-4e576ab6f37mr107262091cf.10.1759752537661;
        Mon, 06 Oct 2025 05:08:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG8bowU3R1TIDKe1GmveF4bSNUeYIkMMrOzWhLy75q+bqmvRg7vOQ3n7jj9olpyE3GwUkaAtg==
X-Received: by 2002:ac8:5a96:0:b0:4d2:c24f:8495 with SMTP id d75a77b69052e-4e576ab6f37mr107261611cf.10.1759752536958;
        Mon, 06 Oct 2025 05:08:56 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4865a83c85sm1134746866b.27.2025.10.06.05.08.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 05:08:56 -0700 (PDT)
Message-ID: <7875ad35-366d-4480-979f-426f5760aa2a@oss.qualcomm.com>
Date: Mon, 6 Oct 2025 14:08:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] arm64: dts: qcom: r0q: enable ufs storage
To: =?UTF-8?Q?Eric_Gon=C3=A7alves?= <ghatto404@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250920014637.38175-1-ghatto404@gmail.com>
 <20250920014637.38175-6-ghatto404@gmail.com>
 <f032db60-d625-4814-a5c9-0610618b7351@oss.qualcomm.com>
 <97CA26D8-2CB5-4F90-A4C8-BCD81C688F35@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <97CA26D8-2CB5-4F90-A4C8-BCD81C688F35@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAxOSBTYWx0ZWRfX/U6GiRJGexmt
 lv8hm/dEq31TXu5Mmolii2vqmGEqgiiJCoxtCTGvwjpH6gIx8Knpv/8CmXPKpbbleVrD/bqHGg6
 FoV9+3UICv0DB33lTNCIg/OpQ0cE8BP543RIcnWZ5TVyYqX4/93MdaFvfJh1vIO3paZHM8qAZWR
 aYIJqDh2Ticohvf6Tg6RS4NutSqBVmhNKyv63qn03QIue3ocGi1vl1DtsLYEGa8GfuxNJvcxBye
 Y5HqVhaUdrZhX3y4ErfSKHsevo2+44JTKp4Gw4NZIGlZPGakLgdi64tKhPRUbp/iKOLw6ZZZjp9
 GV11X6p52KttlGqnj7SGloQ7Zmo0OfnHeWU3UwdB2WNjREy+vu+JQFRCQ/VmmZle9X7qZVSmT/t
 aMTtX6dm3Fu3zEn29UTmguOhRyzTYw==
X-Authority-Analysis: v=2.4 cv=B6O0EetM c=1 sm=1 tr=0 ts=68e3b15a cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8
 a=55atk-L8scUrgOgygXAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: jNKeSyDw9VEKLdb5rPLRlc1VWRncWG76
X-Proofpoint-ORIG-GUID: jNKeSyDw9VEKLdb5rPLRlc1VWRncWG76
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_04,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 adultscore=0
 impostorscore=0 spamscore=0 bulkscore=0 phishscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2510040019

On 9/25/25 11:37 PM, Eric Gonçalves wrote:
> 
> 
> On September 25, 2025 10:07:31 AM GMT-03:00, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com> wrote:
>> On 9/20/25 3:46 AM, Eric Gonçalves wrote:
>>> Enable UFS internal storage of the Samsung Galaxy S22.
>>>
>>> Signed-off-by: Eric Gonçalves <ghatto404@gmail.com>
>>> ---
>>>  .../boot/dts/qcom/sm8450-samsung-r0q.dts      | 39 +++++++++++++++++++
>>>  1 file changed, 39 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts b/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
>>> index c088f1acf6ea..0a55ce952f93 100644
>>> --- a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
>>> +++ b/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
>>> @@ -146,6 +146,24 @@ vreg_l5b_0p88: ldo5 {
>>>  			regulator-max-microvolt = <888000>;
>>>  			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>>>  		};
>>> +
>>> +		vreg_l6b_1p2: ldo6 {
>>> +			regulator-min-microvolt = <1200000>;
>>> +			regulator-max-microvolt = <1200000>;
>>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>>> +		};
>>> +
>>> +		vreg_l7b_2p5: ldo7 {
>>> +			regulator-min-microvolt = <2504000>;
>>> +			regulator-max-microvolt = <2504000>;
>>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>>> +		};
>>> +
>>> +		vreg_l9b_1p2: ldo9 {
>>> +			regulator-min-microvolt = <1200000>;
>>> +			regulator-max-microvolt = <1200000>;
>>> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>>> +		};
>>>  	};
>>>  
>>>  	regulators-1 {
>>> @@ -370,6 +388,27 @@ tsp_int_sleep: tsp_int_sleep_state {
>>>  	};
>>>  };
>>>  
>>> +&ufs_mem_hc {
>>> +	reset-gpios = <&tlmm 210 GPIO_ACTIVE_LOW>;
>>> +
>>> +	vcc-supply = <&vreg_l7b_2p5>;
>>> +	vcc-max-microamp = <1100000>;
>>
>> because you set this, you should also set regulator-allow-set-mode and
>> regulator-allowed-modes
>>
>> Konrad
> Why is that necessary?

Because that is then translated into the mode selection, based on
the aggregated usage

That said, you may also choose to omit this if you want to run all
regulators at high-power mode (less efficient at idle), which forcefully
ensures you're not hitting any current limits 

Konrad

