Return-Path: <devicetree+bounces-266163-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UC1AOERvlGk0DwIAu9opvQ
	(envelope-from <devicetree+bounces-266163-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:38:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 770CA14CAD3
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:38:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B32D23007B8A
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:38:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5430736AB66;
	Tue, 17 Feb 2026 13:38:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cPmkr1wp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="a+iKc4al"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB42B36923F
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 13:38:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771335490; cv=none; b=oRBvzAAL5mqVAqwWKcZJw3yO8oWztXAl2f6clnABtHgetx6OcPBkXy9o5YUVMjLOXniKWxH7ZWW7HdUFTgdoFz78IvDWJWIruVxRdJg27omcF4590LMToU6IBEobV7TR2+FGSbIck8sDY0Q4JaF7fs91kFUAt/iD42Lk8gOkJIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771335490; c=relaxed/simple;
	bh=pL0z8At2fvGXF4SEBRPzAsN60o1FcVP7IXyb/NnNloY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=T7bzTuB7zJrZLHbFe3AJa4+1jRVZliBp43QkyEvfAwWgUtXCRoMk5GWpIb5p9IFEJKRAevrJT6792dVGEuENFwx3LlKZAtE6gZ/2+ratbMOcGvyb4SUx/P6/PnLRfXU2bG20GW2IOoiQIEP3JQPN0JMRe7Qwi56cbQnRdmD/7p0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cPmkr1wp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=a+iKc4al; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61HCwrmh1232466
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 13:38:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LGmZq2r68gpNyjeEJxqI6uHZIn9YGmwnHk52q6fF78M=; b=cPmkr1wpcpKrhlZ6
	MqlBWVcSj9yw79C64gGxyK6C1dIy/JuXcYsooC8ydH2lupSJd15tjJ1buj5JkrM2
	LoktVbxURpWv8orVEqPU5fWoAKr8Zn+gT/7Wr9OnBhejlIJ489OlVkd2F0otBaP+
	Kx70CJr801bz3t+j1Upff+V0oE1nf/z/hwS213abRYQHdEL1uSfNOOmVYm8OAm3E
	X44NcIPhvtog5qUPlfuKpwt33f3kQEK/nWUD3JFpLz/dBps4efWrJuhTa+gP4DuY
	b74fufZu3ZceUBdzFKzQEkoyj//BJtZxIKmtG/2Y6zBwmC+H1eto5CV+DpdfRtco
	dmtvnw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cca36204j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 13:38:08 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2ab017c21e9so20430625ad.0
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 05:38:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771335487; x=1771940287; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LGmZq2r68gpNyjeEJxqI6uHZIn9YGmwnHk52q6fF78M=;
        b=a+iKc4alCjL9Pro8SLHx+smCmfiRAi44h197JXcS9h7D40ICd/EqGfGqmFiTEwu7AD
         Pr9YcxqCsbNXTZVTnVQufsWt9x4VWxHP2an1UiB0Mm0b/6TGuWKrRxzcnP0fNt6u6ROR
         wxk9wF49YMYL20Ke7rJGBZqrtf+3Q4heE9b7G62vaI9iYnWg4gocNyWaGl3O0kvigK8a
         zheqGEbUPjQcs0OoTNQud1x+yDX45RN9Ykxnw/l+L9fyttty5LMbqW9VlnDRHelvipoh
         hOYP1yL2KsuW6xqXsp+nZ2BgEqcBWNtTm3ARY95LOOCObDTUe8xyX0n2GvbjHPJ/dP3J
         AXVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771335487; x=1771940287;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LGmZq2r68gpNyjeEJxqI6uHZIn9YGmwnHk52q6fF78M=;
        b=crjOvwu33jMQVYLprBFUKpEPWuAjFcgKPKxJfW+JoQ1FOrEAzRe82GB7HNwJKfEG2q
         MovSk0tzSIlENi/ZNVv8MYzdoZ03sxsB8lMJRDm7SracfaJtSUVUPNAMqDdFzCQdAWgT
         yrGRCGbhHWRro8/tP0U59+fPzgNdwOLWQRud7w6q+PySVs/bVnJ+P8ORH2yAMq4naTU+
         BcdimkJGUEV1WQ2KCO6EtJx+KrtSB3yEt3iYLVMYQ4olmxxv4GFG5FyqM8RpxYYFBDwE
         juuO1Qo+niPOVSSUKC9CFgfMIl8tZuKtn+SNdftjTnGJ+oWBHeFlVJHTMQS4V3GjhCRJ
         MNUA==
X-Forwarded-Encrypted: i=1; AJvYcCVs/fqullbIyAAT90lGS79Q7mhZoeeuhymJoiTaaZskTNv52NrBAbVFxWxZG8qyczIUS6X6rzXLU/vB@vger.kernel.org
X-Gm-Message-State: AOJu0YzdgCeg7r6eFVVqWOxQBiOlCOyoSagcjbTIBvfPMliBvpXzJiTG
	evdLqu1rpstxCKqTNxEWfXKW084U+Yz6dga3huuW6mwiw63h2XgGgR1+ieMZmzNJaFMGvGSf5wb
	RU48uOsHlrkpW7sWyXxulC88IrR1JzeFpOq7NwAd4sZ4QePx/bGgjLQDeXKu+O9yZ
X-Gm-Gg: AZuq6aJ89GIFLkQi56d8js6cunWATGa5vW6RYuiRhTNqbyeycTQQiBFdWiQFf3MyFtJ
	0Fp9PhEaX9uz1lExRKpVEj+PrTb1X5b321OarKGvba1mXzMY2ycGADxIcSOFiUgQR/5SKaIElHm
	hoP5Kq2ZcLepPzLVc3QUE9Uq+7ZlFrTUupjSGR2vDbfpezWH87hIi45bezT9IAs5QX1WYm+odxg
	Tkm/pY9ooVAiR1G5yGYydop3ic1PPLcGsf5/qbQqh13kZY0Fy9hDuSnj1KL8x1gCyfQAm/mIC7U
	EbEDnNarjqh0lappuMmxoAN7qUIU4//gpDrqVOLWFLnACPOlWDs1/AEYn+5rCxk5nS3cJ8B54/a
	jexE7SeiApGQK+M/ppRK+erYe8T+03/x+G5U7WdkBg2qBneoNB7/COZTwwfelov74DZSkTSbYhZ
	qKy4A=
X-Received: by 2002:a17:903:1a84:b0:2a9:63f4:120 with SMTP id d9443c01a7336-2ab4cf78267mr105936345ad.3.1771335487437;
        Tue, 17 Feb 2026 05:38:07 -0800 (PST)
X-Received: by 2002:a17:903:1a84:b0:2a9:63f4:120 with SMTP id d9443c01a7336-2ab4cf78267mr105936125ad.3.1771335487000;
        Tue, 17 Feb 2026 05:38:07 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc735e5a6sm358288666b.1.2026.02.17.05.38.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 05:38:05 -0800 (PST)
Message-ID: <bcbe3634-a5d0-47a2-9252-15810bf7bda3@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 14:38:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcs6490-rb3gen2: Adjust tsens thermal
 zone configuration
To: Bjorn Andersson <andersson@kernel.org>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251215105934.2428987-1-manaf.pallikunhi@oss.qualcomm.com>
 <zf5ztvnzaf6tplpjpytwbhktrebdnst2doybuubp6rjfj2fjs7@t2ma4ylx67gx>
 <46cc0587-8eb6-4638-ad04-c05dcd56718c@oss.qualcomm.com>
 <oekmcxiltaiynuwt2p4g2grae4gyud7vn5usw3v2cp4vwyfr5c@gg2x4lqvtd4n>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <oekmcxiltaiynuwt2p4g2grae4gyud7vn5usw3v2cp4vwyfr5c@gg2x4lqvtd4n>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDExMCBTYWx0ZWRfX0cTI7ZdkH+jY
 9tgcTEgs05oblwmnOBjTEMU8eCAQTnYhhRvi91YviZCYu30RkZdVfbnOV6n7zJNLs53v905UuoA
 Vyuo+QeTLQzxcyZoUSUefEi38zPAEu1FIqPSW8ssGqxDaxGx9+hS00VJT4vycPZto2b0YKgJFur
 Ma3ULYRFRE/Fz/r3aUrTvFxfnb487sWAPbaaRivt7vBOStYVy65nfWzobiGNJE2sPvG6KNiYvhA
 ikbMLzNfCpmmCzybS+OpvLDsUsrVuVtfXEQGlNEj9NrYYs7RUyixaHbbL1NmRXmO8z7Cn2YY3X7
 Xkgo+fWhN2zHw8nJbTsoDr2y3QaFBbmgiqjduQEknJhw/NEqfXQgh/msv2OZbn0vlA0nkra46zR
 FDVryLXrpvwtS0fWZlRPHrsRz/KQz1Rcwi9ochaYe36JfQlaOYuh4IKe8UMNvh2aogaf11/MiPR
 +1kDaQVNUlMXbaqy4sQ==
X-Authority-Analysis: v=2.4 cv=b+G/I9Gx c=1 sm=1 tr=0 ts=69946f40 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=8uoaHlvUY12WB6v6n28A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: wUosK7kqqkDCW-jchuFgIVwJgF1JsI5H
X-Proofpoint-ORIG-GUID: wUosK7kqqkDCW-jchuFgIVwJgF1JsI5H
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 priorityscore=1501 malwarescore=0
 suspectscore=0 bulkscore=0 impostorscore=0 adultscore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602170110
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-266163-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 770CA14CAD3
X-Rspamd-Action: no action

On 1/3/26 7:05 PM, Bjorn Andersson wrote:
> On Tue, Dec 16, 2025 at 01:01:01PM +0530, Manaf Meethalavalappu Pallikunhi wrote:
>> Hi Dmitry,
>>
>>
>> On 12/16/2025 1:21 AM, Dmitry Baryshkov wrote:
>>> On Mon, Dec 15, 2025 at 04:29:34PM +0530, Manaf Meethalavalappu Pallikunhi wrote:
>>>> The QCS6490 rb3gen2 board uses the same Qualcomm QCM6490 platform
>>> Is there a difference between QCS6490 and QCM6490 or between QC[SM]6490
>>> and SC7280?
>> Difference is only for qcs6490-rb3gen2 (IOT ).
>>>
>>>> but has a different thermal junction temperature specification
>>>> due to package-level differences.
>>>>
>>>> Update passive/hot trip thresholds to 105°C and critical trip
>>>> thresholds to 115°C for various subsystem TSENS sensors.
>>>>
>>>> Disable CPU cooling maps for CPU TSENS since CPU thermal mitigation
>>>> is handled automatically in hardware on this board.
>>> Is it a peculiarity of the RB3 Gen2 or is it that Chrome devices didn't
>>> do it? What about QCM6490 IDP or FairPhone FP5?
>>
>> Chrome devices do not perform automatic thermal mitigation, whereas all
>> other boards handle it automatically. I will push another patch to disable
>> cpu mitigation for all other boards other than chrome.
>>
> 
> This matches what we're doing everywhere else (i.e. rely on LMh/OSM/EPSS
> to do the fast throttling of cores), so I'd expect that this should
> apply to all non-Chrome boards...
> 
> Instead of doing this for every board, can we push the cpu/cooling-maps
> into e.g. sc7280-chrome-common.dtsi?

I think this is the way to go

> If I understand you correctly, we'd still have the desire to adjust the
> temperature values, but that's a smaller per-board change.

With the cooling out of the picture, the remaining delta is moving the
critical trip point from 110 to 115 degC, which sure, is useful if we
can use all that headroom, but it's also not a huge jump with a huge
amount of noise in the DT..

Could we get a confirmation about the non-IoT kodiak accepted
temperature ranges? Maybe those happen to be too high?

Konrad

