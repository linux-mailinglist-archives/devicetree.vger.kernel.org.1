Return-Path: <devicetree+bounces-277155-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4JbEFP6IumnSXgIAu9opvQ
	(envelope-from <devicetree+bounces-277155-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 12:14:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DBEA2BA9F0
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 12:14:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A7A8E3006093
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:13:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B8343939AF;
	Wed, 18 Mar 2026 11:13:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YuRBGbaI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="b13FbHIr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 675653921CE
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 11:13:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773832400; cv=none; b=DFVI8xbREDdSsNlGWN/IC63whoaWCOuENxkW+vTV0oq9PKlhs3JeI4ruAuONlGnP80FmTY5ZpsLH67Oo4XemV/jdNEF4JpJEF3jlL8Qp+08vWDbSUS5NhOVUx4qMVjGi1WA/S/wGZkC+fAGbDMNBP9SDKuGmrFMKimqC932K65A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773832400; c=relaxed/simple;
	bh=vniTYVjk/lzZ9hdPrn6kzokgKnGsY7+iAT5Q9uCWLn0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kbhHIQpGUOPvd/M1WG4bYQqAq4CPHGiQvxAG1rckLLRcePF0GOd3a2p4wDzk5MF4/oHnfjpq85goeVo1aLbQz2AMr8OXi/5pln2zenSRmR659RxhaIeCJ6p/ylzTjQfS9EMoM7PMW56X1zTAF8eMRNJJ4NVUaQgRIA3ULuXYz5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YuRBGbaI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=b13FbHIr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I8L6K41049611
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 11:13:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZlHGWJ9DXNUnp7Csb9vXzwae0R72YcscErEfyQ5F/AQ=; b=YuRBGbaI0pNl7hzg
	hpLaQ0zcnCpwRWhnid/DmfJfnc9GBB8KoGB+C6XG2fTDfEZXaCdhXK1syKNBxzDL
	8QnMRlKRLiCX7roHxcst7Q76sAzybiWaqWALrrNZaDiEB4Ulnw/qqHK/u7LHE4eJ
	BBKLVP9fkk+dYU4hBwbgrLJ5sSFjRd3SThdCbbNnNtCvwW974ieTS7m0B/Ps99dC
	vtCYXAvQ6qr9R6GpfNAyWAD08qzwUhYM1G1mceYgysZWyEl1ayDhF+l3R+vlGR1M
	tkeA1gzoqClM8TzRR1FGCaNZa98IVsv+BwyXVGzki48SE34tBE8VobkDp/lgZxVd
	GkaxUQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyj4ej7hg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 11:13:18 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-5094741c1c1so6220801cf.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 04:13:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773832397; x=1774437197; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ZlHGWJ9DXNUnp7Csb9vXzwae0R72YcscErEfyQ5F/AQ=;
        b=b13FbHIrLgBZhfDsj1rMzWHjngoJ10WHIq/NjNJkDBIiHvZmfUrbf5E3Uyd36Od66U
         RqJ4TLxvviXuec60MaZZbzqFXDO+qsrNh5w4T5gC422TxAiPu3a6zyWRKbu/GIMFUsqX
         SElWQ7FafMHER1+FnaRObAWPpIjo+E5360C1ZqsyoRozD1kTyU73uoD9SyNmkz9pj3Ej
         47LMxuDH8xijyemzG6Fds6KYxUUaNNyki/ckP5kdmkwGFHdXVkHvBuOZcyDHc3W6VOIq
         RubnRc9HvC3RD3iB++b7y9U7SewoxijakGl4S1+T+tOvULeP/vC0gkIA/MQURc6R27vm
         o8Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773832397; x=1774437197;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZlHGWJ9DXNUnp7Csb9vXzwae0R72YcscErEfyQ5F/AQ=;
        b=qREhwXtDba6aG1j4kq7wY1dMECPcIEb6DeeRiYI97qjmi9VVQWCDiAmEUM7HCMYkBu
         V0tXVhjBAJGdg2N4jcjfHG1k/8X3CxKIRFciQTCTwPmHztuyyM6Fcrjv1zqThoztXHI3
         xqoxcaqH6irqqMZtFa8NVnCwD+ouFUhE342tBAyxajIrxZBE9OfTjAYpawylGxZ90KYR
         TtE+lN/SUHa4xo6SMdJDZBckXrhcBJK1ZYsTCOObHB0bvcUvoZDbFrJURidPP75aDNMk
         jUA44x7jinE3nEDyuATblCzcWk2hPl4TXKpcqPHC3vxMl+yBXs7Oy11rwK3HabAlD8LI
         NgBQ==
X-Forwarded-Encrypted: i=1; AJvYcCXy/U3UHPEXsqayAfWrn+OF/Hau0UaY6eXyhw8m9dTqlke+wielKDyWsqkbjSv01uiR+gG6eLz38JdG@vger.kernel.org
X-Gm-Message-State: AOJu0YyfglnvxLj11x4c2645sqVnaU16H4glFZu23YbXXG4AfDTc/60f
	Lt/IkswurwzdK7d0kRS0+P4UJZGV06WwxhUcQUMba6OX0oDb26s3/O/SJx/+A1BjO8yRK7HWjDN
	UZ2CYMaYh0J2qvPVCswKI+RjD+gNS5Qk6zApUm1F+PvbGB2h7uULYu9OAeM1H6Tal
X-Gm-Gg: ATEYQzy4RvDndQ3DcdhXEFV0ZQ2HcUGK+xQCSAWftbvT3pE18Nw0So6D9Hl0E/40f+C
	Zo1XmK0/SZOmsLIlNPgwreCjPbIqfpLtOIcl9ixastPnWR1LE7qzvpxsUZCKu8rdp9yPTXCJ3eh
	+Uxi0bQnGIcPuC6p+Xi+AAUSS2HbxS3HUOzbWBJOw9qd1uqW4AW6ImwOGaCuN5jp95l5H45YKdE
	4hPHpdaF8PmX6Zne6EFrQzIdLEtb8jpKrzbmz+LQgq4f+T443kIFiZJOug6kDVXAbgXQm+A9geA
	WdAywn7tRAWTtaRye1U7kDSSNX+J6lvMNfvgCkXaV1TuX2fNdt//8yUWz74jWuYVE0vqL+iNTVR
	W6qvi7XBdLXAgGzSh7JxAU74JHrmU5EAX7Nk6VHXsvLd6eVj5
X-Received: by 2002:a05:622a:1991:b0:509:1924:3f6f with SMTP id d75a77b69052e-50b148fa5f0mr30838161cf.63.1773832397653;
        Wed, 18 Mar 2026 04:13:17 -0700 (PDT)
X-Received: by 2002:a05:622a:1991:b0:509:1924:3f6f with SMTP id d75a77b69052e-50b148fa5f0mr30837961cf.63.1773832397238;
        Wed, 18 Mar 2026 04:13:17 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f4bbcd78sm16655685e9.26.2026.03.18.04.13.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 04:13:16 -0700 (PDT)
Message-ID: <d2975a1a-04bb-4026-a0cd-34571f99ae02@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 12:13:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] clk: qcom: dispcc-eliza: Add Eliza display clock
 controller support
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260318-clk-qcom-dispcc-eliza-v2-0-8c05581168d1@oss.qualcomm.com>
 <20260318-clk-qcom-dispcc-eliza-v2-2-8c05581168d1@oss.qualcomm.com>
 <1a00582d-66d6-4325-aafd-156cfacee8cd@oss.qualcomm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@oss.qualcomm.com; keydata=
 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
 cwzYbmi/Et7T2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <1a00582d-66d6-4325-aafd-156cfacee8cd@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=T4+BjvKQ c=1 sm=1 tr=0 ts=69ba88ce cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=TBfkzzlTsJg2ki747AwA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA5NSBTYWx0ZWRfX4q536fFJfwyo
 9ALz6g1CpoAx3I/qzv8LM/0LErnDrRFjoyOBWSn5D+V06k5CTs9HM5gxTYkakO1yTXBj9xjWehM
 8Wf72EMFWJlxG5XF0fL7yhPZOzEGtzSzhiKof+eAZBTGUrIIBw8Hfb5LlRZJcAdFe+Ugxh/xAI+
 AFrghYCuMCUDk7sH4gqaM7P34HMyA6g3rQywFMwPl8VnHgL3jiHKIqe2oiMRebRJ/LNr4FhMlta
 GanLSjxY0wpvCVevADYngQTs461vSM1VUZLPHE7LawuCHP2w0ULSBQaavTS9zmBBxIgKgEDivV8
 2qSqI40s0ia+SUUGrgOeqYCUCCTxl+I8XCyi4rOxJFjwRKYRbMMJ2VGFJ8ZXLpYKZVpezvFS7LF
 zxqOzrFaPV2lQIjxxMjUrmVOnvMcuPhYa0Q2z2bkktgYrDyMvopjCD3xHvLVFsdIR+xrNnkbzz9
 N4Jzi/TftaxlwZ7P5qQ==
X-Proofpoint-GUID: l2a1DZxT5RU_aPoGjMvgsFWUaH4mBzhp
X-Proofpoint-ORIG-GUID: l2a1DZxT5RU_aPoGjMvgsFWUaH4mBzhp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 phishscore=0
 bulkscore=0 priorityscore=1501 impostorscore=0 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180095
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277155-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5DBEA2BA9F0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 18/03/2026 11:48, Konrad Dybcio wrote:
> On 3/18/26 11:39 AM, Krzysztof Kozlowski wrote:
>> Add a driver for the display clock controller on Qualcomm Eliza SoC,
>> which is copied from SM8750 driver plus changes:
>>
>> 1. Additional DT_HDMI_PHY_PLL_CLK clock input,
>> 2. Eight new HDMI clocks,
>> 3. Different PLLs (lucid and pongo).
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>> ---
> 
> [...]
> 
> 
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +/*
>> + * Copyright (c) 2021, The Linux Foundation. All rights reserved.
>> + * Copyright (c) 2023-2024, Linaro Ltd.
>> + * Copyright (c) 2024-2025, Qualcomm Innovation Center, Inc. All rights reserved.
> 
> -> Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.

That's the copyright I found in the downstream code I used in few places
here (with modifications) and I am not touching them. I also don't care
about these and I am surprised this keeps popping in community review...

This was in original v1 and you did not object there.

Best regards,
Krzysztof

