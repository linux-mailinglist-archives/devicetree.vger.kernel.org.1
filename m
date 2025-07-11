Return-Path: <devicetree+bounces-195444-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E9B9B01BBF
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 14:16:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 42C325A56E3
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 12:16:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DCB7289E14;
	Fri, 11 Jul 2025 12:15:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="g6k/UOfc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6AC01DFDE
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 12:15:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752236113; cv=none; b=I0Fv6qDm338XBMXm/XJXNswQ6fLH18dq+irfU20MfxolS64HJBlAkPBzAqO7ThGPJn/4SSnQMs37aHXqjpzfcCvO1s3aELyV1KsWrRoBdcQHlrYg+6krq4SBCSsKB5C1fqLZwkErC3MqkCKm2dOchpQC23jHb4LcH7CYwmToGm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752236113; c=relaxed/simple;
	bh=Xjn5ySGEMA9LsrxbMTZ6SdqT5i31QukUV4A0p1xnku8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RSLuhdMc6hOmR5jAZRZPiOdsJ0z9vaCaqroTwzOsGjs4GtW7mAWr0yoNHvSyA5kbKJmsCFqdD000j0e55kcCF6BRKqcUg6Gv3DesSElmIXA9JR24h2pS2B9naCbLV3R/z0288RuJjsL5D34kQP/05bKzSupjtl2eTUuByYzJUbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=g6k/UOfc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56BAp6CQ029941
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 12:15:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5WmSJVa8+LyzMZ7AuALMmZArLhe9+Oxn8lyjPgHFxns=; b=g6k/UOfch29P5CwI
	pqtIbwhQNYh5wJ/FG+d5qTLMv3uOF9J4rZS8PlXlw4ARvQYZ96QHgm3DQFKi2uAz
	v8rd+pwUwbnPMKXl/IyIel8uZh8YOw2CcTn9SZQMGQyQleDmkft5vZE2lYuss0/N
	0HZWFHax5VC52ZJguWDzh5L/tBw9jOjjEMpR5Lieo0mOqKVvvdSTNqTuckwroswg
	MvPwRtZeg1AAEOXG92f9aU+B5xtiRvfVbzo2fVY5JIr+qidvo+E3IboRLrDrEVtX
	3H8NO0Ot3lxVFcNUvMbC+TThfLfawJliw6yrbBHTNGmVZCRiUyfBfZX1oqLCpCda
	FmRWPw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47smberjhs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 12:15:10 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7dff19eab5fso10429385a.3
        for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 05:15:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752236109; x=1752840909;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5WmSJVa8+LyzMZ7AuALMmZArLhe9+Oxn8lyjPgHFxns=;
        b=fTNzDTrmLr+WU1uxbuaBb1ZysaNRjFb+a5eSxuFPmVcZzVW6jZ6oRSgna2JiXdjSXV
         lYr7dFNQJl+fzlazeeIAZuIeJEDmWokNKgsdRbWa7Fo2yQHLqIPeAd8tFW1iTVHCv0ZS
         Qe+xnRjGhubwvkN4Q0oW39/jS/cx8VdG1cDc1dHSUEmz1Um2b4dazlifllG0YudrHa/T
         Euy+uLjyf0F0yofJiuUMujv6WT2kTThsVoQHUXeeUG5AM5Ga0tnGje9Xyx9+4qx9Bu70
         p94ZhBZTkCmGp25xzW5MdNBwL95HB16opaqEylG3pRQC7ouILtUXdrGPvp2jcOcR0XvH
         b/oA==
X-Forwarded-Encrypted: i=1; AJvYcCWrzwgaIKRahQVpjfHmvIyGfzidKB9+fSeLPkLkdbM0Z/C99Us/fsOONyRiSamAwTaZqBL2RVpbL4pc@vger.kernel.org
X-Gm-Message-State: AOJu0YxBKn9U9cIaAa3nZlt4IJ2uDYEWO65VsuVYsm/9dYt4ki7wb8XO
	DvmpZvGn33+1fNDBL7pyQBp3YqLWkWI8+HwGJzrbWhv3Fl7t2miwIrYucdJXVWNSfwU4j6mLE5k
	XciGxwiEgssupaaiy4KliimSwxXD333UaOQhnWIUYR3LAGygZ1YmkBItbm0TyG7dA
X-Gm-Gg: ASbGncsfmmPqDjLe72W3H05Ni5C7eG+xv7MY8uG2k17dO6fQD85pmdhiDDfDCsdzP4W
	bHZWsPkmBuj/nzYF+RxTTI9fhr0P+Wvc3op7aq1Jxxffjnzu/eTS61DZ/BQKRDXzZdZfge9UnWn
	WjmAHaRMQgYQmNE+0EALKZ99ZlzXlUGxAbfZpmGDU3dOC0Vk1jgoOz168cjw2XAb6VGHkPcHbeK
	g034uuxAXRlJ3otTjV4P1dZvmmvcxtENXceLA6dubEUEXJfoPoiK943SqV2shdxxOoRHDGHmH1X
	1UHFB/xks8oukab2qvPHOW1WGSP4a+dwb0r2YyGMxda/Rlq1W050PbJa1zSwKbjqkHNSk2YjBoy
	F0qdxfFYa49YNQB2o8SBM
X-Received: by 2002:a05:620a:438c:b0:7c5:8ece:8b56 with SMTP id af79cd13be357-7de989b3079mr130008685a.4.1752236109105;
        Fri, 11 Jul 2025 05:15:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE9IlpHxAb7R4TrzGfVeGwtAC/FU5V/+FMIw/QGwRVWYeM3sTSRsEHYiAI4QhJLyZVlXQj3Zg==
X-Received: by 2002:a05:620a:438c:b0:7c5:8ece:8b56 with SMTP id af79cd13be357-7de989b3079mr130003685a.4.1752236108508;
        Fri, 11 Jul 2025 05:15:08 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e82964f5sm293248466b.143.2025.07.11.05.15.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Jul 2025 05:15:07 -0700 (PDT)
Message-ID: <93082ccd-40d2-4a6b-a526-c118c1730a45@oss.qualcomm.com>
Date: Fri, 11 Jul 2025 14:15:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 05/10] dt-bindings: clock: ipq9574: Rename NSS CC
 source clocks to drop rate
To: Rob Herring <robh@kernel.org>, Luo Jie <quic_luoj@quicinc.com>
Cc: Georgi Djakov <djakov@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Anusha Rao <quic_anusha@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        quic_kkumarcs@quicinc.com, quic_linchen@quicinc.com,
        quic_leiwei@quicinc.com, quic_pavir@quicinc.com,
        quic_suruchia@quicinc.com
References: <20250710-qcom_ipq5424_nsscc-v3-0-f149dc461212@quicinc.com>
 <20250710-qcom_ipq5424_nsscc-v3-5-f149dc461212@quicinc.com>
 <20250710225412.GA25762-robh@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250710225412.GA25762-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzExMDA4NiBTYWx0ZWRfX9vEXq81Qo64U
 kSKSXIMZD8p/E36Sg2DHPFVG07w6hFjfPfHoIqZsvtu+tvNuKxCtHYfkCqOrzaXG0SIIFNKfDm3
 1h9EJkQJSgEHem/k6wOsmaevvKZ2hqAly9xFfK/bWTaz2Y7StNvIMF8NKCP7gA0cPyuy4Ik/9pf
 9XrEF+2wpG9jAnkimKXL2t+bcythEQIQBetfA75t9YoQ5brprUwrH9Mm51Zit4Tnt3HAMPYbJ6e
 AL8wnp4UOkwkmWRgTjufdF1eOUg6Pf+3CAYzscxd2Hdsd0tA7bRMf1GNeLqT96O2jIakHEg1gYk
 +QFlQ6/zcWiT5h+H4OUeCyVOdaEywYWYof384Dz89HV5IEJpAfHc9kJbYZsB57kxvKmiZofZ1eI
 UPQYmKt6lFs7hvudea8AKVIYGUTlpkIdH7Pm82YVU8A3Y+E1BAQU+d5RFLIPtSZDtZWTI+Ec
X-Proofpoint-GUID: azx-bTJJkR_TFA-E-EFJha6BpG3iWRdp
X-Proofpoint-ORIG-GUID: azx-bTJJkR_TFA-E-EFJha6BpG3iWRdp
X-Authority-Analysis: v=2.4 cv=VpQjA/2n c=1 sm=1 tr=0 ts=6871004e cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=icw32r7lKnDoEl_Wh00A:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-11_03,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 malwarescore=0 suspectscore=0 clxscore=1015 impostorscore=0
 phishscore=0 mlxlogscore=999 lowpriorityscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507110086

On 7/11/25 12:54 AM, Rob Herring wrote:
> On Thu, Jul 10, 2025 at 08:28:13PM +0800, Luo Jie wrote:
>> Drop the clock rate suffix from the NSS Clock Controller clock names for
>> PPE and NSS clocks. A generic name allows for easier extension of support
>> to additional SoCs that utilize same hardware design.
> 
> This is an ABI change. You must state that here and provide a reason the 
> change is okay (assuming it is). Otherwise, you are stuck with the name 
> even if not optimal.

The reason here seems to be simplifying the YAML.. which is not a good
reason really..

I would instead suggest keeping the clocks list as-is for ipq9574 (this
existing case), whereas improving it for any new additions

Konrad

