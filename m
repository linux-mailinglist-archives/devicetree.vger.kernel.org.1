Return-Path: <devicetree+bounces-271552-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SEOcCgd3qWl77wAAu9opvQ
	(envelope-from <devicetree+bounces-271552-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 13:28:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 781DF211A5C
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 13:28:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 36FF2314FFD3
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 12:24:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0F1F37AA6D;
	Thu,  5 Mar 2026 12:24:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZRCppE/n";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cGJGlYOD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88CB11E0DE8
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 12:24:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772713443; cv=none; b=u0xXHep0pzz1uRpAucsngwEncncq4SrEjyrh6lT+ImzPeVWzXehEJ0VGkuAbKCZ/tYUWUmgSYgr0eCVL2m3w+sPAxHYvXYut7IdJFbeZgUhSbEMyx2DHVCdckwcECdEej5ztqhjh4Q4sgan5uYyhLU44D6SPXRo2mdiYbscKB9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772713443; c=relaxed/simple;
	bh=Mi/di9u/oE49SDz0n2llheT81KKh8sJE3C1SJjld07o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ANPt/G0x50a4OsxMl5DCE+xEUJ0Sa1vjvz/xBznY0y17wlrgIhycCsdvSZXAlm0gv+qjJqx79yCI+N54Cvz0sy+cNXqmGfMFWwlqUWb5fSCNkDQAJLDjY5USfMZQP05n6647atwJ8fDBSDKP0TtZJLTXHlMhCDz2Oa3fPebfUFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZRCppE/n; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cGJGlYOD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 625AG4bF2118283
	for <devicetree@vger.kernel.org>; Thu, 5 Mar 2026 12:24:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4X+oK0hBfEQ9a77QBjKKA6JUp6Tb001pf1lNXF0z5io=; b=ZRCppE/nPWBIE+A6
	RKBhh6CrfMo+XuEV3g2gqqjLqFjI50slmBf/Hh8EGFsdIIeek/9FOPb+laUn/wcd
	vjh9og/kbFrMiCZfMdTiL/+hhmgpzP517lwObkNldff1NJkx/1jFt4+UnmAx+qPj
	UCmWvuND3O+iXMiOgY7LRTJYrj4jEMM5ITdOZhcKHQrMhyAyzxYeyZxqjnXIri4W
	J5uVLRk9lv4taDmFWfHhgSX6R3IEC5MvgACC8EARfhEiPmNNV0S2Xw2KfGzBLJol
	CrksPK82CQt/WHCwyy25HUWqWbqHHEYTle5fsZLv3kpk4giK6jA+qbb4XJHFzxAE
	zLqcDQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cps0m3a27-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 12:24:01 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3597baf976dso17573452a91.3
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 04:24:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772713441; x=1773318241; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4X+oK0hBfEQ9a77QBjKKA6JUp6Tb001pf1lNXF0z5io=;
        b=cGJGlYOD/L667M5mDCi35BdLH+sRuFNtzTwPfVF7BAJKpplRvh8RrcFN4DKx9/TYdM
         Oc294Jzd0FSptGjnqu9cHSMQgG+eZ5/m5ycL5MDe3V6tYheoQEXtEwCtRDRgAmksPbqm
         w4MFVMqWxrUog3e4nsA+FaV/c6kwFW/vl49vM02LFijeCtyzeZUmozw0lsGPaREKlTIe
         3X4E7qJlbeAwHt+4pwBXZeccsSA4aVgTeoWSFZD2bSaMkUb6Nc8lwEI3thbKRy+/W3n5
         ENqO7Un/xCFLrYAgROG1IwYwCITySY19I8xjV3tsLFvVh7Q7SFNmYcZoiaElDMVx4Gim
         VwCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772713441; x=1773318241;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4X+oK0hBfEQ9a77QBjKKA6JUp6Tb001pf1lNXF0z5io=;
        b=NXI7lNhI5NmWycxuG2i6GFXBbzPd0ECAPyc14+janlev6P+33zCd5gbd/wWRAwD6oy
         qGxi3Q+WCtmKnFc5EvupuFwPdVmoOYZU4/GPrjzMTJ/BKzy/5bIC5LsKA9+h16QqRLT2
         OkmEVlIgDOyy2CkkvDX387oAon3aDnIee0SONHUoiFHdPNpR0k2qxfB517KosHUUVrSM
         A+k7rGvZWgcrcBUAy0xqk/Crp34vu2wi9qod930zAIBcP15rNJDYsNVGgVVYbko7ITVp
         2Vsme2dbDT2sB1Sit8o+gse6BwhcZ4Bm7+fgvf2VB1yFR4OOYNbaOaDDzkuBDx6FGxul
         lhog==
X-Forwarded-Encrypted: i=1; AJvYcCWQ/iX8gsnlpv612n7GQ/oPlqlfm19XwFy8Mo0fW+wl1fX54qWh6mO1bwnrOTrngxBKSVwRypoGDb7t@vger.kernel.org
X-Gm-Message-State: AOJu0Yzya5/NPHoXQZ8YQC+tq5xUiRHvSlLTJRX9tBN5orq4oM0JX3WL
	eONF9TNnTIMp2bGUhz/mC0WxNoGrbr7P++F06m9cnzc6pbowazaXKJfNLV5uUqcX/oyv1LpS9YV
	NfcPyZhTh5Toe2PsOvwqSA1wRP0Aofa232gsqzs2nQoz010T/CK/EePuUzkE/HNld
X-Gm-Gg: ATEYQzwgPIEq098WVGKlxl7bO0jQA+CFnpJIIq0FUoqTpSL1agsZ/f32p/7k7iBuRNe
	twU1haOyYoJWGTzql9ZHhY3CzSIL7XN++Wlhw/KwO8aLOoADSHHHGHJamloKXZ/WH58bxzwY4Gu
	pWXgT3JpC0SeNgg0hM+pdeY5/icFfHjePnr7z0dp/wf4rvhbDxHLLb1u4B4H7ThdACwqwUuV8Cq
	r6Qdn5LykB2RUe8ck0Fv87hrCe8QjSHfjDarPzfdupA+p9DSzfce+Yg62Qsf7gtpsTI3rqJRHp+
	FaHravkseV7k1wP5ClneaEKu/cZYBbZGThQ3tzYs52M3UdnLMGPo4XFaBLlTNPXKMREXwvlyRtX
	MEjGiltQnRmAGtCknyOpuH8sOaTw1qMV3qvSDiHvSLiJYp6mGpnErd88=
X-Received: by 2002:a17:90b:1d47:b0:359:1821:b4e3 with SMTP id 98e67ed59e1d1-359a69e54acmr5140438a91.15.1772713441128;
        Thu, 05 Mar 2026 04:24:01 -0800 (PST)
X-Received: by 2002:a17:90b:1d47:b0:359:1821:b4e3 with SMTP id 98e67ed59e1d1-359a69e54acmr5140385a91.15.1772713440651;
        Thu, 05 Mar 2026 04:24:00 -0800 (PST)
Received: from [192.168.0.172] ([49.205.248.49])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359aa1ff04csm2456190a91.3.2026.03.05.04.23.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 04:24:00 -0800 (PST)
Message-ID: <78f874ab-14d6-4ecd-89f7-4be27720bc1a@oss.qualcomm.com>
Date: Thu, 5 Mar 2026 17:53:51 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/7] media: dt-bindings: qcom-kaanapali-iris: Add
 kaanapali video codec binding
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
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
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>,
        Hans Verkuil <hverkuil+cisco@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        iommu@lists.linux.dev, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20260227-kaanapali-iris-v2-0-850043ac3933@oss.qualcomm.com>
 <20260227-kaanapali-iris-v2-1-850043ac3933@oss.qualcomm.com>
 <4dcbbd06-18eb-46c6-a52c-07a4b17205cd@kernel.org>
 <68db6d61-640b-4eef-8ccd-ab2fbcb58427@oss.qualcomm.com>
 <6a610a7c-04f1-4023-82dc-e9cdf5673d55@kernel.org>
Content-Language: en-US
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
In-Reply-To: <6a610a7c-04f1-4023-82dc-e9cdf5673d55@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=e6wLiKp/ c=1 sm=1 tr=0 ts=69a975e1 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=KPiuay1jFzAquJblYynD6w==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=Hr5Ahw7noa96dzT7ZQAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: RbSosEOrXHDSTsPI-NAvKl6bdVMV8Vc5
X-Proofpoint-GUID: RbSosEOrXHDSTsPI-NAvKl6bdVMV8Vc5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDEwMCBTYWx0ZWRfXzfZmgk4UfxmG
 NA/t4dx4bQdTvjUDJ1HjUywZk7rxaXir+PPoNOtbVdaSjD0ZhQbROEhAUbfxrAyigy5rAGBFocM
 H2+/0ulY6diayDrGuou9enr8MMtGzZxJK5iM78c0lHScFMuLdLDbJ0pUH31j4zoWwrwjwdVaqfv
 ZFbJC0t3DlfxJwgVQ0R79Cv3ZWMj70jCmKBk+4j/wICVrTLwW/homKlIYC0hy9e3Lh/8l7lLbB3
 3JlHUNOSjgkT7Su8PjfwLxkrZ5wZQgeSB9YeTSATYEgYGDIGAkIPlKypUZSv4fEYTVVRQd2WVOX
 bhHu6oU/9kb66feo80/ijFsmRS9WKbakeF5N/09deiPpZgQzUs893bf2u+U6MJ+y6v+7Cb5onr2
 YisruOl0+VSMhIejYiNnVVXNnrEXd49zpoJ+LWXG/lRt9kvKHtUcpYQ26KUimSYeS81hQ9ifsC1
 +yOHjbk+CBAE/dPEfwQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_04,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 phishscore=0 lowpriorityscore=0 clxscore=1015
 spamscore=0 adultscore=0 impostorscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050100
X-Rspamd-Queue-Id: 781DF211A5C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271552-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vikash.garodia@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,cisco];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action



On 3/4/2026 8:37 PM, Krzysztof Kozlowski wrote:
> On 03/03/2026 19:10, Vikash Garodia wrote:
>>
>>>
>>> ...
>>>
>>>> +    };
>>>> diff --git a/include/dt-bindings/media/qcom,iris.h b/include/dt-bindings/media/qcom,iris.h
>>>
>>> Filename must match binding/compatible. I asked for this multiple times.
>>>
>>
>> in this case, its applicable for other platforms as well. Naming it as
>> qcom,kaanapali-iris.h would make it look like kaanapali specific.
> 
> I repeated that feedback way too many times.

thanks for the feedback. I’ll fix this in next revision.

> 
> NAK
> 
> Nacked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com
> 
> Best regards,
> Krzysztof


