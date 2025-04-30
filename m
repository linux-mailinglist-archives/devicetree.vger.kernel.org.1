Return-Path: <devicetree+bounces-172370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 57CA6AA48ED
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 12:43:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5082D5A6708
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 10:38:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD2512586EC;
	Wed, 30 Apr 2025 10:35:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cNMaMoOl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10278238C1B
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 10:35:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746009359; cv=none; b=UB4Fnn2OvTYMilSzA2sV0PZ6v2UfoXH+wRRPKl4/VohUmX8G3VV7d0M52S/1/B70ikwr2hF+LtwxEUAyecHWxZnZpLSCzDU+uy1czeNz3nhBk1KTTZaj7h9WjIJvBqosq6Hwnysdst/YykvwDOtrBQvysM+2+Damj0k0q8OSiVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746009359; c=relaxed/simple;
	bh=1qKBLvY/eYkZ4HkLzjSBXa9LYhTcMVE86RoGAwD58HU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CO4RQwy8DejxpXgUmT+BDmZp7na4sPLR8uruKGr4NkMqLGK1EIz2p2SgcW+4ZpR6N8dT4g/7ufJOsiuFOngOh0za/YrDG5e42aTWAlAEBF0u8q/pIod9NUw5C5KU0rOM54TyTklpRgERs0Ei7GAOz8eMONR6KMLQPxHVEjrrB0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cNMaMoOl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53U93KdD021071
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 10:35:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qIplIxVQFRQA47SBpjXsBem0pTeYTZkJKwbGOQPx6IU=; b=cNMaMoOl/c8zaL6m
	rn1oFgm/tjezYbC/HCG1fxpcelw3mcGn88nHmYfH+vy/URLy9N6Ehy0H/BZZREFg
	uW9dwI9dMDwAF1y3SCIllGJdIF7CJNAbP1wgk9a33lxw6B+VICxvLQnZWHEElABS
	9vDLmjy4oWxoJRW55eP9QqTpRAIHHGZXW/cwRI/2BSg47T+Q1Hoffk0ZeO3ZEb+8
	XJnn21T8aeLiQHBBoVSRWxZ4ZZ8Ou3pjtpIqql0Iby7ee7eukclBHJHQ5WaSoGeM
	tZAk79tGTrRV3IK9BjP20E5eMD1J05QzzVeUCUxWOnmG7KvW180Zkw4+twcE2eST
	VcPqbg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6u1st6f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 10:35:55 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-476786e50d9so15498991cf.1
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 03:35:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746009353; x=1746614153;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qIplIxVQFRQA47SBpjXsBem0pTeYTZkJKwbGOQPx6IU=;
        b=c1APXyElVnW2y3z6XilMh+Mg0Ad5PYsrOq62b4swg57o9eQH4QT0S/L+XSIOBuBTFk
         TDCQKBYqN+lg9gm8mhUKaF9LBJsm8UwwBgaRYDkYxNwJ/VbWItzaRBb95vUUCdDxiyQj
         7RGRRIG52WfoZoEmeytMlTmHC/LGUMOY5nzezF0+D9GA0WW35r1bP1gfXMUTIbzwlhDU
         lj3jXbJ4eiDnMmBXvVnjVhlvucRiFJ55alNfGDNKyLBHx7A+9/nxInxBSeE4rrzrrdnq
         k/J4PlgMvSkiGEiDHaw6nN/Cn7kVB/liYWWzaznaJTNBbbdRJN/NwyrWlQze4GEEcJmN
         HeuA==
X-Forwarded-Encrypted: i=1; AJvYcCXIG492nKUsu9CgO12lDXKngvVVfe1mtJyw4nMxK/v1ZEmnDlBUmqS8/vUOJbSguvTZnlwS1yXdUoqw@vger.kernel.org
X-Gm-Message-State: AOJu0YzmmOdRXxdg1ADxy9suN+S0W1GEQ1TSlyBPhGzOsf3+jFj7SZjh
	Uj6UFUYJ7CqT9a6VqP/NexepoU4eP9qx3BGcoeSUs5OmoXjHMFuwJdhpvK7pEztKyNIGbdyPMIY
	0PIIxXo8b5qMXGz49eo/LZxOBattjiiAMuOFusNtPUy94mgkK0fT8peckT2sb
X-Gm-Gg: ASbGnctvVgm0EJai4KOtG7fhCNxJVcsfuc7spLpoVzSmnE3T0dFpJXN6u4ZykGdPy4m
	HdhImtceg5p7cndIEeP/H3dWCbNdsn9tq2jvjq4EMJ3F6TVe1b/zfwCT9ypA8MVqwt0J77xr7Nx
	Z5yujnBGt72/BYXlH9h50yL9LpHOKpFGWqtwLpKMftVpB9fVzpO+/GpEaFhXdPZn/b7r1DN7FDk
	EpAv9xCjgAF5I16IDeq+2R/ZZ3P8PAaCJg1r5gdh3Xv9PQrPVVwKud8yyruUPcfqyMYDQborHVj
	eP9ihjklbTPqirZOw9IfR4ezYrxscYkFefasWstX6MSa+MvaGDVCh+mwu0VlJEECq/8=
X-Received: by 2002:ac8:7f06:0:b0:47a:e710:108 with SMTP id d75a77b69052e-489e1acfdf7mr10787271cf.0.1746009353549;
        Wed, 30 Apr 2025 03:35:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFuxrdliL6vbr6r8aRJl/KXW/EJxjEm2uUrqhJUgG4WhRbhXeKv4jPjowBGXvbwoVE+GqkEwA==
X-Received: by 2002:ac8:7f06:0:b0:47a:e710:108 with SMTP id d75a77b69052e-489e1acfdf7mr10786971cf.0.1746009353120;
        Wed, 30 Apr 2025 03:35:53 -0700 (PDT)
Received: from [192.168.65.132] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e41a850sm905527566b.32.2025.04.30.03.35.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Apr 2025 03:35:52 -0700 (PDT)
Message-ID: <b39f9d2b-17d0-4619-b676-f476d17ffb6b@oss.qualcomm.com>
Date: Wed, 30 Apr 2025 12:35:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/7] arm64: dts: qcom: x1e80100-*: Drop useless DP3
 compatible override
To: Abel Vesa <abel.vesa@linaro.org>, Sebastian Reichel <sre@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Xilin Wu <wuxilin123@gmail.com>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Srinivas Kandagatla <srini@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <quic_kdybcio@quicinc.com>
References: <20250429-x1e80100-dts-drop-useless-dp-compatible-override-v1-0-058847814d70@linaro.org>
 <wsdhqocld54ygjrnn6etydorcg6j6uko4ner2dawoomflvu3bp@tq5jbqcahip4>
 <aBHvwUAISo2JhYSz@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aBHvwUAISo2JhYSz@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=G5AcE8k5 c=1 sm=1 tr=0 ts=6811fd0c cx=c_pps a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=ZJu6mct0EmN0ZqeJLYoA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDMwMDA3NSBTYWx0ZWRfXzia+eU8EXvO1 vuXK2gF1pr4D+DxGi4q764vMG48MK+b91Pg3gmq1nKoMA1FEbs2GbNGB+Hz4X3EjM1rEVEepvGR PLHu5Ls+TzcjCCbvBnCRqzmSVv3/f7b+dxyiWy93QzeiBTsyof46/ZnMoAnKTUx1n3uPo/C30Du
 qXddVTYwEaGj7CIgKVBlYo/ycMFUnQNLRXnuT7Egfo/Sc8fM3fLeX3Sm8rJuaNHSBP5TfGxoYRn 6mTvbzxESvnu6ChQx1ytUEtiyrfZGF9/PdybjjXwI45/8Zo9ftSyYMdbHBYosKgCnf2h2Jq4/sy mxM0VQhgIemOPV4Tm++G302mRv3b6tHHsYHNl1aJSAcAAPleoylGpdK4OvyNgDyOi313ioF6/23
 o6gWeu6+l3dOMdtXPt0RGQrsGUYI/jwQd1PAPFnpCODEeq3q2P3zxnkIHt6tTRmsYio8qWZY
X-Proofpoint-GUID: i6y24XM9PhxVfrCh7vbfMhejJQcdPiFy
X-Proofpoint-ORIG-GUID: i6y24XM9PhxVfrCh7vbfMhejJQcdPiFy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-30_03,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 spamscore=0 impostorscore=0 phishscore=0 mlxlogscore=999
 lowpriorityscore=0 adultscore=0 mlxscore=0 malwarescore=0 suspectscore=0
 clxscore=1015 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504300075

On 4/30/25 11:39 AM, Abel Vesa wrote:
> On 25-04-30 01:26:13, Sebastian Reichel wrote:
>> Hi,
>>
>> On Tue, Apr 29, 2025 at 10:42:28AM +0300, Abel Vesa wrote:
>>> It all started with the support for CRD back when we had different
>>> compatibles for eDP and DP. Meanwhile, that has been sorted out and it
>>> is now figured out at runtime while using only the DP compatible.
>>>
>>> It's almost funny how this got copied over from CRD and spread to all
>>> X Elite platforms.
>>>
>>> TBH, the best reason to drop it ASAP is to make sure this doesn't spread
>>> beyond X Elite to newer platforms.
>>>
>>> Functionally nothing changes.
>>
>> Looking at the diff I wonder if this part should also be simplified:
>>
>> /delete-property/ #sound-dai-cells;
>>
>> This is done by all upstream X1E boards, so maybe just drop the
>> #sound-dai-cells directly in x1e80100.dtsi?
> 
> Yeah, I'm not sure about that.
> 
> Though the DP3 PHY is currently used as eDP, I think it could be used
> as DP. So I think it makes more sense to keep the DP3 controller as is
> in the SoC dtsi and delete the #sound-dai-cells property in each board
> specific dts. Don't know if it will ever be the case with this SoC, but
> maybe someone will use DP3 with the PHY configured as DP rather than
> eDP.
> 
> Not sure if I'm 100% right about this though.
> 
> Dmitry, Bjorn, do you think that is accurate enough?

I'd say just keep it everywhere, the physical capability of the
controller to send audio streams is there, but is left unused by
the specific eDP usecase (which is determined dynamically)

Konrad

