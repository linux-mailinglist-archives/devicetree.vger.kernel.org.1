Return-Path: <devicetree+bounces-274015-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UO1XGmJGsWlCtAIAu9opvQ
	(envelope-from <devicetree+bounces-274015-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 11:39:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B722625F5
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 11:39:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 87CAE3028C18
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 10:38:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B6A53CF672;
	Wed, 11 Mar 2026 10:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gp2T0Ad2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IKYktdLt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED2563C4564
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 10:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773225516; cv=none; b=QxRDDj7DvLdzUIn17LDmN/GfTmEXZ+2sy9RoaCHFYUT5Q3qrROA4ZZcmJXcWzzOT+1gYMko20Nos+XHtS7mnv0tH6juLL+aS5bE0AlZ7RJ5E69NqMylQUvHBwKg4mQtdrSNJl7UI8OhvD3t8E+HZXy6mQHFMQuwVsf8voiVU7CQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773225516; c=relaxed/simple;
	bh=nb0HzIPRFIp2VeqA28Glm8+UHNyh6Fe/2CkQCiqJF6Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=W775AQA8xWd8v86gvLOyqL44zaP9TLQVMvMOJoOhuQDjLpL0Ml4FyO6bsMw+LyubUe16e0Vx8qsWajmsji4Sber40vJV5nRurK+r/92rAzOzqBxaUZi1ka68uiLY6XnZnhwaqWqNL0/l4DGeyXYu/N4WHiR6tZoLQyKz1zRGkgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gp2T0Ad2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IKYktdLt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62B9E9Aa1572954
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 10:38:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nb0HzIPRFIp2VeqA28Glm8+UHNyh6Fe/2CkQCiqJF6Y=; b=gp2T0Ad2PgufgK/P
	VnRCHvEn4nfbRdRXqsE/feAgHbfESYK69MbyW4q/sGPIo1CYl82ZlMXdzKqluRmU
	z4p2gTDbkXd8OiP7cKOZc8J2ssK0qZIZ5NY0+G06B/doBaMuUt68s/ki/3zewrWq
	7l+o2AmPyAt6dwnAk5kd7FQmrxA79TPcuZM8eUcMs1z44vjWhKuU22JBnNVSTZHJ
	xOEN+etm+FbaWfEZSZHMO8eNsq+SX47mcmGAdC4PIsOLi08aAhU00GhFfBDbsw8h
	qNPasB5S6JcZe7JpHIQVnI5UOi1Vl8GHEDE32GWIK2lpYjV8J8Den8N7nARoKS6D
	EKRpvA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctqgkb77d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 10:38:33 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-829942cf9deso5093012b3a.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 03:38:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773225513; x=1773830313; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nb0HzIPRFIp2VeqA28Glm8+UHNyh6Fe/2CkQCiqJF6Y=;
        b=IKYktdLtiglKvoDTmgvyjDW0Q9B4gkYJaWIeF7MZ9VrTo9QiXkR+6LmRBqPhJD808n
         7dbQEfvWUjbV32q2Gh055x0TLyHDtE2mpYJKsC9m3sjPWnnbX4iluWsRMSSupd7c9ZH8
         cR+HOkM08jlFHfe1cRqVkelHAe0x5DjXsXbtt7jJAbFnSvme3YswxSF0f98w1Oge5kdN
         /2rjP727YyQasE/JzC8Jtd9LLh0GBlLrmfnE95NYGikt/W/brbYIo4bOx6B9ERsBbExg
         UhYG+w4eXSSMaJAthTFenGPFEvbcHbA8FCQUZ8n+VKzzJ/Xucaa+PpDZWLj9NutWWDNZ
         VwXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773225513; x=1773830313;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nb0HzIPRFIp2VeqA28Glm8+UHNyh6Fe/2CkQCiqJF6Y=;
        b=JMHpsjagTYRAliyrIByWEKMqfsCcH/SJH+4UGmlb0RqVmxWTFPjWs4baIdWmGbnLSp
         RocAmtPua8i7F5OZyusgJU97pmg8SLJ+slB2qNQVslmZBKAynuA0io6cUJbiMnqTLt3o
         MjvH9pSVmECneoQYrwVYwvlkAV88q+ILc9QiqB8trC8FiS8sarhTX5E4HxCeRv7s0jZg
         89h0tBq7QrDOjk/S+yKe8ra7q2ajJKyBkGfUicS0RiKJQWby2jIaTBx4UYzITc7hEnlH
         HJ3/+nWgKshFDqfntzhwZ/UN47Y5uOlg0Dz8PyW7sL8sJAi69bUSFQSfvdmSG8EAL8Bk
         d3ow==
X-Forwarded-Encrypted: i=1; AJvYcCWtppEGIYLA4YFosmiDjOIT2Asr//i4C1+4W1vULwgTVJU374ZxjO0nHTjiik92/yMop8jKCfaMXahb@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1hvhJRP2/AusEtRvzYX/BUnnZ8Yr8gCxi5SmIZSRidlVtk/Lj
	ZD9alTNzp2gjn9SMZarVHV+oAUpM365dsANDOJj92GBcrEdlm2g/GWWM+JKH+eAiSxMSmmg9Lon
	6/mpBT4lli+YdHfMcV/b/+J2uIzek/XBieFf3QxazCJdvoEK3x8tBShFhHQvk+Ef1
X-Gm-Gg: ATEYQzwlbYXznLHGAWIQ+UtaUjyJ5bFb9Qp8DcjVtrabvQ5Yi7JYxH2QZMuIzOl5y61
	6lmQjyg4PAZnjNXZaVboK6lnM4LPtTdJ5QAb9/TjtryGs8k7UB4xZ0dlA5Ri8GK4iEundEloG5f
	dHCEul7vAikLx8eJEW8QzF0dBnNi8APPffkvYOL6mJyHJqm4jeaTQv/HFfdrq54dNiVKRv54edE
	zuJupnZQDs+4nZcztbCCBc9rvGmVn0IPnducuP/hWg77kAB2xbZ5N+ze9UP5If8ZFPjK2EmJxm/
	h7EGmFmja95uCxJuDXjAIKWWMzQXRfDK9CiL8LSjRhjr9jOGtzew6hDOIO35XtQ/evCsgICoIam
	Y5Q2tpv6wGPLIIKWLB8qKoEksj5BUWqmYxkRotbcFiwtcDIv79GaKD2f9nqQhqxTfHcXrzk85Qr
	McW4h+T9fo237dEENuYPgspoVOA6B2PSH2fi7dZmI=
X-Received: by 2002:a05:6a00:2e1c:b0:81c:717b:9d39 with SMTP id d2e1a72fcca58-829f709f1bemr2077544b3a.56.1773225512916;
        Wed, 11 Mar 2026 03:38:32 -0700 (PDT)
X-Received: by 2002:a05:6a00:2e1c:b0:81c:717b:9d39 with SMTP id d2e1a72fcca58-829f709f1bemr2077517b3a.56.1773225512441;
        Wed, 11 Mar 2026 03:38:32 -0700 (PDT)
Received: from [10.190.200.237] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829f6dc0ea8sm1972597b3a.2.2026.03.11.03.38.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 03:38:32 -0700 (PDT)
Message-ID: <452e9b25-e838-44db-9367-c8a6b2fda095@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 16:08:25 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: kaanapali: Fix deprecated cpu
 compatibles
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, sudeep.holla@kernel.org,
        angelogioacchino.delregno@collabora.com, viresh.kumar@linaro.org,
        neil.armstrong@linaro.org, festevam@gmail.com, Frank.Li@nxp.com,
        danila@jiaxyga.com, lpieralisi@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, tengfei.fan@oss.qualcomm.com,
        jingyi.wang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20260310040751.3132523-1-sibi.sankar@oss.qualcomm.com>
 <20260310040751.3132523-4-sibi.sankar@oss.qualcomm.com>
 <20260311-observant-cyber-griffin-ace587@quoll>
 <0469c476-cf42-46ed-a9e5-b6f10cb61770@kernel.org>
 <de803488-4545-4910-bb49-69dd928116af@oss.qualcomm.com>
 <347c7a7d-14d0-4278-8bd6-9d9484c1dca3@kernel.org>
Content-Language: en-US
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
In-Reply-To: <347c7a7d-14d0-4278-8bd6-9d9484c1dca3@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 74qAADnRLO85rsRvs0BjRrMOwzipozOs
X-Proofpoint-ORIG-GUID: 74qAADnRLO85rsRvs0BjRrMOwzipozOs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDA4OSBTYWx0ZWRfX5ZRYAL4EaO0C
 LI8RU+I24JvXEvi9IcNa19K1x/ETV80IZsc1+K+qRTT3zDRqhwCuK4ptfA1JVDi3SWLgUHpPMJc
 xhvqNeW/uL3M4hvqgMePjQOGtPG52gpk/Bc8lNyWa8jWTn4EKNg5kEtG6y/aGaQPb7jxD6Vl5Kh
 z20vOOs3XS4FuoMytoAJT0WSEFRksKBXldSSzlCFQs8YvVKN0Bzmi3DZgFIe/cw6XwFVWVrYo55
 KBiGzqGRFpBrefGzLjDIis5wVRibxXvQOM8l3snbqvVsmXShElxNbOIz6bfWlK7ZSbhdd+1s7ze
 UBgfXyDtuYNeLyqjL6/m/SXngC2M3Npev5hKlyw9NiJkQMzvjwUW05FSMbU7FVC2RMyzRXiHkiX
 4EqqQTH1oLUMv4HdtgmTw4ENHD0qHDF3laBmlEyhi4Ks5BBJZiRX/sAEU625ZURFJ55ZUxTrNQJ
 xsaO9gHbrE1FMgeghUw==
X-Authority-Analysis: v=2.4 cv=M4JA6iws c=1 sm=1 tr=0 ts=69b14629 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=SjYS-a-fro1PT2UoTq0A:9 a=NqO74GWdXPXpGKcKHaDJD/ajO6k=:19
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 lowpriorityscore=0 phishscore=0
 impostorscore=0 spamscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110089
X-Rspamd-Queue-Id: D4B722625F5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,collabora.com,linaro.org,gmail.com,nxp.com,jiaxyga.com,oss.qualcomm.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-274015-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sibi.sankar@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action


On 3/11/2026 4:06 PM, Krzysztof Kozlowski wrote:
> On 11/03/2026 11:32, Sibi Sankar wrote:
>> On 3/11/2026 3:51 PM, Krzysztof Kozlowski wrote:
>>> On 11/03/2026 11:04, Krzysztof Kozlowski wrote:
>>>> On Tue, Mar 10, 2026 at 09:37:51AM +0530, Sibi Sankar wrote:
>>>>> The generic Qualcomm Oryon CPU compatible used by the Kaanapali
>>>>> SoC is deprecated and incorrect since it uses a single compatible
>>>>> to describe two different core variants. It is now replaced with
>>>>> two different core-specific compatibles based on MIDR part and
>>>>> variant number.
>>>>>
>>>>> CPUS 0-5:
>>>>> MIDR_EL1[PART_NUM] - 0x2
>>>>> MIDR_EL1[VARIANT] - 0x2
>>>>>
>>>>> CPUS 6-7:
>>>>> MIDR_EL1[PART_NUM] - 0x2
>>>>> MIDR_EL1[VARIANT] - 0x3
>>>>>
>>>>> Fixes: 2eeb5767d53f ("arm64: dts: qcom: Introduce Kaanapali SoC")
>>>>> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
>>>>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>> I explained you in off-list communication what you have to do - this
>>>> MUST go via fixes and you MUST annotate that.
>>>>
>>>> Where did you describe that? Nothing in cover letter, nothing here.
>>
>> IIRC, you said this can't go in and later remembered that
>> it's still only in a rc and said it can go in. You then asked me
>> to make sure the commit message described the fix. Anyway
>> it looks like I missed your comment on funneling it through
>> the current rc.
>>
>>
>>> Although then binding should go via fixes but it depends on patch in
>>> next branch, so it cannot be done. Sorry, this waited way tooooo long,
>> By depends on linux-next, are you referring to the glymur device tree
>> change part of the series? I can always drop that in the next re-spin
>> though.
>>
> No, I meant the patch deprecating Oryon compatible.

Thanks for the clarification, will drop kaanapali in the next
re-spin.

>
> Best regards,
> Krzysztof

