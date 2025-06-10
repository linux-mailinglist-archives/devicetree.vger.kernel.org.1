Return-Path: <devicetree+bounces-184331-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E65AD3AC6
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 16:12:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 64EDA161494
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 14:12:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B1A12BD5B6;
	Tue, 10 Jun 2025 14:09:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XBIx6CtN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C6C223ABBB
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 14:09:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749564565; cv=none; b=MT/Rk1M0ZBJNyF83iR9HjWf7zz6bs9E0ZNcTFT01jL4swyMRcCmoV9+u0uj7qUWAmU7l9XcgeiNugAKfBh4HswJdQL6zagHjVBfujEwvdxehonmfAyfDXaZ0did9XE3LDLJcVgBSQiVRB0JmlI11m1UvTu8E1j9ABzmwg5EttB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749564565; c=relaxed/simple;
	bh=64oL1IuUL6LDShJrW7z+kKTXElQQl4FAWK8vmLE6BNg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZbA8drADkOLrZDc16VCvFoRwS2a77UPOFdct800n1fE90ssBS3YwfJk6FlUzZJ91Xbftf8Uv86EHzjpeguanW0NLXVjfbZkZSlZt+BOU35HVAycL/kNjGp1PXRxt4OlylaAwZmDSFdIWJHkQ/uQ75kURolPH2L49vmrU200xR98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XBIx6CtN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55A8hC02026990
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 14:09:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gP4Jd0wZuukS80MSwtMl4EeLp4f+KtIALdhGXarYaPU=; b=XBIx6CtNaZzvB0WU
	a6Jyu2bBHjsjyam2qsljk1cGYDp644pMzaMwezxnE80cCmN2AduJtDXRYv8JlN3d
	sanK5mMNYey47Fqu6Fun4HV5HL39fM2tNcGMVw+/5xlKEfMPCQhxm74xutYPbjNk
	XaEpffomlc94SLryZ8Sgxw5dAuy0uEoiayVkyTL3DLwitAVhSp9g3FsK8BEQzr55
	2WDTdwu/va8MPQfarXvqzRC6cJ/Pv55DOcA+yKixkpExrBoeubw/VjaYwPhI6HKM
	HFNSWPnH5yaVGejWAFrw+7/alL5b6Zvab9F5NB2G+/VG43n2h4cEOh+c7fsifZKv
	p/+c5A==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 474dn69mw4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 14:09:23 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4a6f59d5ac6so8443121cf.0
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 07:09:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749564562; x=1750169362;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gP4Jd0wZuukS80MSwtMl4EeLp4f+KtIALdhGXarYaPU=;
        b=PC+DO1lXth4t7P6NPYBTudO6eLy5g7kAXZvYZcUrImdpNkn0TDGSqf+ovRWSllqEc9
         RKx+/S3SP6CqAOuel1oKVqSaBuj+vDaEylAWaNKYX2h42flL6p/PcavEr75yabhLTsXm
         fVi6q4Fhynpaa5YomhOcE8reb2uUYXK3KZTLHeNW2E+eQYC9DWdtLJel67hIkkQ3/cR7
         HsVg8KZdECuus4VK+hR/+/NLqadP5jfaakcDdNkwSuTPmcqnJBqm73azksgMPaDZi+nu
         q/H+pZsZwWne/SCIutalOlfVp9nl3mctZQA2l/M0yRcQEeNf8ZL5VX64w0PHerDBjDBc
         4ltA==
X-Forwarded-Encrypted: i=1; AJvYcCVT8+y0f9g7JsuRob+Rb5b7PgO7TNPsKvf/GGG7IDDsX05UwDGt7ZlAoOELC2mEXeUbPVln7fPPKkPc@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9kUR9MsU49UVrPY78awpgp8mtYo5OMZv5B8Qv2ggM0XThXgip
	udH7GqOlLSNmKvXUMpeNXWuy/ldCXQ3jA96pQ3qO5jMCGWeTwYdLv795f5GRRvebXTrDa4GYnk/
	K//Apq2gZBgZiQdGfqaIyB3wW9KjNPX4gzhUkaMMuIs+I54dC+0hl6a6GKri+vgOH
X-Gm-Gg: ASbGncvXiGCLr5pSHJxUakA9KEnq69BMNLaN82DmDtNM27HPgczvBj+nUvXcG9KS7HO
	bd4kk6TA43Q4jxJifEAEr2685a8K38YO/kkmFJkc0PkakY+SWbP4OlCASbKB0Fc8e3mcXexS1VV
	QxOMGBcS2YhvBibkV7/gzLz//xAZBi//N3NRLob0bpw9BkC6jXQIc99Vc+y0utx9s3tSezJ0iyz
	Jwn3/9NHW/KDvoEw9UAcoBmLNxaWqK3j5AyB1g6ptuHFJpOVEirCZJLzF8Vub4FEPlVlFTDZIDP
	1VbzWPpMdfS9YVRDfqf9qg8gVoRmWIDq3E/nVDIL9/W7fFvmll66JTDLYFIBMyXWnyTYI8iu2jb
	g
X-Received: by 2002:a05:620a:294a:b0:7d0:aafe:dd6 with SMTP id af79cd13be357-7d331c11a81mr969897085a.1.1749564561943;
        Tue, 10 Jun 2025 07:09:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IERgZgp2y5pYp48AInVGbjIfwav55zx9yDpitn4roraA79eZtpYgR9Fcxn3XP8O4dbac3evfg==
X-Received: by 2002:a05:620a:294a:b0:7d0:aafe:dd6 with SMTP id af79cd13be357-7d331c11a81mr969893985a.1.1749564561524;
        Tue, 10 Jun 2025 07:09:21 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1dc7e770sm729541666b.183.2025.06.10.07.09.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jun 2025 07:09:21 -0700 (PDT)
Message-ID: <73e2881f-b899-45a4-a59e-47593283b63b@oss.qualcomm.com>
Date: Tue, 10 Jun 2025 16:09:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10] arm64: dts: qcom: ipq5018: Add tsens node
To: George Moussalem <george.moussalem@outlook.com>,
        Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sricharan Ramabadhran <quic_srichara@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>
References: <20250610-ipq5018-tsens-v10-1-3a10a5a2642c@outlook.com>
 <f123294b-b944-4723-bd74-713970468d51@oss.qualcomm.com>
 <DS7PR19MB8883BEBE4168DD1682F858749D6AA@DS7PR19MB8883.namprd19.prod.outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <DS7PR19MB8883BEBE4168DD1682F858749D6AA@DS7PR19MB8883.namprd19.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEwMDExMiBTYWx0ZWRfX4OClcUoGmlZ6
 IAqT1JxxQQ3zrVZA9KXcPr9iTm0DbpgmBGBe5N0jy7mjrQtiAy6XGxkCZrWsIPfcBWYbJtWOCAk
 xDO98e/qW75XelfuYheG7N4VAxqXX+BkPLBgjQrTd4ulzpPC0KuWV9RqF8NcNOPlfzvJqHYzw2s
 g4BJNhCHYhUolf2q3M4TloHM5l0Dw0fnuSZ1NPnRPD3SfVHZfltbexzp9n11BDBs7bGb3jxd/6x
 GfsCfe3pg67Bl0CFfjgkq5lbLMmlKtiWPuGKXfD/MwfePYb2r5K/OLy85FobKtQa0z6DNWHUBdo
 ZIbVDOps9OBgzWtK8zvZcTjR9RLA34IN3uaPvDDto3CVlFrYKNwZ+CRznMv3ESke84q9VyFnHZD
 HQGAeTQbXRiwTD+sopG1RjxS9XQULwZ/Qu4MD2b4w6YEbncKMmMKXJPpC9A9aUpH/G7KLqsx
X-Proofpoint-GUID: EoNe_E9wIS_Gh0MDjck3u9i3Lc6BnlTS
X-Authority-Analysis: v=2.4 cv=FaQ3xI+6 c=1 sm=1 tr=0 ts=68483c93 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8
 a=UqCG9HQmAAAA:8 a=E6Ly0PRcfj7wCC4qtTcA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: EoNe_E9wIS_Gh0MDjck3u9i3Lc6BnlTS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-10_05,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 bulkscore=0 phishscore=0 adultscore=0
 mlxlogscore=999 mlxscore=0 spamscore=0 suspectscore=0 malwarescore=0
 priorityscore=1501 clxscore=1015 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506100112

On 6/10/25 4:06 PM, George Moussalem wrote:
> 
> 
> On 6/10/25 17:08, Konrad Dybcio wrote:
>> On 6/10/25 3:03 PM, George Moussalem via B4 Relay wrote:
>>> From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
>>>
>>> IPQ5018 has tsens V1.0 IP with 5 sensors, though 4 are in use.
>>> There is no RPM, so tsens has to be manually enabled. Adding the tsens
>>> and nvmem nodes and adding 4 thermal sensors (zones). With the
>>> critical temperature being 120'C and action is to reboot.
>>>
>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
>>> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
>>> ---

[...]

>>> +        gephy-thermal {
>>> +            polling-delay-passive = <0>;
>>> +            polling-delay = <0>;
>>> +            thermal-sensors = <&tsens 4>;
>>> +
>>> +            trips {
>>> +                gephy-critical {
>>> +                    temperature = <120000>;
>>
>> I'm not sure whether there's any firmware/hardware measure to shut
>> down these beforehand. It's better to have a software trip at 120C
>> than to not have any at all, but you may want to try and find a
>> case_therm or so thermistor for your devices..
> 
> these are the temps as defined for the critical trips by qcom. IPQ8074 has the temp set at 110C, while IPQ6018 even higher at 125C.
> They've also defined lower temp trips in the downstream DTS files.
> Should I try and add those? I could check if the driver supports them..

you can register the CPUs as a cooling device and add some sort of a
trip point (see e.g. ipq6018.dtsi)

Konrad

