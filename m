Return-Path: <devicetree+bounces-252593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6CFD01443
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 07:42:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8163F302E337
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 06:42:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0BC933A71E;
	Thu,  8 Jan 2026 06:42:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QKhnNDBN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="M8t85zK2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BA16329E76
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 06:42:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767854550; cv=none; b=nn6TCQK1yWUxvNU5IwsPmyOH4eKrvd6qebJ5nnd4iyfVQPpK5xmsqCrFi9A0HmJmcdqtXva8amfsSQFOiZZrpytmZ3Pz2eH0vYJjX/uI/4a9VMZDVVzqpdtu8r1Ufub2fAxeasGgSdlDtW/W0a3j1j5l2oMJpb5C/nidvnby1m8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767854550; c=relaxed/simple;
	bh=gjY9ZKn8AerPInOiDxILLNSmV+KOCcEfYN2pjsDhsqU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AbraZZsMf/xAOz/Jo7RLgeXwJeMKE2PyAke+6aTxv/h0yXsp2HmYrE9gJU9b5AoKbIaru4ttMk9CmybGZgactphex2BuOaWq8yVPdh+YHAnt5XH6dvc/CCn2isxrqtmr/R+OD4HT33Rz6WZholjikg+J2WV1xoIXLL6c3rSexmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QKhnNDBN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=M8t85zK2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 607JuNBl3152785
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 06:42:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	R0HL95ihOA9A0q4vhcsR+DDHK/KRkyUqp/m1FXpo87I=; b=QKhnNDBN9kV34WFr
	rdpYxIJE8Uq8tARAF734Y+13k6u76CdN+/DVscaKDwDm7SIt76Bb2Hv8MdwK6ATe
	bP6pF0akP1Z0IBg/rD9VYnwIbM6K4yp9v4Po2S9Gxa6HyyzLjMm/pn7pQmiBs7zo
	s+2F1Ttt34k4/A5/HXgWK7IShhyreF2lkeC6RzSSof/379YCQlZU3wVs7PieElTq
	2yjrfKz01c0KMUKBl11LLw71H6atUfhdnB3ghODVMJ0JPu05OKcIfTJsaP7bZQwh
	0rcEWhH3sWHnONHr3gXKm7lM8h3BtKB4ouQFWjiI7BZc3Tai97F9CamOICPq3++5
	nuH+Jw==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhpjaua9u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 06:42:21 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34c2f670a06so3555836a91.3
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 22:42:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767854540; x=1768459340; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=R0HL95ihOA9A0q4vhcsR+DDHK/KRkyUqp/m1FXpo87I=;
        b=M8t85zK2wEGdY61/WlWyP9BNOkZ+u8D3VxxUTw2+vuXVmFuGOfqpAgcIYZMwMsTcqi
         OsOEJ6v+mS4idiKqim3oxmxnOHjZ+K2hC9ZTBLDqgEqtwGVe33m62S+u93HOKRcCCnxO
         35PhguxfDmGFtJ/ooIGh4XW79FP+v1VGHc2ePD8eRpbjjzJ5KwleOVknsa9CxWMo8PyQ
         ln2RE5nQl6KvRy9gaCGzK2kz3qbSLl8b3mHMpc9UreKkKqDCM/ZR6PrtHoNapmIy8k5n
         EUpSyzuUwvG2J6jp45kHZ4/EnMhVRxyFrscJ4gNAEM2e+Ri6wsqjQ+qzNn6MPB/vlkXh
         rtLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767854540; x=1768459340;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R0HL95ihOA9A0q4vhcsR+DDHK/KRkyUqp/m1FXpo87I=;
        b=HwQ0l+tsM41avGumrJ7HBHw7Bpfss4BHkBlHPK39i32GJcyxtJy5MTehori6EYPJye
         bpMll6sXz6kVvJOMxcHXZKBcJvQrbdOseRfZkIV6L3hcK4WhncZr88eWQskJAE4Moed/
         M1tmnx9k75r5FaNnxtwS01E3ADzJrg9ouyjhf6IVwmsxuOsUgVAPTZp7u9HY+aAnJWxu
         bQhbp8Yo0ZeNFgDXs5Bsr/qZBOVkBZHDiZ2g6C/fN7w/8gNtmpfyxkWGsql2SPyLGOBG
         K4hBbC/eatKLagbnxNg73mom2mhHJ41u60xytBcpKZZy0Yq+UTb3klLI8hMcuiH++AVG
         34QQ==
X-Forwarded-Encrypted: i=1; AJvYcCWlmqwOHPDSUngXlpD7dceUj8jwooD1XN64H7363PqcHvseH7ECVyz8WByv8+ED/7CA8IfN03QqlEDA@vger.kernel.org
X-Gm-Message-State: AOJu0YyCBH3Oswwr0x5lnXK0YneJbG2nDTShmEIhdv0iBhhTQbOhpZlj
	3YdABLtC8XtNVrUDm3WpHGwv5h9+O6LN8Fa+pT9M7t1wxA6a/8P57jI3/ErH39Dt+SrO6dEQTDa
	bR8LUjzcuniANlisnKBATRIeGz59Zf3SShIVTQ2S7h/qssa0CLOKmtqWdr/YRm40l
X-Gm-Gg: AY/fxX5kZC6tcRCL1AHsLmfJrCiuR20aw0Afb8P3v84lhFEwmTHkU1VRMgamwNUbDip
	sB0fgsERF8FLGCoi9WoUviWh612qisavr6DepejmLvvyxRD2nkoshFEy3Dq2HoO78spcg82zqP4
	HXk0Hm2CZe6OT7ayhH3MuJCcSWnMofd4kbYvYoRAI6o4fVacB/q5XtECytGE4wYi8AxnNg2Xf+P
	o9gaEtsDPerVviWDKWH/jfm7bu9hhjYSSrjrwFZlH5RwwsWoLQznlJdCHg9m5O1IsFxk/gqwMcu
	D08pOh9Z2agcKxlBWOreLrp5N5FUZQgEACkb9XFaZrWBPrZ50GgYV8o/+GrIdbSZ55d2h7LKqTj
	CqaZ3lY1iTeZlMZABgixMW3LxOLb7EgUcZSfSdg9pJMN2u1eMF92tVWfidFR2TEUFLInX+sHB3W
	M=
X-Received: by 2002:a17:903:2291:b0:2a2:d2e8:9f25 with SMTP id d9443c01a7336-2a3ee47f0a8mr48295375ad.33.1767854540236;
        Wed, 07 Jan 2026 22:42:20 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE7M+L6O5fEzMSPTGxFCu18f1uj4PsDXgMaJwRJ81d5LiIm1cAmxdvtAeQNQJeQcqh+4t1ljw==
X-Received: by 2002:a17:903:2291:b0:2a2:d2e8:9f25 with SMTP id d9443c01a7336-2a3ee47f0a8mr48295015ad.33.1767854539759;
        Wed, 07 Jan 2026 22:42:19 -0800 (PST)
Received: from [10.133.33.102] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cc8803sm67804025ad.71.2026.01.07.22.42.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 22:42:19 -0800 (PST)
Message-ID: <196858fc-e425-4cc0-a4b8-94a0ff4e512d@oss.qualcomm.com>
Date: Thu, 8 Jan 2026 14:42:14 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] clk: qcom: cmnpll: Account for reference clock
 divider
To: George Moussalem <george.moussalem@outlook.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Luo Jie <quic_luoj@quicinc.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        quic_kkumarcs@quicinc.com, quic_linchen@quicinc.com,
        quic_leiwei@quicinc.com, quic_pavir@quicinc.com,
        quic_suruchia@quicinc.com
References: <20260106-qcom_ipq5332_cmnpll-v2-0-f9f7e4efbd79@oss.qualcomm.com>
 <20260106-qcom_ipq5332_cmnpll-v2-1-f9f7e4efbd79@oss.qualcomm.com>
 <DS7PR19MB8883C5FF92412F106B8D41529D84A@DS7PR19MB8883.namprd19.prod.outlook.com>
Content-Language: en-US
From: Jie Luo <jie.luo@oss.qualcomm.com>
In-Reply-To: <DS7PR19MB8883C5FF92412F106B8D41529D84A@DS7PR19MB8883.namprd19.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=efMwvrEH c=1 sm=1 tr=0 ts=695f51cd cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=NVhx1d5adPAbhb5xwd0A:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-ORIG-GUID: jFGGTWK4XA_-rTSuNe2GhsTZ1fyrMk2F
X-Proofpoint-GUID: jFGGTWK4XA_-rTSuNe2GhsTZ1fyrMk2F
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDA0MiBTYWx0ZWRfXwpi1Y/AvlWZV
 DL/k5GRnhGcAIB2yzH8e11urvVJTNZCdKaChwMhdj5kO71s+My08iOOKu7M7A37P/0QodA9Ncyz
 bcD4TFfK0w1Y3wxcirgWggafsDe1Aq14bM/8wMj4KIEDe6Orx8dQfpzv7HTW/wQEJAdKpEBntRX
 2Ri2WTkqzNYUolF195oyiuwnXP+/ohsp1+huN/jX6I0DkqX2ZS/wfoYfVeYfX8r5A9Xbx271+TS
 5OMs2UyTaSUpo6p5VodrBCblqupzZSO7qUCQfmQG1LwCyk6a2DMbs4GgPAp4e5USoktIy/sGn7o
 Xpu0qfyEfLa+3Sgzno9iOXE70Ce65PX1BNR0C8BdvlU/JmPND/4hggC+r/US0HTvViJQ78tOyK0
 N/fup2ASmRYw4rXu1H3sPe+04d0yI/4XW/yP2Fc+zPZkv1Fy24V5j1mmtvchPRDDs12oWqNrkcg
 tXo6a6s9VHU9zcg+biA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_01,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0 priorityscore=1501
 adultscore=0 phishscore=0 malwarescore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601080042



On 1/7/2026 9:17 PM, George Moussalem wrote:
>> Read CMN_PLL_REFCLK_DIV and divide the parent rate by this value before
>> applying the 2 * FACTOR scaling. This yields the correct rate calculation:
>> rate = (parent_rate / ref_div) * 2 * factor.
>>
>> Maintain backward compatibility with earlier platforms (e.g. IPQ9574,
>> IPQ5424, IPQ5018) that use ref_div = 1.
> Just tested this patch and can confirm IPQ5018 also has a ref_div of 2.
> With this patch applied, the correct assigned clock rate of 4.8GHz is
> also reported:
> 
> root@OpenWrt:~# cat /sys/kernel/debug/clk/clk_summary | grep cmn -A 3 -B 3
> 
>                                   deviceless
> no_connection_id
>  xo-clk                              1       1        0        48000000
>   0          0     50000      Y   deviceless
> no_connection_id
>     ref-96mhz-clk                    1       1        0        96000000
>   0          0     50000      Y      deviceless
> no_connection_id
>        cmn_pll                       0       0        0
> 4800000000  0          0     50000      Y         deviceless
>          no_connection_id
>           eth-50mhz                  0       0        0        50000000
>   0          0     50000      Y            deviceless
>   no_connection_id
>           sleep-32khz                0       0        0        32000
>   0          0     50000      Y            deviceless
>   no_connection_id
>           xo-24mhz                   0       0        0        24000000
>   0          0     50000      Y            deviceless
>   no_connection_id
> 
> Once accepted, I will submit a patch to correct the assigned clock rate
> from 9.6GHz to 4.8GHz as the ref div is now properly applied.

Thanks for validating this on the IPQ5018 platform.

