Return-Path: <devicetree+bounces-273526-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oA3sM8AjsGmVgQIAu9opvQ
	(envelope-from <devicetree+bounces-273526-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 14:59:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D056251246
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 14:59:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2F140346244F
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 13:19:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 740943B9D8F;
	Tue, 10 Mar 2026 13:04:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="i5+iey4s";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fcEquvSL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC4F3B9D8C
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:04:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773147885; cv=none; b=RIwSdDEBJUIg76WlLNhif0jTId/AgoeYsvIslKGhTF7ioDYORgP3adXsOA8fPu3TXQBaGo2mmeurQcvjAR99NtEo0GQztvTKHE6U0bmk7JzuP9CwMCGDlUv7m4EX/spVaVHYxKi/YhvvP790IVuVD1P42DlbLJ/W/XvBfz+Cav4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773147885; c=relaxed/simple;
	bh=PqDEdtJr5rYsWHIKMkdODRmDFBiKW6a54M5VEG7hS5I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UTjarf5fJtNZx5s00fRJQnA6aiHUeFCkfVNMCKdUT/Cdp1NkN6t3q8M7k5S9QojDljRyAi0J40ZKXIKW/VIdjWQal7q8eBRsOA5CdQNw0LP4m8UkxwEqXxWghktcWHL5jDMbPAwPszmA5iJOmJ2blMrnTOlAOhe/gXQ2wA4UROo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=i5+iey4s; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fcEquvSL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62ACaqPZ1647996
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:04:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PqDEdtJr5rYsWHIKMkdODRmDFBiKW6a54M5VEG7hS5I=; b=i5+iey4sqaTlfIf0
	s3jxouP6fCG/yWIcXY3qQ4NIID3wIziolCIv/5pMeJ+HGhwy6hGeqyNRJBOd0/bh
	+EMOd4MN+T9JdFb/8rX0xiAiqk8+bLwJzN3B3vUl0Nef7YiPQ5b/kaSPeG6lO3lR
	8AVTUrngZk7OyFVJnvJZGmRGetSObMETuJJuYUFeS1VzSIYz/e10J9zUffw1CYIu
	joUAmNtRqiyl6OK9DRmfha0XEBJ9LuFP1DmGlICTs3uVmeuRikfYeieC6WolomUA
	lfAN0TsQZpZfqVd4FBrSUm3gugI0GtsScu7pObSA589ycACjLULtynKEbkPwAMLc
	pTmYog==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ct8802jxa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:04:43 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-56aef8e5768so36630e0c.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 06:04:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773147882; x=1773752682; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PqDEdtJr5rYsWHIKMkdODRmDFBiKW6a54M5VEG7hS5I=;
        b=fcEquvSLgQODGNVmsSl9FyoMIiFftM7HFrtI0Sgix6xHon/qarBoiyw25+8Fw8L/Mo
         2aPjjs/o2uQR6a8OXqPhJEPsl1CjRUWLXkUZ4TPe8vSFkG8m3DzHl5UuNS1lM/rIGwAJ
         8qVkxV6e1GJzBYaTaI61lFJgkjdS/X6h3bRKZFAsgjLSPxPIcDKRaK8xJfiyFvBcEZ4c
         fUY1VHVVVBzaqtoKpk285auDmQNu9bcZ+SzHKOfcsjJlbY2V7eqAn+elCN7FOB2LoGf7
         nfiYTf2Bh74HVkG8Eu3P1VbYQuhpE1LEdeV1ffRQjEKDDhG34voNZ4LrtsboENxqndSV
         GhLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773147882; x=1773752682;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PqDEdtJr5rYsWHIKMkdODRmDFBiKW6a54M5VEG7hS5I=;
        b=UIlGAKCneS/ILoUBHfLlh0v/B9LKYTK5+APlzQKBME3xsyJV0U+iF01DFTk6iTtDnT
         l0Sc2FeaVuu3ou8Uyp4svAFecwAdQWKibAVbSVFChYFtDdtR9F5LvWFJdCZcVnIPDzLz
         YUaYS1RstP/ab4fUwYUvy6l4eOguO/j1kANefrcCIsQ2xO+MwKvk+m+E/Vw2YGH+qxqt
         iDEhP2v3e8xIwFEdXfmwLf4g0dIo71DSu1o8KKZxUO6dk+hPNPnFxUYzfpWqljN2r6gt
         WMLHhxVidtdYFdOQ3jEY9Eg1cznqcLfCzjnRTqfkpkq7psp9wtwT3hWuKbjGgfHaQONN
         TA/Q==
X-Forwarded-Encrypted: i=1; AJvYcCUStRTqiaKcDPQMsZbdAudk6v2p8O0ty6bLkseyWCGoxOP4QlfYYBmNqUmsWHXB8IRV9FXsfT5bsG3b@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1j2Y6JENSiDei5ImHfRJug9F7f8PGNReXaKyR7QHOxmvxfoiY
	f+NxrMWkYtec53rfNhzpSaR9WFxu9lzR70qoaTjw5we/xoqZweBgLLlqJQzV5kvscnylZ58qrnO
	dnrPEQ5Hl/awdQS84KnjBxP8Uyclj+SIWPjntgwsnsqpN9Yr3g9vkiT7aPa4RFQqR
X-Gm-Gg: ATEYQzweWdNcBFO1mCALK5oV1OhD7L240E/JE/8LCvS5gD/AApMYEDWt0xHe7CxCTGH
	cuJ3zIYE9FuYkPRKVQ3wjUFxE5Cl+MAnb2JJHNhQI8RTpnA6k+j/7NiuWQ6BlyJWuKJ/Mh4z1V1
	jQv+nSNPI5taIWsGvjgVoNhoxWutQosEAT6igMksiHD11zFQFf4DI4EG/7kncXQ1Nz/J/NZ7OcI
	/OuzOAB/R5dlmfSbdEcqtkd9r6kvrtnUOrBZLVKFXrpILjCiZeDv63YNzxE+/Q/RNhqmNDY2XuP
	ttdy7fhX5ilOUSynSNXscXk7sPHdL40HFcc12+Wy+Qlc7i6ksKQ4X+8rYS6gdCh+0KvChyWHOVd
	mx/44m9dTCsLHOuU6kkiLOz2TsJbaCyXpctRAAC64bZxMBl7MIJXdVZuvhoxNyabgblzIL/QuYr
	A7CyA=
X-Received: by 2002:a05:6102:c8f:b0:5f8:d54c:18c9 with SMTP id ada2fe7eead31-5ffe6125078mr2738597137.3.1773147882070;
        Tue, 10 Mar 2026 06:04:42 -0700 (PDT)
X-Received: by 2002:a05:6102:c8f:b0:5f8:d54c:18c9 with SMTP id ada2fe7eead31-5ffe6125078mr2738573137.3.1773147881617;
        Tue, 10 Mar 2026 06:04:41 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6629f7cbc78sm1437909a12.17.2026.03.10.06.04.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 06:04:40 -0700 (PDT)
Message-ID: <2255b753-4d40-4e49-a89c-22ee939c51d1@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 14:04:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] arm64: dts: qcom: msm8917-xiaomi-riva: Commonize for
 Redmi 4A and GO
To: barnabas.czeman@mainlining.org
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, linux@mainlining.org,
        phone-devel@vger.kernel.org
References: <20260305-riva-common-v1-0-436f1f4b7399@mainlining.org>
 <20260305-riva-common-v1-1-436f1f4b7399@mainlining.org>
 <ab66ac70-9c63-4dbc-9ec4-8dc5344fb045@oss.qualcomm.com>
 <fabedbb450f409aa0aa415151de0263b@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <fabedbb450f409aa0aa415151de0263b@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDExNCBTYWx0ZWRfX9DCtCaKX11J5
 n4xMbZCUpW+rmzs8mUYz7SQoolRU5ao3+mt05mTtOO6uwWZdifhRJaUe6ZYmjpy7gNy3AXzVrZj
 iIuwL2XBPpDnFVIzXEEW0SWJWuLU2fqlhkixd6YXCChqRIEA7Q0Fj0EmoQN51TwF7jIjrZYYET5
 UCLcel0cwCqnyiFPz1b2LWt57Q8VzlXvVX/pBsrFcGHBmU3pcxUFCU7sGrbvc/aO6DbMI/87XzK
 sEsmJi1meQi5XTifknkTgyzpQcohLa+fIaea87nOpRF+6Ralbr7VUYDkmiRfK6RbS+ObKi3PJFa
 nXz44NMjCz8pWxc37RIoBsh+J1Eu4U68R59M+4lPmIzMgPOULzogbh7eJ4F4v/jDipq5n1zft9L
 hrIxIXQ4kIw072Q4Fg9cC4aOFFJkc42wFlAa+SBBHAwcqHVG6x6BFWQx/yveKlkrbxHmizT7jC+
 YGouIudV8yziPD+F6og==
X-Proofpoint-GUID: dfPc4iIN17i9abGENfHECTGC90B3aQe_
X-Authority-Analysis: v=2.4 cv=Jtf8bc4C c=1 sm=1 tr=0 ts=69b016eb cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=OuZLqq7tAAAA:8 a=xHgDL4wFP_-0hZMmzhMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=zZCYzV9kfG8A:10 a=tNoRWFLymzeba-QzToBc:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-ORIG-GUID: dfPc4iIN17i9abGENfHECTGC90B3aQe_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 impostorscore=0 bulkscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100114
X-Rspamd-Queue-Id: 4D056251246
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-273526-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,mainlining.org:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/10/26 1:57 PM, barnabas.czeman@mainlining.org wrote:
> On 2026-03-09 13:55, Konrad Dybcio wrote:
>> On 3/5/26 6:28 PM, Barnabás Czémán wrote:
>>> Redmi 5A is very similar for Redmi 4A (rolex) and Redmi GO (tiare),
>>> it can be commonized for avoid unnecessary code duplications.
>>>
>>> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
>>> ---
>>
>> Could you please try adding the following to your gitconfig:
>>
>> [diff]
>>         renameLimit = 999999
>>         algorithm = histogram # or 'copies'
>>         renames = copies
>>
>> and see if this generates a shorter diff?
>>
>> Konrad
> One more question should i rename msm8917-xiaomi-riva-common to msm8917-wingtech-common,
> they are wingtech devices. Which naming is preferred?

I think xiaomi-riva is easier for people to associate with a phone
they may have in their drawer than wingtech-s88503

Konrad

