Return-Path: <devicetree+bounces-178830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 902F5ABD5BD
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 13:03:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2A9DB1797FA
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 11:03:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07D77245037;
	Tue, 20 May 2025 11:03:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="e0YIMzu0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 959B421D3F0
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 11:03:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747739005; cv=none; b=kAfAy01Pgz7mQEmq8qKIRWHInpoq0vSA1M37uExkCE6oF82IdFYW5IK876jfQ8YZof8Ver4cdWszAaF1jHOQ0GAqYnqy62Ml3FvJr0i5UDdnoz0/VXMNr06esCJ/91zr1TxWTnbb5nfq2CWDR5pOS2YLUzc2Gynm9pqswlx5jDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747739005; c=relaxed/simple;
	bh=HASfEQbYU5nw3DzOLjgQQ5wPQXIzEj4uBQ47tMxhs64=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iXL/BsvcPX74zSSCsZ4HRCuyjfnwCZ2YIH5PrkZwVdAUUTq/WpqbCKX9D2LQBCxLqBduqcMscmFOkKU44moR0FyqBEJ2+xmKEUingtgLvwLbuir77B4fNyThwxna9jCRql2nsfraRk4/YDfjdY/cmyzP9n7TrIMPesX565DCg9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=e0YIMzu0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54K7E012021887
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 11:03:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HScz0u+Llm93qijaunpm9s3ySMN/5Pt+kU5sMHKjuGE=; b=e0YIMzu0M/p3LryV
	zXREBg6/u1ASGZsH/hYYEt06tH/XHECsh/OF5v//CNfuWDGbHhQDE4x961grjHDm
	RfU/wlP9E/MJiAa7xIR7yNGMp0yE14BrHijFARg3v/KwNX78Bup8b3jRmuc/+G8Y
	9uEObGdFQnfRUzlvIVImOGRc3sLbG17OqDxQXkQeMb8nj71ZjUBnAkLroDqGSDeL
	KmHCN09mgaWDkcuxG67xDUWEyEjW+1RyuWZwLn2ZS1oNh9o0OOwR8cUQ/DXByqDb
	AXIvMwgWJMGXvG/1pEoS73sjNACkWnC5cuR9wwQ1kouV73eU/zeEcbfjEnqdDG5X
	huiMJw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pjkyqk7q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 11:03:23 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c54be4b03aso141105185a.3
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 04:03:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747739002; x=1748343802;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HScz0u+Llm93qijaunpm9s3ySMN/5Pt+kU5sMHKjuGE=;
        b=cDcx/XJJFZqKakrtrKZiioU4ppNZ66jH6lvnRU7KIzsCNrRw9+zyWbPBCReAyWtmak
         hskAE+HTaj+VTKT0Ot04E0jOKiopPP4V3/dHXR5HzQGRRuWPnS9MyZeqErnlA/2uz209
         guaKEMeindVLvq2t3+4yz781I3W/2iooUFrtb+r+HoBvWzqtS5nI87/Rh+PoZngFRXq2
         Lis79cG4kH2bHp2780yhyufiKO/eTvRkDR32CVKKGWQGW1grw8DVJSAZNbCbGG8RE7UR
         +c+sp+ea6UnxP51igsL1iaQRRcP+xXQWlJc3V4MjGDdCQ466yH7xBoP0lsONBqc56m5z
         ikoQ==
X-Forwarded-Encrypted: i=1; AJvYcCW1wEinm4uD6xAm+qknK9u8FSGRj/6JO/AzirUZ84QLT+H6CnKXJ9uzD0ZfnmF0mMOO0qyWSILZCc61@vger.kernel.org
X-Gm-Message-State: AOJu0YxgOavgOp2VaIYt9eBoxmtp0kFsX9Aq6F2QFQE/7iJQNj3/5UpW
	0GKF4GR+sPt1838Xn0icAAj2nf+e8pvDpTEmrm+Ztmasj3yDocbUUTAZJkl2fHIy0Z2bHdVtlvn
	KaV5Geg5IqzRvp8QMEnlFQQKnxr9OzSMD6FryeXDbfG80GdkpcgJ2bRM7GtlBbwKk
X-Gm-Gg: ASbGncu2XL37oGH0Ey8C4/8Hz9DF87gy4q1Mx15zyGF7Zl2k+yxkBKCHkIJzA7h6U6W
	QsJhDHYYMfU7SwJ4YHYfcfkBB7gS20LNyoXeoW+gf9fcJHO8iEUAZ5SrMave4fw7cjLCvFWDFpw
	JXqxIZAfeThy1677VuisEixgYpp/nsGZtc2FoVjRBpnoG9/jBj6wPpqutSUSDACo7prjohHycpC
	h4DJXGlKieobm5RCvzBcTCqUmQP2/lS/6w3vRcbappBty6+VE5VGz2w/59pSlxtuEQVI/nudb6W
	XX42GAFuheXR7Km12sqhibz0UExzof6CxxCAgMbvxIh1kwJAxUptvzvuY3rY1x410g==
X-Received: by 2002:a05:620a:1b8a:b0:7c3:cccc:8790 with SMTP id af79cd13be357-7cd4672f622mr1130273685a.5.1747739002105;
        Tue, 20 May 2025 04:03:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEL3+EcEBMCFUs5rn/uE71zSGiY5smfjbdn6K4KuMrGJ4AUyjWUYi3XwmVrvc3D2YpXLTwxvw==
X-Received: by 2002:a05:620a:1b8a:b0:7c3:cccc:8790 with SMTP id af79cd13be357-7cd4672f622mr1130271485a.5.1747739001540;
        Tue, 20 May 2025 04:03:21 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6016d193ebdsm6673791a12.57.2025.05.20.04.03.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 May 2025 04:03:21 -0700 (PDT)
Message-ID: <8b3ab2b6-4180-4560-991e-41780658cb52@oss.qualcomm.com>
Date: Tue, 20 May 2025 13:03:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] phy: qcom: qmp-pcie: Update PHY settings for
 SA8775P
To: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, krishna.chundru@oss.qualcomm.com,
        quic_vbadigan@quicinc.com, quic_nayiluri@quicinc.com,
        quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com,
        Mrinmay Sarkar <quic_msarkar@quicinc.com>
References: <20250514-update_phy-v2-0-d4f319221474@quicinc.com>
 <20250514-update_phy-v2-1-d4f319221474@quicinc.com>
 <8e900d20-009b-4cc7-ba1d-52582e414402@oss.qualcomm.com>
 <CAMyL0qPmMVt1Wd4fkQsf_pt8ggJhpR=u7GbXtifczK4Xp8yRJA@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAMyL0qPmMVt1Wd4fkQsf_pt8ggJhpR=u7GbXtifczK4Xp8yRJA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 9ES09gJcMstik2H8OzKinRnD25oqcL84
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIwMDA5MCBTYWx0ZWRfXzRpZFAFnS34H
 Q+11mYLm8MD36rA3E6m4/6AMvp7UqfYW5/F46Sq0nZxx3HLkBQm52981oAY8jYXsHr+Tc78OIKi
 r7C5CbCLCCTRFb0w+ph0gjHhe0ksuITyMAcJWLomiFInNttWoClxeXC4gWpOqelqwNo5IQicUAW
 bsWujV4zzW8J0yEDgYQ1c55e6uXKcgF/MkDzz39rnsrrqrH47kxJ6Bgovhk3VaabHu8a+zvIwS8
 zTTdLBvf3aE13w38R0lBviKRBEptT05DoXkFAtrmLHtrF8+KTFaPStGBwB98QeFQEoNpgyDzpSP
 zduYsoFHtkM2ZbzZECCXZ0MsTzOtD6Cp1JiMvpHJ+Zzdyk+NlKLvhkiFYu7e26oInRgrMfR43wv
 v3bFHISp3Y9zdyEDFQl1ZBzR/cUdofcYJ6imUSW8Rb0oyUn/CFDnBg4JNMbKraOkV4mvWpsv
X-Authority-Analysis: v=2.4 cv=H8Pbw/Yi c=1 sm=1 tr=0 ts=682c617b cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=KnjBw1EjzzqmsG5sd9YA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: 9ES09gJcMstik2H8OzKinRnD25oqcL84
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-20_04,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 mlxlogscore=541 adultscore=0
 phishscore=0 mlxscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 impostorscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505200090

On 5/19/25 2:25 PM, Mrinmay Sarkar wrote:
> On Sat, May 17, 2025 at 11:46 PM Konrad Dybcio <
> konrad.dybcio@oss.qualcomm.com> wrote:
>>
>> On 5/14/25 1:37 PM, Mrinmay Sarkar wrote:
>>> From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
>>>
>>> Make changes to update the PHY settings to align with the latest
>>> PCIe PHY Hardware Programming Guide for both PCIe controllers
>>> on the SA8775P platform.
>>>
>>> Add the ln_shrd region for SA8775P, incorporating new register
>>> writes as specified in the updated Hardware Programming Guide.
>>>
>>> Update pcs table for QCS8300, since both QCS8300 and SA8775P are
>>> closely related and share same pcs settings.
>>>
>>> Signed-off-by: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
>>> ---
>>
>> So I took a closer look and please re-validate the changes, I
>> checked one write randomly and it turned out to be inconsistent
>>
>> [...]
>>
>>
>>> -     QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_VGA_CAL_MAN_VAL, 0x08),
>>> -     QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_EQU_ADAPTOR_CNTRL4, 0x0b),
>>> +     QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_VGA_CAL_MAN_VAL, 0x03),
>>
>> ^ this should be 0x0a according to reference v1.19 for RC mode
>>
> As per v1.19 for SA8775 RC mode I can see the value for this is 0x03 only.

Ah right, the docs are structured in a confusing way..

Konrad

