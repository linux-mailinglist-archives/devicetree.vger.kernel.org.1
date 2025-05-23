Return-Path: <devicetree+bounces-180091-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C1DAC2957
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 20:13:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 616FC7ADF54
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 18:11:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59049299944;
	Fri, 23 May 2025 18:12:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Il3256cu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BECF7226CFD
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 18:12:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748023966; cv=none; b=sXJSK3TTqKKMG/tPSUA1xGgwHYzm0HfYRs89rly9d0rCAPEKf98vLjVh2V3RpfcGq4Z0lklRT0+C0xvbM0nsLDPx7R+rRAJxdDVV2EBThxAuzaoKDaU6gxTt9XoWETel1SfGEN8goFvOj0/1fbJqiE4WZTLWuWcXefxTFJcl1TA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748023966; c=relaxed/simple;
	bh=H2g7jia2BsPqgUIovz9o4/PUhE0UFnjetOMYvTY/DNE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sl3k0M3YZJGWnucdh0KzLKk/92LOf58Y4JjOUUMoude9+/KPZTp6cTC1Xw4hFhmKBL9tMkGffC68VdH3zIE395l0YVxVyo4HMckuKcRjzSqEkly96R1Pq+nNafMTuJhXh/KJathU5/nsD0rX+oGK1VNXZBLLEtj3qOStUx9UuF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Il3256cu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54NE0MHK021071
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 18:12:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Iz9ezLEquuwmNTXBvuDUybdRf3cIwWCcnKJopdL/8k0=; b=Il3256cuYOzyyh3g
	7M2t5+NKh77qhRNOvzJOcO0TZq1M+AaecW3mtzJMSZ1aFdqRZl21/u9zVUd1pChS
	nUp1SZYOfgK3BtF+qcfkeUcsmoyrOKWGBEH/N8XmUaB8cDh8ggU3Y4/kLksNvq00
	rsjcskDxpyk9HCf18QxcpMEMAvfInMrye+OUejGfna8R8/lfKik+1Tf2NdIt3K3X
	ehcsIgjItlWx5ROwbjzJPd6TGIrW2Cu8TxbeiLT49cuc1milLOFzifrSXiESvQ3q
	io1WNlzHSWxWIgIaH9EG/S2Sy10tVWMoYharxjdTkeBHpD1lsVye0ePdBKKO/upg
	oslAbw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwfa2wp4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 18:12:42 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6fa9cc8eb70so285456d6.0
        for <devicetree@vger.kernel.org>; Fri, 23 May 2025 11:12:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748023962; x=1748628762;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Iz9ezLEquuwmNTXBvuDUybdRf3cIwWCcnKJopdL/8k0=;
        b=OzZyzXSo8aZebi+N5UUBhdA60z3yXerculp3qHafArbEQDt5t2T0TMWrAmxFpHnN7P
         cWh5Sq4OAIl9XYEnD2WqN3mpKjGZf9XnpxBxXw37om+nacKf3iHBlKQExoR7xsSr0BiA
         yf21G2qzs2aDZmob1GE22Grw/s9ROwBNKiOOE9mpjFfAoVBA+x+oTrP5pfblS3pywZ5i
         xVaN9ZVD+gwkDQouV0SDYRRQkRj+MofAX4JRXt0ho6mcWg8cGZJoLQVnAzjAxb536ws0
         HDAjGrRNd1G+5KzDXR6Us6ch4+t59oZFgmgotIbrddg4HQfHjBzSGGtwrUks7UTame4E
         9M6w==
X-Forwarded-Encrypted: i=1; AJvYcCUwZsfqvqPEKa37c5xf09IGAYnTyDZvo2mQnNTQMzR7Ma0frnVwdLInzGvRLIgjv5os/k9wWnA+1HTY@vger.kernel.org
X-Gm-Message-State: AOJu0YxTv6db3LbbtTkZH7A7gP4f3wLaBVEWSh6F/tpd0xK9CIfsDbQC
	yxbP8JA83KMusbOofsVPQcMH+5Xy3RXrT9wK8nYg2cTUL+kOCfv78ABquOIyg1GSVi+htIC+Cu8
	qOAsKovNopDSk7l4LVmZfU+aUCssJn2zXu0j7lJnyYDOhdZA3tOlPAJSDZfyXa9h2
X-Gm-Gg: ASbGncuqjPf0sadu+J9YRB3HMxcKZFc5emBfUCKqdL6VkNDxzhrMvu7On80nXiJxTI7
	5CycCCEqX6rMTbi4gEB7XLVSSQ/BoZkBQcY4nWP+mhotGxaT/hP2btSbz+NmjLFpXN94e0ubxRu
	fTcmpMEvFqOcBEoPiCXdw5FEEp4pMwBsP7T1qW5jNrtBrs06Cd6ddbyzWUJiBjF+fuUOpEXnIRP
	9Djj+72PC2ZgNHRKvHFYj8COYFW1sGcQNdhbGyDyX5vXeNaADL97ydrKJgBV1jxznYNgh+4TMeI
	yqI51FuT/rnHFoaaSo9EfvqOIOT6TDR5kQMPBeJ36kYGuLZuusrYqmimi49bendJlA==
X-Received: by 2002:a05:6214:234e:b0:6f5:3c5e:27fc with SMTP id 6a1803df08f44-6fa9d296bc1mr2479236d6.4.1748023961765;
        Fri, 23 May 2025 11:12:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE9d00l5uK2xNvswJipm7yny311lQLmRM/DwcA8svnLDgmL/dpQgbz/qdnNPu7zG//PWDyHrQ==
X-Received: by 2002:a05:6214:234e:b0:6f5:3c5e:27fc with SMTP id 6a1803df08f44-6fa9d296bc1mr2479076d6.4.1748023961300;
        Fri, 23 May 2025 11:12:41 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d04af13sm1281034966b.18.2025.05.23.11.12.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 May 2025 11:12:40 -0700 (PDT)
Message-ID: <2bce3b88-8810-412e-8115-bceb73d6e8d9@oss.qualcomm.com>
Date: Fri, 23 May 2025 20:12:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/10] arm64: dts: qcom: sdm845: Expand IMEM region
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250523-topic-ipa_mem_dts-v1-0-f7aa94fac1ab@oss.qualcomm.com>
 <20250523-topic-ipa_mem_dts-v1-2-f7aa94fac1ab@oss.qualcomm.com>
 <fjx7p2ab6c3qvwakrpj3zsjnhvjzwbfszvuwp6edf4rlehxdih@ucovc3r4fdfl>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <fjx7p2ab6c3qvwakrpj3zsjnhvjzwbfszvuwp6edf4rlehxdih@ucovc3r4fdfl>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=V9990fni c=1 sm=1 tr=0 ts=6830ba9a cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=JLKravJCZqfu2D88U94A:9
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: WUQar-8-ODQObRgdeVPqX4wfNtdJ4zmk
X-Proofpoint-GUID: WUQar-8-ODQObRgdeVPqX4wfNtdJ4zmk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIzMDE2NSBTYWx0ZWRfX15Ock9H/u0qr
 4muVF0A/Yf4kYGHNnedmfBUWT/Q45HndzYjKzoxs+Lw+0WOmN4V89HNIyyhFCqTCBpD+I8zlL6H
 ImkLpPHAmKvY/9/3CgfCv19BKvs9NsGSqVfsFKJUiSbuoOee4mvQ7miqBzjdQlDHobDKo23jv8+
 cykW/PVy6bEdHhjWZnF6ebgK/aAtyVXtdQKvXn3/he4ws34EwlHWZXggUXT+4kEn6jdlI2Nyq1d
 GBU5XXv8gzLljfbf+SEsCYz9uMjUexkr3s9XRMCOVmVrBwlXn0XTxFG4pAWoILBziQS6V4EUDJS
 iFBpY6Dqrk61l2MV6LN9jb4HRoyIb9N7o0lD8PDDLJTIVm9hcQnyH9xYPwW0xjlK9VHLmQleOUK
 TXUxLk3TvCO5mayWSD5JwNaX5nsLm5/nt+gikcNYnqj4Cxx9Q6MIjwv/fMAv66o4jpyEnhge
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-23_06,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=707 bulkscore=0 impostorscore=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 mlxscore=0 spamscore=0 phishscore=0 suspectscore=0
 adultscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505230165

On 5/23/25 12:40 PM, Dmitry Baryshkov wrote:
> On Fri, May 23, 2025 at 01:18:17AM +0200, Konrad Dybcio wrote:
>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> We need more than what is currently described, expand the region to its
>> actual boundaries.
>>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/sdm845.dtsi | 10 +++++-----
>>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> Fixes: 948f6161c6ab ("arm64: dts: qcom: sdm845: Add IMEM and PIL info region")
> 
> BTW, are you sure about the address? msm-4.9 agrees with the current
> one.

we talked offline, but for the record, it is intentional - parts of IMEM
are not accessible to the OS and were previously not described

Konrad

