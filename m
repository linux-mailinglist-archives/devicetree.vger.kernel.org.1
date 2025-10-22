Return-Path: <devicetree+bounces-229913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 77EC8BFD90F
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 19:26:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 33CBE4E2562
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 17:26:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC23B296BBA;
	Wed, 22 Oct 2025 17:26:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PtNdCy5Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5953C28D83D
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 17:26:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761153970; cv=none; b=eXmjjRC7PW5Lp6EQ4jf7vJ0zpY63xWx3P28dZedbsJZ+PfW5z0LcPT38RuOBcWbsddx3QSqMZ2ou8oNvxvCsO76l2QIw13CYxluI8KOm5AVPzj+T50roOcQ5mKw/wBgaw+dRSUh2hVhvtm5ZymGi55dTwDc+/J2sybwIdrbQrPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761153970; c=relaxed/simple;
	bh=USW+PUWWPpnrRXcF74DhE4ODa37KlmuAIX8ScNeYsds=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mD/OtQHYqOqhau3iPTyt2fihrp848sAuZ3SnEbP1sBeqAToGJGvJ7yaAdnXcoAr3X8viH5S75EmKhwbA9cz+bffidjmTflAtlmrUXmwoobcveVuUXdt0jWowKCzhmZw7Zs+4d8e8TVmXc5kiuH1H4yBcqyNoP51C2SoqMQBxltE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PtNdCy5Y; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59MA5jMv020308
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 17:26:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NesJS3g8+KTZBTXGgRuCmgbeZX+rTJmB87NGF5qGsA0=; b=PtNdCy5YyxueVtiU
	g19o95P5Ze7mU5ASc30ap85Mn3fYxQ6VY3TJYb//4GcxAHI3g2PaRjfHCCAV2wnp
	qJJdz1XHO9jk31zl7+LQdy1QlCdzDV2kN2I3MUIFIyMIqfTo29QzgmYyjGwbdB+P
	vJHc7XU/9Ramnc4gsJDGuvaBi2+tE4XznWPo0p5QoG9KqItm1+s3TzdjVudcBSyj
	61/uS+DwPV3TOK5KWc8AYujvORdYaV5A9xWkWvFqbvCc5Bd8+DzJNjmtfgbNSc/t
	bV/RaLXMTSRyfuMWUZLMEuxQjqSLpUu7Jd0cpb9E0ALS9BTvcHPokepcU9g4IXN8
	cLrCRQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v3445jca-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 17:26:08 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-873eac0465eso24817026d6.3
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 10:26:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761153967; x=1761758767;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NesJS3g8+KTZBTXGgRuCmgbeZX+rTJmB87NGF5qGsA0=;
        b=tDJyy/sE6YuBCAMxjd/sHRKa14lS3CacA4CwZ+mwUdZOrBO935uVfhzjvkCwXQ23uE
         etZkFcRCvrg/xoO+jZC8hXsXCNCN/AZ2rjDCd6vqJVb5mb33n28gbq4Wz3xCR7m79gnb
         zIWVxLqpIIK37EerU85giSfqOEPxo05f+TvNr9I8vfDeNBbyQYD63uax82s2cqh1GTHH
         +yXKZvQI3ix8ZYvEQe5/fs53LFVq5IUCCXCGmnrqXpzC8IB+ciKswLOqq+qN3mn142j1
         kVd23QQqClUCcB8n1r60hQUB9id0DSE5w5SbzDVbDSbwTGfjJp6x/4vRWln0LADWoXWo
         Tg6g==
X-Forwarded-Encrypted: i=1; AJvYcCXjDo+jEEXnjhWeVrUR9X4HKPYv4sCOa6r3XpzjQIOPyHrPyUfAs9piEpH3dzmKlz4habuGNPFVB098@vger.kernel.org
X-Gm-Message-State: AOJu0YwlA+X2SnN2hs9BS0j3adkJx6UBw98KJ9KPDoyDcKw65KbuG53S
	RedyOTLnUIIqmSOKJisg147PgNqXff8aZVVtI10+a2kvxijHy5okZKjVhNkDg3L1lBdny96qNfv
	CCqeGNuRNART/xHGGCY8OpGFBwo95Mx77ejMi0pVqprsxKR2Uqrf0xrcCv3fv/wgN
X-Gm-Gg: ASbGncvu7m6KZSSX7Yx6DjhfpAQOXgWpuu9BfNxMHBuNz+BlvPsyE9I/G5mZRoahFML
	/8fBEAKx0wHmTNczNTSMbXXkSBHPJE24FXNwcXtEifr8yD7Aq0XUMtgGqmmQITwnLPHl5A/hGyz
	4ZXu5Ztj4wSLgCHtWVttdUuOFP7sSc5hYkHX+5GCKcfh7/N2IH9Q+3zfH7aLy+erj76d5f0Ilv9
	nRjku/I+YNEbXq1R+iOobqixoiZ9ol43YAAu73zzhxFgUMXqF+51tjRLwpsjro5wUPKa1d4/+Xh
	7HMxZr83Bk7vDP+a+qIWmrcNTV2iDVx9r9j1XGY2Enx8qDh/101KFTaTfPAu8JJST0D+iiUO8Sp
	J0QMQ69WwlIIElYWb4E594IpuxbEYRnRX0x3msdRBNhUw7e2Oa8KYBl/A
X-Received: by 2002:ac8:5a05:0:b0:4e6:eaff:3a4b with SMTP id d75a77b69052e-4ea116d889bmr66574471cf.4.1761153966968;
        Wed, 22 Oct 2025 10:26:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHWoCkyY3maLQwitXsvWuOEnhkY5EIFfN6+Mfenw5bYCU9mWOjKc4pp1kd5IZv8Mh44tk6mWw==
X-Received: by 2002:ac8:5a05:0:b0:4e6:eaff:3a4b with SMTP id d75a77b69052e-4ea116d889bmr66574071cf.4.1761153966339;
        Wed, 22 Oct 2025 10:26:06 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65e7da1a55sm1415503866b.8.2025.10.22.10.26.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 10:26:05 -0700 (PDT)
Message-ID: <9145c0f7-c82c-4b33-b421-a0af24accb39@oss.qualcomm.com>
Date: Wed, 22 Oct 2025 19:26:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/8] media: iris: add support for video codecs on Qcom
 kaanapali platform
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vishnu Reddy <quic_bvisredd@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20251017-knp_video-v2-0-f568ce1a4be3@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251017-knp_video-v2-0-f568ce1a4be3@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: WOWsKjRcMDa-BABsObXsPTAk98FCMd62
X-Proofpoint-ORIG-GUID: WOWsKjRcMDa-BABsObXsPTAk98FCMd62
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMyBTYWx0ZWRfXx486bbDVbrDf
 mi1OaEPe9SabYIhj+FJAKywXfw1jT/ckv6mkzKpmbuu3PvXJDnkxR3RoyiytI8Yj0QBrlUbEA1B
 I3/lDsFf/0A2Bi16IbGCYgA0udsuqEnYuDLqarXX4IQZ3QlflH3bX+tyH1ESDtk0+Leplduy0vI
 pHAfIMzgy8QUyhAgb2TO3eZdftAcT94Yi8eSZ8RlmnYBFOgPWgL8a1Qevjb/bRE2QSNCkWxUvCR
 XVNuEhNV+5K6sZy37AxyKuRy82sMeF43T7uBrkQHekFhwDKcvnHFAxgoLse3f7xuX/vQGN6ANHe
 oBLveRZ2H5PbLgedTHzfAmuZUKGHY3sHgkv/vrUBSgG0lUJqMlfigScJo8a7BGjdsbuuP98HoLy
 6tU11ZYEhD2aEYyfsV6K7M1h5OjE7A==
X-Authority-Analysis: v=2.4 cv=E/vAZKdl c=1 sm=1 tr=0 ts=68f913b0 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=CPx4A68E0eaEKLl928sA:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_07,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180023

On 10/17/25 4:16 PM, Vikash Garodia wrote:
> Qualcomm kaanapali platform have a newer generation of video IP, iris4 
> or vpu4. The hardware have evolved mostly w.r.t higher number of power 
> domains as well as multiple clock sources. It has support for new 
> codec(apv), when compared to prior generation.
> 
> The series describes the binding interfaces of the hardware, buffer 
> calculation and power sequence for vpu4, and add the platform data at 
> the end.
> 
> Please review and share your comments.
> 
> Following are the compliance and functional validation reports
> 
> v4l2-compliance report, for decoder followed by encoder, including 
> streaming tests:

[...]

> Changes in v2:
> - Dropped dependencies from binding (Dmitry).
> - Dropped optional items from binding (Dmitry, Krzysztof, Konrad).
> - Updated binding in sorted order and proper alignment (Krzysztof).
> - Fixed order of newly introduced kaanapali struct (Dmitry, Bryan)
> - Improved readability of buffer size calculation (Bryan)
> - Optimized fuse register read (Konrad).

You're still reading it at every power_on/off, which I generally
believe is superflouous.. Unless the hardware has some unusual
properties, a *fuse* value does not change at runtime and doing it
once should be perfectly sufficient
 
That said, this is not a hill to die on..

Konrad

