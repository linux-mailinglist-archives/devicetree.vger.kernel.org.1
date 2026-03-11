Return-Path: <devicetree+bounces-273959-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iGDSCBMwsWm0rwIAu9opvQ
	(envelope-from <devicetree+bounces-273959-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 10:04:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F132325FEDD
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 10:04:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BA342302B83A
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 09:03:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 345C63B9D93;
	Wed, 11 Mar 2026 09:03:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TR2ZTjGD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Y06XkwQc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEE333C6609
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 09:03:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773219830; cv=none; b=Qv0HogdJYs8A6ZwNv5uuXGwYdWbLaRUwA5n7UgWp3DZMU66gvdogBX+T+anmIfonmm0XEVyVsCk0kHXtbQkL+nYMDOralquOs1CXmabkJcQTi3Le5pTB6itMZdkatl5S7GY/kaIAqa8N8fpJ4ayRyzgyo3q6YBjj2vs/igygC9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773219830; c=relaxed/simple;
	bh=ykZUsVq7y9xvlDXNfBvvliTEDDYnOsPpQ79R0T/BKQc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=W5TEMbnYvWme8eeLhdzFptHBYxmKg2VMB+eqcFxEVsRr2s7h9pWKymN4d50LRGkSDgf8McLWHww3qJIm7Yxz5oegucMHVZwfiZ77FQFnKeRsYiEpAosBNx9Oln7r0ZGZwpryHtbpNcIJE2a2Z8FSVbbAKcQZz3eJ27npjqLLG2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TR2ZTjGD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Y06XkwQc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62B3VIk0614124
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 09:03:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2kCnBWNCf69gb/PaJq8dq5wUaLn/Sj53D+Eb89nvJ94=; b=TR2ZTjGDz07iq04Q
	lGKZsaKveXsj1n/yz26WHJ7jTp00RodZgnIttoVksQjnLjpMhQNaq7T2vQoA3g+R
	+/+y0/0h3j/oupVqtdHr0WOXvfG7B+m0olK2rSRr1Z7ub7jkslpizjEiesg/dQrH
	OoX4qFR6Utp2YxDCFVYWVKC6fcZY4U6BRDt+eitYlLOYrbTy40ob888RTCMXD7mr
	Faw0V5Hjyge7CZNy54HaVpaN/GulKtB6Bv/weWnTkp2JW5rgdL0lO4qDD/hDCwhG
	4y26ViqgXryD0E6hr2upw2lvHpSZN3aCDAoeUbQGFqa3QE09fJKlgApV1/00PoGV
	h/fPgw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cu0jf12uu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 09:03:43 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd97debc51so111576785a.1
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 02:03:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773219823; x=1773824623; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2kCnBWNCf69gb/PaJq8dq5wUaLn/Sj53D+Eb89nvJ94=;
        b=Y06XkwQcLnZOc520ze95Sd5O+moPj1Fhw7uFgEjRxhu0wDFVLI3WPGxjcnq2RcgQza
         dVl4c6+VvvwPjlMSuKJgGaWxeDLtTl/AaeN2fosY5AS3DiwfZXThN/v3BpFjFjsLrnxc
         N6XlnrGNjJcSBfjjl+mfP7PN+UD3JiRRe/3s26So5RXjk7sJS2QeyhmBE7eQFBhVC0s0
         7rpzpRxtcDubi3s7s9xnLHLO6HxuEX3XSYdtKZY1BoeDZ6v/+K/9Gh6pTN4jvYmUwkFr
         OKkcg0VsdQwTmd3LVzV+WipRXqT1+2PPrnyEl+z7/JkFqnDk2Rahkr+jIN4bPfv0UW3j
         iCig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773219823; x=1773824623;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2kCnBWNCf69gb/PaJq8dq5wUaLn/Sj53D+Eb89nvJ94=;
        b=jIgdn9CbW9WxobvBbnU5XadkKiPYzZVsd4NdEvj3rLDbetQbq9j/Uli0oCDbEtHfi1
         bfmOJ+EBsXoFyCFFtqStK+tntxT4GhFv3ssLB5HqZJK6tB5P30ewaBRSxVRlPz5nYGov
         F4QD2BvkFGmKR38V+FBvMeUwQdP6OxXXM1Pe6sV9aSupVLZInTVSElKWicBuaztTOKBl
         bgl44pMq10JbEO/b9FZ9BaECws9kXBA2E+Ez5See0lgQcxjK43jwrSxkGSvS22Wz0LsU
         g0DsMVCXefiXXYZKPoOciTmWui/kTIHGv72EbEXQKUkMSS7emhZEMABLQkFqZhGC+lxM
         zoMQ==
X-Forwarded-Encrypted: i=1; AJvYcCXdhFwSwV2Cltp5cT11tEI2fLFNhVc5cdtTbdLmc0bryMLKNh6Wx/QPcDwyOfByG92Ce8pe4KsYGpC0@vger.kernel.org
X-Gm-Message-State: AOJu0YwX97aoQZR7D07uvzR56NpjMFyN7WV630VQRVouTZc8SvmjH6co
	riIZTjmvQ22ou3NJLPTtm46E0O1EDHvB4WQeJXozujlFZpc8DdRxc7tUN8O2YdiuMZLiO28x4Kq
	fgFRqckDmhdUTLF3vvEKOFQgyWrpi6WR3/DbOVnz2OwZltuFqbrhWPOjkUR0A4v8VAkR8WLMo
X-Gm-Gg: ATEYQzx2Gb9TAoDhG249YGpGKHyl3DkoA8XCNV1dizr+48TjmuRBfT43iGSXk80Xh7w
	fsR2g0CW6drgUmYrYzPClQZbvNIBjaHUgSFxIZUKPoH3pZjEluvog+0QOwuW/qFi55ZYtyxXCwg
	v9cZ1rvoNYDd8yTnU6yXW5AjiYMWavhM79H6QiZIL+hVB/L1WdsaFTyvSPFPwcNg6AgsLztytHe
	lhh/MQqlszgT18aaCk+b3ofNKtnHKy8f/C9s6CXzssEEoC4S2RHcC3/fzTgkCCilq7Odr6RLO0v
	wFNaGJoHj3WkKqBxcg0PERF7V02+g36mXqSUNeOwUpkQuigfFpMAE0O9c9nYjR5FeEXvNT7r24g
	Qpv7thAyePXztuMaUFTszxR7snOoCl/c4YDqfkS8ie+DmKUnmQyMehBlTNjXjggC68dEGBLwdQP
	Yjp3s=
X-Received: by 2002:a05:620a:4109:b0:8cd:91f5:7a13 with SMTP id af79cd13be357-8cda185f98emr172041485a.0.1773219822726;
        Wed, 11 Mar 2026 02:03:42 -0700 (PDT)
X-Received: by 2002:a05:620a:4109:b0:8cd:91f5:7a13 with SMTP id af79cd13be357-8cda185f98emr172038985a.0.1773219822178;
        Wed, 11 Mar 2026 02:03:42 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9736e2ca31sm9739266b.37.2026.03.11.02.03.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 02:03:41 -0700 (PDT)
Message-ID: <2fa0b336-0ca8-4418-9866-e240fc12079f@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 10:03:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcs6490-rb3gen2-industrial-mezzanine:
 disable wcn6750 and wpss
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Hangtian Zhu <hangtian.zhu@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260311023219.2284643-1-hangtian.zhu@oss.qualcomm.com>
 <zutya6ebksaqkpjen4qb62kit4lgannbfbvvfie3bpzbf5cgfi@v5xbzjuf3tyy>
 <581ddbf3-e79d-4a25-956f-7045c09a22bb@oss.qualcomm.com>
 <ogn3a6chd2s6ys5voxktnzyldoqfmytadsavvaku5ym22yisyk@uvpf7ax6wwno>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <ogn3a6chd2s6ys5voxktnzyldoqfmytadsavvaku5ym22yisyk@uvpf7ax6wwno>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: HoehH10ILxoFOFzZ9XfeenA1ggtLvjh5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDA3NiBTYWx0ZWRfX3www72zPVKhG
 eQIPEygww+7MONXhTFhBDVRiL/gTAVVFKJ97kPS6Zi6Ua5LtFqNBuGbvB048WiTsxZIJY0QJgBw
 g57WFHOJ3Ut+tmFEYJDhIM5s6i/s5+ebTgMMe+VI/agV+58U7HxqwOftLxTuIG501/f9jfWeDM4
 scWuEpYlZfyZxVN3YIKzj0zaWoVVH6yxKZP4WRX+qD7SfLfH9mG/k3NC6G7ZtFKJZkAKtB/M6zg
 Qwza0y1KyFvvuj2NBApMeg8Jcy/qc69Jc09pnV6JL3kgOLq3yO7VwwW1d/HG/F1BCDBFpCOV5mq
 DjBup7o1NWnO3pVA8djIF6NLi7Vkw2hGaiMci9fO7d4asgtVgeMIaGdRxQEeRyt/ikIav0e2avo
 v+NByzlUFvgbcFAW2NYsrWxujiEk8RUJnPdODI5LJTIhP+OQZgpw6LhswAlKQL/OO0J2JixkQTA
 20+ejmLXEPMBWQjEcKQ==
X-Authority-Analysis: v=2.4 cv=FMMWBuos c=1 sm=1 tr=0 ts=69b12fef cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=TvOmIZUWTGpWBAojQfIA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: HoehH10ILxoFOFzZ9XfeenA1ggtLvjh5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 malwarescore=0 priorityscore=1501 bulkscore=0
 adultscore=0 clxscore=1015 impostorscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110076
X-Rspamd-Queue-Id: F132325FEDD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273959-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/11/26 5:32 AM, Dmitry Baryshkov wrote:
> On Wed, Mar 11, 2026 at 11:14:55AM +0800, Hangtian Zhu wrote:
>>
>>
>> On 3/11/2026 10:40, Dmitry Baryshkov wrote:
>>> On Wed, Mar 11, 2026 at 10:32:19AM +0800, Hangtian Zhu wrote:
>>>> From: Hangtian Zhu <hangtian@oss.qualcomm.com>
>>>>
>>>> Disable wcn6750 and wpss on industrial mezzanine. On rb3gen2 industrial
>>>
>>> RB3 Gen2, WCN6750, WPSS, etc.
>> Done, udpated.
>>>
>>>> mezzanine platform, pcie0 lines are moved from wcn6750 to qps615 pcie
>>>> bridge. Hence disable wpss and wcn6750 nodes for industrial mezzanine
>>>> platform.
>>>
>>> Are they rerouted on the mezzanine or should the user toggle a DIP
>>> switch somewhere?
>> It's routed signals inside of SOM, no DIP switch changes needed.
> 
> How?
> 
>>>
>>>>
>>>> Depends-on: [PATCH v4 1/2] arm64: dts: qcom:
>>>> qcs6490-rb3gen2-industrial-mezzanine: Add TC9563 PCIe switch node for PCIe0
>>>> Depends-on: [PATCH v4 2/2] arm64: dts: qcom:
>>>> qcs6490-rb3gen2-industrial-mezzanine: Add second TC9563 PCIe switch node
>>>> for PCIe1
>>>
>>> ENOSUCH tag, please learn to use b4 or git-send-email to define
>>> dependencies.
>> Updated with lore link.
> 
> Nice, but the tag is still not documented and isn't used as such. Please
> use standarard ways to declare dependencies (I pointed them).

(b4 prep --edit-deps)

Konrad

