Return-Path: <devicetree+bounces-257744-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KCZIKL50cGktYAAAu9opvQ
	(envelope-from <devicetree+bounces-257744-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 07:39:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF29522CE
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 07:39:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DC2354FA80E
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 06:38:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C32934E751;
	Wed, 21 Jan 2026 06:38:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VSlS5D1W";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VO4hnHfp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFA7B33A6E1
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 06:38:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768977487; cv=none; b=N2xtMduxwqNPrLQhCUiHywrhpEPoFTGI83iOWfZ0tBx3FE1orNeu1daYZAv6dbJOZ9EssjnKCp2KZQwZln9P5JrxjEXMujY+Kr4YbYd3q1IzfA+YcuK2d/Ho9rofP0v38nYzRY7gI5bXhSvRIWb2XO0rTBv2nSCyTpL1qEzoago=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768977487; c=relaxed/simple;
	bh=JhhV8f9p5OxHC2OlmUgE1BDNnvFKTu0OjyNnlXV50XM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JWtEzGFyBHpLVdiudZrmrFF7OL3HbNLZCijnQc+LBmA9eYkQxe/nHFAygFjamMpjpcqL+lEkLhnFxZ6av264ADSwSW/5nDQUcVmaXRgOm3SwLN97cRYDszGaTY/E+3kZosHGs2q7D7b/QFLkDscpo0DaPM91Kg2K9ln0HKGQdbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VSlS5D1W; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VO4hnHfp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60L2kOm1824387
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 06:38:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Yvd9VsTWTAbkA4hMrcvZeNdIUE2XO3yiPpt/jBXoYVc=; b=VSlS5D1W/ADwqMHX
	J/ElEI5N7UQcuAogAnA9z0FpP4J2+xwtOqD3eSrMdyNnCn4b2edg8x82tkij9Cym
	FLZhpywh1pdPWw490jVxAnV0kRQlhGlivR/vk4theyrpGfXSzNYrUOO8AXrBZ5le
	lzTjaCxvwxH1wEwuDxPELLEED6KbCBGzzKhpEe+3zl9Bwbt1Up6rXblD2YVcIFcV
	RRCZLOei3X1T005VRqcZu/VO8UjiFXWGu7zAQIQ+fP/gNJN+rQ7HPAHpTf4UQipi
	rY02i41D2xjzBBwH+SeybgqzvZ1mWxLNXLEiRE3FLrOciji94GhruP/KLDASnet2
	X5kS/Q==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bte5e2gyb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 06:38:01 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-81ed3e6b917so5781029b3a.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 22:38:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768977481; x=1769582281; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Yvd9VsTWTAbkA4hMrcvZeNdIUE2XO3yiPpt/jBXoYVc=;
        b=VO4hnHfpcRbrNjesUfeaS7LlSA5kHzqiczFgU9K/sKc+KIOASqucZnR8HgU3XCNgXd
         KAeiuV3txZ61x1AVCvkFv30kh2nr5i5OFGoIdsN16xRDXnHvkiHPl8RQM0iidaa+7Kpn
         BYPmPfQIMQeKrpLp7jkrI9jSTJkPHOdrua8LVEQ50H/HyS3k/GgJlNgTFUUUmqwKUqfX
         RrKxGbqlsh7S94tdB7ptPjO9xgDAyj63s5xmpf9vHExXN6lFsDeRDdWKNue3dB3S0kri
         s1nlWFtI7iWMnJN30lM6XjhoOBeC8MOA/Pje+LlkoNmUu4FK3mXEXnIu4nutt+NqYCEg
         8G+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768977481; x=1769582281;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Yvd9VsTWTAbkA4hMrcvZeNdIUE2XO3yiPpt/jBXoYVc=;
        b=WJ7Ul2s3+TXGz9yufHo99p8kJa4C0YnehKgXz1jmQa3jlQ1Eg62Huz0Hx+y6FTugU0
         Jw1oznzqhFVsrEkzPr5bF/+Zk7KKzE70CAaTkaJ8AylakMrrYkdDHYc9mI1YcuDIcCut
         l2w+qbwD9MH5d3WsdHna3KIktGa/bfw7d8H6p5KGd+04w0jWMyA3ncEjsRl4a15Z7SzQ
         6IykDL5rI5wxzeyNkhdDrOXjKciMt5IYb4oZRqtqXz5CmvhTi7t/mEhfWKImTpSa+HI3
         9lgsacvh9jWptES3IVj7myR6+mTq6pAC7Uw2jZQb3fmvFpBtR4/v7yJZ1DgriZ/4uMx7
         C6bQ==
X-Forwarded-Encrypted: i=1; AJvYcCUTFD23xvty2s5y+cXza3FshROc8mjESBEuie0mfi8h2O0ODvtuFH0y+W8UGKW5Xc/w/mK7RymSIdFu@vger.kernel.org
X-Gm-Message-State: AOJu0YyThwq2gp7GEJETZBjNMky7+GE/w1didvGbI76Pumtknzp3xU/P
	jvPSTBVoUftv64hNErJ9DdVFaqrlS8hdPK2+q1nQh1bxG/ke+VMY30w9NTAB/kHangrqHdaGiC1
	BBwACLyulMzTohHZIrd2kv2zwk66OJeS5g86FPU7kkn+qsbA+nDaQzqUVitpP/HgE
X-Gm-Gg: AZuq6aI1TfNBsA9kRyp7CnLZpjF3uZw7QudYl/PI/P4QoPtVuexBwsBnyoyq/UGssSQ
	VI8EzSMz2Ov+QlIWi1HwmMgrvsmr8RlLFt8GjxnTBPPy17cjrbkcESGgTcEwegMxHBfIm3bEpfe
	XpcjH6mWXsC9+PX5qtZ+f6vDYVy3SmYKnJTUBkiBPGCfZcOCZjmhP9Ejcu5ajttm6SAQ92BErzo
	T+p5JfTAOrtmIq0JcajvFTvrfacXqAm4N7MFrUk6O4YMcN5zeEvBM3oI2215xAveqatJkSYkon0
	jQHaBrk6LyYRJUZTUiUGudRsk5Dd98K0/FtIXdiiH9RSX59wYZVcVuEa2gSWQ1XOPsxnx7vkGjZ
	cX+2USOFeY/NtwwEO72WTAx7ICM8x5zdDmPoXVST4PuhJ
X-Received: by 2002:a05:6a00:9197:b0:81f:c6d1:d84e with SMTP id d2e1a72fcca58-81fc6d1d95bmr8377937b3a.42.1768977481000;
        Tue, 20 Jan 2026 22:38:01 -0800 (PST)
X-Received: by 2002:a05:6a00:9197:b0:81f:c6d1:d84e with SMTP id d2e1a72fcca58-81fc6d1d95bmr8377917b3a.42.1768977480517;
        Tue, 20 Jan 2026 22:38:00 -0800 (PST)
Received: from [10.219.57.109] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81fa108c23esm14027114b3a.8.2026.01.20.22.37.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 22:38:00 -0800 (PST)
Message-ID: <21b3f41a-d480-4eb1-a02e-c2ae411f3dd9@oss.qualcomm.com>
Date: Wed, 21 Jan 2026 12:06:50 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/3] of: factor arguments passed to of_map_id() into a
 struct
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: robin.murphy@arm.com, will@kernel.org, joro@8bytes.org, robh@kernel.org,
        konrad.dybcio@oss.qualcomm.com, bjorn.andersson@oss.qualcomm.com,
        bod@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
        prakash.gupta@oss.qualcomm.com, vikash.garodia@oss.qualcomm.com,
        iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
References: <20260121055400.937856-1-vijayanand.jitta@oss.qualcomm.com>
 <20260121055400.937856-3-vijayanand.jitta@oss.qualcomm.com>
 <CAO9ioeXLJK6fvriRA9RZs8cWcBdv4fgw8VG1_LqLDfc-5hFQZQ@mail.gmail.com>
Content-Language: en-US
From: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
In-Reply-To: <CAO9ioeXLJK6fvriRA9RZs8cWcBdv4fgw8VG1_LqLDfc-5hFQZQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=BKa+bVQG c=1 sm=1 tr=0 ts=6970744a cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=P5lMq7c6Yv-mBqOtWncA:9 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-ORIG-GUID: _uW2p24K5w_Ok5UeFFiIZm2nat1gFleh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDA1MyBTYWx0ZWRfX1wMCE8kZMLZq
 nPurVkABCL2G1FknwVeuhp9CRDeNyaqTOt5KZuZjV/AzKzzE91DwUbz28SFrUzsa3DfxOagTnPk
 FayQK0fxNeHrwADjyxO9607tbmaF7jKfOjHTXqjowEjZg+hWBHcfHCjCjRw/v95YWH/1s8BleER
 YeSTjRSntIuBEvFqzUa/LSfcSuLSsBgWm+Hr6w3iyP3QOg0ZkE9zadwxBTHuRgJSPgIwxQWlkQI
 GvuMh9OwDbinczRS4yBIb8C2psBLTjeLr4we++KQE7iFSGYLfT8SkDfmBr35fyUkOCaXlp+0fJL
 Aj35FP4YINPfzlZplEY1lWjfEHCMqVUsM/PAxiFy8aFyhq/fuPJtkp+Xn/qibkIOzRgbyqFyGDQ
 SuRd4LvHeyydsFSKtW1NxVVUA2ZTBUfN9F4GjbQuFjkGYwfy8maUvRXtL49quxrS8wBis2o3Efe
 r5JN/sPHMUla86sQrUg==
X-Proofpoint-GUID: _uW2p24K5w_Ok5UeFFiIZm2nat1gFleh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_01,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 suspectscore=0 impostorscore=0 phishscore=0
 lowpriorityscore=0 spamscore=0 bulkscore=0 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601210053
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	TAGGED_FROM(0.00)[bounces-257744-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vijayanand.jitta@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1DF29522CE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 1/21/2026 11:30 AM, Dmitry Baryshkov wrote:
> On Wed, 21 Jan 2026 at 07:54, Vijayanand Jitta
> <vijayanand.jitta@oss.qualcomm.com> wrote:
>>
>> From: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
>>
>> Introduce a new struct type where the optional arguments passed to
>> of_map_id() are Currently embedded as of_phandle_args struct.
>> Subsequent patches add additional arguments to the struct that the
>> caller expects to be filled of_map_id().
> 
> Which additional arguments? I don't see anything being added in 3/3 of
> this series.
> 
> Can we use of_phandle_args and switch to of_map_id_args when it's
> actually required.
> 

As mentioned in the cover letter, this change prepares the interface for a
follow-up series adding multi-map support, which we will be sending out
shortly and which extends these arguments. Keeping this in place avoids a
subsequent rework and keeps the overall transition incremental.


Thanks,
Vijay

>>
>> Suggested-by: Rob Herring (Arm) <robh@kernel.org>
>> Signed-off-by: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
>> Signed-off-by: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
>> ---
>>  drivers/cdx/cdx_msi.c                 |  2 +-
>>  drivers/iommu/of_iommu.c              | 12 ++++++---
>>  drivers/of/base.c                     | 37 +++++++++++++--------------
>>  drivers/pci/controller/dwc/pci-imx6.c | 10 ++++++--
>>  drivers/pci/controller/pcie-apple.c   |  4 ++-
>>  drivers/xen/grant-dma-ops.c           | 20 +++++++++------
>>  include/linux/of.h                    | 32 ++++++++++++++++++-----
>>  7 files changed, 75 insertions(+), 42 deletions(-)
>>
> 
> 


