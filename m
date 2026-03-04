Return-Path: <devicetree+bounces-270871-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QIHdEEffp2lnkgAAu9opvQ
	(envelope-from <devicetree+bounces-270871-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 08:29:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B56B1FB989
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 08:29:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1E0A4301BC3A
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 07:29:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAD6635CB6F;
	Wed,  4 Mar 2026 07:29:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="L9AoUr2w";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="F1HHykAn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DC01349AF9
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 07:29:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772609348; cv=none; b=dzh8uq4v2JQXRfsOOpIcKyIGcVfpV62akx5X0oD8488qb09iA82r6ixUND90mvN6CyeMFSFT3kQqB+R8enzE2BGPTz3SdMhlFD8cPuJqYTW1mSH5LnNYOFutuMa8lqa4r5mm/ZZj51/of6uRgKtu5ZRcAya9Cj1xsotp31huuDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772609348; c=relaxed/simple;
	bh=owgmetOP017zUc2xmYxQF4xO4rRCUn1Zs9CHzd9jTb4=;
	h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
	 In-Reply-To:Content-Type; b=N2S99q4xIkhPkKHnH++em8wgK3wB5lj8iHxdRB+VsAZZkmHEELATXA1joPX9gDikc8vy6pNWvy8mEAEyDH2k69NRFI8OhYyChntQ6oJkjSCIKwnMLe78kZ86rcpD/A9dS58nx3e7wI1+QWuukT1iXvIxuyPJyqyFcj3KeyUWOsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=L9AoUr2w; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=F1HHykAn; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6245SQbB2275097
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 07:29:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	acRVQGvlsUrqD0vKmGV4gn6wFUEPlbyFgT5Hb+l0yOY=; b=L9AoUr2wyg0u+woe
	h/mIenrzyjjUQj3+H0OqNNE1ifR/4+1jC/pGGOcRW2O3Fr6e/jND1+rANqW3eSe9
	nzxNdOI4nxP1rV/Dl5pz7LXEELqXyNgBqZtum/dI2gLk9T9N3m/kcWNC5hSEq6M0
	mryvZNhKVJiinOyaYOFYTiyCsmstDkd96kfj8ZC+Ux5t4+b7NCKgumlmHrrwVMc3
	PpxkdfhnhjTCZZGOp/H59g/pD+OMEq13wlb6QStqfb4+KyWP/qFgxJkqAgnPbE6q
	hldJIUhh5nj66a5w8a1xKXYZqdKevDvCaa6hBHWoz92s/GMAaNZZucoSHJbAZ96F
	PWsgrg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpc4mru22-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 07:29:06 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2ae415b68b1so39595785ad.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 23:29:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772609345; x=1773214145; darn=vger.kernel.org;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:from:to:cc
         :subject:date:message-id:reply-to;
        bh=acRVQGvlsUrqD0vKmGV4gn6wFUEPlbyFgT5Hb+l0yOY=;
        b=F1HHykAnOhndPh5bTIq4WpY0lS/d3stxXv82FBLWe5e+7oMAmR5Cl6WzqJYIMW4JWh
         jjx2BPa+igYnl4lFY3SsMke4u60eX9DG05+vsqNhGZi4UB/pNU9BonvyAiRjbUpaFdSN
         7DipPw4Cl6lMu2TCp7/iqI9k7Kefym8XOWPtyXhFFpJnA4R54riUQns4s3+3SFbkA4np
         ACjdPdS5y0bLv+PudxKcmgbmHCETqOHXu4KxWKlqrTwawGgT5ZP64pTC10EHDrknF4Sa
         TGlCqLiL+fJT/Y04o75IBXuwp+r5GulbJfNMeh8DJuOo4GxYf8qcJK8CL/z3qzQEeFGB
         VxHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772609345; x=1773214145;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=acRVQGvlsUrqD0vKmGV4gn6wFUEPlbyFgT5Hb+l0yOY=;
        b=aVIClIvK3MbimkZo42h5abh/kq44B80XA3DxiZFgc71uFgkWQAtK752cnXHR4Qz10M
         FSIOG23d1tCqdSc9UWFRrTIPY4iqBGOlteaScyxnoyLnNGKAe7MUM92AQT0lzES/IU8L
         ux33wOH+hCWfIWJxMFciwWEZcyRV/wsuZnm6T6JUSxgIHkdpVFMq+cz1D+tO8+mdAUkQ
         MwwMjEBByvYU9o9KZJcQZ/Bm1bLbgoZdLtQA5lYKDOPGmtmIpYOtr0a6ZRNMAJ/DqQL8
         8wWBw4r0LZ5huqmR8HyoOetjfMQWrPX86qokizvbeLglBdcDBKViXb4b3QeqJGE3zyMw
         GQLg==
X-Forwarded-Encrypted: i=1; AJvYcCW3RJaZ1VQEFmhS6QOxHoz/xyQ2FxP0XV5QqpNcCzVWzGKfj+OyH/KdVqGyytcBoWZcGPrTU7hYzapY@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3ItGFE07fX3O8hI86mpt6Q6dMmU+oGVdsz0uFU5CHIHMx7Gcs
	SfYXVo/gd0VnO9Q/gw2ok0En8zHkcFBhICq+maVdJaRudA4BP1xZZ1mx7qjzVksydZln4N4cr6N
	OFZS6ZnPqHnNaBAxaaeZ1W1o/FHH40wRa8SMaMy2P8EgXMfLPS997J7of8GG/Xs55
X-Gm-Gg: ATEYQzzNPU7XHm9pulndxhSo4Cs0TEMviUrmj2p9at+Zq1/NbMgfzWyYB+BwAeXnQSl
	uIt/c30kZnXIoD9yKn4i2NcC7NDcN8T+vXwkM0/R92ZygNcEOxcXjxS0Luugs+rK1MAfQz4ceIo
	Ypi8uErnLremWi0lNG9gdwZ06omiyXSpAWBPCM06F7ynWxC0cG4czL8iNuMyy61JXkfNZrKqEH1
	NBffjIviVUijLE+9D6xUdFtPiYmeuLYq/qIQpNTm+gq6CljbmxSh3j6pM5Z40LFTljdYqo+xYn8
	u0EzSo1ZSFv14fxfDDyvtWvpej3vjkglnt5U3Z4rADRICmZrWHyr7kfIzrIo7z6I+fil2ox37po
	7wUL+iQv+qFyhH1bJ8+PbTZLvURCpYQzqshk2MtOagRGRBodAxA==
X-Received: by 2002:a17:90b:2792:b0:349:19a8:e00e with SMTP id 98e67ed59e1d1-359a6a7ca47mr1074416a91.31.1772609345235;
        Tue, 03 Mar 2026 23:29:05 -0800 (PST)
X-Received: by 2002:a17:90b:2792:b0:349:19a8:e00e with SMTP id 98e67ed59e1d1-359a6a7ca47mr1074400a91.31.1772609344684;
        Tue, 03 Mar 2026 23:29:04 -0800 (PST)
Received: from [10.217.222.63] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359aa403c57sm96394a91.13.2026.03.03.23.29.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 23:29:04 -0800 (PST)
Subject: Re: [PATCH v4 1/3] dt-bindings: mmc: sdhci-msm: Add ICE phandle
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: ulf.hansson@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>,
        Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
References: <20260217052526.2335759-1-neeraj.soni@oss.qualcomm.com>
 <20260217052526.2335759-2-neeraj.soni@oss.qualcomm.com>
 <20260217-berserk-puma-of-focus-bcbe82@quoll>
 <e3ac0681-605d-c1df-e4f0-78a2c142fa66@oss.qualcomm.com>
 <21a87714-cd11-4217-a2aa-82fddc3a8530@kernel.org>
 <544925d0-cf32-6b2a-548e-d6f7cc517581@oss.qualcomm.com>
 <01085021-c116-46de-a0ce-730455620cb2@kernel.org>
 <32b7763b-ba44-4341-8528-be97d6607354@kernel.org>
 <06967254-7fa6-218e-db8a-8e4a118a7d24@oss.qualcomm.com>
 <3339ddcb-d0f5-4117-99fd-f3f158b7903d@kernel.org>
From: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
Message-ID: <04f83e93-5866-9747-b5f8-109ae3c16368@oss.qualcomm.com>
Date: Wed, 4 Mar 2026 12:58:59 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <3339ddcb-d0f5-4117-99fd-f3f158b7903d@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: oL-cqjgSzJydBqbchR5QZVaNRZ_tE9Yb
X-Proofpoint-GUID: oL-cqjgSzJydBqbchR5QZVaNRZ_tE9Yb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDA1OSBTYWx0ZWRfXzYUK3f9ZNNiA
 gmLTm0E1txVD/qxL72lHexs+JXtY2RaXGxRoEZYsI49mevUHXPdXgiPj7KXbeqwMhBNpWSZ2Nrk
 lO1mc79Cv2Aggz8CfWECq/XIFyTgAH96DlltF+hEgiAWqa75q8+ef1NLgJMbrboywiltYEzDQBL
 3tP7B2nXaQCfbWlbxM0BC1fPDEomQeSYSSaBRdHdzKf2hjd7wSB75NJf23XNNPd+0DN0JxkTOsU
 ahxpGuBTdOAPn/ZgmGzyaeBwxR5FzoXywX2KMCD6Fr+085d3dA09wq60RJsIYsoHWSLzxTo/SLD
 FAHJf8Wg4TJJAvXKsCWk8YIzUaUYu/Gt8h7NioPLkFjkedjCYX1TqEhCqLY+KxtdSxix0NkmB4d
 adLKbxpFWLayiLgZ6+t+fMehuxsNImYJwhtRxNrQDz1p0SK+Yfn9jOniW2NN5bloOdmn6Kv7No6
 2x43pwRRQzsTSrwYcTQ==
X-Authority-Analysis: v=2.4 cv=C67kCAP+ c=1 sm=1 tr=0 ts=69a7df42 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=RyUJWM3ohA95taQL8aIA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_02,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 phishscore=0 malwarescore=0 bulkscore=0
 priorityscore=1501 spamscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603040059
X-Rspamd-Queue-Id: 9B56B1FB989
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-270871-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neeraj.soni@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action



On 3/2/2026 10:08 PM, Krzysztof Kozlowski wrote:
> On 02/03/2026 12:25, Neeraj Soni wrote:
>>
>>
>> On 3/2/2026 2:27 PM, Krzysztof Kozlowski wrote:
>>> On 02/03/2026 08:48, Krzysztof Kozlowski wrote:
>>>> On 02/03/2026 08:45, Neeraj Soni wrote:
>>>>>
>>>>>
>>>>> On 2/19/2026 1:57 PM, Krzysztof Kozlowski wrote:
>>>>>> On 19/02/2026 06:38, Neeraj Soni wrote:
>>>>>>>>>  
>>>>>>>>> +  - if:
>>>>>>>>> +      required:
>>>>>>>>> +        - qcom,ice
>>>>>>>>> +    then:
>>>>>>>>> +      properties:
>>>>>>>>> +        reg-names:
>>>>>>>>> +          not:
>>>>>>>>> +            contains:
>>>>>>>>> +              const: ice
>>>>>>>>
>>>>>>>> And reg is still 4? This is not correct syntax. You need to define
>>>>>>>> proper and final constraints per each device. I would write example, but
>>>>>>>> why... more things you could just ignore.
>>>>>>>>
>>>>>>> I had included changes for reg in v3:
>>>>>>> https://lore.kernel.org/all/20260206112053.3287756-2-neeraj.soni@oss.qualcomm.com/
>>>>>>>
>>>>>>> but those were not reviewed so i assume them to be incorrect and dropped it.
>>>>>>> Will fix this in next patch and post.
>>>>>>>
>>>>>> Patch v3 was also not correct, because SDHCI v5 devices should have 1 or
>>>>>> 2 entries, not 1-3 as previous patch said.
>>>>>>
>>>>> This is not clear to me. Here:
>>>>> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml#n80
>>>>> it says the entries should be 1-4 and there are no v5 specific constraints.
>>>>
>>>> There are, just scroll.
>>>
>>> Here:
>>>
>>> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml#n212
>>>
>> Yes i had looked at this but, as i understand, this constraints the minItems: not the
>> maxItems: and in your comment here:
>>
>> https://lore.kernel.org/all/21a87714-cd11-4217-a2aa-82fddc3a8530@kernel.org/
>>
>> you expect v5 entries to be constrained to 1-2 and not 1-3. So, as i understand from here:
>>
>> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml#n78
>>
>> the v5 can have 1-4 entries without "qcom,ice" and 1-3 with it which is what i had posted.
> 
> We have long discussion and you are just not replying to the problem. I
> am done here. I wrote already what is wrong and what I expect.
> 
> Repeating the same as before in the FIRST comment: Your patch allows
> incorrectly four reg entries for v4 and there reg entries for v5.
> 
Sure. I will test and post the new patch with constraints for v4 and v5.

> That's a NAK.
> 
> Best regards,
> Krzysztof
> 
Regards,
Neeraj

