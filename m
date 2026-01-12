Return-Path: <devicetree+bounces-253685-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 50338D106FB
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 04:14:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4EF94301E6E2
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 03:14:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B122306D36;
	Mon, 12 Jan 2026 03:14:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oeEWXTv7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="U8cYMP+q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 050FE275870
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 03:13:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768187640; cv=none; b=GfxDMcuuODsQq0RkuW2Alg4F6ybw6oHpiHwuV/3pW9yiXx//mVPGM+JNfVODI8L6+rRIKjRZA9QoN2QMc9bl19qvADsaqz5dyc1NU2ThnKqw1oShqjK/WRpRp0KcUX9k7tA0Q68ZyC1Hg7/11TmmR+820uXb5kRWGLcXXrDWqhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768187640; c=relaxed/simple;
	bh=0auznFwkymaFOm31ZXjfgA0vx0r9Dw2+u2El76a8DgU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lJALrRz2Gq8hDAN1n2yD3afl+0GWcD5xtYH0HBeQIIgCD25hPluADUqBy/AyzzogzYgwtYz8LhLpunJNXWKc3Piw0u9aFOifksvrH62eRE9+34ifcyki1x+A3UdDAIbAoxAofNyfpbVL0N3fO5/h2CcoJQ7u9EfzPALZqmx8Msc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oeEWXTv7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=U8cYMP+q; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60BKt2oQ3368611
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 03:13:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	g6mqqVsazJQqen4M3/6gp/6iTrRA6OzH0muEtMfmMPg=; b=oeEWXTv7UKUpAzTt
	k9dkmZj8Zc3KhovyzmUtD6iumTF8Oy6Zt5Xs7joHJa0FYQ2PPGolTldpN1/FMr7O
	TQ8gN7GIhRUWMOBbrVo+LEjsWb1qbZhZ8Ei8oxzyEYw902LO6mYS+oZB0Lb+U0ER
	+fwor+l6zicsFwxz684ShObl4OhEkHQSytUhL/COMzmGbZv4PJg/yg5SffdM56mN
	jCiGFms35U0lUhE6+9ZT165GecFIJR+JJDss1EDaJt4mLqBYmN5C5Mb9JbVVAyDh
	gichw300kNyCw0tQgJb9VYA7odwRs55gk6ch6VzHzw2Y/KbAXQSCB+QmIfV/fZkS
	r55JFg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bkjvxty8d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 03:13:58 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a0c495fc7aso64676665ad.3
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 19:13:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768187637; x=1768792437; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g6mqqVsazJQqen4M3/6gp/6iTrRA6OzH0muEtMfmMPg=;
        b=U8cYMP+qNBaSDbQ4kThzTEYl5mzuWY80aDtrzdrrE+tvgX2SCjFTVbceXZiJ6MdDLi
         dZh8AG/CWZ55sYm6MnZgfnfDdECGNw6a7yGOi3oe4uHNLtdLl3oYbtRsgSsIY9sSs3Zl
         kBJSpCnjvVX1RQWtEpcThArWchqdv5cR5+MUiKXC58/e3CIXU5oX6JUU7q7e78SXc9vC
         hRjR3AklMkcfaUl21I848UcwFXPXSgaqILe8XeVPMciYOZQ5jyb31jdL4FBdqicf9XBN
         5RWgLhTxTps93lgrk83DFIYNW62dMRYtleQMINajtYnu6LWHj2Du9r4Tka1P3K3Gln3n
         27Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768187637; x=1768792437;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g6mqqVsazJQqen4M3/6gp/6iTrRA6OzH0muEtMfmMPg=;
        b=OsF3TI+sp/Ep+XSFHjXu/M3d246wn0eHRZZfsNaoCeADRigrfDMUdi7lB99r2zSJA0
         ZfFOwj9DsTk0TAHoN3CsDghp4/KlKrD5OIur5TbvSzbPFUReylGxQ1nNWUlJtZ/puikU
         dE7ZOPKCwdq+oOFJHQ/Vea0K9fojrNeu4PWVXugM2h96hqMXCAegBw/v0DHN0ojZi9F7
         dWtseDYNENANtyIQvzbM9SWImBdGtCAozu4eh95YHmfaQgoL8VI9tD/9D2pXLWSMNKY/
         UNzWI2YHduLzoM5NZfYaLaIBjEadvEhIof1+rJpfVrca8GAUMmXQjYb5+3COGip5e4Rf
         6B0g==
X-Forwarded-Encrypted: i=1; AJvYcCXjDxvCtwiE/e3YvUH8LA6PSpp9H2F/XgUx7jxNjfztGzZ71mjoAgjV8m2+hdOkkdxjliEmPMkTa7kN@vger.kernel.org
X-Gm-Message-State: AOJu0YwhsibUiqSV1o3XsmM5qjeoWm3pTZhg89GJbIDZd9urhkgvik4h
	YUEMY8nfjsg0S/UkVsrFTWSatbvS/Q9YNVrJcbPIsYbYSmMt40M7vvH3okkQ3orLweAXX2ZUqzZ
	atud2eQ4s01xm3fbDdfXvaZXXTjUdBmP81SybQZANBgE/DD4iwOKI5gY6BfdkW2lK
X-Gm-Gg: AY/fxX5EzAxM2uhhdp5IGMDdQfnx6TNpjvwb0X5OyPf/2L7ZdNOha8HP3AhV8FnfEpS
	btVWxGfUBjsk4x5HwgiETAxqR/5yob/v1lbst8X1ujfqPMrVypMERZv7W00y9NbIFETOXr2rozJ
	zrMdgQvODiRl5kGZWVZgiw/q5OIaraqLFpdLPC79eQZQIe60umTgs+cOfEBr2wdk+JVX/GmCA3s
	+4lqR8VOdxgXGYh5KrnaucHOLwD4ii1dB8twkSO2pbkp5mADzvqr7XMUGiTgJ7IO4Mv+LQbAa7r
	5AUjXEJdCwMuKVTAWe63beTBuqTD4hM3z4VNxSJtDdM91QBGpwB+YRbK3PO/Ee3xQYgibXQY1w2
	Zo2LJFEj4ShVBw3V/NLJ3qXR5ooYGw5G8Lr0ZmgwXJ84Df3b/aG23bGIfkvL0NJhmdh6NCUuIZ6
	1+/eY=
X-Received: by 2002:a17:903:1984:b0:2a0:bb05:df55 with SMTP id d9443c01a7336-2a3ee45bd7cmr167518325ad.21.1768187637522;
        Sun, 11 Jan 2026 19:13:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IExqx5/WpX9d/gew5JVfxzktPLh3UkgTFDncv622jbztudf1Ru0CGcRYAiBudeGXetnkVocPg==
X-Received: by 2002:a17:903:1984:b0:2a0:bb05:df55 with SMTP id d9443c01a7336-2a3ee45bd7cmr167518105ad.21.1768187637015;
        Sun, 11 Jan 2026 19:13:57 -0800 (PST)
Received: from [10.133.33.127] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c4796asm161079365ad.34.2026.01.11.19.13.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Jan 2026 19:13:56 -0800 (PST)
Message-ID: <b6035539-efb9-4491-8822-59e8a2a5ad04@oss.qualcomm.com>
Date: Mon, 12 Jan 2026 11:13:52 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/4] Initial patch set for PURWA-IOT-EVK
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, krzysztof.kozlowski@oss.qualcomm.com
References: <20260109-purwa-v2-0-f39ee10684cb@oss.qualcomm.com>
 <2e8e6436-96a3-40d2-86ce-a716326f79bf@kernel.org>
 <1af7d2fd-02fa-46a4-a7c5-0a08b1e1a596@oss.qualcomm.com>
 <0ecea9df-00ea-42c7-a293-85d7660008d1@oss.qualcomm.com>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <0ecea9df-00ea-42c7-a293-85d7660008d1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Wrsm8Nfv c=1 sm=1 tr=0 ts=696466f6 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=AVnNOSSoy2WkAcAlbF4A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: Rnai17bHEDBHX6phyIy-VmDDfdJxiLW1
X-Proofpoint-ORIG-GUID: Rnai17bHEDBHX6phyIy-VmDDfdJxiLW1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDAyNCBTYWx0ZWRfX7VM1wlA77m5J
 7xUxaRKUcXbqoRILQflRJldeO/Jb1AAcrAmFaA2tJTVCcEzGZz/kN1ROEyrqMqnfdoDEEttKjGu
 TEB/iJy1SR5BuyNaK6nDuAIWHsXryJ4w8432tqg8Lxa8ZYQS/C11jYEpigMdpCkFwO2Utv5yT5g
 lA6rwnjqbjwF51EQ4f0VOW9J7xnyXwm1RjYyz6oPACL/Wsb0sOeucAtGnQwDUJoZvS6EXz644K5
 I7P7U0Db/zQCLi7n6H4xf7O9F2oFmbBPnqU6Ixv9gysDVWak2eSy1kYGzdAYPDDoUEjMMMwyIL2
 +JCUe1zPHeOAFeOi3E1lLEk05U+3S8jxYIFBSzKBL8SLmyy2IbxMQC++eJz+YJ+l7RuM47dovrx
 pvFc34j6kmBqUUpLTET1X4ZvUNdJmFcp/UP2t3d6m1DpLj5YD070+T6nF9oPf5toGaz7EwVCJex
 rpS56ngeDxXfCu1biow==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-11_09,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0
 malwarescore=0 spamscore=0 priorityscore=1501 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601120024



On 1/9/2026 5:28 PM, Konrad Dybcio wrote:
> On 1/9/26 9:26 AM, Yijie Yang wrote:
>>
>>
>> On 1/9/2026 4:06 PM, Krzysztof Kozlowski wrote:
>>> On 09/01/2026 08:59, YijieYang wrote:
>>>>
>>>> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>>> ---
>>>> Changes since V1:
>>>> - Update the GPU firmware path.
>>>> - Update the description in the cover letter.
>>>> - Reorder the patches.
>>>> - Use separate DTS files for Purwa and Hamoa.
>>>> - Update base commit.
>>>
>>> That's a b4 patchset, so where are the links?
>>
>> Sorry about that. I generated the patch set using git format-patch with format control options for easier review, while creating the cover letter with b4. Since the version number does not increase automatically, the change list was written manually, and I missed adding the link to v1. I will include it in the following versions.
> 
> Adding
> 
> [diff]
>          renameLimit = 999999
> 	algorithm = patience
> 
> to your .gitconfig should work too (perhaps comment it out after
> you're done sending a largely copy-and-alter-a-big-file patchset
> like this)

That sounds like a good solution—thanks for the reminder.

> 
> Konrad

-- 
Best Regards,
Yijie


