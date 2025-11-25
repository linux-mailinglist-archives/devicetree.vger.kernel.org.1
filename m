Return-Path: <devicetree+bounces-241821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E8EC83175
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 03:28:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 53C1134BFBF
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 02:28:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 435171C5F10;
	Tue, 25 Nov 2025 02:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Lg7CLLda";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UAgX9GQY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B1DD19CCF5
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 02:28:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764037703; cv=none; b=AYKNuGkMvqlQbYzfNQzqsf9LfEFbtsQ00zW9zFyq0R2KbYlw/PKVUvNtXAJVIJ64IykZFBBLiv36xvTYfAjIOv52ZxqwQVSu7d05kXDCpeu2JwD5CwP+ubjlWkCW0nmzZmEnlR1AjB9FSdUAWVaQ0WV34ulXko/gqxSYQ5WupaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764037703; c=relaxed/simple;
	bh=+6BeB9AecFg1ONQikvBvjirwj4xDOnz8ib/bbpDaxRE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=A3RtY8TGdHYA6QfGTYeNWCwOaMqnljdqePuhp0ySLul41f/LbZHHLCADNasLxvtCrmFuT7qhe1qsZ9OdIhtlkLKhuLqqPybSNuraIk0kDIPQuMC8JwmQM9TGT5hiIV+y9579KiwowzOu/LqcFJzBEGHLx/hbMdfBe2Qaz2ZazNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Lg7CLLda; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UAgX9GQY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AONKg3R817884
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 02:28:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	z+pq6qRKxCnhKAyPN6KlZHH0m2NrWbAeB1YZCoEFrnU=; b=Lg7CLLdaXGPTau6U
	p4kn7DWh2IytCUkEQac1fWPUe6lk+ntKc0hI/ch58t0n641DJQZQcyqDz8qMUvz9
	ZQVo1BS2kDQ6Mm4zH571vpbAgG1WAkuvPVevqkCVa/MPsA/kFO3UypqpKiRWNJgj
	uAdH+V/oP8yw/sQy1eLelmB5VkPQbYMR4uRPMQwfi2DShLDTYwqZNokvuaakBJoi
	W8rFofmDoxyvOuRcdwTB+jL6+DnXBYYLBOeyM60VSEvEOmYcpjaEGHSXbXXvM8v3
	JOK2izdlAM8xhdg6vNsFP7kvXNMELEd0QxUax1rs5cBdSrnft//p7ZFtLmRg+ZiW
	m3l8cg==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4an0xygc9f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 02:28:20 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7b9c91b814cso15498449b3a.2
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 18:28:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764037700; x=1764642500; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z+pq6qRKxCnhKAyPN6KlZHH0m2NrWbAeB1YZCoEFrnU=;
        b=UAgX9GQY7CMGY5nMcAZF2B5gBmzfmIAv51pseWQbEPcKtZV6n7G7xDLmIm/MrmR/Hz
         hLduZk6jbgsfmjP4je1DjhcyleQs/kbbe6w86e7DLoIYk9mXXeycAFREZfMGaxurz861
         Fk6+zQh5mih455NOs7tpYZgMvzDQv6IZiMY4SQasbXLd/6DdTa1ya8tPoiTCq91pbgLw
         JUqcFedjDVJbhuDR2PdCWtYuRbVsT8vQVT7CoE3L6lWdd3uuJuhAzqwgZ6qiZq+FcZXh
         tlH1LeIuF7r0RWZNBtgL404sngKBsms9oZ2uiqPwqsWwtWvdtJPZeVu1lGG6/pQzqRvC
         6CHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764037700; x=1764642500;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z+pq6qRKxCnhKAyPN6KlZHH0m2NrWbAeB1YZCoEFrnU=;
        b=Ybk5CWRYIWlkIhiVqWHbBJHkRyOHeQnp/w1xBEsEJGV4B/V6RXt74dYmJCKeuJMDm/
         nNq3gzyFrdyMd5Fts2OFl//HJOtQYX31wMSuWJTxltW9E7k1aOcjuw+E763MmdYK2A3E
         SIeeTkWcLlYlSYsM0MTmBG2iNGklmB8ayARjQi4F4HyWqRi6B1/pKhy/yqKO0XXy4VLs
         lVq1RAuyKdlDtZhjr0ZozrYEnUVhFxNdAseteU23XwcmWIghQaa7DsmIQo5HCRPIH/UJ
         C+KNDxbX2MpSyZpalNKiP6AVhcezIXcWZC1eDLYkCzLm5pdogM1VDSnl5kHlFyjhIBkU
         2nfw==
X-Forwarded-Encrypted: i=1; AJvYcCWD9VNUO5caUK99YNedYccm6dJos0A5TSo0uxPC1eV5lBR892hNXl2brsg5G5zBibI9NSpXdNmyLwXK@vger.kernel.org
X-Gm-Message-State: AOJu0YxknJMDT7AfHRBgzPlq5AtlhZ0h8XQAPzglcD+v0qC4/28dXcuP
	2fBxCLhRW0cGdAj31BvN358Ufld/5XEi2sYHbdcVWstsVjQkmQ8L6bC535yVJMTp6h2Rjg57hMd
	dNGaMOeBe0Po6AZL26YTJIW2HPdk6LC7kz5SPFZEWYCChxmimDLtXgu5L4aFUIqHr
X-Gm-Gg: ASbGncukSLtuM4tfMorboE+brVbxFEudEa5PA4NiK+HBxh6VvQ6jzHECt9wyx8YWpKB
	Ro0vP/6HblNNSoVk8Aq1Gp6cRqnHWDLxK1qZqr9MREg1PBPyCjEQlBTqs7tgIKC+Xl0SIGlDErH
	tQKevhWA9o/rr72GjFt6qfnuh+D8v6YgbBwpO7FOUGJFdYb70GbNIv3UPzKPwWQ5FtzMVh3olJI
	K5mYCWce09Fyh6ECKZACsLU4gPqj55NeRmKDbMet6zXorXYTUbqQPZQ+U/2HkWELf2xrzTDOH2r
	2yUCN02szO59caNKSccniv0EoaOWXG2rtisiMZuiSnwtFpVTsyhlZo08svsWNO//6izZDgIiRFw
	5ksZS1ubGbHQYfflbA5ciLRWfzc94MjTW4cO1eQ7JgBIdDskdQRrUU28iZREqkd7l3j6aWw==
X-Received: by 2002:a05:6a00:2d9a:b0:7b6:363b:c678 with SMTP id d2e1a72fcca58-7ca8760d166mr1611668b3a.6.1764037700159;
        Mon, 24 Nov 2025 18:28:20 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHi/pnSULoYKIgEeiFvUOw8d9iALk40PhUIbzwODQvglUZ7csFadOXzwG4mNU6XwNDDr2fncQ==
X-Received: by 2002:a05:6a00:2d9a:b0:7b6:363b:c678 with SMTP id d2e1a72fcca58-7ca8760d166mr1611622b3a.6.1764037699605;
        Mon, 24 Nov 2025 18:28:19 -0800 (PST)
Received: from [10.133.33.118] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7c3f095c237sm16291985b3a.45.2025.11.24.18.28.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 18:28:19 -0800 (PST)
Message-ID: <6eb20ecc-6319-4a5a-bbd5-29e02555dc79@oss.qualcomm.com>
Date: Tue, 25 Nov 2025 10:28:13 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 1/5] media: dt-bindings: Add CAMSS device for Kaanapali
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Atiya Kailany <atiya.kailany@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
References: <20251120-add-support-for-camss-on-kaanapali-v7-0-de27f9a67ce6@oss.qualcomm.com>
 <20251120-add-support-for-camss-on-kaanapali-v7-1-de27f9a67ce6@oss.qualcomm.com>
 <0b2b8352-4ac1-4a5e-be73-67b5cffdb934@linaro.org>
Content-Language: en-US
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
In-Reply-To: <0b2b8352-4ac1-4a5e-be73-67b5cffdb934@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=S+bUAYsP c=1 sm=1 tr=0 ts=69251444 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=DPOBve1R3aP56xOrS2QA:9 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI1MDAxOSBTYWx0ZWRfX8Mtyz+R1cmUk
 2sWE3tU6Iy0557GRlAs3yUksLFfKvHVc8HrgjrgXB4/KvmA833YGGgimpWbx8BnyzuaHCU3zLZR
 ngn0vaTNCA4t7M1UOpImphGFQRjGpmw8XQxQSAmyscMGt/ndFMxgsO0Kwy7kTyGoajweT/Dd6jx
 399JfpVPW7NOjTnH5kVCzIZd5lLfDYcQILvZzFSNUNU/uV3NMGAvfL+FMnwbcswgzVPO7pGY4Ql
 X1PsqZVS/7n+lQkU6snbsLeQ+TLC46Qwpdt2+bfmWt+HdUVTHWqAv0daEcutKcNS8oeW381Ge0b
 s41mKBizBNarpGaX/Guk9v4updb89k9iymnOlJBG4hHJsR60DR7kXhSz7JKq//hzYIwwOm9wt/u
 twm8vVEYDMmy3H7GEl3X2+Qzure/5A==
X-Proofpoint-ORIG-GUID: Op6jxaiF7B4RJ9sjjQYPSnDziAng1IRo
X-Proofpoint-GUID: Op6jxaiF7B4RJ9sjjQYPSnDziAng1IRo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_01,2025-11-24_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 clxscore=1015 suspectscore=0 phishscore=0
 malwarescore=0 lowpriorityscore=0 bulkscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511250019

On 11/24/2025 7:47 AM, Bryan O'Donoghue wrote:
> On 21/11/2025 04:43, Hangxiang Ma wrote:
>> The Kaanapali platform provides:
>> - 3 x VFE, 5 RDI per VFE
>> - 2 x VFE Lite, 4 RDI per VFE Lite
>> - 3 x CSID
>> - 2 x CSID Lite
>> - 6 x CSIPHY
> 
> Another nit-pick which you don't have to fix, I can do this in the 
> commit log - but, you've not detailed the new regs added below.
> 
> ---
> bod
Ack, thanks Bryan. Will pay attention to it next time.

Best regards,
Hangxiang

