Return-Path: <devicetree+bounces-315562-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TsMXDuTvPGqxuggAu9opvQ
	(envelope-from <devicetree+bounces-315562-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 11:07:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C4B6C4148
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 11:07:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=VHSS0zPK;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=jm812rwj;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315562-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-315562-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 649363055069
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 09:06:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1606237F00B;
	Thu, 25 Jun 2026 09:06:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC49F3769F4
	for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 09:06:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782378402; cv=none; b=RkLreCJX4lefPp7xrPBBkU5eCTDUcNp2cAZC4MketcIKrLoLfOtJ+8lvLtHsWyjF0mA41NGB6AHyf0FzwUKXFXLjk66OfhNewstjVsSR9a7dQRw/GkO19jvzzS+S8+oovTwuf3KUMp7sCcTItmaoLIKYicX+I1ZKXCC0Dzp/Y30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782378402; c=relaxed/simple;
	bh=pp9eaPjv9rnptr1WI20Uc/j6CcRHM7bBBfaRB0Z2w1Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OwuQySwAuerZqYiF54cnx8mdsrfcr8mC3nlYQ9d3nyC6YUxSIpbpIEFZx/f+lbydS7Ir6GBJgzTmRm114pS4GP3bg/L+TKq5PJtRAYMhPKpAgHBu53SqT8Q9YOWXFFeNuK3sP68/N65lykMFGoTUusew76dQ8jjBTCvrCoEs0YY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VHSS0zPK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jm812rwj; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65P8p4aO2951408
	for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 09:06:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yoIbfyB4RGrkSHBFMdH6jDJeDEis0v3MRca0wSXz5S4=; b=VHSS0zPKAZ5zHAO7
	ZIgPyJNV9RROWn6xI9xkYojFGHCr+CYAvDwq3DwDbnE6mzB4K3fnJpdJsjPx30f5
	Mm7ne3afzR3iq3QzfVgc9LuZ6nAIqmGUTIM1NYlJ6lznQmy2SvAIx1KgLG1Pi2HR
	5cwj8dUH/l6z4FpBTCqrha/Q3eTTOQDkR1lF9gENtaQZryP09B/+5l5+kc3SsNnX
	GMIR1xlV7rD51ARgKtGnNfLYwYo0AEnG8dh+/Q8feKVEQFcnKhHgTb7P8wePJxUZ
	BhQQBQ16qH5bwsxFOWefyKZv5ofFN8waXO9m1hVTfFD0s66KFG8IPCoDSH6sfzww
	xG0BPg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f0yynrccp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 09:06:40 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-842446a3851so1383557b3a.0
        for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 02:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782378400; x=1782983200; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yoIbfyB4RGrkSHBFMdH6jDJeDEis0v3MRca0wSXz5S4=;
        b=jm812rwjKm01IusSow5ZPC/WMh4yxdHhyeykjXPx2dcVAPEs6U1JpCmj3l3Z8BtaHS
         zha/EygdC6AlyGB7QBcCQgfWynxe1aodVNZgKFRl65WpxfvqwhR+9UI+i3hVfOokXbzC
         RHmVPLTKouF/J6/o+snL5HCGgWrtzidztNfqNwZGcWl7XGCNdHU3XvtVcjwYPR1n79tr
         sdifVKmJjqpgmbItI3yhlwUrOzpePe1QSqljNDfBF/aD6HDFh9R+TlyXV9VbYDAd/kNH
         Ye7H/arGNc772STDSVEu2/F58XJwx3EUfNrocIrpZjCOS40bxm6fg/+EQo7PnEz86JHg
         85bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782378400; x=1782983200;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yoIbfyB4RGrkSHBFMdH6jDJeDEis0v3MRca0wSXz5S4=;
        b=OkB3EesKUhlnmm5GJkQHSD2gOLjsdcvN01EEDz5/+WdCks7R4xeA+phk7Yxz/+KitF
         slRbkY3WbeYkgeWP3kdtf2yv+fk/jE+zR7SJBYSpiwofJIPkWgXr4jPD7WNnkd+AgmiW
         DJHxZRKmljm6h3ANBQM8dVAI1kVLbDggBLshRX9HcEK48dDc8MKg9GmA1VgZ7NobLUXw
         jnDi396LY2GbfGFOkm9h64hZZqJ+DG3eOJWJXPoC6//8/7Hz/LZ83iLXe2W86HGdGfmY
         2w7OP2yNYIaO8Wzx/CWHlNlm/A3HzyKpL4gdfxhb8uN3MMQoUCji7VJGfuqKYhHOIpUp
         mJQg==
X-Forwarded-Encrypted: i=1; AHgh+Rq6Bo6eCOA4SUHsVE3TN6ZiagiE87ZO8GW5QfJY/oLy77o2hWCZSpgw3N9d3zmlrGPW2hxTEYkY2Yay@vger.kernel.org
X-Gm-Message-State: AOJu0YyQ6rIKkhRfQ2MLVahzkC2yy6E8b3/9JF/CZtKsdJWji9IMKV/g
	zeRSz6Jl2Vs2sVSv3hZnQB7vlDNdN9t7+b9P6djxfnkROFsm7pRFcHUS7lwIFrVA/M+MX+DwizK
	S1+hwUIXMhQ7aD1iC8LEWSB1JOX04iYAG5euk6nA/IrY0ptf84vrqJN1rENI78JaL
X-Gm-Gg: AfdE7cng/pGSYNli2/aeWCEi3WeA2rXQCND646rAcsNsHku81t1DmjKt6rUM0r7m1uw
	qtg0o6qMfSS5boCy1xwUukt0CDn2IMDDWrtrtvpRGJY6m8LxN+niPz0Eh0BL9YLjO0hTSzqm13R
	Gg8UkEWN83HikUpJbBO+vuysJtd3mGU7sc08YCpH8wW+YWZNdu6IoEwNDKaWCPMFytquLvNP5hP
	sQDfheBWMWibzxXT8ENgEd31gde1dK6/zVgbpcvsuhGQv5jGqdqpW//r6Ct7fyowLysaEEs7O7H
	ePIA4gyYdDhNqFTZXoZTTeQjYriac/4bmIFnyhw6sGgZFyhqHSUm9UeEp4VimY0JQuL2WUmFN5o
	ghWzUivwsJRIzK0+lyn1vfxYSC6vQRGPoJGexMEjYrBfR
X-Received: by 2002:a05:6a00:3d16:b0:842:4af4:3099 with SMTP id d2e1a72fcca58-845b3a0f664mr2237451b3a.20.1782378397395;
        Thu, 25 Jun 2026 02:06:37 -0700 (PDT)
X-Received: by 2002:a05:6a00:3d16:b0:842:4af4:3099 with SMTP id d2e1a72fcca58-845b3a0f664mr2237335b3a.20.1782378396074;
        Thu, 25 Jun 2026 02:06:36 -0700 (PDT)
Received: from [10.217.219.87] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-845a40d1b0fsm4240804b3a.28.2026.06.25.02.06.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jun 2026 02:06:35 -0700 (PDT)
Message-ID: <14491fd8-f785-4404-878b-5764bb8fd593@oss.qualcomm.com>
Date: Thu, 25 Jun 2026 14:36:28 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] spi: qcom-geni: Add property to force GSI mode
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Pengyu Luo <mitltlatltl@gmail.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260614083424.464132-1-mitltlatltl@gmail.com>
 <20260614083424.464132-2-mitltlatltl@gmail.com>
 <qwbda435on6rhsbf5o4jqijakanjmnmswnc6g6qsubuqbyvbok@fuoclv6u7tq5>
 <CAH2e8h5Swn2mWoz+t_nrSw1=hQttwi1Hx=dg=cd9S3QRnHjpSQ@mail.gmail.com>
 <3451facc-4a2e-43bf-ba13-944488bce437@oss.qualcomm.com>
Content-Language: en-US
From: Mukesh Savaliya <mukesh.savaliya@oss.qualcomm.com>
In-Reply-To: <3451facc-4a2e-43bf-ba13-944488bce437@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI1MDA3NyBTYWx0ZWRfX6A9EQSdveifm
 3YtDVZeHMG5tU3SD8v4Ve+sfpZMZZhRZh/syyI1sc2A7aIQBPzDTnO9ibsv2YZ2VHhIZyAJGU5q
 9FxB+Xxn0x3wPTSlwupaiTbXdnNC2D53uokMt/GG0l7U37WnkWU46y7hxtb4KRQv8aHFxuGM5ot
 8enAVkUZ7JE2PCvKcouQpNcSbzkkg0KT3E1g1XDt0yQ8cP5iALEbxOOx1zpDhphtbKMhqr7d+Yj
 p1PesicD1JgTP39MBI/yvQu2PdJLBN0wl0EBpKYYWBVXzXBvlMcZj/r+de7Suo8K+qe/BEEc8KS
 HGwc/onXRoWqMUbxmGCcfuAI0KXf3EEQHY7La1tYHR1xErno7JY4TSek3G+XsLZD0DNuIiUYgU3
 PigZV7fWpHpnHdMuaeYSznGGXQCTCHcvu22PBx20DYuIn7sqa/QjbygjIu+k1pk4M+bl3qi9kH3
 FL3PpSabs1yIy2EOlCQ==
X-Authority-Analysis: v=2.4 cv=aoyCzyZV c=1 sm=1 tr=0 ts=6a3cefa0 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=hIrod8inOkKnRalxuPoA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-ORIG-GUID: yfHinYb6DFtj1ysCG1Z077RWRdeHYiIQ
X-Proofpoint-GUID: yfHinYb6DFtj1ysCG1Z077RWRdeHYiIQ
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI1MDA3NyBTYWx0ZWRfXzWnJhbJs2FGl
 ZGIoBT0YdCiy5jYWATMKGbysn0vpy4L1kyhZYRSjmSq1pRiKioiKvq8iCRKUlZ10RLzFHWyLj0X
 H5BD/rRfcn56D8xNUG8tLnhC9ty37J0=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-25_01,2026-06-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 spamscore=0 priorityscore=1501
 clxscore=1015 adultscore=0 malwarescore=0 phishscore=0 bulkscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2606250077
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315562-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:konrad.dybcio@oss.qualcomm.com,m:mitltlatltl@gmail.com,m:dmitry.baryshkov@oss.qualcomm.com,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:agross@kernel.org,m:andersson@kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime];
	FORGED_SENDER(0.00)[mukesh.savaliya@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mukesh.savaliya@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A6C4B6C4148

Hi Konrad, sorry for late response.

On 6/15/2026 5:12 PM, Konrad Dybcio wrote:
> On 6/15/26 6:25 AM, Pengyu Luo wrote:
>> On Mon, Jun 15, 2026 at 5:18 AM Dmitry Baryshkov
>> <dmitry.baryshkov@oss.qualcomm.com> wrote:
>>>
>>> On Sun, Jun 14, 2026 at 04:34:24PM +0800, Pengyu Luo wrote:
>>>> Some devices (such as gaokun3) do not disable FIFO mode, causing the
>>>> driver to fallback to FIFO mode by default. However, these platforms
>>>> also support GSI mode, which is highly preferred for certain
>>>> peripherals like SPI touchscreens to improve performance.
>>>>
>>>> Introduce the "qcom,force-gsi-mode" device property to hint and force
>>>> the controller into GSI mode during initialization.
>>>
>>> Ideally, this should be decided by the SPI controller based on the
>>> requirements. Another option would be to prefer GSI for all transfers if
>>> it is available, ignoring the FIFO even if it is not disabled.
>>>
>>
>> I have read reviews. Can we check if the compatible
>> "qcom,sm6350-gpi-dma" is in DT? If the gpi dma controller is
>> presented, then we enable GSI mode.
> 
> 
> This hunk is very odd:
> 
> /*
>   * in case of failure to get gpi dma channel, we can still do the
>   * FIFO mode, so fallthrough
>   */
> dev_warn(mas->dev, "FIFO mode disabled, but couldn't get DMA, fall back to FIFO mode\n");
> 
> In my understanding, GSI DMA mode is always preferable. +Mukesh, do
> you have any insights?
> 
GSI mode is preferable but if for some reason it fails, we try to 
continue with the FIFO mode. Just fallback mechanism.
> Konrad


