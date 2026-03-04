Return-Path: <devicetree+bounces-271138-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CLDpHF5VqGmatQAAu9opvQ
	(envelope-from <devicetree+bounces-271138-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 16:53:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E448B2035B3
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 16:53:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9D97D339FAAD
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 15:44:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D031E34EF02;
	Wed,  4 Mar 2026 15:40:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jhhJxPqt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FWWClg4A"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9867034B1A6
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 15:40:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772638844; cv=none; b=fE8N735e+7hQEWWEPTYnZripMAwIMMU4DPgpMM4zuU8HWyNRpeWyDSVkg0Yo4c9dLGJP2WtPYreXW5/JQOqoGl8PgX/3DvDXJ1LxCRH+9ALgEy6mj9dhenoxa4Xro5Dd5E45hvtZGprplNTxtB5ZuaDqrxNQsN5gqAsMClkMuJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772638844; c=relaxed/simple;
	bh=PMGzy0QIhL0vRpNSRHs+DPTQgWtI6ilhEm2+hq5tQXc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RXWnI743ppANe6kITBGyNDLqM6K/u45dZ6l5Ake79rRQakYP8ZEvahULd9VSNwxQZ6RQ0ZnNeU7TgvrNTUAI1UN+3wf00HRYMXXWvSAGv+re2MwSwUSuZE8yxbNCdARjx3sIwtktdMF2d9CSt751ruNH524M6FuZtUIfsPwwfiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jhhJxPqt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FWWClg4A; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 624E0cMF029451
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 15:40:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BseyVlfG6qNLJh0pukGQEsnvFe0Y0lazqGGE1966Oz4=; b=jhhJxPqtA5CNygZ1
	hhZPBB3+4LkVrZ/2IrBlz01xpPZcQf7s7oC6SjIYsfGt8t75ZU9MVDVsyiG9iTuQ
	bKbHZHBud3w8ByFGzdYcbYGOD224Zhax+1lNSdGpV9M5OM3uB9CEl3/pbRnTjw6k
	2q1h7PP0/lRyiPHDH6ny9TD6TtNPsEmKMT6dzB3SuT2MiED3CnhKb9ZdTb9gJfFi
	DswqfsBt+T0jxAjHZYnGTIMWJ1zmZmvATvbSZDU80IpF8t37TWHENSC94fqaUHHx
	omg7a7zBtVUVXRqvPFp/z5iSGrjmLH1fH1UTplpGUVFFHhPepOMafiP5CNI/1/Zh
	kTEgsg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpp4fgb2s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 15:40:42 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2ae62c87973so84814725ad.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 07:40:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772638842; x=1773243642; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BseyVlfG6qNLJh0pukGQEsnvFe0Y0lazqGGE1966Oz4=;
        b=FWWClg4AV6hqS2rfjwuMjD5GNjGZosJQnJJyvH0D81T3SNtyEiutRwiOi2eW18efdD
         70NlEmA11C7V9lrt4ElH8igclLttflkN03MUzwsL2XJPcc/vewfo301tyUL//sZSd9eB
         XrWQUCbqLZ7gANcKL24vFxfvHZIz34/k0PSE+vNUHhTkLTVSce0Pv9Kl32J+OO/HXGW+
         r27Jl429OajzFOQY/KLk375pX2ErPz6q1EUQkcfzoDGYZOyVbD+f1KjyzaIRK5F7ZKKP
         Yzy2FYIzE/5CaLntbrZZ2+CisbkDVQl/Fi+MF7BgfUk2BLL+Ay4JC+P2Vivoa7aneowN
         OROw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772638842; x=1773243642;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BseyVlfG6qNLJh0pukGQEsnvFe0Y0lazqGGE1966Oz4=;
        b=am60qP4sPb0Kp4/DcF8Sh4guJxgXPMdaIlaTFjdaRULHWHLPc4oAPGsgj5arTwMBdP
         R2Mf/8Up10ibP6i/Q5c8HN4Dr8hx88sQA4RmOve6snTFWjsWeF7Vse0/98JaAQYYWABO
         lOWSkswgfu3qjlibD3lsCFC4S5o4rmUo6SwapdG/GE5XNZodyFTubORtJg7f+qzp3Nza
         7Fj2kEJnpFwgdjSyqrZe3X9SL+UxLOeD4uwg+pgtzRbbP+vL0+faxsaBgObCU/D93Qjo
         rrPw9oVJYnsKFM9GXOpB0jN3i2+eA4/nVa5Yn6dbyU+AMC0yeUYuSR5lJD5utd78WlIP
         GDxQ==
X-Forwarded-Encrypted: i=1; AJvYcCWetLOhTBK52An4wrcUgqLdCQaEasHn+lYMqKp4qGnmskTK5pcODLHGGskTmNq+CwcNKw4Iv3JsIsXw@vger.kernel.org
X-Gm-Message-State: AOJu0Ywj3HfjinOovq7wp7MnapMb0VhnRFKMuUXWbRV0ghlaKkfKK03r
	fDWzWMKO5T+rjcrzuHhyjbAe4rmn3MrVB8j+zBpp8kra+EuON62w0GSutWjaooaNrW7NwzD0Cyk
	vSnP9ecdzrLqhv3H1CHFC3eY+3PVmtsyN5a3jMTw07Nz20X9KCAd2g+PkIv52XCJ1
X-Gm-Gg: ATEYQzyHCxkrlsVZKo+VRSbN06moNTt/U3UrAzAlTwkgf0BzSTAQ5/29mzj8oKmuj3h
	8urKr8el4FiwJZoThy/HVkE55rX3xoKL1HzvmIWWQdER4cPidjgiIdhWHjsacy8JMhcv+GTX+TD
	pKIpXsV2S6XBH/s8YQEZYLBawV6OqyaW7bKawV/u9KB7tg6yTll712D4cCO4LHhA1RNLQlRjhaF
	ZIf1kjC3oVtLGtOTKnDcuwIrJpWeclrO5oTdf5E7QHfSBuSyRpzPd4HUm5mMbMwStcnnxjoOs2t
	pdS3JYVp4qJPw72w3obPirhzQsXMs9M9Tmn8Hr6XsHyGZNdpOcbMId8X+3Eobbi2OtYw46LkNJ1
	tINaXm3HXw/WOjn5HEzgDVwfDFn50S7vbkxEm5YLLSDKHdFoRxMLZGQ==
X-Received: by 2002:a17:902:f790:b0:2ae:4c9f:4a5a with SMTP id d9443c01a7336-2ae6aa01e74mr24774505ad.6.1772638842220;
        Wed, 04 Mar 2026 07:40:42 -0800 (PST)
X-Received: by 2002:a17:902:f790:b0:2ae:4c9f:4a5a with SMTP id d9443c01a7336-2ae6aa01e74mr24774095ad.6.1772638841774;
        Wed, 04 Mar 2026 07:40:41 -0800 (PST)
Received: from [10.204.101.56] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb6df578sm202097025ad.81.2026.03.04.07.40.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2026 07:40:41 -0800 (PST)
Message-ID: <22534cad-8940-43c5-a7b9-01d002943093@oss.qualcomm.com>
Date: Wed, 4 Mar 2026 21:10:33 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/7] media: iris: add iris4 specific H265 line buffer
 calculation
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Saravana Kannan <saravanak@kernel.org>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        Hans Verkuil <hverkuil@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>,
        Hans Verkuil <hverkuil+cisco@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        iommu@lists.linux.dev, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20260227-kaanapali-iris-v2-0-850043ac3933@oss.qualcomm.com>
 <20260227-kaanapali-iris-v2-6-850043ac3933@oss.qualcomm.com>
 <cbwz5wtd55enswdi2zvvy3d66nsxlemyzdypheibvljnewmkax@kybx63aveepn>
 <ce80e60e-90ca-415d-83af-4fe2e86ffd91@oss.qualcomm.com>
 <hrjwyqz4r6usqvxhnsvtap4byfu2zvumji6whudda55vuym5yk@u6s4heswm4rc>
Content-Language: en-US
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
In-Reply-To: <hrjwyqz4r6usqvxhnsvtap4byfu2zvumji6whudda55vuym5yk@u6s4heswm4rc>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: WQl3445VKgWl35W7i5ek0IrXEJlW-DR0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDEyNiBTYWx0ZWRfXzXwx5HAvkdos
 +D9+PUMqbe7RD/r61Kj9/tNNYuXvhWYddiGIacA2O3HgBYMcWpBqgS55IzRgkzgf/iaDvVSkKXb
 kH3SG0jcsybqWGoUha9oO3Md3kbrkxLZD0sCTGg5xvU42kkiFTpYVXEU+cqorcMDA6V3iLJxqXu
 6yL7myyxwBSeyCHXH5tBb5UGBzlren/6QHa8UHedkcMZd3JgVKA1EzskSt8/daP3tmu+QSD2lgT
 bo7HECOQqq7uNEouxE1PhxIPuad0h8lK9pA1Zg/r6jtsoZeowjieNE+MdJlzw7Dz9xUCbYQWcgS
 0tuAkwY1TnRV53Tlpf64EQaP6MTypQkqBowU0p/0EfmTB9m/3i9Mt8mVeVRzNf9d5FDfXikJGst
 Lf3/g7fEhvjg+dkzP2NANg/rjD0n4ypSSiZmM0nE6/bAvgnPUKUgfH8l54dsGMSMANxeKUfMW9Y
 +/glFiV+FEyxYUpjM7w==
X-Authority-Analysis: v=2.4 cv=CdMFJbrl c=1 sm=1 tr=0 ts=69a8527a cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=P-IC7800AAAA:8 a=EUspDBNiAAAA:8 a=_JvEU8PJbtvYPaoBJaoA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22 a=d3PnA9EDa4IxuAV0gXij:22
X-Proofpoint-GUID: WQl3445VKgWl35W7i5ek0IrXEJlW-DR0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_06,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 lowpriorityscore=0 malwarescore=0
 clxscore=1015 adultscore=0 impostorscore=0 bulkscore=0 phishscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603040126
X-Rspamd-Queue-Id: E448B2035B3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271138-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:url,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vikash.garodia@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,cisco];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action


On 3/4/2026 3:58 AM, Dmitry Baryshkov wrote:
> On Wed, Mar 04, 2026 at 12:18:58AM +0530, Vikash Garodia wrote:
>>
>> On 2/28/2026 1:58 AM, Dmitry Baryshkov wrote:
>>> On Fri, Feb 27, 2026 at 07:41:22PM +0530, Vikash Garodia wrote:
>>>> The H265 decoder line buffer size calculation for iris4 (VPU4) was
>>>> previously reusing the iris3 formula. While this works for most
>>>> resolutions, certain configurations require a larger buffer size on
>>>> iris4, causing firmware errors during decode. This resolves firmware
>>>> failures seen with specific test vectors on kaanapali (iris4), and fixes
>>>> the following failing fluster tests
>>>> - PICSIZE_C_Bossen_1
>>>> - WPP_E_ericsson_MAIN_2
>>>
>>> This reminds me of the commit fixing SC7280 support. Should SC7280 or
>>> all VPU2.0 platforms also use separate formula?
>>>
>> for vpu2, there is already a separate formula
> 
> It was more of "do we need separate formulas within vpu2".

vpu2/3 uses the same one currently here [1].

vpu4 seems to be using quite a different formula to consider it within 
vpu2/3.

[1]https://elixir.bootlin.com/linux/v6.19.3/source/drivers/media/platform/qcom/iris/iris_vpu_buffer.c#L313

> 
>>
>>>>
>>>> Co-developed-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
>>>> Signed-off-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
>>>> Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
>>>> ---
>>>>    drivers/media/platform/qcom/iris/iris_vpu_buffer.c | 51 +++++++++++++++++++++-
>>>>    1 file changed, 50 insertions(+), 1 deletion(-)
>>>>
> 


