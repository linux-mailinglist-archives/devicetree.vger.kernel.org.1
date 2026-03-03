Return-Path: <devicetree+bounces-270705-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gCqkAZAtp2mbfgAAu9opvQ
	(envelope-from <devicetree+bounces-270705-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 19:50:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F5F81F57BD
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 19:50:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 026F7303D5D9
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 18:50:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B2D748BD4F;
	Tue,  3 Mar 2026 18:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="c2Hee6A/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Tq+RvnZm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 978BE3BA259
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 18:50:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772563853; cv=none; b=RuBZm9hDMJpcMRT1vzDfquFZCfpZ6wtb00aeWd0qL5X96o8f/sQMlPUn5jAcI1JoXy3OgfERcMgfF5EBaEF80HkxxF59ODjLERz7Uri6cdwPrh37fRW1A8uksfjqYt3UrFoLan0ldK5y8yjITQgz3nXbOajnkvwEENxKcMPAAGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772563853; c=relaxed/simple;
	bh=p7D3XDbzE4LmwJD1gYeONBjA4tJgseuls8e8XyVdW/o=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=qW5jNcquWaIKWrgKS30gqaRS4CfbozLS/hczeqq87G9WZYS/i2t+aYo1iZwL3ZWzJ5vyKN/7hqDxLz4sehprQA2oY9o00YTZNERZjdsaf/XTR2gw9PoqqOAOX0CVo7udXeb8GGhCdwWISlm41OPMAviiSpxfhtEIdxfHi8P9Uxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=c2Hee6A/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Tq+RvnZm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 623H0eCI4030513
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 18:50:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	25shQvLHwOqK8bP7PBHIpLPvewVyW9weQjfHgjfIRuc=; b=c2Hee6A/xIkezOG6
	p76Zk3LEZrO88pJWKEKNEyub1+Wgmp+cq65jzjvAqZk1WdowamH6fQEIP7DEIPtc
	2lT2EDDV3BsEcjTGcfYM3ecuhynRNSPZ0k4n9IscvIAsvBrZfdKRbdjDmzLQ0bhx
	DGqyU65Hv1YQCJwawj20GxJGZHAC6dhWrg5ET+A/TL09uvIq1ANubG2OkHFVhXco
	ZjqdvCetiJ56bciEwM+FAyIwHjBww4HQ6RAOsjeKH23f05W1tzdmwUStTgRmg+Ve
	1E+Hl+HYdkWXd9q31vl9D1oboVT2SOwuzoXKEkGZj46iujEgkz0LX3lejqQTG3Ez
	NoC6Eg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnuqu25vw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 18:50:49 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-358e95e81aeso28149977a91.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 10:50:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772563848; x=1773168648; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=25shQvLHwOqK8bP7PBHIpLPvewVyW9weQjfHgjfIRuc=;
        b=Tq+RvnZmXzw8nlSaPYnsWsQNNG3cD9IdVfqc8++8X7USYtgBXaKWHoZhhLIli0c26W
         aeQJcUI2VZtZAjRwTt5eeOU0V9BS5glq1RMqHxiaG7/CkCFukuX1LM96JgjLJH3KY4Nl
         W5ExavsrPcWNMN6R+pPYBm/9bxBa0wIXRqmzu6XwkslgtxGzsGGW/xZkYhGiGKBB0Zia
         vbqfrkdfOzctZpD9Qxp85anRFvyh+VfpDFZOK9Ck93qdZWHOD8T/qNwvvxRLwQWLVtHE
         LfW6D1VQgwhGclEpGHsTFcTPSbheg+KFYAWwgRq1K+zhOv6SwGObcQGqQFAOrJdcpQGZ
         oKWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772563848; x=1773168648;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=25shQvLHwOqK8bP7PBHIpLPvewVyW9weQjfHgjfIRuc=;
        b=r5jGJvCNjOfsA5rAyRZJB/GTuFh1d4oio7Rp/oMFXuyY2mzWiKzzeS3nB/i/kvHP7l
         8VX1qS5gqSnJrJd/iS4lN0s6KLSzHzKiWElZcE5WdBc/YuBBw2pTD0oobccOa2IswJPP
         2WIQwNXFyNsvEMURYdhW92Nj9N0Oy2D6Baw1hEPguVDXUC0tWhwqtIkqdk22ndVTzL8I
         IJgGMnSE9EPuCS0ViwHRq7A0ao7urBextRD9/Avk7uH0GumL2xu13nY4wm+Jqwazj+J1
         FfatQ20ZUu5n4YtjtFkSZu5sw6Wzmsrxv6RrygLSJm7VFyREjj7zXzvcPEbtBu30bFos
         aS7A==
X-Forwarded-Encrypted: i=1; AJvYcCWiN7uWtIpnFa4j5JNXpTDA1i1NnNrKZp6zhRtcXbFySgf7cRYXXICIbRuyXpvu1OZJs037wmqDV+nH@vger.kernel.org
X-Gm-Message-State: AOJu0YxGa+9h74GLS9lB27DAuHhhyATChcJp8K3fzHKty7s63MYJpEQn
	e1DbGbfNUaiXy+LkQ7hdVj4ewN14IQWEDdQYFX9hbkyp6QQpMtKlJiuZD+IFAImMSvdq3IA79KB
	zX13m5t8aAYLUzXNVir78oG4Y9Ov3DlCBXnAY+c7Zkv31N90kowto8DFABRAjck3H
X-Gm-Gg: ATEYQzz82rP/fTXc6JYyRgRAmeXVXl2cW5XTscL9qD3HotXzODieYC0TMemrwIrs+el
	8FLGhC57VKcU+/R+ib9QJHStReAIf4wenz4D2p99OuX80KzTJMHWG+1Iy7iE79uiQnhYaNFFOAG
	wkGcNHaf3jponA1rMgZItjTzC3DgHFbK+v7uNcXtQSYS6p/Z+MvXk+UUmfBz2tLezUeLNYiNlZj
	bpZbgCzW0nntfWJx1Mn7WH4A4UPxHTBsxM+xfZbs29RM8ZNe9Y7Dkh5M26La6R5prgVSDtUGuCE
	olgJ8AkzPJOVEddvlkTqAl/hEdeUd5r3LIe28v9FMs3yxLO4rgOKoq1qANooFZGUOikKEJGuh+O
	H/XSO+PXkMWQOA+21aYjuG8v6aSlVXw0hTOq0OW2wp9smke9kcgKCVrw=
X-Received: by 2002:a17:90b:524b:b0:354:a284:3fff with SMTP id 98e67ed59e1d1-35965ceb27dmr14994963a91.25.1772563848387;
        Tue, 03 Mar 2026 10:50:48 -0800 (PST)
X-Received: by 2002:a17:90b:524b:b0:354:a284:3fff with SMTP id 98e67ed59e1d1-35965ceb27dmr14994936a91.25.1772563847950;
        Tue, 03 Mar 2026 10:50:47 -0800 (PST)
Received: from [192.168.0.172] ([49.205.248.49])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c70fa5e4aafsm15501836a12.4.2026.03.03.10.50.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 10:50:47 -0800 (PST)
Message-ID: <21fda4d2-72e1-4e5b-aee0-a799886f53b7@oss.qualcomm.com>
Date: Wed, 4 Mar 2026 00:20:38 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/7] of/iommu: add multi-map support
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
To: Robin Murphy <robin.murphy@arm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Saravana Kannan <saravanak@kernel.org>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        Hans Verkuil <hverkuil@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>,
        Hans Verkuil <hverkuil+cisco@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        iommu@lists.linux.dev, Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Charan Teja Kalla <charan.kalla@oss.qualcomm.com>,
        Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
References: <20260126-kaanapali-iris-v1-0-e2646246bfc1@oss.qualcomm.com>
 <20260126-kaanapali-iris-v1-3-e2646246bfc1@oss.qualcomm.com>
 <hunwsdkmeo6efpv3yt3izkgmarelnubd74dywj3scryxrreq6p@njijwtoyjh46>
 <78ffd1ce-5408-4bf5-a782-0c4ca14017b1@arm.com>
 <1c3c36b9-7367-462f-8280-16477d3ad20d@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <1c3c36b9-7367-462f-8280-16477d3ad20d@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=M85A6iws c=1 sm=1 tr=0 ts=69a72d89 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=KPiuay1jFzAquJblYynD6w==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=r3fjQwxrIzP3dXeSYucA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: 51Zj8reuUiBqs-BJgJxD_dIib-urRlVk
X-Proofpoint-ORIG-GUID: 51Zj8reuUiBqs-BJgJxD_dIib-urRlVk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDE1MiBTYWx0ZWRfX1qUjh7QhnDr3
 8NqPghx0b8egSPdaeX3LAGCeMLb3PvPSC/yJBsYxAR1eJWn3Hztvn6RTZ7OPyA6UQaY2lyylKpt
 wzec44aHdMZjbnpgm4ctPGT0XeoXhcVhVJPYlZLPgJNU8mQWdsmgS/gq3CeHjAQXMNTHRYglH/s
 CbaIScq/WVsG8ULs7rLc+zkbQv/d9JAbWws0D6ONCEawpcdXKC7Lh5vBBwdTeVu99KOVV5pdhR1
 w2zeGcov+xpxCE59xg/bUh7dkgoHKPy6Cpr5+WYHM6rjL3c8lfUrmqtD47dN+FbnTnOaoNZ1b+n
 zf1ao3X7h+PI6HkKR9tO/yghLrVcG6sxBqMhj2vCee5H8PUoIdpAXm1V9UidWYStJFhcom4WDBh
 OpWEfPDCO0bxiKSnQmeWg4Gger8ny8ZAWfFI61LR4oaCXESr9Xyc+qAOwEWu0FaVuHuz2pboT81
 0xRlC/5zFuMjjFAe9tg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-03_02,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 spamscore=0 malwarescore=0 adultscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 lowpriorityscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603030152
X-Rspamd-Queue-Id: 9F5F81F57BD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[25];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270705-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vikash.garodia@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,cisco];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action


On 2/17/2026 6:38 PM, Vikash Garodia wrote:
> 
> On 1/27/2026 7:50 PM, Robin Murphy wrote:
>> On 2026-01-27 11:45 am, Dmitry Baryshkov wrote:
>>> On Mon, Jan 26, 2026 at 05:55:46PM +0530, Vikash Garodia wrote:
>>>> From: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
>>>>
>>>> When multiple mappings are present for an input id, linux matches just
>>>> the first one. There is a usecase[1] where all the mappings are to be
>>>> maintained in parallel for an iommu-map entry of a same input id.
>>>
>>> This contradicts the IOMMU idealogy (at least as far as I understood it
>>> fom the maintainers): the device (driver) doesn't control which IOMMUs
>>> are getting used. Instead _all_ defined entries should get used. For
>>> iommu-map it means that if the map defines several entries for a single
>>> function, then all entries should always get mapped.
>>
>> Indeed there is no concept of "multi-map" - if a single input ID 
>> represents more than one thing then that notion of "input ID" is 
>> fundamentally wrong. A single *device* may have multiple IDs, as in 
>> the case of PCI bridge aliasing, but in that case there are multiple 
>> things to map.
> 
> Let me take examples of kaanapali and sm8550 and describe the vpu stream 
> id generation part,
> 
> kaanapali:
> iommu-map = <0x100 &apps_smmu 0x1940 0x0 0x1>,
>              <0x100 &apps_smmu 0x1a20 0x0 0x1>,
>              ....
> 
> sm8550:
> iommus = <&apps_smmu 0x1940 0>,
>       <&apps_smmu 0x1947 0>;
> 
> In kaanapali, 0x1940 and 0x1a20 are the *resultant* stream-IDs. The 
> resultant stream-id is generated based on
> c-SID --> generated by vpu hardware, controlled by video firmware 
> programming.
> Topo ID --> port id, port at which vpu is connected to NOC, decided by 
> vpu hardware.
> TBU - smmu translation buffer unit, decided at soc design time.
> 
> Now if we take 0x1940 and 0x1a20, c-SID is same i.e 0. Within VPU, we 
> have video engine (vcodec) and processor, both have different TOPO ID in 
> kaanapali, whereas in sm8550, both have same TOPO ID. So vcodec and 
> processor may (sm8550) or may not (kaanapali) have same stream-id.
> 
> There are some buffers, like internal buffers, are accessed by both, 
> which then need both the stream-ids to be mapped into single context bank.
> 
> If you see sm8550, the requirement for both those hardware to access 
> internal buffer is still there, since they have same c-SID, same topo id 
> and tbu id, they have same stream id (0x1940)

Robin,

do you have any further comments on this ?

> 
> Regards,
> Vikash
>>
>> Thanks,
>> Robin.
> 


