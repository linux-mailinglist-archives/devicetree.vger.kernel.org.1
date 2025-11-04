Return-Path: <devicetree+bounces-234860-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 262BCC3195F
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 15:43:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A40DC3B6A03
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 14:39:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41A0B32F769;
	Tue,  4 Nov 2025 14:38:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Lo1iWtus";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jeqdo9FI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A036B32ED58
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 14:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762267135; cv=none; b=i2c0X5eFtdblRKFM/hS+xB6tXFH7ARRBTyLuk7dFfrdCsLIJeiD3DRp78cwxh/yXB7FoM/JjxJd8X6244YrLVCknMXP3bH9lbI7zobq6gYOgblOAraM+sThsr2A6LU+QI6IWbjhmMZSz/lRmWa/E001ODRlmv2LrjovT0P15lak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762267135; c=relaxed/simple;
	bh=n8uEns1gPCzEnnS5kvsrzB57W/fnHvxUMsoFiq29f3A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=W64AvuTkWDaHNPM7nZOecJtf8wBQUralqiJqW/6byKx+uTjngTWdsW6LDr5J97yJiwqa4Snw0HToy6/qH/rbuB1r013b2M/GEK2hcd8QzhGsxCcrimLooKbLVmCEJg8EJEzmUs7LjjaRTPERY4jOslSdS307VMNBmV2HOdcttyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Lo1iWtus; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jeqdo9FI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A4Cfli22061814
	for <devicetree@vger.kernel.org>; Tue, 4 Nov 2025 14:38:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pCvjUxK2qI2AJ1glJYXnvVU2CD5vsUJux/1bapVsHys=; b=Lo1iWtus7DH4Inj2
	bOKV3INJroQ6BYb4fWQXKuR1wLR59qXiFf5yI2gwRC92wILDcUth2t9mVTPgVGWK
	CbkJyhnCRpL5sW2B0cidM3LZXh6o3H+yLi6l4vhw1fq6KzcgEOULr5DEbgeEqh3c
	57s8UZDwWd+Mhqim32yG6Cgi+SF6uWWmZ2TkqS9BwqA5HYl5YvVyGJQewRG5BSQW
	fppi08huY7lJJwsDG5Ej9I5V6FoDJhFh5RJibI1XyI1xPox4FQ2PBz6lGkXGnm+Q
	5q1igv3ZIjsVUoenRTZM+bDtdQqVjc1QGDhl+etMEaNhCFWtF4HAvvK273uUEe6l
	xp8omQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a7ex7rs3y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 14:38:52 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8a79a3e23d5so108760085a.1
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 06:38:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762267132; x=1762871932; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pCvjUxK2qI2AJ1glJYXnvVU2CD5vsUJux/1bapVsHys=;
        b=jeqdo9FI5OKXB2xmKAEXdh1lQ4q/3YA0MHSs9lWrQvekCSWqWF8eMILSBcFFB/8gKg
         ZGARmUnVyaz2nRhHafw08MrSyXr3hmQWK/gZMRHe7mzqvbW55qFezZqR6SnjHTRu8NJ/
         FrZ4DfavTldQoRlDAqerk/UDk+iiYrlH+MM9ebd9Yh9zo7EycYmFY2Brv4s4hZuA7s/3
         aKqIKlap57K3c2tOc35cW2Qga2AKjIcODc3PXosuRig5OWnpIm5hlKN6jQwpFdGKuRgE
         A60RNs1AOFSrOsItCTXDUaGGP1izH5x+/z9lXMYbExGxII/9rSlPVjiKt25VSgs6bTPv
         IYrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762267132; x=1762871932;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pCvjUxK2qI2AJ1glJYXnvVU2CD5vsUJux/1bapVsHys=;
        b=J7ES3gWJra130Ix15Gu3/5alZR1VJD3ynd6Q36Iu7ibrJt7HWZOYxG3vWJRirmpBSc
         71UIqmyyxP/a3WS5L2zwVWt04T4GUhCDenzcW1xZ+aEq9gLNdRV2VQ4801Hn33t7zswV
         azXLhXxe3IjmJ5l3Ya8VFGTw5XeC+uBx6Ha5J8cjMTGUXHrPYxLZyaDYAK0SGOqRbY4B
         rsvm7SdMt8BCUuVU6htrjqrF7fsKXfoeRVJhEM1xqYI7U4znIcI6WUSggzFzzLeCtCEe
         2HK7rsUblkn5JFsJqZ42cl+Q8jVw2hin3+yblDMFcvo42nD2X1wSdiNkr0r59afTVL4x
         zEmw==
X-Forwarded-Encrypted: i=1; AJvYcCXDaeb4aIubaPAdgid3SF2pfeNWIyjJ00Bo+BzjmebpQIFpeeL4likOwc0CkMJDiCAzSW61yov+Lh8l@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0pDrtLBKi18/puUi3KaE10jgB5z/EkcxLf2wHMtxMEuAv2v3W
	sUZ2rL9sDnKX0BPcOz+NxHKsvvZyJ0Xm5QF2R59oFgPSF0+B93ctlDVdSrOCA3EnMvC7H/P8TjD
	LLBd/q9MOZSq1rFMaS6Sm0GOfoQDdVY0rdN+XTZPWTU1V3svDGHs9oro7SnfoJyfJ
X-Gm-Gg: ASbGnctP1OnCyTn21CuR31or58s6ISr2N+E4Tsd2p2lK4g6KnKLA6S+KB0/iejBTRy1
	irNkeXrXrbVPwQjMfwkxOLge1OVpR0AbdLVxnd+bf2nwCrJoxrrTCO8EXJG0R2c/mQjIDxfH1X5
	B5gQxegpzPvwXO9WA+Np8vBztRQqPme1bHNt/sCXWkpTXTBpPzeNNPHPNDoe+cgvj6zSGQ+T2Zs
	ijT/IHhpczRDudDYh7u9NMeGiEPxT49jlAt9A62YvFuaK9l8xChe+9CDORJ3QK6rGaitJ5ipuIr
	rpdM5wVO7sxn3rm6RzR3bnjtpyDTAguG/KTEgTxQwaiXc0Qnw87ROoEF0j7+WAHq4gZO8xmpEpC
	EUrOIJhxdbJ0Do8omjQ0Oka2oQTQpZ49kApfVo4eFS8YXRQqFx+EjHL0n
X-Received: by 2002:a05:620a:4726:b0:8a3:9d53:e1e5 with SMTP id af79cd13be357-8ab95f67474mr1432855285a.0.1762267131833;
        Tue, 04 Nov 2025 06:38:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFS2GLc+hVbO8T/Vlug0vDmh59osI7NcmoVGwBw43NXmuf2VcczYcHIo8ZkUm6QzTIQmT/fBQ==
X-Received: by 2002:a05:620a:4726:b0:8a3:9d53:e1e5 with SMTP id af79cd13be357-8ab95f67474mr1432851185a.0.1762267131360;
        Tue, 04 Nov 2025 06:38:51 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b723d916e26sm235838366b.26.2025.11.04.06.38.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Nov 2025 06:38:50 -0800 (PST)
Message-ID: <8cf870a8-706d-4514-a87a-a69b64521ab5@oss.qualcomm.com>
Date: Tue, 4 Nov 2025 15:38:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: soc: qcom: Add qcom,kaanapali-imem
 compatible
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Robert Marko <robimarko@gmail.com>,
        Das Srinagesh <quic_gurus@quicinc.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251102-knp-soc-binding-v3-0-11255ec4a535@oss.qualcomm.com>
 <20251102-knp-soc-binding-v3-1-11255ec4a535@oss.qualcomm.com>
 <20251104-glaring-rebel-pillbug-a467ca@kuoka>
 <790ca394-cee2-412b-97d8-c6416b843010@oss.qualcomm.com>
 <b6717831-1840-4b9a-aade-ab2248e3f75d@kernel.org>
 <9ee07db9-508e-4c08-8f79-6ccfd9b646ab@oss.qualcomm.com>
 <6af33c1b-5b95-4efc-b429-5bfb9ee7caeb@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <6af33c1b-5b95-4efc-b429-5bfb9ee7caeb@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDEyMiBTYWx0ZWRfX6d2xyOTP6TOl
 m/d6yEB+zp/Z8PY8etHm5rFYE+ZFIsOC5UhGTMbnxPBAvQYXXGLJjb+cnK50nN4x4ru+flIFCqD
 z8ue2lwTmJTLpk7EGOBFMMuLvmVYbUucmiktV1xXYRzsb1jQ5HcBxtCvmvq5bFhdPaXI6xaGVst
 qKDzL93Jps8KXIkmiuIkqB9r6dYUcusEBzUOCV05QPNs/6kC5/FWn+aHHJAMnqjq4k9XY+k6kZn
 mPUvNZsqvu7/TYmBHIzg1UlkztGbX/h+RVkAEfBJKohIHvKEEbK6dW5V5G4t5scWXWvCmdi2rdP
 Dd7Yizaz111OduPUpOnFEWeEc1RQa7UB/U12AvFNYvZLbiOOo9m/obesj1obYx9niq08HJPrOVo
 Xk7VCEi03n03h7E9zsPor4bWG+TcWw==
X-Proofpoint-ORIG-GUID: _K7A6bXwJX5Yyuel0a8-Je2QQNSqwkMn
X-Proofpoint-GUID: _K7A6bXwJX5Yyuel0a8-Je2QQNSqwkMn
X-Authority-Analysis: v=2.4 cv=auy/yCZV c=1 sm=1 tr=0 ts=690a0ffc cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=6hkmGreWcf60HrXDHNIA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-04_01,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 impostorscore=0 clxscore=1015
 priorityscore=1501 lowpriorityscore=0 spamscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511040122

On 11/4/25 3:37 PM, Krzysztof Kozlowski wrote:
> On 04/11/2025 15:35, Konrad Dybcio wrote:
>> On 11/4/25 3:26 PM, Krzysztof Kozlowski wrote:
>>> This I got, but nothing here explains why you need generic compatible.
>>> To re-iterate: there was no generic compatible before, now there is.
>>> Writing bindings and numerous reviews from DT maintainers ask not to use
>>> generic compatibles.
>>
>> OK so let's not worry about a generic compatible. IMEM exists since
>> MSM8974 and it only had major hw updates with SM8550. They don't
>> impact the software interface though, so qcom,msm8974-imem is OK.
>>
>> There's a separate control/status register address space for each
>> instance of this IP (usually far apart from the actual SRAM pool),
>> which Linux doesn't have to care about.
> 
> Just use qcom,kaanapali-imem - that's the first device here without syscons.

So we don't want to move the existing ones over?

Konrad

