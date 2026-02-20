Return-Path: <devicetree+bounces-266991-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kLZrIIhxmGkoIgMAu9opvQ
	(envelope-from <devicetree+bounces-266991-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:36:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB2A168686
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:36:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2196F3033252
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 14:36:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF3AC273816;
	Fri, 20 Feb 2026 14:36:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fPjLrKRR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VDdRFtpW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 716A127FD68
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 14:36:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771598212; cv=none; b=Wtlh6EzE/SMkWQO1CAl3CdDcU0XpyPtttMPeECnKNx4a3VXaJyGyJgKbdr8CnLtarRhxl3N+8kIrAvhQA/TNjxBDxBzHEJhtndLijtllamHq7IVCbXMrKBiH1Dr7HfxLRujazehDeyGKZXqolWM6cTb0dfLoJQxw548/32w03N4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771598212; c=relaxed/simple;
	bh=JUR1nNJ7jsi39c2LvNc84POjsTo+kQhIYTHw0OmyLtQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Q01GR/E57rXQnbzAobwnzx2H/Njn15iJSIp9+ZynQ31IHb4Koas3sR0IxHjr6l0pLG1yqDeU51O1/bW/oSLJ/x303UHdrsfDcsK9xp41FvWAXTCuIFQCkPMNbUDxU9KaGSGPjktnnqyZF1Rno+R0uv7JsX9IedOOQ6zPLhFcZFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fPjLrKRR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VDdRFtpW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61K5Rmlc3697666
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 14:36:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9MarWudrUci/IfkGN7mqcPI87qZg4EMXn4IkqzVLSvA=; b=fPjLrKRRA7SdZbtm
	qPjwx2/f9u78/i+rQwbi0IxUFiuI7sW1nT9dj0UjDu9v781WZ48OqYO0X87Wk6XL
	/BuTcRwkq/Ia9FqD7KM+/66zKscHOycIZpLGSD5Hjq80JI7M95uj2WYI/THL1DG+
	aGN7QOKzEmKS1LNb6Pig7YNvFZ258kRS7raJvvBg9VaY+gCIhKnFIYOsEzJW9caW
	qKpdjf7fd6kO1VdZS2zfax4ToafFg6knjthfa9H9iPm2eR4kuTVe6mHKS026DQXM
	NxDeRXV+c/tsGesR5wTD42vEWATzpmlLkzTt0v5slSeQXTX9D6NfXVJ8Qf0W2MC0
	vl6Ozg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ceh5jha0b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 14:36:50 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb38346fdbso205823985a.0
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 06:36:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771598210; x=1772203010; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9MarWudrUci/IfkGN7mqcPI87qZg4EMXn4IkqzVLSvA=;
        b=VDdRFtpWJgLiQZ1kVIy4oIIDm3qd30xr/dMPL8wtjlSoK78nNq8VeeUPVEdYyEHHnO
         WLRWDnWH5E4CYp/J7fAg+vpOdIiWiGcCZSt9ns2LNkSaTQd76lmlkhTTKp1Y9lWoLjwS
         wYhx8TzbQcX5NSzrZb+DNrg3soezLo/4d7W3xBM5hk2r+2OOMmB4hrbSgYoQBYYqpn7/
         hr3IhtvpXxvM/qLyYNLEj3+NevtwNeDYo8VmbuTA2d0sBfRH5XxrneS4mkd0TMworMlg
         Mm9fNhK3NPa43rMod1zLmXdYT2LfIBX06uXoWk+MCXXk1gjV19YUMhuB9uUBfQ2Nh8Am
         iCoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771598210; x=1772203010;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9MarWudrUci/IfkGN7mqcPI87qZg4EMXn4IkqzVLSvA=;
        b=Qxyd0q8t2sfVpoUVkMdciEbsd+2ozIWw1zKK7vdKKIQdP82q8n++CxbKqFXalvn6Ar
         ajS5WSYjMXSwT1OPODEDhJuIUPuYVwwZb6WPwp3rGgDs8iD5LV5ceLJ0fcudt46S8jpu
         5/GawIudkay7ar2yP9qSnoyfsa73UNcK6DRfFADQ59TOQP7Nno8EjCnhMW3UstpL75m7
         NQmrNfpE5sMxqefxzkwEbZL0klS7K4hAsSaIdtVNj83ITRkcjLCnBfpYi1//y/kecNAE
         +LQI6yZ6bRjumOiWw/tMP8QFsoGs68eU8F/nRM20qWjSLaWB8Qum80NTfCUghsyHKUVz
         EnrA==
X-Forwarded-Encrypted: i=1; AJvYcCXFsl6rzlk9vgTdykp3FmD7REmG7ev2GOPBc1xq1zopraPSFpDxcwShm31Se8ObHms+pNhHHuV7++hR@vger.kernel.org
X-Gm-Message-State: AOJu0YzI/EAYHeztoTgvNCywBPkwECFvAuumhvr8CrBHaTol3R8zdH0r
	UcaTcx2qtBMOEHDwlm4pPxrI2Adx78T/EAgqBOwiSNi4ZFdNXHkisOzbfblk9zmATcGcDVUartO
	ayX67gvHmOU5ox76OLMmN2Fjd2fsj2zjV1NSzD3NTGMraemA43ZLToY2Yw4kViRhu
X-Gm-Gg: AZuq6aJoPigAhbnrAgqgZd7uVzWcARsg6I+YufGZe/I3mpb1J1Ahw4icfgcVKicY731
	OS9+0WesDdNt7pPDeYlA1BePA4nqW0hp/njsl0mC6Z3I4rHeYYeB/HOifdoZKa2ncNjvbe4uue7
	naYugum5pJ1sFxbhoeP6w7ib2cqB5VqIY30qJs/Fq2rL9hMtM7IyvZHas+2u/xRZgoaBjMyq3WY
	O6W3RCzES5oMvBnUGN4E4+UbvhhSUPBdzgB5cv4RnwOJjHDH8xTWLFGoJ7/vZ4HVthCUwj9YxQh
	bL+2/ejRbiFuo6TJ9q7Vpt7vQaVvACmFU50ipnmfuVJzl7jCSrcPB05gLMoaaGNZS1x/CjeC//V
	Kljgnk5037FKSGKQqtzfoNMtdiAQez9UrotkiBEf9HMPWSF/4RSP2QL2MSYy/2ZnF5ivJCCuckK
	O4wIw=
X-Received: by 2002:a05:620a:3713:b0:8cb:4059:a90c with SMTP id af79cd13be357-8cb408f71a8mr2233847385a.8.1771598209802;
        Fri, 20 Feb 2026 06:36:49 -0800 (PST)
X-Received: by 2002:a05:620a:3713:b0:8cb:4059:a90c with SMTP id af79cd13be357-8cb408f71a8mr2233844485a.8.1771598209355;
        Fri, 20 Feb 2026 06:36:49 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc769111fsm691030866b.57.2026.02.20.06.36.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Feb 2026 06:36:48 -0800 (PST)
Message-ID: <d1f9ae01-a81a-4287-9f98-f2318ec6dd01@oss.qualcomm.com>
Date: Fri, 20 Feb 2026 15:36:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: sm8750: Add camera clock controller
To: Taniya Das <taniya.das@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@oss.qualcomm.com>
References: <20260220-sm8750_camcc_dt-v2-1-e4b7faf35854@oss.qualcomm.com>
 <13553877-a4d0-47ad-88ce-3d4d5b353101@oss.qualcomm.com>
 <c8e9eb0c-9c49-401d-ae4e-21dcb1e1e843@oss.qualcomm.com>
 <a39f5526-8727-4fb6-9a93-36f412b93f88@oss.qualcomm.com>
 <00a1e492-1235-4dfe-ba0c-b1cb7c43ae22@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <00a1e492-1235-4dfe-ba0c-b1cb7c43ae22@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Raedyltv c=1 sm=1 tr=0 ts=69987182 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=OnNOMOsO3_7Dkr8-JnMA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIwMDEyNyBTYWx0ZWRfX9Ye/O/KbMbGx
 ksDyWIv8euVawoPN7ZBWDD/A1Q7pmaaD+xit+HeVwtXsVsUyrRdxeBxphKeeIs2MXNaOdH+ZuaO
 QahbJSvB7VcGBNecGujd/Z2h4XH2MfsTmgrMyO6A8shMGvjpvWkThWN5oGxKxNNC9UESjVBfFQ9
 jKaFJQZrTNaCUTJQb8V9OEwPgK9JYWrylfc0QIFo7m14el3hZsl95gu7ZHmDUFFb7FKorlWRHAK
 FrDduq5CMoSSp4nT8O5GFXPmUoteDa9W1VOFt8B42qUmsOmdiYDU3BgDNFeq9SDabevoOIUxefl
 0qm3utKWkCzHXNZPeKw0E8DPTtmJ3Vle+5Nh+V3C8Vc2mBgbgHduvVbXXIn71BOSoEcc7ZYuebE
 4ynLC7YLR7++4YLszW34J5MGdZ9MTqCJOocY0wA7VHVEUg3gvbDaFI/G9mYlexfrmjGI7h9k+xf
 2eczj2FDJUf7vhWcbmQ==
X-Proofpoint-GUID: 6wqzjAQ2dsj_aT3viO5SoqeslZlSGVhz
X-Proofpoint-ORIG-GUID: 6wqzjAQ2dsj_aT3viO5SoqeslZlSGVhz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-20_01,2026-02-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 spamscore=0 phishscore=0 bulkscore=0
 clxscore=1015 suspectscore=0 impostorscore=0 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602200127
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
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-266991-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
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
X-Rspamd-Queue-Id: EBB2A168686
X-Rspamd-Action: no action

On 2/20/26 3:28 PM, Taniya Das wrote:
> 
> 
> On 2/20/2026 7:55 PM, Konrad Dybcio wrote:
>> On 2/20/26 3:23 PM, Taniya Das wrote:
>>>
>>>
>>> On 2/20/2026 4:25 PM, Konrad Dybcio wrote:
>>>> On 2/20/26 11:28 AM, Taniya Das wrote:
>>>>> The camera clock controller is split into cambistmclk and camcc. The
>>>>> cambist clock controller handles the mclks and the rest of the clocks of
>>>>> camera are part of the camcc clock controller.
>>>>> Add the camcc clock controller device node for SM8750 SoC.
>>>>>
>>>>> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
>>>>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>>>>> ---
>>>>> Changes in v2:
>>>>> - Update the MxC phandle to use MX for camcc node.
>>>>
>>>> My point was that both MXC and MXA are used
>>>>
>>>
>>> My bad, even I think I got confused with this. We really do not need MxA
>>> voting as it is always ON. We can sustain with MxC only.
>>
>> Does that mean we don't even need any particular RPMH level on MxA
>> for this usecase, just for it to be on (which as you said it always is)?
> 
> Particularly for this usecase you do not need.

Thanks for tracking this down

Konrad

